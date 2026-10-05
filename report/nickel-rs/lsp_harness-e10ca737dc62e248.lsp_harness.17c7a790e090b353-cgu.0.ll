Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/lsp_harness-e10ca737dc62e248.lsp_harness.17c7a790e090b353-cgu.0?download=true
inline.NumInlined: 14236
inline.NumDeleted: 7074
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN11lsp_harness11TestHarness11request_dyn17hd03fa646217f1f01E:bb.a
  %i.bcp = phi i64 [ %i.bcm, %.noexc11.i.i.i.i.i230 ], [ %.pre.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i379, %.noexc12.i.i.i.i.i378 ] ; 3 uses
  %i.bcq = icmp sgt i64 %i.bcp, -1
  call void @llvm.assume(i1 %i.bcq)
  %i.bcr = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i.i.i.i.i231, i64 8
  %i.bcs = load ptr, ptr %i.bcr, align 8, !alias.scope !13786, !noalias !13785, !nonnull !28, !noundef !28
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcs, i64 %i.bcp
  store i8 58, ptr %i.bct, align 1, !noalias !13787
  %i.bcu = add nuw i64 %i.bcp, 1
  store i64 %i.bcu, ptr %i.bcl, align 8, !alias.scope !13786, !noalias !13785
  call void @llvm.experimental.noalias.scope.decl(metadata !13788)
  call void @llvm.experimental.noalias.scope.decl(metadata !13789)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey), !noalias !13790
  call void @llvm.experimental.noalias.scope.decl(metadata !13791)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i233 = load ptr, ptr %i.fa, align 8, !alias.scope !13792, !noalias !13793, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13794)
  call void @llvm.experimental.noalias.scope.decl(metadata !13795)
  call void @llvm.experimental.noalias.scope.decl(metadata !13796)
  call void @llvm.experimental.noalias.scope.decl(metadata !13797)
  %i.bcv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i233, i64 16 ; 3 uses
  %i.bcw = load i64, ptr %i.bcv, align 8, !alias.scope !13798, !noalias !13799, !noundef !28 ; 3 uses
  %i.bcx = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i233, align 8, !range !29, !alias.scope !13798, !noalias !13799, !noundef !28
  %i.bcy = icmp eq i64 %i.bcx, %i.bcw
  br i1 %i.bcy, label %bb.qn, label %bb.qo, !prof !30

bb.qn:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i232
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i233, i64 noundef %i.bcw, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc13.i.i.i.i.i376 unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !13741

.noexc13.i.i.i.i.i376:                            ; preds = %bb.qn
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i377 = load i64, ptr %i.bcv, align 8, !alias.scope !13800, !noalias !13801
  br label %bb.qo

