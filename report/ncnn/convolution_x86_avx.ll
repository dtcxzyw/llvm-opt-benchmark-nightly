inline.NumInlined: 392
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 259
begin_hunk_0_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined.14:bb.a
  %i.ut = getelementptr inbounds nuw i8, ptr %.8.lcssa.i, i64 16 ; 2 uses
  %i.uu = add nuw nsw i32 %.2658.lcssa.i, 1
  br label %.lr.ph1061.split.us1064.i.prol.loopexit

.lr.ph1061.split.us1064.i.prol.loopexit:          ; preds = %.lr.ph1061.split.us1064.i.prol, %.lr.ph1061.split.us1064.i.preheader
  %.lcssa385.unr = phi ptr [ poison, %.lr.ph1061.split.us1064.i.preheader ], [ %i.ut, %.lr.ph1061.split.us1064.i.prol ]
  %.91060.us1065.i.unr = phi ptr [ %.8.lcssa.i, %.lr.ph1061.split.us1064.i.preheader ], [ %i.ut, %.lr.ph1061.split.us1064.i.prol ]
  %.96531059.us1066.i.unr = phi ptr [ %.6650.lcssa.i, %.lr.ph1061.split.us1064.i.preheader ], [ %i.us, %.lr.ph1061.split.us1064.i.prol ]
  %.36591058.us1067.i.unr = phi i32 [ %.2658.lcssa.i, %.lr.ph1061.split.us1064.i.preheader ], [ %i.uu, %.lr.ph1061.split.us1064.i.prol ]
  %i.uv = icmp eq i32 %.sroa.speculated114, %.neg
  br i1 %i.uv, label %._crit_edge1062.i, label %.lr.ph1061.split.us1064.i

.thread975.us.i.preheader:                        ; preds = %.lr.ph1061.i
  %i.uw = sub i32 %.sroa.speculated114, %.2658.lcssa.i
  %xtraiter405 = and i32 %i.uw, 7                 ; 2 uses
  %lcmp.mod406.not = icmp eq i32 %xtraiter405, 0
  br i1 %lcmp.mod406.not, label %.thread975.us.i.prol.loopexit, label %.thread975.us.i.prol

.thread975.us.i.prol:                             ; preds = %.thread975.us.i.preheader, %.thread975.us.i.prol
  %.91060.us.i.prol = phi ptr [ %i.uz, %.thread975.us.i.prol ], [ %.8.lcssa.i, %.thread975.us.i.preheader ] ; 2 uses
  %.96531059.us.i.prol = phi ptr [ %i.uy, %.thread975.us.i.prol ], [ %.6650.lcssa.i, %.thread975.us.i.preheader ] ; 2 uses
  %.36591058.us.i.prol = phi i32 [ %i.va, %.thread975.us.i.prol ], [ %.2658.lcssa.i, %.thread975.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.thread975.us.i.prol ], [ 0, %.thread975.us.i.preheader ]
  %i.ux = load <2 x i64>, ptr %.91060.us.i.prol, align 16, !tbaa !316
  store <2 x i64> %i.ux, ptr %.96531059.us.i.prol, align 16, !tbaa !316
  %i.uy = getelementptr inbounds nuw i8, ptr %.96531059.us.i.prol, i64 16 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.91060.us.i.prol, i64 16 ; 3 uses
  %i.va = add nuw nsw i32 %.36591058.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter405
  br i1 %prol.iter.cmp.not, label %.thread975.us.i.prol.loopexit, label %.thread975.us.i.prol, !llvm.loop !2005

.thread975.us.i.prol.loopexit:                    ; preds = %.thread975.us.i.prol, %.thread975.us.i.preheader
  %.lcssa386.unr = phi ptr [ poison, %.thread975.us.i.preheader ], [ %i.uz, %.thread975.us.i.prol ]
  %.91060.us.i.unr = phi ptr [ %.8.lcssa.i, %.thread975.us.i.preheader ], [ %i.uz, %.thread975.us.i.prol ]
  %.96531059.us.i.unr = phi ptr [ %.6650.lcssa.i, %.thread975.us.i.preheader ], [ %i.uy, %.thread975.us.i.prol ]
  %.36591058.us.i.unr = phi i32 [ %.2658.lcssa.i, %.thread975.us.i.preheader ], [ %i.va, %.thread975.us.i.prol ]
  %i.vb = sub i32 %.2658.lcssa.i, %.sroa.speculated114
  %i.vc = icmp ugt i32 %i.vb, -8
  br i1 %i.vc, label %._crit_edge1062.i, label %.thread975.us.i

.lr.ph1061.split.preheader.i:                     ; preds = %.lr.ph1061.i
  %scevgep.i = getelementptr i8, ptr %.8.lcssa.i, i64 16
  %i.vd = xor i32 %.2658.lcssa.i, -1
  %i.ve = add i32 %.sroa.speculated114, %i.vd
  %i.vf = zext i32 %i.ve to i64
  %i.vg = shl nuw nsw i64 %i.vf, 4
  %scevgep1186.i = getelementptr i8, ptr %scevgep.i, i64 %i.vg
  br label %._crit_edge1062.i

.thread975.us.i:                                  ; preds = %.thread975.us.i.prol.loopexit, %.thread975.us.i
  %.91060.us.i = phi ptr [ %i.we, %.thread975.us.i ], [ %.91060.us.i.unr, %.thread975.us.i.prol.loopexit ] ; 9 uses
  %.96531059.us.i = phi ptr [ %i.wd, %.thread975.us.i ], [ %.96531059.us.i.unr, %.thread975.us.i.prol.loopexit ] ; 9 uses
  %.36591058.us.i = phi i32 [ %i.wf, %.thread975.us.i ], [ %.36591058.us.i.unr, %.thread975.us.i.prol.loopexit ]
  %i.vh = load <2 x i64>, ptr %.91060.us.i, align 16, !tbaa !316
  store <2 x i64> %i.vh, ptr %.96531059.us.i, align 16, !tbaa !316
  %i.vi = getelementptr inbounds nuw i8, ptr %.96531059.us.i, i64 16
  %i.vj = getelementptr inbounds nuw i8, ptr %.91060.us.i, i64 16
  %i.vk = load <2 x i64>, ptr %i.vj, align 16, !tbaa !316
  store <2 x i64> %i.vk, ptr %i.vi, align 16, !tbaa !316
  %i.vl = getelementptr inbounds nuw i8, ptr %.96531059.us.i, i64 32
  %i.vm = getelementptr inbounds nuw i8, ptr %.91060.us.i, i64 32
  %i.vn = load <2 x i64>, ptr %i.vm, align 16, !tbaa !316
  store <2 x i64> %i.vn, ptr %i.vl, align 16, !tbaa !316
  %i.vo = getelementptr inbounds nuw i8, ptr %.96531059.us.i, i64 48
  %i.vp = getelementptr inbounds nuw i8, ptr %.91060.us.i, i64 48
  %i.vq = load <2 x i64>, ptr %i.vp, align 16, !tbaa !316
  store <2 x i64> %i.vq, ptr %i.vo, align 16, !tbaa !316
  %i.vr = getelementptr inbounds nuw i8, ptr %.96531059.us.i, i64 64
  %i.vs = getelementptr inbounds nuw i8, ptr %.91060.us.i, i64 64
  %i.vt = load <2 x i64>, ptr %i.vs, align 16, !tbaa !316
  store <2 x i64> %i.vt, ptr %i.vr, align 16, !tbaa !316
  %i.vu = getelementptr inbounds nuw i8, ptr %.96531059.us.i, i64 80
  %i.vv = getelementptr inbounds nuw i8, ptr %.91060.us.i, i64 80
  %i.vw = load <2 x i64>, ptr %i.vv, align 16, !tbaa !316
  store <2 x i64> %i.vw, ptr %i.vu, align 16, !tbaa !316
  %i.vx = getelementptr inbounds nuw i8, ptr %.96531059.us.i, i64 96
  %i.vy = getelementptr inbounds nuw i8, ptr %.91060.us.i, i64 96
  %i.vz = load <2 x i64>, ptr %i.vy, align 16, !tbaa !316
  store <2 x i64> %i.vz, ptr %i.vx, align 16, !tbaa !316
  %i.wa = getelementptr inbounds nuw i8, ptr %.96531059.us.i, i64 112
  %i.wb = getelementptr inbounds nuw i8, ptr %.91060.us.i, i64 112
  %i.wc = load <2 x i64>, ptr %i.wb, align 16, !tbaa !316
  store <2 x i64> %i.wc, ptr %i.wa, align 16, !tbaa !316
  %i.wd = getelementptr inbounds nuw i8, ptr %.96531059.us.i, i64 128
  %i.we = getelementptr inbounds nuw i8, ptr %.91060.us.i, i64 128 ; 2 uses
  %i.wf = add nuw nsw i32 %.36591058.us.i, 8      ; 2 uses
  %exitcond1185.not.i.7 = icmp eq i32 %i.wf, %.sroa.speculated114
  br i1 %exitcond1185.not.i.7, label %._crit_edge1062.i, label %.thread975.us.i, !llvm.loop !2006

