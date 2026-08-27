Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN13fuzz_indexing4main28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1e5e80819bd844c2E":bb.a
          to label %.noexc37.peel.i unwind label %.loopexit.loopexit.split-lp.i, !noalias !14967, !inline_history !15044 ; 2 uses

.noexc37.peel.i:                                  ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h7df4f4d329a40625E.exit.i.i.peel.i
  %.not.i.i.peel.i = icmp eq ptr %i.xk, null
  br i1 %.not.i.i.peel.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit.i.peel.i", label %.loopexit170.invoke.i, !prof !6367

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.experimental.noalias.scope.decl(metadata !15045)
  %i.xl = getelementptr inbounds nuw i8, ptr %.val.i.i34.peel.i, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8, !alias.scope !15048, !noalias !15049, !nonnull !27, !noundef !27
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.xg
  store i8 44, ptr %i.xn, align 1, !noalias !15051
  %i.xo = add nuw i64 %i.xg, 1
  store i64 %i.xo, ptr %i.xf, align 8, !alias.scope !15048, !noalias !15049
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit.i.peel.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit.i.peel.i": ; preds = %.thread658, %bb.hw, %.noexc37.peel.i
  %.val4.i.peel.i663 = phi i64 [ %.val4.i.peel.i660, %.thread658 ], [ %.val4.i.peel.i, %bb.hw ], [ %.val4.i.peel.i, %.noexc37.peel.i ]
  %.val.i.peel.i662 = phi ptr [ %.val.i.peel.i659, %.thread658 ], [ %.val.i.peel.i, %bb.hw ], [ %.val.i.peel.i, %.noexc37.peel.i ] ; 2 uses
  %i.xp = phi ptr [ %i.wz, %.thread658 ], [ %i.ww, %bb.hw ], [ %i.ww, %.noexc37.peel.i ]
  %i.xq = getelementptr inbounds nuw i8, ptr %.sroa.7589.8.copyload, i64 24
  %.val12.i.i.peel.i = load ptr, ptr %i.l, align 8, !noalias !15034, !nonnull !27, !align !241, !noundef !27
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.peel.i662) ]
  %i.xr = invoke fastcc noundef align 8 ptr @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h8aad23301d826c58E"(ptr nonnull %.val12.i.i.peel.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.peel.i662, i64 noundef %.val4.i.peel.i663)
          to label %.noexc39.peel.i unwind label %.loopexit.loopexit.split-lp.i, !noalias !14967, !inline_history !15044 ; 2 uses

.noexc39.peel.i:                                  ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit.i.peel.i"
  %.not.i35.peel.i = icmp eq ptr %i.xr, null
  br i1 %.not.i35.peel.i, label %bb.hx, label %.noexc19.thread.i

bb.hx:                                            ; preds = %.noexc39.peel.i
  %.val.i5.i.peel.i = load ptr, ptr %i.l, align 8, !noalias !15052, !nonnull !27, !align !241, !noundef !27 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15056), !noalias !15059
  %i.xs = load i64, ptr %.val.i5.i.peel.i, align 8, !range !28, !alias.scope !15056, !noalias !15060, !noundef !27
  %i.xt = getelementptr inbounds nuw i8, ptr %.val.i5.i.peel.i, i64 16 ; 2 uses
  %i.xu = load i64, ptr %i.xt, align 8, !alias.scope !15056, !noalias !15060, !noundef !27 ; 4 uses
  %i.xv = icmp sgt i64 %i.xu, -1
  call void @llvm.assume(i1 %i.xv), !noalias !15059
  %i.xw = sub nsw i64 %i.xs, %i.xu
  %i.xx = icmp ugt i64 %i.xw, 1
  br i1 %i.xx, label %_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit.thread.i.peel.i, label %_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit.i.peel.i, !prof !158

