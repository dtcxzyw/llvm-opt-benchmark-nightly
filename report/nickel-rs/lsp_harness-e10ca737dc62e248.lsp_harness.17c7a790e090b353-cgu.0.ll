Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/lsp_harness-e10ca737dc62e248.lsp_harness.17c7a790e090b353-cgu.0?download=true
inline.NumInlined: 14236
inline.NumDeleted: 7074
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 46
begin_hunk_0_@"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h181067632ab1ef1dE":bb.a
  %i.gv = load i8, ptr %i.r, align 8, !range !45, !alias.scope !36699, !noalias !36629, !noundef !28
  %i.gw = icmp eq i8 %i.gv, 6
  br i1 %i.gw, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i", label %bb.de

bb.de:                                            ; preds = %bb.dd
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.r)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i" unwind label %bb.df, !noalias !36631

bb.df:                                            ; preds = %bb.de
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body25.i

.body25.i:                                        ; preds = %bb.df, %bb.cf, %.body.i23.i
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36631
  unreachable

.loopexit.i:                                      ; preds = %bb.dc, %.lr.ph.i.i73.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i", %bb.cu
  %.sroa.59.sroa.4.0.i.i = phi i64 [ undef, %bb.cu ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i" ], [ %.val40.i.i, %.lr.ph.i.i73.i.i ], [ %.val40.i.i, %bb.dc ]
  %.sroa.59.sroa.0.0.i.i = phi ptr [ undef, %bb.cu ], [ inttoptr (i64 4 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i" ], [ %i.fx, %.lr.ph.i.i73.i.i ], [ %i.fx, %bb.dc ]
  %.sroa.07.0.i.i = phi i64 [ -9223372036854775808, %bb.cu ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i" ], [ %.val40.i.i, %.lr.ph.i.i73.i.i ], [ %.val40.i.i, %bb.dc ]
  %i.gy = trunc nuw i32 %i.ca to i1
  %.sroa.56.0.i.i = select i1 %i.gy, i32 %i.cc, i32 undef
  %i.gz = trunc nuw i32 %i.bw to i1
  %.sroa.54.0.i.i = select i1 %i.gz, i32 %i.by, i32 undef
  %i.ha = trunc nuw i32 %i.ar to i1
  %.sroa.5.0.i.i = select i1 %i.ha, i32 %i.at, i32 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.065.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.065.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !36700
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2486.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2486.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10118.i, i64 24, i1 false), !noalias !36700
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3193.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3193.i, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !36700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !36629
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10118.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !36629
  %i.hb = getelementptr inbounds nuw [464 x i8], ptr %i.w, i64 %.sroa.7.0704.i ; 55 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.065.i, i64 24, i1 false), !noalias !36627
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  store i64 %.sroa.0.0123.i.i, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.567.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  store ptr %.sroa.6.0.i.i, ptr %.sroa.567.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.668.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 40
  store i64 %.sroa.7.0.i.i, ptr %.sroa.668.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.769.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  store i64 %.sroa.083.0.i.i, ptr %.sroa.769.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.870.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 56
  store ptr %.sroa.685.0.i.i, ptr %.sroa.870.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.971.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  store i64 %.sroa.788.0.i.i, ptr %.sroa.971.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1072.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 72
  store i64 %.sroa.091.0.i.i, ptr %.sroa.1072.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 80
  store ptr %.sroa.693.0.i.i, ptr %.sroa.1173.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 88
  store i64 %.sroa.796.0.i.i, ptr %.sroa.1274.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 96
  store i64 %.sroa.099.0.i.i, ptr %.sroa.1375.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 104
  store ptr %.sroa.6101.0.i.i, ptr %.sroa.1476.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 112
  store i64 %.sroa.7104.0.i.i, ptr %.sroa.1577.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 120
  store i64 %.sroa.0122.0.i, ptr %.sroa.1678.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1678.sroa.4.0..sroa.1678.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 128
  store ptr %.sroa.6124.0.i, ptr %.sroa.1678.sroa.4.0..sroa.1678.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1678.sroa.5.0..sroa.1678.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 136
  store i64 %.sroa.7126.0.i, ptr %.sroa.1678.sroa.5.0..sroa.1678.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 144
  store i64 %.sroa.0128.0.i, ptr %.sroa.1779.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.4.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 152
  store ptr %.sroa.6130.0.i, ptr %.sroa.1779.sroa.4.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.5.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 160
  store i64 %.sroa.7132.0.i, ptr %.sroa.1779.sroa.5.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.6.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 168
  store i64 %.sroa.7134.0.i, ptr %.sroa.1779.sroa.6.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.7.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 176
  store ptr %.sroa.8136.0.i, ptr %.sroa.1779.sroa.7.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.8.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 184
  store i64 %.sroa.9138.0.i, ptr %.sroa.1779.sroa.8.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.9.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 192
  store i64 %.sroa.9140.0.i, ptr %.sroa.1779.sroa.9.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.10.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 200
  store ptr %.sroa.13141.0.i, ptr %.sroa.1779.sroa.10.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.11.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 208
  store i64 %.sroa.15142.0.i, ptr %.sroa.1779.sroa.11.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1880.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 216
  store i64 %.sroa.0143.0.i, ptr %.sroa.1880.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1880.sroa.4.0..sroa.1880.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 224
  store ptr %.sroa.6145.0.i, ptr %.sroa.1880.sroa.4.0..sroa.1880.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1880.sroa.5.0..sroa.1880.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 232
  store i64 %.sroa.7147.0.i, ptr %.sroa.1880.sroa.5.0..sroa.1880.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1981.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 240
  store i64 %.sroa.07.0.i.i, ptr %.sroa.1981.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2082.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 248
  store ptr %.sroa.59.sroa.0.0.i.i, ptr %.sroa.2082.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 256
  store i64 %.sroa.59.sroa.4.0.i.i, ptr %.sroa.2183.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 264
  store i64 %.sroa.097.0.i, ptr %.sroa.2284.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.4.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 272
  store ptr %.sroa.698.0.i, ptr %.sroa.2284.sroa.4.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.5.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 280
  store i64 %.sroa.899.0.i, ptr %.sroa.2284.sroa.5.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.6.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 288
  store i64 %.sroa.9100.0.i, ptr %.sroa.2284.sroa.6.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.7.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 296
  store ptr %.sroa.11101.0.i, ptr %.sroa.2284.sroa.7.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.8.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 304
  store i64 %.sroa.13102.0.i, ptr %.sroa.2284.sroa.8.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 312
  store i64 %.sroa.0104.0.i, ptr %.sroa.2385.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.sroa.4.0..sroa.2385.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 320
  store i64 %.sroa.6106.0.i, ptr %.sroa.2385.sroa.4.0..sroa.2385.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.sroa.5.0..sroa.2385.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 328
  store ptr %.sroa.8108.0.i, ptr %.sroa.2385.sroa.5.0..sroa.2385.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.sroa.6.0..sroa.2385.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 336
  store i64 %.sroa.9110.0.i, ptr %.sroa.2385.sroa.6.0..sroa.2385.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 344
  store i64 %.sroa.0115.0.i, ptr %.sroa.2486.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.sroa.4.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 352
  store i64 %.sroa.6116.0.i, ptr %.sroa.2486.sroa.4.0..sroa.2486.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.sroa.5.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 360
  store ptr %.sroa.9117.0.i, ptr %.sroa.2486.sroa.5.0..sroa.2486.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.sroa.6.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2486.sroa.6.0..sroa.2486.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2486.sroa.6.i, i64 24, i1 false), !noalias !36627
  %.sroa.2486.sroa.7.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 392
  store i64 %.sroa.10119.0.i, ptr %.sroa.2486.sroa.7.0..sroa.2486.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2587.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 400
  store i32 %i.ar, ptr %.sroa.2587.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2688.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 404
  store i32 %.sroa.5.0.i.i, ptr %.sroa.2688.0..sroa_idx.i, align 4, !noalias !36627
  %.sroa.2789.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 408
  store i32 %i.bw, ptr %.sroa.2789.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2890.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 412
  store i32 %.sroa.54.0.i.i, ptr %.sroa.2890.0..sroa_idx.i, align 4, !noalias !36627
  %.sroa.2991.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 416
  store i32 %i.ca, ptr %.sroa.2991.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.3092.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 420
  store i32 %.sroa.56.0.i.i, ptr %.sroa.3092.0..sroa_idx.i, align 4, !noalias !36627
  %.sroa.3193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3193.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3193.i, i64 32, i1 false), !noalias !36627
  %.sroa.3294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 456
  store i8 %i.bg, ptr %.sroa.3294.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.3395.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 457
  store i8 %i.bi, ptr %.sroa.3395.0..sroa_idx.i, align 1, !noalias !36627
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.065.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2486.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3193.i)
  %i.hc = icmp eq i64 %i.ah, 0
  br i1 %i.hc, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd5130cc855bc4c46E.exit", label %bb.d