.lr.ph1061.split.us1064.i:                        ; preds = %.lr.ph1061.split.us1064.i.prol.loopexit, %.lr.ph1061.split.us1064.i
  %.91060.us1065.i = phi ptr [ %i.wr, %.lr.ph1061.split.us1064.i ], [ %.91060.us1065.i.unr, %.lr.ph1061.split.us1064.i.prol.loopexit ] ; 3 uses
  %.96531059.us1066.i = phi ptr [ %i.wq, %.lr.ph1061.split.us1064.i ], [ %.96531059.us1066.i.unr, %.lr.ph1061.split.us1064.i.prol.loopexit ] ; 6 uses
  %.36591058.us1067.i = phi i32 [ %i.ws, %.lr.ph1061.split.us1064.i ], [ %.36591058.us1067.i.unr, %.lr.ph1061.split.us1064.i.prol.loopexit ]
  %i.wg = load <4 x i32>, ptr %.91060.us1065.i, align 16, !tbaa !316 ; 4 uses
  %.sroa.0.0.vec.extract.us.i = extractelement <4 x i32> %i.wg, i64 0
  store i32 %.sroa.0.0.vec.extract.us.i, ptr %.96531059.us1066.i, align 4, !tbaa !67
  %.sroa.0.4.vec.extract.us.i = extractelement <4 x i32> %i.wg, i64 1
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %.96531059.us1066.i, i64 %i.dc
  store i32 %.sroa.0.4.vec.extract.us.i, ptr %i.wh, align 4, !tbaa !67
  %.sroa.0.8.vec.extract.us.i = extractelement <4 x i32> %i.wg, i64 2
  %i.wi = getelementptr inbounds nuw i8, ptr %.96531059.us1066.i, i64 %.idx673.i
  store i32 %.sroa.0.8.vec.extract.us.i, ptr %i.wi, align 4, !tbaa !67
  %.sroa.0.12.vec.extract.us.i = extractelement <4 x i32> %i.wg, i64 3
  %i.wj = getelementptr inbounds nuw i8, ptr %.96531059.us1066.i, i64 %.idx674.i
  store i32 %.sroa.0.12.vec.extract.us.i, ptr %i.wj, align 4, !tbaa !67
  %i.wk = getelementptr inbounds nuw i8, ptr %.96531059.us1066.i, i64 4 ; 4 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.91060.us1065.i, i64 16
  %i.wm = load <4 x i32>, ptr %i.wl, align 16, !tbaa !316 ; 4 uses
  %.sroa.0.0.vec.extract.us.i.1 = extractelement <4 x i32> %i.wm, i64 0
  store i32 %.sroa.0.0.vec.extract.us.i.1, ptr %i.wk, align 4, !tbaa !67
  %.sroa.0.4.vec.extract.us.i.1 = extractelement <4 x i32> %i.wm, i64 1
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.dc
  store i32 %.sroa.0.4.vec.extract.us.i.1, ptr %i.wn, align 4, !tbaa !67
  %.sroa.0.8.vec.extract.us.i.1 = extractelement <4 x i32> %i.wm, i64 2
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wk, i64 %.idx673.i
  store i32 %.sroa.0.8.vec.extract.us.i.1, ptr %i.wo, align 4, !tbaa !67
  %.sroa.0.12.vec.extract.us.i.1 = extractelement <4 x i32> %i.wm, i64 3
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wk, i64 %.idx674.i
  store i32 %.sroa.0.12.vec.extract.us.i.1, ptr %i.wp, align 4, !tbaa !67
  %i.wq = getelementptr inbounds nuw i8, ptr %.96531059.us1066.i, i64 8
  %i.wr = getelementptr inbounds nuw i8, ptr %.91060.us1065.i, i64 32 ; 2 uses
  %i.ws = add nuw nsw i32 %.36591058.us1067.i, 2  ; 2 uses
  %exitcond1184.not.i.1 = icmp eq i32 %i.ws, %.sroa.speculated114
  br i1 %exitcond1184.not.i.1, label %._crit_edge1062.i, label %.lr.ph1061.split.us1064.i, !llvm.loop !2006

.lr.ph1054.i:                                     ; preds = %.preheader993.i, %bb.ad
  %.81053.i = phi ptr [ %i.xi, %bb.ad ], [ %.7.lcssa.i, %.preheader993.i ] ; 3 uses
  %.66501052.i = phi ptr [ %.8652.i, %bb.ad ], [ %.3647.lcssa.i, %.preheader993.i ] ; 9 uses
  %.26581051.i = phi i32 [ %i.xj, %bb.ad ], [ %.1657.lcssa.i, %.preheader993.i ]
  %i.wt = load <4 x i32>, ptr %.81053.i, align 16, !tbaa !316 ; 6 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.81053.i, i64 16
  %i.wv = load <4 x i32>, ptr %i.wu, align 16, !tbaa !316 ; 6 uses
  switch i32 %i.db, label %bb.ad [
    i32 4, label %.thread973.i
    i32 1, label %bb.ac
  ]

.thread973.i:                                     ; preds = %.lr.ph1054.i
  %i.ww = shufflevector <4 x i32> %i.wv, <4 x i32> %i.wt, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.wx = shufflevector <4 x i32> %i.wt, <4 x i32> %i.wv, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %i.wx, ptr %.66501052.i, align 16, !tbaa !316
  %i.wy = getelementptr inbounds nuw i8, ptr %.66501052.i, i64 16
  store <4 x i32> %i.ww, ptr %i.wy, align 16, !tbaa !316
  %i.wz = getelementptr inbounds nuw i8, ptr %.66501052.i, i64 32
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph1054.i
  %i.xa = shufflevector <4 x i32> %i.wt, <4 x i32> %i.wv, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.xa, ptr %.66501052.i, align 4, !tbaa !67
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %.66501052.i, i64 %i.dc
  %i.xc = shufflevector <4 x i32> %i.wv, <4 x i32> %i.wt, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.xc, ptr %i.xb, align 4, !tbaa !67
  %i.xd = getelementptr inbounds nuw i8, ptr %.66501052.i, i64 %.idx673.i
  %i.xe = shufflevector <4 x i32> %i.wt, <4 x i32> %i.wv, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.xe, ptr %i.xd, align 4, !tbaa !67
  %i.xf = getelementptr inbounds nuw i8, ptr %.66501052.i, i64 %.idx674.i
  %i.xg = shufflevector <4 x i32> %i.wv, <4 x i32> %i.wt, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.xg, ptr %i.xf, align 4, !tbaa !67
  %i.xh = getelementptr inbounds nuw i8, ptr %.66501052.i, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread973.i, %.lr.ph1054.i
  %.8652.i = phi ptr [ %i.xh, %bb.ac ], [ %.66501052.i, %.lr.ph1054.i ], [ %i.wz, %.thread973.i ] ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.81053.i, i64 32 ; 2 uses
  %i.xj = add nuw nsw i32 %.26581051.i, 2         ; 3 uses
  %i.xk = or disjoint i32 %i.xj, 1
  %i.xl = icmp slt i32 %i.xk, %.sroa.speculated114
  br i1 %i.xl, label %.lr.ph1054.i, label %.preheader992.i, !llvm.loop !2007

._crit_edge1062.i:                                ; preds = %.lr.ph1061.split.us1064.i.prol.loopexit, %.lr.ph1061.split.us1064.i, %.thread975.us.i.prol.loopexit, %.thread975.us.i, %.lr.ph1061.split.preheader.i, %.preheader992.i
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader992.i ], [ %scevgep1186.i, %.lr.ph1061.split.preheader.i ], [ %i.we, %.thread975.us.i ], [ %.lcssa386.unr, %.thread975.us.i.prol.loopexit ], [ %.lcssa385.unr, %.lr.ph1061.split.us1064.i.prol.loopexit ], [ %i.wr, %.lr.ph1061.split.us1064.i ] ; 2 uses
  %indvars.iv.next1188.i = add nuw nsw i64 %indvars.iv1187.i, 4 ; 3 uses
  %i.xm = icmp slt i64 %indvars.iv.next1188.i, %invariant.op.i
  br i1 %i.xm, label %bb.x, label %.preheader991.loopexit.i, !llvm.loop !2008