bb.qo:                                            ; preds = %.noexc13.i.i.i.i.i376, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i232
  %i.bcz = phi i64 [ %i.bcw, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i232 ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i377, %.noexc13.i.i.i.i.i376 ] ; 3 uses
  %i.bda = icmp sgt i64 %i.bcz, -1
  call void @llvm.assume(i1 %i.bda)
  %i.bdb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i233, i64 8
  %i.bdc = load ptr, ptr %i.bdb, align 8, !alias.scope !13800, !noalias !13801, !nonnull !28, !noundef !28
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdc, i64 %i.bcz
  store i8 123, ptr %i.bdd, align 1, !noalias !13802
  %i.bde = add nuw i64 %i.bcz, 1
  store i64 %i.bde, ptr %i.bcv, align 8, !alias.scope !13800, !noalias !13801
  store ptr %i.fa, ptr %i.ey, align 8, !noalias !13790
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 4 uses
  store i8 1, ptr %i.bdf, align 8, !noalias !13790
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.val15.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bdg, align 8, !alias.scope !13803, !noalias !13804 ; 2 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %.val16.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bdh, align 8, !alias.scope !13803, !noalias !13804
  %i.bdi = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7e9aa9fabb12201fE(ptr noalias noundef align 8 dereferenceable(16) %i.ey, ptr %.val15.i.i.i.i.i.i.i.i.i.i.i, i64 %.val16.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i234 unwind label %.loopexit.split-lp.i.i.i.i.i ; 2 uses

.noexc14.i.i.i.i.i234:                            ; preds = %bb.qo
  %.not.i.i.i.i.i.i.i.i.i.i.i235 = icmp eq ptr %i.bdi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i235, label %bb.qp, label %bb.ry

bb.qp:                                            ; preds = %.noexc14.i.i.i.i.i234
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.fl, i64 112
  call void @llvm.experimental.noalias.scope.decl(metadata !13805)
  call void @llvm.experimental.noalias.scope.decl(metadata !13806)
  call void @llvm.experimental.noalias.scope.decl(metadata !13807)
  %i.bdk = load ptr, ptr %i.ey, align 8, !alias.scope !13808, !noalias !13809, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  %i.bdl = load i8, ptr %i.bdf, align 8, !range !42, !alias.scope !13808, !noalias !13809, !noundef !28
  %i.bdm = icmp eq i8 %i.bdl, 1
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i267 = load ptr, ptr %i.bdk, align 8, !noalias !13810 ; 6 uses
  br i1 %i.bdm, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i270", label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i267) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13811)
  call void @llvm.experimental.noalias.scope.decl(metadata !13812)
  call void @llvm.experimental.noalias.scope.decl(metadata !13813)
  call void @llvm.experimental.noalias.scope.decl(metadata !13814)
  %i.bdn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i267, i64 16 ; 3 uses
  %i.bdo = load i64, ptr %i.bdn, align 8, !alias.scope !13815, !noalias !13816, !noundef !28 ; 3 uses
  %i.bdp = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i267, align 8, !range !29, !alias.scope !13815, !noalias !13816, !noundef !28
  %i.bdq = icmp eq i64 %i.bdp, %i.bdo
  br i1 %i.bdq, label %bb.qr, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i268", !prof !30

bb.qr:                                            ; preds = %bb.qq
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i267, i64 noundef %i.bdo, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc15.i.i.i.i.i374 unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !13741

.noexc15.i.i.i.i.i374:                            ; preds = %bb.qr
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i375 = load i64, ptr %i.bdn, align 8, !alias.scope !13817, !noalias !13816
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i268"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i268": ; preds = %.noexc15.i.i.i.i.i374, %bb.qq
  %i.bdr = phi i64 [ %i.bdo, %bb.qq ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i375, %.noexc15.i.i.i.i.i374 ] ; 3 uses
  %i.bds = icmp sgt i64 %i.bdr, -1
  call void @llvm.assume(i1 %i.bds)
  %i.bdt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i267, i64 8
  %i.bdu = load ptr, ptr %i.bdt, align 8, !alias.scope !13817, !noalias !13816, !nonnull !28, !noundef !28
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 %i.bdr
  store i8 44, ptr %i.bdv, align 1, !noalias !13818
  %i.bdw = add nuw i64 %i.bdr, 1
  store i64 %i.bdw, ptr %i.bdn, align 8, !alias.scope !13817, !noalias !13816
  %.val9.pre.i.i.i.i.i.i.i.i.i.i.i.i.i269 = load ptr, ptr %i.bdk, align 8, !noalias !13810
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i270"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i270": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i268", %bb.qp
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i271 = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i267, %bb.qp ], [ %.val9.pre.i.i.i.i.i.i.i.i.i.i.i.i.i269, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i268" ]
  store i8 2, ptr %i.bdf, align 8, !alias.scope !13808, !noalias !13809
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i271, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @412, i64 noundef 7)
          to label %.noexc16.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc16.i.i.i.i.i:                               ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i270"
  call void @llvm.experimental.noalias.scope.decl(metadata !13819)
  %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i272 = load ptr, ptr %i.bdk, align 8, !noalias !13820, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13821)
  call void @llvm.experimental.noalias.scope.decl(metadata !13822)
  call void @llvm.experimental.noalias.scope.decl(metadata !13823)
  call void @llvm.experimental.noalias.scope.decl(metadata !13824)
  %i.bdx = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i272, i64 16 ; 3 uses
  %i.bdy = load i64, ptr %i.bdx, align 8, !alias.scope !13825, !noalias !13826, !noundef !28 ; 3 uses
  %i.bdz = load i64, ptr %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i272, align 8, !range !29, !alias.scope !13825, !noalias !13826, !noundef !28
  %i.bea = icmp eq i64 %i.bdz, %i.bdy
  br i1 %i.bea, label %bb.qs, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i273, !prof !30

bb.qs:                                            ; preds = %.noexc16.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i272, i64 noundef %i.bdy, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !13741

.noexc17.i.i.i.i.i:                               ; preds = %bb.qs
  %.pre.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i373 = load i64, ptr %i.bdx, align 8, !alias.scope !13827, !noalias !13826
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i273

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i273: ; preds = %.noexc17.i.i.i.i.i, %.noexc16.i.i.i.i.i
  %i.beb = phi i64 [ %i.bdy, %.noexc16.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i373, %.noexc17.i.i.i.i.i ] ; 3 uses
  %i.bec = icmp sgt i64 %i.beb, -1
  call void @llvm.assume(i1 %i.bec)
  %i.bed = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i272, i64 8
  %i.bee = load ptr, ptr %i.bed, align 8, !alias.scope !13827, !noalias !13826, !nonnull !28, !noundef !28
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 %i.beb
  store i8 58, ptr %i.bef, align 1, !noalias !13828
  %i.beg = add nuw i64 %i.beb, 1
  store i64 %i.beg, ptr %i.bdx, align 8, !alias.scope !13827, !noalias !13826
  call void @llvm.experimental.noalias.scope.decl(metadata !13829)
  call void @llvm.experimental.noalias.scope.decl(metadata !13830)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex), !noalias !13831
  call void @llvm.experimental.noalias.scope.decl(metadata !13832)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bdk, align 8, !alias.scope !13833, !noalias !13834, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13835)
  call void @llvm.experimental.noalias.scope.decl(metadata !13836)
  call void @llvm.experimental.noalias.scope.decl(metadata !13837)
  call void @llvm.experimental.noalias.scope.decl(metadata !13838)
  %i.beh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bei = load i64, ptr %i.beh, align 8, !alias.scope !13839, !noalias !13840, !noundef !28 ; 3 uses
  %i.bej = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13839, !noalias !13840, !noundef !28
  %i.bek = icmp eq i64 %i.bej, %i.bei
  br i1 %i.bek, label %bb.qt, label %bb.qu, !prof !30

bb.qt:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i273
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bei, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc18.i.i.i.i.i372 unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !13741

.noexc18.i.i.i.i.i372:                            ; preds = %bb.qt
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.beh, align 8, !alias.scope !13841, !noalias !13842
  br label %bb.qu