bb.dg:                                            ; preds = %bb.n, %.body.i.i, %.loopexit160.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %.body.i.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.n ], [ %lpad.loopexit.i, %.loopexit160.i ]
  %i.hd = icmp eq i64 %.sroa.7.0704.i, 0
  br i1 %i.hd, label %._crit_edge, label %.lr.ph2031

bb.dh:                                            ; preds = %.lr.ph2031
  %i.he = icmp eq i64 %i.hg, %.sroa.7.0704.i
  br i1 %i.he, label %._crit_edge, label %.lr.ph2031

.lr.ph2031:                                       ; preds = %bb.dg, %bb.dh
  %.sroa.0.0.i.i.i2030 = phi i64 [ %i.hg, %bb.dh ], [ 0, %bb.dg ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [464 x i8], ptr %i.w, i64 %.sroa.0.0.i.i.i2030
  %i.hg = add i64 %.sroa.0.0.i.i.i2030, 1         ; 4 uses
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$lsp_types..completion..CompletionItem$GT$17h72d57bb2a92e3f4dE"(ptr noalias noundef readonly align 8 dereferenceable(464) %i.hf)
          to label %bb.dh unwind label %bb.dj, !noalias !36701

bb.di:                                            ; preds = %.lr.ph2034
  %i.hh = add i64 %.sroa.0.1.i.i.i2032, 1         ; 2 uses
  %i.hi = icmp eq i64 %i.hh, %.sroa.7.0704.i
  br i1 %i.hi, label %"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..completion..CompletionItem$GT$$GT$17h55280cb01fe317afE.exit.i", label %.lr.ph2034

bb.dj:                                            ; preds = %.lr.ph2031
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.hk = icmp eq i64 %i.hg, %.sroa.7.0704.i
  br i1 %i.hk, label %"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..completion..CompletionItem$GT$$GT$17h55280cb01fe317afE.exit.i", label %.lr.ph2034

.lr.ph2034:                                       ; preds = %bb.dj, %bb.di
  %.sroa.0.1.i.i.i2032 = phi i64 [ %i.hh, %bb.di ], [ %i.hg, %bb.dj ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [464 x i8], ptr %i.w, i64 %.sroa.0.1.i.i.i2032
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$lsp_types..completion..CompletionItem$GT$17h72d57bb2a92e3f4dE"(ptr noalias noundef readonly align 8 dereferenceable(464) %i.hl) #43
          to label %bb.di unwind label %bb.dk, !noalias !36701

bb.dk:                                            ; preds = %.lr.ph2034
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36702
  unreachable

"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..completion..CompletionItem$GT$$GT$17h55280cb01fe317afE.exit.i": ; preds = %bb.di, %bb.dj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36701
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36627
  unreachable

._crit_edge:                                      ; preds = %bb.dh, %bb.dg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36701
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd5130cc855bc4c46E.exit": ; preds = %bb.d, %.loopexit.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i"
  %.sroa.7.0 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i" ], [ %i.w, %.loopexit.i ], [ %i.w, %bb.d ]
  store i64 %.16.val, ptr %0, align 8, !noalias !36625
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !36625
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.16.val, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !36625
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hea6e08763bf87b5fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36715
  %i.c = mul i64 %.16.val, 40                     ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 230584300921369395
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.e = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.e)
  store i64 0, ptr %i.b, align 8, !noalias !36715
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !noalias !36715
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc131ba69dc5127b1E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36716
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #41, !noalias !36716 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1034) #42, !noalias !36715
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !36715
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !36715
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %.8.val, i64 %.16.val
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.d

bb.d:                                             ; preds = %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i"
  %.sroa.012.023.i = phi ptr [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i" ], [ %i.r, %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i" ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i" ], [ %i.q, %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i" ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i" ], [ %i.n, %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i" ]
  %i.n = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.o = icmp eq ptr %.sroa.012.023.i, %i.l
  br i1 %i.o, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc131ba69dc5127b1E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36715
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.p, i64 16, i1 false), !alias.scope !36717, !noalias !36718
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.012.023.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @876)
          to label %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i" unwind label %bb.f, !noalias !36718

