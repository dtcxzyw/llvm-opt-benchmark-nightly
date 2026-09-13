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
  %i.bcs = load ptr, ptr %i.bcr, align 8, !alias.scope !13775, !noalias !13774, !nonnull !28, !noundef !28
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcs, i64 %i.bcp
  store i8 58, ptr %i.bct, align 1, !noalias !13776
  %i.bcu = add nuw i64 %i.bcp, 1
  store i64 %i.bcu, ptr %i.bcl, align 8, !alias.scope !13775, !noalias !13774
  call void @llvm.experimental.noalias.scope.decl(metadata !13777)
  call void @llvm.experimental.noalias.scope.decl(metadata !13778)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey), !noalias !13779
  call void @llvm.experimental.noalias.scope.decl(metadata !13780)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i233 = load ptr, ptr %i.fa, align 8, !alias.scope !13781, !noalias !13782, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13783)
  call void @llvm.experimental.noalias.scope.decl(metadata !13784)
  call void @llvm.experimental.noalias.scope.decl(metadata !13785)
  call void @llvm.experimental.noalias.scope.decl(metadata !13786)
  %i.bcv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i233, i64 16 ; 3 uses
  %i.bcw = load i64, ptr %i.bcv, align 8, !alias.scope !13787, !noalias !13788, !noundef !28 ; 3 uses
  %i.bcx = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i233, align 8, !range !29, !alias.scope !13787, !noalias !13788, !noundef !28
  %i.bcy = icmp eq i64 %i.bcx, %i.bcw
  br i1 %i.bcy, label %bb.qn, label %bb.qo, !prof !30

bb.qn:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i232
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i233, i64 noundef %i.bcw, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc13.i.i.i.i.i376 unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !13730

.noexc13.i.i.i.i.i376:                            ; preds = %bb.qn
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i377 = load i64, ptr %i.bcv, align 8, !alias.scope !13789, !noalias !13790
  br label %bb.qo

bb.qo:                                            ; preds = %.noexc13.i.i.i.i.i376, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i232
  %i.bcz = phi i64 [ %i.bcw, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i232 ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i377, %.noexc13.i.i.i.i.i376 ] ; 3 uses
  %i.bda = icmp sgt i64 %i.bcz, -1
  call void @llvm.assume(i1 %i.bda)
  %i.bdb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i233, i64 8
  %i.bdc = load ptr, ptr %i.bdb, align 8, !alias.scope !13789, !noalias !13790, !nonnull !28, !noundef !28
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdc, i64 %i.bcz
  store i8 123, ptr %i.bdd, align 1, !noalias !13791
  %i.bde = add nuw i64 %i.bcz, 1
  store i64 %i.bde, ptr %i.bcv, align 8, !alias.scope !13789, !noalias !13790
  store ptr %i.fa, ptr %i.ey, align 8, !noalias !13779
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 4 uses
  store i8 1, ptr %i.bdf, align 8, !noalias !13779
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.val15.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bdg, align 8, !alias.scope !13792, !noalias !13793 ; 2 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %.val16.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bdh, align 8, !alias.scope !13792, !noalias !13793
  %i.bdi = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7e9aa9fabb12201fE(ptr noalias noundef align 8 dereferenceable(16) %i.ey, ptr %.val15.i.i.i.i.i.i.i.i.i.i.i, i64 %.val16.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i234 unwind label %.loopexit.split-lp.i.i.i.i.i ; 2 uses

.noexc14.i.i.i.i.i234:                            ; preds = %bb.qo
  %.not.i.i.i.i.i.i.i.i.i.i.i235 = icmp eq ptr %i.bdi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i235, label %bb.qp, label %bb.ry

bb.qp:                                            ; preds = %.noexc14.i.i.i.i.i234
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.fl, i64 112
  call void @llvm.experimental.noalias.scope.decl(metadata !13794)
  call void @llvm.experimental.noalias.scope.decl(metadata !13795)
  call void @llvm.experimental.noalias.scope.decl(metadata !13796)
  %i.bdk = load ptr, ptr %i.ey, align 8, !alias.scope !13797, !noalias !13798, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  %i.bdl = load i8, ptr %i.bdf, align 8, !range !42, !alias.scope !13797, !noalias !13798, !noundef !28
  %i.bdm = icmp eq i8 %i.bdl, 1
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i267 = load ptr, ptr %i.bdk, align 8, !noalias !13799 ; 6 uses
  br i1 %i.bdm, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i270", label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i267) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13800)
  call void @llvm.experimental.noalias.scope.decl(metadata !13801)
  call void @llvm.experimental.noalias.scope.decl(metadata !13802)
  call void @llvm.experimental.noalias.scope.decl(metadata !13803)
  %i.bdn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i267, i64 16 ; 3 uses
  %i.bdo = load i64, ptr %i.bdn, align 8, !alias.scope !13804, !noalias !13805, !noundef !28 ; 3 uses
  %i.bdp = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i267, align 8, !range !29, !alias.scope !13804, !noalias !13805, !noundef !28
  %i.bdq = icmp eq i64 %i.bdp, %i.bdo
  br i1 %i.bdq, label %bb.qr, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i268", !prof !30

bb.qr:                                            ; preds = %bb.qq
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i267, i64 noundef %i.bdo, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc15.i.i.i.i.i374 unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !13730

.noexc15.i.i.i.i.i374:                            ; preds = %bb.qr
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i375 = load i64, ptr %i.bdn, align 8, !alias.scope !13806, !noalias !13805
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i268"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i268": ; preds = %.noexc15.i.i.i.i.i374, %bb.qq
  %i.bdr = phi i64 [ %i.bdo, %bb.qq ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i375, %.noexc15.i.i.i.i.i374 ] ; 3 uses
  %i.bds = icmp sgt i64 %i.bdr, -1
  call void @llvm.assume(i1 %i.bds)
  %i.bdt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i267, i64 8
  %i.bdu = load ptr, ptr %i.bdt, align 8, !alias.scope !13806, !noalias !13805, !nonnull !28, !noundef !28
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 %i.bdr
  store i8 44, ptr %i.bdv, align 1, !noalias !13807
  %i.bdw = add nuw i64 %i.bdr, 1
  store i64 %i.bdw, ptr %i.bdn, align 8, !alias.scope !13806, !noalias !13805
  %.val9.pre.i.i.i.i.i.i.i.i.i.i.i.i.i269 = load ptr, ptr %i.bdk, align 8, !noalias !13799
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i270"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i270": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i268", %bb.qp
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i271 = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i267, %bb.qp ], [ %.val9.pre.i.i.i.i.i.i.i.i.i.i.i.i.i269, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i268" ]
  store i8 2, ptr %i.bdf, align 8, !alias.scope !13797, !noalias !13798
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i271, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @412, i64 noundef 7)
          to label %.noexc16.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc16.i.i.i.i.i:                               ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i270"
  call void @llvm.experimental.noalias.scope.decl(metadata !13808)
  %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i272 = load ptr, ptr %i.bdk, align 8, !noalias !13809, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13810)
  call void @llvm.experimental.noalias.scope.decl(metadata !13811)
  call void @llvm.experimental.noalias.scope.decl(metadata !13812)
  call void @llvm.experimental.noalias.scope.decl(metadata !13813)
  %i.bdx = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i272, i64 16 ; 3 uses
  %i.bdy = load i64, ptr %i.bdx, align 8, !alias.scope !13814, !noalias !13815, !noundef !28 ; 3 uses
  %i.bdz = load i64, ptr %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i272, align 8, !range !29, !alias.scope !13814, !noalias !13815, !noundef !28
  %i.bea = icmp eq i64 %i.bdz, %i.bdy
  br i1 %i.bea, label %bb.qs, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i273, !prof !30

bb.qs:                                            ; preds = %.noexc16.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i272, i64 noundef %i.bdy, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !13730

.noexc17.i.i.i.i.i:                               ; preds = %bb.qs
  %.pre.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i373 = load i64, ptr %i.bdx, align 8, !alias.scope !13816, !noalias !13815
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i273

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i273: ; preds = %.noexc17.i.i.i.i.i, %.noexc16.i.i.i.i.i
  %i.beb = phi i64 [ %i.bdy, %.noexc16.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i373, %.noexc17.i.i.i.i.i ] ; 3 uses
  %i.bec = icmp sgt i64 %i.beb, -1
  call void @llvm.assume(i1 %i.bec)
  %i.bed = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i272, i64 8
  %i.bee = load ptr, ptr %i.bed, align 8, !alias.scope !13816, !noalias !13815, !nonnull !28, !noundef !28
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 %i.beb
  store i8 58, ptr %i.bef, align 1, !noalias !13817
  %i.beg = add nuw i64 %i.beb, 1
  store i64 %i.beg, ptr %i.bdx, align 8, !alias.scope !13816, !noalias !13815
  call void @llvm.experimental.noalias.scope.decl(metadata !13818)
  call void @llvm.experimental.noalias.scope.decl(metadata !13819)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex), !noalias !13820
  call void @llvm.experimental.noalias.scope.decl(metadata !13821)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bdk, align 8, !alias.scope !13822, !noalias !13823, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13824)
  call void @llvm.experimental.noalias.scope.decl(metadata !13825)
  call void @llvm.experimental.noalias.scope.decl(metadata !13826)
  call void @llvm.experimental.noalias.scope.decl(metadata !13827)
  %i.beh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bei = load i64, ptr %i.beh, align 8, !alias.scope !13828, !noalias !13829, !noundef !28 ; 3 uses
  %i.bej = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13828, !noalias !13829, !noundef !28
  %i.bek = icmp eq i64 %i.bej, %i.bei
  br i1 %i.bek, label %bb.qt, label %bb.qu, !prof !30

bb.qt:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i273
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bei, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc18.i.i.i.i.i372 unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !13730

.noexc18.i.i.i.i.i372:                            ; preds = %bb.qt
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.beh, align 8, !alias.scope !13830, !noalias !13831
  br label %bb.qu