.preheader987.loopexit.i:                         ; preds = %._crit_edge1102.i
  %i.xn = trunc nsw i64 %indvars.iv.next1192.i to i32
  br label %.preheader987.i

.preheader987.i:                                  ; preds = %.preheader987.loopexit.i, %.preheader991.i
  %.2609.lcssa.i = phi i32 [ %.1608.lcssa.i, %.preheader991.i ], [ %i.xn, %.preheader987.loopexit.i ] ; 2 uses
  %.10.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader991.i ], [ %.14.lcssa.i, %.preheader987.loopexit.i ]
  %i.xo = icmp slt i32 %.2609.lcssa.i, %.sroa.speculated118
  br i1 %i.xo, label %.lr.ph1139.i, label %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit

.lr.ph1139.i:                                     ; preds = %.preheader987.i
  %i.xp = sext i32 %.045159 to i64
  %i.xq = icmp sgt i32 %.sroa.speculated114, 7
  %i.xr = and i32 %.sroa.speculated114, -8        ; 2 uses
  %i.xs = sext i32 %.2609.lcssa.i to i64
  %i.xt = add i32 %.sroa.speculated114, -2
  %i.xu = add i32 %.sroa.speculated114, -8        ; 2 uses
  %i.xv = lshr i32 %i.xu, 3
  %i.xw = add nuw nsw i32 %i.xv, 1                ; 2 uses
  %xtraiter410 = and i32 %i.xw, 3                 ; 3 uses
  %i.xx = icmp ult i32 %i.xu, 24
  %unroll_iter = and i32 %i.xw, 1073741820
  %lcmp.mod411.not = icmp eq i32 %xtraiter410, 0
  %lcmp.mod414 = icmp ne i32 %xtraiter410, 0
  %16 = add i32 %.sroa.speculated114, -2
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge1102.i, %.lr.ph1106.i
  %indvars.iv1191.i = phi i64 [ %i.oo, %.lr.ph1106.i ], [ %indvars.iv.next1192.i, %._crit_edge1102.i ] ; 2 uses
  %.101105.i = phi ptr [ %.5.lcssa.i, %.lr.ph1106.i ], [ %.14.lcssa.i, %._crit_edge1102.i ] ; 2 uses
  %i.xy = load ptr, ptr %12, align 8, !tbaa !18
  %i.xz = add nsw i64 %indvars.iv1191.i, %i.ci
  %i.ya = mul i64 %i.xz, %i.dc
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %i.ya
  %i.yc = getelementptr inbounds [4 x i8], ptr %i.yb, i64 %i.ol ; 2 uses
  br i1 %i.om, label %.lr.ph1080.i, label %.preheader990.i

.preheader990.i:                                  ; preds = %.lr.ph1080.i, %bb.ae
  %.0664.lcssa.i = phi i32 [ 0, %bb.ae ], [ %i.on, %.lr.ph1080.i ] ; 3 uses
  %.0660.lcssa.i = phi ptr [ %i.yc, %bb.ae ], [ %i.zf, %.lr.ph1080.i ] ; 2 uses
  %.11.lcssa.i = phi ptr [ %.101105.i, %bb.ae ], [ %i.zg, %.lr.ph1080.i ] ; 2 uses
  %i.yd = or disjoint i32 %.0664.lcssa.i, 3
  %i.ye = icmp slt i32 %i.yd, %.sroa.speculated114
  br i1 %i.ye, label %.lr.ph1087.i, label %.preheader989.i

.lr.ph1080.i:                                     ; preds = %bb.ae, %.lr.ph1080.i
  %.111078.i = phi ptr [ %i.zg, %.lr.ph1080.i ], [ %.101105.i, %bb.ae ] ; 5 uses
  %.06601077.i = phi ptr [ %i.zf, %.lr.ph1080.i ], [ %i.yc, %bb.ae ] ; 4 uses
  %.06641076.i = phi i32 [ %i.zh, %.lr.ph1080.i ], [ 0, %bb.ae ]
  %i.yf = load <4 x i32>, ptr %.111078.i, align 16, !tbaa !316 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.111078.i, i64 16
  %i.yh = load <4 x i32>, ptr %i.yg, align 16, !tbaa !316 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.111078.i, i64 32
  %i.yj = load <4 x i32>, ptr %i.yi, align 16, !tbaa !316 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.111078.i, i64 48
  %i.yl = load <4 x i32>, ptr %i.yk, align 16, !tbaa !316 ; 2 uses
  %i.ym = shufflevector <4 x i32> %i.yf, <4 x i32> %i.yj, <4 x i32> <i32 0, i32 5, i32 1, i32 4>
  %i.yn = bitcast <4 x i32> %i.ym to <2 x i64>    ; 2 uses
  %i.yo = shufflevector <4 x i32> %i.yf, <4 x i32> %i.yj, <4 x i32> <i32 2, i32 7, i32 3, i32 6>
  %i.yp = bitcast <4 x i32> %i.yo to <2 x i64>    ; 2 uses
  %i.yq = shufflevector <4 x i32> %i.yh, <4 x i32> %i.yl, <4 x i32> <i32 0, i32 5, i32 1, i32 4>
  %i.yr = bitcast <4 x i32> %i.yq to <2 x i64>    ; 2 uses
  %i.ys = shufflevector <4 x i32> %i.yh, <4 x i32> %i.yl, <4 x i32> <i32 2, i32 7, i32 3, i32 6>
  %i.yt = bitcast <4 x i32> %i.ys to <2 x i64>    ; 2 uses
  %i.yu = shufflevector <2 x i64> %i.yn, <2 x i64> %i.yp, <2 x i32> <i32 0, i32 2>
  %i.yv = shufflevector <2 x i64> %i.yr, <2 x i64> %i.yt, <2 x i32> <i32 0, i32 2>
  %i.yw = shufflevector <2 x i64> %i.yn, <2 x i64> %i.yp, <2 x i32> <i32 1, i32 3>
  %i.yx = shufflevector <2 x i64> %i.yr, <2 x i64> %i.yt, <2 x i32> <i32 1, i32 3>
  %i.yy = bitcast <2 x i64> %i.yw to <4 x i32>
  %i.yz = shufflevector <4 x i32> %i.yy, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.za = bitcast <2 x i64> %i.yx to <4 x i32>
  %i.zb = shufflevector <4 x i32> %i.za, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <2 x i64> %i.yu, ptr %.06601077.i, align 1, !tbaa !316
  %i.zc = getelementptr inbounds nuw i8, ptr %.06601077.i, i64 16
  store <2 x i64> %i.yv, ptr %i.zc, align 1, !tbaa !316
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %.06601077.i, i64 %i.dc ; 2 uses
  store <4 x i32> %i.yz, ptr %i.zd, align 1, !tbaa !316
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 16
  store <4 x i32> %i.zb, ptr %i.ze, align 1, !tbaa !316
  %i.zf = getelementptr inbounds nuw i8, ptr %.06601077.i, i64 32 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.111078.i, i64 64 ; 2 uses
  %i.zh = add nuw nsw i32 %.06641076.i, 8         ; 2 uses
  %i.zi = or disjoint i32 %i.zh, 7
  %i.zj = icmp slt i32 %i.zi, %.sroa.speculated114
  br i1 %i.zj, label %.lr.ph1080.i, label %.preheader990.i, !llvm.loop !2009

.preheader989.i:                                  ; preds = %.lr.ph1087.i, %.preheader990.i
  %.1665.lcssa.i = phi i32 [ %.0664.lcssa.i, %.preheader990.i ], [ %i.aaa, %.lr.ph1087.i ] ; 3 uses
  %.1661.lcssa.i = phi ptr [ %.0660.lcssa.i, %.preheader990.i ], [ %i.zy, %.lr.ph1087.i ] ; 2 uses
  %.12.lcssa.i = phi ptr [ %.11.lcssa.i, %.preheader990.i ], [ %i.zz, %.lr.ph1087.i ] ; 2 uses
  %i.zk = or disjoint i32 %.1665.lcssa.i, 1
  %i.zl = icmp slt i32 %i.zk, %.sroa.speculated114
  br i1 %i.zl, label %.lr.ph1094.i, label %.preheader988.i