"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i": ; preds = %bb.e
  %i.q = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 40
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !36718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36715
  %i.t = icmp eq i64 %i.n, 0
  br i1 %i.t, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc131ba69dc5127b1E.exit", label %bb.d

bb.f:                                             ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.k, align 8, !alias.scope !36719, !noalias !36715
  call fastcc void @"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$17h76b566cf8131b402E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #43, !noalias !36718
  resume { ptr, i32 } %lpad.loopexit.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc131ba69dc5127b1E.exit": ; preds = %bb.d, %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i"
  %i.u = phi ptr [ %i.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i" ], [ %i.k, %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i" ], [ %i.k, %bb.d ]
  store i64 %.16.val, ptr %i.u, align 8, !noalias !36715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !36720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36715
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN67_$LT$lsp_harness..TestHarness$u20$as$u20$core..default..Default$GT$7default17hd541449ee1d99cbdE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0) unnamed_addr #1 {
bb.a:
  tail call void @_ZN11lsp_harness11TestHarness3new17hd26058b15222c1beE(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3a87f33f6dad506E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @967, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @442, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @966)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$anyhow..context..Quoted$LT$C$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hda04cb8d06c81d42E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$10write_char17h44b6dc644adef020E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 34)
  br i1 %i.d, label %bb.c, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit"

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit": ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hdc83aebc8e7c489fE", ptr %.sroa.43.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36724
  store ptr @0, ptr %i.a, align 8, !noalias !36725
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !36725
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !36725
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !36725
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !36725
  %i.e = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1021, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !36726, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit"
  %i.f = call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$10write_char17h44b6dc644adef020E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 34)
  br label %bb.c

bb.c:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit", %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ], [ true, %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit" ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$assert_cmd..cargo..NotFoundError$u20$as$u20$core..fmt..Debug$GT$3fmt17h345398676082839dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @969, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @803, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @968)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN69_$LT$lsp_types..Location$u20$as$u20$lsp_harness..output..LspDebug$GT$5debug17h9ea4e88270541208E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !28, !noundef !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !28
  store ptr %i.h, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  call fastcc void @_ZN11lsp_harness6output8LspDebug9debug_str17h43c04ff35db25d4dE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hddac863775644774E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.m, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36747
  store ptr @970, ptr %i.c, align 8, !noalias !36748
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !36748
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !36748
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !36748
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !36748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36749
end_hunk_0