bb.qu:                                            ; preds = %.noexc18.i.i.i.i.i372, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i273
  %i.bel = phi i64 [ %i.bei, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i273 ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc18.i.i.i.i.i372 ] ; 3 uses
  %i.bem = icmp sgt i64 %i.bel, -1
  call void @llvm.assume(i1 %i.bem)
  %i.ben = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.beo = load ptr, ptr %i.ben, align 8, !alias.scope !13830, !noalias !13831, !nonnull !28, !noundef !28
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 %i.bel
  store i8 123, ptr %i.bep, align 1, !noalias !13832
  %i.beq = add nuw i64 %i.bel, 1
  store i64 %i.beq, ptr %i.beh, align 8, !alias.scope !13830, !noalias !13831
  store ptr %i.bdk, ptr %i.ex, align 8, !noalias !13820
  %i.ber = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  store i8 1, ptr %i.ber, align 8, !noalias !13820
  %i.bes = getelementptr inbounds nuw i8, ptr %i.fl, i64 160
  %.val26.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bes, align 8, !alias.scope !13833, !noalias !13834
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef align 8 dereferenceable(16) %i.ex, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @661, i64 noundef 7, i32 %.val26.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc19.i.i.i.i.i274 unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc19.i.i.i.i.i274:                            ; preds = %bb.qu
  %i.bet = getelementptr inbounds nuw i8, ptr %i.fl, i64 167
  %.val27.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bet, align 1, !alias.scope !13833, !noalias !13834
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h2f1f1e8ca9aa0a73E(ptr noalias noundef align 8 dereferenceable(16) %i.ex, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @662, i64 noundef 12, i8 %.val27.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc20.i.i.i.i.i275 unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc20.i.i.i.i.i275:                            ; preds = %.noexc19.i.i.i.i.i274
  call void @llvm.experimental.noalias.scope.decl(metadata !13835)
  call void @llvm.experimental.noalias.scope.decl(metadata !13836)
  call void @llvm.experimental.noalias.scope.decl(metadata !13837)
  call void @llvm.experimental.noalias.scope.decl(metadata !13838)
  %i.beu = getelementptr inbounds nuw i8, ptr %i.fl, i64 136
  %i.bev = load i64, ptr %i.beu, align 8, !alias.scope !13839, !noalias !13840, !noundef !28 ; 2 uses
  %i.bew = icmp eq i64 %i.bev, 0
  br i1 %i.bew, label %_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.noexc20.i.i.i.i.i275
  %i.bex = load ptr, ptr %i.bdj, align 8, !alias.scope !13839, !noalias !13840, !nonnull !28, !noundef !28 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bex, align 16, !noalias !13841
  %i.bey = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bez = bitcast <16 x i1> %i.bey to i16
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bex, i64 16
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ber, align 8, !alias.scope !13842, !noalias !13843
  %i.bfb = icmp eq i8 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %2 = load ptr, ptr %i.ex, align 8, !alias.scope !13842, !noalias !13843, !nonnull !28, !align !35, !noundef !28 ; 4 uses
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
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bff, align 16, !noalias !13844
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
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bfs, align 8, !noalias !13845 ; 2 uses
  %i.bft = getelementptr i8, ptr %i.bfp, i64 -32
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bft, align 8, !noalias !13845
  call void @llvm.experimental.noalias.scope.decl(metadata !13846)
  call void @llvm.experimental.noalias.scope.decl(metadata !13847)
  call void @llvm.experimental.noalias.scope.decl(metadata !13848)
  call void @llvm.experimental.noalias.scope.decl(metadata !13849)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !noalias !13850 ; 6 uses
  br i1 %i.bfc, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17haec57e87a3692354E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.qw

bb.qw:                                            ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13851)
  call void @llvm.experimental.noalias.scope.decl(metadata !13852)
  call void @llvm.experimental.noalias.scope.decl(metadata !13853)
  call void @llvm.experimental.noalias.scope.decl(metadata !13854)
  %i.bfu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bfv = load i64, ptr %i.bfu, align 8, !alias.scope !13855, !noalias !13856, !noundef !28 ; 3 uses
  %i.bfw = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13855, !noalias !13856, !noundef !28
  %i.bfx = icmp eq i64 %i.bfw, %i.bfv
  br i1 %i.bfx, label %bb.qx, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.qx:                                            ; preds = %bb.qw
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bfv, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc21.i.i.i.i.i371 unwind label %.loopexit.i.i.i.i.i, !noalias !13730

.noexc21.i.i.i.i.i371:                            ; preds = %bb.qx
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bfu, align 8, !alias.scope !13857, !noalias !13856
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc21.i.i.i.i.i371, %bb.qw
  %i.bfy = phi i64 [ %i.bfv, %bb.qw ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc21.i.i.i.i.i371 ] ; 3 uses
  %i.bfz = icmp sgt i64 %i.bfy, -1
  call void @llvm.assume(i1 %i.bfz)
  %i.bga = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bgb = load ptr, ptr %i.bga, align 8, !alias.scope !13857, !noalias !13856, !nonnull !28, !noundef !28
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bgb, i64 %i.bfy
  store i8 44, ptr %i.bgc, align 1, !noalias !13858
  %i.bgd = add nuw i64 %i.bfy, 1
  store i64 %i.bgd, ptr %i.bfu, align 8, !alias.scope !13857, !noalias !13856
  %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !noalias !13850
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17haec57e87a3692354E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17haec57e87a3692354E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc22.i.i.i.i.i276 unwind label %.loopexit.i.i.i.i.i

.noexc22.i.i.i.i.i276:                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17haec57e87a3692354E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !noalias !13859, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13860)
  call void @llvm.experimental.noalias.scope.decl(metadata !13861)
  call void @llvm.experimental.noalias.scope.decl(metadata !13862)
  call void @llvm.experimental.noalias.scope.decl(metadata !13863)
  %i.bge = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bgf = load i64, ptr %i.bge, align 8, !alias.scope !13864, !noalias !13865, !noundef !28 ; 3 uses
  %i.bgg = load i64, ptr %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13864, !noalias !13865, !noundef !28
  %i.bgh = icmp eq i64 %i.bgg, %i.bgf
  br i1 %i.bgh, label %bb.qy, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.qy:                                            ; preds = %.noexc22.i.i.i.i.i276
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bgf, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc23.i.i.i.i.i370 unwind label %.loopexit.i.i.i.i.i, !noalias !13730

.noexc23.i.i.i.i.i370:                            ; preds = %bb.qy
  %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bge, align 8, !alias.scope !13866, !noalias !13865
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc23.i.i.i.i.i370, %.noexc22.i.i.i.i.i276
  %i.bgi = phi i64 [ %i.bgf, %.noexc22.i.i.i.i.i276 ], [ %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc23.i.i.i.i.i370 ] ; 3 uses
  %i.bgj = icmp sgt i64 %i.bgi, -1
  call void @llvm.assume(i1 %i.bgj)
  %i.bgk = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bgl = load ptr, ptr %i.bgk, align 8, !alias.scope !13866, !noalias !13865, !nonnull !28, !noundef !28
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 %i.bgi
  store i8 58, ptr %i.bgm, align 1, !noalias !13867
  %i.bgn = add nuw i64 %i.bgi, 1
  store i64 %i.bgn, ptr %i.bge, align 8, !alias.scope !13866, !noalias !13865
  %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !noalias !13859 ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13868)
  %i.bgo = load i64, ptr %i.bfr, align 8, !range !40, !alias.scope !13869, !noalias !13870, !noundef !28 ; 2 uses
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
  %i.bgt = load i8, ptr %i.bgs, align 8, !range !33, !alias.scope !13869, !noalias !13870, !noundef !28
  %i.bgu = trunc nuw i8 %i.bgt to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.bgv = getelementptr inbounds nuw i8, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 5 uses
  br i1 %i.bgu, label %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ra
  call void @llvm.experimental.noalias.scope.decl(metadata !13871)
  call void @llvm.experimental.noalias.scope.decl(metadata !13872)
  call void @llvm.experimental.noalias.scope.decl(metadata !13873)
  call void @llvm.experimental.noalias.scope.decl(metadata !13874)
  %i.bgw = load i64, ptr %i.bgv, align 8, !alias.scope !13875, !noalias !13876, !noundef !28 ; 3 uses
  %i.bgx = load i64, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13875, !noalias !13876, !noundef !28
  %i.bgy = sub i64 %i.bgx, %i.bgw
  %i.bgz = icmp ult i64 %i.bgy, 5
  br i1 %i.bgz, label %bb.rb, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.rb:                                            ; preds = %.split2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bgw, i64 noundef 5, i64 noundef 1, i64 noundef 1)
          to label %.noexc24.i.i.i.i.i368 unwind label %.loopexit.i.i.i.i.i, !noalias !13730

.noexc24.i.i.i.i.i368:                            ; preds = %bb.rb
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bgv, align 8, !alias.scope !13877, !noalias !13876
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc24.i.i.i.i.i368, %.split2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bha = phi i64 [ %i.bgw, %.split2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc24.i.i.i.i.i368 ] ; 3 uses
  %i.bhb = icmp sgt i64 %i.bha, -1
  call void @llvm.assume(i1 %i.bhb)
  %i.bhc = getelementptr inbounds nuw i8, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bhd = load ptr, ptr %i.bhc, align 8, !alias.scope !13877, !noalias !13876, !nonnull !28, !noundef !28
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 %i.bha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bhe, ptr noundef nonnull readonly align 1 dereferenceable(5) @268, i64 5, i1 false), !noalias !13878
  %i.bhf = add nuw i64 %i.bha, 5
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ra
  call void @llvm.experimental.noalias.scope.decl(metadata !13879)
  call void @llvm.experimental.noalias.scope.decl(metadata !13880)
  call void @llvm.experimental.noalias.scope.decl(metadata !13881)
  call void @llvm.experimental.noalias.scope.decl(metadata !13882)
  %i.bhg = load i64, ptr %i.bgv, align 8, !alias.scope !13883, !noalias !13884, !noundef !28 ; 3 uses
  %i.bhh = load i64, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13883, !noalias !13884, !noundef !28
  %i.bhi = sub i64 %i.bhh, %i.bhg
  %i.bhj = icmp ult i64 %i.bhi, 4
  br i1 %i.bhj, label %bb.rc, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.rc:                                            ; preds = %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bhg, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %.noexc25.i.i.i.i.i369 unwind label %.loopexit.i.i.i.i.i, !noalias !13730

.noexc25.i.i.i.i.i369:                            ; preds = %bb.rc
  %.pre.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bgv, align 8, !alias.scope !13885, !noalias !13884
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc25.i.i.i.i.i369, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bhk = phi i64 [ %i.bhg, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc25.i.i.i.i.i369 ] ; 3 uses
  %i.bhl = icmp sgt i64 %i.bhk, -1
  call void @llvm.assume(i1 %i.bhl)
  %i.bhm = getelementptr inbounds nuw i8, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bhn = load ptr, ptr %i.bhm, align 8, !alias.scope !13885, !noalias !13884, !nonnull !28, !noundef !28
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhn, i64 %i.bhk
  store i32 1702195828, ptr %i.bho, align 1, !noalias !13886
  %i.bhp = add nuw i64 %i.bhk, 4
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bhp, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.bhf, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  store i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bgv, align 8, !noalias !13887
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.rd:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bhq = load i32, ptr %i.bgs, align 8, !alias.scope !13869, !noalias !13870, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew), !noalias !13888
  call void @llvm.experimental.noalias.scope.decl(metadata !13889)
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
  %i.bif = load i16, ptr %i.bid, align 1, !noalias !13890
  store i16 %i.bif, ptr %i.bie, align 1, !alias.scope !13889, !noalias !13888
  %i.big = getelementptr inbounds nuw i8, ptr @849, i64 %i.bib
  %i.bih = getelementptr i8, ptr %i.ew, i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bii = getelementptr i8, ptr %i.bih, i64 -2
  %i.bij = load i16, ptr %i.big, align 1, !noalias !13890
  store i16 %i.bij, ptr %i.bii, align 1, !alias.scope !13889, !noalias !13888
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
  %i.bis = load i16, ptr %i.biq, align 1, !noalias !13890
  store i16 %i.bis, ptr %i.bir, align 1, !alias.scope !13889, !noalias !13888
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
  %i.biz = load i16, ptr %i.bix, align 1, !noalias !13890
  store i16 %i.biz, ptr %i.biy, align 1, !alias.scope !13889, !noalias !13888
  br label %bb.ri

