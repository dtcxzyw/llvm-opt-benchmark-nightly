Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/FujiDecompressor?download=true
inline.NumInlined: 1167
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK8rawspeed16FujiDecompressor10decompressEv:bb.a
  br i1 %.not.i101.i.i.i.i.i.i, label %bb.ap, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  %i.ws = add nuw nsw i32 %i.vm, 4                ; 2 uses
  %.not.i.i102.i.i.i.i.i.i = icmp samesign ugt i32 %i.ws, %i.ql
  br i1 %.not.i.i102.i.i.i.i.i.i, label %bb.ar, label %bb.aq, !prof !134

bb.aq:                                            ; preds = %bb.ap
  %i.wt = zext nneg i32 %i.vm to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.wt
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.wv = icmp samesign ugt i32 %i.vm, %i.qn
  br i1 %i.wv, label %.invoke191.i.i, label %bb.as, !prof !134

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %.sroa.0.i.i.i.i.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ql, i32 %i.vm) ; 3 uses
  %i.ww = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ql, i32 %i.ww)
  %i.wx = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.wy = icmp samesign ult i32 %i.wx, 5
  call void @llvm.assume(i1 %i.wy)
  %i.wz = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.i.i.i.i to i64
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.wz
  %i.xb = zext nneg i32 %i.wx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i.i.i.i.i, ptr align 1 %i.xa, i64 %i.xb, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i: ; preds = %bb.as, %bb.aq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i.i.i.i, %bb.as ], [ %i.wu, %bb.aq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  %i.xc = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i.i)
  %i.xd = zext i32 %i.xc to i64
  %i.xe = or disjoint i32 %i.vv, 32               ; 2 uses
  %i.xf = sub nuw nsw i32 32, %i.vv
  %i.xg = zext nneg i32 %i.xf to i64
  %i.xh = shl nuw i64 %i.xd, %i.xg
  %i.xi = or i64 %i.xh, %i.vx                     ; 2 uses
  store i64 %i.xi, ptr %i.er, align 8, !tbaa !270
  store i32 %i.xe, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  store i32 %i.ws, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i, %bb.ao
  %i.xj = phi i64 [ %i.vx, %bb.ao ], [ %i.xi, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.xk = phi i32 [ %i.vv, %bb.ao ], [ %i.xe, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i.i ]
  %.not.i.i.i10.i.i.i.i = icmp eq i32 %.033.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i10.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i
  %i.xl = icmp samesign ult i32 %.033.i.i.i.i.i.i.i, 33
  call void @llvm.assume(i1 %i.xl)
  %i.xm = sub nuw nsw i32 64, %.033.i.i.i.i.i.i.i
  %i.xn = zext nneg i32 %i.xm to i64
  %i.xo = lshr i64 %i.xj, %i.xn
  %i.xp = trunc nuw i64 %i.xo to i32
  %i.xq = sub nuw nsw i32 %i.xk, %.033.i.i.i.i.i.i.i
  store i32 %i.xq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.xr = zext nneg i32 %.033.i.i.i.i.i.i.i to i64
  %i.xs = shl i64 %i.xj, %i.xr
  store i64 %i.xs, ptr %i.er, align 8, !tbaa !270
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i
  %.0.i70.i.i.i.i.i.i = phi i32 [ %i.xp, %bb.at ], [ 0, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i.i ]
  %i.xt = add nsw i32 %.0.i70.i.i.i.i.i.i, %.032.i.i.i.i.i.i.i ; 4 uses
  %i.xu = icmp slt i32 %i.xt, 0
  br i1 %i.xu, label %.invoke.i.i12, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.xv = load i32, ptr %i.oq, align 8, !tbaa !216 ; 3 uses
  %.not39.i.i.i.i.i.i.i = icmp slt i32 %i.xt, %i.xv
  br i1 %.not39.i.i.i.i.i.i.i, label %bb.aw, label %.invoke.i.i12

bb.aw:                                            ; preds = %bb.av
  %i.xw = lshr i32 %i.xt, 1
  %i.xx = and i32 %i.xt, 1
  %sext.i.i.i.i.i.i = sub nsw i32 0, %i.xx
  %.1.i71.i.i.i.i.i.i = xor i32 %i.xw, %sext.i.i.i.i.i.i ; 3 uses
  %i.xy = call i32 @llvm.abs.i32(i32 %.1.i71.i.i.i.i.i.i, i1 true)
  %i.xz = zext nneg i32 %i.up to i64
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.xz ; 4 uses
  %i.yb = load i32, ptr %i.ya, align 8, !tbaa !261
  %i.yc = add nsw i32 %i.yb, %i.xy                ; 2 uses
  store i32 %i.yc, ptr %i.ya, align 8, !tbaa !261
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ya, i64 4 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !262 ; 3 uses
  %i.yf = load i32, ptr %i.or, align 8, !tbaa !213
  %i.yg = icmp eq i32 %i.ye, %i.yf
  br i1 %i.yg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.yh = ashr i32 %i.yc, 1
  store i32 %i.yh, ptr %i.ya, align 8, !tbaa !261
  %i.yi = ashr i32 %i.ye, 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.yj = phi i32 [ %i.yi, %bb.ax ], [ %i.ye, %bb.aw ]
  %i.yk = add nsw i32 %i.yj, 1
  store i32 %i.yk, ptr %i.yd, align 4, !tbaa !262
  %i.yl = icmp slt i32 %.sroa.01.0.extract.trunc.i.i.i.i.i.i, 0
  %i.ym = sub nsw i32 0, %.1.i71.i.i.i.i.i.i
  %storemerge.i.p.i.i.i.i.i.i = select i1 %i.yl, i32 %i.ym, i32 %.1.i71.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i = add i32 %storemerge.i.p.i.i.i.i.i.i, %i.ub ; 5 uses
  %i.yn = icmp slt i32 %storemerge.i.i.i.i.i.i.i, 0
  br i1 %i.yn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.yo = add nsw i32 %i.xv, %storemerge.i.i.i.i.i.i.i
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %i.yp = load i32, ptr %i.on, align 8, !tbaa !94 ; 2 uses
  %i.yq = icmp sgt i32 %storemerge.i.i.i.i.i.i.i, %i.yp
  br i1 %i.yq, label %bb.bb, label %.thread102.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.yr = sub nsw i32 %storemerge.i.i.i.i.i.i.i, %i.xv
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %.096.i.i.i.i.i.i = phi i32 [ %i.yo, %bb.az ], [ %i.yr, %bb.bb ] ; 2 uses
  %i.ys = icmp slt i32 %.096.i.i.i.i.i.i, 0
  br i1 %i.ys, label %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i", label %..thread102_crit_edge.i.i.i.i.i.i

..thread102_crit_edge.i.i.i.i.i.i:                ; preds = %bb.bc
  %.pre.i.i.i.i.i.i = load i32, ptr %i.on, align 8, !tbaa !94
  br label %.thread102.i.i.i.i.i.i

.thread102.i.i.i.i.i.i:                           ; preds = %..thread102_crit_edge.i.i.i.i.i.i, %bb.ba
  %i.yt = phi i32 [ %.pre.i.i.i.i.i.i, %..thread102_crit_edge.i.i.i.i.i.i ], [ %i.yp, %bb.ba ]
  %.096104.i.i.i.i.i.i = phi i32 [ %.096.i.i.i.i.i.i, %..thread102_crit_edge.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i, %bb.ba ]
  %.sroa.speculated89.i.i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.yt, i32 %.096104.i.i.i.i.i.i)
  br label %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i"

"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i": ; preds = %.thread102.i.i.i.i.i.i, %bb.bc, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i
  %.pre-phi170.i.i.i.i.i = phi i64 [ %i.ss, %.thread102.i.i.i.i.i.i ], [ %i.ss, %bb.bc ], [ %i.qz, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i ]
  %.pre-phi.i.i.i.i.i = phi i32 [ %i.sj, %.thread102.i.i.i.i.i.i ], [ %i.sj, %bb.bc ], [ %i.qq, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i ] ; 2 uses
  %.0.i37.i.i.i.i.i = phi i32 [ %.sroa.speculated89.i.i.i.i.i.i, %.thread102.i.i.i.i.i.i ], [ 0, %bb.bc ], [ %i.si, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block36fuji_decode_interpolation_even_innerENS0_8xt_linesEi.exit69.i.i.i.i.i.i ]
  %i.yu = trunc i32 %.0.i37.i.i.i.i.i to i16
  call void @llvm.assume(i1 %i.qk)
  %i.yv = icmp samesign ugt i32 %i.qi, %.pre-phi.i.i.i.i.i
  call void @llvm.assume(i1 %i.yv)
  %i.yw = mul nuw nsw i32 %.pre-phi.i.i.i.i.i, %i.qj
  %i.yx = zext nneg i32 %i.yw to i64
  %i.yy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i86.i.i.i.i.i.i, i64 %i.yx
  %i.yz = getelementptr inbounds nuw [2 x i8], ptr %i.yy, i64 %.pre-phi170.i.i.i.i.i
  store i16 %i.yu, ptr %i.yz, align 2, !tbaa !92
  %i.za = add nsw i32 %i.qp, 1
  store i32 %i.za, ptr %indvars.iv.i.sroa.phi.i.i.i.i, align 4, !tbaa !94
  br i1 %.not30.i.i.i.i.i, label %.loopexit141.i.i.i.i.i, label %bb.aa, !llvm.loop !181

.loopexit141.i.i.i.i.i:                           ; preds = %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i", %bb.z
  %i.zb = icmp samesign ugt i32 %.0151.i.i.i.i.i, 3
  br i1 %i.zb, label %.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.loopexit141.i.i.i.i.i
  call void @llvm.assume(i1 %i.pt)
  call void @llvm.assume(i1 %i.pv)
  call void @llvm.assume(i1 %i.px)
  call void @llvm.assume(i1 %i.pz)
  call void @llvm.assume(i1 %i.qb)
  %.val35.i.i.i.i.i = load ptr, ptr %i.og, align 8, !tbaa !136 ; 2 uses
  call void @llvm.assume(i1 %i.qd)
  %.promoted.i.pre.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %.promoted16.i.pre.i.i.i.i.i = load i32, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269 ; 2 uses
  br label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i