.lr.ph1087.i:                                     ; preds = %.preheader990.i, %.lr.ph1087.i
  %.121086.i = phi ptr [ %i.zz, %.lr.ph1087.i ], [ %.11.lcssa.i, %.preheader990.i ] ; 3 uses
  %.16611085.i = phi ptr [ %i.zy, %.lr.ph1087.i ], [ %.0660.lcssa.i, %.preheader990.i ] ; 3 uses
  %.16651084.i = phi i32 [ %i.aaa, %.lr.ph1087.i ], [ %.0664.lcssa.i, %.preheader990.i ]
  %i.zm = load <4 x i32>, ptr %.121086.i, align 16, !tbaa !316 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %.121086.i, i64 16
  %i.zo = load <4 x i32>, ptr %i.zn, align 16, !tbaa !316 ; 2 uses
  %i.zp = shufflevector <4 x i32> %i.zm, <4 x i32> %i.zo, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.zq = bitcast <4 x i32> %i.zp to <2 x i64>    ; 2 uses
  %i.zr = shufflevector <4 x i32> %i.zm, <4 x i32> %i.zo, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.zs = bitcast <4 x i32> %i.zr to <2 x i64>    ; 2 uses
  %i.zt = shufflevector <2 x i64> %i.zq, <2 x i64> %i.zs, <2 x i32> <i32 0, i32 2>
  %i.zu = shufflevector <2 x i64> %i.zs, <2 x i64> %i.zq, <2 x i32> <i32 1, i32 3>
  %i.zv = bitcast <2 x i64> %i.zu to <4 x i32>
  %i.zw = shufflevector <4 x i32> %i.zv, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <2 x i64> %i.zt, ptr %.16611085.i, align 1, !tbaa !316
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %.16611085.i, i64 %i.dc
  store <4 x i32> %i.zw, ptr %i.zx, align 1, !tbaa !316
  %i.zy = getelementptr inbounds nuw i8, ptr %.16611085.i, i64 16 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.121086.i, i64 32 ; 2 uses
  %i.aaa = add nuw nsw i32 %.16651084.i, 4        ; 3 uses
  %i.aab = or disjoint i32 %i.aaa, 3
  %i.aac = icmp slt i32 %i.aab, %.sroa.speculated114
  br i1 %i.aac, label %.lr.ph1087.i, label %.preheader989.i, !llvm.loop !2010

.preheader988.i:                                  ; preds = %.lr.ph1094.i, %.preheader989.i
  %.2666.lcssa.i = phi i32 [ %.1665.lcssa.i, %.preheader989.i ], [ %i.abq, %.lr.ph1094.i ] ; 6 uses
  %.2662.lcssa.i = phi ptr [ %.1661.lcssa.i, %.preheader989.i ], [ %i.abo, %.lr.ph1094.i ] ; 8 uses
  %.13.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader989.i ], [ %i.abp, %.lr.ph1094.i ] ; 9 uses
  %i.aad = icmp slt i32 %.2666.lcssa.i, %.sroa.speculated114
  br i1 %i.aad, label %.lr.ph1101.i.preheader, label %._crit_edge1102.i

.lr.ph1101.i.preheader:                           ; preds = %.preheader988.i
  %i.aae = xor i32 %.2666.lcssa.i, -1
  %i.aaf = add i32 %.sroa.speculated114, %i.aae   ; 2 uses
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = add nuw nsw i64 %i.aag, 1              ; 2 uses
  %min.iters.check349 = icmp ult i32 %i.aaf, 11
  br i1 %min.iters.check349, label %.lr.ph1101.i.preheader370, label %vector.memcheck330

vector.memcheck330:                               ; preds = %.lr.ph1101.i.preheader
  %scevgep331 = getelementptr i8, ptr %.2662.lcssa.i, i64 4 ; 2 uses
  %i.aai = xor i32 %.2666.lcssa.i, -1
  %i.aaj = add i32 %.sroa.speculated114, %i.aai
  %i.aak = zext i32 %i.aaj to i64                 ; 2 uses
  %i.aal = shl nuw nsw i64 %i.aak, 2              ; 2 uses
  %scevgep332 = getelementptr i8, ptr %scevgep331, i64 %i.aal ; 2 uses
  %scevgep333 = getelementptr i8, ptr %.2662.lcssa.i, i64 %i.op ; 2 uses
  %scevgep334 = getelementptr i8, ptr %scevgep331, i64 %i.op
  %scevgep335 = getelementptr i8, ptr %scevgep334, i64 %i.aal ; 2 uses
  %scevgep336 = getelementptr i8, ptr %.13.lcssa.i, i64 8
  %i.aam = shl nuw nsw i64 %i.aak, 3
  %scevgep337 = getelementptr i8, ptr %scevgep336, i64 %i.aam ; 2 uses
  %bound0338 = icmp ult ptr %.2662.lcssa.i, %scevgep335
  %bound1339 = icmp ult ptr %scevgep333, %scevgep332
  %found.conflict340 = and i1 %bound0338, %bound1339
  %bound0341 = icmp ult ptr %.2662.lcssa.i, %scevgep337
  %bound1342 = icmp ult ptr %.13.lcssa.i, %scevgep332
  %found.conflict343 = and i1 %bound0341, %bound1342
  %conflict.rdx = or i1 %found.conflict340, %found.conflict343
  %bound0344 = icmp ult ptr %scevgep333, %scevgep337
  %bound1345 = icmp ult ptr %.13.lcssa.i, %scevgep335
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %conflict.rdx, %found.conflict346
  br i1 %conflict.rdx347, label %.lr.ph1101.i.preheader370, label %vector.ph350

vector.ph350:                                     ; preds = %vector.memcheck330
  %n.vec351 = and i64 %i.aah, 8589934584          ; 5 uses
  %i.aan = shl nuw nsw i64 %n.vec351, 3
  %i.aao = getelementptr i8, ptr %.13.lcssa.i, i64 %i.aan ; 2 uses
  %i.aap = shl nuw nsw i64 %n.vec351, 2
  %i.aaq = getelementptr i8, ptr %.2662.lcssa.i, i64 %i.aap
  %i.aar = trunc i64 %n.vec351 to i32
  %i.aas = add i32 %.2666.lcssa.i, %i.aar
  br label %vector.body352

vector.body352:                                   ; preds = %vector.body352, %vector.ph350
  %index353 = phi i64 [ 0, %vector.ph350 ], [ %index.next363, %vector.body352 ] ; 3 uses
  %i.aat = shl i64 %index353, 3                   ; 2 uses
  %next.gep354 = getelementptr i8, ptr %.13.lcssa.i, i64 %i.aat
  %i.aau = getelementptr i8, ptr %.13.lcssa.i, i64 %i.aat
  %next.gep355 = getelementptr i8, ptr %i.aau, i64 32
  %i.aav = shl i64 %index353, 2
  %next.gep356 = getelementptr i8, ptr %.2662.lcssa.i, i64 %i.aav ; 3 uses
  %wide.vec357 = load <8 x i32>, ptr %next.gep354, align 4, !tbaa !67, !alias.scope !2011 ; 2 uses
  %strided.vec358 = shufflevector <8 x i32> %wide.vec357, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec359 = shufflevector <8 x i32> %wide.vec357, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec360 = load <8 x i32>, ptr %next.gep355, align 4, !tbaa !67, !alias.scope !2011 ; 2 uses
  %strided.vec361 = shufflevector <8 x i32> %wide.vec360, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec362 = shufflevector <8 x i32> %wide.vec360, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aaw = getelementptr i8, ptr %next.gep356, i64 16
  store <4 x i32> %strided.vec358, ptr %next.gep356, align 4, !tbaa !67, !alias.scope !2014, !noalias !2016
  store <4 x i32> %strided.vec361, ptr %i.aaw, align 4, !tbaa !67, !alias.scope !2014, !noalias !2016
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %next.gep356, i64 %i.dc ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  store <4 x i32> %strided.vec359, ptr %i.aax, align 4, !tbaa !67, !alias.scope !2018, !noalias !2011
  store <4 x i32> %strided.vec362, ptr %i.aay, align 4, !tbaa !67, !alias.scope !2018, !noalias !2011
  %index.next363 = add nuw i64 %index353, 8       ; 2 uses
  %i.aaz = icmp eq i64 %index.next363, %n.vec351
  br i1 %i.aaz, label %middle.block364, label %vector.body352, !llvm.loop !2019

middle.block364:                                  ; preds = %vector.body352
  %cmp.n365 = icmp eq i64 %i.aah, %n.vec351
  br i1 %cmp.n365, label %._crit_edge1102.i, label %.lr.ph1101.i.preheader370