bb.qu:                                            ; preds = %.noexc18.i.i.i.i.i372, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i273
  %i.bel = phi i64 [ %i.bei, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i273 ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc18.i.i.i.i.i372 ] ; 3 uses
  %i.bem = icmp sgt i64 %i.bel, -1
  call void @llvm.assume(i1 %i.bem)
  %i.ben = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.beo = load ptr, ptr %i.ben, align 8, !alias.scope !13841, !noalias !13842, !nonnull !28, !noundef !28
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 %i.bel
  store i8 123, ptr %i.bep, align 1, !noalias !13843
  %i.beq = add nuw i64 %i.bel, 1
  store i64 %i.beq, ptr %i.beh, align 8, !alias.scope !13841, !noalias !13842
  store ptr %i.bdk, ptr %i.ex, align 8, !noalias !13831
  %i.ber = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  store i8 1, ptr %i.ber, align 8, !noalias !13831
  %i.bes = getelementptr inbounds nuw i8, ptr %i.fl, i64 160
  %.val26.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bes, align 8, !alias.scope !13844, !noalias !13845
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef align 8 dereferenceable(16) %i.ex, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @661, i64 noundef 7, i32 %.val26.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc19.i.i.i.i.i274 unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc19.i.i.i.i.i274:                            ; preds = %bb.qu
  %i.bet = getelementptr inbounds nuw i8, ptr %i.fl, i64 167
  %.val27.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bet, align 1, !alias.scope !13844, !noalias !13845
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h2f1f1e8ca9aa0a73E(ptr noalias noundef align 8 dereferenceable(16) %i.ex, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @662, i64 noundef 12, i8 %.val27.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc20.i.i.i.i.i275 unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc20.i.i.i.i.i275:                            ; preds = %.noexc19.i.i.i.i.i274
  call void @llvm.experimental.noalias.scope.decl(metadata !13846)
  call void @llvm.experimental.noalias.scope.decl(metadata !13847)
  call void @llvm.experimental.noalias.scope.decl(metadata !13848)
  call void @llvm.experimental.noalias.scope.decl(metadata !13849)
  %i.beu = getelementptr inbounds nuw i8, ptr %i.fl, i64 136
  %i.bev = load i64, ptr %i.beu, align 8, !alias.scope !13850, !noalias !13851, !noundef !28 ; 2 uses
  %i.bew = icmp eq i64 %i.bev, 0
  br i1 %i.bew, label %_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.noexc20.i.i.i.i.i275
  %i.bex = load ptr, ptr %i.bdj, align 8, !alias.scope !13850, !noalias !13851, !nonnull !28, !noundef !28 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bex, align 16, !noalias !13852
  %i.bey = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bez = bitcast <16 x i1> %i.bey to i16
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bex, i64 16
  %2 = load ptr, ptr %i.ex, align 8, !alias.scope !13853, !noalias !13854, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %.promoted25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ber, align 8, !alias.scope !13853, !noalias !13854
  %i.bfb = icmp eq i8 %.promoted25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %bb.qv

bb.qv:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bfc = phi i1 [ %i.bfb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.lcssa24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bfa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.bfd = phi i16 [ %i.bez, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bfn, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.bfe = phi i64 [ %i.bev, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bfq, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.lcssa141920.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bex, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1418.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bfd, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.qv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bff = phi ptr [ %i.bfj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.qv ] ; 2 uses
  %i.bfg = phi ptr [ %i.bfi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa141920.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.qv ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bff, align 16, !noalias !13855
  %i.bfh = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bfi = getelementptr inbounds i8, ptr %i.bfg, i64 -768 ; 2 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bff, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bfh to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.qv
  %.lcssa23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.qv ], [ %i.bfj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa1418.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa141920.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.qv ], [ %i.bfi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bfd, %bb.qv ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bfk = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bfl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bfm = zext nneg i16 %i.bfl to i64
  %i.bfn = and i16 %i.bfk, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bfo = sub nsw i64 0, %i.bfm
  %i.bfp = getelementptr inbounds [48 x i8], ptr %.lcssa1418.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bfo ; 5 uses
  %i.bfq = add i64 %i.bfe, -1                     ; 2 uses
  %i.bfr = getelementptr inbounds i8, ptr %i.bfp, i64 -24
  %i.bfs = getelementptr i8, ptr %i.bfp, i64 -40
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bfs, align 8, !noalias !13856 ; 2 uses
  %i.bft = getelementptr i8, ptr %i.bfp, i64 -32
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bft, align 8, !noalias !13856
  call void @llvm.experimental.noalias.scope.decl(metadata !13857)
  call void @llvm.experimental.noalias.scope.decl(metadata !13858)
  call void @llvm.experimental.noalias.scope.decl(metadata !13859)
  call void @llvm.experimental.noalias.scope.decl(metadata !13860)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !noalias !13861 ; 6 uses
  br i1 %i.bfc, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17haec57e87a3692354E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.qw

bb.qw:                                            ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13862)
  call void @llvm.experimental.noalias.scope.decl(metadata !13863)
  call void @llvm.experimental.noalias.scope.decl(metadata !13864)
  call void @llvm.experimental.noalias.scope.decl(metadata !13865)
  %i.bfu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bfv = load i64, ptr %i.bfu, align 8, !alias.scope !13866, !noalias !13867, !noundef !28 ; 3 uses
  %i.bfw = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13866, !noalias !13867, !noundef !28
  %i.bfx = icmp eq i64 %i.bfw, %i.bfv
  br i1 %i.bfx, label %bb.qx, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.qx:                                            ; preds = %bb.qw
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bfv, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc21.i.i.i.i.i371 unwind label %.loopexit.i.i.i.i.i, !noalias !13741

.noexc21.i.i.i.i.i371:                            ; preds = %bb.qx
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bfu, align 8, !alias.scope !13868, !noalias !13867
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc21.i.i.i.i.i371, %bb.qw
  %i.bfy = phi i64 [ %i.bfv, %bb.qw ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc21.i.i.i.i.i371 ] ; 3 uses
  %i.bfz = icmp sgt i64 %i.bfy, -1
  call void @llvm.assume(i1 %i.bfz)
  %i.bga = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bgb = load ptr, ptr %i.bga, align 8, !alias.scope !13868, !noalias !13867, !nonnull !28, !noundef !28
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bgb, i64 %i.bfy
  store i8 44, ptr %i.bgc, align 1, !noalias !13869
  %i.bgd = add nuw i64 %i.bfy, 1
  store i64 %i.bgd, ptr %i.bfu, align 8, !alias.scope !13868, !noalias !13867
  %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !noalias !13861
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17haec57e87a3692354E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17haec57e87a3692354E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  store i8 2, ptr %i.ber, align 8, !alias.scope !13853, !noalias !13854
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc22.i.i.i.i.i276 unwind label %.loopexit.i.i.i.i.i

.noexc22.i.i.i.i.i276:                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17haec57e87a3692354E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !noalias !13870, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13871)
  call void @llvm.experimental.noalias.scope.decl(metadata !13872)
  call void @llvm.experimental.noalias.scope.decl(metadata !13873)
  call void @llvm.experimental.noalias.scope.decl(metadata !13874)
  %i.bge = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bgf = load i64, ptr %i.bge, align 8, !alias.scope !13875, !noalias !13876, !noundef !28 ; 3 uses
  %i.bgg = load i64, ptr %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13875, !noalias !13876, !noundef !28
  %i.bgh = icmp eq i64 %i.bgg, %i.bgf
  br i1 %i.bgh, label %bb.qy, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.qy:                                            ; preds = %.noexc22.i.i.i.i.i276
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bgf, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc23.i.i.i.i.i370 unwind label %.loopexit.i.i.i.i.i, !noalias !13741

.noexc23.i.i.i.i.i370:                            ; preds = %bb.qy
  %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bge, align 8, !alias.scope !13877, !noalias !13876
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc23.i.i.i.i.i370, %.noexc22.i.i.i.i.i276
  %i.bgi = phi i64 [ %i.bgf, %.noexc22.i.i.i.i.i276 ], [ %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc23.i.i.i.i.i370 ] ; 3 uses
  %i.bgj = icmp sgt i64 %i.bgi, -1
  call void @llvm.assume(i1 %i.bgj)
  %i.bgk = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bgl = load ptr, ptr %i.bgk, align 8, !alias.scope !13877, !noalias !13876, !nonnull !28, !noundef !28
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 %i.bgi
  store i8 58, ptr %i.bgm, align 1, !noalias !13878
  %i.bgn = add nuw i64 %i.bgi, 1
  store i64 %i.bgn, ptr %i.bge, align 8, !alias.scope !13877, !noalias !13876
  %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !noalias !13870 ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13879)
  %i.bgo = load i64, ptr %i.bfr, align 8, !range !40, !alias.scope !13880, !noalias !13881, !noundef !28 ; 2 uses
  %i.bgp = xor i64 %i.bgo, -9223372036854775808
  %i.bgq = icmp slt i64 %i.bgo, 0
  %i.bgr = select i1 %i.bgq, i64 %i.bgp, i64 2
  %i.bgs = getelementptr inbounds i8, ptr %i.bfp, i64 -16 ; 3 uses
  switch i64 %i.bgr, label %bb.qz [
    i64 0, label %bb.ra
    i64 1, label %bb.rd
    i64 2, label %bb.rl
  ]

bb.qz:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.ra:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bgt = load i8, ptr %i.bgs, align 8, !range !33, !alias.scope !13880, !noalias !13881, !noundef !28
  %i.bgu = trunc nuw i8 %i.bgt to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.bgv = getelementptr inbounds nuw i8, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 5 uses
  br i1 %i.bgu, label %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ra
  call void @llvm.experimental.noalias.scope.decl(metadata !13882)
  call void @llvm.experimental.noalias.scope.decl(metadata !13883)
  call void @llvm.experimental.noalias.scope.decl(metadata !13884)
  call void @llvm.experimental.noalias.scope.decl(metadata !13885)
  %i.bgw = load i64, ptr %i.bgv, align 8, !alias.scope !13886, !noalias !13887, !noundef !28 ; 3 uses
  %i.bgx = load i64, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13886, !noalias !13887, !noundef !28
  %i.bgy = sub i64 %i.bgx, %i.bgw
  %i.bgz = icmp ult i64 %i.bgy, 5
  br i1 %i.bgz, label %bb.rb, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.rb:                                            ; preds = %.split2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bgw, i64 noundef 5, i64 noundef 1, i64 noundef 1)
          to label %.noexc24.i.i.i.i.i368 unwind label %.loopexit.i.i.i.i.i, !noalias !13741

.noexc24.i.i.i.i.i368:                            ; preds = %bb.rb
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bgv, align 8, !alias.scope !13888, !noalias !13887
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc24.i.i.i.i.i368, %.split2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bha = phi i64 [ %i.bgw, %.split2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc24.i.i.i.i.i368 ] ; 3 uses
  %i.bhb = icmp sgt i64 %i.bha, -1
  call void @llvm.assume(i1 %i.bhb)
  %i.bhc = getelementptr inbounds nuw i8, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bhd = load ptr, ptr %i.bhc, align 8, !alias.scope !13888, !noalias !13887, !nonnull !28, !noundef !28
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 %i.bha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bhe, ptr noundef nonnull readonly align 1 dereferenceable(5) @268, i64 5, i1 false), !noalias !13889
  %i.bhf = add nuw i64 %i.bha, 5
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ra
  call void @llvm.experimental.noalias.scope.decl(metadata !13890)
  call void @llvm.experimental.noalias.scope.decl(metadata !13891)
  call void @llvm.experimental.noalias.scope.decl(metadata !13892)
  call void @llvm.experimental.noalias.scope.decl(metadata !13893)
  %i.bhg = load i64, ptr %i.bgv, align 8, !alias.scope !13894, !noalias !13895, !noundef !28 ; 3 uses
  %i.bhh = load i64, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13894, !noalias !13895, !noundef !28
  %i.bhi = sub i64 %i.bhh, %i.bhg
  %i.bhj = icmp ult i64 %i.bhi, 4
  br i1 %i.bhj, label %bb.rc, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.rc:                                            ; preds = %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bhg, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %.noexc25.i.i.i.i.i369 unwind label %.loopexit.i.i.i.i.i, !noalias !13741