_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i: ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %i.zc = phi i32 [ %.promoted16.i.pre.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.aen, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i ]
  %i.zd = phi i32 [ %.promoted16.i.pre.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.aez, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i ] ; 2 uses
  %.promoted.i.i.i.i.i.i = phi i32 [ %.promoted.i.pre.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.promoted.i163.i.i.i.i.i, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i ]
  %.not31.i.i.i.i.i = phi i1 [ false, %.preheader.i.i.i.i.i ], [ true, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i ]
  %indvars.iv159.i.sroa.phi.i.i.i.i = phi ptr [ %4, %.preheader.i.i.i.i.i ], [ %indvars.iv159.i.sroa.gep73.i.i.i.i, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i ]
  %indvars.iv159.i.sroa.phi75.sroa.speculated.i.i.i.i = phi i32 [ %i.pe, %.preheader.i.i.i.i.i ], [ %i.pk, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i.i.i.i ]
  %i.ze = getelementptr inbounds nuw i8, ptr %indvars.iv159.i.sroa.phi.i.i.i.i, i64 4 ; 2 uses
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !94 ; 2 uses
  %i.zg = and i32 %indvars.iv159.i.sroa.phi75.sroa.speculated.i.i.i.i, 255 ; 3 uses
  %i.zh = shl nsw i32 %i.zf, 1                    ; 3 uses
  %i.zi = or disjoint i32 %i.zh, 1                ; 2 uses
  %i.zj = icmp samesign ult i32 %i.zi, %i.pu
  call void @llvm.assume(i1 %i.zj)
  %i.zk = icmp samesign ugt i32 %i.pw, %i.zg
  call void @llvm.assume(i1 %i.zk)
  %i.zl = mul nuw nsw i32 %i.zg, %i.py            ; 2 uses
  %i.zm = add nuw nsw i32 %i.zl, %i.pu
  %i.zn = icmp samesign ule i32 %i.zm, %i.ps
  call void @llvm.assume(i1 %i.zn)
  %i.zo = zext nneg i32 %i.zl to i64
  %i.zp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.zo ; 3 uses
  %i.zq = zext nneg i32 %i.zi to i64              ; 2 uses
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %i.zp, i64 %i.zq
  %i.zs = load i16, ptr %i.zr, align 2, !tbaa !92
  %i.zt = zext i16 %i.zs to i32                   ; 2 uses
  %i.zu = add nsw i32 %i.zg, -1                   ; 2 uses
  %i.zv = add nsw i32 %i.zh, 2                    ; 2 uses
  %i.zw = icmp samesign ult i32 %i.zv, %i.pu
  call void @llvm.assume(i1 %i.zw)
  %i.zx = icmp samesign ult i32 %i.zu, %i.pw
  call void @llvm.assume(i1 %i.zx)
  %i.zy = mul nuw nsw i32 %i.zu, %i.py            ; 2 uses
  %i.zz = add nuw nsw i32 %i.zy, %i.pu
  %i.aaa = icmp samesign ule i32 %i.zz, %i.ps
  call void @llvm.assume(i1 %i.aaa)
  %i.aab = zext nneg i32 %i.zy to i64
  %i.aac = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i39.i.i.i.i.i, i64 %i.aab ; 3 uses
  %i.aad = zext nneg i32 %i.zv to i64             ; 2 uses
  %i.aae = getelementptr inbounds nuw [2 x i8], ptr %i.aac, i64 %i.aad
  %i.aaf = load i16, ptr %i.aae, align 2, !tbaa !92 ; 3 uses
  %i.aag = zext i16 %i.aaf to i32                 ; 2 uses
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %i.aac, i64 %i.zq
  %i.aai = load i16, ptr %i.aah, align 2, !tbaa !92 ; 3 uses
  %i.aaj = zext i16 %i.aai to i32                 ; 2 uses
  %i.aak = add nsw i32 %i.zh, 3                   ; 2 uses
  %i.aal = icmp samesign ult i32 %i.aak, %i.pu
  call void @llvm.assume(i1 %i.aal)
  %i.aam = zext nneg i32 %i.aak to i64            ; 2 uses
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %i.aac, i64 %i.aam
  %i.aao = load i16, ptr %i.aan, align 2, !tbaa !92 ; 2 uses
  %i.aap = getelementptr inbounds nuw [2 x i8], ptr %i.zp, i64 %i.aam
  %i.aaq = load i16, ptr %i.aap, align 2, !tbaa !92
  %i.aar = zext i16 %i.aaq to i32
  %i.aas = add nuw nsw i32 %i.aar, %i.zt          ; 2 uses
  %i.aat = call i16 @llvm.umin.i16(i16 %i.aao, i16 %i.aai)
  %i.aau = icmp ugt i16 %i.aat, %i.aaf
  %i.aav = call i16 @llvm.umax.i16(i16 %i.aao, i16 %i.aai)
  %i.aaw = icmp ult i16 %i.aav, %i.aaf
  %or.cond.i.i.i.i.i.i = or i1 %i.aau, %i.aaw
  %i.aax = lshr i32 %i.aas, 1
  %i.aay = add nuw nsw i32 %i.aax, %i.aag
  %.0131.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i32 %i.aay, i32 %i.aas
  %i.aaz = lshr i32 %.0131.i.i.i.i.i, 1
  %i.aba = sub nsw i32 %i.aag, %i.aaj
  %i.abb = sub nsw i32 %i.aaj, %i.zt
  %i.abc = load i32, ptr %i.on, align 8, !tbaa !94 ; 2 uses
  %i.abd = add nsw i32 %i.aba, %i.abc
  %i.abe = sext i32 %i.abd to i64
  %i.abf = getelementptr inbounds nuw i8, ptr %.val35.i.i.i.i.i, i64 %i.abe
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !93
  %i.abh = sext i8 %i.abg to i32
  %i.abi = mul nsw i32 %i.abh, 9
  %i.abj = add nsw i32 %i.abb, %i.abc
  %i.abk = sext i32 %i.abj to i64
  %i.abl = getelementptr inbounds nuw i8, ptr %.val35.i.i.i.i.i, i64 %i.abk
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !93
  %i.abn = sext i8 %i.abm to i32
  %.sroa.082.0.extract.trunc.i.i.i.i.i = add nsw i32 %i.abi, %i.abn ; 2 uses
  %i.abo = call i32 @llvm.abs.i32(i32 %.sroa.082.0.extract.trunc.i.i.i.i.i, i1 true) ; 2 uses
  %.promoted17.i.i.i.i.i.i = load i64, ptr %i.er, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.644.0..sroa_idx.i.i, align 8 ; 4 uses
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i
  %i.abp = phi i32 [ %i.zc, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i ], [ %i.acm, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i ]
  %i.abq = phi i32 [ %i.zd, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i ], [ %i.acn, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i ]
  %i.abr = phi i64 [ %.promoted17.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i ], [ %i.ada, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i ] ; 2 uses
  %i.abs = phi i32 [ %i.zd, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i ], [ %i.acp, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i ] ; 5 uses
  %i.abt = phi i32 [ %.promoted.i.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i ], [ %i.acy, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i ] ; 5 uses
  %.014.i.i.i.i.i.i = phi i32 [ 0, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i.i.i.i ], [ %i.acu, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i ]
  %i.abu = icmp samesign ult i32 %i.abt, 65
  call void @llvm.assume(i1 %i.abu)
  %.not.i.i55.i.i.i.i.i = icmp samesign ult i32 %i.abt, 32
  br i1 %.not.i.i55.i.i.i.i.i, label %bb.be, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i54.i.i.i.i.i)
  %i.abv = add nuw nsw i32 %i.abs, 4              ; 5 uses
  %.not.i.i.i58.i.i.i.i.i = icmp samesign ugt i32 %i.abv, %i.qc
  br i1 %.not.i.i.i58.i.i.i.i.i, label %bb.bg, label %bb.bf, !prof !134

bb.bf:                                            ; preds = %bb.be
  %i.abw = zext nneg i32 %i.abs to i64
  %i.abx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.abw
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.aby = icmp samesign ugt i32 %i.abs, %i.qe
  br i1 %i.aby, label %.invoke191.i.i, label %bb.bh, !prof !134

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %.sroa.0.i.i.i54.i.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i62.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.qc, i32 %i.abs) ; 3 uses
  %i.abz = add nuw nsw i32 %.sroa.speculated27.i.i.i.i62.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i63.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.qc, i32 %i.abz)
  %i.aca = sub nsw i32 %.sroa.speculated.i.i.i.i63.i.i.i.i.i, %.sroa.speculated27.i.i.i.i62.i.i.i.i.i ; 2 uses
  %i.acb = icmp samesign ult i32 %i.aca, 5
  call void @llvm.assume(i1 %i.acb)
  %i.acc = zext nneg i32 %.sroa.speculated27.i.i.i.i62.i.i.i.i.i to i64
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.acc
  %i.ace = zext nneg i32 %i.aca to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i54.i.i.i.i.i, ptr align 1 %i.acd, i64 %i.ace, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i: ; preds = %bb.bh, %bb.bf
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i60.i.i.i.i.i = phi ptr [ %.sroa.0.i.i.i54.i.i.i.i.i, %bb.bh ], [ %i.abx, %bb.bf ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i61.i.i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i60.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i54.i.i.i.i.i)
  %i.acf = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i61.i.i.i.i.i)
  %i.acg = zext i32 %i.acf to i64
  %i.ach = or disjoint i32 %i.abt, 32
  %i.aci = sub nuw nsw i32 32, %i.abt
  %i.acj = zext nneg i32 %i.aci to i64
  %i.ack = shl nuw i64 %i.acg, %i.acj
  %i.acl = or i64 %i.ack, %i.abr
  store i32 %i.abv, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i, %bb.bd
  %i.acm = phi i32 [ %i.abp, %bb.bd ], [ %i.abv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i ] ; 2 uses
  %i.acn = phi i32 [ %i.abq, %bb.bd ], [ %i.abv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i ] ; 7 uses
  %i.aco = phi i64 [ %i.abr, %bb.bd ], [ %i.acl, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i ] ; 2 uses
  %i.acp = phi i32 [ %i.abs, %bb.bd ], [ %i.abv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i ]
  %i.acq = phi i32 [ %i.abt, %bb.bd ], [ %i.ach, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i59.i.i.i.i.i ]
  %i.acr = lshr i64 %i.aco, 32                    ; 2 uses
  %i.acs = trunc nuw i64 %i.acr to i32
  %i.act = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.acs, i1 false) ; 2 uses
  %i.acu = add nuw nsw i32 %i.act, %.014.i.i.i.i.i.i ; 3 uses
  %i.acv = icmp eq i64 %i.acr, 0                  ; 2 uses
  %i.acw = add nuw nsw i32 %i.act, 1
  %spec.select.i57.i.i.i.i.i = select i1 %i.acv, i32 32, i32 %i.acw ; 3 uses
  %i.acx = icmp samesign ult i32 %spec.select.i57.i.i.i.i.i, 33
  call void @llvm.assume(i1 %i.acx)
  %i.acy = sub nuw nsw i32 %i.acq, %spec.select.i57.i.i.i.i.i ; 6 uses
  store i32 %i.acy, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.acz = zext nneg i32 %spec.select.i57.i.i.i.i.i to i64
  %i.ada = shl i64 %i.aco, %i.acz                 ; 4 uses
  store i64 %i.ada, ptr %i.er, align 8, !tbaa !270
  br i1 %i.acv, label %bb.bd, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i: ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i56.i.i.i.i.i
  %i.adb = load i32, ptr %i.oo, align 4, !tbaa !218
  %i.adc = load i32, ptr %i.op, align 4, !tbaa !217 ; 2 uses
  %i.add = xor i32 %i.adc, -1
  %i.ade = add i32 %i.adb, %i.add
  %i.adf = icmp slt i32 %i.acu, %i.ade
  br i1 %i.adf, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i
  %i.adg = zext nneg i32 %i.abo to i64
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %i.adg ; 2 uses
  %i.adi = load i32, ptr %i.adh, align 8, !tbaa !261 ; 3 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adh, i64 4
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !262 ; 3 uses
  %i.adl = icmp sgt i32 %i.adi, -1
  call void @llvm.assume(i1 %i.adl)
  %i.adm = icmp sgt i32 %i.adk, 0
  call void @llvm.assume(i1 %i.adm)
  %i.adn = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adi, i1 false)
  %i.ado = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.adk, i1 true)
  %i.adp = sub nsw i32 %i.ado, %i.adn
  %.sroa.speculated11.i.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.adp, i32 0) ; 2 uses
  %i.adq = shl i32 %i.adk, %.sroa.speculated11.i.i.i.i.i.i
  %i.adr = icmp slt i32 %i.adq, %i.adi
  %i.ads = zext i1 %i.adr to i32
  %spec.select.i64.i.i.i.i.i = add nuw nsw i32 %.sroa.speculated11.i.i.i.i.i.i, %i.ads
  %.sroa.speculated.i65.i.i.i.i.i = call noundef range(i32 0, 16) i32 @llvm.umin.i32(i32 %spec.select.i64.i.i.i.i.i, i32 15) ; 2 uses
  %i.adt = shl i32 %i.acu, %.sroa.speculated.i65.i.i.i.i.i
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i
  %.033.i.i.i.i.i.i = phi i32 [ %.sroa.speculated.i65.i.i.i.i.i, %bb.bi ], [ %i.adc, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i ] ; 5 uses
  %.032.i.i.i.i.i.i = phi i32 [ %i.adt, %bb.bi ], [ 1, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i.i.i.i ]
  %i.adu = icmp sgt i32 %i.acn, -1
  call void @llvm.assume(i1 %i.adu)
  %.not.i66.i.i.i.i.i = icmp samesign ult i32 %i.acy, 32
  br i1 %.not.i66.i.i.i.i.i, label %bb.bk, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i)
  %i.adv = add nuw nsw i32 %i.acn, 4              ; 4 uses
  %.not.i.i67.i.i.i.i.i = icmp samesign ugt i32 %i.adv, %i.qc
  br i1 %.not.i.i67.i.i.i.i.i, label %bb.bm, label %bb.bl, !prof !134

bb.bl:                                            ; preds = %bb.bk
  %i.adw = zext nneg i32 %i.acn to i64
  %i.adx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.adw
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.ady = icmp samesign ugt i32 %i.acn, %i.qe
  br i1 %i.ady, label %.invoke191.i.i, label %bb.bn, !prof !134

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %.sroa.0.i.i.i.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.qc, i32 %i.acn) ; 3 uses
  %i.adz = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.qc, i32 %i.adz)
  %i.aea = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i.i.i.i ; 2 uses
  %i.aeb = icmp samesign ult i32 %i.aea, 5
  call void @llvm.assume(i1 %i.aeb)
  %i.aec = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.i.i.i to i64
  %i.aed = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.aec
  %i.aee = zext nneg i32 %i.aea to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i.i.i.i, ptr align 1 %i.aed, i64 %i.aee, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i: ; preds = %bb.bn, %bb.bl
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i.i.i, %bb.bn ], [ %i.adx, %bb.bl ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i)
  %i.aef = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i.i)
  %i.aeg = zext i32 %i.aef to i64
  %i.aeh = or disjoint i32 %i.acy, 32             ; 2 uses
  %i.aei = sub nuw nsw i32 32, %i.acy
  %i.aej = zext nneg i32 %i.aei to i64
  %i.aek = shl nuw i64 %i.aeg, %i.aej
  %i.ael = or i64 %i.aek, %i.ada                  ; 2 uses
  store i64 %i.ael, ptr %i.er, align 8, !tbaa !270
  store i32 %i.aeh, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  store i32 %i.adv, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i, %bb.bj
  %i.aem = phi i64 [ %i.ada, %bb.bj ], [ %i.ael, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed16FujiDecompressor10decompressEv:bb.a
bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i47.i.i.i)
  %i.azr = add nuw nsw i32 %i.ayl, 4              ; 3 uses
  %.not.i.i19.i.i.i.i.i.i = icmp samesign ugt i32 %i.azr, %i.auz
  br i1 %.not.i.i19.i.i.i.i.i.i, label %bb.cs, label %bb.cr, !prof !134