bb.rh:                                            ; preds = %bb.rf
  %i.bja = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bjb = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.bja
  %i.bjd = or disjoint i8 %i.bjb, 48
  store i8 %i.bjd, ptr %i.bjc, align 1, !alias.scope !13889, !noalias !13888
  br label %bb.ri

bb.ri:                                            ; preds = %bb.rh, %bb.rg
  %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bja, %bb.rh ], [ %i.biw, %bb.rg ] ; 2 uses
  br i1 %i.bhr, label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.bje = add i64 %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.bje
  store i8 45, ptr %i.bjf, align 1, !alias.scope !13889, !noalias !13888
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.rj, %bb.ri
  %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ri ], [ %i.bje, %bb.rj ] ; 2 uses
  %i.bjg = sub i64 11, %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.bjh = icmp ult i64 %i.bjg, 12
  call void @llvm.assume(i1 %i.bjh)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13891)
  call void @llvm.experimental.noalias.scope.decl(metadata !13892)
  call void @llvm.experimental.noalias.scope.decl(metadata !13893)
  call void @llvm.experimental.noalias.scope.decl(metadata !13894)
  %i.bji = getelementptr inbounds nuw i8, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bjj = load i64, ptr %i.bji, align 8, !alias.scope !13895, !noalias !13896, !noundef !28 ; 3 uses
  %i.bjk = load i64, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13895, !noalias !13896, !noundef !28
  %i.bjl = sub i64 %i.bjk, %i.bjj
  %i.bjm = icmp ugt i64 %i.bjg, %i.bjl
  br i1 %i.bjm, label %bb.rk, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.rk:                                            ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bjj, i64 noundef %i.bjg, i64 noundef 1, i64 noundef 1)
          to label %.noexc26.i.i.i.i.i367 unwind label %.loopexit.i.i.i.i.i, !noalias !13730

.noexc26.i.i.i.i.i367:                            ; preds = %bb.rk
  %.pre.i.i.i.i.i.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bji, align 8, !alias.scope !13897, !noalias !13896
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc26.i.i.i.i.i367, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.bjn = phi i64 [ %i.bjj, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc26.i.i.i.i.i367 ] ; 3 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bjp = icmp sgt i64 %i.bjn, -1
  call void @llvm.assume(i1 %i.bjp)
  %i.bjq = getelementptr inbounds nuw i8, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bjr = load ptr, ptr %i.bjq, align 8, !alias.scope !13897, !noalias !13896, !nonnull !28, !noundef !28
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjr, i64 %i.bjn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bjs, ptr nonnull readonly align 1 %i.bjo, i64 %i.bjg, i1 false), !noalias !13898
  %i.bjt = add nuw i64 %i.bjn, %i.bjg
  store i64 %i.bjt, ptr %i.bji, align 8, !alias.scope !13897, !noalias !13896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew), !noalias !13888
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.rl:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bju = load ptr, ptr %i.bgs, align 8, !alias.scope !13869, !noalias !13870, !nonnull !28, !noundef !28
  %i.bjv = getelementptr inbounds i8, ptr %i.bfp, i64 -8
  %i.bjw = load i64, ptr %i.bjv, align 8, !alias.scope !13869, !noalias !13870, !noundef !28
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bju, i64 noundef %i.bjw)
          to label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.i.i.i.i.i

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.rl, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.bjx = icmp eq i64 %i.bfq, 0
  br i1 %i.bjx, label %_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.qv

_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  store i8 2, ptr %i.ber, align 8, !noalias !13820
  br label %_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc20.i.i.i.i.i275
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.fl, i64 164
  %i.bjz = load i8, ptr %i.bjy, align 4, !range !42, !alias.scope !13833, !noalias !13834, !noundef !28 ; 2 uses
  %.not23.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bjz, 2
  br i1 %.not23.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc28.i.i.i.i.i277, label %bb.rm

bb.rm:                                            ; preds = %_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef align 8 dereferenceable(16) %i.ex, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @663, i64 noundef 22, i8 %i.bjz)
          to label %.noexc28.i.i.i.i.i277 unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc28.i.i.i.i.i277:                            ; preds = %bb.rm, %_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bka = getelementptr inbounds nuw i8, ptr %i.fl, i64 165
  %i.bkb = load i8, ptr %i.bka, align 1, !range !42, !alias.scope !13833, !noalias !13834, !noundef !28 ; 2 uses
  %.not24.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bkb, 2
  br i1 %.not24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc29.i.i.i.i.i278, label %bb.rn

bb.rn:                                            ; preds = %.noexc28.i.i.i.i.i277
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef align 8 dereferenceable(16) %i.ex, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @664, i64 noundef 18, i8 %i.bkb)
          to label %.noexc29.i.i.i.i.i278 unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc29.i.i.i.i.i278:                            ; preds = %bb.rn, %.noexc28.i.i.i.i.i277
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.fl, i64 166
  %i.bkd = load i8, ptr %i.bkc, align 2, !range !42, !alias.scope !13833, !noalias !13834, !noundef !28 ; 2 uses
  %.not25.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bkd, 2
  br i1 %.not25.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc30.i.i.i.i.i, label %bb.ro

bb.ro:                                            ; preds = %.noexc29.i.i.i.i.i278
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef align 8 dereferenceable(16) %i.ex, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @665, i64 noundef 17, i8 %i.bkd)
          to label %.noexc30.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc30.i.i.i.i.i:                               ; preds = %bb.ro, %.noexc29.i.i.i.i.i278
  %i.bke = load ptr, ptr %i.ex, align 8, !noalias !13820, !nonnull !28, !align !35, !noundef !28
  %i.bkf = load i8, ptr %i.ber, align 8, !range !42, !noalias !13820, !noundef !28
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279 = load ptr, ptr %i.bke, align 8, !noalias !13899 ; 5 uses
  %i.bkg = icmp eq i8 %i.bkf, 0
  br i1 %i.bkg, label %bb.rr, label %bb.rp

bb.rp:                                            ; preds = %.noexc30.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13900)
  call void @llvm.experimental.noalias.scope.decl(metadata !13901)
  call void @llvm.experimental.noalias.scope.decl(metadata !13902)
  call void @llvm.experimental.noalias.scope.decl(metadata !13903)
  %i.bkh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279, i64 16 ; 3 uses
  %i.bki = load i64, ptr %i.bkh, align 8, !alias.scope !13904, !noalias !13905, !noundef !28 ; 3 uses
  %i.bkj = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279, align 8, !range !29, !alias.scope !13904, !noalias !13905, !noundef !28
  %i.bkk = icmp eq i64 %i.bkj, %i.bki
  br i1 %i.bkk, label %bb.rq, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.rq:                                            ; preds = %bb.rp
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279, i64 noundef %i.bki, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc31.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !13730

.noexc31.i.i.i.i.i:                               ; preds = %bb.rq
  %.pre.i.i.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bkh, align 8, !alias.scope !13906, !noalias !13905
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc31.i.i.i.i.i, %bb.rp
  %i.bkl = phi i64 [ %i.bki, %bb.rp ], [ %.pre.i.i.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc31.i.i.i.i.i ] ; 3 uses
  %i.bkm = icmp sgt i64 %i.bkl, -1
  call void @llvm.assume(i1 %i.bkm)
  %i.bkn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279, i64 8
  %i.bko = load ptr, ptr %i.bkn, align 8, !alias.scope !13906, !noalias !13905, !nonnull !28, !noundef !28
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bko, i64 %i.bkl
  store i8 125, ptr %i.bkp, align 1, !noalias !13907
  %i.bkq = add nuw i64 %i.bkl, 1
  store i64 %i.bkq, ptr %i.bkh, align 8, !alias.scope !13906, !noalias !13905
  br label %bb.rr

bb.rr:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc30.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex), !noalias !13820
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.fl, i64 88 ; 2 uses
  %i.bks = load i64, ptr %i.bkr, align 8, !range !40, !alias.scope !13908, !noalias !13909, !noundef !28
  %.not.i.i.i.i.i.i.i.i.i.i.i.i280 = icmp eq i64 %i.bks, -9223372036854775807
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i280, label %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i281"

"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i281": ; preds = %bb.rr
  invoke fastcc void @"_ZN105_$LT$serde..private..ser..FlatMapSerializeStruct$LT$M$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h5287490787fa0134E"(ptr nonnull align 8 dereferenceable(16) %i.ey, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @557, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bkr)
          to label %.noexc32.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc32.i.i.i.i.i:                               ; preds = %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i281"
  %.pre.i.i.i.i.i.i.i.i.i.i.i282 = load ptr, ptr %i.ey, align 8, !noalias !13779
  %.pre25.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bdf, align 8, !range !42, !noalias !13779
  %i.bkt = icmp eq i8 %.pre25.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bkt, label %bb.rt, label %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc32.i.i.i.i.i, %bb.rr
  %.val49.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i282, %.noexc32.i.i.i.i.i ], [ %i.bdk, %bb.rr ]
  %.val49.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val49.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !13910, !nonnull !28, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13911)
  call void @llvm.experimental.noalias.scope.decl(metadata !13912)
  call void @llvm.experimental.noalias.scope.decl(metadata !13913)
  call void @llvm.experimental.noalias.scope.decl(metadata !13914)
  %i.bku = getelementptr inbounds nuw i8, ptr %.val49.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bkv = load i64, ptr %i.bku, align 8, !alias.scope !13915, !noalias !13916, !noundef !28 ; 3 uses
  %i.bkw = load i64, ptr %.val49.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13915, !noalias !13916, !noundef !28
  %i.bkx = icmp eq i64 %i.bkw, %i.bkv
  br i1 %i.bkx, label %bb.rs, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i283, !prof !30

bb.rs:                                            ; preds = %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val49.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bkv, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc33.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !13730

.noexc33.i.i.i.i.i:                               ; preds = %bb.rs
  %.pre.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bku, align 8, !alias.scope !13917, !noalias !13916
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i283

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i283: ; preds = %.noexc33.i.i.i.i.i, %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  %i.bky = phi i64 [ %i.bkv, %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i, %.noexc33.i.i.i.i.i ] ; 3 uses
  %i.bkz = icmp sgt i64 %i.bky, -1
  call void @llvm.assume(i1 %i.bkz)
  %i.bla = getelementptr inbounds nuw i8, ptr %.val49.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.blb = load ptr, ptr %i.bla, align 8, !alias.scope !13917, !noalias !13916, !nonnull !28, !noundef !28
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 %i.bky
  store i8 125, ptr %i.blc, align 1, !noalias !13918
  %i.bld = add nuw i64 %i.bky, 1
  store i64 %i.bld, ptr %i.bku, align 8, !alias.scope !13917, !noalias !13916
  br label %bb.rt

bb.rt:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i283, %.noexc32.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey), !noalias !13779
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 2, i32 %i.bak)
          to label %.noexc34.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc34.i.i.i.i.i:                               ; preds = %bb.rt
  %i.ble = load ptr, ptr %i.ez, align 8, !noalias !13711, !nonnull !28, !align !35, !noundef !28
  %i.blf = load i8, ptr %i.baw, align 8, !range !42, !noalias !13711, !noundef !28
  %.val20.i.i.i.i.i.i.i284 = load ptr, ptr %i.ble, align 8, !noalias !13919 ; 5 uses
  %i.blg = icmp eq i8 %i.blf, 0
  br i1 %i.blg, label %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.i.i.i.i, label %bb.ru