.noexc25.i.i.i.i.i369:                            ; preds = %bb.rc
  %.pre.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bgv, align 8, !alias.scope !13896, !noalias !13895
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc25.i.i.i.i.i369, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bhk = phi i64 [ %i.bhg, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc25.i.i.i.i.i369 ] ; 3 uses
  %i.bhl = icmp sgt i64 %i.bhk, -1
  call void @llvm.assume(i1 %i.bhl)
  %i.bhm = getelementptr inbounds nuw i8, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bhn = load ptr, ptr %i.bhm, align 8, !alias.scope !13896, !noalias !13895, !nonnull !28, !noundef !28
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhn, i64 %i.bhk
  store i32 1702195828, ptr %i.bho, align 1, !noalias !13897
  %i.bhp = add nuw i64 %i.bhk, 4
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bhp, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.bhf, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  store i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bgv, align 8, !noalias !13898
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.rd:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bhq = load i32, ptr %i.bgs, align 8, !alias.scope !13880, !noalias !13881, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew), !noalias !13899
  call void @llvm.experimental.noalias.scope.decl(metadata !13900)
  %i.bhr = icmp sgt i32 %i.bhq, -1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.bhq, i1 false) ; 3 uses
  %i.bhs = icmp ugt i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9999
  br i1 %i.bhs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.rd
  %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 11, %bb.rd ], [ %i.bic, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.rd ], [ %i.bhv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bht = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99
  br i1 %i.bht, label %bb.re, label %bb.rf

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.rd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bhv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.rd ] ; 3 uses
  %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bic, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 11, %bb.rd ] ; 2 uses
  %i.bhu = urem i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000
  %i.bhv = udiv i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000 ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %i.bhu to i16 ; 2 uses
  %i.bhw = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.bhx = shl nuw nsw i16 %i.bhw, 1
  %i.bhy = zext nneg i16 %i.bhx to i64
  %i.bhz = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.bia = shl nuw nsw i16 %i.bhz, 1
  %i.bib = zext nneg i16 %i.bia to i64
  %i.bic = add i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.bid = getelementptr inbounds nuw i8, ptr @849, i64 %i.bhy
  %i.bie = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.bic
  %i.bif = load i16, ptr %i.bid, align 1, !noalias !13901
  store i16 %i.bif, ptr %i.bie, align 1, !alias.scope !13900, !noalias !13899
  %i.big = getelementptr inbounds nuw i8, ptr @849, i64 %i.bib
  %i.bih = getelementptr i8, ptr %i.ew, i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bii = getelementptr i8, ptr %i.bih, i64 -2
  %i.bij = load i16, ptr %i.big, align 1, !noalias !13901
  store i16 %i.bij, ptr %i.bii, align 1, !alias.scope !13900, !noalias !13899
  %i.bik = icmp ugt i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99999999
  br i1 %i.bik, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.re:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i16 ; 2 uses
  %i.bil = urem i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.bim = shl nuw nsw i16 %i.bil, 1
  %i.bin = zext nneg i16 %i.bim to i64
  %i.bio = udiv i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i16 %i.bio to i32
  %i.bip = add i64 %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.biq = getelementptr inbounds nuw i8, ptr @849, i64 %i.bin
  %i.bir = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.bip
  %i.bis = load i16, ptr %i.biq, align 1, !noalias !13901
  store i16 %i.bis, ptr %i.bir, align 1, !alias.scope !13900, !noalias !13899
  br label %bb.rf