bb.cr:                                            ; preds = %bb.cq
  %i.azs = zext nneg i32 %i.ayl to i64
  %i.azt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i111.i.i.i, i64 %i.azs
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.azu = icmp samesign ugt i32 %i.ayl, %i.avb
  br i1 %i.azu, label %.invoke191.i.i, label %bb.ct, !prof !134

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %.sroa.0.i.i.i.i.i47.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i131.i.i.i = call i32 @llvm.umin.i32(i32 %i.auz, i32 %i.ayl) ; 3 uses
  %i.azv = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i131.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i132.i.i.i = call i32 @llvm.umin.i32(i32 %i.auz, i32 %i.azv)
  %i.azw = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i132.i.i.i, %.sroa.speculated27.i.i.i.i.i.i131.i.i.i ; 2 uses
  %i.azx = icmp samesign ult i32 %i.azw, 5
  call void @llvm.assume(i1 %i.azx)
  %i.azy = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.i131.i.i.i to i64
  %i.azz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i111.i.i.i, i64 %i.azy
  %i.baa = zext nneg i32 %i.azw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i.i47.i.i.i, ptr align 1 %i.azz, i64 %i.baa, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i: ; preds = %bb.ct, %bb.cr
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i129.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i47.i.i.i, %bb.ct ], [ %i.azt, %bb.cr ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i130.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i129.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i47.i.i.i)
  %i.bab = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i130.i.i.i)
  %i.bac = zext i32 %i.bab to i64
  %i.bad = or disjoint i32 %i.ayu, 32             ; 2 uses
  %i.bae = sub nuw nsw i32 32, %i.ayu
  %i.baf = zext nneg i32 %i.bae to i64
  %i.bag = shl nuw i64 %i.bac, %i.baf
  %i.bah = or i64 %i.bag, %i.ayw                  ; 2 uses
  store i64 %i.bah, ptr %i.er, align 8, !tbaa !270
  store i32 %i.bad, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  store i32 %i.azr, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i, %bb.cp
  %.promoted16.i.i164.i.i.i.i.i = phi i32 [ %.promoted16.i.i165.i.i.i.i.i, %bb.cp ], [ %i.azr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i ]
  %.promoted.i.i163.i.i.i.i.i = phi i32 [ %i.ayu, %bb.cp ], [ %i.bad, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i ] ; 2 uses
  %i.bai = phi i64 [ %i.ayw, %bb.cp ], [ %i.bah, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i128.i.i.i ] ; 2 uses
  %.not.i.i.i10.i120.i.i.i = icmp eq i32 %.033.i.i.i.i117.i.i.i, 0
  br i1 %.not.i.i.i10.i120.i.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i
  %i.baj = icmp samesign ult i32 %.033.i.i.i.i117.i.i.i, 33
  call void @llvm.assume(i1 %i.baj)
  %i.bak = sub nuw nsw i32 64, %.033.i.i.i.i117.i.i.i
  %i.bal = zext nneg i32 %i.bak to i64
  %i.bam = lshr i64 %i.bai, %i.bal
  %i.ban = trunc nuw i64 %i.bam to i32
  %i.bao = sub nuw nsw i32 %.promoted.i.i163.i.i.i.i.i, %.033.i.i.i.i117.i.i.i ; 2 uses
  store i32 %i.bao, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.bap = zext nneg i32 %.033.i.i.i.i117.i.i.i to i64
  %i.baq = shl i64 %i.bai, %i.bap
  store i64 %i.baq, ptr %i.er, align 8, !tbaa !270
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i
  %.promoted.i.i162.i.i.i.i.i = phi i32 [ %i.bao, %bb.cu ], [ %.promoted.i.i163.i.i.i.i.i, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i ]
  %.0.i3.i.i.i.i.i.i = phi i32 [ %i.ban, %bb.cu ], [ 0, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i.i119.i.i.i ]
  %i.bar = add nsw i32 %.0.i3.i.i.i.i.i.i, %.032.i.i.i.i118.i.i.i ; 4 uses
  %i.bas = icmp slt i32 %i.bar, 0
  br i1 %i.bas, label %.invoke.i.i12, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.bat = load i32, ptr %i.oq, align 8, !tbaa !216 ; 3 uses
  %.not39.i.i.i.i121.i.i.i = icmp slt i32 %i.bar, %i.bat
  br i1 %.not39.i.i.i.i121.i.i.i, label %bb.cx, label %.invoke.i.i12

bb.cx:                                            ; preds = %bb.cw
  %i.bau = lshr i32 %i.bar, 1
  %i.bav = and i32 %i.bar, 1
  %sext.i.i.i122.i.i.i = sub nsw i32 0, %i.bav
  %.1.i4.i.i.i.i.i.i = xor i32 %i.bau, %sext.i.i.i122.i.i.i ; 3 uses
  %i.baw = call i32 @llvm.abs.i32(i32 %.1.i4.i.i.i.i.i.i, i1 true)
  %i.bax = zext nneg i32 %i.axo to i64
  %i.bay = getelementptr inbounds nuw [8 x i8], ptr %i.aun, i64 %i.bax ; 4 uses
  %i.baz = load i32, ptr %i.bay, align 8, !tbaa !261
  %i.bba = add nsw i32 %i.baz, %i.baw             ; 2 uses
  store i32 %i.bba, ptr %i.bay, align 8, !tbaa !261
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bay, i64 4 ; 2 uses
  %i.bbc = load i32, ptr %i.bbb, align 4, !tbaa !262 ; 3 uses
  %i.bbd = load i32, ptr %i.or, align 8, !tbaa !213
  %i.bbe = icmp eq i32 %i.bbc, %i.bbd
  br i1 %i.bbe, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.bbf = ashr i32 %i.bba, 1
  store i32 %i.bbf, ptr %i.bay, align 8, !tbaa !261
  %i.bbg = ashr i32 %i.bbc, 1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.bbh = phi i32 [ %i.bbg, %bb.cy ], [ %i.bbc, %bb.cx ]
  %i.bbi = add nsw i32 %i.bbh, 1
  store i32 %i.bbi, ptr %i.bbb, align 4, !tbaa !262
  %i.bbj = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i.i.i, 0
  %i.bbk = sub nsw i32 0, %.1.i4.i.i.i.i.i.i
  %storemerge.i.p.i.i.i123.i.i.i = select i1 %i.bbj, i32 %i.bbk, i32 %.1.i4.i.i.i.i.i.i
  %storemerge.i.i.i.i124.i.i.i = add i32 %storemerge.i.p.i.i.i123.i.i.i, %i.axa ; 5 uses
  %i.bbl = icmp slt i32 %storemerge.i.i.i.i124.i.i.i, 0
  br i1 %i.bbl, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.bbm = add nsw i32 %i.bat, %storemerge.i.i.i.i124.i.i.i
  br label %bb.dd

bb.db:                                            ; preds = %bb.cz
  %i.bbn = load i32, ptr %i.on, align 8, !tbaa !94 ; 2 uses
  %i.bbo = icmp sgt i32 %storemerge.i.i.i.i124.i.i.i, %i.bbn
  br i1 %i.bbo, label %bb.dc, label %.thread.i.i.i.i.i.i

bb.dc:                                            ; preds = %bb.db
  %i.bbp = sub nsw i32 %storemerge.i.i.i.i124.i.i.i, %i.bat
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.da
  %.0.i37.i.i126.i.i.i = phi i32 [ %i.bbm, %bb.da ], [ %i.bbp, %bb.dc ] ; 2 uses
  %i.bbq = icmp slt i32 %.0.i37.i.i126.i.i.i, 0
  br i1 %i.bbq, label %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i", label %..thread_crit_edge.i.i.i.i.i.i

..thread_crit_edge.i.i.i.i.i.i:                   ; preds = %bb.dd
  %.pre.i.i.i127.i.i.i = load i32, ptr %i.on, align 8, !tbaa !94
  br label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %..thread_crit_edge.i.i.i.i.i.i, %bb.db
  %i.bbr = phi i32 [ %.pre.i.i.i127.i.i.i, %..thread_crit_edge.i.i.i.i.i.i ], [ %i.bbn, %bb.db ]
  %.053.i.i.i.i.i.i = phi i32 [ %.0.i37.i.i126.i.i.i, %..thread_crit_edge.i.i.i.i.i.i ], [ %storemerge.i.i.i.i124.i.i.i, %bb.db ]
  %.sroa.speculated45.i.i.i125.i.i.i = call i32 @llvm.smin.i32(i32 %i.bbr, i32 %.053.i.i.i.i.i.i)
  %i.bbs = trunc i32 %.sroa.speculated45.i.i.i125.i.i.i to i16
  br label %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i"

"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i": ; preds = %.thread.i.i.i.i.i.i, %bb.dd
  %.034.i.i.i.i.i.i.i = phi i16 [ %i.bbs, %.thread.i.i.i.i.i.i ], [ 0, %bb.dd ]
  %i.bbt = icmp samesign ugt i32 %i.aut, %i.ave
  call void @llvm.assume(i1 %i.bbt)
  %i.bbu = mul nuw nsw i32 %i.ave, %i.auv         ; 2 uses
  %i.bbv = add nuw nsw i32 %i.bbu, %i.aur
  %i.bbw = icmp samesign ule i32 %i.bbv, %i.aup
  call void @llvm.assume(i1 %i.bbw)
  %i.bbx = zext nneg i32 %i.bbu to i64
  %i.bby = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bbx
  %i.bbz = getelementptr inbounds nuw [2 x i8], ptr %i.bby, i64 %i.avp
  store i16 %.034.i.i.i.i.i.i.i, ptr %i.bbz, align 2, !tbaa !92
  %i.bca = add nsw i32 %i.avd, 1
  store i32 %i.bca, ptr %indvars.iv.i.sroa.phi.i106.i.i.i, align 4, !tbaa !94
  br i1 %.not30.i.i105.i.i.i, label %.loopexit140.i.i.i.i.i, label %bb.ci, !llvm.loop !185

.loopexit140.i.i.i.i.i:                           ; preds = %"_ZZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEiENK3$_0clENS0_8xt_linesEiRSt5arrayINS0_8int_pairELm41EEiii.exit.i.i.i.i.i", %bb.ch
  %i.bcb = icmp samesign ugt i32 %.0150.i.i.i.i.i, 3
  br i1 %i.bcb, label %.preheader.i.i67.i.i.i, label %.loopexit.i.i53.i.i.i

.preheader.i.i67.i.i.i:                           ; preds = %.loopexit140.i.i.i.i.i
  call void @llvm.assume(i1 %i.auq)
  call void @llvm.assume(i1 %i.aus)
  call void @llvm.assume(i1 %i.auu)
  call void @llvm.assume(i1 %i.auw)
  call void @llvm.assume(i1 %i.auy)
  %.val35.i.i68.i.i.i = load ptr, ptr %i.og, align 8, !tbaa !136 ; 2 uses
  call void @llvm.assume(i1 %i.ava)
  %.promoted.i.pre.i.i69.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %.promoted16.i.pre.i.i70.i.i.i = load i32, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269 ; 2 uses
  br label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i