_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit.i.peel.i: ; preds = %bb.hx
  %i.xy = invoke noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i5.i.peel.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 1)
          to label %.noexc40.peel.i unwind label %.loopexit.loopexit.split-lp.i, !noalias !14967, !inline_history !15044 ; 2 uses

.noexc40.peel.i:                                  ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit.i.peel.i
  %.not.i6.i.peel.i = icmp eq ptr %i.xy, null
  br i1 %.not.i6.i.peel.i, label %bb.hy, label %.loopexit170.invoke.i, !prof !6367

_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit.thread.i.peel.i: ; preds = %bb.hx
  call void @llvm.experimental.noalias.scope.decl(metadata !15064), !noalias !15059
  %i.xz = getelementptr inbounds nuw i8, ptr %.val.i5.i.peel.i, i64 8
  %i.ya = load ptr, ptr %i.xz, align 8, !alias.scope !15067, !noalias !15068, !nonnull !27, !noundef !27
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.xu
  store i8 58, ptr %i.yb, align 1, !noalias !15070
  %i.yc = add nuw i64 %i.xu, 1
  store i64 %i.yc, ptr %i.xt, align 8, !alias.scope !15067, !noalias !15068
  br label %bb.hy

bb.hy:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit.thread.i.peel.i, %.noexc40.peel.i
  %i.yd = invoke fastcc noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17ha3c225a2d86c2e2bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.xq, ptr noalias noundef align 8 dereferenceable(8) %i.l) #70
          to label %.noexc19.peel.i unwind label %.loopexit.loopexit.split-lp.i, !noalias !14967, !inline_history !15044 ; 2 uses

.noexc19.peel.i:                                  ; preds = %bb.hy
  %.not8.i.i.peel.i = icmp eq ptr %i.yd, null
  br i1 %.not8.i.i.peel.i, label %.peel.next.i, label %.noexc19.thread.i

.peel.next.i:                                     ; preds = %.noexc19.peel.i, %.noexc19.i
  %.pn198.i = phi ptr [ %.sroa.016.0.i.i.i, %.noexc19.i ], [ %.sroa.7589.8.copyload, %.noexc19.peel.i ] ; 4 uses
  %.sroa.016.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn198.i, i64 104 ; 2 uses
  %i.ye = icmp eq ptr %.sroa.016.0.i.i.i, %i.xp
  br i1 %i.ye, label %.loopexit167.thread.i.loopexit, label %bb.hz

bb.hz:                                            ; preds = %.peel.next.i
  %i.yf = getelementptr inbounds nuw i8, ptr %.pn198.i, i64 128
  call void @llvm.experimental.noalias.scope.decl(metadata !15071)
  %i.yg = getelementptr inbounds nuw i8, ptr %.pn198.i, i64 112
  %.val.i.i272 = load ptr, ptr %i.yg, align 8, !alias.scope !15071, !noalias !15029 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.pn198.i, i64 120
  %.val4.i.i = load i64, ptr %i.yh, align 8, !alias.scope !15071, !noalias !15029
  %.val.i.i34.i = load ptr, ptr %i.l, align 8, !noalias !15073, !nonnull !27, !noundef !27 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15074)
  %i.yi = load i64, ptr %.val.i.i34.i, align 8, !range !28, !alias.scope !15074, !noalias !15076, !noundef !27
  %i.yj = getelementptr inbounds nuw i8, ptr %.val.i.i34.i, i64 16 ; 2 uses
  %i.yk = load i64, ptr %i.yj, align 8, !alias.scope !15074, !noalias !15076, !noundef !27 ; 4 uses
  %i.yl = icmp sgt i64 %i.yk, -1
  call void @llvm.assume(i1 %i.yl)
  %i.ym = sub nsw i64 %i.yi, %i.yk
  %i.yn = icmp ugt i64 %i.ym, 1
  br i1 %i.yn, label %bb.ia, label %_ZN10serde_json3ser9Formatter16begin_object_key17h7df4f4d329a40625E.exit.i.i.i, !prof !158

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.experimental.noalias.scope.decl(metadata !15077)
  %i.yo = getelementptr inbounds nuw i8, ptr %.val.i.i34.i, i64 8
  %i.yp = load ptr, ptr %i.yo, align 8, !alias.scope !15079, !noalias !15080, !nonnull !27, !noundef !27
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 %i.yk
  store i8 44, ptr %i.yq, align 1, !noalias !15081
  %i.yr = add nuw i64 %i.yk, 1
  store i64 %i.yr, ptr %i.yj, align 8, !alias.scope !15079, !noalias !15080
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit.i.i"