bb.ru:                                            ; preds = %.noexc34.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i.i.i.i.i.i284) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13920)
  call void @llvm.experimental.noalias.scope.decl(metadata !13921)
  call void @llvm.experimental.noalias.scope.decl(metadata !13922)
  call void @llvm.experimental.noalias.scope.decl(metadata !13923)
  %i.blh = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i284, i64 16 ; 3 uses
  %i.bli = load i64, ptr %i.blh, align 8, !alias.scope !13924, !noalias !13925, !noundef !28 ; 3 uses
  %i.blj = load i64, ptr %.val20.i.i.i.i.i.i.i284, align 8, !range !29, !alias.scope !13924, !noalias !13925, !noundef !28
  %i.blk = icmp eq i64 %i.blj, %i.bli
  br i1 %i.blk, label %bb.rv, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i285, !prof !30

bb.rv:                                            ; preds = %bb.ru
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val20.i.i.i.i.i.i.i284, i64 noundef %i.bli, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc35.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !13730

.noexc35.i.i.i.i.i:                               ; preds = %bb.rv
  %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i366 = load i64, ptr %i.blh, align 8, !alias.scope !13926, !noalias !13925
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i285

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i285: ; preds = %.noexc35.i.i.i.i.i, %bb.ru
  %i.bll = phi i64 [ %i.bli, %bb.ru ], [ %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i366, %.noexc35.i.i.i.i.i ] ; 3 uses
  %i.blm = icmp sgt i64 %i.bll, -1
  call void @llvm.assume(i1 %i.blm)
  %i.bln = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i284, i64 8
  %i.blo = load ptr, ptr %i.bln, align 8, !alias.scope !13926, !noalias !13925, !nonnull !28, !noundef !28
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blo, i64 %i.bll
  store i8 125, ptr %i.blp, align 1, !noalias !13927
  %i.blq = add nuw i64 %i.bll, 1
  store i64 %i.blq, ptr %i.blh, align 8, !alias.scope !13926, !noalias !13925
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
  call void @llvm.experimental.noalias.scope.decl(metadata !13928)
  %.val.i.i.i.i.i.i210 = load i64, ptr %i.fb, align 8, !range !29, !alias.scope !13928, !noalias !13703, !noundef !28 ; 2 uses
  %i.blr = icmp eq i64 %.val.i.i.i.i.i.i210, 0
  br i1 %i.blr, label %.body.i.i.i212, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %.val1.i.i.i.i.i.i211 = load ptr, ptr %i.bau, align 8, !alias.scope !13928, !noalias !13703, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i211, i64 noundef %.val.i.i.i.i.i.i210, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13929
  br label %.body.i.i.i212

bb.ry:                                            ; preds = %.noexc14.i.i.i.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey), !noalias !13779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez), !noalias !13711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa), !noalias !13708
  call void @llvm.experimental.noalias.scope.decl(metadata !13930)
  %.val.i36.i.i.i.i.i = load i64, ptr %i.fb, align 8, !range !29, !alias.scope !13930, !noalias !13703, !noundef !28 ; 2 uses
  %i.bls = icmp eq i64 %.val.i36.i.i.i.i.i, 0
  br i1 %i.bls, label %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.thread.i.i.i.i, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %.val1.i37.i.i.i.i.i = load ptr, ptr %i.bau, align 8, !alias.scope !13930, !noalias !13703, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i37.i.i.i.i.i, i64 noundef %.val.i36.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13931
  br label %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.thread.i.i.i.i

_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.thread.i.i.i.i: ; preds = %bb.rz, %bb.ry
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb), !noalias !13703
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6stable5drift4sort17h248e1440fafc6158E:bb.a
.preheader.i:                                     ; preds = %bb.y, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.eg, %.noexc.i ], [ %i.dq, %bb.y ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.eh, %.noexc.i ], [ %i.ds, %bb.y ] ; 4 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ee, %.noexc.i ], [ %i.cj, %bb.y ]
  %i.dt = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -112 ; 3 uses
  %i.du = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32812
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.du, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317)
          to label %.noexc54 unwind label %.loopexit.i

.noexc54:                                         ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32812
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317)
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %.val1.i.i.i.i43 = load ptr, ptr %i.s, align 8, !alias.scope !32813, !noalias !32812, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i43, i64 noundef %.val.i.i.i.i42, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32813
  br label %.loopexit.i.body

bb.aa:                                            ; preds = %.noexc54
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32814)
  call void @llvm.experimental.noalias.scope.decl(metadata !32815)
  call void @llvm.experimental.noalias.scope.decl(metadata !32816)
  %.val.i.i.i.i42 = load i64, ptr %i.b, align 8, !range !29, !alias.scope !32813, !noalias !32812, !noundef !28 ; 2 uses
  %i.dw = icmp eq i64 %.val.i.i.i.i42, 0
  br i1 %i.dw, label %.loopexit.i.body, label %bb.z

bb.ab:                                            ; preds = %.noexc54
  %.val.i45 = load ptr, ptr %i.s, align 8, !noalias !32812, !nonnull !28, !noundef !28 ; 2 uses
  %.val2.i46 = load i64, ptr %i.t, align 8, !noalias !32812, !noundef !28 ; 2 uses
  %.val3.i47 = load ptr, ptr %i.u, align 8, !noalias !32812, !nonnull !28, !noundef !28 ; 2 uses
  %.val4.i48 = load i64, ptr %i.v, align 8, !noalias !32812, !noundef !28 ; 2 uses
  %..i.i.i.i.i49 = call i64 @llvm.umin.i64(i64 %.val2.i46, i64 %.val4.i48)
  %i.dx = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i45, ptr nonnull readonly align 1 %.val3.i47, i64 %..i.i.i.i.i49), !alias.scope !32817 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32818)
  call void @llvm.experimental.noalias.scope.decl(metadata !32819)
  call void @llvm.experimental.noalias.scope.decl(metadata !32820)
  %.val.i.i.i11.i50 = load i64, ptr %i.a, align 8, !range !29, !alias.scope !32821, !noalias !32812, !noundef !28 ; 2 uses
  %i.dy = icmp eq i64 %.val.i.i.i11.i50, 0
  br i1 %i.dy, label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit13.i51", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i47, i64 noundef %.val.i.i.i11.i50, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32821
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit13.i51"

"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit13.i51": ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32812
  call void @llvm.experimental.noalias.scope.decl(metadata !32822)
  call void @llvm.experimental.noalias.scope.decl(metadata !32823)
  call void @llvm.experimental.noalias.scope.decl(metadata !32824)
  %.val.i.i.i14.i52 = load i64, ptr %i.b, align 8, !range !29, !alias.scope !32825, !noalias !32812, !noundef !28 ; 2 uses
  %i.dz = icmp eq i64 %.val.i.i.i14.i52, 0
  br i1 %i.dz, label %.noexc.i, label %bb.ad

bb.ad:                                            ; preds = %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit13.i51"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45, i64 noundef %.val.i.i.i14.i52, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32825
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.ad, %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit13.i51"
  %i.ea = icmp eq i32 %i.dx, 0
  %i.eb = sub i64 %.val2.i46, %.val4.i48
  %i.ec = sext i32 %i.dx to i64
  %spec.store.select.i.i.i.i.i53 = select i1 %i.ea, i64 %i.eb, i64 %i.ec ; 2 uses
  %i.ed = icmp sgt i64 %spec.store.select.i.i.i.i.i53, -1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32812
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -112 ; 2 uses
  %..i.i = select i1 %i.ed, ptr %i.du, ptr %i.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ee, ptr noundef nonnull align 8 dereferenceable(112) %..i.i, i64 112, i1 false), !alias.scope !32811, !noalias !32826
  %i.ef = zext i1 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [112 x i8], ptr %i.dt, i64 %i.ef ; 3 uses
  %spec.store.select.i.i.i.i.i53.lobit = lshr i64 %spec.store.select.i.i.i.i.i53, 63
  %i.eh = getelementptr inbounds nuw [112 x i8], ptr %i.du, i64 %spec.store.select.i.i.i.i.i53.lobit ; 3 uses
  %i.ei = icmp eq ptr %i.eg, %i.cv
  %i.ej = icmp eq ptr %i.eh, %2
  %or.cond.i.i = select i1 %i.ei, i1 true, i1 %i.ej
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2bef46eef33cb37cE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.ew, %.noexc20.i ], [ %i.cv, %bb.y ] ; 5 uses
  %.sroa.0.0.i38 = phi ptr [ %i.eu, %.noexc20.i ], [ %2, %bb.y ] ; 6 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ev, %.noexc20.i ], [ %i.dq, %bb.y ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32827
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(88) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.0.02.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317)
          to label %.noexc unwind label %.loopexit.split-lp.i

.noexc:                                           ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32827
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(88) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317)
          to label %bb.ag unwind label %bb.af

bb.ae:                                            ; preds = %bb.af
  %.val1.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !32828, !noalias !32827, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32828
  br label %.loopexit.i.body

bb.af:                                            ; preds = %.noexc
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32829)
  call void @llvm.experimental.noalias.scope.decl(metadata !32830)
  call void @llvm.experimental.noalias.scope.decl(metadata !32831)
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !32828, !noalias !32827, !noundef !28 ; 2 uses
  %i.el = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.el, label %.loopexit.i.body, label %bb.ae

bb.ag:                                            ; preds = %.noexc
  %.val.i = load ptr, ptr %i.o, align 8, !noalias !32827, !nonnull !28, !noundef !28 ; 2 uses
  %.val2.i = load i64, ptr %i.p, align 8, !noalias !32827, !noundef !28 ; 2 uses
  %.val3.i = load ptr, ptr %i.q, align 8, !noalias !32827, !nonnull !28, !noundef !28 ; 2 uses
  %.val4.i = load i64, ptr %i.r, align 8, !noalias !32827, !noundef !28 ; 2 uses
  %..i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val2.i, i64 %.val4.i)
  %i.em = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val3.i, i64 %..i.i.i.i.i), !alias.scope !32832 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32833)
  call void @llvm.experimental.noalias.scope.decl(metadata !32834)
  call void @llvm.experimental.noalias.scope.decl(metadata !32835)
  %.val.i.i.i11.i = load i64, ptr %i.c, align 8, !range !29, !alias.scope !32836, !noalias !32827, !noundef !28 ; 2 uses
  %i.en = icmp eq i64 %.val.i.i.i11.i, 0
  br i1 %i.en, label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit13.i", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val.i.i.i11.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32836
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit13.i"

"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit13.i": ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32827
  call void @llvm.experimental.noalias.scope.decl(metadata !32837)
  call void @llvm.experimental.noalias.scope.decl(metadata !32838)
  call void @llvm.experimental.noalias.scope.decl(metadata !32839)
  %.val.i.i.i14.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !32840, !noalias !32827, !noundef !28 ; 2 uses
  %i.eo = icmp eq i64 %.val.i.i.i14.i, 0
  br i1 %i.eo, label %.noexc20.i, label %bb.ai

bb.ai:                                            ; preds = %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit13.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val.i.i.i14.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32840
  br label %.noexc20.i