_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i: ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i, %.preheader.i.i67.i.i.i
  %i.bcc = phi i32 [ %.promoted16.i.pre.i.i70.i.i.i, %.preheader.i.i67.i.i.i ], [ %i.bhn, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i ]
  %i.bcd = phi i32 [ %.promoted16.i.pre.i.i70.i.i.i, %.preheader.i.i67.i.i.i ], [ %i.bhz, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i ] ; 2 uses
  %.promoted.i.i.i72.i.i.i = phi i32 [ %.promoted.i.pre.i.i69.i.i.i, %.preheader.i.i67.i.i.i ], [ %.promoted.i169.i.i.i.i.i, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i ]
  %.not31.i.i73.i.i.i = phi i1 [ false, %.preheader.i.i67.i.i.i ], [ true, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i ]
  %indvars.iv158.i.sroa.phi.i.i.i.i = phi ptr [ %1, %.preheader.i.i67.i.i.i ], [ %indvars.iv158.i.sroa.gep73.i.i.i.i, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i ]
  %indvars.iv158.i.sroa.phi75.sroa.speculated.in.i.i.i.i = phi i32 [ %i.aud, %.preheader.i.i67.i.i.i ], [ %i.auj, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block18fuji_decode_sampleEiiRSt5arrayINS0_8int_pairELm41EE.exit.i.i91.i.i.i ]
  %i.bce = getelementptr inbounds nuw i8, ptr %indvars.iv158.i.sroa.phi.i.i.i.i, i64 4 ; 2 uses
  %i.bcf = load i32, ptr %i.bce, align 4, !tbaa !94 ; 2 uses
  %i.bcg = and i32 %indvars.iv158.i.sroa.phi75.sroa.speculated.in.i.i.i.i, 255 ; 3 uses
  %i.bch = shl nsw i32 %i.bcf, 1                  ; 3 uses
  %i.bci = or disjoint i32 %i.bch, 1              ; 2 uses
  %i.bcj = icmp samesign ult i32 %i.bci, %i.aur
  call void @llvm.assume(i1 %i.bcj)
  %i.bck = icmp samesign ugt i32 %i.aut, %i.bcg
  call void @llvm.assume(i1 %i.bck)
  %i.bcl = mul nuw nsw i32 %i.bcg, %i.auv         ; 2 uses
  %i.bcm = add nuw nsw i32 %i.bcl, %i.aur
  %i.bcn = icmp samesign ule i32 %i.bcm, %i.aup
  call void @llvm.assume(i1 %i.bcn)
  %i.bco = zext nneg i32 %i.bcl to i64
  %i.bcp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bco ; 3 uses
  %i.bcq = zext nneg i32 %i.bci to i64            ; 2 uses
  %i.bcr = getelementptr inbounds nuw [2 x i8], ptr %i.bcp, i64 %i.bcq
  %i.bcs = load i16, ptr %i.bcr, align 2, !tbaa !92
  %i.bct = zext i16 %i.bcs to i32                 ; 2 uses
  %i.bcu = add nsw i32 %i.bcg, -1                 ; 2 uses
  %i.bcv = add nsw i32 %i.bch, 2                  ; 2 uses
  %i.bcw = icmp samesign ult i32 %i.bcv, %i.aur
  call void @llvm.assume(i1 %i.bcw)
  %i.bcx = icmp samesign ult i32 %i.bcu, %i.aut
  call void @llvm.assume(i1 %i.bcx)
  %i.bcy = mul nuw nsw i32 %i.bcu, %i.auv         ; 2 uses
  %i.bcz = add nuw nsw i32 %i.bcy, %i.aur
  %i.bda = icmp samesign ule i32 %i.bcz, %i.aup
  call void @llvm.assume(i1 %i.bda)
  %i.bdb = zext nneg i32 %i.bcy to i64
  %i.bdc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bdb ; 3 uses
  %i.bdd = zext nneg i32 %i.bcv to i64            ; 2 uses
  %i.bde = getelementptr inbounds nuw [2 x i8], ptr %i.bdc, i64 %i.bdd
  %i.bdf = load i16, ptr %i.bde, align 2, !tbaa !92 ; 3 uses
  %i.bdg = zext i16 %i.bdf to i32                 ; 2 uses
  %i.bdh = getelementptr inbounds nuw [2 x i8], ptr %i.bdc, i64 %i.bcq
  %i.bdi = load i16, ptr %i.bdh, align 2, !tbaa !92 ; 3 uses
  %i.bdj = zext i16 %i.bdi to i32                 ; 2 uses
  %i.bdk = add nsw i32 %i.bch, 3                  ; 2 uses
  %i.bdl = icmp samesign ult i32 %i.bdk, %i.aur
  call void @llvm.assume(i1 %i.bdl)
  %i.bdm = zext nneg i32 %i.bdk to i64            ; 2 uses
  %i.bdn = getelementptr inbounds nuw [2 x i8], ptr %i.bdc, i64 %i.bdm
  %i.bdo = load i16, ptr %i.bdn, align 2, !tbaa !92 ; 2 uses
  %i.bdp = getelementptr inbounds nuw [2 x i8], ptr %i.bcp, i64 %i.bdm
  %i.bdq = load i16, ptr %i.bdp, align 2, !tbaa !92
  %i.bdr = zext i16 %i.bdq to i32
  %i.bds = add nuw nsw i32 %i.bdr, %i.bct         ; 2 uses
  %i.bdt = call i16 @llvm.umin.i16(i16 %i.bdo, i16 %i.bdi)
  %i.bdu = icmp ugt i16 %i.bdt, %i.bdf
  %i.bdv = call i16 @llvm.umax.i16(i16 %i.bdo, i16 %i.bdi)
  %i.bdw = icmp ult i16 %i.bdv, %i.bdf
  %or.cond.i.i.i74.i.i.i = or i1 %i.bdu, %i.bdw
  %i.bdx = lshr i32 %i.bds, 1
  %i.bdy = add nuw nsw i32 %i.bdx, %i.bdg
  %.0130.i.i.i.i.i = select i1 %or.cond.i.i.i74.i.i.i, i32 %i.bdy, i32 %i.bds
  %i.bdz = lshr i32 %.0130.i.i.i.i.i, 1
  %i.bea = sub nsw i32 %i.bdg, %i.bdj
  %i.beb = sub nsw i32 %i.bdj, %i.bct
  %i.bec = load i32, ptr %i.on, align 8, !tbaa !94 ; 2 uses
  %i.bed = add nsw i32 %i.bea, %i.bec
  %i.bee = sext i32 %i.bed to i64
  %i.bef = getelementptr inbounds nuw i8, ptr %.val35.i.i68.i.i.i, i64 %i.bee
  %i.beg = load i8, ptr %i.bef, align 1, !tbaa !93
  %i.beh = sext i8 %i.beg to i32
  %i.bei = mul nsw i32 %i.beh, 9
  %i.bej = add nsw i32 %i.beb, %i.bec
  %i.bek = sext i32 %i.bej to i64
  %i.bel = getelementptr inbounds nuw i8, ptr %.val35.i.i68.i.i.i, i64 %i.bek
  %i.bem = load i8, ptr %i.bel, align 1, !tbaa !93
  %i.ben = sext i8 %i.bem to i32
  %.sroa.081.0.extract.trunc.i.i.i.i.i = add nsw i32 %i.bei, %i.ben ; 2 uses
  %i.beo = call i32 @llvm.abs.i32(i32 %.sroa.081.0.extract.trunc.i.i.i.i.i, i1 true) ; 2 uses
  %.promoted17.i.i.i75.i.i.i = load i64, ptr %i.er, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i76.i.i.i = load ptr, ptr %.sroa.644.0..sroa_idx.i.i, align 8 ; 4 uses
  br label %bb.de

bb.de:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i
  %i.bep = phi i32 [ %i.bcc, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i ], [ %i.bfm, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i ]
  %i.beq = phi i32 [ %i.bcd, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i ], [ %i.bfn, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i ]
  %i.ber = phi i64 [ %.promoted17.i.i.i75.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i ], [ %i.bga, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i ] ; 2 uses
  %i.bes = phi i32 [ %i.bcd, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i ], [ %i.bfp, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i ] ; 5 uses
  %i.bet = phi i32 [ %.promoted.i.i.i72.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i ], [ %i.bfy, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i ] ; 5 uses
  %.014.i.i.i77.i.i.i = phi i32 [ 0, %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block35fuji_decode_interpolation_odd_innerENS0_8xt_linesEi.exit.i.i71.i.i.i ], [ %i.bfu, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i ]
  %i.beu = icmp samesign ult i32 %i.bet, 65
  call void @llvm.assume(i1 %i.beu)
  %.not.i.i54.i.i.i.i.i = icmp samesign ult i32 %i.bet, 32
  br i1 %.not.i.i54.i.i.i.i.i, label %bb.df, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i53.i.i.i.i.i)
  %i.bev = add nuw nsw i32 %i.bes, 4              ; 5 uses
  %.not.i.i.i57.i.i.i.i.i = icmp samesign ugt i32 %i.bev, %i.auz
  br i1 %.not.i.i.i57.i.i.i.i.i, label %bb.dh, label %bb.dg, !prof !134

bb.dg:                                            ; preds = %bb.df
  %i.bew = zext nneg i32 %i.bes to i64
  %i.bex = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i76.i.i.i, i64 %i.bew
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.bey = icmp samesign ugt i32 %i.bes, %i.avb
  br i1 %i.bey, label %.invoke191.i.i, label %bb.di, !prof !134

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %.sroa.0.i.i.i53.i.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i61.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.auz, i32 %i.bes) ; 3 uses
  %i.bez = add nuw nsw i32 %.sroa.speculated27.i.i.i.i61.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i62.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.auz, i32 %i.bez)
  %i.bfa = sub nsw i32 %.sroa.speculated.i.i.i.i62.i.i.i.i.i, %.sroa.speculated27.i.i.i.i61.i.i.i.i.i ; 2 uses
  %i.bfb = icmp samesign ult i32 %i.bfa, 5
  call void @llvm.assume(i1 %i.bfb)
  %i.bfc = zext nneg i32 %.sroa.speculated27.i.i.i.i61.i.i.i.i.i to i64
  %i.bfd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i76.i.i.i, i64 %i.bfc
  %i.bfe = zext nneg i32 %i.bfa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i53.i.i.i.i.i, ptr align 1 %i.bfd, i64 %i.bfe, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i: ; preds = %bb.di, %bb.dg
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i59.i.i.i.i.i = phi ptr [ %.sroa.0.i.i.i53.i.i.i.i.i, %bb.di ], [ %i.bex, %bb.dg ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i60.i.i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i59.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i53.i.i.i.i.i)
  %i.bff = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i60.i.i.i.i.i)
  %i.bfg = zext i32 %i.bff to i64
  %i.bfh = or disjoint i32 %i.bet, 32
  %i.bfi = sub nuw nsw i32 32, %i.bet
  %i.bfj = zext nneg i32 %i.bfi to i64
  %i.bfk = shl nuw i64 %i.bfg, %i.bfj
  %i.bfl = or i64 %i.bfk, %i.ber
  store i32 %i.bev, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !tbaa !269
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i, %bb.de
  %i.bfm = phi i32 [ %i.bep, %bb.de ], [ %i.bev, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i ] ; 2 uses
  %i.bfn = phi i32 [ %i.beq, %bb.de ], [ %i.bev, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i ] ; 7 uses
  %i.bfo = phi i64 [ %i.ber, %bb.de ], [ %i.bfl, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i ] ; 2 uses
  %i.bfp = phi i32 [ %i.bes, %bb.de ], [ %i.bev, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i ]
  %i.bfq = phi i32 [ %i.bet, %bb.de ], [ %i.bfh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i58.i.i.i.i.i ]
  %i.bfr = lshr i64 %i.bfo, 32                    ; 2 uses
  %i.bfs = trunc nuw i64 %i.bfr to i32
  %i.bft = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bfs, i1 false) ; 2 uses
  %i.bfu = add nuw nsw i32 %i.bft, %.014.i.i.i77.i.i.i ; 3 uses
  %i.bfv = icmp eq i64 %i.bfr, 0                  ; 2 uses
  %i.bfw = add nuw nsw i32 %i.bft, 1
  %spec.select.i56.i.i.i.i.i = select i1 %i.bfv, i32 32, i32 %i.bfw ; 3 uses
  %i.bfx = icmp samesign ult i32 %spec.select.i56.i.i.i.i.i, 33
  call void @llvm.assume(i1 %i.bfx)
  %i.bfy = sub nuw nsw i32 %i.bfq, %spec.select.i56.i.i.i.i.i ; 6 uses
  store i32 %i.bfy, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !266
  %i.bfz = zext nneg i32 %spec.select.i56.i.i.i.i.i to i64
  %i.bga = shl i64 %i.bfo, %i.bfz                 ; 4 uses
  store i64 %i.bga, ptr %i.er, align 8, !tbaa !270
  br i1 %i.bfv, label %bb.de, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i78.i.i.i

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i78.i.i.i: ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i55.i.i.i.i.i
  %i.bgb = load i32, ptr %i.oo, align 4, !tbaa !218
  %i.bgc = load i32, ptr %i.op, align 4, !tbaa !217 ; 2 uses
  %i.bgd = xor i32 %i.bgc, -1
  %i.bge = add i32 %i.bgb, %i.bgd
  %i.bgf = icmp slt i32 %i.bfu, %i.bge
  br i1 %i.bgf, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i78.i.i.i
  %i.bgg = zext nneg i32 %i.beo to i64
  %i.bgh = getelementptr inbounds nuw [8 x i8], ptr %i.auo, i64 %i.bgg ; 2 uses
  %i.bgi = load i32, ptr %i.bgh, align 8, !tbaa !261 ; 3 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgh, i64 4
  %i.bgk = load i32, ptr %i.bgj, align 4, !tbaa !262 ; 3 uses
  %i.bgl = icmp sgt i32 %i.bgi, -1
  call void @llvm.assume(i1 %i.bgl)
  %i.bgm = icmp sgt i32 %i.bgk, 0
  call void @llvm.assume(i1 %i.bgm)
  %i.bgn = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bgi, i1 false)
  %i.bgo = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.bgk, i1 true)
  %i.bgp = sub nsw i32 %i.bgo, %i.bgn
  %.sroa.speculated11.i.i.i101.i.i.i = call i32 @llvm.smax.i32(i32 %i.bgp, i32 0) ; 2 uses
  %i.bgq = shl i32 %i.bgk, %.sroa.speculated11.i.i.i101.i.i.i
  %i.bgr = icmp slt i32 %i.bgq, %i.bgi
  %i.bgs = zext i1 %i.bgr to i32
  %spec.select.i63.i.i.i.i.i = add nuw nsw i32 %.sroa.speculated11.i.i.i101.i.i.i, %i.bgs
  %.sroa.speculated.i64.i.i.i.i.i = call noundef range(i32 0, 16) i32 @llvm.umin.i32(i32 %spec.select.i63.i.i.i.i.i, i32 15) ; 2 uses
  %i.bgt = shl i32 %i.bfu, %.sroa.speculated.i64.i.i.i.i.i
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i78.i.i.i
  %.033.i.i.i79.i.i.i = phi i32 [ %.sroa.speculated.i64.i.i.i.i.i, %bb.dj ], [ %i.bgc, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i78.i.i.i ] ; 5 uses
  %.032.i.i.i80.i.i.i = phi i32 [ %i.bgt, %bb.dj ], [ 1, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block13fuji_zerobitsERNS_14BitStreamerMSBE.exit.i.i78.i.i.i ]
  %i.bgu = icmp sgt i32 %i.bfn, -1
  call void @llvm.assume(i1 %i.bgu)
  %.not.i65.i.i.i.i.i = icmp samesign ult i32 %i.bfy, 32
  br i1 %.not.i65.i.i.i.i.i, label %bb.dl, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i81.i.i.i

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i46.i.i.i)
  %i.bgv = add nuw nsw i32 %i.bfn, 4              ; 4 uses
  %.not.i.i66.i.i.i.i.i = icmp samesign ugt i32 %i.bgv, %i.auz
  br i1 %.not.i.i66.i.i.i.i.i, label %bb.dn, label %bb.dm, !prof !134