_ZN10serde_json3ser9Formatter16begin_object_key17h7df4f4d329a40625E.exit.i.i.i: ; preds = %bb.hz
  %i.ys = invoke noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i34.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @156, i64 noundef 1)
          to label %.noexc37.i unwind label %.loopexit.loopexit.i, !noalias !14967, !inline_history !15044 ; 2 uses

.noexc37.i:                                       ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h7df4f4d329a40625E.exit.i.i.i
  %.not.i.i.i = icmp eq ptr %i.ys, null
  br i1 %.not.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit.i.i", label %.loopexit170.invoke.i, !prof !6367

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit.i.i": ; preds = %.noexc37.i, %bb.ia
  %.val12.i.i.i = load ptr, ptr %i.l, align 8, !noalias !15073, !nonnull !27, !align !241, !noundef !27
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i272) ]
  %i.yt = invoke fastcc noundef align 8 ptr @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h8aad23301d826c58E"(ptr nonnull %.val12.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i272, i64 noundef %.val4.i.i)
          to label %.noexc39.i unwind label %.loopexit.loopexit.i, !noalias !14967, !inline_history !15044 ; 2 uses

.noexc39.i:                                       ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit.i.i"
  %.not.i35.i = icmp eq ptr %i.yt, null
  br i1 %.not.i35.i, label %bb.ib, label %.noexc19.thread.i

bb.ib:                                            ; preds = %.noexc39.i
  %.val.i5.i.i = load ptr, ptr %i.l, align 8, !noalias !15082, !nonnull !27, !align !241, !noundef !27 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15083), !noalias !15059
  %i.yu = load i64, ptr %.val.i5.i.i, align 8, !range !28, !alias.scope !15083, !noalias !15085, !noundef !27
  %i.yv = getelementptr inbounds nuw i8, ptr %.val.i5.i.i, i64 16 ; 2 uses
  %i.yw = load i64, ptr %i.yv, align 8, !alias.scope !15083, !noalias !15085, !noundef !27 ; 4 uses
  %i.yx = icmp sgt i64 %i.yw, -1
  call void @llvm.assume(i1 %i.yx), !noalias !15059
  %i.yy = sub nsw i64 %i.yu, %i.yw
  %i.yz = icmp ugt i64 %i.yy, 1
  br i1 %i.yz, label %_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit.thread.i.i, label %_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit.i.i, !prof !158

_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit.thread.i.i: ; preds = %bb.ib
  call void @llvm.experimental.noalias.scope.decl(metadata !15086), !noalias !15059
  %i.za = getelementptr inbounds nuw i8, ptr %.val.i5.i.i, i64 8
  %i.zb = load ptr, ptr %i.za, align 8, !alias.scope !15088, !noalias !15089, !nonnull !27, !noundef !27
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.yw
  store i8 58, ptr %i.zc, align 1, !noalias !15090
  %i.zd = add nuw i64 %i.yw, 1
  store i64 %i.zd, ptr %i.yv, align 8, !alias.scope !15088, !noalias !15089
  br label %bb.ic

_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit.i.i: ; preds = %bb.ib
  %i.ze = invoke noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i5.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 1)
          to label %.noexc40.i unwind label %.loopexit.loopexit.i, !noalias !14967, !inline_history !15044 ; 2 uses