bb.rf:                                            ; preds = %bb.re, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bip, %bb.re ], [ %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.re ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bit = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  br i1 %i.bit, label %bb.rh, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.biu = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.biv = zext nneg i32 %i.biu to i64
  %i.biw = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.bix = getelementptr inbounds nuw i8, ptr @849, i64 %i.biv
  %i.biy = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.biw
  %i.biz = load i16, ptr %i.bix, align 1, !noalias !13901
  store i16 %i.biz, ptr %i.biy, align 1, !alias.scope !13900, !noalias !13899
  br label %bb.ri

bb.rh:                                            ; preds = %bb.rf
  %i.bja = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bjb = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.bja
  %i.bjd = or disjoint i8 %i.bjb, 48
  store i8 %i.bjd, ptr %i.bjc, align 1, !alias.scope !13900, !noalias !13899
  br label %bb.ri

bb.ri:                                            ; preds = %bb.rh, %bb.rg
  %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bja, %bb.rh ], [ %i.biw, %bb.rg ] ; 2 uses
  br i1 %i.bhr, label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.bje = add i64 %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.bje
  store i8 45, ptr %i.bjf, align 1, !alias.scope !13900, !noalias !13899
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.rj, %bb.ri
  %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ri ], [ %i.bje, %bb.rj ] ; 2 uses
  %i.bjg = sub i64 11, %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.bjh = icmp ult i64 %i.bjg, 12
  call void @llvm.assume(i1 %i.bjh)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13902)
  call void @llvm.experimental.noalias.scope.decl(metadata !13903)
  call void @llvm.experimental.noalias.scope.decl(metadata !13904)
  call void @llvm.experimental.noalias.scope.decl(metadata !13905)
  %i.bji = getelementptr inbounds nuw i8, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bjj = load i64, ptr %i.bji, align 8, !alias.scope !13906, !noalias !13907, !noundef !28 ; 3 uses
  %i.bjk = load i64, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13906, !noalias !13907, !noundef !28
  %i.bjl = sub i64 %i.bjk, %i.bjj
  %i.bjm = icmp ugt i64 %i.bjg, %i.bjl
  br i1 %i.bjm, label %bb.rk, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.rk:                                            ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bjj, i64 noundef %i.bjg, i64 noundef 1, i64 noundef 1)
          to label %.noexc26.i.i.i.i.i367 unwind label %.loopexit.i.i.i.i.i, !noalias !13741