bb.dm:                                            ; preds = %bb.dl
  %i.bgw = zext nneg i32 %i.bfn to i64
  %i.bgx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i76.i.i.i, i64 %i.bgw
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i96.i.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.bgy = icmp samesign ugt i32 %i.bfn, %i.avb
  br i1 %i.bgy, label %.invoke191.i.i, label %bb.do, !prof !134

.invoke191.i.i:                                   ; preds = %bb.cs, %bb.dn, %bb.ar, %bb.bm, %bb.cm, %bb.dh, %bb.al, %bb.bg
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #17
          to label %.cont192.i.i unwind label %bb.eo

.cont192.i.i:                                     ; preds = %.invoke191.i.i
  unreachable

bb.do:                                            ; preds = %bb.dn
  store i32 0, ptr %.sroa.0.i.i.i.i46.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i99.i.i.i = call i32 @llvm.umin.i32(i32 %i.auz, i32 %i.bfn) ; 3 uses
  %i.bgz = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i99.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i100.i.i.i = call i32 @llvm.umin.i32(i32 %i.auz, i32 %i.bgz)
  %i.bha = sub nsw i32 %.sroa.speculated.i.i.i.i.i100.i.i.i, %.sroa.speculated27.i.i.i.i.i99.i.i.i ; 2 uses
  %i.bhb = icmp samesign ult i32 %i.bha, 5
  call void @llvm.assume(i1 %i.bhb)
  %i.bhc = zext nneg i32 %.sroa.speculated27.i.i.i.i.i99.i.i.i to i64
  %i.bhd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i76.i.i.i, i64 %i.bhc
  %i.bhe = zext nneg i32 %i.bha to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i46.i.i.i, ptr align 1 %i.bhd, i64 %i.bhe, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i96.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i96.i.i.i: ; preds = %bb.do, %bb.dm
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i97.i.i.i = phi ptr [ %.sroa.0.i.i.i.i46.i.i.i, %bb.do ], [ %i.bgx, %bb.dm ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i98.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i97.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i46.i.i.i)
  %i.bhf = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i98.i.i.i)
  %i.bhg = zext i32 %i.bhf to i64
  %i.bhh = or disjoint i32 %i.bfy, 32             ; 2 uses
  %i.bhi = sub nuw nsw i32 32, %i.bfy
  %i.bhj = zext nneg i32 %i.bhi to i64
  %i.bhk = shl nuw i64 %i.bhg, %i.bhj
  %i.bhl = or i64 %i.bhk, %i.bga                  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK8rawspeed16FujiDecompressor10decompressEv:bb.a
  %i.bsp = getelementptr [2 x i8], ptr %i.bsh, i64 %i.bjg
  %i.bsq = getelementptr i8, ptr %i.bsp, i64 -4
  %i.bsr = load i16, ptr %i.bsq, align 2, !tbaa !92
  %i.bss = getelementptr [2 x i8], ptr %i.bso, i64 %i.bjg
  %i.bst = getelementptr i8, ptr %i.bss, i64 -2
  store i16 %i.bsr, ptr %i.bst, align 2, !tbaa !92
  %i.bsu = shl nuw nsw i64 %i.bjj, 3              ; 2 uses
  %i.bsv = add nuw nsw i64 %i.bsu, %i.bjk
  %i.bsw = icmp samesign ule i64 %i.bsv, %i.bji
  call void @llvm.assume(i1 %i.bsw)
  %i.bsx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bsu ; 2 uses
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsx, i64 2
  %i.bsz = load i16, ptr %i.bsy, align 2, !tbaa !92
  %i.bta = icmp samesign ugt i32 %i.aut, 9
  call void @llvm.assume(i1 %i.bta)
  %i.btb = mul nuw nsw i64 %i.bjh, 9              ; 2 uses
  %i.btc = add nuw nsw i64 %i.btb, %i.bjg
  %i.btd = icmp samesign ule i64 %i.btc, %i.bji
  call void @llvm.assume(i1 %i.btd)
  %i.bte = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.btb ; 2 uses
  store i16 %i.bsz, ptr %i.bte, align 2, !tbaa !92
  %i.btf = getelementptr [2 x i8], ptr %i.bsx, i64 %i.bjg
  %i.btg = getelementptr i8, ptr %i.btf, i64 -4
  %i.bth = load i16, ptr %i.btg, align 2, !tbaa !92
  %i.bti = getelementptr [2 x i8], ptr %i.bte, i64 %i.bjg
  %i.btj = getelementptr i8, ptr %i.bti, i64 -2
  store i16 %i.bth, ptr %i.btj, align 2, !tbaa !92
  %i.btk = mul nuw nsw i64 %i.bjj, 9              ; 2 uses
  %i.btl = add nuw nsw i64 %i.btk, %i.bjk
  %i.btm = icmp samesign ule i64 %i.btl, %i.bji
  call void @llvm.assume(i1 %i.btm)
  %i.btn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.btk ; 2 uses
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btn, i64 2
  %i.btp = load i16, ptr %i.bto, align 2, !tbaa !92
  %i.btq = icmp samesign ugt i32 %i.aut, 10
  call void @llvm.assume(i1 %i.btq)
  %i.btr = mul nuw nsw i64 %i.bjh, 10             ; 2 uses
  %i.bts = add nuw nsw i64 %i.btr, %i.bjg
  %i.btt = icmp samesign ule i64 %i.bts, %i.bji
  call void @llvm.assume(i1 %i.btt)
  %i.btu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.btr ; 2 uses
  store i16 %i.btp, ptr %i.btu, align 2, !tbaa !92
  %i.btv = getelementptr [2 x i8], ptr %i.btn, i64 %i.bjg
  %i.btw = getelementptr i8, ptr %i.btv, i64 -4
  %i.btx = load i16, ptr %i.btw, align 2, !tbaa !92
  %i.bty = getelementptr [2 x i8], ptr %i.btu, i64 %i.bjg
  %i.btz = getelementptr i8, ptr %i.bty, i64 -2
  store i16 %i.btx, ptr %i.btz, align 2, !tbaa !92
  %i.bua = mul nuw nsw i64 %i.bjj, 10             ; 2 uses
  %i.bub = add nuw nsw i64 %i.bua, %i.bjk
  %i.buc = icmp samesign ule i64 %i.bub, %i.bji
  call void @llvm.assume(i1 %i.buc)
  %i.bud = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bua ; 2 uses
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bud, i64 2
  %i.buf = load i16, ptr %i.bue, align 2, !tbaa !92
  %i.bug = icmp samesign ugt i32 %i.aut, 11
  call void @llvm.assume(i1 %i.bug)
  %i.buh = mul nuw nsw i64 %i.bjh, 11             ; 2 uses
  %i.bui = add nuw nsw i64 %i.buh, %i.bjg
  %i.buj = icmp samesign ule i64 %i.bui, %i.bji
  call void @llvm.assume(i1 %i.buj)
  %i.buk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.buh ; 2 uses
  store i16 %i.buf, ptr %i.buk, align 2, !tbaa !92
  %i.bul = getelementptr [2 x i8], ptr %i.bud, i64 %i.bjg
  %i.bum = getelementptr i8, ptr %i.bul, i64 -4
  %i.bun = load i16, ptr %i.bum, align 2, !tbaa !92
  %i.buo = getelementptr [2 x i8], ptr %i.buk, i64 %i.bjg
  %i.bup = getelementptr i8, ptr %i.buo, i64 -2
  store i16 %i.bun, ptr %i.bup, align 2, !tbaa !92
  %i.buq = mul nuw nsw i64 %i.bjj, 11             ; 2 uses
  %i.bur = add nuw nsw i64 %i.buq, %i.bjk
  %i.bus = icmp samesign ule i64 %i.bur, %i.bji
  call void @llvm.assume(i1 %i.bus)
  %i.but = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.buq ; 2 uses
  %i.buu = getelementptr inbounds nuw i8, ptr %i.but, i64 2
  %i.buv = icmp samesign ugt i32 %i.aut, 12
  call void @llvm.assume(i1 %i.buv)
  %i.buw = mul nuw nsw i64 %i.bjh, 12
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i

bb.eg:                                            ; preds = %bb.ed
  %i.bux = add nuw nsw i64 %i.bjj, %i.bjk
  %i.buy = icmp samesign ule i64 %i.bux, %i.bji
  call void @llvm.assume(i1 %i.buy)
  %i.buz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bjj ; 2 uses
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buz, i64 2
  %i.bvb = load i16, ptr %i.bva, align 2, !tbaa !92
  %i.bvc = icmp samesign ugt i32 %i.aut, 2
  call void @llvm.assume(i1 %i.bvc)
  %i.bvd = shl nuw nsw i64 %i.bjh, 1              ; 2 uses
  %i.bve = add nuw nsw i64 %i.bvd, %i.bjg
  %i.bvf = icmp samesign ule i64 %i.bve, %i.bji
  call void @llvm.assume(i1 %i.bvf)
  %i.bvg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bvd ; 2 uses
  store i16 %i.bvb, ptr %i.bvg, align 2, !tbaa !92
  %i.bvh = getelementptr [2 x i8], ptr %i.buz, i64 %i.bjg
  %i.bvi = getelementptr i8, ptr %i.bvh, i64 -4
  %i.bvj = load i16, ptr %i.bvi, align 2, !tbaa !92
  %i.bvk = getelementptr [2 x i8], ptr %i.bvg, i64 %i.bjg
  %i.bvl = getelementptr i8, ptr %i.bvk, i64 -2
  store i16 %i.bvj, ptr %i.bvl, align 2, !tbaa !92
  %i.bvm = shl nuw nsw i64 %i.bjj, 1              ; 2 uses
  %i.bvn = add nuw nsw i64 %i.bvm, %i.bjk
  %i.bvo = icmp samesign ule i64 %i.bvn, %i.bji
  call void @llvm.assume(i1 %i.bvo)
  %i.bvp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bvm ; 2 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvp, i64 2
  %i.bvr = load i16, ptr %i.bvq, align 2, !tbaa !92
  %i.bvs = icmp samesign ugt i32 %i.aut, 3
  call void @llvm.assume(i1 %i.bvs)
  %i.bvt = mul nuw nsw i64 %i.bjh, 3              ; 2 uses
  %i.bvu = add nuw nsw i64 %i.bvt, %i.bjg
  %i.bvv = icmp samesign ule i64 %i.bvu, %i.bji
  call void @llvm.assume(i1 %i.bvv)
  %i.bvw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bvt ; 2 uses
  store i16 %i.bvr, ptr %i.bvw, align 2, !tbaa !92
  %i.bvx = getelementptr [2 x i8], ptr %i.bvp, i64 %i.bjg
  %i.bvy = getelementptr i8, ptr %i.bvx, i64 -4
  %i.bvz = load i16, ptr %i.bvy, align 2, !tbaa !92
  %i.bwa = getelementptr [2 x i8], ptr %i.bvw, i64 %i.bjg
  %i.bwb = getelementptr i8, ptr %i.bwa, i64 -2
  store i16 %i.bvz, ptr %i.bwb, align 2, !tbaa !92
  %i.bwc = mul nuw nsw i64 %i.bjj, 3              ; 2 uses
  %i.bwd = add nuw nsw i64 %i.bwc, %i.bjk
  %i.bwe = icmp samesign ule i64 %i.bwd, %i.bji
  call void @llvm.assume(i1 %i.bwe)
  %i.bwf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bwc ; 2 uses
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwf, i64 2
  %i.bwh = icmp samesign ugt i32 %i.aut, 4
  call void @llvm.assume(i1 %i.bwh)
  %i.bwi = shl nuw nsw i64 %i.bjh, 2
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i:         ; preds = %bb.eg, %bb.ef, %bb.ee
  %.sink163.i62.i.i.i = phi i64 [ %i.bwi, %bb.eg ], [ %i.buw, %bb.ef ], [ %i.brn, %bb.ee ] ; 2 uses
  %.sink158.in.i63.i.i.i = phi ptr [ %i.bwg, %bb.eg ], [ %i.buu, %bb.ef ], [ %i.brl, %bb.ee ]
  %.sink157.i64.i.i.i = phi ptr [ %i.bwf, %bb.eg ], [ %i.but, %bb.ef ], [ %i.brk, %bb.ee ]
  %.sink158.i65.i.i.i = load i16, ptr %.sink158.in.i63.i.i.i, align 2, !tbaa !92
  %i.bwj = add nuw nsw i64 %.sink163.i62.i.i.i, %i.bjg
  %i.bwk = icmp samesign ule i64 %i.bwj, %i.bji
  call void @llvm.assume(i1 %i.bwk)
  %i.bwl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %.sink163.i62.i.i.i ; 2 uses
  store i16 %.sink158.i65.i.i.i, ptr %i.bwl, align 2, !tbaa !92
  %i.bwm = getelementptr [2 x i8], ptr %.sink157.i64.i.i.i, i64 %i.bjg
  %i.bwn = getelementptr i8, ptr %i.bwm, i64 -4
  %i.bwo = load i16, ptr %i.bwn, align 2, !tbaa !92
  %i.bwp = getelementptr [2 x i8], ptr %i.bwl, i64 %i.bjg
  %i.bwq = getelementptr i8, ptr %i.bwp, i64 -2
  store i16 %i.bwo, ptr %i.bwq, align 2, !tbaa !92
  %i.bwr = add nuw nsw i32 %.017.i97.i49.i.i.i, 1 ; 2 uses
  %.not.i.i66.i.i.i = icmp eq i32 %i.bwr, 6
  br i1 %.not.i.i66.i.i.i, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEi.exit.i.i.i, label %switch.lookup227, !llvm.loop !188

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEi.exit.i.i.i: ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.eh