.noexc40.i:                                       ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit.i.i
  %.not.i6.i.i = icmp eq ptr %i.ze, null
  br i1 %.not.i6.i.i, label %bb.ic, label %.loopexit170.invoke.i, !prof !6367

.loopexit170.invoke.i:                            ; preds = %.noexc21.i, %.noexc40.peel.i, %.noexc37.peel.i, %.noexc40.i, %.noexc37.i
  %i.zf = phi ptr [ %i.ys, %.noexc37.i ], [ %i.ze, %.noexc40.i ], [ %i.xk, %.noexc37.peel.i ], [ %i.zs, %.noexc21.i ], [ %i.xy, %.noexc40.peel.i ]
  %i.zg = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.zf)
          to label %.noexc19.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !14967, !inline_history !15044

bb.ic:                                            ; preds = %.noexc40.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit.thread.i.i
  %i.zh = invoke fastcc noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17ha3c225a2d86c2e2bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.yf, ptr noalias noundef align 8 dereferenceable(8) %i.l) #70
          to label %.noexc19.i unwind label %.loopexit.loopexit.i, !noalias !14967, !inline_history !15044 ; 2 uses

.noexc19.i:                                       ; preds = %bb.ic
  %.not8.i.i.i = icmp eq ptr %i.zh, null
  br i1 %.not8.i.i.i, label %.peel.next.i, label %.noexc19.thread.i, !llvm.loop !15091

.loopexit167.thread.i.loopexit:                   ; preds = %.peel.next.i
  %.val.i9.i.i.i.pre = load ptr, ptr %i.l, align 8, !noalias !15092 ; 3 uses
  %.pre1482 = load i64, ptr %.val.i9.i.i.i.pre, align 8, !range !28, !alias.scope !15095, !noalias !15098
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i9.i.i.i.pre, i64 16
  %.pre1483 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !15095, !noalias !15098
  br label %.loopexit167.thread.i

.loopexit167.thread.i:                            ; preds = %.loopexit167.thread.i.loopexit, %.peel.begin.i.thread
  %i.zi = phi i64 [ %.pre1483, %.loopexit167.thread.i.loopexit ], [ 1, %.peel.begin.i.thread ] ; 4 uses
  %i.zj = phi i64 [ %.pre1482, %.loopexit167.thread.i.loopexit ], [ 8192, %.peel.begin.i.thread ]
  %.val.i9.i.i.i = phi ptr [ %.val.i9.i.i.i.pre, %.loopexit167.thread.i.loopexit ], [ %i.s, %.peel.begin.i.thread ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15095)
  %i.zk = icmp sgt i64 %i.zi, -1
  call void @llvm.assume(i1 %i.zk)
  %i.zl = sub nsw i64 %i.zj, %i.zi
  %i.zm = icmp ugt i64 %i.zl, 1
  br i1 %i.zm, label %_ZN10serde_json3ser9Formatter10end_object17hce621a3d182bff46E.exit.thread.i13.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hce621a3d182bff46E.exit.i10.i.i.i, !prof !158

_ZN10serde_json3ser9Formatter10end_object17hce621a3d182bff46E.exit.thread.i13.i.i.i: ; preds = %.loopexit167.thread.i
  %i.zn = getelementptr inbounds nuw i8, ptr %.val.i9.i.i.i, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !15102)
  %i.zo = getelementptr inbounds nuw i8, ptr %.val.i9.i.i.i, i64 8
  %i.zp = load ptr, ptr %i.zo, align 8, !alias.scope !15105, !noalias !15106, !nonnull !27, !noundef !27
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 %i.zi
  store i8 125, ptr %i.zq, align 1, !noalias !15108
  %i.zr = add nuw i64 %i.zi, 1
  store i64 %i.zr, ptr %i.zn, align 8, !alias.scope !15105, !noalias !15106
  br label %.loopexit167.i