.lr.ph1101.i.preheader370:                        ; preds = %vector.memcheck330, %.lr.ph1101.i.preheader, %middle.block364
  %.141100.i.ph = phi ptr [ %.13.lcssa.i, %vector.memcheck330 ], [ %.13.lcssa.i, %.lr.ph1101.i.preheader ], [ %i.aao, %middle.block364 ] ; 2 uses
  %.36631099.i.ph = phi ptr [ %.2662.lcssa.i, %vector.memcheck330 ], [ %.2662.lcssa.i, %.lr.ph1101.i.preheader ], [ %i.aaq, %middle.block364 ] ; 2 uses
  %.36671098.i.ph = phi i32 [ %.2666.lcssa.i, %vector.memcheck330 ], [ %.2666.lcssa.i, %.lr.ph1101.i.preheader ], [ %i.aas, %middle.block364 ] ; 4 uses
  %i.aba = sub i32 %.sroa.speculated114, %.36671098.i.ph
  %xtraiter407 = and i32 %i.aba, 3                ; 2 uses
  %lcmp.mod408.not = icmp eq i32 %xtraiter407, 0
  br i1 %lcmp.mod408.not, label %.lr.ph1101.i.prol.loopexit, label %.lr.ph1101.i.prol

.lr.ph1101.i.prol:                                ; preds = %.lr.ph1101.i.preheader370, %.lr.ph1101.i.prol
  %.141100.i.prol = phi ptr [ %i.abg, %.lr.ph1101.i.prol ], [ %.141100.i.ph, %.lr.ph1101.i.preheader370 ] ; 3 uses
  %.36631099.i.prol = phi ptr [ %i.abf, %.lr.ph1101.i.prol ], [ %.36631099.i.ph, %.lr.ph1101.i.preheader370 ] ; 3 uses
  %.36671098.i.prol = phi i32 [ %i.abh, %.lr.ph1101.i.prol ], [ %.36671098.i.ph, %.lr.ph1101.i.preheader370 ]
  %prol.iter409 = phi i32 [ %prol.iter409.next, %.lr.ph1101.i.prol ], [ 0, %.lr.ph1101.i.preheader370 ]
  %i.abb = load i32, ptr %.141100.i.prol, align 4, !tbaa !67
  %i.abc = getelementptr inbounds nuw i8, ptr %.141100.i.prol, i64 4
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !67
  store i32 %i.abb, ptr %.36631099.i.prol, align 4, !tbaa !67
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %.36631099.i.prol, i64 %i.dc
  store i32 %i.abd, ptr %i.abe, align 4, !tbaa !67
  %i.abf = getelementptr inbounds nuw i8, ptr %.36631099.i.prol, i64 4 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %.141100.i.prol, i64 8 ; 3 uses
  %i.abh = add nuw nsw i32 %.36671098.i.prol, 1   ; 2 uses
  %prol.iter409.next = add i32 %prol.iter409, 1   ; 2 uses
  %prol.iter409.cmp.not = icmp eq i32 %prol.iter409.next, %xtraiter407
  br i1 %prol.iter409.cmp.not, label %.lr.ph1101.i.prol.loopexit, label %.lr.ph1101.i.prol, !llvm.loop !2020

.lr.ph1101.i.prol.loopexit:                       ; preds = %.lr.ph1101.i.prol, %.lr.ph1101.i.preheader370
  %.lcssa395.unr = phi ptr [ poison, %.lr.ph1101.i.preheader370 ], [ %i.abg, %.lr.ph1101.i.prol ]
  %.141100.i.unr = phi ptr [ %.141100.i.ph, %.lr.ph1101.i.preheader370 ], [ %i.abg, %.lr.ph1101.i.prol ]
  %.36631099.i.unr = phi ptr [ %.36631099.i.ph, %.lr.ph1101.i.preheader370 ], [ %i.abf, %.lr.ph1101.i.prol ]
  %.36671098.i.unr = phi i32 [ %.36671098.i.ph, %.lr.ph1101.i.preheader370 ], [ %i.abh, %.lr.ph1101.i.prol ]
  %i.abi = sub i32 %.36671098.i.ph, %.sroa.speculated114
  %i.abj = icmp ugt i32 %i.abi, -4
  br i1 %i.abj, label %._crit_edge1102.i, label %.lr.ph1101.i

.lr.ph1094.i:                                     ; preds = %.preheader989.i, %.lr.ph1094.i
  %.131093.i = phi ptr [ %i.abp, %.lr.ph1094.i ], [ %.12.lcssa.i, %.preheader989.i ] ; 3 uses
  %.26621092.i = phi ptr [ %i.abo, %.lr.ph1094.i ], [ %.1661.lcssa.i, %.preheader989.i ] ; 3 uses
  %.26661091.i = phi i32 [ %i.abq, %.lr.ph1094.i ], [ %.1665.lcssa.i, %.preheader989.i ]
  %i.abk = getelementptr inbounds nuw i8, ptr %.131093.i, i64 8
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %.26621092.i, i64 %i.dc
  %i.abm = load <2 x i32>, ptr %i.abk, align 4, !tbaa !67
  %i.abn = load <2 x i32>, ptr %.131093.i, align 4, !tbaa !67
  store <2 x i32> %i.abn, ptr %.26621092.i, align 4, !tbaa !67
  store <2 x i32> %i.abm, ptr %i.abl, align 4, !tbaa !67
  %i.abo = getelementptr inbounds nuw i8, ptr %.26621092.i, i64 8 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %.131093.i, i64 16 ; 2 uses
  %i.abq = add nuw nsw i32 %.26661091.i, 2        ; 3 uses
  %i.abr = or disjoint i32 %i.abq, 1
  %i.abs = icmp slt i32 %i.abr, %.sroa.speculated114
  br i1 %i.abs, label %.lr.ph1094.i, label %.preheader988.i, !llvm.loop !2021

.lr.ph1101.i:                                     ; preds = %.lr.ph1101.i.prol.loopexit, %.lr.ph1101.i
  %.141100.i = phi ptr [ %i.acq, %.lr.ph1101.i ], [ %.141100.i.unr, %.lr.ph1101.i.prol.loopexit ] ; 9 uses
  %.36631099.i = phi ptr [ %i.acp, %.lr.ph1101.i ], [ %.36631099.i.unr, %.lr.ph1101.i.prol.loopexit ] ; 6 uses
  %.36671098.i = phi i32 [ %i.acr, %.lr.ph1101.i ], [ %.36671098.i.unr, %.lr.ph1101.i.prol.loopexit ]
  %i.abt = load i32, ptr %.141100.i, align 4, !tbaa !67
  %i.abu = getelementptr inbounds nuw i8, ptr %.141100.i, i64 4
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !67
  store i32 %i.abt, ptr %.36631099.i, align 4, !tbaa !67
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %.36631099.i, i64 %i.dc
  store i32 %i.abv, ptr %i.abw, align 4, !tbaa !67
  %i.abx = getelementptr inbounds nuw i8, ptr %.36631099.i, i64 4 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.141100.i, i64 8
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !67
  %i.aca = getelementptr inbounds nuw i8, ptr %.141100.i, i64 12
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !67
  store i32 %i.abz, ptr %i.abx, align 4, !tbaa !67
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.abx, i64 %i.dc
  store i32 %i.acb, ptr %i.acc, align 4, !tbaa !67
  %i.acd = getelementptr inbounds nuw i8, ptr %.36631099.i, i64 8 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.141100.i, i64 16
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !67
  %i.acg = getelementptr inbounds nuw i8, ptr %.141100.i, i64 20
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !67
  store i32 %i.acf, ptr %i.acd, align 4, !tbaa !67
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %i.dc
  store i32 %i.ach, ptr %i.aci, align 4, !tbaa !67
  %i.acj = getelementptr inbounds nuw i8, ptr %.36631099.i, i64 12 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.141100.i, i64 24
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !67
  %i.acm = getelementptr inbounds nuw i8, ptr %.141100.i, i64 28
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !67
  store i32 %i.acl, ptr %i.acj, align 4, !tbaa !67
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %i.dc
  store i32 %i.acn, ptr %i.aco, align 4, !tbaa !67
  %i.acp = getelementptr inbounds nuw i8, ptr %.36631099.i, i64 16
  %i.acq = getelementptr inbounds nuw i8, ptr %.141100.i, i64 32 ; 2 uses
  %i.acr = add nuw nsw i32 %.36671098.i, 4        ; 2 uses
  %exitcond1190.not.i.3 = icmp eq i32 %i.acr, %.sroa.speculated114
  br i1 %exitcond1190.not.i.3, label %._crit_edge1102.i, label %.lr.ph1101.i, !llvm.loop !2022