bb.eh:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEi.exit.i.i.i, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEi.exit.i.i.i
  %i.bws = load ptr, ptr %i.dp, align 8, !tbaa !264, !nonnull !250, !align !255
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bws, i64 3
  %i.bwu = load i8, ptr %i.bwt, align 1, !tbaa !118
  %i.bwv = icmp eq i8 %i.bwu, 16
  %i.bww = load i8, ptr %i.ex, align 2, !tbaa !115
  %i.bwx = zext i8 %i.bww to i64
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ny, %i.bwx ; 2 uses
  %i.bwy = load i16, ptr %i.oa, align 4, !tbaa !114
  %i.bwz = zext i16 %i.bwy to i32                 ; 6 uses
  br i1 %i.bwv, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %bb.eh
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ej, label %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i.i.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.bxa = mul nuw nsw i32 %i.nz, %i.bwz
  %i.bxb = load i16, ptr %i.ob, align 2, !tbaa !112
  %i.bxc = zext i16 %i.bxb to i32                 ; 2 uses
  %i.bxd = icmp samesign uge i32 %i.bxa, %i.bxc
  call void @llvm.assume(i1 %i.bxd)
  %i.bxe = mul nuw nsw i32 %i.bwz, %indvars110.i.i
  %i.bxf = sub nsw i32 %i.bxc, %i.bxe
  br label %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i.i.i.i

_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i.i.i.i: ; preds = %bb.ej, %bb.ei
  %.0.i.i.i.i141.i.i.i = phi i32 [ %i.bxf, %bb.ej ], [ %i.bwz, %bb.ei ] ; 2 uses
  %.0.i.i.off.i.i.i.i.i = add nsw i32 %.0.i.i.i.i141.i.i.i, 5
  %.not70.i.i.i.i.i = icmp ult i32 %.0.i.i.off.i.i.i.i.i, 11
  br i1 %.not70.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i, label %.preheader66.lr.ph.i.i.i.i.i