.noexc26.i.i.i.i.i367:                            ; preds = %bb.rk
  %.pre.i.i.i.i.i.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bji, align 8, !alias.scope !13908, !noalias !13907
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc26.i.i.i.i.i367, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.bjn = phi i64 [ %i.bjj, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc26.i.i.i.i.i367 ] ; 3 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bjp = icmp sgt i64 %i.bjn, -1
  call void @llvm.assume(i1 %i.bjp)
  %i.bjq = getelementptr inbounds nuw i8, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bjr = load ptr, ptr %i.bjq, align 8, !alias.scope !13908, !noalias !13907, !nonnull !28, !noundef !28
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjr, i64 %i.bjn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bjs, ptr nonnull readonly align 1 %i.bjo, i64 %i.bjg, i1 false), !noalias !13909
  %i.bjt = add nuw i64 %i.bjn, %i.bjg
  store i64 %i.bjt, ptr %i.bji, align 8, !alias.scope !13908, !noalias !13907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew), !noalias !13899
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.rl:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bju = load ptr, ptr %i.bgs, align 8, !alias.scope !13880, !noalias !13881, !nonnull !28, !noundef !28
  %i.bjv = getelementptr inbounds i8, ptr %i.bfp, i64 -8
  %i.bjw = load i64, ptr %i.bjv, align 8, !alias.scope !13880, !noalias !13881, !noundef !28
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bju, i64 noundef %i.bjw)
          to label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.i.i.i.i.i

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.rl, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.bjx = icmp eq i64 %i.bfq, 0
  br i1 %i.bjx, label %_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.qv

_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.noexc20.i.i.i.i.i275
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.fl, i64 164
  %i.bjz = load i8, ptr %i.bjy, align 4, !range !42, !alias.scope !13844, !noalias !13845, !noundef !28 ; 2 uses
  %.not23.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bjz, 2
  br i1 %.not23.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc28.i.i.i.i.i277, label %bb.rm

bb.rm:                                            ; preds = %_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef align 8 dereferenceable(16) %i.ex, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @663, i64 noundef 22, i8 %i.bjz)
          to label %.noexc28.i.i.i.i.i277 unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc28.i.i.i.i.i277:                            ; preds = %bb.rm, %_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bka = getelementptr inbounds nuw i8, ptr %i.fl, i64 165
  %i.bkb = load i8, ptr %i.bka, align 1, !range !42, !alias.scope !13844, !noalias !13845, !noundef !28 ; 2 uses
  %.not24.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bkb, 2
  br i1 %.not24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc29.i.i.i.i.i278, label %bb.rn

bb.rn:                                            ; preds = %.noexc28.i.i.i.i.i277
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef align 8 dereferenceable(16) %i.ex, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @664, i64 noundef 18, i8 %i.bkb)
          to label %.noexc29.i.i.i.i.i278 unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc29.i.i.i.i.i278:                            ; preds = %bb.rn, %.noexc28.i.i.i.i.i277
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.fl, i64 166
  %i.bkd = load i8, ptr %i.bkc, align 2, !range !42, !alias.scope !13844, !noalias !13845, !noundef !28 ; 2 uses
  %.not25.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bkd, 2
  br i1 %.not25.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc30.i.i.i.i.i, label %bb.ro