_ZN10serde_json3ser9Formatter10end_object17hce621a3d182bff46E.exit.i10.i.i.i: ; preds = %.loopexit167.thread.i
  %i.zs = invoke noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i9.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 1)
          to label %.noexc21.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !14967 ; 2 uses

.noexc21.i:                                       ; preds = %_ZN10serde_json3ser9Formatter10end_object17hce621a3d182bff46E.exit.i10.i.i.i
  %.not.i11.i.i.i = icmp eq ptr %i.zs, null
  br i1 %.not.i11.i.i.i, label %.loopexit167.i, label %.loopexit170.invoke.i, !prof !6367

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i.i.i._crit_edge": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f5e4be29d88b593E.exit.i", %bb.jx, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc6c725135e0da8e8E.exit.lr.ph.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wh, i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !15109
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.863.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !14967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !14967
  call void @llvm.experimental.noalias.scope.decl(metadata !15114)
  call void @llvm.experimental.noalias.scope.decl(metadata !15117)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15120
  store ptr %i.q, ptr %i.a, align 8, !noalias !15120
  store i64 0, ptr %i.ds, align 8, !noalias !15120
  %i.zt = load i64, ptr %i.dt, align 8, !alias.scope !15117, !noalias !15121, !noundef !27 ; 2 uses
  %i.zu = icmp sgt i64 %i.zt, -1
  call void @llvm.assume(i1 %i.zu), !noalias !15121
  %.not29.not.i = icmp eq i64 %i.zt, 0
  br i1 %.not29.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i.i.i._crit_edge", %bb.ip
  store i8 1, ptr %i.du, align 8, !alias.scope !15117, !noalias !15121
  %i.zv = invoke { ptr, i64 } @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf8BufGuard9remaining17h996902be1855fee8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.ie unwind label %bb.id, !noalias !15121 ; 2 uses

bb.id:                                            ; preds = %bb.ie, %.lr.ph.i
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %.body472

.body472:                                         ; preds = %bb.io, %bb.id
  %eh.lpad-body473 = phi { ptr, i32 } [ %i.zw, %bb.id ], [ %i.aba, %bb.io ]
  invoke void @"_ZN111_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$..flush_buf..BufGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5af694f46f48369E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.body423 unwind label %bb.iq, !noalias !15121

bb.ie:                                            ; preds = %.lr.ph.i
  %i.zx = extractvalue { ptr, i64 } %i.zv, 0
  %i.zy = extractvalue { ptr, i64 } %i.zv, 1
  %i.zz = invoke { i64, ptr } @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5write17h3e2a2b9d0b3d6134E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.dv, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.zx, i64 noundef %i.zy)
          to label %bb.if unwind label %bb.id, !noalias !15121 ; 2 uses

bb.if:                                            ; preds = %bb.ie
  %i.aaa = extractvalue { i64, ptr } %i.zz, 0
  %i.aab = extractvalue { i64, ptr } %i.zz, 1     ; 14 uses
  store i8 0, ptr %i.du, align 8, !alias.scope !15117, !noalias !15121
  %i.aac = trunc nuw i64 %i.aaa to i1
  %i.aad = ptrtoint ptr %i.aab to i64             ; 4 uses
  br i1 %i.aac, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.aae = and i64 %i.aad, 3
  switch i64 %i.aae, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %bb.ij
    i64 0, label %.split27.i
    i64 1, label %.split26.i
  ], !prof !15122

default.unreachable:                              ; preds = %bb.ig
  unreachable

bb.ih:                                            ; preds = %bb.if
  %i.aaf = icmp eq ptr %i.aab, null
  br i1 %i.aaf, label %._crit_edge.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.aag = load i64, ptr %i.ds, align 8, !noalias !15120, !noundef !27
  %i.aah = add i64 %i.aag, %i.aad                 ; 2 uses
  store i64 %i.aah, ptr %i.ds, align 8, !noalias !15120
  br label %bb.ip