.preheader66.lr.ph.i.i.i.i.i:                     ; preds = %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i.i.i.i
  %i.bxg = sdiv i32 %.0.i.i.i.i141.i.i.i, 6
  %.sroa.060.0.copyload.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !229 ; 6 uses
  %.sroa.462.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.659.0..sroa_idx.i.i, align 8, !tbaa !94 ; 3 uses
  %.sroa.563.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.760.0..sroa_idx.i.i, align 4, !tbaa !94 ; 3 uses
  %.sroa.664.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.861.0..sroa_idx.i.i, align 8, !tbaa !94
  %i.bxh = icmp ne i32 %.sroa.462.0.copyload.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.bxh)
  %i.bxi = icmp sge i32 %.sroa.462.0.copyload.i.i.i.i.i, %.sroa.563.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.bxi)
  %i.bxj = zext nneg i32 %.sroa.563.0.copyload.i.i.i.i.i to i64 ; 4 uses
  %i.bxk = zext nneg i32 %.sroa.664.0.copyload.i.i.i.i.i to i64 ; 4 uses
  %i.bxl = zext nneg i32 %.sroa.462.0.copyload.i.i.i.i.i to i64 ; 6 uses
  %i.bxm = mul nuw nsw i64 %indvars.iv.i20.i.i, 6 ; 7 uses
  %12 = zext i32 %i.bxg to i64
  %13 = icmp samesign ult i64 %i.bxm, %i.bxk
  %i.bxn = mul nuw nsw i64 %i.bxm, %i.bxl
  %i.bxo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %i.bxn ; 6 uses
  %i.bxp = load i32, ptr %i.ek, align 4, !tbaa !253 ; 7 uses
  %i.bxq = load i32, ptr %i.ej, align 8, !tbaa !252 ; 13 uses
  %i.bxr = icmp sge i32 %i.bxq, %i.bxp
  call void @llvm.assume(i1 %i.bxr)
  %i.bxs = mul nuw nsw i32 %i.bxq, 7
  %.sroa.0.0.copyload.i.i33.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !229, !noalias !271 ; 12 uses
  %i.bxt = zext nneg i32 %i.bxs to i64
  %i.bxu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bxt ; 4 uses
  call void @llvm.assume(i1 %13)
  %i.bxv = shl nuw nsw i32 %i.bxq, 1
  %i.bxw = zext nneg i32 %i.bxv to i64
  %i.bxx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bxw ; 2 uses
  %i.bxy = mul nuw nsw i32 %i.bxq, 15
  %i.bxz = zext nneg i32 %i.bxy to i64
  %i.bya = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bxz ; 2 uses
  %14 = or disjoint i64 %i.bxm, 1
  %15 = mul nuw nsw i64 %14, %i.bxl
  %i.byb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %15 ; 6 uses
  %i.byc = shl nuw nsw i32 %i.bxq, 3
  %i.byd = zext nneg i32 %i.byc to i64
  %i.bye = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byd ; 4 uses
  %16 = add nuw nsw i64 %i.bxm, 2                 ; 2 uses
  %i.byf = icmp samesign ult i64 %16, %i.bxk
  %17 = mul nuw nsw i64 %16, %i.bxl
  %i.byg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %17 ; 6 uses
  %i.byh = shl nuw nsw i32 %i.bxq, 4
  %i.byi = zext nneg i32 %i.byh to i64
  %i.byj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byi ; 3 uses
  call void @llvm.assume(i1 %i.byf)
  %i.byk = mul nuw nsw i32 %i.bxq, 3
  %i.byl = zext nneg i32 %i.byk to i64
  %i.bym = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byl ; 3 uses
  %i.byn = mul nuw nsw i32 %i.bxq, 9
  %i.byo = zext nneg i32 %i.byn to i64
  %i.byp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byo ; 2 uses
  %18 = add nuw nsw i64 %i.bxm, 3
  %19 = mul nuw nsw i64 %18, %i.bxl
  %i.byq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %19 ; 6 uses
  %i.byr = mul nuw nsw i32 %i.bxq, 10
  %i.bys = zext nneg i32 %i.byr to i64
  %i.byt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bys ; 4 uses
  %20 = add nuw nsw i64 %i.bxm, 4                 ; 2 uses
  %21 = icmp samesign ult i64 %20, %i.bxk
  %22 = mul nuw nsw i64 %20, %i.bxl
  %i.byu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %22 ; 6 uses
  %i.byv = mul nuw nsw i32 %i.bxq, 11
  %i.byw = zext nneg i32 %i.byv to i64
  %i.byx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byw ; 4 uses
  call void @llvm.assume(i1 %21)
  %i.byy = shl nuw nsw i32 %i.bxq, 2
  %i.byz = zext nneg i32 %i.byy to i64
  %i.bza = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byz ; 3 uses
  %i.bzb = mul nuw nsw i32 %i.bxq, 17
  %i.bzc = zext nneg i32 %i.bzb to i64
  %i.bzd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bzc ; 3 uses
  %23 = add nuw nsw i64 %i.bxm, 5                 ; 2 uses
  %i.bze = icmp samesign ult i64 %23, %i.bxk
  %24 = mul nuw nsw i64 %23, %i.bxl
  %i.bzf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %24 ; 6 uses
  call void @llvm.assume(i1 %i.bze)
  %i.bzg = mul nuw nsw i32 %i.bxq, 12
  %i.bzh = zext nneg i32 %i.bzg to i64
  %i.bzi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bzh ; 2 uses
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %.preheader66.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.preheader66.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.ek ] ; 2 uses
  %.val.val.i.i.i.i.i = load i16, ptr %i.oa, align 4, !tbaa !114
  %i.bzj = zext i16 %.val.val.i.i.i.i.i to i32
  %i.bzk = mul nuw nsw i32 %i.bzj, %indvars110.i.i
  %i.bzl = trunc i64 %indvars.iv.i.i.i.i.i to i32 ; 2 uses
  %i.bzm = mul i32 %i.bzl, 6
  %i.bzn = add nsw i32 %i.bzk, %i.bzm             ; 3 uses
  %.val32.val.i.i.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %i.bzo = zext i16 %.val32.val.i.i.i.i.i to i64
  %i.bzp = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.bzo
  call void @llvm.assume(i1 %i.bzp)
  %i.bzq = icmp sgt i32 %i.bzn, -1
  %i.bzr = zext nneg i32 %i.bzn to i64            ; 11 uses
  %i.bzs = getelementptr inbounds nuw [2 x i8], ptr %i.bxo, i64 %i.bzr
  %i.bzt = add nuw nsw i64 %i.bzr, 1              ; 6 uses
  %i.bzu = icmp samesign ult i32 %i.bzn, %.sroa.563.0.copyload.i.i.i.i.i
  %i.bzv = getelementptr inbounds nuw [2 x i8], ptr %i.bxo, i64 %i.bzt
  %i.bzw = add nuw nsw i64 %i.bzr, 2              ; 7 uses
  %i.bzx = icmp samesign ule i64 %i.bzw, %i.bxj
  %i.bzy = getelementptr inbounds nuw [2 x i8], ptr %i.bxo, i64 %i.bzw
  %i.bzz = mul i32 %i.bzl, 12                     ; 2 uses
  %i.caa = insertelement <4 x i32> poison, i32 %i.bzz, i64 0
  %i.cab = shufflevector <4 x i32> %i.caa, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cac = or disjoint <4 x i32> %i.cab, <i32 0, i32 2, i32 0, i32 0>
  %i.cad = add <4 x i32> %i.cac, <i32 0, i32 0, i32 4, i32 6>
  %i.cae = udiv <4 x i32> %i.cad, splat (i32 3)   ; 2 uses
  %i.caf = add nuw nsw i64 %i.bzr, 3              ; 7 uses
  %i.cag = icmp samesign ule i64 %i.caf, %i.bxj
  %i.cah = getelementptr inbounds nuw [2 x i8], ptr %i.bxo, i64 %i.caf
  %i.cai = add nuw nsw i64 %i.bzr, 4              ; 7 uses
  %i.caj = icmp samesign ule i64 %i.cai, %i.bxj
  %i.cak = getelementptr inbounds nuw [2 x i8], ptr %i.bxo, i64 %i.cai
  %i.cal = insertelement <2 x i32> poison, i32 %i.bzz, i64 0
  %i.cam = shufflevector <2 x i32> %i.cal, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.can = add <2 x i32> %i.cam, <i32 8, i32 10>
  %i.cao = udiv <2 x i32> %i.can, splat (i32 3)
  %i.cap = shufflevector <2 x i32> %i.cao, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.caq = shufflevector <4 x i32> %i.cae, <4 x i32> %i.cap, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.car = and <4 x i32> %i.caq, splat (i32 1073741822)
  %i.cas = add nuw nsw <4 x i32> %i.car, <i32 1, i32 2, i32 1, i32 2> ; 4 uses
  %i.cat = extractelement <4 x i32> %i.cas, i64 0 ; 2 uses
  %i.cau = icmp samesign ult i32 %i.cat, %i.bxp
  call void @llvm.assume(i1 %i.cau)
  %i.cav = zext nneg i32 %i.cat to i64            ; 6 uses
  %i.caw = getelementptr inbounds nuw [2 x i8], ptr %i.bxu, i64 %i.cav
  %i.cax = load i16, ptr %i.caw, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.bzq)
  store i16 %i.cax, ptr %i.bzs, align 2, !tbaa !92
  %i.cay = extractelement <4 x i32> %i.cas, i64 1 ; 2 uses
  %i.caz = icmp samesign ult i32 %i.cay, %i.bxp
  call void @llvm.assume(i1 %i.caz)
  %i.cba = zext nneg i32 %i.cay to i64            ; 6 uses
  %i.cbb = getelementptr inbounds nuw [2 x i8], ptr %i.bxu, i64 %i.cba
  %i.cbc = load i16, ptr %i.cbb, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.bzu)
  store i16 %i.cbc, ptr %i.bzv, align 2, !tbaa !92
  %i.cbd = extractelement <4 x i32> %i.cas, i64 2 ; 2 uses
  %i.cbe = icmp samesign ult i32 %i.cbd, %i.bxp
  %i.cbf = zext nneg i32 %i.cbd to i64            ; 6 uses
  %i.cbg = getelementptr inbounds nuw [2 x i8], ptr %i.bxu, i64 %i.cbf
  %i.cbh = extractelement <4 x i32> %i.cas, i64 3 ; 2 uses
  %i.cbi = icmp samesign ult i32 %i.cbh, %i.bxp
  %i.cbj = zext nneg i32 %i.cbh to i64            ; 6 uses
  %i.cbk = getelementptr inbounds nuw [2 x i8], ptr %i.bxu, i64 %i.cbj
  %i.cbl = shufflevector <4 x i32> %i.cae, <4 x i32> %i.cap, <2 x i32> <i32 2, i32 5>
  %i.cbm = and <2 x i32> %i.cbl, splat (i32 1073741822)
  %i.cbn = add nuw nsw <2 x i32> %i.cbm, splat (i32 2) ; 2 uses
  %i.cbo = extractelement <2 x i32> %i.cbn, i64 0 ; 2 uses
  %i.cbp = icmp samesign ult i32 %i.cbo, %i.bxp
  %i.cbq = zext nneg i32 %i.cbo to i64            ; 6 uses
  %i.cbr = getelementptr inbounds nuw [2 x i8], ptr %i.bxx, i64 %i.cbq
  call void @llvm.assume(i1 %i.cbp)
  %i.cbs = load i16, ptr %i.cbr, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.bzx)
  store i16 %i.cbs, ptr %i.bzy, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cbe)
  %i.cbt = load i16, ptr %i.cbg, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cag)
  store i16 %i.cbt, ptr %i.cah, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cbi)
  %i.cbu = load i16, ptr %i.cbk, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.caj)
  store i16 %i.cbu, ptr %i.cak, align 2, !tbaa !92
  %i.cbv = extractelement <2 x i32> %i.cbn, i64 1 ; 2 uses
  %i.cbw = icmp samesign ult i32 %i.cbv, %i.bxp
  call void @llvm.assume(i1 %i.cbw)
  %i.cbx = zext nneg i32 %i.cbv to i64            ; 6 uses
  %i.cby = getelementptr inbounds nuw [2 x i8], ptr %i.bya, i64 %i.cbx
  %i.cbz = load i16, ptr %i.cby, align 2, !tbaa !92
  %i.cca = add nuw nsw i64 %i.bzr, 5              ; 7 uses
  %i.ccb = icmp samesign ule i64 %i.cca, %i.bxj
  call void @llvm.assume(i1 %i.ccb)
  %i.ccc = getelementptr inbounds nuw [2 x i8], ptr %i.bxo, i64 %i.cca
  store i16 %i.cbz, ptr %i.ccc, align 2, !tbaa !92
  %i.ccd = getelementptr inbounds nuw [2 x i8], ptr %i.bye, i64 %i.cav
  %i.cce = load i16, ptr %i.ccd, align 2, !tbaa !92
  %i.ccf = getelementptr inbounds nuw [2 x i8], ptr %i.byb, i64 %i.bzr
  store i16 %i.cce, ptr %i.ccf, align 2, !tbaa !92
  %i.ccg = getelementptr inbounds nuw [2 x i8], ptr %i.bye, i64 %i.cba
  %i.cch = load i16, ptr %i.ccg, align 2, !tbaa !92
  %i.cci = getelementptr inbounds nuw [2 x i8], ptr %i.byb, i64 %i.bzt
  store i16 %i.cch, ptr %i.cci, align 2, !tbaa !92
  %i.ccj = getelementptr inbounds nuw [2 x i8], ptr %i.bya, i64 %i.cbq
  %i.cck = load i16, ptr %i.ccj, align 2, !tbaa !92
  %i.ccl = getelementptr inbounds nuw [2 x i8], ptr %i.byb, i64 %i.bzw
  store i16 %i.cck, ptr %i.ccl, align 2, !tbaa !92
  %i.ccm = getelementptr inbounds nuw [2 x i8], ptr %i.bye, i64 %i.cbf
  %i.ccn = load i16, ptr %i.ccm, align 2, !tbaa !92
  %i.cco = getelementptr inbounds nuw [2 x i8], ptr %i.byb, i64 %i.caf
  store i16 %i.ccn, ptr %i.cco, align 2, !tbaa !92
  %i.ccp = getelementptr inbounds nuw [2 x i8], ptr %i.bye, i64 %i.cbj
  %i.ccq = load i16, ptr %i.ccp, align 2, !tbaa !92
  %i.ccr = getelementptr inbounds nuw [2 x i8], ptr %i.byb, i64 %i.cai
  store i16 %i.ccq, ptr %i.ccr, align 2, !tbaa !92
  %i.ccs = getelementptr inbounds nuw [2 x i8], ptr %i.bxx, i64 %i.cbx
  %i.cct = load i16, ptr %i.ccs, align 2, !tbaa !92
  %i.ccu = getelementptr inbounds nuw [2 x i8], ptr %i.byb, i64 %i.cca
  store i16 %i.cct, ptr %i.ccu, align 2, !tbaa !92
  %i.ccv = getelementptr inbounds nuw [2 x i8], ptr %i.byj, i64 %i.cav
  %i.ccw = load i16, ptr %i.ccv, align 2, !tbaa !92
  %i.ccx = getelementptr inbounds nuw [2 x i8], ptr %i.byg, i64 %i.bzr
  store i16 %i.ccw, ptr %i.ccx, align 2, !tbaa !92
  %i.ccy = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.cba
  %i.ccz = load i16, ptr %i.ccy, align 2, !tbaa !92
  %i.cda = getelementptr inbounds nuw [2 x i8], ptr %i.byg, i64 %i.bzt
  store i16 %i.ccz, ptr %i.cda, align 2, !tbaa !92
  %i.cdb = getelementptr inbounds nuw [2 x i8], ptr %i.byp, i64 %i.cbq
  %i.cdc = load i16, ptr %i.cdb, align 2, !tbaa !92
  %i.cdd = getelementptr inbounds nuw [2 x i8], ptr %i.byg, i64 %i.bzw
  store i16 %i.cdc, ptr %i.cdd, align 2, !tbaa !92
  %i.cde = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.cbf
  %i.cdf = load i16, ptr %i.cde, align 2, !tbaa !92
  %i.cdg = getelementptr inbounds nuw [2 x i8], ptr %i.byg, i64 %i.caf
  store i16 %i.cdf, ptr %i.cdg, align 2, !tbaa !92
  %i.cdh = getelementptr inbounds nuw [2 x i8], ptr %i.byj, i64 %i.cbj
  %i.cdi = load i16, ptr %i.cdh, align 2, !tbaa !92
  %i.cdj = getelementptr inbounds nuw [2 x i8], ptr %i.byg, i64 %i.cai
  store i16 %i.cdi, ptr %i.cdj, align 2, !tbaa !92
  %i.cdk = getelementptr inbounds nuw [2 x i8], ptr %i.byp, i64 %i.cbx
  %i.cdl = load i16, ptr %i.cdk, align 2, !tbaa !92
  %i.cdm = getelementptr inbounds nuw [2 x i8], ptr %i.byg, i64 %i.cca
  store i16 %i.cdl, ptr %i.cdm, align 2, !tbaa !92
  %i.cdn = getelementptr inbounds nuw [2 x i8], ptr %i.byt, i64 %i.cav
  %i.cdo = load i16, ptr %i.cdn, align 2, !tbaa !92
  %i.cdp = getelementptr inbounds nuw [2 x i8], ptr %i.byq, i64 %i.bzr
  store i16 %i.cdo, ptr %i.cdp, align 2, !tbaa !92
  %i.cdq = getelementptr inbounds nuw [2 x i8], ptr %i.byt, i64 %i.cba
  %i.cdr = load i16, ptr %i.cdq, align 2, !tbaa !92
  %i.cds = getelementptr inbounds nuw [2 x i8], ptr %i.byq, i64 %i.bzt
  store i16 %i.cdr, ptr %i.cds, align 2, !tbaa !92
  %i.cdt = getelementptr inbounds nuw [2 x i8], ptr %i.byj, i64 %i.cbq
  %i.cdu = load i16, ptr %i.cdt, align 2, !tbaa !92
  %i.cdv = getelementptr inbounds nuw [2 x i8], ptr %i.byq, i64 %i.bzw
  store i16 %i.cdu, ptr %i.cdv, align 2, !tbaa !92
  %i.cdw = getelementptr inbounds nuw [2 x i8], ptr %i.byt, i64 %i.cbf
  %i.cdx = load i16, ptr %i.cdw, align 2, !tbaa !92
  %i.cdy = getelementptr inbounds nuw [2 x i8], ptr %i.byq, i64 %i.caf
  store i16 %i.cdx, ptr %i.cdy, align 2, !tbaa !92
  %i.cdz = getelementptr inbounds nuw [2 x i8], ptr %i.byt, i64 %i.cbj
  %i.cea = load i16, ptr %i.cdz, align 2, !tbaa !92
  %i.ceb = getelementptr inbounds nuw [2 x i8], ptr %i.byq, i64 %i.cai
  store i16 %i.cea, ptr %i.ceb, align 2, !tbaa !92
  %i.cec = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.cbx
  %i.ced = load i16, ptr %i.cec, align 2, !tbaa !92
  %i.cee = getelementptr inbounds nuw [2 x i8], ptr %i.byq, i64 %i.cca
  store i16 %i.ced, ptr %i.cee, align 2, !tbaa !92
  %i.cef = getelementptr inbounds nuw [2 x i8], ptr %i.byx, i64 %i.cav
  %i.ceg = load i16, ptr %i.cef, align 2, !tbaa !92
  %i.ceh = getelementptr inbounds nuw [2 x i8], ptr %i.byu, i64 %i.bzr
  store i16 %i.ceg, ptr %i.ceh, align 2, !tbaa !92
  %i.cei = getelementptr inbounds nuw [2 x i8], ptr %i.byx, i64 %i.cba
  %i.cej = load i16, ptr %i.cei, align 2, !tbaa !92
  %i.cek = getelementptr inbounds nuw [2 x i8], ptr %i.byu, i64 %i.bzt
  store i16 %i.cej, ptr %i.cek, align 2, !tbaa !92
  %i.cel = getelementptr inbounds nuw [2 x i8], ptr %i.bza, i64 %i.cbq
  %i.cem = load i16, ptr %i.cel, align 2, !tbaa !92
  %i.cen = getelementptr inbounds nuw [2 x i8], ptr %i.byu, i64 %i.bzw
  store i16 %i.cem, ptr %i.cen, align 2, !tbaa !92
  %i.ceo = getelementptr inbounds nuw [2 x i8], ptr %i.byx, i64 %i.cbf
  %i.cep = load i16, ptr %i.ceo, align 2, !tbaa !92
  %i.ceq = getelementptr inbounds nuw [2 x i8], ptr %i.byu, i64 %i.caf
  store i16 %i.cep, ptr %i.ceq, align 2, !tbaa !92
  %i.cer = getelementptr inbounds nuw [2 x i8], ptr %i.byx, i64 %i.cbj
  %i.ces = load i16, ptr %i.cer, align 2, !tbaa !92
  %i.cet = getelementptr inbounds nuw [2 x i8], ptr %i.byu, i64 %i.cai
  store i16 %i.ces, ptr %i.cet, align 2, !tbaa !92
  %i.ceu = getelementptr inbounds nuw [2 x i8], ptr %i.bzd, i64 %i.cbx
  %i.cev = load i16, ptr %i.ceu, align 2, !tbaa !92
  %i.cew = getelementptr inbounds nuw [2 x i8], ptr %i.byu, i64 %i.cca
  store i16 %i.cev, ptr %i.cew, align 2, !tbaa !92
  %i.cex = getelementptr inbounds nuw [2 x i8], ptr %i.bza, i64 %i.cav
  %i.cey = load i16, ptr %i.cex, align 2, !tbaa !92
  %i.cez = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.bzr
  store i16 %i.cey, ptr %i.cez, align 2, !tbaa !92
  %i.cfa = getelementptr inbounds nuw [2 x i8], ptr %i.bzd, i64 %i.cba
  %i.cfb = load i16, ptr %i.cfa, align 2, !tbaa !92
  %i.cfc = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.bzt
  store i16 %i.cfb, ptr %i.cfc, align 2, !tbaa !92
  %i.cfd = getelementptr inbounds nuw [2 x i8], ptr %i.bzi, i64 %i.cbq
  %i.cfe = load i16, ptr %i.cfd, align 2, !tbaa !92
  %i.cff = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.bzw
  store i16 %i.cfe, ptr %i.cff, align 2, !tbaa !92
  %i.cfg = getelementptr inbounds nuw [2 x i8], ptr %i.bzd, i64 %i.cbf
  %i.cfh = load i16, ptr %i.cfg, align 2, !tbaa !92
  %i.cfi = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.caf
  store i16 %i.cfh, ptr %i.cfi, align 2, !tbaa !92
  %i.cfj = getelementptr inbounds nuw [2 x i8], ptr %i.bza, i64 %i.cbj
  %i.cfk = load i16, ptr %i.cfj, align 2, !tbaa !92
  %i.cfl = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cai
  store i16 %i.cfk, ptr %i.cfl, align 2, !tbaa !92
  %i.cfm = getelementptr inbounds nuw [2 x i8], ptr %i.bzi, i64 %i.cbx
  %i.cfn = load i16, ptr %i.cfm, align 2, !tbaa !92
  %i.cfo = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cca
  store i16 %i.cfn, ptr %i.cfo, align 2, !tbaa !92
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i142.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %12
  br i1 %.not.i.i142.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i, label %bb.ek, !llvm.loop !191

bb.el:                                            ; preds = %bb.eh
  br i1 %.not.i.i.i.i.i.i.i, label %bb.em, label %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i

bb.em:                                            ; preds = %bb.el
  %i.cfp = mul nuw nsw i32 %i.nz, %i.bwz
  %i.cfq = load i16, ptr %i.ob, align 2, !tbaa !112
  %i.cfr = zext i16 %i.cfq to i32                 ; 2 uses
  %i.cfs = icmp samesign uge i32 %i.cfp, %i.cfr
  call void @llvm.assume(i1 %i.cfs)
  %i.cft = mul nuw nsw i32 %i.bwz, %indvars110.i.i
  %i.cfu = sub nsw i32 %i.cfr, %i.cft
  br label %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i