._crit_edge1102.i:                                ; preds = %.lr.ph1101.i.prol.loopexit, %.lr.ph1101.i, %middle.block364, %.preheader988.i
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader988.i ], [ %i.aao, %middle.block364 ], [ %.lcssa395.unr, %.lr.ph1101.i.prol.loopexit ], [ %i.acq, %.lr.ph1101.i ] ; 2 uses
  %indvars.iv.next1192.i = add nuw nsw i64 %indvars.iv1191.i, 2 ; 3 uses
  %i.acs = icmp slt i64 %indvars.iv.next1192.i, %invariant.op1238.i
  br i1 %i.acs, label %bb.ae, label %.preheader987.loopexit.i, !llvm.loop !2023

bb.af:                                            ; preds = %._crit_edge1135.i, %.lr.ph1139.i
  %indvars.iv1195.i = phi i64 [ %i.xs, %.lr.ph1139.i ], [ %indvars.iv.next1196.i, %._crit_edge1135.i ] ; 2 uses
  %.151138.i = phi ptr [ %.10.lcssa.i, %.lr.ph1139.i ], [ %.19.lcssa.i, %._crit_edge1135.i ] ; 3 uses
  %i.act = load ptr, ptr %12, align 8, !tbaa !18
  %i.acu = add nsw i64 %indvars.iv1195.i, %i.ci
  %i.acv = mul i64 %i.acu, %i.dc
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.act, i64 %i.acv
  %i.acx = getelementptr inbounds [4 x i8], ptr %i.acw, i64 %i.xp ; 3 uses
  br i1 %i.xq, label %.lr.ph1113.i.preheader, label %.preheader986.i

.lr.ph1113.i.preheader:                           ; preds = %bb.af
  br i1 %i.xx, label %.lr.ph1113.i.epil.preheader, label %.lr.ph1113.i

.preheader986.i.loopexit.unr-lcssa:               ; preds = %.lr.ph1113.i
  br i1 %lcmp.mod411.not, label %.preheader986.i, label %.lr.ph1113.i.epil.preheader

.lr.ph1113.i.epil.preheader:                      ; preds = %.preheader986.i.loopexit.unr-lcssa, %.lr.ph1113.i.preheader
  %.161111.i.epil.init = phi ptr [ %.151138.i, %.lr.ph1113.i.preheader ], [ %i.aed, %.preheader986.i.loopexit.unr-lcssa ]
  %.06401109.i.epil.init = phi ptr [ %i.acx, %.lr.ph1113.i.preheader ], [ %i.aec, %.preheader986.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod414)
  br label %.lr.ph1113.i.epil

.lr.ph1113.i.epil:                                ; preds = %.lr.ph1113.i.epil, %.lr.ph1113.i.epil.preheader
  %.161111.i.epil = phi ptr [ %i.add, %.lr.ph1113.i.epil ], [ %.161111.i.epil.init, %.lr.ph1113.i.epil.preheader ] ; 3 uses
  %.06401109.i.epil = phi ptr [ %i.adc, %.lr.ph1113.i.epil ], [ %.06401109.i.epil.init, %.lr.ph1113.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph1113.i.epil ], [ 0, %.lr.ph1113.i.epil.preheader ]
  %i.acy = load <2 x i64>, ptr %.161111.i.epil, align 1, !tbaa !316
  %i.acz = getelementptr inbounds nuw i8, ptr %.161111.i.epil, i64 16
  %i.ada = load <2 x i64>, ptr %i.acz, align 1, !tbaa !316
  store <2 x i64> %i.acy, ptr %.06401109.i.epil, align 1, !tbaa !316
  %i.adb = getelementptr inbounds nuw i8, ptr %.06401109.i.epil, i64 16
  store <2 x i64> %i.ada, ptr %i.adb, align 1, !tbaa !316
  %i.adc = getelementptr inbounds nuw i8, ptr %.06401109.i.epil, i64 32 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.161111.i.epil, i64 32 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter410
  br i1 %epil.iter.cmp.not, label %.preheader986.i, label %.lr.ph1113.i.epil, !llvm.loop !2024

.preheader986.i:                                  ; preds = %.preheader986.i.loopexit.unr-lcssa, %.lr.ph1113.i.epil, %bb.af
  %.0640.lcssa.i = phi ptr [ %i.acx, %bb.af ], [ %i.aec, %.preheader986.i.loopexit.unr-lcssa ], [ %i.adc, %.lr.ph1113.i.epil ] ; 2 uses
  %.0636.lcssa.i = phi i32 [ 0, %bb.af ], [ %i.xr, %.lr.ph1113.i.epil ], [ %i.xr, %.preheader986.i.loopexit.unr-lcssa ] ; 3 uses
  %.16.lcssa.i = phi ptr [ %.151138.i, %bb.af ], [ %i.aed, %.preheader986.i.loopexit.unr-lcssa ], [ %i.add, %.lr.ph1113.i.epil ] ; 2 uses
  %i.ade = or disjoint i32 %.0636.lcssa.i, 3
  %i.adf = icmp slt i32 %i.ade, %.sroa.speculated114
  br i1 %i.adf, label %.lr.ph1120.i, label %.preheader985.i

.lr.ph1113.i:                                     ; preds = %.lr.ph1113.i.preheader, %.lr.ph1113.i
  %.161111.i = phi ptr [ %i.aed, %.lr.ph1113.i ], [ %.151138.i, %.lr.ph1113.i.preheader ] ; 9 uses
  %.06401109.i = phi ptr [ %i.aec, %.lr.ph1113.i ], [ %i.acx, %.lr.ph1113.i.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph1113.i ], [ 0, %.lr.ph1113.i.preheader ]
  %i.adg = load <2 x i64>, ptr %.161111.i, align 1, !tbaa !316
  %i.adh = getelementptr inbounds nuw i8, ptr %.161111.i, i64 16
  %i.adi = load <2 x i64>, ptr %i.adh, align 1, !tbaa !316
  store <2 x i64> %i.adg, ptr %.06401109.i, align 1, !tbaa !316
  %i.adj = getelementptr inbounds nuw i8, ptr %.06401109.i, i64 16
  store <2 x i64> %i.adi, ptr %i.adj, align 1, !tbaa !316
  %i.adk = getelementptr inbounds nuw i8, ptr %.06401109.i, i64 32
  %i.adl = getelementptr inbounds nuw i8, ptr %.161111.i, i64 32
  %i.adm = load <2 x i64>, ptr %i.adl, align 1, !tbaa !316
  %i.adn = getelementptr inbounds nuw i8, ptr %.161111.i, i64 48
  %i.ado = load <2 x i64>, ptr %i.adn, align 1, !tbaa !316
  store <2 x i64> %i.adm, ptr %i.adk, align 1, !tbaa !316
  %i.adp = getelementptr inbounds nuw i8, ptr %.06401109.i, i64 48
  store <2 x i64> %i.ado, ptr %i.adp, align 1, !tbaa !316
  %i.adq = getelementptr inbounds nuw i8, ptr %.06401109.i, i64 64
  %i.adr = getelementptr inbounds nuw i8, ptr %.161111.i, i64 64
  %i.ads = load <2 x i64>, ptr %i.adr, align 1, !tbaa !316
  %i.adt = getelementptr inbounds nuw i8, ptr %.161111.i, i64 80
  %i.adu = load <2 x i64>, ptr %i.adt, align 1, !tbaa !316
  store <2 x i64> %i.ads, ptr %i.adq, align 1, !tbaa !316
  %i.adv = getelementptr inbounds nuw i8, ptr %.06401109.i, i64 80
  store <2 x i64> %i.adu, ptr %i.adv, align 1, !tbaa !316
  %i.adw = getelementptr inbounds nuw i8, ptr %.06401109.i, i64 96
  %i.adx = getelementptr inbounds nuw i8, ptr %.161111.i, i64 96
  %i.ady = load <2 x i64>, ptr %i.adx, align 1, !tbaa !316
  %i.adz = getelementptr inbounds nuw i8, ptr %.161111.i, i64 112
  %i.aea = load <2 x i64>, ptr %i.adz, align 1, !tbaa !316
  store <2 x i64> %i.ady, ptr %i.adw, align 1, !tbaa !316
  %i.aeb = getelementptr inbounds nuw i8, ptr %.06401109.i, i64 112
  store <2 x i64> %i.aea, ptr %i.aeb, align 1, !tbaa !316
  %i.aec = getelementptr inbounds nuw i8, ptr %.06401109.i, i64 128 ; 3 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %.161111.i, i64 128 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader986.i.loopexit.unr-lcssa, label %.lr.ph1113.i, !llvm.loop !2025