.noexc20.i:                                       ; preds = %bb.ai, %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit13.i"
  %i.ep = icmp eq i32 %i.em, 0
  %i.eq = sub i64 %.val2.i, %.val4.i
  %i.er = sext i32 %i.em to i64
  %spec.store.select.i.i.i.i.i = select i1 %i.ep, i64 %i.eq, i64 %i.er ; 2 uses
  %i.es = icmp sgt i64 %spec.store.select.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32827
  %spec.select.i.i = select i1 %i.es, ptr %.sroa.0.0.i38, ptr %.sroa.0.02.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(112) %spec.select.i.i, i64 112, i1 false), !alias.scope !32811, !noalias !32841
  %i.et = zext i1 %i.es to i64
  %i.eu = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.i38, i64 %i.et ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit = lshr i64 %spec.store.select.i.i.i.i.i, 63
  %i.ev = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 112 ; 2 uses
  %i.ex = icmp ne ptr %i.eu, %i.ds
  %i.ey = icmp ne ptr %i.ev, %i.cj
  %or.cond.i19.i = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2bef46eef33cb37cE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2bef46eef33cb37cE.exit.i": ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.eg, %.noexc.i ], [ %i.ew, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.eh, %.noexc.i ], [ %i.ds, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.eu, %.noexc20.i ] ; 2 uses
  %i.ez = ptrtoint ptr %.sroa.7.2.i to i64
  %i.fa = ptrtoint ptr %.sroa.0.3.i to i64
  %i.fb = sub nuw i64 %i.ez, %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.fb, i1 false), !alias.scope !32811, !noalias !32842
  br label %_ZN4core5slice4sort6stable5merge5merge17he2908d56791f4383E.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.body

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.body

.loopexit.i.body:                                 ; preds = %.loopexit.split-lp.i, %bb.af, %bb.ae, %.loopexit.i, %bb.aa, %bb.z
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.0.i, %bb.z ], [ %.sroa.13.0.i, %bb.aa ], [ %.sroa.13.1.i, %bb.ae ], [ %.sroa.13.1.i, %bb.af ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %.sroa.7.0.i, %bb.z ], [ %.sroa.7.0.i, %bb.aa ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.af ], [ %i.ds, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %2, %bb.z ], [ %2, %bb.aa ], [ %.sroa.0.0.i38, %bb.ae ], [ %.sroa.0.0.i38, %bb.af ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %i.dv, %bb.z ], [ %i.dv, %bb.aa ], [ %i.ek, %bb.ae ], [ %i.ek, %bb.af ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fc = ptrtoint ptr %.sroa.7.1.i to i64
  %i.fd = ptrtoint ptr %.sroa.0.2.i to i64
  %i.fe = sub nuw i64 %i.fc, %i.fd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.fe, i1 false), !alias.scope !32811, !noalias !32843
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17he2908d56791f4383E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2bef46eef33cb37cE.exit.i"
  %i.ff = shl i64 %i.ct, 1
  %i.fg = or disjoint i64 %i.ff, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1b5d419680d866d1E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h1b5d419680d866d1E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17he2908d56791f4383E.exit
  %.sroa.0.0.i = phi i64 [ %i.fg, %_ZN4core5slice4sort6stable5merge5merge17he2908d56791f4383E.exit ], [ %i.db, %bb.t ] ; 2 uses
  %i.fh = icmp ugt i64 %i.ck, 1
  br i1 %i.fh, label %bb.q, label %._crit_edge

bb.aj:                                            ; preds = %._crit_edge
  %i.fi = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fj = lshr i64 %.sroa.023.0, 1
  %i.fk = add i64 %i.fj, %.sroa.09.0
  br label %bb.f

bb.ak:                                            ; preds = %._crit_edge
  %i.fl = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fl, 0
  br i1 %.not31, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fm = or i64 %1, 1
  %i.fn = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fm, i1 true)
  %i.fo = trunc nuw nsw i64 %i.fn to i32
  %i.fp = shl nuw nsw i32 %i.fo, 1
  %i.fq = xor i32 %i.fp, 126
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2760425ea44fddb7E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(112) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32728
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %bb.am
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hc2f5f793455eb9e1E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [66 x i8], align 1                ; 4 uses
  %i.f = alloca [528 x i8], align 8               ; 4 uses
  %i.g = icmp ult i64 %1, 2
  br i1 %i.g, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = udiv i64 4611686018427387904, %1
  %i.i = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.i, 0
  %i.j = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.h, %i.j         ; 2 uses
  %i.k = icmp ult i64 %1, 4097
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i64 %1, 1
  %i.n = sub nuw nsw i64 %1, %i.m
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.l, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not5.i143 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i148 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ak, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.ak ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eq, %bb.ak ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eo, %bb.ak ] ; 3 uses
  %i.w = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit", label %bb.q

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit": ; preds = %bb.f
  %i.x = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.y = getelementptr inbounds nuw [464 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.x, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread146, %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit"
  %i.z = icmp ult i64 %i.x, 2
  br i1 %i.z, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 464
  %i.ab = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hb417b267e576ebc9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.y), !noalias !32916, !inline_history !32847 ; 2 uses
  %.not108 = icmp eq i64 %i.x, 2                  ; 2 uses
  br i1 %i.ab, label %.preheader, label %.preheader66

.preheader66:                                     ; preds = %bb.i
  br i1 %.not108, label %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not108, label %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread146, label %.lr.ph95

.lr.ph:                                           ; preds = %.preheader66, %bb.j
  %.sroa.01.0.i.i91 = phi i64 [ %i.ag, %bb.j ], [ 2, %.preheader66 ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.01.0.i.i91
  %i.ad = getelementptr [464 x i8], ptr %i.y, i64 %.sroa.01.0.i.i91
  %i.ae = getelementptr i8, ptr %i.ad, i64 -464
  %i.af = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hb417b267e576ebc9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.ae), !noalias !32916, !inline_history !32847
  br i1 %i.af, label %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ag = add nuw i64 %.sroa.01.0.i.i91, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.x
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i, label %.lr.ph

.lr.ph95:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i94 = phi i64 [ %i.al, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.01.1.i.i94
  %i.ai = getelementptr [464 x i8], ptr %i.y, i64 %.sroa.01.1.i.i94
  %i.aj = getelementptr i8, ptr %i.ai, i64 -464
  %i.ak = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hb417b267e576ebc9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.aj), !noalias !32916, !inline_history !32847
  br i1 %i.ak, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i

bb.k:                                             ; preds = %.lr.ph95
  %i.al = add nuw i64 %.sroa.01.1.i.i94, 1        ; 2 uses
  %exitcond127.not = icmp eq i64 %i.al, %i.x
  br i1 %exitcond127.not, label %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i, label %.lr.ph95

_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph95
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i94, %.lr.ph95 ], [ %i.x, %bb.k ], [ %.sroa.01.0.i.i91, %.lr.ph ], [ %i.x, %bb.j ] ; 6 uses
  %i.am = icmp ule i64 %.sroa.0.0.i.i, %i.x
  call void @llvm.assume(i1 %i.am)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread146: ; preds = %.preheader
  br i1 %.not5.i148, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread: ; preds = %.preheader66
  br i1 %.not5.i143, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i
  br i1 %i.ab, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %.sroa.01.0)
  %i.an = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hf21a3bc99ed10c62E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 32) ; 2 uses
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h71398e72c423b2fcE(ptr noalias noundef nonnull align 8 %i.y, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(464) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32847
  %i.ao = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.ap = or disjoint i64 %i.ao, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hf21a3bc99ed10c62E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i, %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i6164 = phi i64 [ %i.x, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread ], [ %.sroa.0.0.i.i144151155, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i ]
  %i.aq = shl i64 %.sroa.0.0.i.i6164, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hf21a3bc99ed10c62E.exit

bb.o:                                             ; preds = %bb.l
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32917), !noalias !32916
  call void @llvm.experimental.noalias.scope.decl(metadata !32918), !noalias !32916
  %.not15.i.i = icmp eq i64 %i.as, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread146, %bb.o
  %i.at = phi i64 [ %i.as, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread146 ]
  %.sroa.0.0.i.i144151155 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread146 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.0.0.i.i144151155
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.be, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.av = xor i64 %.sroa.0.014.i.i, -1
  %i.aw = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ax = getelementptr [464 x i8], ptr %i.au, i64 %i.av ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i39
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i39 ], [ %i.bb, %bb.p ] ; 4 uses
  %i.ay = or disjoint i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32919), !noalias !32916
  call void @llvm.experimental.noalias.scope.decl(metadata !32920), !noalias !32916
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !32921, !noalias !32922
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !32923, !noalias !32924
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.az, align 8, !alias.scope !32921, !noalias !32922
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.ba, align 8, !alias.scope !32923, !noalias !32924
  %i.bb = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 2 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ay ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort6stable5drift4sort17hc2f5f793455eb9e1E:bb.a
  %.16.i = select i1 %.not.i37, ptr %i.cw, ptr %i.cb
  %i.cx = mul i64 %.sroa.0.0.i.i36, 464           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.cx, i1 false), !alias.scope !32931
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx ; 6 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.z, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dm, %.noexc.i ], [ %i.cw, %bb.z ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.dn, %.noexc.i ], [ %i.cy, %bb.z ] ; 4 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dk, %.noexc.i ], [ %i.bp, %bb.z ]
  %i.cz = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -464 ; 3 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -464 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32932
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1045)
          to label %.noexc54 unwind label %.loopexit.i

.noexc54:                                         ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32932
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1045)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.ab
  %.val1.i.i.i43 = load ptr, ptr %i.s, align 8, !alias.scope !32933, !noalias !32932, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i43, i64 noundef %.val.i.i.i42, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32933
  br label %.loopexit.i.body

bb.ab:                                            ; preds = %.noexc54
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32934)
  call void @llvm.experimental.noalias.scope.decl(metadata !32935)
  %.val.i.i.i42 = load i64, ptr %i.b, align 8, !range !29, !alias.scope !32933, !noalias !32932, !noundef !28 ; 2 uses
  %i.dc = icmp eq i64 %.val.i.i.i42, 0
  br i1 %i.dc, label %.loopexit.i.body, label %bb.aa

bb.ac:                                            ; preds = %.noexc54
  %.val.i45 = load ptr, ptr %i.s, align 8, !noalias !32932, !nonnull !28, !noundef !28 ; 2 uses
  %.val2.i46 = load i64, ptr %i.t, align 8, !noalias !32932, !noundef !28 ; 2 uses
  %.val3.i47 = load ptr, ptr %i.u, align 8, !noalias !32932, !nonnull !28, !noundef !28 ; 2 uses
  %.val4.i48 = load i64, ptr %i.v, align 8, !noalias !32932, !noundef !28 ; 2 uses
  %..i.i.i.i.i.i49 = call i64 @llvm.umin.i64(i64 %.val2.i46, i64 %.val4.i48)
  %i.dd = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i45, ptr nonnull readonly align 1 %.val3.i47, i64 %..i.i.i.i.i.i49), !alias.scope !32936 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32937)
  call void @llvm.experimental.noalias.scope.decl(metadata !32938)
  %.val.i.i8.i50 = load i64, ptr %i.a, align 8, !range !29, !alias.scope !32939, !noalias !32932, !noundef !28 ; 2 uses
  %i.de = icmp eq i64 %.val.i.i8.i50, 0
  br i1 %i.de, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i51", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i47, i64 noundef %.val.i.i8.i50, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32939
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i51"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i51": ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32932
  call void @llvm.experimental.noalias.scope.decl(metadata !32940)
  call void @llvm.experimental.noalias.scope.decl(metadata !32941)
  %.val.i.i11.i52 = load i64, ptr %i.b, align 8, !range !29, !alias.scope !32942, !noalias !32932, !noundef !28 ; 2 uses
  %i.df = icmp eq i64 %.val.i.i11.i52, 0
  br i1 %i.df, label %.noexc.i, label %bb.ae