_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i: ; preds = %bb.em, %bb.el
  %.0.i.i.i.i145.i.i.i = phi i32 [ %i.cfu, %bb.em ], [ %i.bwz, %bb.el ] ; 3 uses
  %i.cfv = and i32 %.0.i.i.i.i145.i.i.i, 1
  %i.cfw = icmp eq i32 %i.cfv, 0
  call void @llvm.assume(i1 %i.cfw)
  %.not58.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i145.i.i.i, 0
  br i1 %.not58.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i, label %.preheader54.lr.ph.i.i.i.i.i

.preheader54.lr.ph.i.i.i.i.i:                     ; preds = %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i
  %i.cfx = ashr exact i32 %.0.i.i.i.i145.i.i.i, 1
  %.sroa.049.0.copyload.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !229 ; 6 uses
  %.sroa.450.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.659.0..sroa_idx.i.i, align 8, !tbaa !94 ; 3 uses
  %.sroa.551.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.760.0..sroa_idx.i.i, align 4, !tbaa !94 ; 4 uses
  %.sroa.652.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.861.0..sroa_idx.i.i, align 8, !tbaa !94
  %i.cfy = mul nuw nsw i64 %indvars.iv.i20.i.i, 6 ; 5 uses
  %i.cfz = icmp ne i32 %.sroa.450.0.copyload.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.cfz)
  %i.cga = icmp sge i32 %.sroa.450.0.copyload.i.i.i.i.i, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.cga)
  %i.cgb = zext nneg i32 %.sroa.450.0.copyload.i.i.i.i.i to i64 ; 6 uses
  %i.cgc = zext nneg i32 %.sroa.652.0.copyload.i.i.i.i.i to i64 ; 8 uses
  %i.cgd = zext i32 %i.cfx to i64
  %i.cge = add nuw nsw i64 %i.cfy, 2              ; 4 uses
  %i.cgf = icmp samesign ule i64 %i.cge, %i.cgc
  call void @llvm.assume(i1 %i.cgf)
  %i.cgg = icmp samesign ult i64 %i.cfy, %i.cgc
  %i.cgh = mul nuw nsw i64 %i.cfy, %i.cgb
  %i.cgi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cgh ; 2 uses
  %i.cgj = load i32, ptr %i.ek, align 4, !tbaa !253 ; 2 uses
  %i.cgk = load i32, ptr %i.ej, align 8, !tbaa !252 ; 13 uses
  %i.cgl = icmp sge i32 %i.cgk, %i.cgj
  call void @llvm.assume(i1 %i.cgl)
  %i.cgm = zext nneg i32 %i.cgj to i64
  %i.cgn = shl nuw nsw i32 %i.cgk, 1
  %.sroa.0.0.copyload.i.i34.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !229, !noalias !272 ; 12 uses
  %i.cgo = zext nneg i32 %i.cgn to i64
  %i.cgp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cgo
  call void @llvm.assume(i1 %i.cgg)
  %i.cgq = mul nuw nsw i32 %i.cgk, 7
  %i.cgr = zext nneg i32 %i.cgq to i64
  %i.cgs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cgr
  %i.cgt = or disjoint i64 %i.cfy, 1              ; 2 uses
  %i.cgu = icmp samesign ult i64 %i.cgt, %i.cgc
  %i.cgv = mul nuw nsw i64 %i.cgt, %i.cgb
  %i.cgw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cgv ; 2 uses
  %i.cgx = shl nuw nsw i32 %i.cgk, 3
  %i.cgy = zext nneg i32 %i.cgx to i64
  %i.cgz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cgy
  call void @llvm.assume(i1 %i.cgu)
  %i.cha = mul nuw nsw i32 %i.cgk, 15
  %i.chb = zext nneg i32 %i.cha to i64
  %i.chc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chb
  %i.chd = add nuw nsw i64 %i.cfy, 4              ; 4 uses
  %i.che = icmp samesign ule i64 %i.chd, %i.cgc
  call void @llvm.assume(i1 %i.che)
  %i.chf = icmp samesign ult i64 %i.cge, %i.cgc
  %i.chg = mul nuw nsw i64 %i.cge, %i.cgb
  %i.chh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.chg ; 2 uses
  %i.chi = mul nuw nsw i32 %i.cgk, 3
  %i.chj = zext nneg i32 %i.chi to i64
  %i.chk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chj
  call void @llvm.assume(i1 %i.chf)
  %i.chl = mul nuw nsw i32 %i.cgk, 9
  %i.chm = zext nneg i32 %i.chl to i64
  %i.chn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chm
  %i.cho = or disjoint i64 %i.cge, 1              ; 2 uses
  %i.chp = icmp samesign ult i64 %i.cho, %i.cgc
  %i.chq = mul nuw nsw i64 %i.cho, %i.cgb
  %i.chr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.chq ; 2 uses
  %i.chs = mul nuw nsw i32 %i.cgk, 10
  %i.cht = zext nneg i32 %i.chs to i64
  %i.chu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cht
  call void @llvm.assume(i1 %i.chp)
  %i.chv = shl nuw nsw i32 %i.cgk, 4
  %i.chw = zext nneg i32 %i.chv to i64
  %i.chx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chw
  %i.chy = icmp samesign ult i64 %i.chd, %i.cgc
  %i.chz = mul nuw nsw i64 %i.chd, %i.cgb
  %i.cia = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.chz ; 2 uses
  %i.cib = shl nuw nsw i32 %i.cgk, 2
  %i.cic = zext nneg i32 %i.cib to i64
  %i.cid = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cic
  call void @llvm.assume(i1 %i.chy)
  %i.cie = mul nuw nsw i32 %i.cgk, 11
  %i.cif = zext nneg i32 %i.cie to i64
  %i.cig = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cif
  %i.cih = or disjoint i64 %i.chd, 1              ; 2 uses
  %i.cii = icmp samesign ult i64 %i.cih, %i.cgc
  %i.cij = mul nuw nsw i64 %i.cih, %i.cgb
  %i.cik = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cij ; 2 uses
  %i.cil = mul nuw nsw i32 %i.cgk, 12
  %i.cim = zext nneg i32 %i.cil to i64
  %i.cin = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cim
  call void @llvm.assume(i1 %i.cii)
  %i.cio = mul nuw nsw i32 %i.cgk, 17
  %i.cip = zext nneg i32 %i.cio to i64
  %i.ciq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cip
  br label %bb.en

bb.en:                                            ; preds = %bb.en, %.preheader54.lr.ph.i.i.i.i.i
  %indvars.iv.i.i146.i.i.i = phi i64 [ 0, %.preheader54.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i147.i.i.i, %bb.en ] ; 2 uses
  %indvars.iv.next.i.i147.i.i.i = add nuw nsw i64 %indvars.iv.i.i146.i.i.i, 1 ; 15 uses
  %.val.val.i.i148.i.i.i = load i16, ptr %i.oa, align 4, !tbaa !114
  %i.cir = zext i16 %.val.val.i.i148.i.i.i to i32
  %i.cis = mul nuw nsw i32 %i.cir, %indvars110.i.i
  %indvars.iv.tr.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i146.i.i.i to i32
  %i.cit = shl nuw nsw i32 %indvars.iv.tr.i.i.i.i.i, 1 ; 3 uses
  %i.ciu = add nuw nsw i32 %i.cis, %i.cit         ; 2 uses
  %.val33.val.i.i.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %i.civ = zext i16 %.val33.val.i.i.i.i.i to i64
  %i.ciw = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.civ
  call void @llvm.assume(i1 %i.ciw)
  %i.cix = zext nneg i32 %i.ciu to i64            ; 3 uses
  %i.ciy = icmp samesign ult i64 %indvars.iv.next.i.i147.i.i.i, %i.cgm
  call void @llvm.assume(i1 %i.ciy)
  %i.ciz = getelementptr inbounds nuw [2 x i8], ptr %i.cgp, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cja = load i16, ptr %i.ciz, align 2, !tbaa !92
  %i.cjb = getelementptr inbounds nuw [2 x i8], ptr %i.cgi, i64 %i.cix
  store i16 %i.cja, ptr %i.cjb, align 2, !tbaa !92
  %i.cjc = getelementptr inbounds nuw [2 x i8], ptr %i.cgs, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjd = load i16, ptr %i.cjc, align 2, !tbaa !92
  %i.cje = add nuw nsw i64 %i.cix, 1              ; 2 uses
  %i.cjf = icmp samesign ult i32 %i.ciu, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.cjf)
  %i.cjg = getelementptr inbounds nuw [2 x i8], ptr %i.cgi, i64 %i.cje
  store i16 %i.cjd, ptr %i.cjg, align 2, !tbaa !92
  %i.cjh = getelementptr inbounds nuw [2 x i8], ptr %i.cgz, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cji = load i16, ptr %i.cjh, align 2, !tbaa !92
  %i.cjj = getelementptr inbounds nuw [2 x i8], ptr %i.cgw, i64 %i.cix
  store i16 %i.cji, ptr %i.cjj, align 2, !tbaa !92
  %i.cjk = getelementptr inbounds nuw [2 x i8], ptr %i.chc, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjl = load i16, ptr %i.cjk, align 2, !tbaa !92
  %i.cjm = getelementptr inbounds nuw [2 x i8], ptr %i.cgw, i64 %i.cje
  store i16 %i.cjl, ptr %i.cjm, align 2, !tbaa !92
  %.val.val.1.i.i.i.i.i = load i16, ptr %i.oa, align 4, !tbaa !114
  %i.cjn = zext i16 %.val.val.1.i.i.i.i.i to i32
  %i.cjo = mul nuw nsw i32 %i.cjn, %indvars110.i.i
  %i.cjp = add nuw nsw i32 %i.cjo, %i.cit         ; 2 uses
  %.val33.val.1.i.i.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %i.cjq = zext i16 %.val33.val.1.i.i.i.i.i to i64
  %i.cjr = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.cjq
  call void @llvm.assume(i1 %i.cjr)
  %i.cjs = zext nneg i32 %i.cjp to i64            ; 3 uses
  %i.cjt = getelementptr inbounds nuw [2 x i8], ptr %i.chk, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cju = load i16, ptr %i.cjt, align 2, !tbaa !92
  %i.cjv = getelementptr inbounds nuw [2 x i8], ptr %i.chh, i64 %i.cjs
  store i16 %i.cju, ptr %i.cjv, align 2, !tbaa !92
  %i.cjw = getelementptr inbounds nuw [2 x i8], ptr %i.chn, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjx = load i16, ptr %i.cjw, align 2, !tbaa !92
  %i.cjy = add nuw nsw i64 %i.cjs, 1              ; 2 uses
  %i.cjz = icmp samesign ult i32 %i.cjp, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.cjz)
  %i.cka = getelementptr inbounds nuw [2 x i8], ptr %i.chh, i64 %i.cjy
  store i16 %i.cjx, ptr %i.cka, align 2, !tbaa !92
  %i.ckb = getelementptr inbounds nuw [2 x i8], ptr %i.chu, i64 %indvars.iv.next.i.i147.i.i.i
  %i.ckc = load i16, ptr %i.ckb, align 2, !tbaa !92
  %i.ckd = getelementptr inbounds nuw [2 x i8], ptr %i.chr, i64 %i.cjs
  store i16 %i.ckc, ptr %i.ckd, align 2, !tbaa !92
  %i.cke = getelementptr inbounds nuw [2 x i8], ptr %i.chx, i64 %indvars.iv.next.i.i147.i.i.i
  %i.ckf = load i16, ptr %i.cke, align 2, !tbaa !92
  %i.ckg = getelementptr inbounds nuw [2 x i8], ptr %i.chr, i64 %i.cjy
  store i16 %i.ckf, ptr %i.ckg, align 2, !tbaa !92
  %.val.val.2.i.i.i.i.i = load i16, ptr %i.oa, align 4, !tbaa !114
  %i.ckh = zext i16 %.val.val.2.i.i.i.i.i to i32
  %i.cki = mul nuw nsw i32 %i.ckh, %indvars110.i.i
  %i.ckj = add nuw nsw i32 %i.cki, %i.cit         ; 2 uses
  %.val33.val.2.i.i.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %i.ckk = zext i16 %.val33.val.2.i.i.i.i.i to i64
  %i.ckl = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.ckk
  call void @llvm.assume(i1 %i.ckl)
  %i.ckm = zext nneg i32 %i.ckj to i64            ; 3 uses
  %i.ckn = getelementptr inbounds nuw [2 x i8], ptr %i.cid, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cko = load i16, ptr %i.ckn, align 2, !tbaa !92
  %i.ckp = getelementptr inbounds nuw [2 x i8], ptr %i.cia, i64 %i.ckm
  store i16 %i.cko, ptr %i.ckp, align 2, !tbaa !92
  %i.ckq = getelementptr inbounds nuw [2 x i8], ptr %i.cig, i64 %indvars.iv.next.i.i147.i.i.i
  %i.ckr = load i16, ptr %i.ckq, align 2, !tbaa !92
  %i.cks = add nuw nsw i64 %i.ckm, 1              ; 2 uses
  %i.ckt = icmp samesign ult i32 %i.ckj, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.ckt)
  %i.cku = getelementptr inbounds nuw [2 x i8], ptr %i.cia, i64 %i.cks
  store i16 %i.ckr, ptr %i.cku, align 2, !tbaa !92
  %i.ckv = getelementptr inbounds nuw [2 x i8], ptr %i.cin, i64 %indvars.iv.next.i.i147.i.i.i
  %i.ckw = load i16, ptr %i.ckv, align 2, !tbaa !92
  %i.ckx = getelementptr inbounds nuw [2 x i8], ptr %i.cik, i64 %i.ckm
end_hunk_2