.preheader985.i:                                  ; preds = %.lr.ph1120.i, %.preheader986.i
  %.1641.lcssa.i = phi ptr [ %.0640.lcssa.i, %.preheader986.i ], [ %i.aex, %.lr.ph1120.i ] ; 8 uses
  %.1637.lcssa.i = phi i32 [ %.0636.lcssa.i, %.preheader986.i ], [ %i.aez, %.lr.ph1120.i ] ; 7 uses
  %.17.lcssa.i = phi ptr [ %.16.lcssa.i, %.preheader986.i ], [ %i.aey, %.lr.ph1120.i ] ; 8 uses
  %i.aee = or disjoint i32 %.1637.lcssa.i, 1
  %i.aef = icmp slt i32 %i.aee, %.sroa.speculated114
  br i1 %i.aef, label %.lr.ph1127.i.preheader, label %.preheader.i

.lr.ph1127.i.preheader:                           ; preds = %.preheader985.i
  %i.aeg = sub i32 %16, %.1637.lcssa.i            ; 2 uses
  %i.aeh = lshr i32 %i.aeg, 1
  %narrow = add nuw i32 %i.aeh, 1
  %i.aei = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check311 = icmp ult i32 %i.aeg, 10
  br i1 %min.iters.check311, label %.lr.ph1127.i.preheader369, label %vector.memcheck307

vector.memcheck307:                               ; preds = %.lr.ph1127.i.preheader
  %scevgep = getelementptr i8, ptr %.1641.lcssa.i, i64 8
  %i.aej = sub i32 %i.xt, %.1637.lcssa.i
  %i.aek = lshr i32 %i.aej, 1
  %i.ael = zext nneg i32 %i.aek to i64
  %i.aem = shl nuw nsw i64 %i.ael, 3              ; 2 uses
  %scevgep308 = getelementptr i8, ptr %scevgep, i64 %i.aem
  %scevgep309 = getelementptr i8, ptr %.17.lcssa.i, i64 8
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.aem
  %bound0 = icmp ult ptr %.1641.lcssa.i, %scevgep310
  %bound1 = icmp ult ptr %.17.lcssa.i, %scevgep308
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph1127.i.preheader369, label %vector.ph312

vector.ph312:                                     ; preds = %vector.memcheck307
  %n.vec313 = and i64 %i.aei, 4294967292          ; 4 uses
  %i.aen = shl nuw nsw i64 %n.vec313, 3           ; 2 uses
  %i.aeo = getelementptr i8, ptr %.17.lcssa.i, i64 %i.aen ; 2 uses
  %i.aep = trunc nuw i64 %n.vec313 to i32
  %i.aeq = shl i32 %i.aep, 1
  %i.aer = add i32 %.1637.lcssa.i, %i.aeq         ; 2 uses
  %i.aes = getelementptr i8, ptr %.1641.lcssa.i, i64 %i.aen ; 2 uses
  br label %vector.body314

vector.body314:                                   ; preds = %vector.body314, %vector.ph312
  %index315 = phi i64 [ 0, %vector.ph312 ], [ %index.next325, %vector.body314 ] ; 2 uses
  %i.aet = shl i64 %index315, 3                   ; 3 uses
  %i.aeu = or disjoint i64 %i.aet, 16             ; 2 uses
  %next.gep316 = getelementptr i8, ptr %.17.lcssa.i, i64 %i.aet
  %next.gep317 = getelementptr i8, ptr %.17.lcssa.i, i64 %i.aeu
  %next.gep318 = getelementptr i8, ptr %.1641.lcssa.i, i64 %i.aet
  %next.gep319 = getelementptr i8, ptr %.1641.lcssa.i, i64 %i.aeu
  %wide.vec = load <4 x i32>, ptr %next.gep316, align 4, !tbaa !67, !alias.scope !2026
  %wide.vec321 = load <4 x i32>, ptr %next.gep317, align 4, !tbaa !67, !alias.scope !2026
  store <4 x i32> %wide.vec, ptr %next.gep318, align 4, !tbaa !67, !alias.scope !2029, !noalias !2026
  store <4 x i32> %wide.vec321, ptr %next.gep319, align 4, !tbaa !67, !alias.scope !2029, !noalias !2026
  %index.next325 = add nuw i64 %index315, 4       ; 2 uses
  %i.aev = icmp eq i64 %index.next325, %n.vec313
  br i1 %i.aev, label %middle.block326, label %vector.body314, !llvm.loop !2031

middle.block326:                                  ; preds = %vector.body314
  %cmp.n327 = icmp eq i64 %n.vec313, %i.aei
  br i1 %cmp.n327, label %.preheader.i, label %.lr.ph1127.i.preheader369

.lr.ph1127.i.preheader369:                        ; preds = %vector.memcheck307, %.lr.ph1127.i.preheader, %middle.block326
  %.181126.i.ph = phi ptr [ %.17.lcssa.i, %vector.memcheck307 ], [ %.17.lcssa.i, %.lr.ph1127.i.preheader ], [ %i.aeo, %middle.block326 ]
  %.26381125.i.ph = phi i32 [ %.1637.lcssa.i, %vector.memcheck307 ], [ %.1637.lcssa.i, %.lr.ph1127.i.preheader ], [ %i.aer, %middle.block326 ]
  %.26421124.i.ph = phi ptr [ %.1641.lcssa.i, %vector.memcheck307 ], [ %.1641.lcssa.i, %.lr.ph1127.i.preheader ], [ %i.aes, %middle.block326 ]
  br label %.lr.ph1127.i

.lr.ph1120.i:                                     ; preds = %.preheader986.i, %.lr.ph1120.i
  %.171119.i = phi ptr [ %i.aey, %.lr.ph1120.i ], [ %.16.lcssa.i, %.preheader986.i ] ; 2 uses
  %.16371118.i = phi i32 [ %i.aez, %.lr.ph1120.i ], [ %.0636.lcssa.i, %.preheader986.i ]
  %.16411117.i = phi ptr [ %i.aex, %.lr.ph1120.i ], [ %.0640.lcssa.i, %.preheader986.i ] ; 2 uses
  %i.aew = load <2 x i64>, ptr %.171119.i, align 1, !tbaa !316
  store <2 x i64> %i.aew, ptr %.16411117.i, align 1, !tbaa !316
  %i.aex = getelementptr inbounds nuw i8, ptr %.16411117.i, i64 16 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.171119.i, i64 16 ; 2 uses
  %i.aez = add nuw nsw i32 %.16371118.i, 4        ; 3 uses
  %i.afa = or disjoint i32 %i.aez, 3
  %i.afb = icmp slt i32 %i.afa, %.sroa.speculated114
  br i1 %i.afb, label %.lr.ph1120.i, label %.preheader985.i, !llvm.loop !2032

.preheader.i:                                     ; preds = %.lr.ph1127.i, %middle.block326, %.preheader985.i
  %.2642.lcssa.i = phi ptr [ %.1641.lcssa.i, %.preheader985.i ], [ %i.aes, %middle.block326 ], [ %i.agl, %.lr.ph1127.i ] ; 6 uses
  %.2638.lcssa.i = phi i32 [ %.1637.lcssa.i, %.preheader985.i ], [ %i.aer, %middle.block326 ], [ %i.agn, %.lr.ph1127.i ] ; 5 uses
  %.18.lcssa.i = phi ptr [ %.17.lcssa.i, %.preheader985.i ], [ %i.aeo, %middle.block326 ], [ %i.agm, %.lr.ph1127.i ] ; 7 uses
  %i.afc = icmp slt i32 %.2638.lcssa.i, %.sroa.speculated114
  br i1 %i.afc, label %iter.check, label %._crit_edge1135.i