.split.i:                                         ; preds = %bb.ig
  %.mask28.i = and i64 %i.aad, -4294967296
  %i.aai = icmp eq i64 %.mask28.i, 17179869184
  br i1 %i.aai, label %.thread.i421.thread, label %._crit_edge.i

.split27.i:                                       ; preds = %bb.ig
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aab) ], !noalias !15121
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  %i.aak = load i8, ptr %i.aaj, align 8, !range !15123, !noalias !15121, !noundef !27
  %i.aal = icmp eq i8 %i.aak, 35
  br i1 %i.aal, label %.thread.i421.thread, label %._crit_edge.i

.split26.i:                                       ; preds = %bb.ig
  %i.aam = getelementptr i8, ptr %i.aab, i64 -1   ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aam) ], !noalias !15121
  %i.aan = getelementptr i8, ptr %i.aab, i64 15
  %i.aao = load i8, ptr %i.aan, align 8, !range !15123, !noalias !15121, !noundef !27
  %i.aap = icmp eq i8 %i.aao, 35
  br i1 %i.aap, label %bb.ik, label %._crit_edge.i

bb.ij:                                            ; preds = %bb.ig
  %i.aaq = icmp ult ptr %i.aab, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.aaq), !noalias !15121
  %.mask.i = and i64 %i.aad, -4294967296
  %i.aar = icmp eq i64 %.mask.i, 150323855360
  br i1 %i.aar, label %.thread._crit_edge.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ih, %.split.i, %.split27.i, %.split26.i, %bb.ij, %bb.ip, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i.i.i._crit_edge"
  %.sroa.0.1.i419 = phi ptr [ null, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i.i.i._crit_edge" ], [ %i.aab, %bb.ij ], [ %i.aab, %.split.i ], [ %i.aab, %.split26.i ], [ %i.aab, %.split27.i ], [ @358, %bb.ih ], [ null, %bb.ip ] ; 2 uses
  invoke void @"_ZN111_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$..flush_buf..BufGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5af694f46f48369E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.ir unwind label %bb.it

.thread.i421.thread:                              ; preds = %.split27.i, %.split.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aab) ]
  br label %.thread._crit_edge.i

bb.ik:                                            ; preds = %.split26.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aab) ]
  %.val.i.i.i.i.i469 = load ptr, ptr %i.aam, align 8, !noalias !15124 ; 5 uses
  %i.aas = getelementptr i8, ptr %i.aab, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.aas, align 8, !alias.scope !15127, !noalias !15124, !nonnull !27, !align !241, !noundef !27 ; 5 uses
  %i.aat = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !27, !noalias !15130 ; 2 uses
  %.not.i.i.i.i.i.i.i470 = icmp eq ptr %i.aat, null
  br i1 %.not.i.i.i.i.i.i.i470, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i469) ], !noalias !15121
  invoke void %i.aat(ptr noundef nonnull %.val.i.i.i.i.i469)
          to label %bb.im unwind label %bb.in, !noalias !15130

bb.im:                                            ; preds = %bb.il, %bb.ik
  %i.aau = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.aav = load i64, ptr %i.aau, align 8, !range !28, !invariant.load !27, !noalias !15130 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.aax = load i64, ptr %i.aaw, align 8, !range !4400, !invariant.load !27, !noalias !15130 ; 2 uses
  %i.aay = icmp ult i64 %i.aax, -9223372036854775807
  call void @llvm.assume(i1 %i.aay), !noalias !15121
  %i.aaz = icmp eq i64 %i.aav, 0
  br i1 %i.aaz, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h93e23059d04d4c2eE.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.im
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i469) ], !noalias !15121
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i469, i64 noundef %i.aav, i64 noundef range(i64 1, -9223372036854775807) %i.aax) #65, !noalias !15130
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h93e23059d04d4c2eE.exit.i.i.i.i"