bb.ae:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i51"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45, i64 noundef %.val.i.i11.i52, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32942
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.ae, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i51"
  %i.dg = icmp eq i32 %i.dd, 0
  %i.dh = sub i64 %.val2.i46, %.val4.i48
  %i.di = sext i32 %i.dd to i64
  %spec.store.select.i.i.i.i.i.i53 = select i1 %i.dg, i64 %i.dh, i64 %i.di ; 2 uses
  %i.dj = icmp sgt i64 %spec.store.select.i.i.i.i.i.i53, -1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32932
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -464 ; 2 uses
  %..i.i = select i1 %i.dj, ptr %i.da, ptr %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %i.dk, ptr noundef nonnull align 8 dereferenceable(464) %..i.i, i64 464, i1 false), !alias.scope !32931, !noalias !32943
  %i.dl = zext i1 %i.dj to i64
  %i.dm = getelementptr inbounds nuw [464 x i8], ptr %i.cz, i64 %i.dl ; 3 uses
  %spec.store.select.i.i.i.i.i.i53.lobit = lshr i64 %spec.store.select.i.i.i.i.i.i53, 63
  %i.dn = getelementptr inbounds nuw [464 x i8], ptr %i.da, i64 %spec.store.select.i.i.i.i.i.i53.lobit ; 3 uses
  %i.do = icmp eq ptr %i.dm, %i.cb
  %i.dp = icmp eq ptr %i.dn, %2
  %or.cond.i.i = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h4ba542ee40f757c2E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.ec, %.noexc20.i ], [ %i.cb, %bb.z ] ; 5 uses
  %.sroa.0.0.i38 = phi ptr [ %i.ea, %.noexc20.i ], [ %2, %bb.z ] ; 6 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eb, %.noexc20.i ], [ %i.cw, %bb.z ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32944
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %.sroa.0.02.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1045)
          to label %.noexc unwind label %.loopexit.split-lp.i

.noexc:                                           ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32944
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %.sroa.0.0.i38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1045)
          to label %bb.ah unwind label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %.val1.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !32945, !noalias !32944, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32945
  br label %.loopexit.i.body

bb.ag:                                            ; preds = %.noexc
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32946)
  call void @llvm.experimental.noalias.scope.decl(metadata !32947)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !32945, !noalias !32944, !noundef !28 ; 2 uses
  %i.dr = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.dr, label %.loopexit.i.body, label %bb.af

bb.ah:                                            ; preds = %.noexc
  %.val.i = load ptr, ptr %i.o, align 8, !noalias !32944, !nonnull !28, !noundef !28 ; 2 uses
  %.val2.i = load i64, ptr %i.p, align 8, !noalias !32944, !noundef !28 ; 2 uses
  %.val3.i = load ptr, ptr %i.q, align 8, !noalias !32944, !nonnull !28, !noundef !28 ; 2 uses
  %.val4.i = load i64, ptr %i.r, align 8, !noalias !32944, !noundef !28 ; 2 uses
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val2.i, i64 %.val4.i)
  %i.ds = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val3.i, i64 %..i.i.i.i.i.i), !alias.scope !32948 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32949)
  call void @llvm.experimental.noalias.scope.decl(metadata !32950)
  %.val.i.i8.i = load i64, ptr %i.c, align 8, !range !29, !alias.scope !32951, !noalias !32944, !noundef !28 ; 2 uses
  %i.dt = icmp eq i64 %.val.i.i8.i, 0
  br i1 %i.dt, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val.i.i8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32951
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i": ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32944
  call void @llvm.experimental.noalias.scope.decl(metadata !32952)
  call void @llvm.experimental.noalias.scope.decl(metadata !32953)
  %.val.i.i11.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !32954, !noalias !32944, !noundef !28 ; 2 uses
  %i.du = icmp eq i64 %.val.i.i11.i, 0
  br i1 %i.du, label %.noexc20.i, label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val.i.i11.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32954
  br label %.noexc20.i

.noexc20.i:                                       ; preds = %bb.aj, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i"
  %i.dv = icmp eq i32 %i.ds, 0
  %i.dw = sub i64 %.val2.i, %.val4.i
  %i.dx = sext i32 %i.ds to i64
  %spec.store.select.i.i.i.i.i.i = select i1 %i.dv, i64 %i.dw, i64 %i.dx ; 2 uses
  %i.dy = icmp sgt i64 %spec.store.select.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32944
  %spec.select.i.i = select i1 %i.dy, ptr %.sroa.0.0.i38, ptr %.sroa.0.02.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(464) %spec.select.i.i, i64 464, i1 false), !alias.scope !32931, !noalias !32955
  %i.dz = zext i1 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [464 x i8], ptr %.sroa.0.0.i38, i64 %i.dz ; 3 uses
  %spec.store.select.i.i.i.i.i.i.lobit = lshr i64 %spec.store.select.i.i.i.i.i.i, 63
  %i.eb = getelementptr inbounds nuw [464 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.i.lobit ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 464 ; 2 uses
  %i.ed = icmp ne ptr %i.ea, %i.cy
  %i.ee = icmp ne ptr %i.eb, %i.bp
  %or.cond.i19.i = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h4ba542ee40f757c2E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h4ba542ee40f757c2E.exit.i": ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.dm, %.noexc.i ], [ %i.ec, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.dn, %.noexc.i ], [ %i.cy, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.ea, %.noexc20.i ] ; 2 uses
  %i.ef = ptrtoint ptr %.sroa.7.2.i to i64
  %i.eg = ptrtoint ptr %.sroa.0.3.i to i64
  %i.eh = sub nuw i64 %i.ef, %i.eg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.eh, i1 false), !alias.scope !32931, !noalias !32956
  br label %_ZN4core5slice4sort6stable5merge5merge17hf86c00c5fc5653daE.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.body

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.body

.loopexit.i.body:                                 ; preds = %.loopexit.split-lp.i, %bb.ag, %bb.af, %.loopexit.i, %bb.ab, %bb.aa
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.0.i, %bb.aa ], [ %.sroa.13.0.i, %bb.ab ], [ %.sroa.13.1.i, %bb.af ], [ %.sroa.13.1.i, %bb.ag ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %.sroa.7.0.i, %bb.aa ], [ %.sroa.7.0.i, %bb.ab ], [ %i.cy, %bb.af ], [ %i.cy, %bb.ag ], [ %i.cy, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %2, %bb.aa ], [ %2, %bb.ab ], [ %.sroa.0.0.i38, %bb.af ], [ %.sroa.0.0.i38, %bb.ag ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %i.db, %bb.aa ], [ %i.db, %bb.ab ], [ %i.dq, %bb.af ], [ %i.dq, %bb.ag ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ei = ptrtoint ptr %.sroa.7.1.i to i64
  %i.ej = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ek = sub nuw i64 %i.ei, %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.ek, i1 false), !alias.scope !32931, !noalias !32957
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17hf86c00c5fc5653daE.exit: ; preds = %bb.x, %bb.y, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h4ba542ee40f757c2E.exit.i"
  %i.el = shl i64 %i.bz, 1
  %i.em = or disjoint i64 %i.el, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hbc81b237dc450025E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hbc81b237dc450025E.exit: ; preds = %bb.u, %_ZN4core5slice4sort6stable5merge5merge17hf86c00c5fc5653daE.exit
  %.sroa.0.0.i = phi i64 [ %i.em, %_ZN4core5slice4sort6stable5merge5merge17hf86c00c5fc5653daE.exit ], [ %i.ch, %bb.u ] ; 2 uses
  %i.en = icmp ugt i64 %i.bq, 1
  br i1 %i.en, label %bb.r, label %._crit_edge

bb.ak:                                            ; preds = %._crit_edge
  %i.eo = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ep = lshr i64 %.sroa.023.0, 1
  %i.eq = add i64 %i.ep, %.sroa.09.0
  br label %bb.f

bb.al:                                            ; preds = %._crit_edge
  %i.er = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.er, 0
  br i1 %.not31, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.es = or i64 %1, 1
  %i.et = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.es, i1 true)
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 1
  %i.ew = xor i32 %i.ev, 126
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h71398e72c423b2fcE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ew, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(464) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32858
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %bb.an
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hd87a838774555cb8E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [66 x i8], align 1                ; 4 uses
  %i.f = alloca [528 x i8], align 8               ; 4 uses
  %i.g = icmp ult i64 %1, 2
  br i1 %i.g, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = udiv i64 4611686018427387904, %1
  %i.i = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.i, 0
  %i.j = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.h, %i.j         ; 2 uses
  %i.k = icmp ult i64 %1, 4097
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i64 %1, 1
  %i.n = sub nuw nsw i64 %1, %i.m
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.l, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not5.i143 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i148 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ak, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.ak ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eq, %bb.ak ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eo, %bb.ak ] ; 3 uses
  %i.w = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit", label %bb.q

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit": ; preds = %bb.f
  %i.x = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.y = getelementptr inbounds nuw [464 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.x, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread146, %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit"
  %i.z = icmp ult i64 %i.x, 2
  br i1 %i.z, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 464
  %i.ab = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h50801127d9e68a0bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.y), !noalias !33030, !inline_history !32961 ; 2 uses
  %.not108 = icmp eq i64 %i.x, 2                  ; 2 uses
  br i1 %i.ab, label %.preheader, label %.preheader66

.preheader66:                                     ; preds = %bb.i
  br i1 %.not108, label %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not108, label %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread146, label %.lr.ph95

.lr.ph:                                           ; preds = %.preheader66, %bb.j
  %.sroa.01.0.i.i91 = phi i64 [ %i.ag, %bb.j ], [ 2, %.preheader66 ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.01.0.i.i91
  %i.ad = getelementptr [464 x i8], ptr %i.y, i64 %.sroa.01.0.i.i91
  %i.ae = getelementptr i8, ptr %i.ad, i64 -464
  %i.af = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h50801127d9e68a0bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.ae), !noalias !33030, !inline_history !32961
  br i1 %i.af, label %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ag = add nuw i64 %.sroa.01.0.i.i91, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.x
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i, label %.lr.ph

.lr.ph95:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i94 = phi i64 [ %i.al, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.01.1.i.i94
  %i.ai = getelementptr [464 x i8], ptr %i.y, i64 %.sroa.01.1.i.i94
  %i.aj = getelementptr i8, ptr %i.ai, i64 -464
  %i.ak = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h50801127d9e68a0bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.aj), !noalias !33030, !inline_history !32961
  br i1 %i.ak, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i

bb.k:                                             ; preds = %.lr.ph95
  %i.al = add nuw i64 %.sroa.01.1.i.i94, 1        ; 2 uses
  %exitcond127.not = icmp eq i64 %i.al, %i.x
  br i1 %exitcond127.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i, label %.lr.ph95