iter.check:                                       ; preds = %.preheader.i
  %.18.lcssa.i289 = ptrtoaddr ptr %.18.lcssa.i to i64
  %.2642.lcssa.i288 = ptrtoaddr ptr %.2642.lcssa.i to i64
  %i.afd = xor i32 %.2638.lcssa.i, -1
  %i.afe = add i32 %.sroa.speculated114, %i.afd   ; 3 uses
  %i.aff = zext i32 %i.afe to i64
  %i.afg = add nuw nsw i64 %i.aff, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.afe, 7
  %i.afh = sub i64 %.18.lcssa.i289, %.2642.lcssa.i288
  %diff.check = icmp ugt i64 %i.afh, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph1134.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check290 = icmp ult i32 %i.afe, 31
  br i1 %min.iters.check290, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.afi = and i64 %i.afg, 24
  %n.vec = and i64 %i.afg, 8589934560             ; 5 uses
  %i.afj = shl nuw nsw i64 %n.vec, 2              ; 2 uses
  %i.afk = getelementptr i8, ptr %.18.lcssa.i, i64 %i.afj ; 2 uses
  %i.afl = trunc i64 %n.vec to i32
  %i.afm = add i32 %.2638.lcssa.i, %i.afl
  %i.afn = getelementptr i8, ptr %.2642.lcssa.i, i64 %i.afj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.afo = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.18.lcssa.i, i64 %i.afo ; 4 uses
  %next.gep291 = getelementptr i8, ptr %.2642.lcssa.i, i64 %i.afo ; 4 uses
  %i.afp = getelementptr i8, ptr %next.gep, i64 32
  %i.afq = getelementptr i8, ptr %next.gep, i64 64
  %i.afr = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !67
  %wide.load292 = load <8 x i32>, ptr %i.afp, align 4, !tbaa !67
  %wide.load293 = load <8 x i32>, ptr %i.afq, align 4, !tbaa !67
  %wide.load294 = load <8 x i32>, ptr %i.afr, align 4, !tbaa !67
  %i.afs = getelementptr i8, ptr %next.gep291, i64 32
  %i.aft = getelementptr i8, ptr %next.gep291, i64 64
  %i.afu = getelementptr i8, ptr %next.gep291, i64 96
  store <8 x i32> %wide.load, ptr %next.gep291, align 4, !tbaa !67
  store <8 x i32> %wide.load292, ptr %i.afs, align 4, !tbaa !67
  store <8 x i32> %wide.load293, ptr %i.aft, align 4, !tbaa !67
  store <8 x i32> %wide.load294, ptr %i.afu, align 4, !tbaa !67
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.afv = icmp eq i64 %index.next, %n.vec
  br i1 %i.afv, label %middle.block, label %vector.body, !llvm.loop !2033

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.afg, %n.vec
  br i1 %cmp.n, label %._crit_edge1135.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.afi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1134.i.preheader, label %vec.epilog.ph, !prof !280

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec297 = and i64 %i.afg, 8589934584          ; 4 uses
  %i.afw = shl nuw nsw i64 %n.vec297, 2           ; 2 uses
  %i.afx = getelementptr i8, ptr %.18.lcssa.i, i64 %i.afw ; 2 uses
  %i.afy = trunc i64 %n.vec297 to i32
  %i.afz = add i32 %.2638.lcssa.i, %i.afy
  %i.aga = getelementptr i8, ptr %.2642.lcssa.i, i64 %i.afw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index298 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next302, %vec.epilog.vector.body ] ; 2 uses
  %i.agb = shl i64 %index298, 2                   ; 2 uses
  %next.gep299 = getelementptr i8, ptr %.18.lcssa.i, i64 %i.agb
  %next.gep300 = getelementptr i8, ptr %.2642.lcssa.i, i64 %i.agb
  %wide.load301 = load <8 x i32>, ptr %next.gep299, align 4, !tbaa !67
  store <8 x i32> %wide.load301, ptr %next.gep300, align 4, !tbaa !67
  %index.next302 = add nuw i64 %index298, 8       ; 2 uses
  %i.agc = icmp eq i64 %index.next302, %n.vec297
  br i1 %i.agc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2034

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n303 = icmp eq i64 %i.afg, %n.vec297
  br i1 %cmp.n303, label %._crit_edge1135.i, label %.lr.ph1134.i.preheader

.lr.ph1134.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.191133.i.ph = phi ptr [ %.18.lcssa.i, %iter.check ], [ %i.afk, %vec.epilog.iter.check ], [ %i.afx, %vec.epilog.middle.block ] ; 2 uses
  %.36391132.i.ph = phi i32 [ %.2638.lcssa.i, %iter.check ], [ %i.afm, %vec.epilog.iter.check ], [ %i.afz, %vec.epilog.middle.block ] ; 4 uses
  %.36431131.i.ph = phi ptr [ %.2642.lcssa.i, %iter.check ], [ %i.afn, %vec.epilog.iter.check ], [ %i.aga, %vec.epilog.middle.block ] ; 2 uses
  %i.agd = sub i32 %.sroa.speculated114, %.36391132.i.ph
  %xtraiter415 = and i32 %i.agd, 7                ; 2 uses
  %lcmp.mod416.not = icmp eq i32 %xtraiter415, 0
  br i1 %lcmp.mod416.not, label %.lr.ph1134.i.prol.loopexit, label %.lr.ph1134.i.prol

.lr.ph1134.i.prol:                                ; preds = %.lr.ph1134.i.preheader, %.lr.ph1134.i.prol
  %.191133.i.prol = phi ptr [ %i.agg, %.lr.ph1134.i.prol ], [ %.191133.i.ph, %.lr.ph1134.i.preheader ] ; 2 uses
  %.36391132.i.prol = phi i32 [ %i.agh, %.lr.ph1134.i.prol ], [ %.36391132.i.ph, %.lr.ph1134.i.preheader ]
  %.36431131.i.prol = phi ptr [ %i.agf, %.lr.ph1134.i.prol ], [ %.36431131.i.ph, %.lr.ph1134.i.preheader ] ; 2 uses
  %prol.iter417 = phi i32 [ %prol.iter417.next, %.lr.ph1134.i.prol ], [ 0, %.lr.ph1134.i.preheader ]
  %i.age = load i32, ptr %.191133.i.prol, align 4, !tbaa !67
  store i32 %i.age, ptr %.36431131.i.prol, align 4, !tbaa !67
  %i.agf = getelementptr inbounds nuw i8, ptr %.36431131.i.prol, i64 4 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.191133.i.prol, i64 4 ; 3 uses
  %i.agh = add nuw nsw i32 %.36391132.i.prol, 1   ; 2 uses
  %prol.iter417.next = add i32 %prol.iter417, 1   ; 2 uses
  %prol.iter417.cmp.not = icmp eq i32 %prol.iter417.next, %xtraiter415
  br i1 %prol.iter417.cmp.not, label %.lr.ph1134.i.prol.loopexit, label %.lr.ph1134.i.prol, !llvm.loop !2035

.lr.ph1134.i.prol.loopexit:                       ; preds = %.lr.ph1134.i.prol, %.lr.ph1134.i.preheader
  %.lcssa404.unr = phi ptr [ poison, %.lr.ph1134.i.preheader ], [ %i.agg, %.lr.ph1134.i.prol ]
  %.191133.i.unr = phi ptr [ %.191133.i.ph, %.lr.ph1134.i.preheader ], [ %i.agg, %.lr.ph1134.i.prol ]
  %.36391132.i.unr = phi i32 [ %.36391132.i.ph, %.lr.ph1134.i.preheader ], [ %i.agh, %.lr.ph1134.i.prol ]
  %.36431131.i.unr = phi ptr [ %.36431131.i.ph, %.lr.ph1134.i.preheader ], [ %i.agf, %.lr.ph1134.i.prol ]
  %i.agi = sub i32 %.36391132.i.ph, %.sroa.speculated114
  %i.agj = icmp ugt i32 %i.agi, -8
  br i1 %i.agj, label %._crit_edge1135.i, label %.lr.ph1134.i

.lr.ph1127.i:                                     ; preds = %.lr.ph1127.i.preheader369, %.lr.ph1127.i
  %.181126.i = phi ptr [ %i.agm, %.lr.ph1127.i ], [ %.181126.i.ph, %.lr.ph1127.i.preheader369 ] ; 2 uses
  %.26381125.i = phi i32 [ %i.agn, %.lr.ph1127.i ], [ %.26381125.i.ph, %.lr.ph1127.i.preheader369 ]
  %.26421124.i = phi ptr [ %i.agl, %.lr.ph1127.i ], [ %.26421124.i.ph, %.lr.ph1127.i.preheader369 ] ; 2 uses
  %i.agk = load <2 x i32>, ptr %.181126.i, align 4, !tbaa !67
  store <2 x i32> %i.agk, ptr %.26421124.i, align 4, !tbaa !67
  %i.agl = getelementptr inbounds nuw i8, ptr %.26421124.i, i64 8 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.181126.i, i64 8 ; 2 uses
  %i.agn = add nuw nsw i32 %.26381125.i, 2        ; 3 uses
  %i.ago = or disjoint i32 %i.agn, 1
  %i.agp = icmp slt i32 %i.ago, %.sroa.speculated114
  br i1 %i.agp, label %.lr.ph1127.i, label %.preheader.i, !llvm.loop !2036

end_hunk_0