bb.ro:                                            ; preds = %.noexc29.i.i.i.i.i278
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef align 8 dereferenceable(16) %i.ex, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @665, i64 noundef 17, i8 %i.bkd)
          to label %.noexc30.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc30.i.i.i.i.i:                               ; preds = %bb.ro, %.noexc29.i.i.i.i.i278
  %i.bke = load ptr, ptr %i.ex, align 8, !noalias !13831, !nonnull !28, !align !35, !noundef !28
  %i.bkf = load i8, ptr %i.ber, align 8, !range !42, !noalias !13831, !noundef !28
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279 = load ptr, ptr %i.bke, align 8, !noalias !13910 ; 5 uses
  %i.bkg = icmp eq i8 %i.bkf, 0
  br i1 %i.bkg, label %bb.rr, label %bb.rp

bb.rp:                                            ; preds = %.noexc30.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13911)
  call void @llvm.experimental.noalias.scope.decl(metadata !13912)
  call void @llvm.experimental.noalias.scope.decl(metadata !13913)
  call void @llvm.experimental.noalias.scope.decl(metadata !13914)
  %i.bkh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279, i64 16 ; 3 uses
  %i.bki = load i64, ptr %i.bkh, align 8, !alias.scope !13915, !noalias !13916, !noundef !28 ; 3 uses
  %i.bkj = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279, align 8, !range !29, !alias.scope !13915, !noalias !13916, !noundef !28
  %i.bkk = icmp eq i64 %i.bkj, %i.bki
  br i1 %i.bkk, label %bb.rq, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.rq:                                            ; preds = %bb.rp
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279, i64 noundef %i.bki, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc31.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !13741

.noexc31.i.i.i.i.i:                               ; preds = %bb.rq
  %.pre.i.i.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bkh, align 8, !alias.scope !13917, !noalias !13916
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc31.i.i.i.i.i, %bb.rp
  %i.bkl = phi i64 [ %i.bki, %bb.rp ], [ %.pre.i.i.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc31.i.i.i.i.i ] ; 3 uses
  %i.bkm = icmp sgt i64 %i.bkl, -1
  call void @llvm.assume(i1 %i.bkm)
  %i.bkn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279, i64 8
  %i.bko = load ptr, ptr %i.bkn, align 8, !alias.scope !13917, !noalias !13916, !nonnull !28, !noundef !28
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bko, i64 %i.bkl
  store i8 125, ptr %i.bkp, align 1, !noalias !13918
  %i.bkq = add nuw i64 %i.bkl, 1
  store i64 %i.bkq, ptr %i.bkh, align 8, !alias.scope !13917, !noalias !13916
  br label %bb.rr

bb.rr:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc30.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex), !noalias !13831
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.fl, i64 88 ; 2 uses
  %i.bks = load i64, ptr %i.bkr, align 8, !range !40, !alias.scope !13919, !noalias !13920, !noundef !28
  %.not.i.i.i.i.i.i.i.i.i.i.i.i280 = icmp eq i64 %i.bks, -9223372036854775807
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i280, label %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i281"

"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i281": ; preds = %bb.rr
  invoke fastcc void @"_ZN105_$LT$serde..private..ser..FlatMapSerializeStruct$LT$M$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h5287490787fa0134E"(ptr nonnull align 8 dereferenceable(16) %i.ey, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @557, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bkr)
          to label %.noexc32.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc32.i.i.i.i.i:                               ; preds = %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i281"
  %.pre.i.i.i.i.i.i.i.i.i.i.i282 = load ptr, ptr %i.ey, align 8, !noalias !13790
  %.pre25.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bdf, align 8, !range !42, !noalias !13790
  %i.bkt = icmp eq i8 %.pre25.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bkt, label %bb.rt, label %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc32.i.i.i.i.i, %bb.rr
  %.val49.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i282, %.noexc32.i.i.i.i.i ], [ %i.bdk, %bb.rr ]
  %.val49.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val49.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !13921, !nonnull !28, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13922)
  call void @llvm.experimental.noalias.scope.decl(metadata !13923)
  call void @llvm.experimental.noalias.scope.decl(metadata !13924)
  call void @llvm.experimental.noalias.scope.decl(metadata !13925)
  %i.bku = getelementptr inbounds nuw i8, ptr %.val49.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bkv = load i64, ptr %i.bku, align 8, !alias.scope !13926, !noalias !13927, !noundef !28 ; 3 uses
  %i.bkw = load i64, ptr %.val49.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13926, !noalias !13927, !noundef !28
  %i.bkx = icmp eq i64 %i.bkw, %i.bkv
  br i1 %i.bkx, label %bb.rs, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i283, !prof !30

bb.rs:                                            ; preds = %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val49.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bkv, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc33.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !13741

.noexc33.i.i.i.i.i:                               ; preds = %bb.rs
  %.pre.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bku, align 8, !alias.scope !13928, !noalias !13927
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i283

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i283: ; preds = %.noexc33.i.i.i.i.i, %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  %i.bky = phi i64 [ %i.bkv, %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i, %.noexc33.i.i.i.i.i ] ; 3 uses
  %i.bkz = icmp sgt i64 %i.bky, -1
  call void @llvm.assume(i1 %i.bkz)
  %i.bla = getelementptr inbounds nuw i8, ptr %.val49.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.blb = load ptr, ptr %i.bla, align 8, !alias.scope !13928, !noalias !13927, !nonnull !28, !noundef !28
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 %i.bky
  store i8 125, ptr %i.blc, align 1, !noalias !13929
  %i.bld = add nuw i64 %i.bky, 1
  store i64 %i.bld, ptr %i.bku, align 8, !alias.scope !13928, !noalias !13927
  br label %bb.rt