bb.in:                                            ; preds = %bb.il
  %i.aba = landingpad { ptr, i32 }
          cleanup
  %i.abb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.abc = load i64, ptr %i.abb, align 8, !range !28, !invariant.load !27, !noalias !15130 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.abe = load i64, ptr %i.abd, align 8, !range !4400, !invariant.load !27, !noalias !15130 ; 2 uses
  %i.abf = icmp ult i64 %i.abe, -9223372036854775807
  call void @llvm.assume(i1 %i.abf), !noalias !15121
  %i.abg = icmp eq i64 %i.abc, 0
  br i1 %i.abg, label %bb.io, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i": ; preds = %bb.in
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i469, i64 noundef %i.abc, i64 noundef range(i64 1, -9223372036854775807) %i.abe) #65, !noalias !15130
  br label %bb.io

bb.io:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i", %bb.in
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aam, i64 noundef 24, i64 noundef 8) #65, !noalias !15124
  br label %.body472

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h93e23059d04d4c2eE.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.im
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aam, i64 noundef 24, i64 noundef 8) #65, !noalias !15124
  br label %.thread._crit_edge.i

.thread._crit_edge.i:                             ; preds = %bb.ij, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h93e23059d04d4c2eE.exit.i.i.i.i", %.thread.i421.thread
  %.pre.i = load i64, ptr %i.ds, align 8, !noalias !15120
  br label %bb.ip

bb.ip:                                            ; preds = %.thread._crit_edge.i, %bb.ii
  %i.abh = phi i64 [ %.pre.i, %.thread._crit_edge.i ], [ %i.aah, %bb.ii ]
  %i.abi = load ptr, ptr %i.a, align 8, !noalias !15120, !nonnull !27, !align !241, !noundef !27
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 16
  %i.abk = load i64, ptr %i.abj, align 8, !noalias !15121, !noundef !27 ; 2 uses
  %i.abl = icmp sgt i64 %i.abk, -1
  call void @llvm.assume(i1 %i.abl), !noalias !15121
  %.not.i418 = icmp ult i64 %i.abh, %i.abk
  br i1 %.not.i418, label %.lr.ph.i, label %._crit_edge.i

bb.iq:                                            ; preds = %.body472
  %i.abm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !15121
  unreachable

bb.ir:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15120
  %.not.i24.i = icmp eq ptr %.sroa.0.1.i419, null
  %.sroa.06.sroa.0.0.copyload.i.i = load i64, ptr %i.q, align 8, !alias.scope !15133, !noalias !14967 ; 4 uses
  br i1 %.not.i24.i, label %bb.is, label %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h46c96db308e1fbeeE.exit.i"

bb.is:                                            ; preds = %bb.ir
  %.sroa.69.0.copyload.i.i = load i32, ptr %i.dv, align 4, !alias.scope !15135, !noalias !15121
  %i.abn = icmp eq i64 %.sroa.06.sroa.0.0.copyload.i.i, 0
  br i1 %i.abn, label %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h46c96db308e1fbeeE.exit.thread.i", label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2471038444ecc65eE.exit.sink.split.i.i.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2471038444ecc65eE.exit.sink.split.i.i.i": ; preds = %bb.is
  %.sroa.06.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.660.0..sroa_idx61.i, align 8, !alias.scope !15135, !noalias !15121, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.sroa.4.0.copyload.i.i, i64 noundef %.sroa.06.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !15136
  br label %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h46c96db308e1fbeeE.exit.thread.i"

bb.it:                                            ; preds = %._crit_edge.i
  %i.abo = landingpad { ptr, i32 }
          cleanup
  br label %.body423

.body423:                                         ; preds = %.body472, %bb.it
  %eh.lpad-body424 = phi { ptr, i32 } [ %i.abo, %bb.it ], [ %eh.lpad-body473, %.body472 ]
  invoke void @"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufwriter..BufWriter$LT$std..fs..File$GT$$GT$17hfb1c89ec95b09b3cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q) #67
          to label %.body286 unwind label %bb.iu, !noalias !15121
end_hunk_0