_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph95
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i94, %.lr.ph95 ], [ %i.x, %bb.k ], [ %.sroa.01.0.i.i91, %.lr.ph ], [ %i.x, %bb.j ] ; 6 uses
  %i.am = icmp ule i64 %.sroa.0.0.i.i, %i.x
  call void @llvm.assume(i1 %i.am)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread146: ; preds = %.preheader
  br i1 %.not5.i148, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread: ; preds = %.preheader66
  br i1 %.not5.i143, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i
  br i1 %i.ab, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %.sroa.01.0)
  %i.an = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h94aa23fa582ce6a6E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 32) ; 2 uses
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfcc5bbc2cb50c6baE(ptr noalias noundef nonnull align 8 %i.y, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(464) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32961
  %i.ao = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.ap = or disjoint i64 %i.ao, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h94aa23fa582ce6a6E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i, %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i6164 = phi i64 [ %i.x, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread ], [ %.sroa.0.0.i.i144151155, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i ]
  %i.aq = shl i64 %.sroa.0.0.i.i6164, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h94aa23fa582ce6a6E.exit

bb.o:                                             ; preds = %bb.l
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33031), !noalias !33030
  call void @llvm.experimental.noalias.scope.decl(metadata !33032), !noalias !33030
  %.not15.i.i = icmp eq i64 %i.as, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread146, %bb.o
  %i.at = phi i64 [ %i.as, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread146 ]
  %.sroa.0.0.i.i144151155 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread146 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.0.0.i.i144151155
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.be, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.av = xor i64 %.sroa.0.014.i.i, -1
  %i.aw = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ax = getelementptr [464 x i8], ptr %i.au, i64 %i.av ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i39
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i39 ], [ %i.bb, %bb.p ] ; 4 uses
  %i.ay = or disjoint i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33033), !noalias !33030
  call void @llvm.experimental.noalias.scope.decl(metadata !33034), !noalias !33030
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !33035, !noalias !33036
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !33037, !noalias !33038
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.az, align 8, !alias.scope !33035, !noalias !33036
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.ba, align 8, !alias.scope !33037, !noalias !33038
  %i.bb = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 2 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ay ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4core5slice4sort6stable5drift4sort17hd87a838774555cb8E:bb.a
  %.16.i = select i1 %.not.i37, ptr %i.cw, ptr %i.cb
  %i.cx = mul i64 %.sroa.0.0.i.i36, 464           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.cx, i1 false), !alias.scope !33045
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx ; 6 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.z, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dm, %.noexc.i ], [ %i.cw, %bb.z ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.dn, %.noexc.i ], [ %i.cy, %bb.z ] ; 4 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dk, %.noexc.i ], [ %i.bp, %bb.z ]
  %i.cz = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -464 ; 3 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -464 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33046
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1046)
          to label %.noexc54 unwind label %.loopexit.i

.noexc54:                                         ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33046
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1046)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.ab
  %.val1.i.i.i43 = load ptr, ptr %i.s, align 8, !alias.scope !33047, !noalias !33046, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i43, i64 noundef %.val.i.i.i42, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !33047
  br label %.loopexit.i.body

bb.ab:                                            ; preds = %.noexc54
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33048)
  call void @llvm.experimental.noalias.scope.decl(metadata !33049)
  %.val.i.i.i42 = load i64, ptr %i.b, align 8, !range !29, !alias.scope !33047, !noalias !33046, !noundef !28 ; 2 uses
  %i.dc = icmp eq i64 %.val.i.i.i42, 0
  br i1 %i.dc, label %.loopexit.i.body, label %bb.aa

bb.ac:                                            ; preds = %.noexc54
  %.val.i45 = load ptr, ptr %i.s, align 8, !noalias !33046, !nonnull !28, !noundef !28 ; 2 uses
  %.val2.i46 = load i64, ptr %i.t, align 8, !noalias !33046, !noundef !28 ; 2 uses
  %.val3.i47 = load ptr, ptr %i.u, align 8, !noalias !33046, !nonnull !28, !noundef !28 ; 2 uses
  %.val4.i48 = load i64, ptr %i.v, align 8, !noalias !33046, !noundef !28 ; 2 uses
  %..i.i.i.i.i.i49 = call i64 @llvm.umin.i64(i64 %.val2.i46, i64 %.val4.i48)
  %i.dd = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i45, ptr nonnull readonly align 1 %.val3.i47, i64 %..i.i.i.i.i.i49), !alias.scope !33050 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33051)
  call void @llvm.experimental.noalias.scope.decl(metadata !33052)
  %.val.i.i8.i50 = load i64, ptr %i.a, align 8, !range !29, !alias.scope !33053, !noalias !33046, !noundef !28 ; 2 uses
  %i.de = icmp eq i64 %.val.i.i8.i50, 0
  br i1 %i.de, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i51", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i47, i64 noundef %.val.i.i8.i50, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !33053
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i51"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i51": ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33046
  call void @llvm.experimental.noalias.scope.decl(metadata !33054)
  call void @llvm.experimental.noalias.scope.decl(metadata !33055)
  %.val.i.i11.i52 = load i64, ptr %i.b, align 8, !range !29, !alias.scope !33056, !noalias !33046, !noundef !28 ; 2 uses
  %i.df = icmp eq i64 %.val.i.i11.i52, 0
  br i1 %i.df, label %.noexc.i, label %bb.ae

bb.ae:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i51"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45, i64 noundef %.val.i.i11.i52, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !33056
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.ae, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i51"
  %i.dg = icmp eq i32 %i.dd, 0
  %i.dh = sub i64 %.val2.i46, %.val4.i48
  %i.di = sext i32 %i.dd to i64
  %spec.store.select.i.i.i.i.i.i53 = select i1 %i.dg, i64 %i.dh, i64 %i.di ; 2 uses
  %i.dj = icmp sgt i64 %spec.store.select.i.i.i.i.i.i53, -1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33046
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -464 ; 2 uses
  %..i.i = select i1 %i.dj, ptr %i.da, ptr %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %i.dk, ptr noundef nonnull align 8 dereferenceable(464) %..i.i, i64 464, i1 false), !alias.scope !33045, !noalias !33057
  %i.dl = zext i1 %i.dj to i64
  %i.dm = getelementptr inbounds nuw [464 x i8], ptr %i.cz, i64 %i.dl ; 3 uses
  %spec.store.select.i.i.i.i.i.i53.lobit = lshr i64 %spec.store.select.i.i.i.i.i.i53, 63
  %i.dn = getelementptr inbounds nuw [464 x i8], ptr %i.da, i64 %spec.store.select.i.i.i.i.i.i53.lobit ; 3 uses
  %i.do = icmp eq ptr %i.dm, %i.cb
  %i.dp = icmp eq ptr %i.dn, %2
  %or.cond.i.i = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hecf7bfe9d3cb5836E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.ec, %.noexc20.i ], [ %i.cb, %bb.z ] ; 5 uses
  %.sroa.0.0.i38 = phi ptr [ %i.ea, %.noexc20.i ], [ %2, %bb.z ] ; 6 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eb, %.noexc20.i ], [ %i.cw, %bb.z ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !33058
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %.sroa.0.02.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1046)
          to label %.noexc unwind label %.loopexit.split-lp.i

.noexc:                                           ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33058
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %.sroa.0.0.i38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1046)
          to label %bb.ah unwind label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %.val1.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !33059, !noalias !33058, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !33059
  br label %.loopexit.i.body

bb.ag:                                            ; preds = %.noexc
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33060)
  call void @llvm.experimental.noalias.scope.decl(metadata !33061)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !33059, !noalias !33058, !noundef !28 ; 2 uses
  %i.dr = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.dr, label %.loopexit.i.body, label %bb.af

bb.ah:                                            ; preds = %.noexc
  %.val.i = load ptr, ptr %i.o, align 8, !noalias !33058, !nonnull !28, !noundef !28 ; 2 uses
  %.val2.i = load i64, ptr %i.p, align 8, !noalias !33058, !noundef !28 ; 2 uses
  %.val3.i = load ptr, ptr %i.q, align 8, !noalias !33058, !nonnull !28, !noundef !28 ; 2 uses
  %.val4.i = load i64, ptr %i.r, align 8, !noalias !33058, !noundef !28 ; 2 uses
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val2.i, i64 %.val4.i)
  %i.ds = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val3.i, i64 %..i.i.i.i.i.i), !alias.scope !33062 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33063)
  call void @llvm.experimental.noalias.scope.decl(metadata !33064)
  %.val.i.i8.i = load i64, ptr %i.c, align 8, !range !29, !alias.scope !33065, !noalias !33058, !noundef !28 ; 2 uses
  %i.dt = icmp eq i64 %.val.i.i8.i, 0
  br i1 %i.dt, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val.i.i8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !33065
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i": ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33058
  call void @llvm.experimental.noalias.scope.decl(metadata !33066)
  call void @llvm.experimental.noalias.scope.decl(metadata !33067)
  %.val.i.i11.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !33068, !noalias !33058, !noundef !28 ; 2 uses
  %i.du = icmp eq i64 %.val.i.i11.i, 0
  br i1 %i.du, label %.noexc20.i, label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val.i.i11.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !33068
  br label %.noexc20.i

.noexc20.i:                                       ; preds = %bb.aj, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i"
  %i.dv = icmp eq i32 %i.ds, 0
  %i.dw = sub i64 %.val2.i, %.val4.i
  %i.dx = sext i32 %i.ds to i64
  %spec.store.select.i.i.i.i.i.i = select i1 %i.dv, i64 %i.dw, i64 %i.dx ; 2 uses
  %i.dy = icmp sgt i64 %spec.store.select.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !33058
  %spec.select.i.i = select i1 %i.dy, ptr %.sroa.0.0.i38, ptr %.sroa.0.02.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(464) %spec.select.i.i, i64 464, i1 false), !alias.scope !33045, !noalias !33069
  %i.dz = zext i1 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [464 x i8], ptr %.sroa.0.0.i38, i64 %i.dz ; 3 uses
  %spec.store.select.i.i.i.i.i.i.lobit = lshr i64 %spec.store.select.i.i.i.i.i.i, 63
  %i.eb = getelementptr inbounds nuw [464 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.i.lobit ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 464 ; 2 uses
  %i.ed = icmp ne ptr %i.ea, %i.cy
  %i.ee = icmp ne ptr %i.eb, %i.bp
  %or.cond.i19.i = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hecf7bfe9d3cb5836E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hecf7bfe9d3cb5836E.exit.i": ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.dm, %.noexc.i ], [ %i.ec, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.dn, %.noexc.i ], [ %i.cy, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.ea, %.noexc20.i ] ; 2 uses
  %i.ef = ptrtoint ptr %.sroa.7.2.i to i64
  %i.eg = ptrtoint ptr %.sroa.0.3.i to i64
  %i.eh = sub nuw i64 %i.ef, %i.eg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.eh, i1 false), !alias.scope !33045, !noalias !33070
  br label %_ZN4core5slice4sort6stable5merge5merge17h6b36bff090fd6badE.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.body

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.body