bb.rt:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i283, %.noexc32.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey), !noalias !13790
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 2, i32 %i.bak)
          to label %.noexc34.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc34.i.i.i.i.i:                               ; preds = %bb.rt
  %i.ble = load ptr, ptr %i.ez, align 8, !noalias !13722, !nonnull !28, !align !35, !noundef !28
  %i.blf = load i8, ptr %i.baw, align 8, !range !42, !noalias !13722, !noundef !28
  %.val20.i.i.i.i.i.i.i284 = load ptr, ptr %i.ble, align 8, !noalias !13930 ; 5 uses
  %i.blg = icmp eq i8 %i.blf, 0
  br i1 %i.blg, label %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.i.i.i.i, label %bb.ru

bb.ru:                                            ; preds = %.noexc34.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i.i.i.i.i.i284) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13931)
  call void @llvm.experimental.noalias.scope.decl(metadata !13932)
  call void @llvm.experimental.noalias.scope.decl(metadata !13933)
  call void @llvm.experimental.noalias.scope.decl(metadata !13934)
  %i.blh = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i284, i64 16 ; 3 uses
  %i.bli = load i64, ptr %i.blh, align 8, !alias.scope !13935, !noalias !13936, !noundef !28 ; 3 uses
  %i.blj = load i64, ptr %.val20.i.i.i.i.i.i.i284, align 8, !range !29, !alias.scope !13935, !noalias !13936, !noundef !28
  %i.blk = icmp eq i64 %i.blj, %i.bli
  br i1 %i.blk, label %bb.rv, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i285, !prof !30

bb.rv:                                            ; preds = %bb.ru
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val20.i.i.i.i.i.i.i284, i64 noundef %i.bli, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc35.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !13741

.noexc35.i.i.i.i.i:                               ; preds = %bb.rv
  %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i366 = load i64, ptr %i.blh, align 8, !alias.scope !13937, !noalias !13936
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i285

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i285: ; preds = %.noexc35.i.i.i.i.i, %bb.ru
  %i.bll = phi i64 [ %i.bli, %bb.ru ], [ %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i366, %.noexc35.i.i.i.i.i ] ; 3 uses
  %i.blm = icmp sgt i64 %i.bll, -1
  call void @llvm.assume(i1 %i.blm)
  %i.bln = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i284, i64 8
  %i.blo = load ptr, ptr %i.bln, align 8, !alias.scope !13937, !noalias !13936, !nonnull !28, !noundef !28
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blo, i64 %i.bll
  store i8 125, ptr %i.blp, align 1, !noalias !13938
  %i.blq = add nuw i64 %i.bll, 1
  store i64 %i.blq, ptr %i.blh, align 8, !alias.scope !13937, !noalias !13936
  br label %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17haec57e87a3692354E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.rl, %bb.rk, %bb.rc, %bb.rb, %bb.qy, %bb.qx
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.rw

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.qo, %bb.qu, %bb.rt, %.noexc19.i.i.i.i.i274, %bb.rm, %bb.rn, %bb.ro, %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i281", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i.i209", %bb.qh, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i.i.i.i.i221", %bb.qk, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i.i.i.i.i228", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i270", %bb.rv, %bb.rs, %bb.rq, %bb.qt, %bb.qs, %bb.qr, %bb.qn, %bb.qm, %bb.ql, %bb.qj, %bb.qi, %bb.qg
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.rw

bb.rw:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13939)
  %.val.i.i.i.i.i.i210 = load i64, ptr %i.fb, align 8, !range !29, !alias.scope !13939, !noalias !13714, !noundef !28 ; 2 uses
  %i.blr = icmp eq i64 %.val.i.i.i.i.i.i210, 0
  br i1 %i.blr, label %.body.i.i.i212, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %.val1.i.i.i.i.i.i211 = load ptr, ptr %i.bau, align 8, !alias.scope !13939, !noalias !13714, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i211, i64 noundef %.val.i.i.i.i.i.i210, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13940
  br label %.body.i.i.i212

bb.ry:                                            ; preds = %.noexc14.i.i.i.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey), !noalias !13790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez), !noalias !13722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa), !noalias !13719
  call void @llvm.experimental.noalias.scope.decl(metadata !13941)
  %.val.i36.i.i.i.i.i = load i64, ptr %i.fb, align 8, !range !29, !alias.scope !13941, !noalias !13714, !noundef !28 ; 2 uses
  %i.bls = icmp eq i64 %.val.i36.i.i.i.i.i, 0
  br i1 %i.bls, label %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.thread.i.i.i.i, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %.val1.i37.i.i.i.i.i = load ptr, ptr %i.bau, align 8, !alias.scope !13941, !noalias !13714, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i37.i.i.i.i.i, i64 noundef %.val.i36.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13942
  br label %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.thread.i.i.i.i

_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.thread.i.i.i.i: ; preds = %bb.rz, %bb.ry
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb), !noalias !13714
end_hunk_0