.loopexit.i.body:                                 ; preds = %.loopexit.split-lp.i, %bb.ag, %bb.af, %.loopexit.i, %bb.ab, %bb.aa
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.0.i, %bb.aa ], [ %.sroa.13.0.i, %bb.ab ], [ %.sroa.13.1.i, %bb.af ], [ %.sroa.13.1.i, %bb.ag ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %.sroa.7.0.i, %bb.aa ], [ %.sroa.7.0.i, %bb.ab ], [ %i.cy, %bb.af ], [ %i.cy, %bb.ag ], [ %i.cy, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %2, %bb.aa ], [ %2, %bb.ab ], [ %.sroa.0.0.i38, %bb.af ], [ %.sroa.0.0.i38, %bb.ag ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %i.db, %bb.aa ], [ %i.db, %bb.ab ], [ %i.dq, %bb.af ], [ %i.dq, %bb.ag ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ei = ptrtoint ptr %.sroa.7.1.i to i64
  %i.ej = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ek = sub nuw i64 %i.ei, %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.ek, i1 false), !alias.scope !33045, !noalias !33071
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h6b36bff090fd6badE.exit: ; preds = %bb.x, %bb.y, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hecf7bfe9d3cb5836E.exit.i"
  %i.el = shl i64 %i.bz, 1
  %i.em = or disjoint i64 %i.el, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hda4797fb765c0207E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hda4797fb765c0207E.exit: ; preds = %bb.u, %_ZN4core5slice4sort6stable5merge5merge17h6b36bff090fd6badE.exit
  %.sroa.0.0.i = phi i64 [ %i.em, %_ZN4core5slice4sort6stable5merge5merge17h6b36bff090fd6badE.exit ], [ %i.ch, %bb.u ] ; 2 uses
  %i.en = icmp ugt i64 %i.bq, 1
  br i1 %i.en, label %bb.r, label %._crit_edge

bb.ak:                                            ; preds = %._crit_edge
  %i.eo = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ep = lshr i64 %.sroa.023.0, 1
  %i.eq = add i64 %i.ep, %.sroa.09.0
  br label %bb.f

bb.al:                                            ; preds = %._crit_edge
  %i.er = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.er, 0
  br i1 %.not31, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.es = or i64 %1, 1
  %i.et = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.es, i1 true)
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 1
  %i.ew = xor i32 %i.ev, 126
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfcc5bbc2cb50c6baE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ew, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(464) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32972
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %bb.an
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2760425ea44fddb7E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(112) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [88 x i8], align 8                ; 6 uses
  %i.d = alloca [88 x i8], align 8                ; 7 uses
  %i.e = alloca [88 x i8], align 8                ; 10 uses
  %i.f = alloca [88 x i8], align 8                ; 11 uses
  %i.g = alloca [88 x i8], align 8                ; 10 uses
  %i.h = alloca [88 x i8], align 8                ; 11 uses
  %i.i = alloca [112 x i8], align 8               ; 11 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [112 x i8], align 8               ; 6 uses
  %i.l = icmp ult i64 %1, 33
  br i1 %i.l, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h420641b65b3ce3adE.exit"
  %.sroa.0.0.ph135 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.jj, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h420641b65b3ce3adE.exit" ] ; 21 uses
  %.sroa.15.0.ph134 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.iu, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h420641b65b3ce3adE.exit" ] ; 2 uses
  %.sroa.023.0.ph133 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.fv, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h420641b65b3ce3adE.exit" ] ; 2 uses
  %.sroa.026.0.ph132 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h420641b65b3ce3adE.exit" ] ; 2 uses
  %i.u = ptrtoint ptr %.sroa.0.0.ph135 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph132, null
  %i.v = icmp eq i32 %.sroa.023.0.ph133, 0
  br i1 %i.v, label %.lr.ph._crit_edge, label %.lr.ph315

bb.b:                                             ; preds = %bb.bm
  %i.w = icmp eq i32 %i.fv, 0
  br i1 %i.w, label %.lr.ph._crit_edge, label %.lr.ph315

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h420641b65b3ce3adE.exit", %bb.bm, %bb.a
  %.sroa.0.0.ph.lcssa126 = phi ptr [ %.sroa.0.0.ph135, %bb.bm ], [ %0, %bb.a ], [ %i.jj, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h420641b65b3ce3adE.exit" ] ; 16 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.bm ], [ %1, %bb.a ], [ %i.iu, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h420641b65b3ce3adE.exit" ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33217)
  call void @llvm.experimental.noalias.scope.decl(metadata !33218)
  %i.x = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.x, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd0526055a7a64403E.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.y = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.z = icmp ult i64 %3, %i.y
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = lshr i64 %.sroa.15.0.lcssa, 1           ; 10 uses
  %i.ab = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.ab, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa126, i64 112
  %i.ad = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hf7651b16bcf99a46E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.ph.lcssa126) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa126, i64 336
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa126, i64 224
  %i.ag = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hf7651b16bcf99a46E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.af) ; 2 uses
  %i.ah = zext i1 %i.ad to i64
  %i.ai = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.ah ; 3 uses
  %i.aj = xor i1 %i.ad, true
  %i.ak = zext i1 %i.aj to i64
  %i.al = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.ak ; 4 uses
  %i.am = select i1 %i.ag, i64 3, i64 2
  %i.an = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.am ; 4 uses
  %i.ao = select i1 %i.ag, i64 2, i64 3
  %i.ap = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.ao ; 3 uses
  %i.aq = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hf7651b16bcf99a46E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ai) ; 3 uses
  %i.ar = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hf7651b16bcf99a46E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.al) ; 3 uses
  %i.as = select i1 %i.aq, ptr %i.an, ptr %i.ai, !unpredictable !28
  %i.at = select i1 %i.ar, ptr %i.al, ptr %i.ap, !unpredictable !28
  %i.au = select i1 %i.ar, ptr %i.an, ptr %i.al, !unpredictable !28
  %i.av = select i1 %i.aq, ptr %i.ai, ptr %i.au, !unpredictable !28 ; 3 uses
  %i.aw = select i1 %i.aq, ptr %i.al, ptr %i.an, !unpredictable !28
  %i.ax = select i1 %i.ar, ptr %i.ap, ptr %i.aw, !unpredictable !28 ; 3 uses
  %i.ay = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hf7651b16bcf99a46E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.av) ; 2 uses
  %i.az = select i1 %i.ay, ptr %i.ax, ptr %i.av, !unpredictable !28
  %i.ba = select i1 %i.ay, ptr %i.av, ptr %i.ax, !unpredictable !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(112) %i.as, i64 112, i1 false), !alias.scope !33219
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bb, ptr noundef nonnull align 8 dereferenceable(112) %i.az, i64 112, i1 false), !alias.scope !33219
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bc, ptr noundef nonnull align 8 dereferenceable(112) %i.ba, i64 112, i1 false), !alias.scope !33219
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bd, ptr noundef nonnull align 8 dereferenceable(112) %i.at, i64 112, i1 false), !alias.scope !33219
  %i.be = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.aa ; 8 uses
  %i.bf = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %i.aa ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.bh = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hf7651b16bcf99a46E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.be) ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 336
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 224
  %i.bk = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hf7651b16bcf99a46E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bj) ; 2 uses
  %i.bl = zext i1 %i.bh to i64
  %i.bm = getelementptr inbounds nuw [112 x i8], ptr %i.be, i64 %i.bl ; 3 uses
  %i.bn = xor i1 %i.bh, true
  %i.bo = zext i1 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [112 x i8], ptr %i.be, i64 %i.bo ; 4 uses
  %i.bq = select i1 %i.bk, i64 3, i64 2
  %i.br = getelementptr inbounds nuw [112 x i8], ptr %i.be, i64 %i.bq ; 4 uses
  %i.bs = select i1 %i.bk, i64 2, i64 3
  %i.bt = getelementptr inbounds nuw [112 x i8], ptr %i.be, i64 %i.bs ; 3 uses
  %i.bu = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hf7651b16bcf99a46E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bm) ; 3 uses
  %i.bv = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hf7651b16bcf99a46E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bp) ; 3 uses
  %i.bw = select i1 %i.bu, ptr %i.br, ptr %i.bm, !unpredictable !28
  %i.bx = select i1 %i.bv, ptr %i.bp, ptr %i.bt, !unpredictable !28
  %i.by = select i1 %i.bv, ptr %i.br, ptr %i.bp, !unpredictable !28
  %i.bz = select i1 %i.bu, ptr %i.bm, ptr %i.by, !unpredictable !28 ; 3 uses
  %i.ca = select i1 %i.bu, ptr %i.bp, ptr %i.br, !unpredictable !28
  %i.cb = select i1 %i.bv, ptr %i.bt, ptr %i.ca, !unpredictable !28 ; 3 uses
  %i.cc = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hf7651b16bcf99a46E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bz) ; 2 uses
  %i.cd = select i1 %i.cc, ptr %i.cb, ptr %i.bz, !unpredictable !28
  %i.ce = select i1 %i.cc, ptr %i.bz, ptr %i.cb, !unpredictable !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bf, ptr noundef nonnull align 8 dereferenceable(112) %i.bw, i64 112, i1 false), !alias.scope !33219
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cf, ptr noundef nonnull align 8 dereferenceable(112) %i.cd, i64 112, i1 false), !alias.scope !33219
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cg, ptr noundef nonnull align 8 dereferenceable(112) %i.ce, i64 112, i1 false), !alias.scope !33219
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ch, ptr noundef nonnull align 8 dereferenceable(112) %i.bx, i64 112, i1 false), !alias.scope !33219
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.0.0.ph.lcssa126, i64 112, i1 false), !alias.scope !33219
  %i.ci = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.aa
  %i.cj = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cj, ptr noundef nonnull align 8 dereferenceable(112) %i.ci, i64 112, i1 false), !alias.scope !33219
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 6 uses
  %i.ck = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.aa ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ct = icmp samesign ult i64 %.sroa.0.0.i, %i.aa
  br i1 %i.ct, label %.noexc48.preheader.i, label %.loopexit4.i

.loopexit4.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5beb3b84a15ca899E.exit.i, %bb.h
  %i.cu = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.aa
  %i.cv = getelementptr [112 x i8], ptr %2, i64 %i.aa ; 6 uses
  %i.cw = icmp samesign ult i64 %.sroa.0.0.i, %i.ck
  br i1 %i.cw, label %.noexc48.preheader.1.i, label %.loopexit4.1.i

.noexc48.preheader.1.i:                           ; preds = %.loopexit4.i
  %.sroa.08.112.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.noexc48.1.i

.noexc48.1.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5beb3b84a15ca899E.exit.1.i, %.noexc48.preheader.1.i
  %.sroa.08.114.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5beb3b84a15ca899E.exit.1.i ], [ %.sroa.08.112.1.i, %.noexc48.preheader.1.i ] ; 3 uses
  %.sroa.08.013.1.i = phi i64 [ %.sroa.08.114.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5beb3b84a15ca899E.exit.1.i ], [ %.sroa.0.0.i, %.noexc48.preheader.1.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [112 x i8], ptr %i.cu, i64 %.sroa.08.013.1.i
  %.idx333 = mul nuw nsw i64 %.sroa.08.013.1.i, 112
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx333 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cy, ptr noundef nonnull align 8 dereferenceable(112) %i.cx, i64 112, i1 false), !alias.scope !33219
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !33220
end_hunk_3
