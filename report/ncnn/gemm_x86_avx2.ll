Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx2?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnn33gemm_transB_packed_tile_int8_avx2ERKNS_3MatES2_RS0_iiiiii:bb.a
.lr.ph1368.i:                                     ; preds = %.preheader1245.i, %._crit_edge1359.i
  %.27811367.i = phi ptr [ %i.im, %._crit_edge1359.i ], [ %.1780.lcssa.i, %.preheader1245.i ] ; 9 uses
  %.37901366.i = phi ptr [ %.5792.lcssa.i, %._crit_edge1359.i ], [ %.0787.lcssa.i, %.preheader1245.i ] ; 3 uses
  %.18001365.i = phi i32 [ %i.in, %._crit_edge1359.i ], [ %.0799.lcssa.i, %.preheader1245.i ]
  br i1 %i.h, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph1368.i
  %i.fu = load <8 x i32>, ptr %.27811367.i, align 32, !tbaa !17
  %i.fv = getelementptr inbounds nuw i8, ptr %.27811367.i, i64 32
  %i.fw = load <8 x i32>, ptr %i.fv, align 32, !tbaa !17
  %i.fx = getelementptr inbounds nuw i8, ptr %.27811367.i, i64 64
  %i.fy = load <8 x i32>, ptr %i.fx, align 32, !tbaa !17
  %i.fz = getelementptr inbounds nuw i8, ptr %.27811367.i, i64 96
  %i.ga = load <8 x i32>, ptr %i.fz, align 32, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph1368.i
  %i.gb = phi <8 x i32> [ %i.fy, %bb.h ], [ zeroinitializer, %.lr.ph1368.i ] ; 2 uses
  %i.gc = phi <8 x i32> [ %i.fw, %bb.h ], [ zeroinitializer, %.lr.ph1368.i ] ; 2 uses
  %i.gd = phi <8 x i32> [ %i.fu, %bb.h ], [ zeroinitializer, %.lr.ph1368.i ] ; 2 uses
  %i.ge = phi <8 x i32> [ %i.ga, %bb.h ], [ zeroinitializer, %.lr.ph1368.i ] ; 2 uses
  br i1 %i.i, label %.lr.ph1347.i, label %.preheader1241.i

.preheader1241.loopexit.i:                        ; preds = %.lr.ph1347.i
  %i.gf = getelementptr i8, ptr %.37901366.i, i64 %i.r
  %scevgep.i = getelementptr i8, ptr %i.gf, i64 8
  br label %.preheader1241.i

.preheader1241.i:                                 ; preds = %.preheader1241.loopexit.i, %bb.i
  %.lcssa1299.i = phi <8 x i32> [ %i.ge, %bb.i ], [ %i.hb, %.preheader1241.loopexit.i ] ; 2 uses
  %.lcssa1298.i = phi <8 x i32> [ %i.gb, %bb.i ], [ %i.gz, %.preheader1241.loopexit.i ] ; 2 uses
  %.lcssa1297.i = phi <8 x i32> [ %i.gc, %bb.i ], [ %i.gw, %.preheader1241.loopexit.i ] ; 2 uses
  %.lcssa1296.i = phi <8 x i32> [ %i.gd, %bb.i ], [ %i.gt, %.preheader1241.loopexit.i ] ; 2 uses
  %.0813.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.n, %.preheader1241.loopexit.i ] ; 2 uses
  %.0811.lcssa.i = phi ptr [ %.07761421.i, %bb.i ], [ %indvars.iv.i, %.preheader1241.loopexit.i ]
  %.4791.lcssa.i = phi ptr [ %.37901366.i, %bb.i ], [ %scevgep.i, %.preheader1241.loopexit.i ] ; 2 uses
  %i.gg = icmp slt i32 %.0813.lcssa.i, %8
  br i1 %i.gg, label %.lr.ph1358.i, label %._crit_edge1359.i

.lr.ph1347.i:                                     ; preds = %bb.i, %.lr.ph1347.i
  %.47911345.i = phi ptr [ %i.hd, %.lr.ph1347.i ], [ %.37901366.i, %bb.i ] ; 2 uses
  %.08111344.i = phi ptr [ %i.hc, %.lr.ph1347.i ], [ %.07761421.i, %bb.i ] ; 2 uses
  %.08131343.i = phi i32 [ %i.he, %.lr.ph1347.i ], [ 0, %bb.i ]
  %i.gh = phi <8 x i32> [ %i.gt, %.lr.ph1347.i ], [ %i.gd, %bb.i ]
  %i.gi = phi <8 x i32> [ %i.gw, %.lr.ph1347.i ], [ %i.gc, %bb.i ]
  %i.gj = phi <8 x i32> [ %i.gz, %.lr.ph1347.i ], [ %i.gb, %bb.i ]
  %i.gk = phi <8 x i32> [ %i.hb, %.lr.ph1347.i ], [ %i.ge, %bb.i ]
  %i.gl = load <16 x i8>, ptr %.08111344.i, align 1, !tbaa !17
  %i.gm = load double, ptr %.47911345.i, align 1, !tbaa !17
  %i.gn = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.go = sext <16 x i8> %i.gl to <16 x i16>      ; 3 uses
  %i.gp = bitcast <2 x double> %i.gn to <16 x i8>
  %i.gq = shufflevector <16 x i8> %i.gp, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gr = sext <16 x i8> %i.gq to <16 x i16>      ; 3 uses
  %i.gs = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.go, <16 x i16> %i.gr)
  %i.gt = add <8 x i32> %i.gs, %i.gh              ; 2 uses
  %i.gu = shufflevector <16 x i16> %i.gr, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9> ; 2 uses
  %i.gv = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.go, <16 x i16> %i.gu)
  %i.gw = add <8 x i32> %i.gv, %i.gi              ; 2 uses
  %i.gx = shufflevector <16 x i16> %i.go, <16 x i16> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gy = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.gx, <16 x i16> %i.gr)
  %i.gz = add <8 x i32> %i.gy, %i.gj              ; 2 uses
  %i.ha = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.gx, <16 x i16> %i.gu)
  %i.hb = add <8 x i32> %i.ha, %i.gk              ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.08111344.i, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %.47911345.i, i64 8
  %i.he = add nuw nsw i32 %.08131343.i, 2         ; 2 uses
  %i.hf = or disjoint i32 %i.he, 1
  %i.hg = icmp slt i32 %i.hf, %8
  br i1 %i.hg, label %.lr.ph1347.i, label %.preheader1241.loopexit.i, !llvm.loop !273

.lr.ph1358.i:                                     ; preds = %.preheader1241.i, %.lr.ph1358.i
  %.57921357.i = phi ptr [ %i.ih, %.lr.ph1358.i ], [ %.4791.lcssa.i, %.preheader1241.i ] ; 2 uses
  %.18121356.i = phi ptr [ %i.ig, %.lr.ph1358.i ], [ %.0811.lcssa.i, %.preheader1241.i ] ; 2 uses
  %.18141355.i = phi i32 [ %i.ii, %.lr.ph1358.i ], [ %.0813.lcssa.i, %.preheader1241.i ]
  %i.hh = phi <8 x i32> [ %i.hv, %.lr.ph1358.i ], [ %.lcssa1296.i, %.preheader1241.i ]
  %i.hi = phi <8 x i32> [ %i.hy, %.lr.ph1358.i ], [ %.lcssa1297.i, %.preheader1241.i ]
  %i.hj = phi <8 x i32> [ %i.ic, %.lr.ph1358.i ], [ %.lcssa1298.i, %.preheader1241.i ]
  %i.hk = phi <8 x i32> [ %i.if, %.lr.ph1358.i ], [ %.lcssa1299.i, %.preheader1241.i ]
  %i.hl = load <8 x i8>, ptr %.18121356.i, align 1, !tbaa !17
  %i.hm = load float, ptr %.57921357.i, align 1, !tbaa !17
  %i.hn = insertelement <4 x float> poison, float %i.hm, i64 0
  %i.ho = sext <8 x i8> %i.hl to <8 x i16>        ; 3 uses
  %i.hp = bitcast <4 x float> %i.hn to <16 x i8>
  %i.hq = shufflevector <16 x i8> %i.hp, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.hr = sext <8 x i8> %i.hq to <8 x i16>        ; 3 uses
  %i.hs = shufflevector <8 x i16> %i.hr, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.ht = mul nsw <8 x i16> %i.hr, %i.ho
  %i.hu = sext <8 x i16> %i.ht to <8 x i32>
  %i.hv = add <8 x i32> %i.hh, %i.hu              ; 2 uses
  %i.hw = mul nsw <8 x i16> %i.hs, %i.ho
  %i.hx = sext <8 x i16> %i.hw to <8 x i32>
  %i.hy = add <8 x i32> %i.hi, %i.hx              ; 2 uses
  %i.hz = shufflevector <8 x i16> %i.ho, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.ia = mul nsw <8 x i16> %i.hz, %i.hr
  %i.ib = sext <8 x i16> %i.ia to <8 x i32>
  %i.ic = add <8 x i32> %i.hj, %i.ib              ; 2 uses
  %i.id = mul nsw <8 x i16> %i.hs, %i.hz
  %i.ie = sext <8 x i16> %i.id to <8 x i32>
  %i.if = add <8 x i32> %i.hk, %i.ie              ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.18121356.i, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %.57921357.i, i64 4 ; 2 uses
  %i.ii = add nuw nsw i32 %.18141355.i, 1         ; 2 uses
  %exitcond1986.not.i.a = icmp eq i32 %i.ii, %8
  br i1 %exitcond1986.not.i.a, label %._crit_edge1359.i, label %.lr.ph1358.i, !llvm.loop !274

._crit_edge1359.i:                                ; preds = %.lr.ph1358.i, %.preheader1241.i
  %.lcssa1303.i = phi <8 x i32> [ %.lcssa1299.i, %.preheader1241.i ], [ %i.if, %.lr.ph1358.i ]
  %.lcssa1302.i = phi <8 x i32> [ %.lcssa1298.i, %.preheader1241.i ], [ %i.ic, %.lr.ph1358.i ]
  %.lcssa1301.i = phi <8 x i32> [ %.lcssa1297.i, %.preheader1241.i ], [ %i.hy, %.lr.ph1358.i ]
  %.lcssa1300.i = phi <8 x i32> [ %.lcssa1296.i, %.preheader1241.i ], [ %i.hv, %.lr.ph1358.i ]
  %.5792.lcssa.i = phi ptr [ %.4791.lcssa.i, %.preheader1241.i ], [ %i.ih, %.lr.ph1358.i ] ; 2 uses
  store <8 x i32> %.lcssa1300.i, ptr %.27811367.i, align 32, !tbaa !17
  %i.ij = getelementptr inbounds nuw i8, ptr %.27811367.i, i64 32
  store <8 x i32> %.lcssa1301.i, ptr %i.ij, align 32, !tbaa !17
  %i.ik = getelementptr inbounds nuw i8, ptr %.27811367.i, i64 64
  store <8 x i32> %.lcssa1302.i, ptr %i.ik, align 32, !tbaa !17
  %i.il = getelementptr inbounds nuw i8, ptr %.27811367.i, i64 96
  store <8 x i32> %.lcssa1303.i, ptr %i.il, align 32, !tbaa !17
  %i.im = getelementptr inbounds nuw i8, ptr %.27811367.i, i64 128 ; 2 uses
  %i.in = add nuw nsw i32 %.18001365.i, 4         ; 3 uses
  %i.io = or disjoint i32 %i.in, 3
  %i.ip = icmp slt i32 %i.io, %6
  br i1 %i.ip, label %.lr.ph1368.i, label %.preheader1244.i, !llvm.loop !275

.preheader1243.i:                                 ; preds = %._crit_edge1386.i, %.preheader1244.i
  %.2801.lcssa.i = phi i32 [ %.1800.lcssa.i, %.preheader1244.i ], [ %i.ms, %._crit_edge1386.i ] ; 2 uses
  %.6793.lcssa.i = phi ptr [ %.3790.lcssa.i, %.preheader1244.i ], [ %.8795.lcssa.i, %._crit_edge1386.i ]
  %.3782.lcssa.i = phi ptr [ %.2781.lcssa.i, %.preheader1244.i ], [ %i.mr, %._crit_edge1386.i ] ; 2 uses
  %i.iq = icmp slt i32 %.2801.lcssa.i, %6
  br i1 %i.iq, label %.lr.ph1416.i, label %._crit_edge1417.i

.lr.ph1393.i:                                     ; preds = %.preheader1244.i, %._crit_edge1386.i
  %.37821392.i = phi ptr [ %i.mr, %._crit_edge1386.i ], [ %.2781.lcssa.i, %.preheader1244.i ] ; 5 uses
  %.67931391.i = phi ptr [ %.8795.lcssa.i, %._crit_edge1386.i ], [ %.3790.lcssa.i, %.preheader1244.i ] ; 4 uses
  %.28011390.i = phi i32 [ %i.ms, %._crit_edge1386.i ], [ %.1800.lcssa.i, %.preheader1244.i ]
  br i1 %i.h, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph1393.i
  %i.ir = load <8 x i32>, ptr %.37821392.i, align 32, !tbaa !17
  %i.is = getelementptr inbounds nuw i8, ptr %.37821392.i, i64 32
  %i.it = load <8 x i32>, ptr %i.is, align 32, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph1393.i
  %i.iu = phi <8 x i32> [ %i.ir, %bb.j ], [ zeroinitializer, %.lr.ph1393.i ] ; 3 uses
  %i.iv = phi <8 x i32> [ %i.it, %bb.j ], [ zeroinitializer, %.lr.ph1393.i ] ; 3 uses
  br i1 %i.i, label %.lr.ph1376.i.preheader, label %.preheader1240.i

.lr.ph1376.i.preheader:                           ; preds = %bb.k
  br i1 %i.y, label %.lr.ph1376.i.epil.preheader, label %.lr.ph1376.i

.preheader1240.loopexit.i.unr-lcssa:              ; preds = %.lr.ph1376.i
  br i1 %lcmp.mod.not.not, label %.lr.ph1376.i.epil.preheader, label %.preheader1240.loopexit.i

.lr.ph1376.i.epil.preheader:                      ; preds = %.preheader1240.loopexit.i.unr-lcssa, %.lr.ph1376.i.preheader
  %.77941374.i.epil.init = phi ptr [ %.67931391.i, %.lr.ph1376.i.preheader ], [ %i.lg, %.preheader1240.loopexit.i.unr-lcssa ]
  %.08151373.i.epil.init = phi ptr [ %.07761421.i, %.lr.ph1376.i.preheader ], [ %i.lf, %.preheader1240.loopexit.i.unr-lcssa ]
  %.epil.init = phi <8 x i32> [ %i.iu, %.lr.ph1376.i.preheader ], [ %i.lb, %.preheader1240.loopexit.i.unr-lcssa ]
  %.epil.init1250 = phi <8 x i32> [ %i.iv, %.lr.ph1376.i.preheader ], [ %i.le, %.preheader1240.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1253)
  %i.iw = load <16 x i8>, ptr %.08151373.i.epil.init, align 1, !tbaa !17
  %i.ix = load float, ptr %.77941374.i.epil.init, align 1, !tbaa !17
  %i.iy = insertelement <4 x float> poison, float %i.ix, i64 0
  %i.iz = sext <16 x i8> %i.iw to <16 x i16>      ; 2 uses
  %i.ja = bitcast <4 x float> %i.iy to <16 x i8>
  %i.jb = shufflevector <16 x i8> %i.ja, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.jc = sext <16 x i8> %i.jb to <16 x i16>      ; 2 uses
  %i.jd = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.iz, <16 x i16> %i.jc)
  %i.je = add <8 x i32> %i.jd, %.epil.init
  %i.jf = shufflevector <16 x i16> %i.jc, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9>
  %i.jg = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.iz, <16 x i16> %i.jf)
  %i.jh = add <8 x i32> %i.jg, %.epil.init1250
  br label %.preheader1240.loopexit.i

.preheader1240.loopexit.i:                        ; preds = %.preheader1240.loopexit.i.unr-lcssa, %.lr.ph1376.i.epil.preheader
  %.lcssa1238 = phi <8 x i32> [ %i.lb, %.preheader1240.loopexit.i.unr-lcssa ], [ %i.je, %.lr.ph1376.i.epil.preheader ]
  %.lcssa1237 = phi <8 x i32> [ %i.le, %.preheader1240.loopexit.i.unr-lcssa ], [ %i.jh, %.lr.ph1376.i.epil.preheader ]
  %i.ji = getelementptr i8, ptr %.67931391.i, i64 %i.u
  %scevgep1989.i = getelementptr i8, ptr %i.ji, i64 4
  br label %.preheader1240.i

.preheader1240.i:                                 ; preds = %.preheader1240.loopexit.i, %bb.k
  %.lcssa1305.i = phi <8 x i32> [ %i.iv, %bb.k ], [ %.lcssa1237, %.preheader1240.loopexit.i ] ; 3 uses
  %.lcssa1304.i = phi <8 x i32> [ %i.iu, %bb.k ], [ %.lcssa1238, %.preheader1240.loopexit.i ] ; 3 uses
  %.0864.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.n, %.preheader1240.loopexit.i ] ; 5 uses
  %.0815.lcssa.i = phi ptr [ %.07761421.i, %bb.k ], [ %indvars.iv.i, %.preheader1240.loopexit.i ] ; 3 uses
  %.7794.lcssa.i = phi ptr [ %.67931391.i, %bb.k ], [ %scevgep1989.i, %.preheader1240.loopexit.i ] ; 4 uses
  %i.jj = icmp slt i32 %.0864.lcssa.i, %8
  br i1 %i.jj, label %.lr.ph1385.i.preheader, label %._crit_edge1386.i

.lr.ph1385.i.preheader:                           ; preds = %.preheader1240.i
  %i.jk = sub i32 %8, %.0864.lcssa.i
  %.neg = add i32 %.0864.lcssa.i, 1
  %xtraiter1254 = and i32 %i.jk, 1
  %lcmp.mod1255.not = icmp eq i32 %xtraiter1254, 0
  br i1 %lcmp.mod1255.not, label %.lr.ph1385.i.prol.loopexit, label %.lr.ph1385.i.prol

.lr.ph1385.i.prol:                                ; preds = %.lr.ph1385.i.preheader
  %i.jl = load <8 x i8>, ptr %.0815.lcssa.i, align 1, !tbaa !17
  %i.jm = load i16, ptr %.7794.lcssa.i, align 2, !tbaa !338
  %i.jn = insertelement <8 x i16> poison, i16 %i.jm, i64 0
  %i.jo = sext <8 x i8> %i.jl to <8 x i16>        ; 2 uses
  %i.jp = bitcast <8 x i16> %i.jn to <16 x i8>
  %i.jq = shufflevector <16 x i8> %i.jp, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.jr = sext <8 x i8> %i.jq to <8 x i16>        ; 2 uses
  %i.js = shufflevector <8 x i16> %i.jr, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 1, i32 0, i32 5, i32 4, i32 5, i32 4>
  %i.jt = mul nsw <8 x i16> %i.jr, %i.jo
  %i.ju = sext <8 x i16> %i.jt to <8 x i32>
  %i.jv = add <8 x i32> %.lcssa1304.i, %i.ju      ; 2 uses
  %i.jw = mul nsw <8 x i16> %i.js, %i.jo
  %i.jx = sext <8 x i16> %i.jw to <8 x i32>
  %i.jy = add <8 x i32> %.lcssa1305.i, %i.jx      ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0815.lcssa.i, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %.7794.lcssa.i, i64 2 ; 2 uses
  %i.kb = add nuw nsw i32 %.0864.lcssa.i, 1
  br label %.lr.ph1385.i.prol.loopexit

.lr.ph1385.i.prol.loopexit:                       ; preds = %.lr.ph1385.i.prol, %.lr.ph1385.i.preheader
  %.lcssa1241.unr = phi <8 x i32> [ poison, %.lr.ph1385.i.preheader ], [ %i.jv, %.lr.ph1385.i.prol ]
  %.lcssa1240.unr = phi <8 x i32> [ poison, %.lr.ph1385.i.preheader ], [ %i.jy, %.lr.ph1385.i.prol ]
  %.lcssa1239.unr = phi ptr [ poison, %.lr.ph1385.i.preheader ], [ %i.ka, %.lr.ph1385.i.prol ]
  %.87951384.i.unr = phi ptr [ %.7794.lcssa.i, %.lr.ph1385.i.preheader ], [ %i.ka, %.lr.ph1385.i.prol ]
  %.18161383.i.unr = phi ptr [ %.0815.lcssa.i, %.lr.ph1385.i.preheader ], [ %i.jz, %.lr.ph1385.i.prol ]
  %.18651382.i.unr = phi i32 [ %.0864.lcssa.i, %.lr.ph1385.i.preheader ], [ %i.kb, %.lr.ph1385.i.prol ]
  %.unr1256 = phi <8 x i32> [ %.lcssa1304.i, %.lr.ph1385.i.preheader ], [ %i.jv, %.lr.ph1385.i.prol ]
  %.unr1257 = phi <8 x i32> [ %.lcssa1305.i, %.lr.ph1385.i.preheader ], [ %i.jy, %.lr.ph1385.i.prol ]
  %i.kc = icmp eq i32 %8, %.neg
  br i1 %i.kc, label %._crit_edge1386.i, label %.lr.ph1385.i

.lr.ph1376.i:                                     ; preds = %.lr.ph1376.i.preheader, %.lr.ph1376.i
  %.77941374.i = phi ptr [ %i.lg, %.lr.ph1376.i ], [ %.67931391.i, %.lr.ph1376.i.preheader ] ; 3 uses
  %.08151373.i = phi ptr [ %i.lf, %.lr.ph1376.i ], [ %.07761421.i, %.lr.ph1376.i.preheader ] ; 3 uses
  %i.kd = phi <8 x i32> [ %i.lb, %.lr.ph1376.i ], [ %i.iu, %.lr.ph1376.i.preheader ]
  %i.ke = phi <8 x i32> [ %i.le, %.lr.ph1376.i ], [ %i.iv, %.lr.ph1376.i.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph1376.i ], [ 0, %.lr.ph1376.i.preheader ]
  %i.kf = load <16 x i8>, ptr %.08151373.i, align 1, !tbaa !17
  %i.kg = load float, ptr %.77941374.i, align 1, !tbaa !17
  %i.kh = insertelement <4 x float> poison, float %i.kg, i64 0
  %i.ki = sext <16 x i8> %i.kf to <16 x i16>      ; 2 uses
  %i.kj = bitcast <4 x float> %i.kh to <16 x i8>
  %i.kk = shufflevector <16 x i8> %i.kj, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.kl = sext <16 x i8> %i.kk to <16 x i16>      ; 2 uses
  %i.km = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ki, <16 x i16> %i.kl)
  %i.kn = add <8 x i32> %i.km, %i.kd
  %i.ko = shufflevector <16 x i16> %i.kl, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9>
  %i.kp = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ki, <16 x i16> %i.ko)
  %i.kq = add <8 x i32> %i.kp, %i.ke
  %i.kr = getelementptr inbounds nuw i8, ptr %.08151373.i, i64 16
  %i.ks = getelementptr inbounds nuw i8, ptr %.77941374.i, i64 4
  %i.kt = load <16 x i8>, ptr %i.kr, align 1, !tbaa !17
  %i.ku = load float, ptr %i.ks, align 1, !tbaa !17
  %i.kv = insertelement <4 x float> poison, float %i.ku, i64 0
  %i.kw = sext <16 x i8> %i.kt to <16 x i16>      ; 2 uses
  %i.kx = bitcast <4 x float> %i.kv to <16 x i8>
  %i.ky = shufflevector <16 x i8> %i.kx, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.kz = sext <16 x i8> %i.ky to <16 x i16>      ; 2 uses
  %i.la = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.kw, <16 x i16> %i.kz)
  %i.lb = add <8 x i32> %i.la, %i.kn              ; 3 uses
  %i.lc = shufflevector <16 x i16> %i.kz, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9>
  %i.ld = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.kw, <16 x i16> %i.lc)
  %i.le = add <8 x i32> %i.ld, %i.kq              ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.08151373.i, i64 32 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.77941374.i, i64 8 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader1240.loopexit.i.unr-lcssa, label %.lr.ph1376.i, !llvm.loop !276

.lr.ph1385.i:                                     ; preds = %.lr.ph1385.i.prol.loopexit, %.lr.ph1385.i
  %.87951384.i = phi ptr [ %i.mo, %.lr.ph1385.i ], [ %.87951384.i.unr, %.lr.ph1385.i.prol.loopexit ] ; 3 uses
  %.18161383.i = phi ptr [ %i.mn, %.lr.ph1385.i ], [ %.18161383.i.unr, %.lr.ph1385.i.prol.loopexit ] ; 3 uses
  %.18651382.i = phi i32 [ %i.mp, %.lr.ph1385.i ], [ %.18651382.i.unr, %.lr.ph1385.i.prol.loopexit ]
  %i.lh = phi <8 x i32> [ %i.mj, %.lr.ph1385.i ], [ %.unr1256, %.lr.ph1385.i.prol.loopexit ]
  %i.li = phi <8 x i32> [ %i.mm, %.lr.ph1385.i ], [ %.unr1257, %.lr.ph1385.i.prol.loopexit ]
  %i.lj = load <8 x i8>, ptr %.18161383.i, align 1, !tbaa !17
  %i.lk = load i16, ptr %.87951384.i, align 2, !tbaa !338
  %i.ll = insertelement <8 x i16> poison, i16 %i.lk, i64 0
  %i.lm = sext <8 x i8> %i.lj to <8 x i16>        ; 2 uses
  %i.ln = bitcast <8 x i16> %i.ll to <16 x i8>
  %i.lo = shufflevector <16 x i8> %i.ln, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.lp = sext <8 x i8> %i.lo to <8 x i16>        ; 2 uses
  %i.lq = shufflevector <8 x i16> %i.lp, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 1, i32 0, i32 5, i32 4, i32 5, i32 4>
  %i.lr = mul nsw <8 x i16> %i.lp, %i.lm
  %i.ls = sext <8 x i16> %i.lr to <8 x i32>
  %i.lt = add <8 x i32> %i.lh, %i.ls
  %i.lu = mul nsw <8 x i16> %i.lq, %i.lm
  %i.lv = sext <8 x i16> %i.lu to <8 x i32>
  %i.lw = add <8 x i32> %i.li, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %.18161383.i, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %.87951384.i, i64 2
  %i.lz = load <8 x i8>, ptr %i.lx, align 1, !tbaa !17
  %i.ma = load i16, ptr %i.ly, align 2, !tbaa !338
  %i.mb = insertelement <8 x i16> poison, i16 %i.ma, i64 0
  %i.mc = sext <8 x i8> %i.lz to <8 x i16>        ; 2 uses
  %i.md = bitcast <8 x i16> %i.mb to <16 x i8>
  %i.me = shufflevector <16 x i8> %i.md, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.mf = sext <8 x i8> %i.me to <8 x i16>        ; 2 uses
  %i.mg = shufflevector <8 x i16> %i.mf, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 1, i32 0, i32 5, i32 4, i32 5, i32 4>
  %i.mh = mul nsw <8 x i16> %i.mf, %i.mc
  %i.mi = sext <8 x i16> %i.mh to <8 x i32>
  %i.mj = add <8 x i32> %i.lt, %i.mi              ; 2 uses
  %i.mk = mul nsw <8 x i16> %i.mg, %i.mc
  %i.ml = sext <8 x i16> %i.mk to <8 x i32>
  %i.mm = add <8 x i32> %i.lw, %i.ml              ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.18161383.i, i64 16
  %i.mo = getelementptr inbounds nuw i8, ptr %.87951384.i, i64 4 ; 2 uses
  %i.mp = add nuw nsw i32 %.18651382.i, 2         ; 2 uses
  %exitcond1990.not.i.1 = icmp eq i32 %i.mp, %8
  br i1 %exitcond1990.not.i.1, label %._crit_edge1386.i, label %.lr.ph1385.i, !llvm.loop !277

._crit_edge1386.i:                                ; preds = %.lr.ph1385.i.prol.loopexit, %.lr.ph1385.i, %.preheader1240.i
  %.lcssa1307.i = phi <8 x i32> [ %.lcssa1305.i, %.preheader1240.i ], [ %.lcssa1240.unr, %.lr.ph1385.i.prol.loopexit ], [ %i.mm, %.lr.ph1385.i ]
  %.lcssa1306.i = phi <8 x i32> [ %.lcssa1304.i, %.preheader1240.i ], [ %.lcssa1241.unr, %.lr.ph1385.i.prol.loopexit ], [ %i.mj, %.lr.ph1385.i ]
  %.8795.lcssa.i = phi ptr [ %.7794.lcssa.i, %.preheader1240.i ], [ %.lcssa1239.unr, %.lr.ph1385.i.prol.loopexit ], [ %i.mo, %.lr.ph1385.i ] ; 2 uses
  store <8 x i32> %.lcssa1306.i, ptr %.37821392.i, align 32, !tbaa !17
  %i.mq = getelementptr inbounds nuw i8, ptr %.37821392.i, i64 32
  store <8 x i32> %.lcssa1307.i, ptr %i.mq, align 32, !tbaa !17
  %i.mr = getelementptr inbounds nuw i8, ptr %.37821392.i, i64 64 ; 2 uses
  %i.ms = add nuw nsw i32 %.28011390.i, 2         ; 3 uses
  %i.mt = or disjoint i32 %i.ms, 1
  %i.mu = icmp slt i32 %i.mt, %6
  br i1 %i.mu, label %.lr.ph1393.i, label %.preheader1243.i, !llvm.loop !278

.lr.ph1416.i:                                     ; preds = %.preheader1243.i, %._crit_edge1410.i
  %.41415.i = phi ptr [ %i.pr, %._crit_edge1410.i ], [ %.3782.lcssa.i, %.preheader1243.i ] ; 3 uses
  %.97961414.i = phi ptr [ %.11798.lcssa.i, %._crit_edge1410.i ], [ %.6793.lcssa.i, %.preheader1243.i ] ; 4 uses
  %.38021413.i = phi i32 [ %i.ps, %._crit_edge1410.i ], [ %.2801.lcssa.i, %.preheader1243.i ]
  br i1 %i.h, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph1416.i
  %i.mv = load <8 x i32>, ptr %.41415.i, align 32, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph1416.i
  %i.mw = phi <8 x i32> [ %i.mv, %bb.l ], [ zeroinitializer, %.lr.ph1416.i ] ; 3 uses
  br i1 %i.i, label %.lr.ph1401.i.preheader, label %.preheader1239.i

.lr.ph1401.i.preheader:                           ; preds = %bb.m
  br i1 %i.aa, label %.lr.ph1401.i.epil.preheader, label %.lr.ph1401.i

.preheader1239.loopexit.i.unr-lcssa:              ; preds = %.lr.ph1401.i
  br i1 %lcmp.mod1261.not.not, label %.lr.ph1401.i.epil.preheader, label %.preheader1239.loopexit.i

.lr.ph1401.i.epil.preheader:                      ; preds = %.preheader1239.loopexit.i.unr-lcssa, %.lr.ph1401.i.preheader
  %.107971399.i.epil.init = phi ptr [ %.97961414.i, %.lr.ph1401.i.preheader ], [ %i.os, %.preheader1239.loopexit.i.unr-lcssa ]
  %.08661398.i.epil.init = phi ptr [ %.07761421.i, %.lr.ph1401.i.preheader ], [ %i.or, %.preheader1239.loopexit.i.unr-lcssa ]
  %.epil.init1260 = phi <8 x i32> [ %i.mw, %.lr.ph1401.i.preheader ], [ %i.oq, %.preheader1239.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1263)
  %i.mx = load <16 x i8>, ptr %.08661398.i.epil.init, align 1, !tbaa !17
  %i.my = load float, ptr %.107971399.i.epil.init, align 1, !tbaa !17
  %i.mz = insertelement <4 x float> poison, float %i.my, i64 0
  %i.na = sext <16 x i8> %i.mx to <16 x i16>
  %i.nb = bitcast <4 x float> %i.mz to <16 x i8>
  %i.nc = shufflevector <16 x i8> %i.nb, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.nd = sext <16 x i8> %i.nc to <16 x i16>
  %i.ne = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.na, <16 x i16> %i.nd)
  %i.nf = add <8 x i32> %i.ne, %.epil.init1260
  br label %.preheader1239.loopexit.i

.preheader1239.loopexit.i:                        ; preds = %.preheader1239.loopexit.i.unr-lcssa, %.lr.ph1401.i.epil.preheader
  %.lcssa1244 = phi <8 x i32> [ %i.oq, %.preheader1239.loopexit.i.unr-lcssa ], [ %i.nf, %.lr.ph1401.i.epil.preheader ]
  %i.ng = getelementptr i8, ptr %.97961414.i, i64 %i.v
  %scevgep1991.i = getelementptr i8, ptr %i.ng, i64 2
  br label %.preheader1239.i

.preheader1239.i:                                 ; preds = %.preheader1239.loopexit.i, %bb.m
  %.lcssa1308.i = phi <8 x i32> [ %i.mw, %bb.m ], [ %.lcssa1244, %.preheader1239.loopexit.i ] ; 3 uses
  %.0868.lcssa.i = phi i32 [ 0, %bb.m ], [ %i.n, %.preheader1239.loopexit.i ] ; 5 uses
  %.0866.lcssa.i = phi ptr [ %.07761421.i, %bb.m ], [ %indvars.iv.i, %.preheader1239.loopexit.i ] ; 3 uses
  %.10797.lcssa.i = phi ptr [ %.97961414.i, %bb.m ], [ %scevgep1991.i, %.preheader1239.loopexit.i ] ; 4 uses
  %i.nh = icmp slt i32 %.0868.lcssa.i, %8
  br i1 %i.nh, label %.lr.ph1409.i.preheader, label %._crit_edge1410.i

.lr.ph1409.i.preheader:                           ; preds = %.preheader1239.i
  %i.ni = sub i32 %8, %.0868.lcssa.i
  %.neg1341 = add i32 %.0868.lcssa.i, 1
  %xtraiter1266 = and i32 %i.ni, 1
  %lcmp.mod1267.not = icmp eq i32 %xtraiter1266, 0
  br i1 %lcmp.mod1267.not, label %.lr.ph1409.i.prol.loopexit, label %.lr.ph1409.i.prol

.lr.ph1409.i.prol:                                ; preds = %.lr.ph1409.i.preheader
  %i.nj = load <8 x i8>, ptr %.0866.lcssa.i, align 1, !tbaa !17
  %i.nk = load i8, ptr %.10797.lcssa.i, align 1, !tbaa !17
  %i.nl = sext i8 %i.nk to i16
  %i.nm = insertelement <8 x i16> poison, i16 %i.nl, i64 0
  %i.nn = shufflevector <8 x i16> %i.nm, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.no = sext <8 x i8> %i.nj to <8 x i16>
  %i.np = mul <8 x i16> %i.nn, %i.no
  %i.nq = sext <8 x i16> %i.np to <8 x i32>
  %i.nr = add <8 x i32> %.lcssa1308.i, %i.nq      ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0866.lcssa.i, i64 8
  %i.nt = getelementptr inbounds nuw i8, ptr %.10797.lcssa.i, i64 1 ; 2 uses
  %i.nu = add nuw nsw i32 %.0868.lcssa.i, 1
  br label %.lr.ph1409.i.prol.loopexit

.lr.ph1409.i.prol.loopexit:                       ; preds = %.lr.ph1409.i.prol, %.lr.ph1409.i.preheader
  %.lcssa1246.unr = phi <8 x i32> [ poison, %.lr.ph1409.i.preheader ], [ %i.nr, %.lr.ph1409.i.prol ]
  %.lcssa1245.unr = phi ptr [ poison, %.lr.ph1409.i.preheader ], [ %i.nt, %.lr.ph1409.i.prol ]
  %.117981408.i.unr = phi ptr [ %.10797.lcssa.i, %.lr.ph1409.i.preheader ], [ %i.nt, %.lr.ph1409.i.prol ]
  %.18671407.i.unr = phi ptr [ %.0866.lcssa.i, %.lr.ph1409.i.preheader ], [ %i.ns, %.lr.ph1409.i.prol ]
  %.18691406.i.unr = phi i32 [ %.0868.lcssa.i, %.lr.ph1409.i.preheader ], [ %i.nu, %.lr.ph1409.i.prol ]
  %.unr1268 = phi <8 x i32> [ %.lcssa1308.i, %.lr.ph1409.i.preheader ], [ %i.nr, %.lr.ph1409.i.prol ]
  %i.nv = icmp eq i32 %8, %.neg1341
  br i1 %i.nv, label %._crit_edge1410.i, label %.lr.ph1409.i

.lr.ph1401.i:                                     ; preds = %.lr.ph1401.i.preheader, %.lr.ph1401.i
  %.107971399.i = phi ptr [ %i.os, %.lr.ph1401.i ], [ %.97961414.i, %.lr.ph1401.i.preheader ] ; 3 uses
  %.08661398.i = phi ptr [ %i.or, %.lr.ph1401.i ], [ %.07761421.i, %.lr.ph1401.i.preheader ] ; 3 uses
  %i.nw = phi <8 x i32> [ %i.oq, %.lr.ph1401.i ], [ %i.mw, %.lr.ph1401.i.preheader ]
  %niter1265 = phi i32 [ %niter1265.next.1, %.lr.ph1401.i ], [ 0, %.lr.ph1401.i.preheader ]
  %i.nx = load <16 x i8>, ptr %.08661398.i, align 1, !tbaa !17
  %i.ny = load float, ptr %.107971399.i, align 1, !tbaa !17
  %i.nz = insertelement <4 x float> poison, float %i.ny, i64 0
  %i.oa = sext <16 x i8> %i.nx to <16 x i16>
  %i.ob = bitcast <4 x float> %i.nz to <16 x i8>
  %i.oc = shufflevector <16 x i8> %i.ob, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.od = sext <16 x i8> %i.oc to <16 x i16>
  %i.oe = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.oa, <16 x i16> %i.od)
  %i.of = add <8 x i32> %i.oe, %i.nw
  %i.og = getelementptr inbounds nuw i8, ptr %.08661398.i, i64 16
  %i.oh = getelementptr inbounds nuw i8, ptr %.107971399.i, i64 2
  %i.oi = load <16 x i8>, ptr %i.og, align 1, !tbaa !17
  %i.oj = load float, ptr %i.oh, align 1, !tbaa !17
  %i.ok = insertelement <4 x float> poison, float %i.oj, i64 0
  %i.ol = sext <16 x i8> %i.oi to <16 x i16>
  %i.om = bitcast <4 x float> %i.ok to <16 x i8>
  %i.on = shufflevector <16 x i8> %i.om, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.oo = sext <16 x i8> %i.on to <16 x i16>
  %i.op = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ol, <16 x i16> %i.oo)
  %i.oq = add <8 x i32> %i.op, %i.of              ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.08661398.i, i64 32 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.107971399.i, i64 4 ; 2 uses
  %niter1265.next.1 = add nuw nsw i32 %niter1265, 2 ; 2 uses
  %niter1265.ncmp.1.not = icmp eq i32 %niter1265.next.1, %unroll_iter1264
  br i1 %niter1265.ncmp.1.not, label %.preheader1239.loopexit.i.unr-lcssa, label %.lr.ph1401.i, !llvm.loop !279

.lr.ph1409.i:                                     ; preds = %.lr.ph1409.i.prol.loopexit, %.lr.ph1409.i
  %.117981408.i = phi ptr [ %i.pp, %.lr.ph1409.i ], [ %.117981408.i.unr, %.lr.ph1409.i.prol.loopexit ] ; 3 uses
  %.18671407.i = phi ptr [ %i.po, %.lr.ph1409.i ], [ %.18671407.i.unr, %.lr.ph1409.i.prol.loopexit ] ; 3 uses
  %.18691406.i = phi i32 [ %i.pq, %.lr.ph1409.i ], [ %.18691406.i.unr, %.lr.ph1409.i.prol.loopexit ]
  %i.ot = phi <8 x i32> [ %i.pn, %.lr.ph1409.i ], [ %.unr1268, %.lr.ph1409.i.prol.loopexit ]
  %i.ou = load <8 x i8>, ptr %.18671407.i, align 1, !tbaa !17
  %i.ov = load i8, ptr %.117981408.i, align 1, !tbaa !17
  %i.ow = sext i8 %i.ov to i16
  %i.ox = insertelement <8 x i16> poison, i16 %i.ow, i64 0
  %i.oy = shufflevector <8 x i16> %i.ox, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.oz = sext <8 x i8> %i.ou to <8 x i16>
  %i.pa = mul <8 x i16> %i.oy, %i.oz
  %i.pb = sext <8 x i16> %i.pa to <8 x i32>
  %i.pc = add <8 x i32> %i.ot, %i.pb
  %i.pd = getelementptr inbounds nuw i8, ptr %.18671407.i, i64 8
  %i.pe = getelementptr inbounds nuw i8, ptr %.117981408.i, i64 1
  %i.pf = load <8 x i8>, ptr %i.pd, align 1, !tbaa !17
  %i.pg = load i8, ptr %i.pe, align 1, !tbaa !17
  %i.ph = sext i8 %i.pg to i16
  %i.pi = insertelement <8 x i16> poison, i16 %i.ph, i64 0
  %i.pj = shufflevector <8 x i16> %i.pi, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.pk = sext <8 x i8> %i.pf to <8 x i16>
  %i.pl = mul <8 x i16> %i.pj, %i.pk
  %i.pm = sext <8 x i16> %i.pl to <8 x i32>
  %i.pn = add <8 x i32> %i.pc, %i.pm              ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.18671407.i, i64 16
  %i.pp = getelementptr inbounds nuw i8, ptr %.117981408.i, i64 2 ; 2 uses
  %i.pq = add nuw nsw i32 %.18691406.i, 2         ; 2 uses
  %exitcond1992.not.i.1 = icmp eq i32 %i.pq, %8
  br i1 %exitcond1992.not.i.1, label %._crit_edge1410.i, label %.lr.ph1409.i, !llvm.loop !280

._crit_edge1410.i:                                ; preds = %.lr.ph1409.i.prol.loopexit, %.lr.ph1409.i, %.preheader1239.i
  %.lcssa1309.i = phi <8 x i32> [ %.lcssa1308.i, %.preheader1239.i ], [ %.lcssa1246.unr, %.lr.ph1409.i.prol.loopexit ], [ %i.pn, %.lr.ph1409.i ]
  %.11798.lcssa.i = phi ptr [ %.10797.lcssa.i, %.preheader1239.i ], [ %.lcssa1245.unr, %.lr.ph1409.i.prol.loopexit ], [ %i.pp, %.lr.ph1409.i ]
  store <8 x i32> %.lcssa1309.i, ptr %.41415.i, align 32, !tbaa !17
  %i.pr = getelementptr inbounds nuw i8, ptr %.41415.i, i64 32 ; 2 uses
  %i.ps = add nuw nsw i32 %.38021413.i, 1         ; 2 uses
  %exitcond1993.not.i = icmp eq i32 %i.ps, %6
  br i1 %exitcond1993.not.i, label %._crit_edge1417.i, label %.lr.ph1416.i, !llvm.loop !281

._crit_edge1417.i:                                ; preds = %._crit_edge1410.i, %.preheader1243.i
  %.4.lcssa.i = phi ptr [ %.3782.lcssa.i, %.preheader1243.i ], [ %i.pr, %._crit_edge1410.i ] ; 2 uses
  %i.pt = getelementptr inbounds i8, ptr %.07761421.i, i64 %i.k ; 2 uses
  %i.pu = add nuw nsw i32 %.07831419.i, 8         ; 2 uses
  %i.pv = or disjoint i32 %i.pu, 7
  %i.pw = icmp slt i32 %i.pv, %4
  %scevgep1988.i.a = getelementptr i8, ptr %indvars.iv.i, i64 %i.k
  br i1 %i.pw, label %.preheader1246.i, label %.preheader1238.loopexit.i, !llvm.loop !282

.preheader1237.i:                                 ; preds = %._crit_edge1528.i, %.preheader1237.lr.ph.i
  %indvars.iv1998.i = phi ptr [ %scevgep1997.i, %.preheader1237.lr.ph.i ], [ %scevgep1999.i.a, %._crit_edge1528.i ] ; 4 uses
  %.17771532.i = phi ptr [ %.0776.lcssa.i, %.preheader1237.lr.ph.i ], [ %i.adl, %._crit_edge1528.i ] ; 11 uses
  %.51531.i = phi ptr [ %.0779.lcssa.i, %.preheader1237.lr.ph.i ], [ %.9.lcssa.i, %._crit_edge1528.i ] ; 2 uses
  %.17841530.i = phi i32 [ %.0783.lcssa.i, %.preheader1237.lr.ph.i ], [ %i.adm, %._crit_edge1528.i ]
  br i1 %i.af, label %.lr.ph1450.i, label %.preheader1236.i

end_hunk_0
begin_hunk_1_@_ZN4ncnn33gemm_transB_packed_tile_int8_avx2ERKNS_3MatES2_RS0_iiiiii:bb.a
  %.48741456.i = phi ptr [ %i.vo, %.lr.ph1458.i ], [ %.38731477.i, %bb.q ] ; 2 uses
  %.08901455.i = phi ptr [ %i.vn, %.lr.ph1458.i ], [ %.17771532.i, %bb.q ] ; 2 uses
  %.08961454.i = phi i32 [ %i.vp, %.lr.ph1458.i ], [ 0, %bb.q ]
  %i.uv = phi <4 x i32> [ %i.vm, %.lr.ph1458.i ], [ %i.ut, %bb.q ]
  %i.uw = phi <4 x i32> [ %i.vk, %.lr.ph1458.i ], [ %i.us, %bb.q ]
  %i.ux = phi <4 x i32> [ %i.vh, %.lr.ph1458.i ], [ %i.ur, %bb.q ]
  %i.uy = phi <4 x i32> [ %i.ve, %.lr.ph1458.i ], [ %i.uq, %bb.q ]
  %i.uz = load <8 x i8>, ptr %.08901455.i, align 1, !tbaa !17
  %i.va = load <8 x i8>, ptr %.48741456.i, align 1, !tbaa !17
  %i.vb = sext <8 x i8> %i.uz to <8 x i16>        ; 3 uses
  %i.vc = sext <8 x i8> %i.va to <8 x i16>        ; 3 uses
  %i.vd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.vb, <8 x i16> %i.vc)
  %i.ve = add <4 x i32> %i.vd, %i.uy              ; 2 uses
  %i.vf = shufflevector <8 x i16> %i.vc, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.vg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.vb, <8 x i16> %i.vf)
  %i.vh = add <4 x i32> %i.vg, %i.ux              ; 2 uses
  %i.vi = shufflevector <8 x i16> %i.vb, <8 x i16> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.vj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.vi, <8 x i16> %i.vc)
  %i.vk = add <4 x i32> %i.vj, %i.uw              ; 2 uses
  %i.vl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.vi, <8 x i16> %i.vf)
  %i.vm = add <4 x i32> %i.vl, %i.uv              ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.08901455.i, i64 8
  %i.vo = getelementptr inbounds nuw i8, ptr %.48741456.i, i64 8
  %i.vp = add nuw nsw i32 %.08961454.i, 2         ; 2 uses
  %i.vq = or disjoint i32 %i.vp, 1
  %i.vr = icmp slt i32 %i.vq, %8
  br i1 %i.vr, label %.lr.ph1458.i, label %.preheader1232.loopexit.i, !llvm.loop !286

.lr.ph1469.i:                                     ; preds = %.preheader1232.i, %.lr.ph1469.i
  %.58751468.i = phi ptr [ %i.wy, %.lr.ph1469.i ], [ %.4874.lcssa.i, %.preheader1232.i ] ; 2 uses
  %.18911467.i = phi ptr [ %i.wx, %.lr.ph1469.i ], [ %.0890.lcssa.i, %.preheader1232.i ] ; 2 uses
  %.18971466.i = phi i32 [ %i.wz, %.lr.ph1469.i ], [ %.0896.lcssa.i, %.preheader1232.i ]
  %i.vs = phi <4 x i32> [ %i.ww, %.lr.ph1469.i ], [ %.lcssa1266.i, %.preheader1232.i ]
  %i.vt = phi <4 x i32> [ %i.wu, %.lr.ph1469.i ], [ %.lcssa1267.i, %.preheader1232.i ]
  %i.vu = phi <4 x i32> [ %i.ws, %.lr.ph1469.i ], [ %.lcssa1268.i, %.preheader1232.i ]
  %i.vv = phi <4 x i32> [ %i.wq, %.lr.ph1469.i ], [ %.lcssa1269.i, %.preheader1232.i ]
  %i.vw = load float, ptr %.18911467.i, align 1, !tbaa !17
  %i.vx = insertelement <4 x float> poison, float %i.vw, i64 0
  %i.vy = load float, ptr %.58751468.i, align 1, !tbaa !17
  %i.vz = insertelement <4 x float> poison, float %i.vy, i64 0
  %i.wa = bitcast <4 x float> %i.vx to <16 x i8>
  %i.wb = shufflevector <16 x i8> %i.wa, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.wc = sext <8 x i8> %i.wb to <8 x i16>        ; 3 uses
  %i.wd = bitcast <4 x float> %i.vz to <16 x i8>
  %i.we = shufflevector <16 x i8> %i.wd, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 0>
  %i.wf = sext <8 x i8> %i.we to <8 x i16>        ; 4 uses
  %i.wg = mul nsw <8 x i16> %i.wf, %i.wc          ; 2 uses
  %i.wh = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.wc, <8 x i16> %i.wf) ; 2 uses
  %i.wi = shufflevector <8 x i16> %i.wc, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.wj = mul nsw <8 x i16> %i.wi, %i.wf          ; 2 uses
  %i.wk = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.wi, <8 x i16> %i.wf) ; 2 uses
  %i.wl = shufflevector <8 x i16> %i.wg, <8 x i16> %i.wh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wm = shufflevector <8 x i16> %i.wg, <8 x i16> %i.wh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.wn = shufflevector <8 x i16> %i.wj, <8 x i16> %i.wk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wo = shufflevector <8 x i16> %i.wj, <8 x i16> %i.wk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.wp = bitcast <8 x i16> %i.wl to <4 x i32>
  %i.wq = add <4 x i32> %i.vv, %i.wp              ; 2 uses
  %i.wr = bitcast <8 x i16> %i.wm to <4 x i32>
  %i.ws = add <4 x i32> %i.vu, %i.wr              ; 2 uses
  %i.wt = bitcast <8 x i16> %i.wn to <4 x i32>
  %i.wu = add <4 x i32> %i.vt, %i.wt              ; 2 uses
  %i.wv = bitcast <8 x i16> %i.wo to <4 x i32>
  %i.ww = add <4 x i32> %i.vs, %i.wv              ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.18911467.i, i64 4
  %i.wy = getelementptr inbounds nuw i8, ptr %.58751468.i, i64 4 ; 2 uses
  %i.wz = add nuw nsw i32 %.18971466.i, 1         ; 2 uses
  %exitcond1996.not.i = icmp eq i32 %i.wz, %8
  br i1 %exitcond1996.not.i, label %._crit_edge1470.i, label %.lr.ph1469.i, !llvm.loop !287

._crit_edge1470.i:                                ; preds = %.lr.ph1469.i, %.preheader1232.i
  %.lcssa1273.i = phi <4 x i32> [ %.lcssa1269.i, %.preheader1232.i ], [ %i.wq, %.lr.ph1469.i ]
  %.lcssa1272.i = phi <4 x i32> [ %.lcssa1268.i, %.preheader1232.i ], [ %i.ws, %.lr.ph1469.i ]
  %.lcssa1271.i = phi <4 x i32> [ %.lcssa1267.i, %.preheader1232.i ], [ %i.wu, %.lr.ph1469.i ]
  %.lcssa1270.i = phi <4 x i32> [ %.lcssa1266.i, %.preheader1232.i ], [ %i.ww, %.lr.ph1469.i ]
  %.5875.lcssa.i = phi ptr [ %.4874.lcssa.i, %.preheader1232.i ], [ %i.wy, %.lr.ph1469.i ] ; 2 uses
  store <4 x i32> %.lcssa1273.i, ptr %.71478.i, align 16, !tbaa !17
  %i.xa = getelementptr inbounds nuw i8, ptr %.71478.i, i64 16
  store <4 x i32> %.lcssa1272.i, ptr %i.xa, align 16, !tbaa !17
  %i.xb = getelementptr inbounds nuw i8, ptr %.71478.i, i64 32
  store <4 x i32> %.lcssa1271.i, ptr %i.xb, align 16, !tbaa !17
  %i.xc = getelementptr inbounds nuw i8, ptr %.71478.i, i64 48
  store <4 x i32> %.lcssa1270.i, ptr %i.xc, align 16, !tbaa !17
  %i.xd = getelementptr inbounds nuw i8, ptr %.71478.i, i64 64 ; 2 uses
  %i.xe = add nuw nsw i32 %.18831476.i, 4         ; 3 uses
  %i.xf = or disjoint i32 %i.xe, 3
  %i.xg = icmp slt i32 %i.xf, %6
  br i1 %i.xg, label %.lr.ph1479.i, label %.preheader1235.i, !llvm.loop !288

.preheader1234.i:                                 ; preds = %._crit_edge1497.i, %.preheader1235.i
  %.2884.lcssa.i = phi i32 [ %.1883.lcssa.i, %.preheader1235.i ], [ %i.aae, %._crit_edge1497.i ] ; 2 uses
  %.6876.lcssa.i = phi ptr [ %.3873.lcssa.i, %.preheader1235.i ], [ %.8878.lcssa.i, %._crit_edge1497.i ]
  %.8.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader1235.i ], [ %i.aad, %._crit_edge1497.i ] ; 2 uses
  %i.xh = icmp slt i32 %.2884.lcssa.i, %6
  br i1 %i.xh, label %.lr.ph1527.i, label %._crit_edge1528.i

.lr.ph1504.i:                                     ; preds = %.preheader1235.i, %._crit_edge1497.i
  %.81503.i = phi ptr [ %i.aad, %._crit_edge1497.i ], [ %.7.lcssa.i, %.preheader1235.i ] ; 5 uses
  %.68761502.i = phi ptr [ %.8878.lcssa.i, %._crit_edge1497.i ], [ %.3873.lcssa.i, %.preheader1235.i ] ; 4 uses
  %.28841501.i = phi i32 [ %i.aae, %._crit_edge1497.i ], [ %.1883.lcssa.i, %.preheader1235.i ]
  br i1 %i.ag, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph1504.i
  %i.xi = load <4 x i32>, ptr %.81503.i, align 16, !tbaa !17
  %i.xj = getelementptr inbounds nuw i8, ptr %.81503.i, i64 16
  %i.xk = load <4 x i32>, ptr %i.xj, align 16, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph1504.i
  %i.xl = phi <4 x i32> [ %i.xi, %bb.r ], [ zeroinitializer, %.lr.ph1504.i ] ; 3 uses
  %i.xm = phi <4 x i32> [ %i.xk, %bb.r ], [ zeroinitializer, %.lr.ph1504.i ] ; 3 uses
  br i1 %i.ah, label %.lr.ph1487.i.preheader, label %.preheader1231.i

.lr.ph1487.i.preheader:                           ; preds = %bb.s
  br i1 %i.ax, label %.lr.ph1487.i.epil.preheader, label %.lr.ph1487.i

.preheader1231.loopexit.i.unr-lcssa:              ; preds = %.lr.ph1487.i
  br i1 %lcmp.mod1274.not.not, label %.lr.ph1487.i.epil.preheader, label %.preheader1231.loopexit.i

.lr.ph1487.i.epil.preheader:                      ; preds = %.preheader1231.loopexit.i.unr-lcssa, %.lr.ph1487.i.preheader
  %.78771485.i.epil.init = phi ptr [ %.68761502.i, %.lr.ph1487.i.preheader ], [ %i.ze, %.preheader1231.loopexit.i.unr-lcssa ]
  %.08981484.i.epil.init = phi ptr [ %.17771532.i, %.lr.ph1487.i.preheader ], [ %i.zd, %.preheader1231.loopexit.i.unr-lcssa ]
  %.epil.init1271 = phi <4 x i32> [ %i.xm, %.lr.ph1487.i.preheader ], [ %i.zc, %.preheader1231.loopexit.i.unr-lcssa ]
  %.epil.init1273 = phi <4 x i32> [ %i.xl, %.lr.ph1487.i.preheader ], [ %i.yz, %.preheader1231.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1277)
  %i.xn = load <8 x i8>, ptr %.08981484.i.epil.init, align 1, !tbaa !17
  %i.xo = load float, ptr %.78771485.i.epil.init, align 1, !tbaa !17
  %i.xp = insertelement <4 x float> poison, float %i.xo, i64 0
  %i.xq = sext <8 x i8> %i.xn to <8 x i16>        ; 2 uses
  %i.xr = bitcast <4 x float> %i.xp to <16 x i8>
  %i.xs = shufflevector <16 x i8> %i.xr, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.xt = sext <8 x i8> %i.xs to <8 x i16>        ; 2 uses
  %i.xu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.xq, <8 x i16> %i.xt)
  %i.xv = add <4 x i32> %i.xu, %.epil.init1273
  %i.xw = shufflevector <8 x i16> %i.xt, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  %i.xx = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.xq, <8 x i16> %i.xw)
  %i.xy = add <4 x i32> %i.xx, %.epil.init1271
  br label %.preheader1231.loopexit.i

.preheader1231.loopexit.i:                        ; preds = %.preheader1231.loopexit.i.unr-lcssa, %.lr.ph1487.i.epil.preheader
  %.lcssa1195 = phi <4 x i32> [ %i.yz, %.preheader1231.loopexit.i.unr-lcssa ], [ %i.xv, %.lr.ph1487.i.epil.preheader ]
  %.lcssa1194 = phi <4 x i32> [ %i.zc, %.preheader1231.loopexit.i.unr-lcssa ], [ %i.xy, %.lr.ph1487.i.epil.preheader ]
  %i.xz = getelementptr i8, ptr %.68761502.i, i64 %i.as
  %scevgep2000.i = getelementptr i8, ptr %i.xz, i64 4
  br label %.preheader1231.i

.preheader1231.i:                                 ; preds = %.preheader1231.loopexit.i, %bb.s
  %.lcssa1275.i = phi <4 x i32> [ %i.xl, %bb.s ], [ %.lcssa1195, %.preheader1231.loopexit.i ] ; 2 uses
  %.lcssa1274.i = phi <4 x i32> [ %i.xm, %bb.s ], [ %.lcssa1194, %.preheader1231.loopexit.i ] ; 2 uses
  %.0900.lcssa.i = phi i32 [ 0, %bb.s ], [ %i.am, %.preheader1231.loopexit.i ] ; 2 uses
  %.0898.lcssa.i = phi ptr [ %.17771532.i, %bb.s ], [ %indvars.iv1998.i, %.preheader1231.loopexit.i ]
  %.7877.lcssa.i = phi ptr [ %.68761502.i, %bb.s ], [ %scevgep2000.i, %.preheader1231.loopexit.i ] ; 2 uses
  %i.ya = icmp slt i32 %.0900.lcssa.i, %8
  br i1 %i.ya, label %.lr.ph1496.i, label %._crit_edge1497.i

.lr.ph1487.i:                                     ; preds = %.lr.ph1487.i.preheader, %.lr.ph1487.i
  %.78771485.i = phi ptr [ %i.ze, %.lr.ph1487.i ], [ %.68761502.i, %.lr.ph1487.i.preheader ] ; 3 uses
  %.08981484.i = phi ptr [ %i.zd, %.lr.ph1487.i ], [ %.17771532.i, %.lr.ph1487.i.preheader ] ; 3 uses
  %i.yb = phi <4 x i32> [ %i.zc, %.lr.ph1487.i ], [ %i.xm, %.lr.ph1487.i.preheader ]
  %i.yc = phi <4 x i32> [ %i.yz, %.lr.ph1487.i ], [ %i.xl, %.lr.ph1487.i.preheader ]
  %niter1279 = phi i32 [ %niter1279.next.1, %.lr.ph1487.i ], [ 0, %.lr.ph1487.i.preheader ]
  %i.yd = load <8 x i8>, ptr %.08981484.i, align 1, !tbaa !17
  %i.ye = load float, ptr %.78771485.i, align 1, !tbaa !17
  %i.yf = insertelement <4 x float> poison, float %i.ye, i64 0
  %i.yg = sext <8 x i8> %i.yd to <8 x i16>        ; 2 uses
  %i.yh = bitcast <4 x float> %i.yf to <16 x i8>
  %i.yi = shufflevector <16 x i8> %i.yh, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yj = sext <8 x i8> %i.yi to <8 x i16>        ; 2 uses
  %i.yk = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.yg, <8 x i16> %i.yj)
  %i.yl = add <4 x i32> %i.yk, %i.yc
  %i.ym = shufflevector <8 x i16> %i.yj, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  %i.yn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.yg, <8 x i16> %i.ym)
  %i.yo = add <4 x i32> %i.yn, %i.yb
  %i.yp = getelementptr inbounds nuw i8, ptr %.08981484.i, i64 8
  %i.yq = getelementptr inbounds nuw i8, ptr %.78771485.i, i64 4
  %i.yr = load <8 x i8>, ptr %i.yp, align 1, !tbaa !17
  %i.ys = load float, ptr %i.yq, align 1, !tbaa !17
  %i.yt = insertelement <4 x float> poison, float %i.ys, i64 0
  %i.yu = sext <8 x i8> %i.yr to <8 x i16>        ; 2 uses
  %i.yv = bitcast <4 x float> %i.yt to <16 x i8>
  %i.yw = shufflevector <16 x i8> %i.yv, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yx = sext <8 x i8> %i.yw to <8 x i16>        ; 2 uses
  %i.yy = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.yu, <8 x i16> %i.yx)
  %i.yz = add <4 x i32> %i.yy, %i.yl              ; 3 uses
  %i.za = shufflevector <8 x i16> %i.yx, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  %i.zb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.yu, <8 x i16> %i.za)
  %i.zc = add <4 x i32> %i.zb, %i.yo              ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.08981484.i, i64 16 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.78771485.i, i64 8 ; 2 uses
  %niter1279.next.1 = add nuw nsw i32 %niter1279, 2 ; 2 uses
  %niter1279.ncmp.1.not = icmp eq i32 %niter1279.next.1, %unroll_iter1278
  br i1 %niter1279.ncmp.1.not, label %.preheader1231.loopexit.i.unr-lcssa, label %.lr.ph1487.i, !llvm.loop !289

.lr.ph1496.i:                                     ; preds = %.preheader1231.i, %.lr.ph1496.i
  %.88781495.i = phi ptr [ %i.aaa, %.lr.ph1496.i ], [ %.7877.lcssa.i, %.preheader1231.i ] ; 2 uses
  %.18991494.i = phi ptr [ %i.zz, %.lr.ph1496.i ], [ %.0898.lcssa.i, %.preheader1231.i ] ; 2 uses
  %.19011493.i = phi i32 [ %i.aab, %.lr.ph1496.i ], [ %.0900.lcssa.i, %.preheader1231.i ]
  %i.zf = phi <4 x i32> [ %i.zy, %.lr.ph1496.i ], [ %.lcssa1274.i, %.preheader1231.i ]
  %i.zg = phi <4 x i32> [ %i.zw, %.lr.ph1496.i ], [ %.lcssa1275.i, %.preheader1231.i ]
  %i.zh = load float, ptr %.18991494.i, align 1, !tbaa !17
  %i.zi = insertelement <4 x float> poison, float %i.zh, i64 0
  %i.zj = load i16, ptr %.88781495.i, align 2, !tbaa !338
  %i.zk = insertelement <8 x i16> poison, i16 %i.zj, i64 0
  %i.zl = bitcast <4 x float> %i.zi to <16 x i8>
  %i.zm = shufflevector <16 x i8> %i.zl, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.zn = sext <8 x i8> %i.zm to <8 x i16>        ; 2 uses
  %i.zo = bitcast <8 x i16> %i.zk to <16 x i8>
  %i.zp = shufflevector <16 x i8> %i.zo, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0>
  %i.zq = sext <8 x i8> %i.zp to <8 x i16>        ; 2 uses
  %i.zr = mul nsw <8 x i16> %i.zq, %i.zn          ; 2 uses
  %i.zs = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.zn, <8 x i16> %i.zq) ; 2 uses
  %i.zt = shufflevector <8 x i16> %i.zr, <8 x i16> %i.zs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zu = shufflevector <8 x i16> %i.zr, <8 x i16> %i.zs, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.zv = bitcast <8 x i16> %i.zt to <4 x i32>
  %i.zw = add <4 x i32> %i.zg, %i.zv              ; 2 uses
  %i.zx = bitcast <8 x i16> %i.zu to <4 x i32>
  %i.zy = add <4 x i32> %i.zf, %i.zx              ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.18991494.i, i64 4
  %i.aaa = getelementptr inbounds nuw i8, ptr %.88781495.i, i64 2 ; 2 uses
  %i.aab = add nuw nsw i32 %.19011493.i, 1        ; 2 uses
  %exitcond2001.not.i = icmp eq i32 %i.aab, %8
  br i1 %exitcond2001.not.i, label %._crit_edge1497.i, label %.lr.ph1496.i, !llvm.loop !290

._crit_edge1497.i:                                ; preds = %.lr.ph1496.i, %.preheader1231.i
  %.lcssa1277.i = phi <4 x i32> [ %.lcssa1275.i, %.preheader1231.i ], [ %i.zw, %.lr.ph1496.i ]
  %.lcssa1276.i = phi <4 x i32> [ %.lcssa1274.i, %.preheader1231.i ], [ %i.zy, %.lr.ph1496.i ]
  %.8878.lcssa.i = phi ptr [ %.7877.lcssa.i, %.preheader1231.i ], [ %i.aaa, %.lr.ph1496.i ] ; 2 uses
  store <4 x i32> %.lcssa1277.i, ptr %.81503.i, align 16, !tbaa !17
  %i.aac = getelementptr inbounds nuw i8, ptr %.81503.i, i64 16
  store <4 x i32> %.lcssa1276.i, ptr %i.aac, align 16, !tbaa !17
  %i.aad = getelementptr inbounds nuw i8, ptr %.81503.i, i64 32 ; 2 uses
  %i.aae = add nuw nsw i32 %.28841501.i, 2        ; 3 uses
  %i.aaf = or disjoint i32 %i.aae, 1
  %i.aag = icmp slt i32 %i.aaf, %6
  br i1 %i.aag, label %.lr.ph1504.i, label %.preheader1234.i, !llvm.loop !291

.lr.ph1527.i:                                     ; preds = %.preheader1234.i, %._crit_edge1521.i
  %.91526.i = phi ptr [ %i.adj, %._crit_edge1521.i ], [ %.8.lcssa.i, %.preheader1234.i ] ; 3 uses
  %.98791525.i = phi ptr [ %.11881.lcssa.i, %._crit_edge1521.i ], [ %.6876.lcssa.i, %.preheader1234.i ] ; 4 uses
  %.38851524.i = phi i32 [ %i.adk, %._crit_edge1521.i ], [ %.2884.lcssa.i, %.preheader1234.i ]
  br i1 %i.ag, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph1527.i
  %i.aah = load <4 x i32>, ptr %.91526.i, align 16, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph1527.i
  %i.aai = phi <4 x i32> [ %i.aah, %bb.t ], [ zeroinitializer, %.lr.ph1527.i ] ; 3 uses
  br i1 %i.ah, label %.lr.ph1512.i.preheader, label %.preheader1230.i

.lr.ph1512.i.preheader:                           ; preds = %bb.u
  br i1 %i.az, label %.lr.ph1512.i.epil.preheader, label %.lr.ph1512.i

.preheader1230.loopexit.i.unr-lcssa:              ; preds = %.lr.ph1512.i
  br i1 %lcmp.mod1283.not.not, label %.lr.ph1512.i.epil.preheader, label %.preheader1230.loopexit.i

.lr.ph1512.i.epil.preheader:                      ; preds = %.preheader1230.loopexit.i.unr-lcssa, %.lr.ph1512.i.preheader
  %.108801510.i.epil.init = phi ptr [ %.98791525.i, %.lr.ph1512.i.preheader ], [ %i.acg, %.preheader1230.loopexit.i.unr-lcssa ]
  %.09021509.i.epil.init = phi ptr [ %.17771532.i, %.lr.ph1512.i.preheader ], [ %i.acf, %.preheader1230.loopexit.i.unr-lcssa ]
  %.epil.init1282 = phi <4 x i32> [ %i.aai, %.lr.ph1512.i.preheader ], [ %i.ace, %.preheader1230.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1285)
  %i.aaj = load <8 x i8>, ptr %.09021509.i.epil.init, align 1, !tbaa !17
  %i.aak = load i16, ptr %.108801510.i.epil.init, align 2, !tbaa !338
  %i.aal = insertelement <8 x i16> poison, i16 %i.aak, i64 0
  %i.aam = sext <8 x i8> %i.aaj to <8 x i16>
  %i.aan = bitcast <8 x i16> %i.aal to <16 x i8>
  %i.aao = shufflevector <16 x i8> %i.aan, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aap = sext <8 x i8> %i.aao to <8 x i16>
  %i.aaq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aam, <8 x i16> %i.aap)
  %i.aar = add <4 x i32> %i.aaq, %.epil.init1282
  br label %.preheader1230.loopexit.i

.preheader1230.loopexit.i:                        ; preds = %.preheader1230.loopexit.i.unr-lcssa, %.lr.ph1512.i.epil.preheader
  %.lcssa1201 = phi <4 x i32> [ %i.ace, %.preheader1230.loopexit.i.unr-lcssa ], [ %i.aar, %.lr.ph1512.i.epil.preheader ]
  %i.aas = getelementptr i8, ptr %.98791525.i, i64 %i.at
  %scevgep2002.i = getelementptr i8, ptr %i.aas, i64 2
  br label %.preheader1230.i

.preheader1230.i:                                 ; preds = %.preheader1230.loopexit.i, %bb.u
  %.lcssa1278.i = phi <4 x i32> [ %i.aai, %bb.u ], [ %.lcssa1201, %.preheader1230.loopexit.i ] ; 3 uses
  %.0904.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.am, %.preheader1230.loopexit.i ] ; 5 uses
  %.0902.lcssa.i = phi ptr [ %.17771532.i, %bb.u ], [ %indvars.iv1998.i, %.preheader1230.loopexit.i ] ; 3 uses
  %.10880.lcssa.i = phi ptr [ %.98791525.i, %bb.u ], [ %scevgep2002.i, %.preheader1230.loopexit.i ] ; 4 uses
  %i.aat = icmp slt i32 %.0904.lcssa.i, %8
  br i1 %i.aat, label %.lr.ph1520.i.preheader, label %._crit_edge1521.i

.lr.ph1520.i.preheader:                           ; preds = %.preheader1230.i
  %i.aau = sub i32 %8, %.0904.lcssa.i
  %.neg1342 = add i32 %.0904.lcssa.i, 1
  %xtraiter1288 = and i32 %i.aau, 1
  %lcmp.mod1289.not = icmp eq i32 %xtraiter1288, 0
  br i1 %lcmp.mod1289.not, label %.lr.ph1520.i.prol.loopexit, label %.lr.ph1520.i.prol

.lr.ph1520.i.prol:                                ; preds = %.lr.ph1520.i.preheader
  %i.aav = load <8 x i8>, ptr %.0902.lcssa.i, align 1, !tbaa !17
  %i.aaw = load i8, ptr %.10880.lcssa.i, align 1, !tbaa !17
  %i.aax = sext i8 %i.aaw to i16
  %i.aay = insertelement <8 x i16> poison, i16 %i.aax, i64 0
  %i.aaz = shufflevector <8 x i16> %i.aay, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aba = sext <8 x i8> %i.aav to <8 x i16>      ; 2 uses
  %i.abb = mul <8 x i16> %i.aaz, %i.aba
  %i.abc = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.aba, <8 x i16> %i.aaz)
  %i.abd = shufflevector <8 x i16> %i.abb, <8 x i16> %i.abc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abe = bitcast <8 x i16> %i.abd to <4 x i32>
  %i.abf = add <4 x i32> %.lcssa1278.i, %i.abe    ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %.0902.lcssa.i, i64 4
  %i.abh = getelementptr inbounds nuw i8, ptr %.10880.lcssa.i, i64 1 ; 2 uses
  %i.abi = add nuw nsw i32 %.0904.lcssa.i, 1
  br label %.lr.ph1520.i.prol.loopexit

.lr.ph1520.i.prol.loopexit:                       ; preds = %.lr.ph1520.i.prol, %.lr.ph1520.i.preheader
  %.lcssa1203.unr = phi <4 x i32> [ poison, %.lr.ph1520.i.preheader ], [ %i.abf, %.lr.ph1520.i.prol ]
  %.lcssa1202.unr = phi ptr [ poison, %.lr.ph1520.i.preheader ], [ %i.abh, %.lr.ph1520.i.prol ]
  %.118811519.i.unr = phi ptr [ %.10880.lcssa.i, %.lr.ph1520.i.preheader ], [ %i.abh, %.lr.ph1520.i.prol ]
  %.19031518.i.unr = phi ptr [ %.0902.lcssa.i, %.lr.ph1520.i.preheader ], [ %i.abg, %.lr.ph1520.i.prol ]
  %.19051517.i.unr = phi i32 [ %.0904.lcssa.i, %.lr.ph1520.i.preheader ], [ %i.abi, %.lr.ph1520.i.prol ]
  %.unr1290 = phi <4 x i32> [ %.lcssa1278.i, %.lr.ph1520.i.preheader ], [ %i.abf, %.lr.ph1520.i.prol ]
  %i.abj = icmp eq i32 %8, %.neg1342
  br i1 %i.abj, label %._crit_edge1521.i, label %.lr.ph1520.i

.lr.ph1512.i:                                     ; preds = %.lr.ph1512.i.preheader, %.lr.ph1512.i
  %.108801510.i = phi ptr [ %i.acg, %.lr.ph1512.i ], [ %.98791525.i, %.lr.ph1512.i.preheader ] ; 3 uses
  %.09021509.i = phi ptr [ %i.acf, %.lr.ph1512.i ], [ %.17771532.i, %.lr.ph1512.i.preheader ] ; 3 uses
  %i.abk = phi <4 x i32> [ %i.ace, %.lr.ph1512.i ], [ %i.aai, %.lr.ph1512.i.preheader ]
  %niter1287 = phi i32 [ %niter1287.next.1, %.lr.ph1512.i ], [ 0, %.lr.ph1512.i.preheader ]
  %i.abl = load <8 x i8>, ptr %.09021509.i, align 1, !tbaa !17
  %i.abm = load i16, ptr %.108801510.i, align 2, !tbaa !338
  %i.abn = insertelement <8 x i16> poison, i16 %i.abm, i64 0
  %i.abo = sext <8 x i8> %i.abl to <8 x i16>
  %i.abp = bitcast <8 x i16> %i.abn to <16 x i8>
  %i.abq = shufflevector <16 x i8> %i.abp, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.abr = sext <8 x i8> %i.abq to <8 x i16>
  %i.abs = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.abo, <8 x i16> %i.abr)
  %i.abt = add <4 x i32> %i.abs, %i.abk
  %i.abu = getelementptr inbounds nuw i8, ptr %.09021509.i, i64 8
  %i.abv = getelementptr inbounds nuw i8, ptr %.108801510.i, i64 2
  %i.abw = load <8 x i8>, ptr %i.abu, align 1, !tbaa !17
  %i.abx = load i16, ptr %i.abv, align 2, !tbaa !338
  %i.aby = insertelement <8 x i16> poison, i16 %i.abx, i64 0
  %i.abz = sext <8 x i8> %i.abw to <8 x i16>
  %i.aca = bitcast <8 x i16> %i.aby to <16 x i8>
  %i.acb = shufflevector <16 x i8> %i.aca, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.acc = sext <8 x i8> %i.acb to <8 x i16>
  %i.acd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.abz, <8 x i16> %i.acc)
  %i.ace = add <4 x i32> %i.acd, %i.abt           ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %.09021509.i, i64 16 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.108801510.i, i64 4 ; 2 uses
  %niter1287.next.1 = add nuw nsw i32 %niter1287, 2 ; 2 uses
  %niter1287.ncmp.1.not = icmp eq i32 %niter1287.next.1, %unroll_iter1286
  br i1 %niter1287.ncmp.1.not, label %.preheader1230.loopexit.i.unr-lcssa, label %.lr.ph1512.i, !llvm.loop !292

.lr.ph1520.i:                                     ; preds = %.lr.ph1520.i.prol.loopexit, %.lr.ph1520.i
  %.118811519.i = phi ptr [ %i.adh, %.lr.ph1520.i ], [ %.118811519.i.unr, %.lr.ph1520.i.prol.loopexit ] ; 3 uses
  %.19031518.i = phi ptr [ %i.adg, %.lr.ph1520.i ], [ %.19031518.i.unr, %.lr.ph1520.i.prol.loopexit ] ; 3 uses
  %.19051517.i = phi i32 [ %i.adi, %.lr.ph1520.i ], [ %.19051517.i.unr, %.lr.ph1520.i.prol.loopexit ]
  %i.ach = phi <4 x i32> [ %i.adf, %.lr.ph1520.i ], [ %.unr1290, %.lr.ph1520.i.prol.loopexit ]
  %i.aci = load <8 x i8>, ptr %.19031518.i, align 1, !tbaa !17
  %i.acj = load i8, ptr %.118811519.i, align 1, !tbaa !17
  %i.ack = sext i8 %i.acj to i16
  %i.acl = insertelement <8 x i16> poison, i16 %i.ack, i64 0
  %i.acm = shufflevector <8 x i16> %i.acl, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.acn = sext <8 x i8> %i.aci to <8 x i16>      ; 2 uses
  %i.aco = mul <8 x i16> %i.acm, %i.acn
  %i.acp = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.acn, <8 x i16> %i.acm)
  %i.acq = shufflevector <8 x i16> %i.aco, <8 x i16> %i.acp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.acr = bitcast <8 x i16> %i.acq to <4 x i32>
  %i.acs = add <4 x i32> %i.ach, %i.acr
  %i.act = getelementptr inbounds nuw i8, ptr %.19031518.i, i64 4
  %i.acu = getelementptr inbounds nuw i8, ptr %.118811519.i, i64 1
  %i.acv = load <8 x i8>, ptr %i.act, align 1, !tbaa !17
  %i.acw = load i8, ptr %i.acu, align 1, !tbaa !17
  %i.acx = sext i8 %i.acw to i16
  %i.acy = insertelement <8 x i16> poison, i16 %i.acx, i64 0
  %i.acz = shufflevector <8 x i16> %i.acy, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ada = sext <8 x i8> %i.acv to <8 x i16>      ; 2 uses
  %i.adb = mul <8 x i16> %i.acz, %i.ada
  %i.adc = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ada, <8 x i16> %i.acz)
  %i.add = shufflevector <8 x i16> %i.adb, <8 x i16> %i.adc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ade = bitcast <8 x i16> %i.add to <4 x i32>
  %i.adf = add <4 x i32> %i.acs, %i.ade           ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %.19031518.i, i64 8
  %i.adh = getelementptr inbounds nuw i8, ptr %.118811519.i, i64 2 ; 2 uses
  %i.adi = add nuw nsw i32 %.19051517.i, 2        ; 2 uses
  %exitcond2003.not.i.1 = icmp eq i32 %i.adi, %8
  br i1 %exitcond2003.not.i.1, label %._crit_edge1521.i, label %.lr.ph1520.i, !llvm.loop !293

._crit_edge1521.i:                                ; preds = %.lr.ph1520.i.prol.loopexit, %.lr.ph1520.i, %.preheader1230.i
  %.lcssa1279.i = phi <4 x i32> [ %.lcssa1278.i, %.preheader1230.i ], [ %.lcssa1203.unr, %.lr.ph1520.i.prol.loopexit ], [ %i.adf, %.lr.ph1520.i ]
  %.11881.lcssa.i = phi ptr [ %.10880.lcssa.i, %.preheader1230.i ], [ %.lcssa1202.unr, %.lr.ph1520.i.prol.loopexit ], [ %i.adh, %.lr.ph1520.i ]
  store <4 x i32> %.lcssa1279.i, ptr %.91526.i, align 16, !tbaa !17
  %i.adj = getelementptr inbounds nuw i8, ptr %.91526.i, i64 16 ; 2 uses
  %i.adk = add nuw nsw i32 %.38851524.i, 1        ; 2 uses
  %exitcond2004.not.i = icmp eq i32 %i.adk, %6
  br i1 %exitcond2004.not.i, label %._crit_edge1528.i, label %.lr.ph1527.i, !llvm.loop !294

._crit_edge1528.i:                                ; preds = %._crit_edge1521.i, %.preheader1234.i
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader1234.i ], [ %i.adj, %._crit_edge1521.i ] ; 2 uses
  %i.adl = getelementptr inbounds i8, ptr %.17771532.i, i64 %i.aj ; 2 uses
  %i.adm = add nuw nsw i32 %.17841530.i, 4        ; 3 uses
  %i.adn = or disjoint i32 %i.adm, 3
  %i.ado = icmp slt i32 %i.adn, %4
  %scevgep1999.i.a = getelementptr i8, ptr %indvars.iv1998.i, i64 %i.aj
  br i1 %i.ado, label %.preheader1237.i, label %.preheader1229.i, !llvm.loop !295

.preheader1228.i:                                 ; preds = %._crit_edge1649.i, %.preheader1228.lr.ph.i
  %indvars.iv2009.i = phi ptr [ %scevgep2008.i, %.preheader1228.lr.ph.i ], [ %scevgep2010.i.a, %._crit_edge1649.i ] ; 4 uses
  %.27781653.i = phi ptr [ %.1777.lcssa.i, %.preheader1228.lr.ph.i ], [ %i.ayk, %._crit_edge1649.i ] ; 18 uses
  %.101652.i = phi ptr [ %.5.lcssa.i, %.preheader1228.lr.ph.i ], [ %.14.lcssa.i, %._crit_edge1649.i ] ; 2 uses
  %.27851651.i = phi i32 [ %.1784.lcssa.i, %.preheader1228.lr.ph.i ], [ %i.ayl, %._crit_edge1649.i ]
  br i1 %i.pz, label %.lr.ph1557.i, label %.preheader1227.i

.preheader1220.i:                                 ; preds = %._crit_edge1649.i, %.preheader1229.i
  %.2785.lcssa.i = phi i32 [ %.1784.lcssa.i, %.preheader1229.i ], [ %i.ayl, %._crit_edge1649.i ] ; 2 uses
  %.10.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader1229.i ], [ %.14.lcssa.i, %._crit_edge1649.i ]
  %.2778.lcssa.i = phi ptr [ %.1777.lcssa.i, %.preheader1229.i ], [ %i.ayk, %._crit_edge1649.i ] ; 2 uses
  %i.adp = icmp slt i32 %.2785.lcssa.i, %4
  br i1 %i.adp, label %.preheader1219.lr.ph.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit

.preheader1219.lr.ph.i:                           ; preds = %.preheader1220.i
  %i.adq = icmp sgt i32 %6, 7
  %i.adr = icmp eq i32 %7, 0                      ; 4 uses
  %i.ads = icmp sgt i32 %8, 1                     ; 3 uses
  %i.adt = icmp sgt i32 %8, 3
  %i.adu = sext i32 %8 to i64                     ; 2 uses
  %i.adv = add i32 %8, -2                         ; 4 uses
  %i.adw = and i32 %i.adv, -2
  %i.adx = add i32 %i.adw, 2                      ; 3 uses
  %i.ady = and i32 %6, -8
  %i.adz = zext i32 %i.adv to i64                 ; 2 uses
  %i.aea = lshr i64 %i.adz, 1                     ; 4 uses
  %i.aeb = shl nuw nsw i64 %i.aea, 3
  %i.aec = and i64 %i.adz, 4294967294
  %i.aed = getelementptr i8, ptr %.2778.lcssa.i, i64 %i.aec
  %scevgep2019.i = getelementptr i8, ptr %i.aed, i64 2
  %i.aee = shl nuw nsw i64 %i.aea, 2
  %i.aef = and i32 %8, -4                         ; 2 uses
  %i.aeg = shl nuw nsw i64 %i.aea, 4
  %i.aeh = add nuw nsw i64 %i.aea, 1              ; 5 uses
  %i.aei = add i32 %8, -2                         ; 3 uses
  %i.aej = lshr i32 %i.aei, 1                     ; 3 uses
  %i.aek = add nuw i32 %i.aej, 1                  ; 4 uses
  %i.ael = icmp eq i32 %i.aej, 0
  %unroll_iter1325 = and i32 %i.aek, -2
  %i.aem = and i32 %i.aei, 2
  %lcmp.mod1321.not.not = icmp eq i32 %i.aem, 0
  %lcmp.mod1324 = trunc i32 %i.aek to i1
  %i.aen = icmp eq i32 %i.aej, 0
  %unroll_iter1336 = and i32 %i.aek, -2
  %i.aeo = and i32 %i.aei, 2
  %lcmp.mod1333.not.not = icmp eq i32 %i.aeo, 0
  %lcmp.mod1335 = trunc i32 %i.aek to i1
  %min.iters.check981 = icmp ult i32 %i.adv, 6
  %min.iters.check983 = icmp ult i32 %i.adv, 30
  %i.aep = and i64 %i.aeh, 12
  %n.vec985 = and i64 %i.aeh, 4294967280          ; 6 uses
  %i.aeq = trunc nuw i64 %n.vec985 to i32
  %i.aer = shl i32 %i.aeq, 1
  %i.aes = shl nuw nsw i64 %n.vec985, 1
  %i.aet = shl nuw nsw i64 %n.vec985, 2
  %cmp.n1016 = icmp eq i64 %i.aeh, %n.vec985
  %min.epilog.iters.check1026 = icmp eq i64 %i.aep, 0
  %n.vec1028 = and i64 %i.aeh, 4294967292         ; 5 uses
  %i.aeu = trunc nuw i64 %n.vec1028 to i32
  %i.aev = shl i32 %i.aeu, 1
  %i.aew = shl nuw nsw i64 %n.vec1028, 1
  %i.aex = shl nuw nsw i64 %n.vec1028, 2
  %cmp.n1045 = icmp eq i64 %i.aeh, %n.vec1028
  %i.aey = add nsw i32 %8, -4                     ; 2 uses
  %i.aez = lshr i32 %i.aey, 2
  %narrow1051 = add nuw nsw i32 %i.aez, 1
  %i.afa = zext nneg i32 %narrow1051 to i64       ; 2 uses
  %min.iters.check849 = icmp ult i32 %i.aey, 28
  %n.vec851 = and i64 %i.afa, 2147483640          ; 4 uses
  %i.afb = trunc nuw nsw i64 %n.vec851 to i32
  %i.afc = shl i32 %i.afb, 2
  %i.afd = shl nuw nsw i64 %n.vec851, 2           ; 2 uses
  %cmp.n872 = icmp eq i64 %n.vec851, %i.afa
  br label %.preheader1219.i

.preheader1227.i:                                 ; preds = %._crit_edge1550.i, %.preheader1228.i
  %.0918.lcssa.i = phi i32 [ 0, %.preheader1228.i ], [ %i.qh, %._crit_edge1550.i ] ; 3 uses
  %.0906.lcssa.i = phi ptr [ %i.d, %.preheader1228.i ], [ %.2908.lcssa.i, %._crit_edge1550.i ] ; 2 uses
  %.11.lcssa.i = phi ptr [ %.101652.i, %.preheader1228.i ], [ %i.ajh, %._crit_edge1550.i ] ; 2 uses
  %i.afe = or disjoint i32 %.0918.lcssa.i, 3
  %i.aff = icmp slt i32 %i.afe, %6
  br i1 %i.aff, label %.lr.ph1582.i, label %.preheader1226.i

.lr.ph1557.i:                                     ; preds = %.preheader1228.i, %._crit_edge1550.i
  %.111556.i = phi ptr [ %i.ajh, %._crit_edge1550.i ], [ %.101652.i, %.preheader1228.i ] ; 5 uses
  %.09061555.i = phi ptr [ %.2908.lcssa.i, %._crit_edge1550.i ], [ %i.d, %.preheader1228.i ] ; 4 uses
  %.09181554.i = phi i32 [ %i.aji, %._crit_edge1550.i ], [ 0, %.preheader1228.i ]
  br i1 %i.qa, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph1557.i
  %i.afg = load <8 x i32>, ptr %.111556.i, align 1, !tbaa !17
  %i.afh = getelementptr inbounds nuw i8, ptr %.111556.i, i64 32
  %i.afi = load <8 x i32>, ptr %i.afh, align 1, !tbaa !17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph1557.i
  %i.afj = phi <8 x i32> [ %i.afg, %bb.v ], [ zeroinitializer, %.lr.ph1557.i ] ; 3 uses
  %i.afk = phi <8 x i32> [ %i.afi, %bb.v ], [ zeroinitializer, %.lr.ph1557.i ] ; 3 uses
  br i1 %i.qb, label %.lr.ph1540.i.preheader, label %.preheader1224.i

.lr.ph1540.i.preheader:                           ; preds = %bb.w
  br i1 %i.qt, label %.lr.ph1540.i.epil.preheader, label %.lr.ph1540.i

.preheader1224.i.loopexit.unr-lcssa:              ; preds = %.lr.ph1540.i
  br i1 %lcmp.mod1296.not.not, label %.lr.ph1540.i.epil.preheader, label %.preheader1224.i.loopexit

.lr.ph1540.i.epil.preheader:                      ; preds = %.preheader1224.i.loopexit.unr-lcssa, %.lr.ph1540.i.preheader
  %.19071538.i.epil.init = phi ptr [ %.09061555.i, %.lr.ph1540.i.preheader ], [ %i.ahw, %.preheader1224.i.loopexit.unr-lcssa ]
  %.09221537.i.epil.init = phi ptr [ %.27781653.i, %.lr.ph1540.i.preheader ], [ %i.ahv, %.preheader1224.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init1293 = phi <8 x i32> [ %i.afk, %.lr.ph1540.i.preheader ], [ %i.ahu, %.preheader1224.i.loopexit.unr-lcssa ]
  %.epil.init1295 = phi <8 x i32> [ %i.afj, %.lr.ph1540.i.preheader ], [ %i.ahr, %.preheader1224.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1300)
  %i.afl = load float, ptr %.09221537.i.epil.init, align 1, !tbaa !17
  %i.afm = insertelement <4 x float> poison, float %i.afl, i64 0
  %i.afn = load <16 x i8>, ptr %.19071538.i.epil.init, align 1, !tbaa !17
  %i.afo = bitcast <4 x float> %i.afm to <16 x i8>
  %i.afp = shufflevector <16 x i8> %i.afo, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.afq = sext <16 x i8> %i.afp to <16 x i16>    ; 2 uses
  %i.afr = sext <16 x i8> %i.afn to <16 x i16>    ; 2 uses
  %i.afs = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.afq, <16 x i16> %i.afr)
  %i.aft = add <8 x i32> %i.afs, %.epil.init1295
  %i.afu = shufflevector <16 x i16> %i.afq, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9>
  %i.afv = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.afu, <16 x i16> %i.afr)
  %i.afw = add <8 x i32> %i.afv, %.epil.init1293
  %i.afx = getelementptr inbounds nuw i8, ptr %.09221537.i.epil.init, i64 4
  br label %.preheader1224.i.loopexit

.preheader1224.i.loopexit:                        ; preds = %.preheader1224.i.loopexit.unr-lcssa, %.lr.ph1540.i.epil.preheader
  %.lcssa1121 = phi <8 x i32> [ %i.ahr, %.preheader1224.i.loopexit.unr-lcssa ], [ %i.aft, %.lr.ph1540.i.epil.preheader ]
  %.lcssa1120 = phi <8 x i32> [ %i.ahu, %.preheader1224.i.loopexit.unr-lcssa ], [ %i.afw, %.lr.ph1540.i.epil.preheader ]
  %.lcssa1119 = phi ptr [ %i.ahv, %.preheader1224.i.loopexit.unr-lcssa ], [ %i.afx, %.lr.ph1540.i.epil.preheader ]
  %i.afy = getelementptr i8, ptr %.09061555.i, i64 %i.qo
  %scevgep317 = getelementptr i8, ptr %i.afy, i64 16
  br label %.preheader1224.i

.preheader1224.i:                                 ; preds = %.preheader1224.i.loopexit, %bb.w
  %.lcssa1251.i = phi <8 x i32> [ %i.afj, %bb.w ], [ %.lcssa1121, %.preheader1224.i.loopexit ] ; 3 uses
  %.lcssa1250.i = phi <8 x i32> [ %i.afk, %bb.w ], [ %.lcssa1120, %.preheader1224.i.loopexit ] ; 3 uses
  %.0924.lcssa.i = phi i32 [ 0, %bb.w ], [ %i.qg, %.preheader1224.i.loopexit ] ; 5 uses
  %.0922.lcssa.i = phi ptr [ %.27781653.i, %bb.w ], [ %.lcssa1119, %.preheader1224.i.loopexit ] ; 3 uses
  %.1907.lcssa.i = phi ptr [ %.09061555.i, %bb.w ], [ %scevgep317, %.preheader1224.i.loopexit ] ; 4 uses
  %i.afz = icmp slt i32 %.0924.lcssa.i, %8
  br i1 %i.afz, label %.lr.ph1549.i.preheader, label %._crit_edge1550.i

.lr.ph1549.i.preheader:                           ; preds = %.preheader1224.i
  %i.aga = sub i32 %8, %.0924.lcssa.i
  %.neg1343 = add i32 %.0924.lcssa.i, 1
  %xtraiter1303 = and i32 %i.aga, 1
  %lcmp.mod1304.not = icmp eq i32 %xtraiter1303, 0
  br i1 %lcmp.mod1304.not, label %.lr.ph1549.i.prol.loopexit, label %.lr.ph1549.i.prol

.lr.ph1549.i.prol:                                ; preds = %.lr.ph1549.i.preheader
  %i.agb = load i16, ptr %.0922.lcssa.i, align 2, !tbaa !338
  %i.agc = insertelement <8 x i16> poison, i16 %i.agb, i64 0
  %i.agd = load <8 x i8>, ptr %.1907.lcssa.i, align 1, !tbaa !17
  %i.age = bitcast <8 x i16> %i.agc to <16 x i8>
  %i.agf = shufflevector <16 x i8> %i.age, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.agg = sext <8 x i8> %i.agf to <8 x i16>      ; 2 uses
  %i.agh = sext <8 x i8> %i.agd to <8 x i16>      ; 2 uses
  %i.agi = shufflevector <8 x i16> %i.agg, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.agj = mul nsw <8 x i16> %i.agg, %i.agh
  %i.agk = sext <8 x i16> %i.agj to <8 x i32>
  %i.agl = mul nsw <8 x i16> %i.agi, %i.agh
  %i.agm = sext <8 x i16> %i.agl to <8 x i32>
  %i.agn = add <8 x i32> %.lcssa1251.i, %i.agk    ; 2 uses
  %i.ago = add <8 x i32> %.lcssa1250.i, %i.agm    ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.0922.lcssa.i, i64 2
  %i.agq = getelementptr inbounds nuw i8, ptr %.1907.lcssa.i, i64 8 ; 2 uses
  %i.agr = add nuw nsw i32 %.0924.lcssa.i, 1
  br label %.lr.ph1549.i.prol.loopexit

.lr.ph1549.i.prol.loopexit:                       ; preds = %.lr.ph1549.i.prol, %.lr.ph1549.i.preheader
  %.lcssa1124.unr = phi <8 x i32> [ poison, %.lr.ph1549.i.preheader ], [ %i.agn, %.lr.ph1549.i.prol ]
  %.lcssa1123.unr = phi <8 x i32> [ poison, %.lr.ph1549.i.preheader ], [ %i.ago, %.lr.ph1549.i.prol ]
  %.lcssa1122.unr = phi ptr [ poison, %.lr.ph1549.i.preheader ], [ %i.agq, %.lr.ph1549.i.prol ]
  %.29081548.i.unr = phi ptr [ %.1907.lcssa.i, %.lr.ph1549.i.preheader ], [ %i.agq, %.lr.ph1549.i.prol ]
  %.19231547.i.unr = phi ptr [ %.0922.lcssa.i, %.lr.ph1549.i.preheader ], [ %i.agp, %.lr.ph1549.i.prol ]
  %.19251546.i.unr = phi i32 [ %.0924.lcssa.i, %.lr.ph1549.i.preheader ], [ %i.agr, %.lr.ph1549.i.prol ]
  %.unr1305 = phi <8 x i32> [ %.lcssa1250.i, %.lr.ph1549.i.preheader ], [ %i.ago, %.lr.ph1549.i.prol ]
  %.unr1306 = phi <8 x i32> [ %.lcssa1251.i, %.lr.ph1549.i.preheader ], [ %i.agn, %.lr.ph1549.i.prol ]
  %i.ags = icmp eq i32 %8, %.neg1343
  br i1 %i.ags, label %._crit_edge1550.i, label %.lr.ph1549.i

.lr.ph1540.i:                                     ; preds = %.lr.ph1540.i.preheader, %.lr.ph1540.i
  %.19071538.i = phi ptr [ %i.ahw, %.lr.ph1540.i ], [ %.09061555.i, %.lr.ph1540.i.preheader ] ; 3 uses
  %.09221537.i = phi ptr [ %i.ahv, %.lr.ph1540.i ], [ %.27781653.i, %.lr.ph1540.i.preheader ] ; 3 uses
  %i.agt = phi <8 x i32> [ %i.ahu, %.lr.ph1540.i ], [ %i.afk, %.lr.ph1540.i.preheader ]
  %i.agu = phi <8 x i32> [ %i.ahr, %.lr.ph1540.i ], [ %i.afj, %.lr.ph1540.i.preheader ]
  %niter1302 = phi i32 [ %niter1302.next.1, %.lr.ph1540.i ], [ 0, %.lr.ph1540.i.preheader ]
  %i.agv = load float, ptr %.09221537.i, align 1, !tbaa !17
  %i.agw = insertelement <4 x float> poison, float %i.agv, i64 0
  %i.agx = load <16 x i8>, ptr %.19071538.i, align 1, !tbaa !17
  %i.agy = bitcast <4 x float> %i.agw to <16 x i8>
  %i.agz = shufflevector <16 x i8> %i.agy, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.aha = sext <16 x i8> %i.agz to <16 x i16>    ; 2 uses
  %i.ahb = sext <16 x i8> %i.agx to <16 x i16>    ; 2 uses
  %i.ahc = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aha, <16 x i16> %i.ahb)
  %i.ahd = add <8 x i32> %i.ahc, %i.agu
  %i.ahe = shufflevector <16 x i16> %i.aha, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9>
  %i.ahf = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ahe, <16 x i16> %i.ahb)
  %i.ahg = add <8 x i32> %i.ahf, %i.agt
  %i.ahh = getelementptr inbounds nuw i8, ptr %.09221537.i, i64 4
  %i.ahi = getelementptr inbounds nuw i8, ptr %.19071538.i, i64 16
  %i.ahj = load float, ptr %i.ahh, align 1, !tbaa !17
  %i.ahk = insertelement <4 x float> poison, float %i.ahj, i64 0
  %i.ahl = load <16 x i8>, ptr %i.ahi, align 1, !tbaa !17
  %i.ahm = bitcast <4 x float> %i.ahk to <16 x i8>
  %i.ahn = shufflevector <16 x i8> %i.ahm, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.aho = sext <16 x i8> %i.ahn to <16 x i16>    ; 2 uses
  %i.ahp = sext <16 x i8> %i.ahl to <16 x i16>    ; 2 uses
  %i.ahq = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aho, <16 x i16> %i.ahp)
  %i.ahr = add <8 x i32> %i.ahq, %i.ahd           ; 3 uses
  %i.ahs = shufflevector <16 x i16> %i.aho, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9>
  %i.aht = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ahs, <16 x i16> %i.ahp)
  %i.ahu = add <8 x i32> %i.aht, %i.ahg           ; 3 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %.09221537.i, i64 8 ; 3 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.19071538.i, i64 32 ; 2 uses
  %niter1302.next.1 = add nuw nsw i32 %niter1302, 2 ; 2 uses
  %niter1302.ncmp.1.not = icmp eq i32 %niter1302.next.1, %unroll_iter1301
  br i1 %niter1302.ncmp.1.not, label %.preheader1224.i.loopexit.unr-lcssa, label %.lr.ph1540.i, !llvm.loop !296

.lr.ph1549.i:                                     ; preds = %.lr.ph1549.i.prol.loopexit, %.lr.ph1549.i
  %.29081548.i = phi ptr [ %i.aje, %.lr.ph1549.i ], [ %.29081548.i.unr, %.lr.ph1549.i.prol.loopexit ] ; 3 uses
  %.19231547.i = phi ptr [ %i.ajd, %.lr.ph1549.i ], [ %.19231547.i.unr, %.lr.ph1549.i.prol.loopexit ] ; 3 uses
  %.19251546.i = phi i32 [ %i.ajf, %.lr.ph1549.i ], [ %.19251546.i.unr, %.lr.ph1549.i.prol.loopexit ]
  %i.ahx = phi <8 x i32> [ %i.ajc, %.lr.ph1549.i ], [ %.unr1305, %.lr.ph1549.i.prol.loopexit ]
  %i.ahy = phi <8 x i32> [ %i.ajb, %.lr.ph1549.i ], [ %.unr1306, %.lr.ph1549.i.prol.loopexit ]
  %i.ahz = load i16, ptr %.19231547.i, align 2, !tbaa !338
  %i.aia = insertelement <8 x i16> poison, i16 %i.ahz, i64 0
  %i.aib = load <8 x i8>, ptr %.29081548.i, align 1, !tbaa !17
  %i.aic = bitcast <8 x i16> %i.aia to <16 x i8>
  %i.aid = shufflevector <16 x i8> %i.aic, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aie = sext <8 x i8> %i.aid to <8 x i16>      ; 2 uses
  %i.aif = sext <8 x i8> %i.aib to <8 x i16>      ; 2 uses
  %i.aig = shufflevector <8 x i16> %i.aie, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.aih = mul nsw <8 x i16> %i.aie, %i.aif
  %i.aii = sext <8 x i16> %i.aih to <8 x i32>
  %i.aij = mul nsw <8 x i16> %i.aig, %i.aif
  %i.aik = sext <8 x i16> %i.aij to <8 x i32>
  %i.ail = add <8 x i32> %i.ahy, %i.aii
  %i.aim = add <8 x i32> %i.ahx, %i.aik
  %i.ain = getelementptr inbounds nuw i8, ptr %.19231547.i, i64 2
  %i.aio = getelementptr inbounds nuw i8, ptr %.29081548.i, i64 8
  %i.aip = load i16, ptr %i.ain, align 2, !tbaa !338
  %i.aiq = insertelement <8 x i16> poison, i16 %i.aip, i64 0
  %i.air = load <8 x i8>, ptr %i.aio, align 1, !tbaa !17
  %i.ais = bitcast <8 x i16> %i.aiq to <16 x i8>
  %i.ait = shufflevector <16 x i8> %i.ais, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aiu = sext <8 x i8> %i.ait to <8 x i16>      ; 2 uses
  %i.aiv = sext <8 x i8> %i.air to <8 x i16>      ; 2 uses
  %i.aiw = shufflevector <8 x i16> %i.aiu, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.aix = mul nsw <8 x i16> %i.aiu, %i.aiv
  %i.aiy = sext <8 x i16> %i.aix to <8 x i32>
  %i.aiz = mul nsw <8 x i16> %i.aiw, %i.aiv
  %i.aja = sext <8 x i16> %i.aiz to <8 x i32>
  %i.ajb = add <8 x i32> %i.ail, %i.aiy           ; 2 uses
  %i.ajc = add <8 x i32> %i.aim, %i.aja           ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %.19231547.i, i64 4
  %i.aje = getelementptr inbounds nuw i8, ptr %.29081548.i, i64 16 ; 2 uses
  %i.ajf = add nuw nsw i32 %.19251546.i, 2        ; 2 uses
  %exitcond2005.not.i.1 = icmp eq i32 %i.ajf, %8
  br i1 %exitcond2005.not.i.1, label %._crit_edge1550.i, label %.lr.ph1549.i, !llvm.loop !297

._crit_edge1550.i:                                ; preds = %.lr.ph1549.i.prol.loopexit, %.lr.ph1549.i, %.preheader1224.i
  %.lcssa1253.i = phi <8 x i32> [ %.lcssa1251.i, %.preheader1224.i ], [ %.lcssa1124.unr, %.lr.ph1549.i.prol.loopexit ], [ %i.ajb, %.lr.ph1549.i ]
  %.lcssa1252.i = phi <8 x i32> [ %.lcssa1250.i, %.preheader1224.i ], [ %.lcssa1123.unr, %.lr.ph1549.i.prol.loopexit ], [ %i.ajc, %.lr.ph1549.i ]
  %.2908.lcssa.i = phi ptr [ %.1907.lcssa.i, %.preheader1224.i ], [ %.lcssa1122.unr, %.lr.ph1549.i.prol.loopexit ], [ %i.aje, %.lr.ph1549.i ] ; 2 uses
  store <8 x i32> %.lcssa1253.i, ptr %.111556.i, align 1, !tbaa !17
  %i.ajg = getelementptr inbounds nuw i8, ptr %.111556.i, i64 32
  store <8 x i32> %.lcssa1252.i, ptr %i.ajg, align 1, !tbaa !17
  %i.ajh = getelementptr inbounds nuw i8, ptr %.111556.i, i64 64 ; 2 uses
  %i.aji = add nuw nsw i32 %.09181554.i, 8        ; 2 uses
  %i.ajj = or disjoint i32 %i.aji, 7
  %i.ajk = icmp slt i32 %i.ajj, %6
  br i1 %i.ajk, label %.lr.ph1557.i, label %.preheader1227.i, !llvm.loop !298

.preheader1226.i:                                 ; preds = %._crit_edge1575.i, %.preheader1227.i
  %.1919.lcssa.i = phi i32 [ %.0918.lcssa.i, %.preheader1227.i ], [ %i.amk, %._crit_edge1575.i ] ; 3 uses
  %.3909.lcssa.i = phi ptr [ %.0906.lcssa.i, %.preheader1227.i ], [ %.5911.lcssa.i, %._crit_edge1575.i ] ; 2 uses
  %.12.lcssa.i = phi ptr [ %.11.lcssa.i, %.preheader1227.i ], [ %i.amj, %._crit_edge1575.i ] ; 2 uses
  %i.ajl = or disjoint i32 %.1919.lcssa.i, 1
  %i.ajm = icmp slt i32 %i.ajl, %6
  br i1 %i.ajm, label %.lr.ph1619.i.preheader, label %.preheader1225.i

.lr.ph1619.i.preheader:                           ; preds = %.preheader1226.i
  %i.ajn = getelementptr i8, ptr %.27781653.i, i64 %i.qz
  br label %.lr.ph1619.i

.lr.ph1582.i:                                     ; preds = %.preheader1227.i, %._crit_edge1575.i
  %.121581.i = phi ptr [ %i.amj, %._crit_edge1575.i ], [ %.11.lcssa.i, %.preheader1227.i ] ; 5 uses
  %.39091580.i = phi ptr [ %.5911.lcssa.i, %._crit_edge1575.i ], [ %.0906.lcssa.i, %.preheader1227.i ] ; 4 uses
  %.19191579.i = phi i32 [ %i.amk, %._crit_edge1575.i ], [ %.0918.lcssa.i, %.preheader1227.i ]
  br i1 %i.qa, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph1582.i
  %i.ajo = load <4 x i32>, ptr %.121581.i, align 16, !tbaa !17
  %i.ajp = getelementptr inbounds nuw i8, ptr %.121581.i, i64 16
  %i.ajq = load <4 x i32>, ptr %i.ajp, align 16, !tbaa !17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph1582.i
  %i.ajr = phi <4 x i32> [ %i.ajo, %bb.x ], [ zeroinitializer, %.lr.ph1582.i ] ; 3 uses
  %i.ajs = phi <4 x i32> [ %i.ajq, %bb.x ], [ zeroinitializer, %.lr.ph1582.i ] ; 3 uses
  br i1 %i.qb, label %.lr.ph1565.i.preheader, label %.preheader1223.i

.lr.ph1565.i.preheader:                           ; preds = %bb.y
  br i1 %i.qv, label %.lr.ph1565.i.epil.preheader, label %.lr.ph1565.i

.preheader1223.loopexit.i.unr-lcssa:              ; preds = %.lr.ph1565.i
  br i1 %lcmp.mod1312.not.not, label %.lr.ph1565.i.epil.preheader, label %.preheader1223.loopexit.i

.lr.ph1565.i.epil.preheader:                      ; preds = %.preheader1223.loopexit.i.unr-lcssa, %.lr.ph1565.i.preheader
  %.08941562.i.epil.init = phi ptr [ %.27781653.i, %.lr.ph1565.i.preheader ], [ %i.alj, %.preheader1223.loopexit.i.unr-lcssa ]
  %.49101561.i.epil.init = phi ptr [ %.39091580.i, %.lr.ph1565.i.preheader ], [ %i.alk, %.preheader1223.loopexit.i.unr-lcssa ]
  %.epil.init1309 = phi <4 x i32> [ %i.ajs, %.lr.ph1565.i.preheader ], [ %i.ali, %.preheader1223.loopexit.i.unr-lcssa ]
  %.epil.init1311 = phi <4 x i32> [ %i.ajr, %.lr.ph1565.i.preheader ], [ %i.alf, %.preheader1223.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1315)
  %i.ajt = load float, ptr %.08941562.i.epil.init, align 1, !tbaa !17
  %i.aju = insertelement <4 x float> poison, float %i.ajt, i64 0
  %i.ajv = load <8 x i8>, ptr %.49101561.i.epil.init, align 1, !tbaa !17
  %i.ajw = bitcast <4 x float> %i.aju to <16 x i8>
  %i.ajx = shufflevector <16 x i8> %i.ajw, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ajy = sext <8 x i8> %i.ajx to <8 x i16>      ; 2 uses
  %i.ajz = sext <8 x i8> %i.ajv to <8 x i16>      ; 2 uses
  %i.aka = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ajy, <8 x i16> %i.ajz)
  %i.akb = add <4 x i32> %i.aka, %.epil.init1311
  %i.akc = shufflevector <8 x i16> %i.ajz, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  %i.akd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ajy, <8 x i16> %i.akc)
  %i.ake = add <4 x i32> %i.akd, %.epil.init1309
  br label %.preheader1223.loopexit.i

.preheader1223.loopexit.i:                        ; preds = %.preheader1223.loopexit.i.unr-lcssa, %.lr.ph1565.i.epil.preheader
  %.lcssa1127 = phi <4 x i32> [ %i.alf, %.preheader1223.loopexit.i.unr-lcssa ], [ %i.akb, %.lr.ph1565.i.epil.preheader ]
  %.lcssa1126 = phi <4 x i32> [ %i.ali, %.preheader1223.loopexit.i.unr-lcssa ], [ %i.ake, %.lr.ph1565.i.epil.preheader ]
  %i.akf = getelementptr i8, ptr %.39091580.i, i64 %i.qk
  %scevgep2006.i.a = getelementptr i8, ptr %i.akf, i64 8
  br label %.preheader1223.i

.preheader1223.i:                                 ; preds = %.preheader1223.loopexit.i, %bb.y
  %.lcssa1255.i = phi <4 x i32> [ %i.ajr, %bb.y ], [ %.lcssa1127, %.preheader1223.loopexit.i ] ; 2 uses
  %.lcssa1254.i = phi <4 x i32> [ %i.ajs, %bb.y ], [ %.lcssa1126, %.preheader1223.loopexit.i ] ; 2 uses
  %.4910.lcssa.i = phi ptr [ %.39091580.i, %bb.y ], [ %scevgep2006.i.a, %.preheader1223.loopexit.i ] ; 2 uses
  %.0894.lcssa.i = phi ptr [ %.27781653.i, %bb.y ], [ %indvars.iv2009.i, %.preheader1223.loopexit.i ]
  %.0892.lcssa.i = phi i32 [ 0, %bb.y ], [ %i.qg, %.preheader1223.loopexit.i ] ; 2 uses
  %i.akg = icmp slt i32 %.0892.lcssa.i, %8
  br i1 %i.akg, label %.lr.ph1574.i, label %._crit_edge1575.i

.lr.ph1565.i:                                     ; preds = %.lr.ph1565.i.preheader, %.lr.ph1565.i
  %.08941562.i = phi ptr [ %i.alj, %.lr.ph1565.i ], [ %.27781653.i, %.lr.ph1565.i.preheader ] ; 3 uses
  %.49101561.i = phi ptr [ %i.alk, %.lr.ph1565.i ], [ %.39091580.i, %.lr.ph1565.i.preheader ] ; 3 uses
  %i.akh = phi <4 x i32> [ %i.ali, %.lr.ph1565.i ], [ %i.ajs, %.lr.ph1565.i.preheader ]
  %i.aki = phi <4 x i32> [ %i.alf, %.lr.ph1565.i ], [ %i.ajr, %.lr.ph1565.i.preheader ]
  %niter1317 = phi i32 [ %niter1317.next.1, %.lr.ph1565.i ], [ 0, %.lr.ph1565.i.preheader ]
  %i.akj = load float, ptr %.08941562.i, align 1, !tbaa !17
  %i.akk = insertelement <4 x float> poison, float %i.akj, i64 0
  %i.akl = load <8 x i8>, ptr %.49101561.i, align 1, !tbaa !17
  %i.akm = bitcast <4 x float> %i.akk to <16 x i8>
  %i.akn = shufflevector <16 x i8> %i.akm, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ako = sext <8 x i8> %i.akn to <8 x i16>      ; 2 uses
  %i.akp = sext <8 x i8> %i.akl to <8 x i16>      ; 2 uses
  %i.akq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ako, <8 x i16> %i.akp)
  %i.akr = add <4 x i32> %i.akq, %i.aki
  %i.aks = shufflevector <8 x i16> %i.akp, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  %i.akt = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ako, <8 x i16> %i.aks)
  %i.aku = add <4 x i32> %i.akt, %i.akh
  %i.akv = getelementptr inbounds nuw i8, ptr %.08941562.i, i64 4
  %i.akw = getelementptr inbounds nuw i8, ptr %.49101561.i, i64 8
  %i.akx = load float, ptr %i.akv, align 1, !tbaa !17
  %i.aky = insertelement <4 x float> poison, float %i.akx, i64 0
  %i.akz = load <8 x i8>, ptr %i.akw, align 1, !tbaa !17
  %i.ala = bitcast <4 x float> %i.aky to <16 x i8>
  %i.alb = shufflevector <16 x i8> %i.ala, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.alc = sext <8 x i8> %i.alb to <8 x i16>      ; 2 uses
  %i.ald = sext <8 x i8> %i.akz to <8 x i16>      ; 2 uses
  %i.ale = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.alc, <8 x i16> %i.ald)
  %i.alf = add <4 x i32> %i.ale, %i.akr           ; 3 uses
  %i.alg = shufflevector <8 x i16> %i.ald, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  %i.alh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.alc, <8 x i16> %i.alg)
  %i.ali = add <4 x i32> %i.alh, %i.aku           ; 3 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %.08941562.i, i64 8 ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %.49101561.i, i64 16 ; 2 uses
  %niter1317.next.1 = add nuw nsw i32 %niter1317, 2 ; 2 uses
  %niter1317.ncmp.1.not = icmp eq i32 %niter1317.next.1, %unroll_iter1316
  br i1 %niter1317.ncmp.1.not, label %.preheader1223.loopexit.i.unr-lcssa, label %.lr.ph1565.i, !llvm.loop !299

.lr.ph1574.i:                                     ; preds = %.preheader1223.i, %.lr.ph1574.i
  %.18931573.i = phi i32 [ %i.amh, %.lr.ph1574.i ], [ %.0892.lcssa.i, %.preheader1223.i ]
  %.18951572.i = phi ptr [ %i.amf, %.lr.ph1574.i ], [ %.0894.lcssa.i, %.preheader1223.i ] ; 2 uses
  %.59111571.i = phi ptr [ %i.amg, %.lr.ph1574.i ], [ %.4910.lcssa.i, %.preheader1223.i ] ; 2 uses
  %i.all = phi <4 x i32> [ %i.ame, %.lr.ph1574.i ], [ %.lcssa1254.i, %.preheader1223.i ]
  %i.alm = phi <4 x i32> [ %i.amc, %.lr.ph1574.i ], [ %.lcssa1255.i, %.preheader1223.i ]
  %i.aln = load i16, ptr %.18951572.i, align 2, !tbaa !338
  %i.alo = insertelement <8 x i16> poison, i16 %i.aln, i64 0
  %i.alp = load float, ptr %.59111571.i, align 1, !tbaa !17
  %i.alq = insertelement <4 x float> poison, float %i.alp, i64 0
  %i.alr = bitcast <8 x i16> %i.alo to <16 x i8>
  %i.als = shufflevector <16 x i8> %i.alr, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.alt = sext <8 x i8> %i.als to <8 x i16>      ; 2 uses
  %i.alu = bitcast <4 x float> %i.alq to <16 x i8>
  %i.alv = shufflevector <16 x i8> %i.alu, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 0>
  %i.alw = sext <8 x i8> %i.alv to <8 x i16>      ; 2 uses
  %i.alx = mul nsw <8 x i16> %i.alw, %i.alt       ; 2 uses
  %i.aly = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.alt, <8 x i16> %i.alw) ; 2 uses
  %i.alz = shufflevector <8 x i16> %i.alx, <8 x i16> %i.aly, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ama = shufflevector <8 x i16> %i.alx, <8 x i16> %i.aly, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.amb = bitcast <8 x i16> %i.alz to <4 x i32>
  %i.amc = add <4 x i32> %i.alm, %i.amb           ; 2 uses
  %i.amd = bitcast <8 x i16> %i.ama to <4 x i32>
  %i.ame = add <4 x i32> %i.all, %i.amd           ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %.18951572.i, i64 2
  %i.amg = getelementptr inbounds nuw i8, ptr %.59111571.i, i64 4 ; 2 uses
  %i.amh = add nuw nsw i32 %.18931573.i, 1        ; 2 uses
  %exitcond2007.not.i.a = icmp eq i32 %i.amh, %8
  br i1 %exitcond2007.not.i.a, label %._crit_edge1575.i, label %.lr.ph1574.i, !llvm.loop !300

._crit_edge1575.i:                                ; preds = %.lr.ph1574.i, %.preheader1223.i
  %.lcssa1257.i = phi <4 x i32> [ %.lcssa1255.i, %.preheader1223.i ], [ %i.amc, %.lr.ph1574.i ]
  %.lcssa1256.i = phi <4 x i32> [ %.lcssa1254.i, %.preheader1223.i ], [ %i.ame, %.lr.ph1574.i ]
  %.5911.lcssa.i = phi ptr [ %.4910.lcssa.i, %.preheader1223.i ], [ %i.amg, %.lr.ph1574.i ] ; 2 uses
  store <4 x i32> %.lcssa1257.i, ptr %.121581.i, align 16, !tbaa !17
  %i.ami = getelementptr inbounds nuw i8, ptr %.121581.i, i64 16
  store <4 x i32> %.lcssa1256.i, ptr %i.ami, align 16, !tbaa !17
  %i.amj = getelementptr inbounds nuw i8, ptr %.121581.i, i64 32 ; 2 uses
  %i.amk = add nuw nsw i32 %.19191579.i, 4        ; 3 uses
  %i.aml = or disjoint i32 %i.amk, 3
  %i.amm = icmp slt i32 %i.aml, %6
  br i1 %i.amm, label %.lr.ph1582.i, label %.preheader1226.i, !llvm.loop !301

.preheader1225.i:                                 ; preds = %._crit_edge1610.i, %.preheader1226.i
  %.2920.lcssa.i = phi i32 [ %.1919.lcssa.i, %.preheader1226.i ], [ %i.asc, %._crit_edge1610.i ] ; 2 uses
  %.6912.lcssa.i = phi ptr [ %.3909.lcssa.i, %.preheader1226.i ], [ %.8914.lcssa.i, %._crit_edge1610.i ]
  %.13.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader1226.i ], [ %i.asb, %._crit_edge1610.i ] ; 2 uses
  %i.amn = icmp slt i32 %.2920.lcssa.i, %6
  br i1 %i.amn, label %.lr.ph1648.i.preheader, label %._crit_edge1649.i

.lr.ph1648.i.preheader:                           ; preds = %.preheader1225.i
  %i.amo = getelementptr i8, ptr %.27781653.i, i64 %i.rd
  %i.amp = getelementptr i8, ptr %.27781653.i, i64 %i.rh
  br label %.lr.ph1648.i

.lr.ph1619.i:                                     ; preds = %.lr.ph1619.i.preheader, %._crit_edge1610.i
  %.131618.i = phi ptr [ %i.asb, %._crit_edge1610.i ], [ %.12.lcssa.i, %.lr.ph1619.i.preheader ] ; 9 uses
  %.69121617.i = phi ptr [ %.8914.lcssa.i, %._crit_edge1610.i ], [ %.3909.lcssa.i, %.lr.ph1619.i.preheader ] ; 5 uses
  %.29201616.i = phi i32 [ %i.asc, %._crit_edge1610.i ], [ %.1919.lcssa.i, %.lr.ph1619.i.preheader ]
  br i1 %i.qa, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph1619.i
  %i.amq = load i32, ptr %.131618.i, align 4, !tbaa !28
  %i.amr = getelementptr inbounds nuw i8, ptr %.131618.i, i64 4
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !28
  %i.amt = getelementptr inbounds nuw i8, ptr %.131618.i, i64 8
  %i.amu = load i32, ptr %i.amt, align 4, !tbaa !28
  %i.amv = getelementptr inbounds nuw i8, ptr %.131618.i, i64 12
  %i.amw = load i32, ptr %i.amv, align 4, !tbaa !28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph1619.i
  %.0861.i = phi i32 [ %i.amq, %bb.z ], [ 0, %.lr.ph1619.i ] ; 3 uses
  %.0858.i = phi i32 [ %i.ams, %bb.z ], [ 0, %.lr.ph1619.i ] ; 3 uses
  %.0855.i = phi i32 [ %i.amu, %bb.z ], [ 0, %.lr.ph1619.i ] ; 3 uses
  %.0852.i = phi i32 [ %i.amw, %bb.z ], [ 0, %.lr.ph1619.i ] ; 3 uses
  br i1 %i.qb, label %.lr.ph1594.i.preheader, label %.preheader1222.i

.lr.ph1594.i.preheader:                           ; preds = %bb.aa
  br i1 %min.iters.check764, label %.lr.ph1594.i.preheader1118, label %vector.ph765

vector.ph765:                                     ; preds = %.lr.ph1594.i.preheader
  %i.amx = getelementptr i8, ptr %.69121617.i, i64 %i.qz
  %i.amy = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0852.i, i64 0
  %i.amz = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0855.i, i64 0
  %i.ana = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0858.i, i64 0
  %i.anb = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0861.i, i64 0
  br label %vector.body767

vector.body767:                                   ; preds = %vector.body767, %vector.ph765
  %index768 = phi i64 [ 0, %vector.ph765 ], [ %index.next785, %vector.body767 ] ; 2 uses
  %vec.phi769 = phi <8 x i32> [ %i.amy, %vector.ph765 ], [ %i.aoa, %vector.body767 ]
  %vec.phi770 = phi <8 x i32> [ %i.amz, %vector.ph765 ], [ %i.anw, %vector.body767 ]
  %vec.phi771 = phi <8 x i32> [ %i.ana, %vector.ph765 ], [ %i.anq, %vector.body767 ]
  %vec.phi772 = phi <8 x i32> [ %i.anb, %vector.ph765 ], [ %i.ank, %vector.body767 ]
  %i.anc = shl i64 %index768, 2                   ; 2 uses
  %next.gep773 = getelementptr i8, ptr %.27781653.i, i64 %i.anc
  %next.gep774 = getelementptr i8, ptr %.69121617.i, i64 %i.anc
  %wide.vec775 = load <32 x i8>, ptr %next.gep773, align 1, !tbaa !17 ; 4 uses
  %strided.vec776 = shufflevector <32 x i8> %wide.vec775, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec777 = shufflevector <32 x i8> %wide.vec775, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec778 = shufflevector <32 x i8> %wide.vec775, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec779 = shufflevector <32 x i8> %wide.vec775, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.and = sext <8 x i8> %strided.vec776 to <8 x i32> ; 2 uses
  %wide.vec780 = load <32 x i8>, ptr %next.gep774, align 1, !tbaa !17 ; 4 uses
  %strided.vec781 = shufflevector <32 x i8> %wide.vec780, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec782 = shufflevector <32 x i8> %wide.vec780, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec783 = shufflevector <32 x i8> %wide.vec780, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec784 = shufflevector <32 x i8> %wide.vec780, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ane = sext <8 x i8> %strided.vec781 to <8 x i32> ; 2 uses
  %i.anf = mul nsw <8 x i32> %i.ane, %i.and
  %i.ang = add <8 x i32> %i.anf, %vec.phi772
  %i.anh = sext <8 x i8> %strided.vec777 to <8 x i32> ; 2 uses
  %i.ani = sext <8 x i8> %strided.vec782 to <8 x i32> ; 2 uses
  %i.anj = mul nsw <8 x i32> %i.ani, %i.anh
  %i.ank = add <8 x i32> %i.ang, %i.anj           ; 2 uses
  %i.anl = sext <8 x i8> %strided.vec783 to <8 x i32> ; 2 uses
  %i.anm = mul nsw <8 x i32> %i.anl, %i.and
  %i.ann = add <8 x i32> %i.anm, %vec.phi771
  %i.ano = sext <8 x i8> %strided.vec784 to <8 x i32> ; 2 uses
  %i.anp = mul nsw <8 x i32> %i.ano, %i.anh
  %i.anq = add <8 x i32> %i.ann, %i.anp           ; 2 uses
  %i.anr = sext <8 x i8> %strided.vec778 to <8 x i32> ; 2 uses
  %i.ans = mul nsw <8 x i32> %i.anr, %i.ane
  %i.ant = add <8 x i32> %i.ans, %vec.phi770
  %i.anu = sext <8 x i8> %strided.vec779 to <8 x i32> ; 2 uses
  %i.anv = mul nsw <8 x i32> %i.anu, %i.ani
  %i.anw = add <8 x i32> %i.ant, %i.anv           ; 2 uses
  %i.anx = mul nsw <8 x i32> %i.anr, %i.anl
  %i.any = add <8 x i32> %i.anx, %vec.phi769
  %i.anz = mul nsw <8 x i32> %i.anu, %i.ano
  %i.aoa = add <8 x i32> %i.any, %i.anz           ; 2 uses
  %index.next785 = add nuw i64 %index768, 8       ; 2 uses
  %i.aob = icmp eq i64 %index.next785, %n.vec766
  br i1 %i.aob, label %middle.block786, label %vector.body767, !llvm.loop !302

middle.block786:                                  ; preds = %vector.body767
  %i.aoc = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.aoa) ; 2 uses
  %i.aod = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.anw) ; 2 uses
  %i.aoe = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.anq) ; 2 uses
  %i.aof = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ank) ; 2 uses
  br i1 %cmp.n787, label %.preheader1222.loopexit.i, label %.lr.ph1594.i.preheader1118

.lr.ph1594.i.preheader1118:                       ; preds = %.lr.ph1594.i.preheader, %middle.block786
  %.08481592.i.ph = phi i32 [ 0, %.lr.ph1594.i.preheader ], [ %i.qy, %middle.block786 ]
  %.08501591.i.ph = phi ptr [ %.27781653.i, %.lr.ph1594.i.preheader ], [ %i.ajn, %middle.block786 ]
  %.18531590.i.ph = phi i32 [ %.0852.i, %.lr.ph1594.i.preheader ], [ %i.aoc, %middle.block786 ]
  %.18561589.i.ph = phi i32 [ %.0855.i, %.lr.ph1594.i.preheader ], [ %i.aod, %middle.block786 ]
  %.18591588.i.ph = phi i32 [ %.0858.i, %.lr.ph1594.i.preheader ], [ %i.aoe, %middle.block786 ]
  %.18621587.i.ph = phi i32 [ %.0861.i, %.lr.ph1594.i.preheader ], [ %i.aof, %middle.block786 ]
  %.79131586.i.ph = phi ptr [ %.69121617.i, %.lr.ph1594.i.preheader ], [ %i.amx, %middle.block786 ]
  br label %.lr.ph1594.i

.preheader1222.loopexit.i:                        ; preds = %.lr.ph1594.i, %middle.block786
  %.lcssa543 = phi i32 [ %i.aof, %middle.block786 ], [ %i.apz, %.lr.ph1594.i ]
  %.lcssa542 = phi i32 [ %i.aoe, %middle.block786 ], [ %i.aqj, %.lr.ph1594.i ]
  %.lcssa541 = phi i32 [ %i.aod, %middle.block786 ], [ %i.aqt, %.lr.ph1594.i ]
  %.lcssa540 = phi i32 [ %i.aoc, %middle.block786 ], [ %i.aqx, %.lr.ph1594.i ]
  %scevgep2011.i = getelementptr i8, ptr %.69121617.i, i64 %i.qm
  br label %.preheader1222.i

.preheader1222.i:                                 ; preds = %.preheader1222.loopexit.i, %bb.aa
  %.7913.lcssa.i = phi ptr [ %.69121617.i, %bb.aa ], [ %scevgep2011.i, %.preheader1222.loopexit.i ] ; 4 uses
  %.1862.lcssa.i = phi i32 [ %.0861.i, %bb.aa ], [ %.lcssa543, %.preheader1222.loopexit.i ] ; 3 uses
  %.1859.lcssa.i = phi i32 [ %.0858.i, %bb.aa ], [ %.lcssa542, %.preheader1222.loopexit.i ] ; 3 uses
  %.1856.lcssa.i = phi i32 [ %.0855.i, %bb.aa ], [ %.lcssa541, %.preheader1222.loopexit.i ] ; 3 uses
  %.1853.lcssa.i = phi i32 [ %.0852.i, %bb.aa ], [ %.lcssa540, %.preheader1222.loopexit.i ] ; 3 uses
  %.0850.lcssa.i = phi ptr [ %.27781653.i, %bb.aa ], [ %indvars.iv2009.i, %.preheader1222.loopexit.i ] ; 3 uses
  %.0848.lcssa.i = phi i32 [ 0, %bb.aa ], [ %i.qg, %.preheader1222.loopexit.i ] ; 4 uses
  %i.aog = icmp slt i32 %.0848.lcssa.i, %8
  br i1 %i.aog, label %.lr.ph1609.i.preheader, label %._crit_edge1610.i

.lr.ph1609.i.preheader:                           ; preds = %.preheader1222.i
  %i.aoh = xor i32 %.0848.lcssa.i, -1
  %i.aoi = add i32 %8, %i.aoh                     ; 2 uses
  %i.aoj = zext i32 %i.aoi to i64
  %i.aok = add nuw nsw i64 %i.aoj, 1              ; 2 uses
  %min.iters.check737 = icmp ult i32 %i.aoi, 7
  br i1 %min.iters.check737, label %.lr.ph1609.i.preheader1117, label %vector.ph738

vector.ph738:                                     ; preds = %.lr.ph1609.i.preheader
  %n.vec739 = and i64 %i.aok, 8589934584          ; 4 uses
  %i.aol = trunc i64 %n.vec739 to i32
  %i.aom = add i32 %.0848.lcssa.i, %i.aol
  %i.aon = shl nuw nsw i64 %n.vec739, 1           ; 2 uses
  %i.aoo = getelementptr i8, ptr %.0850.lcssa.i, i64 %i.aon
  %i.aop = getelementptr i8, ptr %.7913.lcssa.i, i64 %i.aon ; 2 uses
  %i.aoq = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.1853.lcssa.i, i64 0
  %i.aor = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.1856.lcssa.i, i64 0
  %i.aos = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.1859.lcssa.i, i64 0
  %i.aot = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.1862.lcssa.i, i64 0
  br label %vector.body740

vector.body740:                                   ; preds = %vector.body740, %vector.ph738
  %index741 = phi i64 [ 0, %vector.ph738 ], [ %index.next754, %vector.body740 ] ; 2 uses
  %vec.phi742 = phi <8 x i32> [ %i.aoq, %vector.ph738 ], [ %i.apg, %vector.body740 ]
  %vec.phi743 = phi <8 x i32> [ %i.aor, %vector.ph738 ], [ %i.ape, %vector.body740 ]
  %vec.phi744 = phi <8 x i32> [ %i.aos, %vector.ph738 ], [ %i.apb, %vector.body740 ]
  %vec.phi745 = phi <8 x i32> [ %i.aot, %vector.ph738 ], [ %i.aoy, %vector.body740 ]
  %i.aou = shl i64 %index741, 1                   ; 2 uses
  %next.gep746 = getelementptr i8, ptr %.0850.lcssa.i, i64 %i.aou
  %next.gep747 = getelementptr i8, ptr %.7913.lcssa.i, i64 %i.aou
  %wide.vec748 = load <16 x i8>, ptr %next.gep746, align 1, !tbaa !17 ; 2 uses
  %strided.vec749 = shufflevector <16 x i8> %wide.vec748, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec750 = shufflevector <16 x i8> %wide.vec748, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.aov = sext <8 x i8> %strided.vec749 to <8 x i32> ; 2 uses
  %wide.vec751 = load <16 x i8>, ptr %next.gep747, align 1, !tbaa !17 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn33gemm_transB_packed_tile_int8_avx2ERKNS_3MatES2_RS0_iiiiii:bb.a
  %.18531590.i = phi i32 [ %i.aqx, %.lr.ph1594.i ], [ %.18531590.i.ph, %.lr.ph1594.i.preheader1118 ]
  %.18561589.i = phi i32 [ %i.aqt, %.lr.ph1594.i ], [ %.18561589.i.ph, %.lr.ph1594.i.preheader1118 ]
  %.18591588.i = phi i32 [ %i.aqj, %.lr.ph1594.i ], [ %.18591588.i.ph, %.lr.ph1594.i.preheader1118 ]
  %.18621587.i = phi i32 [ %i.apz, %.lr.ph1594.i ], [ %.18621587.i.ph, %.lr.ph1594.i.preheader1118 ]
  %.79131586.i = phi ptr [ %i.aqz, %.lr.ph1594.i ], [ %.79131586.i.ph, %.lr.ph1594.i.preheader1118 ] ; 5 uses
  %i.apm = load i8, ptr %.08501591.i, align 1, !tbaa !17
  %i.apn = sext i8 %i.apm to i32                  ; 2 uses
  %i.apo = load i8, ptr %.79131586.i, align 1, !tbaa !17
  %i.app = sext i8 %i.apo to i32                  ; 2 uses
  %i.apq = mul nsw i32 %i.app, %i.apn
  %i.apr = add nsw i32 %i.apq, %.18621587.i
  %i.aps = getelementptr inbounds nuw i8, ptr %.08501591.i, i64 1
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !17
  %i.apu = sext i8 %i.apt to i32                  ; 2 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %.79131586.i, i64 1
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !17
  %i.apx = sext i8 %i.apw to i32                  ; 2 uses
  %i.apy = mul nsw i32 %i.apx, %i.apu
  %i.apz = add nsw i32 %i.apr, %i.apy             ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %.79131586.i, i64 2
  %i.aqb = load i8, ptr %i.aqa, align 1, !tbaa !17
  %i.aqc = sext i8 %i.aqb to i32                  ; 2 uses
  %i.aqd = mul nsw i32 %i.aqc, %i.apn
  %i.aqe = add nsw i32 %i.aqd, %.18591588.i
  %i.aqf = getelementptr inbounds nuw i8, ptr %.79131586.i, i64 3
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !17
  %i.aqh = sext i8 %i.aqg to i32                  ; 2 uses
  %i.aqi = mul nsw i32 %i.aqh, %i.apu
  %i.aqj = add nsw i32 %i.aqe, %i.aqi             ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %.08501591.i, i64 2
  %i.aql = load i8, ptr %i.aqk, align 1, !tbaa !17
  %i.aqm = sext i8 %i.aql to i32                  ; 2 uses
  %i.aqn = mul nsw i32 %i.aqm, %i.app
  %i.aqo = add nsw i32 %i.aqn, %.18561589.i
  %i.aqp = getelementptr inbounds nuw i8, ptr %.08501591.i, i64 3
  %i.aqq = load i8, ptr %i.aqp, align 1, !tbaa !17
  %i.aqr = sext i8 %i.aqq to i32                  ; 2 uses
  %i.aqs = mul nsw i32 %i.aqr, %i.apx
  %i.aqt = add nsw i32 %i.aqo, %i.aqs             ; 2 uses
  %i.aqu = mul nsw i32 %i.aqm, %i.aqc
  %i.aqv = add nsw i32 %i.aqu, %.18531590.i
  %i.aqw = mul nsw i32 %i.aqr, %i.aqh
  %i.aqx = add nsw i32 %i.aqv, %i.aqw             ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %.08501591.i, i64 4
  %i.aqz = getelementptr inbounds nuw i8, ptr %.79131586.i, i64 4
  %i.ara = add nuw nsw i32 %.08481592.i, 2        ; 2 uses
  %i.arb = or disjoint i32 %i.ara, 1
  %i.arc = icmp slt i32 %i.arb, %8
  br i1 %i.arc, label %.lr.ph1594.i, label %.preheader1222.loopexit.i, !llvm.loop !304

.lr.ph1609.i:                                     ; preds = %.lr.ph1609.i.preheader1117, %.lr.ph1609.i
  %.18491608.i = phi i32 [ %i.arx, %.lr.ph1609.i ], [ %.18491608.i.ph, %.lr.ph1609.i.preheader1117 ]
  %.18511607.i = phi ptr [ %i.arv, %.lr.ph1609.i ], [ %.18511607.i.ph, %.lr.ph1609.i.preheader1117 ] ; 3 uses
  %.28541606.i = phi i32 [ %i.aru, %.lr.ph1609.i ], [ %.28541606.i.ph, %.lr.ph1609.i.preheader1117 ]
  %.28571605.i = phi i32 [ %i.ars, %.lr.ph1609.i ], [ %.28571605.i.ph, %.lr.ph1609.i.preheader1117 ]
  %.28601604.i = phi i32 [ %i.arn, %.lr.ph1609.i ], [ %.28601604.i.ph, %.lr.ph1609.i.preheader1117 ]
  %.28631603.i = phi i32 [ %i.ari, %.lr.ph1609.i ], [ %.28631603.i.ph, %.lr.ph1609.i.preheader1117 ]
  %.89141602.i = phi ptr [ %i.arw, %.lr.ph1609.i ], [ %.89141602.i.ph, %.lr.ph1609.i.preheader1117 ] ; 3 uses
  %i.ard = load i8, ptr %.18511607.i, align 1, !tbaa !17
  %i.are = sext i8 %i.ard to i32                  ; 2 uses
  %i.arf = load i8, ptr %.89141602.i, align 1, !tbaa !17
  %i.arg = sext i8 %i.arf to i32                  ; 2 uses
  %i.arh = mul nsw i32 %i.arg, %i.are
  %i.ari = add nsw i32 %i.arh, %.28631603.i       ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %.89141602.i, i64 1
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !17
  %i.arl = sext i8 %i.ark to i32                  ; 2 uses
  %i.arm = mul nsw i32 %i.arl, %i.are
  %i.arn = add nsw i32 %i.arm, %.28601604.i       ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %.18511607.i, i64 1
  %i.arp = load i8, ptr %i.aro, align 1, !tbaa !17
  %i.arq = sext i8 %i.arp to i32                  ; 2 uses
  %i.arr = mul nsw i32 %i.arq, %i.arg
  %i.ars = add nsw i32 %i.arr, %.28571605.i       ; 2 uses
  %i.art = mul nsw i32 %i.arq, %i.arl
  %i.aru = add nsw i32 %i.art, %.28541606.i       ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %.18511607.i, i64 2
  %i.arw = getelementptr inbounds nuw i8, ptr %.89141602.i, i64 2 ; 2 uses
  %i.arx = add nuw nsw i32 %.18491608.i, 1        ; 2 uses
  %exitcond2012.not.i = icmp eq i32 %i.arx, %8
  br i1 %exitcond2012.not.i, label %._crit_edge1610.i, label %.lr.ph1609.i, !llvm.loop !305

._crit_edge1610.i:                                ; preds = %.lr.ph1609.i, %middle.block755, %.preheader1222.i
  %.8914.lcssa.i = phi ptr [ %.7913.lcssa.i, %.preheader1222.i ], [ %i.aop, %middle.block755 ], [ %i.arw, %.lr.ph1609.i ] ; 2 uses
  %.2863.lcssa.i = phi i32 [ %.1862.lcssa.i, %.preheader1222.i ], [ %i.apl, %middle.block755 ], [ %i.ari, %.lr.ph1609.i ]
  %.2860.lcssa.i = phi i32 [ %.1859.lcssa.i, %.preheader1222.i ], [ %i.apk, %middle.block755 ], [ %i.arn, %.lr.ph1609.i ]
  %.2857.lcssa.i = phi i32 [ %.1856.lcssa.i, %.preheader1222.i ], [ %i.apj, %middle.block755 ], [ %i.ars, %.lr.ph1609.i ]
  %.2854.lcssa.i = phi i32 [ %.1853.lcssa.i, %.preheader1222.i ], [ %i.api, %middle.block755 ], [ %i.aru, %.lr.ph1609.i ]
  store i32 %.2863.lcssa.i, ptr %.131618.i, align 4, !tbaa !28
  %i.ary = getelementptr inbounds nuw i8, ptr %.131618.i, i64 4
  store i32 %.2860.lcssa.i, ptr %i.ary, align 4, !tbaa !28
  %i.arz = getelementptr inbounds nuw i8, ptr %.131618.i, i64 8
  store i32 %.2857.lcssa.i, ptr %i.arz, align 4, !tbaa !28
  %i.asa = getelementptr inbounds nuw i8, ptr %.131618.i, i64 12
  store i32 %.2854.lcssa.i, ptr %i.asa, align 4, !tbaa !28
  %i.asb = getelementptr inbounds nuw i8, ptr %.131618.i, i64 16 ; 2 uses
  %i.asc = add nuw nsw i32 %.29201616.i, 2        ; 3 uses
  %i.asd = or disjoint i32 %i.asc, 1
  %i.ase = icmp slt i32 %i.asd, %6
  br i1 %i.ase, label %.lr.ph1619.i, label %.preheader1225.i, !llvm.loop !306

.lr.ph1648.i:                                     ; preds = %.lr.ph1648.i.preheader, %._crit_edge1641.i
  %.141647.i = phi ptr [ %i.ayi, %._crit_edge1641.i ], [ %.13.lcssa.i, %.lr.ph1648.i.preheader ] ; 5 uses
  %.99151646.i = phi ptr [ %.11917.lcssa.i, %._crit_edge1641.i ], [ %.6912.lcssa.i, %.lr.ph1648.i.preheader ] ; 8 uses
  %.39211645.i = phi i32 [ %i.ayj, %._crit_edge1641.i ], [ %.2920.lcssa.i, %.lr.ph1648.i.preheader ]
  br i1 %i.qa, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph1648.i
  %i.asf = load i32, ptr %.141647.i, align 4, !tbaa !28
  %i.asg = getelementptr inbounds nuw i8, ptr %.141647.i, i64 4
  %i.ash = load i32, ptr %i.asg, align 4, !tbaa !28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph1648.i
  %.0845.i = phi i32 [ %i.asf, %bb.ab ], [ 0, %.lr.ph1648.i ] ; 4 uses
  %.0842.i = phi i32 [ %i.ash, %bb.ab ], [ 0, %.lr.ph1648.i ] ; 4 uses
  br i1 %i.qb, label %iter.check709, label %.preheader1221.i

iter.check709:                                    ; preds = %bb.ac
  br i1 %min.iters.check668, label %.lr.ph1629.i.preheader, label %vector.main.loop.iter.check669

vector.main.loop.iter.check669:                   ; preds = %iter.check709
  br i1 %min.iters.check670, label %vec.epilog.ph713, label %vector.ph671

vector.ph671:                                     ; preds = %vector.main.loop.iter.check669
  %i.asi = getelementptr i8, ptr %.99151646.i, i64 %i.re
  %i.asj = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0842.i, i64 0
  %i.ask = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0845.i, i64 0
  br label %vector.body673

vector.body673:                                   ; preds = %vector.body673, %vector.ph671
  %index674 = phi i64 [ 0, %vector.ph671 ], [ %index.next699, %vector.body673 ] ; 3 uses
  %vec.phi675 = phi <8 x i32> [ %i.asj, %vector.ph671 ], [ %i.atp, %vector.body673 ]
  %vec.phi676 = phi <8 x i32> [ zeroinitializer, %vector.ph671 ], [ %i.atq, %vector.body673 ]
  %vec.phi677 = phi <8 x i32> [ %i.ask, %vector.ph671 ], [ %i.atd, %vector.body673 ]
  %vec.phi678 = phi <8 x i32> [ zeroinitializer, %vector.ph671 ], [ %i.ate, %vector.body673 ]
  %i.asl = shl i64 %index674, 2                   ; 2 uses
  %next.gep679 = getelementptr i8, ptr %.27781653.i, i64 %i.asl
  %i.asm = getelementptr i8, ptr %.27781653.i, i64 %i.asl
  %next.gep680 = getelementptr i8, ptr %i.asm, i64 32
  %i.asn = shl i64 %index674, 1                   ; 2 uses
  %next.gep681 = getelementptr i8, ptr %.99151646.i, i64 %i.asn
  %i.aso = getelementptr i8, ptr %.99151646.i, i64 %i.asn
  %next.gep682 = getelementptr i8, ptr %i.aso, i64 16
  %wide.vec683 = load <32 x i8>, ptr %next.gep679, align 1, !tbaa !17 ; 4 uses
  %strided.vec684.a = shufflevector <32 x i8> %wide.vec683, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec685 = shufflevector <32 x i8> %wide.vec683, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec686 = shufflevector <32 x i8> %wide.vec683, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec687 = shufflevector <32 x i8> %wide.vec683, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec688 = load <32 x i8>, ptr %next.gep680, align 1, !tbaa !17 ; 4 uses
  %strided.vec689 = shufflevector <32 x i8> %wide.vec688, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec690 = shufflevector <32 x i8> %wide.vec688, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec691 = shufflevector <32 x i8> %wide.vec688, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec692 = shufflevector <32 x i8> %wide.vec688, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.asp = sext <8 x i8> %strided.vec684.a to <8 x i32>
  %i.asq = sext <8 x i8> %strided.vec689 to <8 x i32>
  %wide.vec693 = load <16 x i8>, ptr %next.gep681, align 1, !tbaa !17 ; 2 uses
  %strided.vec694 = shufflevector <16 x i8> %wide.vec693, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec695 = shufflevector <16 x i8> %wide.vec693, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec696 = load <16 x i8>, ptr %next.gep682, align 1, !tbaa !17 ; 2 uses
  %strided.vec697 = shufflevector <16 x i8> %wide.vec696, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec698 = shufflevector <16 x i8> %wide.vec696, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.asr = sext <8 x i8> %strided.vec694 to <8 x i32> ; 2 uses
  %i.ass = sext <8 x i8> %strided.vec697 to <8 x i32> ; 2 uses
  %i.ast = mul nsw <8 x i32> %i.asr, %i.asp
  %i.asu = mul nsw <8 x i32> %i.ass, %i.asq
  %i.asv = add <8 x i32> %i.ast, %vec.phi677
  %i.asw = add <8 x i32> %i.asu, %vec.phi678
  %i.asx = sext <8 x i8> %strided.vec685 to <8 x i32>
  %i.asy = sext <8 x i8> %strided.vec690 to <8 x i32>
  %i.asz = sext <8 x i8> %strided.vec695 to <8 x i32> ; 2 uses
  %i.ata = sext <8 x i8> %strided.vec698 to <8 x i32> ; 2 uses
  %i.atb = mul nsw <8 x i32> %i.asz, %i.asx
  %i.atc = mul nsw <8 x i32> %i.ata, %i.asy
  %i.atd = add <8 x i32> %i.asv, %i.atb           ; 2 uses
  %i.ate = add <8 x i32> %i.asw, %i.atc           ; 2 uses
  %i.atf = sext <8 x i8> %strided.vec686 to <8 x i32>
  %i.atg = sext <8 x i8> %strided.vec691 to <8 x i32>
  %i.ath = mul nsw <8 x i32> %i.atf, %i.asr
  %i.ati = mul nsw <8 x i32> %i.atg, %i.ass
  %i.atj = add <8 x i32> %i.ath, %vec.phi675
  %i.atk = add <8 x i32> %i.ati, %vec.phi676
  %i.atl = sext <8 x i8> %strided.vec687 to <8 x i32>
  %i.atm = sext <8 x i8> %strided.vec692 to <8 x i32>
  %i.atn = mul nsw <8 x i32> %i.atl, %i.asz
  %i.ato = mul nsw <8 x i32> %i.atm, %i.ata
  %i.atp = add <8 x i32> %i.atj, %i.atn           ; 2 uses
  %i.atq = add <8 x i32> %i.atk, %i.ato           ; 2 uses
  %index.next699 = add nuw i64 %index674, 16      ; 2 uses
  %i.atr = icmp eq i64 %index.next699, %n.vec672
  br i1 %i.atr, label %middle.block700, label %vector.body673, !llvm.loop !307

middle.block700:                                  ; preds = %vector.body673
  %bin.rdx701 = add <8 x i32> %i.atq, %i.atp
  %i.ats = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx701) ; 3 uses
  %bin.rdx702 = add <8 x i32> %i.ate, %i.atd
  %i.att = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx702) ; 3 uses
  br i1 %cmp.n703, label %.preheader1221.loopexit.i, label %vec.epilog.iter.check711

vec.epilog.iter.check711:                         ; preds = %middle.block700
  br i1 %min.epilog.iters.check712, label %.lr.ph1629.i.preheader, label %vec.epilog.ph713, !prof !339

vec.epilog.ph713:                                 ; preds = %vector.main.loop.iter.check669, %vec.epilog.iter.check711
  %vec.epilog.resume.val704 = phi i64 [ %n.vec672, %vec.epilog.iter.check711 ], [ 0, %vector.main.loop.iter.check669 ]
  %bc.merge.rdx706 = phi i32 [ %i.ats, %vec.epilog.iter.check711 ], [ %.0842.i, %vector.main.loop.iter.check669 ]
  %bc.merge.rdx707 = phi i32 [ %i.att, %vec.epilog.iter.check711 ], [ %.0845.i, %vector.main.loop.iter.check669 ]
  %i.atu = getelementptr i8, ptr %.99151646.i, i64 %i.ri
  %i.atv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx706, i64 0
  %i.atw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx707, i64 0
  br label %vec.epilog.vector.body715

vec.epilog.vector.body715:                        ; preds = %vec.epilog.vector.body715, %vec.epilog.ph713
  %index716 = phi i64 [ %vec.epilog.resume.val704, %vec.epilog.ph713 ], [ %index.next729, %vec.epilog.vector.body715 ] ; 3 uses
  %vec.phi717 = phi <4 x i32> [ %i.atv, %vec.epilog.ph713 ], [ %i.aum, %vec.epilog.vector.body715 ]
  %vec.phi718 = phi <4 x i32> [ %i.atw, %vec.epilog.ph713 ], [ %i.aug, %vec.epilog.vector.body715 ]
  %i.atx = shl i64 %index716, 2
  %next.gep719 = getelementptr i8, ptr %.27781653.i, i64 %i.atx
  %i.aty = shl i64 %index716, 1
  %next.gep720 = getelementptr i8, ptr %.99151646.i, i64 %i.aty
  %wide.vec721 = load <16 x i8>, ptr %next.gep719, align 1, !tbaa !17 ; 4 uses
  %strided.vec722 = shufflevector <16 x i8> %wide.vec721, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec723 = shufflevector <16 x i8> %wide.vec721, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec724 = shufflevector <16 x i8> %wide.vec721, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec725 = shufflevector <16 x i8> %wide.vec721, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.atz = sext <4 x i8> %strided.vec722 to <4 x i32>
  %wide.vec726 = load <8 x i8>, ptr %next.gep720, align 1, !tbaa !17 ; 2 uses
  %strided.vec727 = shufflevector <8 x i8> %wide.vec726, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec728 = shufflevector <8 x i8> %wide.vec726, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aua = sext <4 x i8> %strided.vec727 to <4 x i32> ; 2 uses
  %i.aub = mul nsw <4 x i32> %i.aua, %i.atz
  %i.auc = add <4 x i32> %i.aub, %vec.phi718
  %i.aud = sext <4 x i8> %strided.vec723 to <4 x i32>
  %i.aue = sext <4 x i8> %strided.vec728 to <4 x i32> ; 2 uses
  %i.auf = mul nsw <4 x i32> %i.aue, %i.aud
  %i.aug = add <4 x i32> %i.auc, %i.auf           ; 2 uses
  %i.auh = sext <4 x i8> %strided.vec724 to <4 x i32>
  %i.aui = mul nsw <4 x i32> %i.auh, %i.aua
  %i.auj = add <4 x i32> %i.aui, %vec.phi717
  %i.auk = sext <4 x i8> %strided.vec725 to <4 x i32>
  %i.aul = mul nsw <4 x i32> %i.auk, %i.aue
  %i.aum = add <4 x i32> %i.auj, %i.aul           ; 2 uses
  %index.next729 = add nuw i64 %index716, 4       ; 2 uses
  %i.aun = icmp eq i64 %index.next729, %n.vec714
  br i1 %i.aun, label %vec.epilog.middle.block730, label %vec.epilog.vector.body715, !llvm.loop !308

vec.epilog.middle.block730:                       ; preds = %vec.epilog.vector.body715
  %i.auo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aum) ; 2 uses
  %i.aup = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aug) ; 2 uses
  br i1 %cmp.n731, label %.preheader1221.loopexit.i, label %.lr.ph1629.i.preheader

.lr.ph1629.i.preheader:                           ; preds = %iter.check709, %vec.epilog.iter.check711, %vec.epilog.middle.block730
  %.08381627.i.ph = phi i32 [ 0, %iter.check709 ], [ %i.rc, %vec.epilog.iter.check711 ], [ %i.rg, %vec.epilog.middle.block730 ]
  %.08401626.i.ph = phi ptr [ %.27781653.i, %iter.check709 ], [ %i.amo, %vec.epilog.iter.check711 ], [ %i.amp, %vec.epilog.middle.block730 ]
  %.18431625.i.ph = phi i32 [ %.0842.i, %iter.check709 ], [ %i.ats, %vec.epilog.iter.check711 ], [ %i.auo, %vec.epilog.middle.block730 ]
  %.18461624.i.ph = phi i32 [ %.0845.i, %iter.check709 ], [ %i.att, %vec.epilog.iter.check711 ], [ %i.aup, %vec.epilog.middle.block730 ]
  %.109161623.i.ph = phi ptr [ %.99151646.i, %iter.check709 ], [ %i.asi, %vec.epilog.iter.check711 ], [ %i.atu, %vec.epilog.middle.block730 ]
  br label %.lr.ph1629.i

.preheader1221.loopexit.i:                        ; preds = %.lr.ph1629.i, %vec.epilog.middle.block730, %middle.block700
  %.lcssa552 = phi i32 [ %i.aup, %vec.epilog.middle.block730 ], [ %i.att, %middle.block700 ], [ %i.axd, %.lr.ph1629.i ]
  %.lcssa551 = phi i32 [ %i.auo, %vec.epilog.middle.block730 ], [ %i.ats, %middle.block700 ], [ %i.axn, %.lr.ph1629.i ]
  %i.auq = getelementptr i8, ptr %.99151646.i, i64 %i.qn
  %scevgep2013.i = getelementptr i8, ptr %i.auq, i64 2
  br label %.preheader1221.i

.preheader1221.i:                                 ; preds = %.preheader1221.loopexit.i, %bb.ac
  %.10916.lcssa.i = phi ptr [ %.99151646.i, %bb.ac ], [ %scevgep2013.i, %.preheader1221.loopexit.i ] ; 6 uses
  %.1846.lcssa.i = phi i32 [ %.0845.i, %bb.ac ], [ %.lcssa552, %.preheader1221.loopexit.i ] ; 4 uses
  %.1843.lcssa.i = phi i32 [ %.0842.i, %bb.ac ], [ %.lcssa551, %.preheader1221.loopexit.i ] ; 4 uses
  %.0840.lcssa.i = phi ptr [ %.27781653.i, %bb.ac ], [ %indvars.iv2009.i, %.preheader1221.loopexit.i ] ; 6 uses
  %.0838.lcssa.i = phi i32 [ 0, %bb.ac ], [ %i.qg, %.preheader1221.loopexit.i ] ; 5 uses
  %i.aur = icmp slt i32 %.0838.lcssa.i, %8
  br i1 %i.aur, label %iter.check, label %._crit_edge1641.i

iter.check:                                       ; preds = %.preheader1221.i
  %i.aus = xor i32 %.0838.lcssa.i, -1
  %i.aut = add i32 %8, %i.aus                     ; 3 uses
  %i.auu = zext i32 %i.aut to i64
  %i.auv = add nuw nsw i64 %i.auu, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.aut, 3
  br i1 %min.iters.check, label %.lr.ph1640.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check636 = icmp ult i32 %i.aut, 15
  br i1 %min.iters.check636, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.auw = and i64 %i.auv, 12
  %n.vec = and i64 %i.auv, 8589934576             ; 6 uses
  %i.aux = trunc i64 %n.vec to i32
  %i.auy = add i32 %.0838.lcssa.i, %i.aux
  %i.auz = shl nuw nsw i64 %n.vec, 1
  %i.ava = getelementptr i8, ptr %.0840.lcssa.i, i64 %i.auz
  %i.avb = getelementptr i8, ptr %.10916.lcssa.i, i64 %n.vec ; 2 uses
  %i.avc = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.1843.lcssa.i, i64 0
  %i.avd = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.1846.lcssa.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i32> [ %i.avc, %vector.ph ], [ %i.avt, %vector.body ]
  %vec.phi637 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.avu, %vector.body ]
  %vec.phi638 = phi <8 x i32> [ %i.avd, %vector.ph ], [ %i.avn, %vector.body ]
  %vec.phi639 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.avo, %vector.body ]
  %i.ave = shl i64 %index, 1                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.0840.lcssa.i, i64 %i.ave
  %i.avf = getelementptr i8, ptr %.0840.lcssa.i, i64 %i.ave
  %next.gep640 = getelementptr i8, ptr %i.avf, i64 16
  %next.gep641 = getelementptr i8, ptr %.10916.lcssa.i, i64 %index ; 2 uses
  %wide.vec = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17 ; 2 uses
  %strided.vec = shufflevector <16 x i8> %wide.vec, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec642 = shufflevector <16 x i8> %wide.vec, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec643 = load <16 x i8>, ptr %next.gep640, align 1, !tbaa !17 ; 2 uses
  %strided.vec644 = shufflevector <16 x i8> %wide.vec643, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec645 = shufflevector <16 x i8> %wide.vec643, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.avg = sext <8 x i8> %strided.vec to <8 x i32>
  %i.avh = sext <8 x i8> %strided.vec644 to <8 x i32>
  %i.avi = getelementptr i8, ptr %next.gep641, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep641, align 1, !tbaa !17
  %wide.load646 = load <8 x i8>, ptr %i.avi, align 1, !tbaa !17
  %i.avj = sext <8 x i8> %wide.load to <8 x i32>  ; 2 uses
  %i.avk = sext <8 x i8> %wide.load646 to <8 x i32> ; 2 uses
  %i.avl = mul nsw <8 x i32> %i.avj, %i.avg
  %i.avm = mul nsw <8 x i32> %i.avk, %i.avh
  %i.avn = add <8 x i32> %i.avl, %vec.phi638      ; 2 uses
  %i.avo = add <8 x i32> %i.avm, %vec.phi639      ; 2 uses
  %i.avp = sext <8 x i8> %strided.vec642 to <8 x i32>
  %i.avq = sext <8 x i8> %strided.vec645 to <8 x i32>
  %i.avr = mul nsw <8 x i32> %i.avp, %i.avj
  %i.avs = mul nsw <8 x i32> %i.avq, %i.avk
  %i.avt = add <8 x i32> %i.avr, %vec.phi         ; 2 uses
  %i.avu = add <8 x i32> %i.avs, %vec.phi637      ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.avv = icmp eq i64 %index.next, %n.vec
  br i1 %i.avv, label %middle.block, label %vector.body, !llvm.loop !309

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.avu, %i.avt
  %i.avw = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx) ; 3 uses
  %bin.rdx647 = add <8 x i32> %i.avo, %i.avn
  %i.avx = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx647) ; 3 uses
  %cmp.n = icmp eq i64 %i.auv, %n.vec
  br i1 %cmp.n, label %._crit_edge1641.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.auw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1640.i.preheader, label %vec.epilog.ph, !prof !339

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.avw, %vec.epilog.iter.check ], [ %.1843.lcssa.i, %vector.main.loop.iter.check ]
  %bc.merge.rdx649 = phi i32 [ %i.avx, %vec.epilog.iter.check ], [ %.1846.lcssa.i, %vector.main.loop.iter.check ]
  %n.vec651 = and i64 %i.auv, 8589934588          ; 5 uses
  %i.avy = trunc i64 %n.vec651 to i32
  %i.avz = add i32 %.0838.lcssa.i, %i.avy
  %i.awa = shl nuw nsw i64 %n.vec651, 1
  %i.awb = getelementptr i8, ptr %.0840.lcssa.i, i64 %i.awa
  %i.awc = getelementptr i8, ptr %.10916.lcssa.i, i64 %n.vec651 ; 2 uses
  %i.awd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %i.awe = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx649, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index652 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next661, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi653 = phi <4 x i32> [ %i.awd, %vec.epilog.ph ], [ %i.awm, %vec.epilog.vector.body ]
  %vec.phi654 = phi <4 x i32> [ %i.awe, %vec.epilog.ph ], [ %i.awj, %vec.epilog.vector.body ]
  %i.awf = shl i64 %index652, 1
  %next.gep655 = getelementptr i8, ptr %.0840.lcssa.i, i64 %i.awf
  %next.gep656 = getelementptr i8, ptr %.10916.lcssa.i, i64 %index652
  %wide.vec657 = load <8 x i8>, ptr %next.gep655, align 1, !tbaa !17 ; 2 uses
  %strided.vec658 = shufflevector <8 x i8> %wide.vec657, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec659 = shufflevector <8 x i8> %wide.vec657, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.awg = sext <4 x i8> %strided.vec658 to <4 x i32>
  %wide.load660 = load <4 x i8>, ptr %next.gep656, align 1, !tbaa !17
  %i.awh = sext <4 x i8> %wide.load660 to <4 x i32> ; 2 uses
  %i.awi = mul nsw <4 x i32> %i.awh, %i.awg
  %i.awj = add <4 x i32> %i.awi, %vec.phi654      ; 2 uses
  %i.awk = sext <4 x i8> %strided.vec659 to <4 x i32>
  %i.awl = mul nsw <4 x i32> %i.awk, %i.awh
  %i.awm = add <4 x i32> %i.awl, %vec.phi653      ; 2 uses
  %index.next661 = add nuw i64 %index652, 4       ; 2 uses
  %i.awn = icmp eq i64 %index.next661, %n.vec651
  br i1 %i.awn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !310

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.awo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.awm) ; 2 uses
  %i.awp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.awj) ; 2 uses
  %cmp.n662 = icmp eq i64 %i.auv, %n.vec651
  br i1 %cmp.n662, label %._crit_edge1641.i, label %.lr.ph1640.i.preheader

.lr.ph1640.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.18391639.i.ph = phi i32 [ %.0838.lcssa.i, %iter.check ], [ %i.auy, %vec.epilog.iter.check ], [ %i.avz, %vec.epilog.middle.block ]
  %.18411638.i.ph = phi ptr [ %.0840.lcssa.i, %iter.check ], [ %i.ava, %vec.epilog.iter.check ], [ %i.awb, %vec.epilog.middle.block ]
  %.28441637.i.ph = phi i32 [ %.1843.lcssa.i, %iter.check ], [ %i.avw, %vec.epilog.iter.check ], [ %i.awo, %vec.epilog.middle.block ]
  %.28471636.i.ph = phi i32 [ %.1846.lcssa.i, %iter.check ], [ %i.avx, %vec.epilog.iter.check ], [ %i.awp, %vec.epilog.middle.block ]
  %.119171635.i.ph = phi ptr [ %.10916.lcssa.i, %iter.check ], [ %i.avb, %vec.epilog.iter.check ], [ %i.awc, %vec.epilog.middle.block ]
  br label %.lr.ph1640.i

.lr.ph1629.i:                                     ; preds = %.lr.ph1629.i.preheader, %.lr.ph1629.i
  %.08381627.i = phi i32 [ %i.axq, %.lr.ph1629.i ], [ %.08381627.i.ph, %.lr.ph1629.i.preheader ]
  %.08401626.i = phi ptr [ %i.axo, %.lr.ph1629.i ], [ %.08401626.i.ph, %.lr.ph1629.i.preheader ] ; 5 uses
  %.18431625.i = phi i32 [ %i.axn, %.lr.ph1629.i ], [ %.18431625.i.ph, %.lr.ph1629.i.preheader ]
  %.18461624.i = phi i32 [ %i.axd, %.lr.ph1629.i ], [ %.18461624.i.ph, %.lr.ph1629.i.preheader ]
  %.109161623.i = phi ptr [ %i.axp, %.lr.ph1629.i ], [ %.109161623.i.ph, %.lr.ph1629.i.preheader ] ; 3 uses
  %i.awq = load i8, ptr %.08401626.i, align 1, !tbaa !17
  %i.awr = sext i8 %i.awq to i32
  %i.aws = load i8, ptr %.109161623.i, align 1, !tbaa !17
  %i.awt = sext i8 %i.aws to i32                  ; 2 uses
  %i.awu = mul nsw i32 %i.awt, %i.awr
  %i.awv = add nsw i32 %i.awu, %.18461624.i
  %i.aww = getelementptr inbounds nuw i8, ptr %.08401626.i, i64 1
  %i.awx = load i8, ptr %i.aww, align 1, !tbaa !17
  %i.awy = sext i8 %i.awx to i32
  %i.awz = getelementptr inbounds nuw i8, ptr %.109161623.i, i64 1
  %i.axa = load i8, ptr %i.awz, align 1, !tbaa !17
  %i.axb = sext i8 %i.axa to i32                  ; 2 uses
  %i.axc = mul nsw i32 %i.axb, %i.awy
  %i.axd = add nsw i32 %i.awv, %i.axc             ; 2 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %.08401626.i, i64 2
  %i.axf = load i8, ptr %i.axe, align 1, !tbaa !17
  %i.axg = sext i8 %i.axf to i32
  %i.axh = mul nsw i32 %i.axg, %i.awt
  %i.axi = add nsw i32 %i.axh, %.18431625.i
  %i.axj = getelementptr inbounds nuw i8, ptr %.08401626.i, i64 3
  %i.axk = load i8, ptr %i.axj, align 1, !tbaa !17
  %i.axl = sext i8 %i.axk to i32
  %i.axm = mul nsw i32 %i.axl, %i.axb
  %i.axn = add nsw i32 %i.axi, %i.axm             ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %.08401626.i, i64 4
  %i.axp = getelementptr inbounds nuw i8, ptr %.109161623.i, i64 2
  %i.axq = add nuw nsw i32 %.08381627.i, 2        ; 2 uses
  %i.axr = or disjoint i32 %i.axq, 1
  %i.axs = icmp slt i32 %i.axr, %8
  br i1 %i.axs, label %.lr.ph1629.i, label %.preheader1221.loopexit.i, !llvm.loop !311

.lr.ph1640.i:                                     ; preds = %.lr.ph1640.i.preheader, %.lr.ph1640.i
  %.18391639.i = phi i32 [ %i.ayg, %.lr.ph1640.i ], [ %.18391639.i.ph, %.lr.ph1640.i.preheader ]
  %.18411638.i = phi ptr [ %i.aye, %.lr.ph1640.i ], [ %.18411638.i.ph, %.lr.ph1640.i.preheader ] ; 3 uses
  %.28441637.i = phi i32 [ %i.ayd, %.lr.ph1640.i ], [ %.28441637.i.ph, %.lr.ph1640.i.preheader ]
  %.28471636.i = phi i32 [ %i.axy, %.lr.ph1640.i ], [ %.28471636.i.ph, %.lr.ph1640.i.preheader ]
  %.119171635.i = phi ptr [ %i.ayf, %.lr.ph1640.i ], [ %.119171635.i.ph, %.lr.ph1640.i.preheader ] ; 2 uses
  %i.axt = load i8, ptr %.18411638.i, align 1, !tbaa !17
  %i.axu = sext i8 %i.axt to i32
  %i.axv = load i8, ptr %.119171635.i, align 1, !tbaa !17
  %i.axw = sext i8 %i.axv to i32                  ; 2 uses
  %i.axx = mul nsw i32 %i.axw, %i.axu
  %i.axy = add nsw i32 %i.axx, %.28471636.i       ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %.18411638.i, i64 1
  %i.aya = load i8, ptr %i.axz, align 1, !tbaa !17
  %i.ayb = sext i8 %i.aya to i32
  %i.ayc = mul nsw i32 %i.ayb, %i.axw
  %i.ayd = add nsw i32 %i.ayc, %.28441637.i       ; 2 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %.18411638.i, i64 2
  %i.ayf = getelementptr inbounds nuw i8, ptr %.119171635.i, i64 1 ; 2 uses
  %i.ayg = add nuw nsw i32 %.18391639.i, 1        ; 2 uses
  %exitcond2014.not.i = icmp eq i32 %i.ayg, %8
  br i1 %exitcond2014.not.i, label %._crit_edge1641.i, label %.lr.ph1640.i, !llvm.loop !312

._crit_edge1641.i:                                ; preds = %.lr.ph1640.i, %middle.block, %vec.epilog.middle.block, %.preheader1221.i
  %.11917.lcssa.i = phi ptr [ %.10916.lcssa.i, %.preheader1221.i ], [ %i.awc, %vec.epilog.middle.block ], [ %i.avb, %middle.block ], [ %i.ayf, %.lr.ph1640.i ]
  %.2847.lcssa.i = phi i32 [ %.1846.lcssa.i, %.preheader1221.i ], [ %i.awp, %vec.epilog.middle.block ], [ %i.avx, %middle.block ], [ %i.axy, %.lr.ph1640.i ]
  %.2844.lcssa.i = phi i32 [ %.1843.lcssa.i, %.preheader1221.i ], [ %i.awo, %vec.epilog.middle.block ], [ %i.avw, %middle.block ], [ %i.ayd, %.lr.ph1640.i ]
  store i32 %.2847.lcssa.i, ptr %.141647.i, align 4, !tbaa !28
  %i.ayh = getelementptr inbounds nuw i8, ptr %.141647.i, i64 4
  store i32 %.2844.lcssa.i, ptr %i.ayh, align 4, !tbaa !28
  %i.ayi = getelementptr inbounds nuw i8, ptr %.141647.i, i64 8 ; 2 uses
  %i.ayj = add nuw nsw i32 %.39211645.i, 1        ; 2 uses
  %exitcond2015.not.i = icmp eq i32 %i.ayj, %6
  br i1 %exitcond2015.not.i, label %._crit_edge1649.i, label %.lr.ph1648.i, !llvm.loop !313

._crit_edge1649.i:                                ; preds = %._crit_edge1641.i, %.preheader1225.i
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader1225.i ], [ %i.ayi, %._crit_edge1641.i ] ; 2 uses
  %i.ayk = getelementptr inbounds i8, ptr %.27781653.i, i64 %i.qd ; 2 uses
  %i.ayl = add nuw nsw i32 %.27851651.i, 2        ; 3 uses
  %i.aym = or disjoint i32 %i.ayl, 1
  %i.ayn = icmp slt i32 %i.aym, %4
  %scevgep2010.i.a = getelementptr i8, ptr %indvars.iv2009.i, i64 %i.qd
  br i1 %i.ayn, label %.preheader1228.i, label %.preheader1220.i, !llvm.loop !314

.preheader1219.i:                                 ; preds = %._crit_edge1787.i, %.preheader1219.lr.ph.i
  %indvars.iv2020.i = phi ptr [ %scevgep2019.i, %.preheader1219.lr.ph.i ], [ %scevgep2021.i, %._crit_edge1787.i ] ; 3 uses
  %.31791.i = phi ptr [ %.2778.lcssa.i, %.preheader1219.lr.ph.i ], [ %i.bne, %._crit_edge1787.i ] ; 18 uses
  %.151790.i = phi ptr [ %.10.lcssa.i, %.preheader1219.lr.ph.i ], [ %.19.lcssa.i, %._crit_edge1787.i ] ; 2 uses
  %.37861789.i = phi i32 [ %.2785.lcssa.i, %.preheader1219.lr.ph.i ], [ %i.bnf, %._crit_edge1787.i ]
  br i1 %i.adq, label %.lr.ph1676.i, label %.preheader1218.i

.preheader1218.i:                                 ; preds = %._crit_edge1670.i, %.preheader1219.i
  %.0825.lcssa.i = phi ptr [ %i.d, %.preheader1219.i ], [ %.2827.lcssa.i, %._crit_edge1670.i ] ; 2 uses
  %.0821.lcssa.i = phi i32 [ 0, %.preheader1219.i ], [ %i.ady, %._crit_edge1670.i ] ; 3 uses
  %.16.lcssa.i = phi ptr [ %.151790.i, %.preheader1219.i ], [ %i.bbn, %._crit_edge1670.i ] ; 2 uses
  %i.ayo = or disjoint i32 %.0821.lcssa.i, 3
  %i.ayp = icmp slt i32 %i.ayo, %6
  br i1 %i.ayp, label %.lr.ph1699.i, label %.preheader1217.i

.lr.ph1676.i:                                     ; preds = %.preheader1219.i, %._crit_edge1670.i
  %.161675.i = phi ptr [ %i.bbn, %._crit_edge1670.i ], [ %.151790.i, %.preheader1219.i ] ; 3 uses
  %.08211674.i = phi i32 [ %i.bbo, %._crit_edge1670.i ], [ 0, %.preheader1219.i ]
  %.08251673.i = phi ptr [ %.2827.lcssa.i, %._crit_edge1670.i ], [ %i.d, %.preheader1219.i ] ; 4 uses
  br i1 %i.adr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph1676.i
  %i.ayq = load <8 x i32>, ptr %.161675.i, align 1, !tbaa !17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph1676.i
  %i.ayr = phi <8 x i32> [ %i.ayq, %bb.ad ], [ zeroinitializer, %.lr.ph1676.i ] ; 3 uses
  br i1 %i.ads, label %.lr.ph1661.i.preheader, label %.preheader1215.i

.lr.ph1661.i.preheader:                           ; preds = %bb.ae
  br i1 %i.ael, label %.lr.ph1661.i.epil.preheader, label %.lr.ph1661.i

.preheader1215.i.loopexit.unr-lcssa:              ; preds = %.lr.ph1661.i
  br i1 %lcmp.mod1321.not.not, label %.lr.ph1661.i.epil.preheader, label %.preheader1215.i.loopexit

.lr.ph1661.i.epil.preheader:                      ; preds = %.preheader1215.i.loopexit.unr-lcssa, %.lr.ph1661.i.preheader
  %.08191658.i.epil.init = phi ptr [ %.31791.i, %.lr.ph1661.i.preheader ], [ %i.ban, %.preheader1215.i.loopexit.unr-lcssa ] ; 2 uses
  %.18261657.i.epil.init = phi ptr [ %.08251673.i, %.lr.ph1661.i.preheader ], [ %i.bao, %.preheader1215.i.loopexit.unr-lcssa ]
  %.epil.init1320 = phi <8 x i32> [ %i.ayr, %.lr.ph1661.i.preheader ], [ %i.bam, %.preheader1215.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1324)
  %i.ays = load i16, ptr %.08191658.i.epil.init, align 2, !tbaa !338
  %i.ayt = insertelement <8 x i16> poison, i16 %i.ays, i64 0
  %i.ayu = load <16 x i8>, ptr %.18261657.i.epil.init, align 1, !tbaa !17
  %i.ayv = bitcast <8 x i16> %i.ayt to <16 x i8>
  %i.ayw = shufflevector <16 x i8> %i.ayv, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ayx = sext <16 x i8> %i.ayw to <16 x i16>
  %i.ayy = sext <16 x i8> %i.ayu to <16 x i16>
  %i.ayz = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ayx, <16 x i16> %i.ayy)
  %i.aza = add <8 x i32> %i.ayz, %.epil.init1320
  %i.azb = getelementptr inbounds nuw i8, ptr %.08191658.i.epil.init, i64 2
  br label %.preheader1215.i.loopexit

.preheader1215.i.loopexit:                        ; preds = %.preheader1215.i.loopexit.unr-lcssa, %.lr.ph1661.i.epil.preheader
  %.lcssa1055 = phi <8 x i32> [ %i.bam, %.preheader1215.i.loopexit.unr-lcssa ], [ %i.aza, %.lr.ph1661.i.epil.preheader ]
  %.lcssa = phi ptr [ %i.ban, %.preheader1215.i.loopexit.unr-lcssa ], [ %i.azb, %.lr.ph1661.i.epil.preheader ]
  %i.azc = getelementptr i8, ptr %.08251673.i, i64 %i.aeg
  %scevgep318 = getelementptr i8, ptr %i.azc, i64 16
  br label %.preheader1215.i

.preheader1215.i:                                 ; preds = %.preheader1215.i.loopexit, %bb.ae
  %.lcssa.i = phi <8 x i32> [ %i.ayr, %bb.ae ], [ %.lcssa1055, %.preheader1215.i.loopexit ] ; 3 uses
  %.1826.lcssa.i = phi ptr [ %.08251673.i, %bb.ae ], [ %scevgep318, %.preheader1215.i.loopexit ] ; 4 uses
  %.0819.lcssa.i = phi ptr [ %.31791.i, %bb.ae ], [ %.lcssa, %.preheader1215.i.loopexit ] ; 3 uses
  %.0817.lcssa.i = phi i32 [ 0, %bb.ae ], [ %i.adx, %.preheader1215.i.loopexit ] ; 5 uses
  %i.azd = icmp slt i32 %.0817.lcssa.i, %8
  br i1 %i.azd, label %.lr.ph1669.i.preheader, label %._crit_edge1670.i

.lr.ph1669.i.preheader:                           ; preds = %.preheader1215.i
  %i.aze = sub i32 %8, %.0817.lcssa.i
  %.neg1344 = add i32 %.0817.lcssa.i, 1
  %xtraiter1327 = and i32 %i.aze, 1
  %lcmp.mod1328.not = icmp eq i32 %xtraiter1327, 0
  br i1 %lcmp.mod1328.not, label %.lr.ph1669.i.prol.loopexit, label %.lr.ph1669.i.prol

.lr.ph1669.i.prol:                                ; preds = %.lr.ph1669.i.preheader
  %i.azf = load i8, ptr %.0819.lcssa.i, align 1, !tbaa !17
  %i.azg = sext i8 %i.azf to i16
  %i.azh = insertelement <8 x i16> poison, i16 %i.azg, i64 0
  %i.azi = shufflevector <8 x i16> %i.azh, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.azj = load <8 x i8>, ptr %.1826.lcssa.i, align 1, !tbaa !17
  %i.azk = sext <8 x i8> %i.azj to <8 x i16>
  %i.azl = mul <8 x i16> %i.azi, %i.azk
  %i.azm = sext <8 x i16> %i.azl to <8 x i32>
  %i.azn = add <8 x i32> %.lcssa.i, %i.azm        ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %.0819.lcssa.i, i64 1
  %i.azp = getelementptr inbounds nuw i8, ptr %.1826.lcssa.i, i64 8 ; 2 uses
  %i.azq = add nuw nsw i32 %.0817.lcssa.i, 1
  br label %.lr.ph1669.i.prol.loopexit

.lr.ph1669.i.prol.loopexit:                       ; preds = %.lr.ph1669.i.prol, %.lr.ph1669.i.preheader
  %.lcssa1057.unr = phi <8 x i32> [ poison, %.lr.ph1669.i.preheader ], [ %i.azn, %.lr.ph1669.i.prol ]
  %.lcssa1056.unr = phi ptr [ poison, %.lr.ph1669.i.preheader ], [ %i.azp, %.lr.ph1669.i.prol ]
  %.18181668.i.unr = phi i32 [ %.0817.lcssa.i, %.lr.ph1669.i.preheader ], [ %i.azq, %.lr.ph1669.i.prol ]
  %.18201667.i.unr = phi ptr [ %.0819.lcssa.i, %.lr.ph1669.i.preheader ], [ %i.azo, %.lr.ph1669.i.prol ]
  %.28271666.i.unr = phi ptr [ %.1826.lcssa.i, %.lr.ph1669.i.preheader ], [ %i.azp, %.lr.ph1669.i.prol ]
  %.unr1329 = phi <8 x i32> [ %.lcssa.i, %.lr.ph1669.i.preheader ], [ %i.azn, %.lr.ph1669.i.prol ]
  %i.azr = icmp eq i32 %8, %.neg1344
  br i1 %i.azr, label %._crit_edge1670.i, label %.lr.ph1669.i

.lr.ph1661.i:                                     ; preds = %.lr.ph1661.i.preheader, %.lr.ph1661.i
  %.08191658.i = phi ptr [ %i.ban, %.lr.ph1661.i ], [ %.31791.i, %.lr.ph1661.i.preheader ] ; 3 uses
  %.18261657.i = phi ptr [ %i.bao, %.lr.ph1661.i ], [ %.08251673.i, %.lr.ph1661.i.preheader ] ; 3 uses
  %i.azs = phi <8 x i32> [ %i.bam, %.lr.ph1661.i ], [ %i.ayr, %.lr.ph1661.i.preheader ]
  %niter1326 = phi i32 [ %niter1326.next.1, %.lr.ph1661.i ], [ 0, %.lr.ph1661.i.preheader ]
  %i.azt = load i16, ptr %.08191658.i, align 2, !tbaa !338
  %i.azu = insertelement <8 x i16> poison, i16 %i.azt, i64 0
  %i.azv = load <16 x i8>, ptr %.18261657.i, align 1, !tbaa !17
  %i.azw = bitcast <8 x i16> %i.azu to <16 x i8>
  %i.azx = shufflevector <16 x i8> %i.azw, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.azy = sext <16 x i8> %i.azx to <16 x i16>
  %i.azz = sext <16 x i8> %i.azv to <16 x i16>
  %i.baa = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.azy, <16 x i16> %i.azz)
  %i.bab = add <8 x i32> %i.baa, %i.azs
  %i.bac = getelementptr inbounds nuw i8, ptr %.08191658.i, i64 2
  %i.bad = getelementptr inbounds nuw i8, ptr %.18261657.i, i64 16
  %i.bae = load i16, ptr %i.bac, align 2, !tbaa !338
  %i.baf = insertelement <8 x i16> poison, i16 %i.bae, i64 0
  %i.bag = load <16 x i8>, ptr %i.bad, align 1, !tbaa !17
  %i.bah = bitcast <8 x i16> %i.baf to <16 x i8>
  %i.bai = shufflevector <16 x i8> %i.bah, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.baj = sext <16 x i8> %i.bai to <16 x i16>
  %i.bak = sext <16 x i8> %i.bag to <16 x i16>
  %i.bal = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.baj, <16 x i16> %i.bak)
  %i.bam = add <8 x i32> %i.bal, %i.bab           ; 3 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %.08191658.i, i64 4 ; 3 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %.18261657.i, i64 32 ; 2 uses
  %niter1326.next.1 = add nuw nsw i32 %niter1326, 2 ; 2 uses
  %niter1326.ncmp.1.not = icmp eq i32 %niter1326.next.1, %unroll_iter1325
  br i1 %niter1326.ncmp.1.not, label %.preheader1215.i.loopexit.unr-lcssa, label %.lr.ph1661.i, !llvm.loop !315

.lr.ph1669.i:                                     ; preds = %.lr.ph1669.i.prol.loopexit, %.lr.ph1669.i
  %.18181668.i = phi i32 [ %i.bbm, %.lr.ph1669.i ], [ %.18181668.i.unr, %.lr.ph1669.i.prol.loopexit ]
  %.18201667.i = phi ptr [ %i.bbk, %.lr.ph1669.i ], [ %.18201667.i.unr, %.lr.ph1669.i.prol.loopexit ] ; 3 uses
  %.28271666.i = phi ptr [ %i.bbl, %.lr.ph1669.i ], [ %.28271666.i.unr, %.lr.ph1669.i.prol.loopexit ] ; 3 uses
  %i.bap = phi <8 x i32> [ %i.bbj, %.lr.ph1669.i ], [ %.unr1329, %.lr.ph1669.i.prol.loopexit ]
  %i.baq = load i8, ptr %.18201667.i, align 1, !tbaa !17
  %i.bar = sext i8 %i.baq to i16
  %i.bas = insertelement <8 x i16> poison, i16 %i.bar, i64 0
  %i.bat = shufflevector <8 x i16> %i.bas, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bau = load <8 x i8>, ptr %.28271666.i, align 1, !tbaa !17
  %i.bav = sext <8 x i8> %i.bau to <8 x i16>
  %i.baw = mul <8 x i16> %i.bat, %i.bav
  %i.bax = sext <8 x i16> %i.baw to <8 x i32>
  %i.bay = add <8 x i32> %i.bap, %i.bax
  %i.baz = getelementptr inbounds nuw i8, ptr %.18201667.i, i64 1
  %i.bba = getelementptr inbounds nuw i8, ptr %.28271666.i, i64 8
  %i.bbb = load i8, ptr %i.baz, align 1, !tbaa !17
  %i.bbc = sext i8 %i.bbb to i16
  %i.bbd = insertelement <8 x i16> poison, i16 %i.bbc, i64 0
  %i.bbe = shufflevector <8 x i16> %i.bbd, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bbf = load <8 x i8>, ptr %i.bba, align 1, !tbaa !17
  %i.bbg = sext <8 x i8> %i.bbf to <8 x i16>
  %i.bbh = mul <8 x i16> %i.bbe, %i.bbg
  %i.bbi = sext <8 x i16> %i.bbh to <8 x i32>
  %i.bbj = add <8 x i32> %i.bay, %i.bbi           ; 2 uses
  %i.bbk = getelementptr inbounds nuw i8, ptr %.18201667.i, i64 2
  %i.bbl = getelementptr inbounds nuw i8, ptr %.28271666.i, i64 16 ; 2 uses
  %i.bbm = add nuw nsw i32 %.18181668.i, 2        ; 2 uses
  %exitcond2016.not.i.1 = icmp eq i32 %i.bbm, %8
  br i1 %exitcond2016.not.i.1, label %._crit_edge1670.i, label %.lr.ph1669.i, !llvm.loop !316

._crit_edge1670.i:                                ; preds = %.lr.ph1669.i.prol.loopexit, %.lr.ph1669.i, %.preheader1215.i
  %.lcssa1247.i = phi <8 x i32> [ %.lcssa.i, %.preheader1215.i ], [ %.lcssa1057.unr, %.lr.ph1669.i.prol.loopexit ], [ %i.bbj, %.lr.ph1669.i ]
  %.2827.lcssa.i = phi ptr [ %.1826.lcssa.i, %.preheader1215.i ], [ %.lcssa1056.unr, %.lr.ph1669.i.prol.loopexit ], [ %i.bbl, %.lr.ph1669.i ] ; 2 uses
  store <8 x i32> %.lcssa1247.i, ptr %.161675.i, align 1, !tbaa !17
  %i.bbn = getelementptr inbounds nuw i8, ptr %.161675.i, i64 32 ; 2 uses
  %i.bbo = add nuw nsw i32 %.08211674.i, 8        ; 2 uses
  %i.bbp = or disjoint i32 %i.bbo, 7
  %i.bbq = icmp slt i32 %i.bbp, %6
  br i1 %i.bbq, label %.lr.ph1676.i, label %.preheader1218.i, !llvm.loop !317

.preheader1217.i:                                 ; preds = %._crit_edge1693.i, %.preheader1218.i
  %.3828.lcssa.i = phi ptr [ %.0825.lcssa.i, %.preheader1218.i ], [ %.5830.lcssa.i, %._crit_edge1693.i ] ; 2 uses
  %.1822.lcssa.i = phi i32 [ %.0821.lcssa.i, %.preheader1218.i ], [ %i.bey, %._crit_edge1693.i ] ; 3 uses
  %.17.lcssa.i = phi ptr [ %.16.lcssa.i, %.preheader1218.i ], [ %i.bex, %._crit_edge1693.i ] ; 2 uses
  %i.bbr = or disjoint i32 %.1822.lcssa.i, 1
  %i.bbs = icmp slt i32 %i.bbr, %6
  br i1 %i.bbs, label %.lr.ph1753.i.preheader, label %.preheader1216.i

.lr.ph1753.i.preheader:                           ; preds = %.preheader1217.i
  %i.bbt = getelementptr i8, ptr %.31791.i, i64 %i.aes
  %i.bbu = getelementptr i8, ptr %.31791.i, i64 %i.aew
  br label %.lr.ph1753.i

.lr.ph1699.i:                                     ; preds = %.preheader1218.i, %._crit_edge1693.i
  %.171698.i = phi ptr [ %i.bex, %._crit_edge1693.i ], [ %.16.lcssa.i, %.preheader1218.i ] ; 3 uses
  %.18221697.i = phi i32 [ %i.bey, %._crit_edge1693.i ], [ %.0821.lcssa.i, %.preheader1218.i ]
  %.38281696.i = phi ptr [ %.5830.lcssa.i, %._crit_edge1693.i ], [ %.0825.lcssa.i, %.preheader1218.i ] ; 4 uses
  br i1 %i.adr, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph1699.i
  %i.bbv = load <4 x i32>, ptr %.171698.i, align 1, !tbaa !17
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph1699.i
  %i.bbw = phi <4 x i32> [ %i.bbv, %bb.af ], [ zeroinitializer, %.lr.ph1699.i ] ; 3 uses
  br i1 %i.ads, label %.lr.ph1684.i.preheader, label %.preheader1214.i

.lr.ph1684.i.preheader:                           ; preds = %bb.ag
  br i1 %i.aen, label %.lr.ph1684.i.epil.preheader, label %.lr.ph1684.i

.preheader1214.loopexit.i.unr-lcssa:              ; preds = %.lr.ph1684.i
  br i1 %lcmp.mod1333.not.not, label %.lr.ph1684.i.epil.preheader, label %.preheader1214.loopexit.i

.lr.ph1684.i.epil.preheader:                      ; preds = %.preheader1214.loopexit.i.unr-lcssa, %.lr.ph1684.i.preheader
  %.08051681.i.epil.init = phi ptr [ %.31791.i, %.lr.ph1684.i.preheader ], [ %i.bdt, %.preheader1214.loopexit.i.unr-lcssa ]
  %.48291680.i.epil.init = phi ptr [ %.38281696.i, %.lr.ph1684.i.preheader ], [ %i.bdu, %.preheader1214.loopexit.i.unr-lcssa ]
  %.epil.init1332 = phi <4 x i32> [ %i.bbw, %.lr.ph1684.i.preheader ], [ %i.bds, %.preheader1214.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1335)
  %i.bbx = load float, ptr %.08051681.i.epil.init, align 1, !tbaa !17
  %i.bby = insertelement <4 x float> poison, float %i.bbx, i64 0
  %i.bbz = load <8 x i8>, ptr %.48291680.i.epil.init, align 1, !tbaa !17
  %i.bca = bitcast <4 x float> %i.bby to <16 x i8>
  %i.bcb = sext <8 x i8> %i.bbz to <8 x i16>
  %i.bcc = shufflevector <16 x i8> %i.bca, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bcd = sext <8 x i8> %i.bcc to <8 x i16>
  %i.bce = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bcd, <8 x i16> %i.bcb)
  %i.bcf = add <4 x i32> %i.bce, %.epil.init1332
  br label %.preheader1214.loopexit.i

.preheader1214.loopexit.i:                        ; preds = %.preheader1214.loopexit.i.unr-lcssa, %.lr.ph1684.i.epil.preheader
  %.lcssa1059 = phi <4 x i32> [ %i.bds, %.preheader1214.loopexit.i.unr-lcssa ], [ %i.bcf, %.lr.ph1684.i.epil.preheader ]
  %i.bcg = getelementptr i8, ptr %.38281696.i, i64 %i.aeb
  %scevgep2017.i = getelementptr i8, ptr %i.bcg, i64 8
  br label %.preheader1214.i

.preheader1214.i:                                 ; preds = %.preheader1214.loopexit.i, %bb.ag
  %.lcssa1248.i = phi <4 x i32> [ %i.bbw, %bb.ag ], [ %.lcssa1059, %.preheader1214.loopexit.i ] ; 3 uses
  %.4829.lcssa.i = phi ptr [ %.38281696.i, %bb.ag ], [ %scevgep2017.i, %.preheader1214.loopexit.i ] ; 4 uses
  %.0805.lcssa.i = phi ptr [ %.31791.i, %bb.ag ], [ %indvars.iv2020.i, %.preheader1214.loopexit.i ] ; 3 uses
  %.0803.lcssa.i = phi i32 [ 0, %bb.ag ], [ %i.adx, %.preheader1214.loopexit.i ] ; 5 uses
  %i.bch = icmp slt i32 %.0803.lcssa.i, %8
  br i1 %i.bch, label %.lr.ph1692.i.preheader, label %._crit_edge1693.i

.lr.ph1692.i.preheader:                           ; preds = %.preheader1214.i
  %i.bci = sub i32 %8, %.0803.lcssa.i
  %.neg1345 = add i32 %.0803.lcssa.i, 1
  %xtraiter1338 = and i32 %i.bci, 1
  %lcmp.mod1339.not = icmp eq i32 %xtraiter1338, 0
  br i1 %lcmp.mod1339.not, label %.lr.ph1692.i.prol.loopexit, label %.lr.ph1692.i.prol

.lr.ph1692.i.prol:                                ; preds = %.lr.ph1692.i.preheader
  %i.bcj = load i8, ptr %.0805.lcssa.i, align 1, !tbaa !17
  %i.bck = sext i8 %i.bcj to i16
  %i.bcl = insertelement <8 x i16> poison, i16 %i.bck, i64 0
  %i.bcm = shufflevector <8 x i16> %i.bcl, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bcn = load <8 x i8>, ptr %.4829.lcssa.i, align 1, !tbaa !17
  %i.bco = sext <8 x i8> %i.bcn to <8 x i16>      ; 2 uses
  %i.bcp = mul <8 x i16> %i.bcm, %i.bco
  %i.bcq = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bcm, <8 x i16> %i.bco)
  %i.bcr = shufflevector <8 x i16> %i.bcp, <8 x i16> %i.bcq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bcs = bitcast <8 x i16> %i.bcr to <4 x i32>
  %i.bct = add <4 x i32> %.lcssa1248.i, %i.bcs    ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %.0805.lcssa.i, i64 1
  %i.bcv = getelementptr inbounds nuw i8, ptr %.4829.lcssa.i, i64 4 ; 2 uses
  %i.bcw = add nuw nsw i32 %.0803.lcssa.i, 1
  br label %.lr.ph1692.i.prol.loopexit

.lr.ph1692.i.prol.loopexit:                       ; preds = %.lr.ph1692.i.prol, %.lr.ph1692.i.preheader
  %.lcssa1061.unr = phi <4 x i32> [ poison, %.lr.ph1692.i.preheader ], [ %i.bct, %.lr.ph1692.i.prol ]
  %.lcssa1060.unr = phi ptr [ poison, %.lr.ph1692.i.preheader ], [ %i.bcv, %.lr.ph1692.i.prol ]
  %.18041691.i.unr = phi i32 [ %.0803.lcssa.i, %.lr.ph1692.i.preheader ], [ %i.bcw, %.lr.ph1692.i.prol ]
  %.18061690.i.unr = phi ptr [ %.0805.lcssa.i, %.lr.ph1692.i.preheader ], [ %i.bcu, %.lr.ph1692.i.prol ]
  %.58301689.i.unr = phi ptr [ %.4829.lcssa.i, %.lr.ph1692.i.preheader ], [ %i.bcv, %.lr.ph1692.i.prol ]
  %.unr1340 = phi <4 x i32> [ %.lcssa1248.i, %.lr.ph1692.i.preheader ], [ %i.bct, %.lr.ph1692.i.prol ]
  %i.bcx = icmp eq i32 %8, %.neg1345
  br i1 %i.bcx, label %._crit_edge1693.i, label %.lr.ph1692.i

.lr.ph1684.i:                                     ; preds = %.lr.ph1684.i.preheader, %.lr.ph1684.i
  %.08051681.i = phi ptr [ %i.bdt, %.lr.ph1684.i ], [ %.31791.i, %.lr.ph1684.i.preheader ] ; 3 uses
  %.48291680.i = phi ptr [ %i.bdu, %.lr.ph1684.i ], [ %.38281696.i, %.lr.ph1684.i.preheader ] ; 3 uses
  %i.bcy = phi <4 x i32> [ %i.bds, %.lr.ph1684.i ], [ %i.bbw, %.lr.ph1684.i.preheader ]
  %niter1337 = phi i32 [ %niter1337.next.1, %.lr.ph1684.i ], [ 0, %.lr.ph1684.i.preheader ]
  %i.bcz = load float, ptr %.08051681.i, align 1, !tbaa !17
  %i.bda = insertelement <4 x float> poison, float %i.bcz, i64 0
  %i.bdb = load <8 x i8>, ptr %.48291680.i, align 1, !tbaa !17
  %i.bdc = bitcast <4 x float> %i.bda to <16 x i8>
  %i.bdd = sext <8 x i8> %i.bdb to <8 x i16>
  %i.bde = shufflevector <16 x i8> %i.bdc, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bdf = sext <8 x i8> %i.bde to <8 x i16>
  %i.bdg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bdf, <8 x i16> %i.bdd)
  %i.bdh = add <4 x i32> %i.bdg, %i.bcy
  %i.bdi = getelementptr inbounds nuw i8, ptr %.08051681.i, i64 2
  %i.bdj = getelementptr inbounds nuw i8, ptr %.48291680.i, i64 8
  %i.bdk = load float, ptr %i.bdi, align 1, !tbaa !17
  %i.bdl = insertelement <4 x float> poison, float %i.bdk, i64 0
  %i.bdm = load <8 x i8>, ptr %i.bdj, align 1, !tbaa !17
  %i.bdn = bitcast <4 x float> %i.bdl to <16 x i8>
  %i.bdo = sext <8 x i8> %i.bdm to <8 x i16>
  %i.bdp = shufflevector <16 x i8> %i.bdn, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bdq = sext <8 x i8> %i.bdp to <8 x i16>
  %i.bdr = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bdq, <8 x i16> %i.bdo)
  %i.bds = add <4 x i32> %i.bdr, %i.bdh           ; 3 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %.08051681.i, i64 4 ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %.48291680.i, i64 16 ; 2 uses
  %niter1337.next.1 = add nuw nsw i32 %niter1337, 2 ; 2 uses
  %niter1337.ncmp.1.not = icmp eq i32 %niter1337.next.1, %unroll_iter1336
  br i1 %niter1337.ncmp.1.not, label %.preheader1214.loopexit.i.unr-lcssa, label %.lr.ph1684.i, !llvm.loop !318

.lr.ph1692.i:                                     ; preds = %.lr.ph1692.i.prol.loopexit, %.lr.ph1692.i
  %.18041691.i = phi i32 [ %i.bew, %.lr.ph1692.i ], [ %.18041691.i.unr, %.lr.ph1692.i.prol.loopexit ]
  %.18061690.i = phi ptr [ %i.beu, %.lr.ph1692.i ], [ %.18061690.i.unr, %.lr.ph1692.i.prol.loopexit ] ; 3 uses
  %.58301689.i = phi ptr [ %i.bev, %.lr.ph1692.i ], [ %.58301689.i.unr, %.lr.ph1692.i.prol.loopexit ] ; 3 uses
  %i.bdv = phi <4 x i32> [ %i.bet, %.lr.ph1692.i ], [ %.unr1340, %.lr.ph1692.i.prol.loopexit ]
  %i.bdw = load i8, ptr %.18061690.i, align 1, !tbaa !17
  %i.bdx = sext i8 %i.bdw to i16
  %i.bdy = insertelement <8 x i16> poison, i16 %i.bdx, i64 0
  %i.bdz = shufflevector <8 x i16> %i.bdy, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bea = load <8 x i8>, ptr %.58301689.i, align 1, !tbaa !17
  %i.beb = sext <8 x i8> %i.bea to <8 x i16>      ; 2 uses
  %i.bec = mul <8 x i16> %i.bdz, %i.beb
  %i.bed = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bdz, <8 x i16> %i.beb)
  %i.bee = shufflevector <8 x i16> %i.bec, <8 x i16> %i.bed, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bef = bitcast <8 x i16> %i.bee to <4 x i32>
  %i.beg = add <4 x i32> %i.bdv, %i.bef
  %i.beh = getelementptr inbounds nuw i8, ptr %.18061690.i, i64 1
  %i.bei = getelementptr inbounds nuw i8, ptr %.58301689.i, i64 4
  %i.bej = load i8, ptr %i.beh, align 1, !tbaa !17
  %i.bek = sext i8 %i.bej to i16
  %i.bel = insertelement <8 x i16> poison, i16 %i.bek, i64 0
  %i.bem = shufflevector <8 x i16> %i.bel, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ben = load <8 x i8>, ptr %i.bei, align 1, !tbaa !17
  %i.beo = sext <8 x i8> %i.ben to <8 x i16>      ; 2 uses
  %i.bep = mul <8 x i16> %i.bem, %i.beo
  %i.beq = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bem, <8 x i16> %i.beo)
  %i.ber = shufflevector <8 x i16> %i.bep, <8 x i16> %i.beq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bes = bitcast <8 x i16> %i.ber to <4 x i32>
  %i.bet = add <4 x i32> %i.beg, %i.bes           ; 2 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %.18061690.i, i64 2
  %i.bev = getelementptr inbounds nuw i8, ptr %.58301689.i, i64 8 ; 2 uses
  %i.bew = add nuw nsw i32 %.18041691.i, 2        ; 2 uses
  %exitcond2018.not.i.1 = icmp eq i32 %i.bew, %8
  br i1 %exitcond2018.not.i.1, label %._crit_edge1693.i, label %.lr.ph1692.i, !llvm.loop !319

._crit_edge1693.i:                                ; preds = %.lr.ph1692.i.prol.loopexit, %.lr.ph1692.i, %.preheader1214.i
  %.lcssa1249.i = phi <4 x i32> [ %.lcssa1248.i, %.preheader1214.i ], [ %.lcssa1061.unr, %.lr.ph1692.i.prol.loopexit ], [ %i.bet, %.lr.ph1692.i ]
  %.5830.lcssa.i = phi ptr [ %.4829.lcssa.i, %.preheader1214.i ], [ %.lcssa1060.unr, %.lr.ph1692.i.prol.loopexit ], [ %i.bev, %.lr.ph1692.i ] ; 2 uses
  store <4 x i32> %.lcssa1249.i, ptr %.171698.i, align 1, !tbaa !17
  %i.bex = getelementptr inbounds nuw i8, ptr %.171698.i, i64 16 ; 2 uses
  %i.bey = add nuw nsw i32 %.18221697.i, 4        ; 3 uses
  %i.bez = or disjoint i32 %i.bey, 3
  %i.bfa = icmp slt i32 %i.bez, %6
  br i1 %i.bfa, label %.lr.ph1699.i, label %.preheader1217.i, !llvm.loop !320

.preheader1216.i:                                 ; preds = %._crit_edge1746.i, %.preheader1217.i
  %.6831.lcssa.i = phi ptr [ %.3828.lcssa.i, %.preheader1217.i ], [ %.9834.lcssa.i, %._crit_edge1746.i ]
  %.2823.lcssa.i = phi i32 [ %.1822.lcssa.i, %.preheader1217.i ], [ %i.bjg, %._crit_edge1746.i ] ; 2 uses
  %.18.lcssa.i = phi ptr [ %.17.lcssa.i, %.preheader1217.i ], [ %i.bjf, %._crit_edge1746.i ] ; 2 uses
  %i.bfb = icmp slt i32 %.2823.lcssa.i, %6
  br i1 %i.bfb, label %.lr.ph1786.i.preheader, label %._crit_edge1787.i

.lr.ph1786.i.preheader:                           ; preds = %.preheader1216.i
  %i.bfc = getelementptr i8, ptr %.31791.i, i64 %i.afd ; 2 uses
  br label %.lr.ph1786.i

.lr.ph1753.i:                                     ; preds = %.lr.ph1753.i.preheader, %._crit_edge1746.i
  %.181752.i = phi ptr [ %i.bjf, %._crit_edge1746.i ], [ %.17.lcssa.i, %.lr.ph1753.i.preheader ] ; 5 uses
  %.28231751.i = phi i32 [ %i.bjg, %._crit_edge1746.i ], [ %.1822.lcssa.i, %.lr.ph1753.i.preheader ]
  %.68311750.i = phi ptr [ %.9834.lcssa.i, %._crit_edge1746.i ], [ %.3828.lcssa.i, %.lr.ph1753.i.preheader ] ; 8 uses
  br i1 %i.adr, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph1753.i
  %i.bfd = load i32, ptr %.181752.i, align 4, !tbaa !28
  %i.bfe = getelementptr inbounds nuw i8, ptr %.181752.i, i64 4
  %i.bff = load i32, ptr %i.bfe, align 4, !tbaa !28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph1753.i
  %.0773.i = phi i32 [ %i.bfd, %bb.ah ], [ 0, %.lr.ph1753.i ] ; 4 uses
  %.0770.i = phi i32 [ %i.bff, %bb.ah ], [ 0, %.lr.ph1753.i ] ; 4 uses
  br i1 %i.ads, label %iter.check1023, label %.preheader.i

iter.check1023:                                   ; preds = %bb.ai
  br i1 %min.iters.check981, label %.lr.ph1709.i.preheader, label %vector.main.loop.iter.check982

vector.main.loop.iter.check982:                   ; preds = %iter.check1023
  br i1 %min.iters.check983, label %vec.epilog.ph1027, label %vector.ph984

vector.ph984:                                     ; preds = %vector.main.loop.iter.check982
  %i.bfg = getelementptr i8, ptr %.68311750.i, i64 %i.aet
  %i.bfh = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0770.i, i64 0
  %i.bfi = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0773.i, i64 0
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %vector.ph984
  %index987 = phi i64 [ 0, %vector.ph984 ], [ %index.next1012, %vector.body986 ] ; 3 uses
  %vec.phi988 = phi <8 x i32> [ %i.bfh, %vector.ph984 ], [ %i.bgn, %vector.body986 ]
  %vec.phi989 = phi <8 x i32> [ zeroinitializer, %vector.ph984 ], [ %i.bgo, %vector.body986 ]
  %vec.phi990 = phi <8 x i32> [ %i.bfi, %vector.ph984 ], [ %i.bgb, %vector.body986 ]
  %vec.phi991 = phi <8 x i32> [ zeroinitializer, %vector.ph984 ], [ %i.bgc, %vector.body986 ]
  %i.bfj = shl i64 %index987, 1                   ; 2 uses
  %next.gep992 = getelementptr i8, ptr %.31791.i, i64 %i.bfj
  %i.bfk = getelementptr i8, ptr %.31791.i, i64 %i.bfj
  %next.gep993 = getelementptr i8, ptr %i.bfk, i64 16
  %i.bfl = shl i64 %index987, 2                   ; 2 uses
  %next.gep994 = getelementptr i8, ptr %.68311750.i, i64 %i.bfl
  %i.bfm = getelementptr i8, ptr %.68311750.i, i64 %i.bfl
  %next.gep995 = getelementptr i8, ptr %i.bfm, i64 32
  %wide.vec996 = load <16 x i8>, ptr %next.gep992, align 1, !tbaa !17 ; 2 uses
  %strided.vec997 = shufflevector <16 x i8> %wide.vec996, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec998 = shufflevector <16 x i8> %wide.vec996, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec999 = load <16 x i8>, ptr %next.gep993, align 1, !tbaa !17 ; 2 uses
  %strided.vec1000 = shufflevector <16 x i8> %wide.vec999, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1001 = shufflevector <16 x i8> %wide.vec999, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.bfn = sext <8 x i8> %strided.vec997 to <8 x i32> ; 2 uses
  %i.bfo = sext <8 x i8> %strided.vec1000 to <8 x i32> ; 2 uses
  %wide.vec1002 = load <32 x i8>, ptr %next.gep994, align 1, !tbaa !17 ; 4 uses
  %strided.vec1003 = shufflevector <32 x i8> %wide.vec1002, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1004 = shufflevector <32 x i8> %wide.vec1002, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1005 = shufflevector <32 x i8> %wide.vec1002, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1006 = shufflevector <32 x i8> %wide.vec1002, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec1007 = load <32 x i8>, ptr %next.gep995, align 1, !tbaa !17 ; 4 uses
  %strided.vec1008 = shufflevector <32 x i8> %wide.vec1007, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1009 = shufflevector <32 x i8> %wide.vec1007, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1010 = shufflevector <32 x i8> %wide.vec1007, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1011 = shufflevector <32 x i8> %wide.vec1007, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bfp = sext <8 x i8> %strided.vec1003 to <8 x i32>
  %i.bfq = sext <8 x i8> %strided.vec1008 to <8 x i32>
  %i.bfr = mul nsw <8 x i32> %i.bfp, %i.bfn
  %i.bfs = mul nsw <8 x i32> %i.bfq, %i.bfo
  %i.bft = add <8 x i32> %i.bfr, %vec.phi990
  %i.bfu = add <8 x i32> %i.bfs, %vec.phi991
  %i.bfv = sext <8 x i8> %strided.vec998 to <8 x i32> ; 2 uses
  %i.bfw = sext <8 x i8> %strided.vec1001 to <8 x i32> ; 2 uses
  %i.bfx = sext <8 x i8> %strided.vec1004 to <8 x i32>
  %i.bfy = sext <8 x i8> %strided.vec1009 to <8 x i32>
  %i.bfz = mul nsw <8 x i32> %i.bfx, %i.bfv
  %i.bga = mul nsw <8 x i32> %i.bfy, %i.bfw
  %i.bgb = add <8 x i32> %i.bft, %i.bfz           ; 2 uses
  %i.bgc = add <8 x i32> %i.bfu, %i.bga           ; 2 uses
  %i.bgd = sext <8 x i8> %strided.vec1005 to <8 x i32>
  %i.bge = sext <8 x i8> %strided.vec1010 to <8 x i32>
  %i.bgf = mul nsw <8 x i32> %i.bgd, %i.bfn
  %i.bgg = mul nsw <8 x i32> %i.bge, %i.bfo
  %i.bgh = add <8 x i32> %i.bgf, %vec.phi988
  %i.bgi = add <8 x i32> %i.bgg, %vec.phi989
  %i.bgj = sext <8 x i8> %strided.vec1006 to <8 x i32>
  %i.bgk = sext <8 x i8> %strided.vec1011 to <8 x i32>
  %i.bgl = mul nsw <8 x i32> %i.bgj, %i.bfv
  %i.bgm = mul nsw <8 x i32> %i.bgk, %i.bfw
  %i.bgn = add <8 x i32> %i.bgh, %i.bgl           ; 2 uses
  %i.bgo = add <8 x i32> %i.bgi, %i.bgm           ; 2 uses
  %index.next1012 = add nuw i64 %index987, 16     ; 2 uses
  %i.bgp = icmp eq i64 %index.next1012, %n.vec985
  br i1 %i.bgp, label %middle.block1013, label %vector.body986, !llvm.loop !321

middle.block1013:                                 ; preds = %vector.body986
  %bin.rdx1014 = add <8 x i32> %i.bgo, %i.bgn
  %i.bgq = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1014) ; 3 uses
  %bin.rdx1015 = add <8 x i32> %i.bgc, %i.bgb
  %i.bgr = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1015) ; 3 uses
  br i1 %cmp.n1016, label %.preheader.loopexit.i, label %vec.epilog.iter.check1025

vec.epilog.iter.check1025:                        ; preds = %middle.block1013
  br i1 %min.epilog.iters.check1026, label %.lr.ph1709.i.preheader, label %vec.epilog.ph1027, !prof !339

vec.epilog.ph1027:                                ; preds = %vector.main.loop.iter.check982, %vec.epilog.iter.check1025
  %vec.epilog.resume.val1017 = phi i64 [ %n.vec985, %vec.epilog.iter.check1025 ], [ 0, %vector.main.loop.iter.check982 ]
  %bc.merge.rdx1020 = phi i32 [ %i.bgq, %vec.epilog.iter.check1025 ], [ %.0770.i, %vector.main.loop.iter.check982 ]
  %bc.merge.rdx1021 = phi i32 [ %i.bgr, %vec.epilog.iter.check1025 ], [ %.0773.i, %vector.main.loop.iter.check982 ]
  %i.bgs = getelementptr i8, ptr %.68311750.i, i64 %i.aex
  %i.bgt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1020, i64 0
  %i.bgu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1021, i64 0
  br label %vec.epilog.vector.body1029

vec.epilog.vector.body1029:                       ; preds = %vec.epilog.vector.body1029, %vec.epilog.ph1027
  %index1030 = phi i64 [ %vec.epilog.resume.val1017, %vec.epilog.ph1027 ], [ %index.next1043, %vec.epilog.vector.body1029 ] ; 3 uses
  %vec.phi1031 = phi <4 x i32> [ %i.bgt, %vec.epilog.ph1027 ], [ %i.bhk, %vec.epilog.vector.body1029 ]
  %vec.phi1032 = phi <4 x i32> [ %i.bgu, %vec.epilog.ph1027 ], [ %i.bhe, %vec.epilog.vector.body1029 ]
  %i.bgv = shl i64 %index1030, 1
  %next.gep1033 = getelementptr i8, ptr %.31791.i, i64 %i.bgv
  %i.bgw = shl i64 %index1030, 2
  %next.gep1034 = getelementptr i8, ptr %.68311750.i, i64 %i.bgw
  %wide.vec1035 = load <8 x i8>, ptr %next.gep1033, align 1, !tbaa !17 ; 2 uses
  %strided.vec1036 = shufflevector <8 x i8> %wide.vec1035, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1037 = shufflevector <8 x i8> %wide.vec1035, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bgx = sext <4 x i8> %strided.vec1036 to <4 x i32> ; 2 uses
  %wide.vec1038 = load <16 x i8>, ptr %next.gep1034, align 1, !tbaa !17 ; 4 uses
  %strided.vec1039 = shufflevector <16 x i8> %wide.vec1038, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1040 = shufflevector <16 x i8> %wide.vec1038, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1041 = shufflevector <16 x i8> %wide.vec1038, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec1042 = shufflevector <16 x i8> %wide.vec1038, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.bgy = sext <4 x i8> %strided.vec1039 to <4 x i32>
  %i.bgz = mul nsw <4 x i32> %i.bgy, %i.bgx
  %i.bha = add <4 x i32> %i.bgz, %vec.phi1032
  %i.bhb = sext <4 x i8> %strided.vec1037 to <4 x i32> ; 2 uses
  %i.bhc = sext <4 x i8> %strided.vec1040 to <4 x i32>
  %i.bhd = mul nsw <4 x i32> %i.bhc, %i.bhb
  %i.bhe = add <4 x i32> %i.bha, %i.bhd           ; 2 uses
  %i.bhf = sext <4 x i8> %strided.vec1041 to <4 x i32>
  %i.bhg = mul nsw <4 x i32> %i.bhf, %i.bgx
  %i.bhh = add <4 x i32> %i.bhg, %vec.phi1031
  %i.bhi = sext <4 x i8> %strided.vec1042 to <4 x i32>
  %i.bhj = mul nsw <4 x i32> %i.bhi, %i.bhb
  %i.bhk = add <4 x i32> %i.bhh, %i.bhj           ; 2 uses
  %index.next1043 = add nuw i64 %index1030, 4     ; 2 uses
  %i.bhl = icmp eq i64 %index.next1043, %n.vec1028
  br i1 %i.bhl, label %vec.epilog.middle.block1044, label %vec.epilog.vector.body1029, !llvm.loop !322

vec.epilog.middle.block1044:                      ; preds = %vec.epilog.vector.body1029
  %i.bhm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bhk) ; 2 uses
  %i.bhn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bhe) ; 2 uses
  br i1 %cmp.n1045, label %.preheader.loopexit.i, label %.lr.ph1709.i.preheader

.lr.ph1709.i.preheader:                           ; preds = %iter.check1023, %vec.epilog.iter.check1025, %vec.epilog.middle.block1044
  %.07651707.i.ph = phi i32 [ 0, %iter.check1023 ], [ %i.aer, %vec.epilog.iter.check1025 ], [ %i.aev, %vec.epilog.middle.block1044 ]
  %.07671706.i.ph = phi ptr [ %.31791.i, %iter.check1023 ], [ %i.bbt, %vec.epilog.iter.check1025 ], [ %i.bbu, %vec.epilog.middle.block1044 ]
  %.17711705.i.ph = phi i32 [ %.0770.i, %iter.check1023 ], [ %i.bgq, %vec.epilog.iter.check1025 ], [ %i.bhm, %vec.epilog.middle.block1044 ]
  %.17741704.i.ph = phi i32 [ %.0773.i, %iter.check1023 ], [ %i.bgr, %vec.epilog.iter.check1025 ], [ %i.bhn, %vec.epilog.middle.block1044 ]
  %.78321703.i.ph = phi ptr [ %.68311750.i, %iter.check1023 ], [ %i.bfg, %vec.epilog.iter.check1025 ], [ %i.bgs, %vec.epilog.middle.block1044 ]
  br label %.lr.ph1709.i.a

.preheader.loopexit.i:                            ; preds = %.lr.ph1709.i.a, %vec.epilog.middle.block1044, %middle.block1013
  %.lcssa500 = phi i32 [ %i.bhn, %vec.epilog.middle.block1044 ], [ %i.bgr, %middle.block1013 ], [ %251, %.lr.ph1709.i.a ]
  %.lcssa499 = phi i32 [ %i.bhm, %vec.epilog.middle.block1044 ], [ %i.bgq, %middle.block1013 ], [ %259, %.lr.ph1709.i.a ]
  %i.bho = getelementptr i8, ptr %.68311750.i, i64 %i.aee
  %scevgep2022.i = getelementptr i8, ptr %i.bho, i64 4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.ai
  %.7832.lcssa.i = phi ptr [ %.68311750.i, %bb.ai ], [ %scevgep2022.i, %.preheader.loopexit.i ] ; 11 uses
  %.1774.lcssa.i = phi i32 [ %.0773.i, %bb.ai ], [ %.lcssa500, %.preheader.loopexit.i ]
  %.1771.lcssa.i = phi i32 [ %.0770.i, %bb.ai ], [ %.lcssa499, %.preheader.loopexit.i ]
  %.0767.lcssa.i = phi ptr [ %.31791.i, %bb.ai ], [ %indvars.iv2020.i, %.preheader.loopexit.i ] ; 4 uses
  %.0765.lcssa.i = phi i32 [ 0, %bb.ai ], [ %i.adx, %.preheader.loopexit.i ] ; 6 uses
  %9 = add nuw nsw i32 %.0765.lcssa.i, 3
  %i.bhp = icmp slt i32 %9, %8
  br i1 %i.bhp, label %.lr.ph1726.i.preheader, label %._crit_edge1727.i

.lr.ph1726.i.preheader:                           ; preds = %.preheader.i
  %10 = add i32 %.0765.lcssa.i, 7
  %11 = tail call i32 @llvm.smax.i32(i32 %8, i32 %10)
  %i.bhq = add i32 %11, -4
  %12 = sub i32 %i.bhq, %.0765.lcssa.i            ; 2 uses
  %13 = lshr i32 %12, 2
  %narrow = add nuw nsw i32 %13, 1
  %14 = zext nneg i32 %narrow to i64              ; 2 uses
  %min.iters.check939 = icmp ult i32 %12, 28
  br i1 %min.iters.check939, label %.lr.ph1726.i.preheader1053, label %vector.ph940

vector.ph940:                                     ; preds = %.lr.ph1726.i.preheader
  %n.vec941 = and i64 %14, 2147483640             ; 5 uses
  %i.bhr = trunc nuw nsw i64 %n.vec941 to i32
  %15 = shl i32 %i.bhr, 2
  %16 = add i32 %.0765.lcssa.i, %15               ; 2 uses
  %i.bhs = shl nuw nsw i64 %n.vec941, 2
  %i.bht = getelementptr i8, ptr %.0767.lcssa.i, i64 %i.bhs ; 2 uses
  %17 = shl nuw nsw i64 %n.vec941, 3
  %18 = getelementptr i8, ptr %.7832.lcssa.i, i64 %17 ; 2 uses
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph940
  %index943 = phi i64 [ 0, %vector.ph940 ], [ %index.next966, %vector.body942 ] ; 3 uses
  %vec.phi944 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bij, %vector.body942 ]
  %vec.phi945 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %172, %vector.body942 ]
  %vec.phi946 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bid, %vector.body942 ]
  %vec.phi947 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %69, %vector.body942 ]
  %vec.phi948 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bii, %vector.body942 ]
  %vec.phi949 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bie, %vector.body942 ]
  %vec.phi950 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %94, %vector.body942 ]
  %vec.phi951 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %42, %vector.body942 ]
  %19 = shl i64 %index943, 2
  %next.gep952 = getelementptr i8, ptr %.0767.lcssa.i, i64 %19
  %i.bhu = shl i64 %index943, 3                   ; 8 uses
  %next.gep953 = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %20 = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %next.gep954 = getelementptr i8, ptr %20, i64 8
  %21 = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %next.gep955 = getelementptr i8, ptr %21, i64 16
  %22 = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %next.gep956 = getelementptr i8, ptr %22, i64 24
  %23 = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %next.gep957 = getelementptr i8, ptr %23, i64 32
  %24 = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %next.gep958 = getelementptr i8, ptr %24, i64 40
  %i.bhv = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %next.gep959 = getelementptr i8, ptr %i.bhv, i64 48
  %i.bhw = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %next.gep960 = getelementptr i8, ptr %i.bhw, i64 56
  %wide.vec961 = load <32 x i8>, ptr %next.gep952, align 1, !tbaa !17 ; 4 uses
  %strided.vec962 = shufflevector <32 x i8> %wide.vec961, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec963 = shufflevector <32 x i8> %wide.vec961, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec964 = shufflevector <32 x i8> %wide.vec961, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec965 = shufflevector <32 x i8> %wide.vec961, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bhx = sext <8 x i8> %strided.vec962 to <8 x i32> ; 2 uses
  %25 = load i8, ptr %next.gep953, align 1, !tbaa !17
  %26 = load i8, ptr %next.gep954, align 1, !tbaa !17
  %27 = load i8, ptr %next.gep955, align 1, !tbaa !17
  %28 = load i8, ptr %next.gep956, align 1, !tbaa !17
  %29 = load i8, ptr %next.gep957, align 1, !tbaa !17
  %30 = load i8, ptr %next.gep958, align 1, !tbaa !17
  %31 = load i8, ptr %next.gep959, align 1, !tbaa !17
  %32 = load i8, ptr %next.gep960, align 1, !tbaa !17
  %33 = insertelement <8 x i8> poison, i8 %25, i64 0
  %34 = insertelement <8 x i8> %33, i8 %26, i64 1
  %35 = insertelement <8 x i8> %34, i8 %27, i64 2
  %36 = insertelement <8 x i8> %35, i8 %28, i64 3
  %37 = insertelement <8 x i8> %36, i8 %29, i64 4
  %38 = insertelement <8 x i8> %37, i8 %30, i64 5
  %39 = insertelement <8 x i8> %38, i8 %31, i64 6
  %40 = insertelement <8 x i8> %39, i8 %32, i64 7
  %i.bhy = sext <8 x i8> %40 to <8 x i32>
  %41 = mul nsw <8 x i32> %i.bhy, %i.bhx
  %42 = add <8 x i32> %41, %vec.phi951            ; 2 uses
  %43 = getelementptr inbounds nuw i8, ptr %next.gep953, i64 1
  %44 = getelementptr i8, ptr %20, i64 9
  %45 = getelementptr i8, ptr %21, i64 17
  %46 = getelementptr i8, ptr %22, i64 25
  %47 = getelementptr i8, ptr %23, i64 33
  %48 = getelementptr i8, ptr %24, i64 41
  %49 = getelementptr i8, ptr %i.bhv, i64 49
  %50 = getelementptr i8, ptr %i.bhw, i64 57
  %51 = load i8, ptr %43, align 1, !tbaa !17
  %52 = load i8, ptr %44, align 1, !tbaa !17
  %53 = load i8, ptr %45, align 1, !tbaa !17
  %54 = load i8, ptr %46, align 1, !tbaa !17
  %55 = load i8, ptr %47, align 1, !tbaa !17
  %56 = load i8, ptr %48, align 1, !tbaa !17
  %57 = load i8, ptr %49, align 1, !tbaa !17
  %58 = load i8, ptr %50, align 1, !tbaa !17
  %59 = insertelement <8 x i8> poison, i8 %51, i64 0
  %60 = insertelement <8 x i8> %59, i8 %52, i64 1
  %61 = insertelement <8 x i8> %60, i8 %53, i64 2
  %62 = insertelement <8 x i8> %61, i8 %54, i64 3
  %63 = insertelement <8 x i8> %62, i8 %55, i64 4
  %64 = insertelement <8 x i8> %63, i8 %56, i64 5
  %65 = insertelement <8 x i8> %64, i8 %57, i64 6
  %66 = insertelement <8 x i8> %65, i8 %58, i64 7
  %67 = sext <8 x i8> %66 to <8 x i32>
  %68 = mul nsw <8 x i32> %67, %i.bhx
  %69 = add <8 x i32> %68, %vec.phi947            ; 2 uses
  %i.bhz = sext <8 x i8> %strided.vec963 to <8 x i32> ; 2 uses
  %70 = getelementptr inbounds nuw i8, ptr %next.gep953, i64 2
  %71 = getelementptr i8, ptr %20, i64 10
  %72 = getelementptr i8, ptr %21, i64 18
  %73 = getelementptr i8, ptr %22, i64 26
  %74 = getelementptr i8, ptr %23, i64 34
  %75 = getelementptr i8, ptr %24, i64 42
  %76 = getelementptr i8, ptr %i.bhv, i64 50
  %77 = getelementptr i8, ptr %i.bhw, i64 58
  %78 = load i8, ptr %70, align 1, !tbaa !17
  %79 = load i8, ptr %71, align 1, !tbaa !17
  %80 = load i8, ptr %72, align 1, !tbaa !17
  %81 = load i8, ptr %73, align 1, !tbaa !17
  %82 = load i8, ptr %74, align 1, !tbaa !17
  %83 = load i8, ptr %75, align 1, !tbaa !17
  %84 = load i8, ptr %76, align 1, !tbaa !17
  %85 = load i8, ptr %77, align 1, !tbaa !17
  %86 = insertelement <8 x i8> poison, i8 %78, i64 0
  %87 = insertelement <8 x i8> %86, i8 %79, i64 1
  %88 = insertelement <8 x i8> %87, i8 %80, i64 2
  %89 = insertelement <8 x i8> %88, i8 %81, i64 3
  %90 = insertelement <8 x i8> %89, i8 %82, i64 4
  %91 = insertelement <8 x i8> %90, i8 %83, i64 5
  %92 = insertelement <8 x i8> %91, i8 %84, i64 6
  %93 = insertelement <8 x i8> %92, i8 %85, i64 7
  %i.bia = sext <8 x i8> %93 to <8 x i32>
  %i.bib = mul nsw <8 x i32> %i.bia, %i.bhz
  %94 = add <8 x i32> %i.bib, %vec.phi950         ; 2 uses
  %95 = getelementptr inbounds nuw i8, ptr %next.gep953, i64 3
  %96 = getelementptr i8, ptr %20, i64 11
  %97 = getelementptr i8, ptr %21, i64 19
  %98 = getelementptr i8, ptr %22, i64 27
  %99 = getelementptr i8, ptr %23, i64 35
  %100 = getelementptr i8, ptr %24, i64 43
  %101 = getelementptr i8, ptr %i.bhv, i64 51
  %102 = getelementptr i8, ptr %i.bhw, i64 59
  %103 = load i8, ptr %95, align 1, !tbaa !17
  %104 = load i8, ptr %96, align 1, !tbaa !17
  %105 = load i8, ptr %97, align 1, !tbaa !17
  %106 = load i8, ptr %98, align 1, !tbaa !17
  %107 = load i8, ptr %99, align 1, !tbaa !17
  %108 = load i8, ptr %100, align 1, !tbaa !17
  %109 = load i8, ptr %101, align 1, !tbaa !17
  %110 = load i8, ptr %102, align 1, !tbaa !17
  %111 = insertelement <8 x i8> poison, i8 %103, i64 0
  %112 = insertelement <8 x i8> %111, i8 %104, i64 1
  %113 = insertelement <8 x i8> %112, i8 %105, i64 2
  %114 = insertelement <8 x i8> %113, i8 %106, i64 3
  %115 = insertelement <8 x i8> %114, i8 %107, i64 4
  %116 = insertelement <8 x i8> %115, i8 %108, i64 5
  %117 = insertelement <8 x i8> %116, i8 %109, i64 6
  %118 = insertelement <8 x i8> %117, i8 %110, i64 7
  %119 = sext <8 x i8> %118 to <8 x i32>
  %i.bic = mul nsw <8 x i32> %119, %i.bhz
  %i.bid = add <8 x i32> %i.bic, %vec.phi946      ; 2 uses
  %120 = sext <8 x i8> %strided.vec964 to <8 x i32> ; 2 uses
  %121 = getelementptr inbounds nuw i8, ptr %next.gep953, i64 4
  %122 = getelementptr i8, ptr %20, i64 12
  %123 = getelementptr i8, ptr %21, i64 20
  %124 = getelementptr i8, ptr %22, i64 28
  %125 = getelementptr i8, ptr %23, i64 36
  %126 = getelementptr i8, ptr %24, i64 44
  %127 = getelementptr i8, ptr %i.bhv, i64 52
  %128 = getelementptr i8, ptr %i.bhw, i64 60
  %129 = load i8, ptr %121, align 1, !tbaa !17
  %130 = load i8, ptr %122, align 1, !tbaa !17
  %131 = load i8, ptr %123, align 1, !tbaa !17
  %132 = load i8, ptr %124, align 1, !tbaa !17
  %133 = load i8, ptr %125, align 1, !tbaa !17
  %134 = load i8, ptr %126, align 1, !tbaa !17
  %135 = load i8, ptr %127, align 1, !tbaa !17
  %136 = load i8, ptr %128, align 1, !tbaa !17
  %137 = insertelement <8 x i8> poison, i8 %129, i64 0
  %138 = insertelement <8 x i8> %137, i8 %130, i64 1
  %139 = insertelement <8 x i8> %138, i8 %131, i64 2
  %140 = insertelement <8 x i8> %139, i8 %132, i64 3
  %141 = insertelement <8 x i8> %140, i8 %133, i64 4
  %142 = insertelement <8 x i8> %141, i8 %134, i64 5
  %143 = insertelement <8 x i8> %142, i8 %135, i64 6
  %144 = insertelement <8 x i8> %143, i8 %136, i64 7
  %145 = sext <8 x i8> %144 to <8 x i32>
  %146 = mul nsw <8 x i32> %145, %120
  %i.bie = add <8 x i32> %146, %vec.phi949        ; 2 uses
  %147 = getelementptr inbounds nuw i8, ptr %next.gep953, i64 5
  %148 = getelementptr i8, ptr %20, i64 13
  %149 = getelementptr i8, ptr %21, i64 21
  %150 = getelementptr i8, ptr %22, i64 29
  %151 = getelementptr i8, ptr %23, i64 37
  %152 = getelementptr i8, ptr %24, i64 45
  %153 = getelementptr i8, ptr %i.bhv, i64 53
  %154 = getelementptr i8, ptr %i.bhw, i64 61
  %155 = load i8, ptr %147, align 1, !tbaa !17
  %156 = load i8, ptr %148, align 1, !tbaa !17
  %157 = load i8, ptr %149, align 1, !tbaa !17
  %158 = load i8, ptr %150, align 1, !tbaa !17
  %159 = load i8, ptr %151, align 1, !tbaa !17
  %160 = load i8, ptr %152, align 1, !tbaa !17
  %161 = load i8, ptr %153, align 1, !tbaa !17
  %162 = load i8, ptr %154, align 1, !tbaa !17
  %163 = insertelement <8 x i8> poison, i8 %155, i64 0
  %164 = insertelement <8 x i8> %163, i8 %156, i64 1
  %165 = insertelement <8 x i8> %164, i8 %157, i64 2
  %166 = insertelement <8 x i8> %165, i8 %158, i64 3
  %167 = insertelement <8 x i8> %166, i8 %159, i64 4
  %168 = insertelement <8 x i8> %167, i8 %160, i64 5
  %169 = insertelement <8 x i8> %168, i8 %161, i64 6
  %170 = insertelement <8 x i8> %169, i8 %162, i64 7
  %i.bif = sext <8 x i8> %170 to <8 x i32>
  %171 = mul nsw <8 x i32> %i.bif, %120
  %172 = add <8 x i32> %171, %vec.phi945          ; 2 uses
  %i.big = sext <8 x i8> %strided.vec965 to <8 x i32> ; 2 uses
  %173 = getelementptr inbounds nuw i8, ptr %next.gep953, i64 6
  %174 = getelementptr i8, ptr %20, i64 14
  %175 = getelementptr i8, ptr %21, i64 22
  %176 = getelementptr i8, ptr %22, i64 30
  %177 = getelementptr i8, ptr %23, i64 38
  %178 = getelementptr i8, ptr %24, i64 46
  %179 = getelementptr i8, ptr %i.bhv, i64 54
  %180 = getelementptr i8, ptr %i.bhw, i64 62
  %181 = load i8, ptr %173, align 1, !tbaa !17
  %182 = load i8, ptr %174, align 1, !tbaa !17
  %183 = load i8, ptr %175, align 1, !tbaa !17
  %184 = load i8, ptr %176, align 1, !tbaa !17
  %185 = load i8, ptr %177, align 1, !tbaa !17
  %186 = load i8, ptr %178, align 1, !tbaa !17
  %187 = load i8, ptr %179, align 1, !tbaa !17
  %188 = load i8, ptr %180, align 1, !tbaa !17
  %189 = insertelement <8 x i8> poison, i8 %181, i64 0
  %190 = insertelement <8 x i8> %189, i8 %182, i64 1
  %191 = insertelement <8 x i8> %190, i8 %183, i64 2
  %192 = insertelement <8 x i8> %191, i8 %184, i64 3
  %193 = insertelement <8 x i8> %192, i8 %185, i64 4
  %194 = insertelement <8 x i8> %193, i8 %186, i64 5
  %195 = insertelement <8 x i8> %194, i8 %187, i64 6
  %196 = insertelement <8 x i8> %195, i8 %188, i64 7
  %197 = sext <8 x i8> %196 to <8 x i32>
  %i.bih = mul nsw <8 x i32> %197, %i.big
  %i.bii = add <8 x i32> %i.bih, %vec.phi948      ; 2 uses
  %198 = getelementptr inbounds nuw i8, ptr %next.gep953, i64 7
  %199 = getelementptr i8, ptr %20, i64 15
  %200 = getelementptr i8, ptr %21, i64 23
  %201 = getelementptr i8, ptr %22, i64 31
  %202 = getelementptr i8, ptr %23, i64 39
  %203 = getelementptr i8, ptr %24, i64 47
  %204 = getelementptr i8, ptr %i.bhv, i64 55
  %205 = getelementptr i8, ptr %i.bhw, i64 63
  %206 = load i8, ptr %198, align 1, !tbaa !17
  %207 = load i8, ptr %199, align 1, !tbaa !17
  %208 = load i8, ptr %200, align 1, !tbaa !17
  %209 = load i8, ptr %201, align 1, !tbaa !17
  %210 = load i8, ptr %202, align 1, !tbaa !17
  %211 = load i8, ptr %203, align 1, !tbaa !17
  %212 = load i8, ptr %204, align 1, !tbaa !17
  %213 = load i8, ptr %205, align 1, !tbaa !17
  %214 = insertelement <8 x i8> poison, i8 %206, i64 0
  %215 = insertelement <8 x i8> %214, i8 %207, i64 1
  %216 = insertelement <8 x i8> %215, i8 %208, i64 2
  %217 = insertelement <8 x i8> %216, i8 %209, i64 3
  %218 = insertelement <8 x i8> %217, i8 %210, i64 4
  %219 = insertelement <8 x i8> %218, i8 %211, i64 5
  %220 = insertelement <8 x i8> %219, i8 %212, i64 6
  %221 = insertelement <8 x i8> %220, i8 %213, i64 7
  %222 = sext <8 x i8> %221 to <8 x i32>
  %223 = mul nsw <8 x i32> %222, %i.big
  %i.bij = add <8 x i32> %223, %vec.phi944        ; 2 uses
  %index.next966 = add nuw i64 %index943, 8       ; 2 uses
  %i.bik = icmp eq i64 %index.next966, %n.vec941
  br i1 %i.bik, label %middle.block967, label %vector.body942, !llvm.loop !323

middle.block967:                                  ; preds = %vector.body942
  %224 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bij) ; 2 uses
  %225 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %172) ; 2 uses
  %226 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bid) ; 2 uses
  %227 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %69) ; 2 uses
  %228 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bii) ; 2 uses
  %i.bil = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bie) ; 2 uses
  %229 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %94) ; 2 uses
  %i.bim = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %42) ; 2 uses
  %cmp.n968 = icmp eq i64 %n.vec941, %14
  %230 = insertelement <8 x i32> poison, i32 %i.bim, i64 0
  %231 = insertelement <8 x i32> %230, i32 %227, i64 1
  %232 = insertelement <8 x i32> %231, i32 %229, i64 2
  %233 = insertelement <8 x i32> %232, i32 %226, i64 3
  %234 = insertelement <8 x i32> %233, i32 %i.bil, i64 4
  %235 = insertelement <8 x i32> %234, i32 %225, i64 5
  %236 = insertelement <8 x i32> %235, i32 %228, i64 6
  %237 = insertelement <8 x i32> %236, i32 %224, i64 7
  br i1 %cmp.n968, label %._crit_edge1727.i, label %.lr.ph1726.i.preheader1053

.lr.ph1726.i.preheader1053:                       ; preds = %.lr.ph1726.i.preheader, %middle.block967
  %.17661717.i.ph = phi i32 [ %.0765.lcssa.i, %.lr.ph1726.i.preheader ], [ %16, %middle.block967 ]
  %.17681716.i.ph = phi ptr [ %.0767.lcssa.i, %.lr.ph1726.i.preheader ], [ %i.bht, %middle.block967 ]
  %.88331715.i.ph = phi ptr [ %.7832.lcssa.i, %.lr.ph1726.i.preheader ], [ %18, %middle.block967 ]
  %.ph1054 = phi <8 x i32> [ zeroinitializer, %.lr.ph1726.i.preheader ], [ %237, %middle.block967 ]
  br label %.lr.ph1726.i

.lr.ph1709.i.a:                                   ; preds = %.lr.ph1709.i.preheader, %.lr.ph1709.i.a
  %.07651707.i = phi i32 [ %261, %.lr.ph1709.i.a ], [ %.07651707.i.ph, %.lr.ph1709.i.preheader ]
  %.07671706.i = phi ptr [ %260, %.lr.ph1709.i.a ], [ %.07671706.i.ph, %.lr.ph1709.i.preheader ] ; 3 uses
  %.17711705.i.a = phi i32 [ %259, %.lr.ph1709.i.a ], [ %.17711705.i.ph, %.lr.ph1709.i.preheader ]
  %.17741704.i.a = phi i32 [ %251, %.lr.ph1709.i.a ], [ %.17741704.i.ph, %.lr.ph1709.i.preheader ]
  %.78321703.i = phi ptr [ %i.bip, %.lr.ph1709.i.a ], [ %.78321703.i.ph, %.lr.ph1709.i.preheader ] ; 5 uses
  %238 = load i8, ptr %.07671706.i, align 1, !tbaa !17
  %239 = sext i8 %238 to i32                      ; 2 uses
  %240 = load i8, ptr %.78321703.i, align 1, !tbaa !17
  %241 = sext i8 %240 to i32
  %242 = mul nsw i32 %241, %239
  %243 = add nsw i32 %242, %.17741704.i.a
  %244 = getelementptr inbounds nuw i8, ptr %.07671706.i, i64 1
  %245 = load i8, ptr %244, align 1, !tbaa !17
  %246 = sext i8 %245 to i32                      ; 2 uses
  %247 = getelementptr inbounds nuw i8, ptr %.78321703.i, i64 1
  %248 = load i8, ptr %247, align 1, !tbaa !17
  %249 = sext i8 %248 to i32
  %250 = mul nsw i32 %249, %246
  %251 = add nsw i32 %243, %250                   ; 2 uses
  %252 = getelementptr inbounds nuw i8, ptr %.78321703.i, i64 2
  %253 = load i8, ptr %252, align 1, !tbaa !17
  %254 = sext i8 %253 to i32
  %255 = mul nsw i32 %254, %239
  %i.bin = add nsw i32 %255, %.17711705.i.a
  %i.bio = getelementptr inbounds nuw i8, ptr %.78321703.i, i64 3
  %256 = load i8, ptr %i.bio, align 1, !tbaa !17
  %257 = sext i8 %256 to i32
  %258 = mul nsw i32 %257, %246
  %259 = add nsw i32 %i.bin, %258                 ; 2 uses
  %260 = getelementptr inbounds nuw i8, ptr %.07671706.i, i64 2
  %i.bip = getelementptr inbounds nuw i8, ptr %.78321703.i, i64 4
  %261 = add nuw nsw i32 %.07651707.i, 2          ; 2 uses
  %262 = or disjoint i32 %261, 1
  %263 = icmp slt i32 %262, %8
  br i1 %263, label %.lr.ph1709.i.a, label %.preheader.loopexit.i, !llvm.loop !324

.lr.ph1726.i:                                     ; preds = %.lr.ph1726.i.preheader1053, %.lr.ph1726.i
  %.17661717.i = phi i32 [ %274, %.lr.ph1726.i ], [ %.17661717.i.ph, %.lr.ph1726.i.preheader1053 ] ; 2 uses
  %.17681716.i = phi ptr [ %272, %.lr.ph1726.i ], [ %.17681716.i.ph, %.lr.ph1726.i.preheader1053 ] ; 2 uses
  %.88331715.i = phi ptr [ %273, %.lr.ph1726.i ], [ %.88331715.i.ph, %.lr.ph1726.i.preheader1053 ] ; 2 uses
  %264 = phi <8 x i32> [ %271, %.lr.ph1726.i ], [ %.ph1054, %.lr.ph1726.i.preheader1053 ]
  %265 = load <4 x i8>, ptr %.17681716.i, align 1, !tbaa !17
  %266 = sext <4 x i8> %265 to <4 x i32>
  %267 = shufflevector <4 x i32> %266, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %268 = load <8 x i8>, ptr %.88331715.i, align 1, !tbaa !17
  %269 = sext <8 x i8> %268 to <8 x i32>
  %270 = mul nsw <8 x i32> %267, %269
  %271 = add nsw <8 x i32> %270, %264             ; 9 uses
  %272 = getelementptr inbounds nuw i8, ptr %.17681716.i, i64 4 ; 2 uses
  %273 = getelementptr inbounds nuw i8, ptr %.88331715.i, i64 8 ; 2 uses
  %274 = add nuw nsw i32 %.17661717.i, 4          ; 2 uses
  %275 = add nuw nsw i32 %.17661717.i, 7
  %276 = icmp slt i32 %275, %8
  br i1 %276, label %.lr.ph1726.i, label %._crit_edge1727.i.loopexit, !llvm.loop !325

._crit_edge1727.i.loopexit:                       ; preds = %.lr.ph1726.i
  %277 = extractelement <8 x i32> %271, i64 7
  %278 = extractelement <8 x i32> %271, i64 6
  %279 = extractelement <8 x i32> %271, i64 5
  %280 = extractelement <8 x i32> %271, i64 4
  %281 = extractelement <8 x i32> %271, i64 3
  %282 = extractelement <8 x i32> %271, i64 2
  %283 = extractelement <8 x i32> %271, i64 1
  %284 = extractelement <8 x i32> %271, i64 0
  br label %._crit_edge1727.i

._crit_edge1727.i:                                ; preds = %._crit_edge1727.i.loopexit, %middle.block967, %.preheader.i
  %.8833.lcssa.i = phi ptr [ %.7832.lcssa.i, %.preheader.i ], [ %18, %middle.block967 ], [ %273, %._crit_edge1727.i.loopexit ] ; 7 uses
  %.1768.lcssa.i = phi ptr [ %.0767.lcssa.i, %.preheader.i ], [ %i.bht, %middle.block967 ], [ %272, %._crit_edge1727.i.loopexit ] ; 5 uses
  %.1766.lcssa.i = phi i32 [ %.0765.lcssa.i, %.preheader.i ], [ %16, %middle.block967 ], [ %274, %._crit_edge1727.i.loopexit ] ; 5 uses
  %.0764.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bim, %middle.block967 ], [ %284, %._crit_edge1727.i.loopexit ]
  %.0763.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %229, %middle.block967 ], [ %282, %._crit_edge1727.i.loopexit ]
  %.0762.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bil, %middle.block967 ], [ %280, %._crit_edge1727.i.loopexit ]
  %.0761.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %228, %middle.block967 ], [ %278, %._crit_edge1727.i.loopexit ]
  %.0760.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %227, %middle.block967 ], [ %283, %._crit_edge1727.i.loopexit ]
  %.0759.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %226, %middle.block967 ], [ %281, %._crit_edge1727.i.loopexit ]
  %.0758.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %225, %middle.block967 ], [ %279, %._crit_edge1727.i.loopexit ]
  %.0757.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %224, %middle.block967 ], [ %277, %._crit_edge1727.i.loopexit ]
  %285 = add i32 %.0764.lcssa.i, %.1774.lcssa.i
  %286 = add i32 %285, %.0763.lcssa.i
  %287 = add i32 %286, %.0762.lcssa.i
  %288 = add i32 %287, %.0761.lcssa.i             ; 4 uses
  %289 = add i32 %.0760.lcssa.i, %.1771.lcssa.i
  %290 = add i32 %289, %.0759.lcssa.i
  %291 = add i32 %290, %.0758.lcssa.i
  %292 = add i32 %291, %.0757.lcssa.i             ; 4 uses
  %293 = icmp slt i32 %.1766.lcssa.i, %8
  br i1 %293, label %iter.check914, label %._crit_edge1746.i

iter.check914:                                    ; preds = %._crit_edge1727.i
  %294 = xor i32 %.1766.lcssa.i, -1
  %295 = add i32 %8, %294                         ; 3 uses
  %296 = zext i32 %295 to i64
  %297 = add nuw nsw i64 %296, 1                  ; 5 uses
  %min.iters.check881 = icmp ult i32 %295, 3
  br i1 %min.iters.check881, label %.lr.ph1745.i.preheader, label %vector.main.loop.iter.check882

vector.main.loop.iter.check882:                   ; preds = %iter.check914
  %min.iters.check883 = icmp ult i32 %295, 15
  br i1 %min.iters.check883, label %vec.epilog.ph918, label %vector.ph884

vector.ph884:                                     ; preds = %vector.main.loop.iter.check882
  %298 = and i64 %297, 12
  %n.vec885 = and i64 %297, 8589934576            ; 6 uses
  %299 = trunc i64 %n.vec885 to i32
  %300 = add i32 %.1766.lcssa.i, %299
  %301 = getelementptr i8, ptr %.1768.lcssa.i, i64 %n.vec885
  %302 = shl nuw nsw i64 %n.vec885, 1
  %303 = getelementptr i8, ptr %.8833.lcssa.i, i64 %302 ; 2 uses
  %304 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %292, i64 0
  %305 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %288, i64 0
  br label %vector.body886

vector.body886:                                   ; preds = %vector.body886, %vector.ph884
  %index887 = phi i64 [ 0, %vector.ph884 ], [ %index.next903, %vector.body886 ] ; 3 uses
  %vec.phi888 = phi <8 x i32> [ %304, %vector.ph884 ], [ %321, %vector.body886 ]
  %vec.phi889 = phi <8 x i32> [ zeroinitializer, %vector.ph884 ], [ %322, %vector.body886 ]
  %vec.phi890 = phi <8 x i32> [ %305, %vector.ph884 ], [ %315, %vector.body886 ]
  %vec.phi891 = phi <8 x i32> [ zeroinitializer, %vector.ph884 ], [ %316, %vector.body886 ]
  %next.gep892 = getelementptr i8, ptr %.1768.lcssa.i, i64 %index887 ; 2 uses
  %306 = shl i64 %index887, 1                     ; 2 uses
  %next.gep893 = getelementptr i8, ptr %.8833.lcssa.i, i64 %306
  %307 = getelementptr i8, ptr %.8833.lcssa.i, i64 %306
  %next.gep894 = getelementptr i8, ptr %307, i64 16
  %308 = getelementptr i8, ptr %next.gep892, i64 8
  %wide.load895 = load <8 x i8>, ptr %next.gep892, align 1, !tbaa !17
  %wide.load896 = load <8 x i8>, ptr %308, align 1, !tbaa !17
  %309 = sext <8 x i8> %wide.load895 to <8 x i32> ; 2 uses
  %310 = sext <8 x i8> %wide.load896 to <8 x i32> ; 2 uses
  %wide.vec897 = load <16 x i8>, ptr %next.gep893, align 1, !tbaa !17 ; 2 uses
  %strided.vec898 = shufflevector <16 x i8> %wide.vec897, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec899 = shufflevector <16 x i8> %wide.vec897, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec900 = load <16 x i8>, ptr %next.gep894, align 1, !tbaa !17 ; 2 uses
  %strided.vec901 = shufflevector <16 x i8> %wide.vec900, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec902 = shufflevector <16 x i8> %wide.vec900, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %311 = sext <8 x i8> %strided.vec898 to <8 x i32>
  %312 = sext <8 x i8> %strided.vec901 to <8 x i32>
  %313 = mul nsw <8 x i32> %311, %309
  %314 = mul nsw <8 x i32> %312, %310
  %315 = add <8 x i32> %313, %vec.phi890          ; 2 uses
  %316 = add <8 x i32> %314, %vec.phi891          ; 2 uses
  %317 = sext <8 x i8> %strided.vec899 to <8 x i32>
  %318 = sext <8 x i8> %strided.vec902 to <8 x i32>
  %319 = mul nsw <8 x i32> %317, %309
  %320 = mul nsw <8 x i32> %318, %310
  %321 = add <8 x i32> %319, %vec.phi888          ; 2 uses
  %322 = add <8 x i32> %320, %vec.phi889          ; 2 uses
  %index.next903 = add nuw i64 %index887, 16      ; 2 uses
  %323 = icmp eq i64 %index.next903, %n.vec885
  br i1 %323, label %middle.block904, label %vector.body886, !llvm.loop !326

middle.block904:                                  ; preds = %vector.body886
  %bin.rdx905 = add <8 x i32> %322, %321
  %324 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx905) ; 3 uses
  %bin.rdx906 = add <8 x i32> %316, %315
  %325 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx906) ; 3 uses
  %cmp.n907 = icmp eq i64 %297, %n.vec885
  br i1 %cmp.n907, label %._crit_edge1746.i, label %vec.epilog.iter.check916

vec.epilog.iter.check916:                         ; preds = %middle.block904
  %min.epilog.iters.check917 = icmp eq i64 %298, 0
  br i1 %min.epilog.iters.check917, label %.lr.ph1745.i.preheader, label %vec.epilog.ph918, !prof !339

vec.epilog.ph918:                                 ; preds = %vector.main.loop.iter.check882, %vec.epilog.iter.check916
  %vec.epilog.resume.val908 = phi i64 [ %n.vec885, %vec.epilog.iter.check916 ], [ 0, %vector.main.loop.iter.check882 ]
  %bc.merge.rdx911 = phi i32 [ %324, %vec.epilog.iter.check916 ], [ %292, %vector.main.loop.iter.check882 ]
  %bc.merge.rdx912 = phi i32 [ %325, %vec.epilog.iter.check916 ], [ %288, %vector.main.loop.iter.check882 ]
  %n.vec919 = and i64 %297, 8589934588            ; 5 uses
  %326 = trunc i64 %n.vec919 to i32
  %327 = add i32 %.1766.lcssa.i, %326
  %328 = getelementptr i8, ptr %.1768.lcssa.i, i64 %n.vec919
  %329 = shl nuw nsw i64 %n.vec919, 1
  %330 = getelementptr i8, ptr %.8833.lcssa.i, i64 %329 ; 2 uses
  %331 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx911, i64 0
  %332 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx912, i64 0
  br label %vec.epilog.vector.body920

vec.epilog.vector.body920:                        ; preds = %vec.epilog.vector.body920, %vec.epilog.ph918
  %index921 = phi i64 [ %vec.epilog.resume.val908, %vec.epilog.ph918 ], [ %index.next930, %vec.epilog.vector.body920 ] ; 3 uses
  %vec.phi922 = phi <4 x i32> [ %331, %vec.epilog.ph918 ], [ %340, %vec.epilog.vector.body920 ]
  %vec.phi923 = phi <4 x i32> [ %332, %vec.epilog.ph918 ], [ %337, %vec.epilog.vector.body920 ]
  %next.gep924 = getelementptr i8, ptr %.1768.lcssa.i, i64 %index921
  %333 = shl i64 %index921, 1
  %next.gep925 = getelementptr i8, ptr %.8833.lcssa.i, i64 %333
  %wide.load926 = load <4 x i8>, ptr %next.gep924, align 1, !tbaa !17
  %334 = sext <4 x i8> %wide.load926 to <4 x i32> ; 2 uses
  %wide.vec927 = load <8 x i8>, ptr %next.gep925, align 1, !tbaa !17 ; 2 uses
  %strided.vec928 = shufflevector <8 x i8> %wide.vec927, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec929 = shufflevector <8 x i8> %wide.vec927, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %335 = sext <4 x i8> %strided.vec928 to <4 x i32>
  %336 = mul nsw <4 x i32> %335, %334
  %337 = add <4 x i32> %336, %vec.phi923          ; 2 uses
  %338 = sext <4 x i8> %strided.vec929 to <4 x i32>
  %339 = mul nsw <4 x i32> %338, %334
  %340 = add <4 x i32> %339, %vec.phi922          ; 2 uses
  %index.next930 = add nuw i64 %index921, 4       ; 2 uses
  %341 = icmp eq i64 %index.next930, %n.vec919
  br i1 %341, label %vec.epilog.middle.block931, label %vec.epilog.vector.body920, !llvm.loop !327

vec.epilog.middle.block931:                       ; preds = %vec.epilog.vector.body920
  %342 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %340) ; 2 uses
  %343 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %337) ; 2 uses
  %cmp.n932 = icmp eq i64 %297, %n.vec919
  br i1 %cmp.n932, label %._crit_edge1746.i, label %.lr.ph1745.i.preheader

.lr.ph1745.i.preheader:                           ; preds = %iter.check914, %vec.epilog.iter.check916, %vec.epilog.middle.block931
  %.21743.i.ph = phi i32 [ %.1766.lcssa.i, %iter.check914 ], [ %300, %vec.epilog.iter.check916 ], [ %327, %vec.epilog.middle.block931 ]
  %.27691742.i.ph = phi ptr [ %.1768.lcssa.i, %iter.check914 ], [ %301, %vec.epilog.iter.check916 ], [ %328, %vec.epilog.middle.block931 ]
  %.27721741.i.ph = phi i32 [ %292, %iter.check914 ], [ %324, %vec.epilog.iter.check916 ], [ %342, %vec.epilog.middle.block931 ]
  %.27751740.i.ph = phi i32 [ %288, %iter.check914 ], [ %325, %vec.epilog.iter.check916 ], [ %343, %vec.epilog.middle.block931 ]
  %.98341739.i.ph = phi ptr [ %.8833.lcssa.i, %iter.check914 ], [ %303, %vec.epilog.iter.check916 ], [ %330, %vec.epilog.middle.block931 ]
  br label %.lr.ph1745.i

.lr.ph1745.i:                                     ; preds = %.lr.ph1745.i.preheader, %.lr.ph1745.i
  %.21743.i = phi i32 [ %i.bjd, %.lr.ph1745.i ], [ %.21743.i.ph, %.lr.ph1745.i.preheader ]
  %.27691742.i = phi ptr [ %i.bjb, %.lr.ph1745.i ], [ %.27691742.i.ph, %.lr.ph1745.i.preheader ] ; 2 uses
  %.27721741.i = phi i32 [ %i.bja, %.lr.ph1745.i ], [ %.27721741.i.ph, %.lr.ph1745.i.preheader ]
  %.27751740.i = phi i32 [ %i.biv, %.lr.ph1745.i ], [ %.27751740.i.ph, %.lr.ph1745.i.preheader ]
  %.98341739.i = phi ptr [ %i.bjc, %.lr.ph1745.i ], [ %.98341739.i.ph, %.lr.ph1745.i.preheader ] ; 3 uses
  %i.biq = load i8, ptr %.27691742.i, align 1, !tbaa !17
  %i.bir = sext i8 %i.biq to i32                  ; 2 uses
  %i.bis = load i8, ptr %.98341739.i, align 1, !tbaa !17
  %i.bit = sext i8 %i.bis to i32
  %i.biu = mul nsw i32 %i.bit, %i.bir
  %i.biv = add nsw i32 %i.biu, %.27751740.i       ; 2 uses
  %i.biw = getelementptr inbounds nuw i8, ptr %.98341739.i, i64 1
  %i.bix = load i8, ptr %i.biw, align 1, !tbaa !17
  %i.biy = sext i8 %i.bix to i32
  %i.biz = mul nsw i32 %i.biy, %i.bir
  %i.bja = add nsw i32 %i.biz, %.27721741.i       ; 2 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %.27691742.i, i64 1
  %i.bjc = getelementptr inbounds nuw i8, ptr %.98341739.i, i64 2 ; 2 uses
  %i.bjd = add nuw nsw i32 %.21743.i, 1           ; 2 uses
  %exitcond2023.not.i = icmp eq i32 %i.bjd, %8
  br i1 %exitcond2023.not.i, label %._crit_edge1746.i, label %.lr.ph1745.i, !llvm.loop !328

._crit_edge1746.i:                                ; preds = %.lr.ph1745.i, %middle.block904, %vec.epilog.middle.block931, %._crit_edge1727.i
  %.9834.lcssa.i = phi ptr [ %.8833.lcssa.i, %._crit_edge1727.i ], [ %330, %vec.epilog.middle.block931 ], [ %303, %middle.block904 ], [ %i.bjc, %.lr.ph1745.i ] ; 2 uses
  %.2775.lcssa.i = phi i32 [ %288, %._crit_edge1727.i ], [ %343, %vec.epilog.middle.block931 ], [ %325, %middle.block904 ], [ %i.biv, %.lr.ph1745.i ]
  %.2772.lcssa.i = phi i32 [ %292, %._crit_edge1727.i ], [ %342, %vec.epilog.middle.block931 ], [ %324, %middle.block904 ], [ %i.bja, %.lr.ph1745.i ]
  store i32 %.2775.lcssa.i, ptr %.181752.i, align 4, !tbaa !28
  %i.bje = getelementptr inbounds nuw i8, ptr %.181752.i, i64 4
  store i32 %.2772.lcssa.i, ptr %i.bje, align 4, !tbaa !28
  %i.bjf = getelementptr inbounds nuw i8, ptr %.181752.i, i64 8 ; 2 uses
  %i.bjg = add nuw nsw i32 %.28231751.i, 2        ; 3 uses
  %i.bjh = or disjoint i32 %i.bjg, 1
  %i.bji = icmp slt i32 %i.bjh, %6
  br i1 %i.bji, label %.lr.ph1753.i, label %.preheader1216.i, !llvm.loop !329

.lr.ph1786.i:                                     ; preds = %.lr.ph1786.i.preheader, %._crit_edge1780.i
  %.191785.i = phi ptr [ %i.bnc, %._crit_edge1780.i ], [ %.18.lcssa.i, %.lr.ph1786.i.preheader ] ; 3 uses
  %.38241784.i = phi i32 [ %i.bnd, %._crit_edge1780.i ], [ %.2823.lcssa.i, %.lr.ph1786.i.preheader ]
  %.108351783.i = phi ptr [ %.12837.lcssa.i, %._crit_edge1780.i ], [ %.6831.lcssa.i, %.lr.ph1786.i.preheader ] ; 4 uses
  br i1 %i.adr, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph1786.i
  %i.bjj = load i32, ptr %.191785.i, align 4, !tbaa !28
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph1786.i
  %.0755.i = phi i32 [ %i.bjj, %bb.aj ], [ 0, %.lr.ph1786.i ]
  br i1 %i.adt, label %.lr.ph1765.i.preheader, label %._crit_edge1766.i

.lr.ph1765.i.preheader:                           ; preds = %bb.ak
  br i1 %min.iters.check849, label %.lr.ph1765.i.preheader1052, label %vector.ph850

vector.ph850:                                     ; preds = %.lr.ph1765.i.preheader
  %i.bjk = getelementptr i8, ptr %.108351783.i, i64 %i.afd ; 2 uses
  br label %vector.body852

vector.body852:                                   ; preds = %vector.body852, %vector.ph850
  %index853 = phi i64 [ 0, %vector.ph850 ], [ %index.next870, %vector.body852 ] ; 2 uses
  %vec.phi854 = phi <8 x i32> [ zeroinitializer, %vector.ph850 ], [ %i.bkb, %vector.body852 ]
  %vec.phi855 = phi <8 x i32> [ zeroinitializer, %vector.ph850 ], [ %i.bjx, %vector.body852 ]
  %vec.phi856 = phi <8 x i32> [ zeroinitializer, %vector.ph850 ], [ %i.bjt, %vector.body852 ]
  %vec.phi857 = phi <8 x i32> [ zeroinitializer, %vector.ph850 ], [ %i.bjp, %vector.body852 ]
  %i.bjl = shl i64 %index853, 2                   ; 2 uses
  %next.gep858 = getelementptr i8, ptr %.31791.i, i64 %i.bjl
  %next.gep859 = getelementptr i8, ptr %.108351783.i, i64 %i.bjl
  %wide.vec860 = load <32 x i8>, ptr %next.gep858, align 1, !tbaa !17 ; 4 uses
  %strided.vec861 = shufflevector <32 x i8> %wide.vec860, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec862 = shufflevector <32 x i8> %wide.vec860, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec863 = shufflevector <32 x i8> %wide.vec860, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec864 = shufflevector <32 x i8> %wide.vec860, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bjm = sext <8 x i8> %strided.vec861 to <8 x i32>
  %wide.vec865 = load <32 x i8>, ptr %next.gep859, align 1, !tbaa !17 ; 4 uses
  %strided.vec866 = shufflevector <32 x i8> %wide.vec865, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec867 = shufflevector <32 x i8> %wide.vec865, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec868 = shufflevector <32 x i8> %wide.vec865, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec869 = shufflevector <32 x i8> %wide.vec865, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bjn = sext <8 x i8> %strided.vec866 to <8 x i32>
  %i.bjo = mul nsw <8 x i32> %i.bjn, %i.bjm
  %i.bjp = add <8 x i32> %i.bjo, %vec.phi857      ; 2 uses
  %i.bjq = sext <8 x i8> %strided.vec862 to <8 x i32>
  %i.bjr = sext <8 x i8> %strided.vec867 to <8 x i32>
  %i.bjs = mul nsw <8 x i32> %i.bjr, %i.bjq
  %i.bjt = add <8 x i32> %i.bjs, %vec.phi856      ; 2 uses
  %i.bju = sext <8 x i8> %strided.vec863 to <8 x i32>
  %i.bjv = sext <8 x i8> %strided.vec868 to <8 x i32>
  %i.bjw = mul nsw <8 x i32> %i.bjv, %i.bju
  %i.bjx = add <8 x i32> %i.bjw, %vec.phi855      ; 2 uses
  %i.bjy = sext <8 x i8> %strided.vec864 to <8 x i32>
  %i.bjz = sext <8 x i8> %strided.vec869 to <8 x i32>
  %i.bka = mul nsw <8 x i32> %i.bjz, %i.bjy
  %i.bkb = add <8 x i32> %i.bka, %vec.phi854      ; 2 uses
  %index.next870 = add nuw i64 %index853, 8       ; 2 uses
  %i.bkc = icmp eq i64 %index.next870, %n.vec851
  br i1 %i.bkc, label %middle.block871, label %vector.body852, !llvm.loop !330

middle.block871:                                  ; preds = %vector.body852
  %i.bkd = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bkb)
  %i.bke = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bjx)
  %i.bkf = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bjt)
  %i.bkg = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bjp)
  %i.bkh = insertelement <4 x i32> poison, i32 %i.bkg, i64 0
  %i.bki = insertelement <4 x i32> %i.bkh, i32 %i.bkf, i64 1
  %i.bkj = insertelement <4 x i32> %i.bki, i32 %i.bke, i64 2
  %i.bkk = insertelement <4 x i32> %i.bkj, i32 %i.bkd, i64 3 ; 2 uses
  br i1 %cmp.n872, label %._crit_edge1766.i, label %.lr.ph1765.i.preheader1052

.lr.ph1765.i.preheader1052:                       ; preds = %.lr.ph1765.i.preheader, %middle.block871
  %.07521759.i.ph = phi i32 [ 0, %.lr.ph1765.i.preheader ], [ %i.afc, %middle.block871 ]
  %.07531758.i.ph = phi ptr [ %.31791.i, %.lr.ph1765.i.preheader ], [ %i.bfc, %middle.block871 ]
  %.118361757.i.ph = phi ptr [ %.108351783.i, %.lr.ph1765.i.preheader ], [ %i.bjk, %middle.block871 ]
  %.ph = phi <4 x i32> [ zeroinitializer, %.lr.ph1765.i.preheader ], [ %i.bkk, %middle.block871 ]
  br label %.lr.ph1765.i

.lr.ph1765.i:                                     ; preds = %.lr.ph1765.i.preheader1052, %.lr.ph1765.i
  %.07521759.i = phi i32 [ %i.bku, %.lr.ph1765.i ], [ %.07521759.i.ph, %.lr.ph1765.i.preheader1052 ]
  %.07531758.i = phi ptr [ %i.bks, %.lr.ph1765.i ], [ %.07531758.i.ph, %.lr.ph1765.i.preheader1052 ] ; 2 uses
  %.118361757.i = phi ptr [ %i.bkt, %.lr.ph1765.i ], [ %.118361757.i.ph, %.lr.ph1765.i.preheader1052 ] ; 2 uses
  %i.bkl = phi <4 x i32> [ %i.bkr, %.lr.ph1765.i ], [ %.ph, %.lr.ph1765.i.preheader1052 ]
  %i.bkm = load <4 x i8>, ptr %.07531758.i, align 1, !tbaa !17
  %i.bkn = sext <4 x i8> %i.bkm to <4 x i32>
  %i.bko = load <4 x i8>, ptr %.118361757.i, align 1, !tbaa !17
  %i.bkp = sext <4 x i8> %i.bko to <4 x i32>
  %i.bkq = mul nsw <4 x i32> %i.bkp, %i.bkn
  %i.bkr = add nsw <4 x i32> %i.bkq, %i.bkl       ; 2 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %.07531758.i, i64 4 ; 2 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %.118361757.i, i64 4 ; 2 uses
  %i.bku = add nuw nsw i32 %.07521759.i, 4        ; 2 uses
  %i.bkv = or disjoint i32 %i.bku, 3
  %i.bkw = icmp slt i32 %i.bkv, %8
  br i1 %i.bkw, label %.lr.ph1765.i, label %._crit_edge1766.i, !llvm.loop !331

._crit_edge1766.i:                                ; preds = %.lr.ph1765.i, %middle.block871, %bb.ak
  %.11836.lcssa.i = phi ptr [ %.108351783.i, %bb.ak ], [ %i.bjk, %middle.block871 ], [ %i.bkt, %.lr.ph1765.i ] ; 6 uses
  %.0753.lcssa.i = phi ptr [ %.31791.i, %bb.ak ], [ %i.bfc, %middle.block871 ], [ %i.bks, %.lr.ph1765.i ] ; 5 uses
  %.0752.lcssa.i = phi i32 [ 0, %bb.ak ], [ %i.aef, %middle.block871 ], [ %i.aef, %.lr.ph1765.i ] ; 5 uses
  %i.bkx = phi <4 x i32> [ zeroinitializer, %bb.ak ], [ %i.bkk, %middle.block871 ], [ %i.bkr, %.lr.ph1765.i ]
  %i.bky = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bkx)
  %op.rdx = add i32 %i.bky, %.0755.i              ; 4 uses
  %i.bkz = icmp slt i32 %.0752.lcssa.i, %8
  br i1 %i.bkz, label %iter.check828, label %._crit_edge1780.i

iter.check828:                                    ; preds = %._crit_edge1766.i
  %i.bla = xor i32 %.0752.lcssa.i, -1
  %i.blb = add i32 %8, %i.bla                     ; 3 uses
  %i.blc = zext i32 %i.blb to i64
  %i.bld = add nuw nsw i64 %i.blc, 1              ; 5 uses
  %min.iters.check796 = icmp ult i32 %i.blb, 3
  br i1 %min.iters.check796, label %.lr.ph1779.i.preheader, label %vector.main.loop.iter.check797

vector.main.loop.iter.check797:                   ; preds = %iter.check828
  %min.iters.check798 = icmp ult i32 %i.blb, 31
  br i1 %min.iters.check798, label %vec.epilog.ph832, label %vector.ph799

vector.ph799:                                     ; preds = %vector.main.loop.iter.check797
  %i.ble = and i64 %i.bld, 28
  %n.vec800 = and i64 %i.bld, 8589934560          ; 6 uses
  %i.blf = trunc i64 %n.vec800 to i32
  %i.blg = add i32 %.0752.lcssa.i, %i.blf
  %i.blh = getelementptr i8, ptr %.0753.lcssa.i, i64 %n.vec800
  %i.bli = getelementptr i8, ptr %.11836.lcssa.i, i64 %n.vec800 ; 2 uses
  %i.blj = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %op.rdx, i64 0
  br label %vector.body801

vector.body801:                                   ; preds = %vector.body801, %vector.ph799
  %index802 = phi i64 [ 0, %vector.ph799 ], [ %index.next817, %vector.body801 ] ; 3 uses
  %vec.phi803 = phi <8 x i32> [ %i.blj, %vector.ph799 ], [ %i.bmc, %vector.body801 ]
  %vec.phi804 = phi <8 x i32> [ zeroinitializer, %vector.ph799 ], [ %i.bmd, %vector.body801 ]
  %vec.phi805 = phi <8 x i32> [ zeroinitializer, %vector.ph799 ], [ %i.bme, %vector.body801 ]
  %vec.phi806 = phi <8 x i32> [ zeroinitializer, %vector.ph799 ], [ %i.bmf, %vector.body801 ]
  %next.gep807 = getelementptr i8, ptr %.0753.lcssa.i, i64 %index802 ; 4 uses
  %next.gep808 = getelementptr i8, ptr %.11836.lcssa.i, i64 %index802 ; 4 uses
  %i.blk = getelementptr i8, ptr %next.gep807, i64 8
  %i.bll = getelementptr i8, ptr %next.gep807, i64 16
  %i.blm = getelementptr i8, ptr %next.gep807, i64 24
  %wide.load809 = load <8 x i8>, ptr %next.gep807, align 1, !tbaa !17
  %wide.load810 = load <8 x i8>, ptr %i.blk, align 1, !tbaa !17
  %wide.load811 = load <8 x i8>, ptr %i.bll, align 1, !tbaa !17
  %wide.load812 = load <8 x i8>, ptr %i.blm, align 1, !tbaa !17
  %i.bln = sext <8 x i8> %wide.load809 to <8 x i32>
  %i.blo = sext <8 x i8> %wide.load810 to <8 x i32>
  %i.blp = sext <8 x i8> %wide.load811 to <8 x i32>
  %i.blq = sext <8 x i8> %wide.load812 to <8 x i32>
  %i.blr = getelementptr i8, ptr %next.gep808, i64 8
  %i.bls = getelementptr i8, ptr %next.gep808, i64 16
  %i.blt = getelementptr i8, ptr %next.gep808, i64 24
  %wide.load813 = load <8 x i8>, ptr %next.gep808, align 1, !tbaa !17
  %wide.load814 = load <8 x i8>, ptr %i.blr, align 1, !tbaa !17
  %wide.load815 = load <8 x i8>, ptr %i.bls, align 1, !tbaa !17
  %wide.load816 = load <8 x i8>, ptr %i.blt, align 1, !tbaa !17
  %i.blu = sext <8 x i8> %wide.load813 to <8 x i32>
  %i.blv = sext <8 x i8> %wide.load814 to <8 x i32>
  %i.blw = sext <8 x i8> %wide.load815 to <8 x i32>
  %i.blx = sext <8 x i8> %wide.load816 to <8 x i32>
  %i.bly = mul nsw <8 x i32> %i.blu, %i.bln
  %i.blz = mul nsw <8 x i32> %i.blv, %i.blo
  %i.bma = mul nsw <8 x i32> %i.blw, %i.blp
  %i.bmb = mul nsw <8 x i32> %i.blx, %i.blq
  %i.bmc = add <8 x i32> %i.bly, %vec.phi803      ; 2 uses
  %i.bmd = add <8 x i32> %i.blz, %vec.phi804      ; 2 uses
  %i.bme = add <8 x i32> %i.bma, %vec.phi805      ; 2 uses
  %i.bmf = add <8 x i32> %i.bmb, %vec.phi806      ; 2 uses
  %index.next817 = add nuw i64 %index802, 32      ; 2 uses
  %i.bmg = icmp eq i64 %index.next817, %n.vec800
  br i1 %i.bmg, label %middle.block818, label %vector.body801, !llvm.loop !332

middle.block818:                                  ; preds = %vector.body801
  %bin.rdx819 = add <8 x i32> %i.bmd, %i.bmc
  %bin.rdx820 = add <8 x i32> %i.bme, %bin.rdx819
  %bin.rdx821 = add <8 x i32> %i.bmf, %bin.rdx820
  %i.bmh = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx821) ; 3 uses
  %cmp.n822 = icmp eq i64 %i.bld, %n.vec800
  br i1 %cmp.n822, label %._crit_edge1780.i, label %vec.epilog.iter.check830

vec.epilog.iter.check830:                         ; preds = %middle.block818
  %min.epilog.iters.check831 = icmp eq i64 %i.ble, 0
  br i1 %min.epilog.iters.check831, label %.lr.ph1779.i.preheader, label %vec.epilog.ph832, !prof !31

vec.epilog.ph832:                                 ; preds = %vector.main.loop.iter.check797, %vec.epilog.iter.check830
  %vec.epilog.resume.val823 = phi i64 [ %n.vec800, %vec.epilog.iter.check830 ], [ 0, %vector.main.loop.iter.check797 ]
  %bc.merge.rdx826 = phi i32 [ %i.bmh, %vec.epilog.iter.check830 ], [ %op.rdx, %vector.main.loop.iter.check797 ]
  %n.vec833 = and i64 %i.bld, 8589934588          ; 5 uses
  %i.bmi = trunc i64 %n.vec833 to i32
  %i.bmj = add i32 %.0752.lcssa.i, %i.bmi
  %i.bmk = getelementptr i8, ptr %.0753.lcssa.i, i64 %n.vec833
  %i.bml = getelementptr i8, ptr %.11836.lcssa.i, i64 %n.vec833 ; 2 uses
  %i.bmm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx826, i64 0
  br label %vec.epilog.vector.body834

vec.epilog.vector.body834:                        ; preds = %vec.epilog.vector.body834, %vec.epilog.ph832
  %index835 = phi i64 [ %vec.epilog.resume.val823, %vec.epilog.ph832 ], [ %index.next841, %vec.epilog.vector.body834 ] ; 3 uses
  %vec.phi836 = phi <4 x i32> [ %i.bmm, %vec.epilog.ph832 ], [ %i.bmq, %vec.epilog.vector.body834 ]
  %next.gep837 = getelementptr i8, ptr %.0753.lcssa.i, i64 %index835
  %next.gep838 = getelementptr i8, ptr %.11836.lcssa.i, i64 %index835
  %wide.load839 = load <4 x i8>, ptr %next.gep837, align 1, !tbaa !17
  %i.bmn = sext <4 x i8> %wide.load839 to <4 x i32>
  %wide.load840 = load <4 x i8>, ptr %next.gep838, align 1, !tbaa !17
  %i.bmo = sext <4 x i8> %wide.load840 to <4 x i32>
  %i.bmp = mul nsw <4 x i32> %i.bmo, %i.bmn
  %i.bmq = add <4 x i32> %i.bmp, %vec.phi836      ; 2 uses
  %index.next841 = add nuw i64 %index835, 4       ; 2 uses
  %i.bmr = icmp eq i64 %index.next841, %n.vec833
  br i1 %i.bmr, label %vec.epilog.middle.block842, label %vec.epilog.vector.body834, !llvm.loop !333

vec.epilog.middle.block842:                       ; preds = %vec.epilog.vector.body834
  %i.bms = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bmq) ; 2 uses
  %cmp.n843 = icmp eq i64 %i.bld, %n.vec833
  br i1 %cmp.n843, label %._crit_edge1780.i, label %.lr.ph1779.i.preheader

.lr.ph1779.i.preheader:                           ; preds = %iter.check828, %vec.epilog.iter.check830, %vec.epilog.middle.block842
  %.11777.i.ph = phi i32 [ %.0752.lcssa.i, %iter.check828 ], [ %i.blg, %vec.epilog.iter.check830 ], [ %i.bmj, %vec.epilog.middle.block842 ]
  %.17541776.i.ph = phi ptr [ %.0753.lcssa.i, %iter.check828 ], [ %i.blh, %vec.epilog.iter.check830 ], [ %i.bmk, %vec.epilog.middle.block842 ]
  %.17561775.i.ph = phi i32 [ %op.rdx, %iter.check828 ], [ %i.bmh, %vec.epilog.iter.check830 ], [ %i.bms, %vec.epilog.middle.block842 ]
  %.128371774.i.ph = phi ptr [ %.11836.lcssa.i, %iter.check828 ], [ %i.bli, %vec.epilog.iter.check830 ], [ %i.bml, %vec.epilog.middle.block842 ]
  br label %.lr.ph1779.i

.lr.ph1779.i:                                     ; preds = %.lr.ph1779.i.preheader, %.lr.ph1779.i
  %.11777.i = phi i32 [ %i.bnb, %.lr.ph1779.i ], [ %.11777.i.ph, %.lr.ph1779.i.preheader ]
  %.17541776.i = phi ptr [ %i.bmz, %.lr.ph1779.i ], [ %.17541776.i.ph, %.lr.ph1779.i.preheader ] ; 2 uses
  %.17561775.i = phi i32 [ %i.bmy, %.lr.ph1779.i ], [ %.17561775.i.ph, %.lr.ph1779.i.preheader ]
  %.128371774.i = phi ptr [ %i.bna, %.lr.ph1779.i ], [ %.128371774.i.ph, %.lr.ph1779.i.preheader ] ; 2 uses
  %i.bmt = load i8, ptr %.17541776.i, align 1, !tbaa !17
  %i.bmu = sext i8 %i.bmt to i32
  %i.bmv = load i8, ptr %.128371774.i, align 1, !tbaa !17
  %i.bmw = sext i8 %i.bmv to i32
  %i.bmx = mul nsw i32 %i.bmw, %i.bmu
  %i.bmy = add nsw i32 %i.bmx, %.17561775.i       ; 2 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %.17541776.i, i64 1
  %i.bna = getelementptr inbounds nuw i8, ptr %.128371774.i, i64 1 ; 2 uses
  %i.bnb = add nuw nsw i32 %.11777.i, 1           ; 2 uses
  %exitcond2024.not.i = icmp eq i32 %i.bnb, %8
  br i1 %exitcond2024.not.i, label %._crit_edge1780.i, label %.lr.ph1779.i, !llvm.loop !334

._crit_edge1780.i:                                ; preds = %.lr.ph1779.i, %middle.block818, %vec.epilog.middle.block842, %._crit_edge1766.i
  %.12837.lcssa.i = phi ptr [ %.11836.lcssa.i, %._crit_edge1766.i ], [ %i.bml, %vec.epilog.middle.block842 ], [ %i.bli, %middle.block818 ], [ %i.bna, %.lr.ph1779.i ]
  %.1756.lcssa.i = phi i32 [ %op.rdx, %._crit_edge1766.i ], [ %i.bms, %vec.epilog.middle.block842 ], [ %i.bmh, %middle.block818 ], [ %i.bmy, %.lr.ph1779.i ]
  store i32 %.1756.lcssa.i, ptr %.191785.i, align 4, !tbaa !28
  %i.bnc = getelementptr inbounds nuw i8, ptr %.191785.i, i64 4 ; 2 uses
  %i.bnd = add nuw nsw i32 %.38241784.i, 1        ; 2 uses
  %exitcond2025.not.i = icmp eq i32 %i.bnd, %6
  br i1 %exitcond2025.not.i, label %._crit_edge1787.i, label %.lr.ph1786.i, !llvm.loop !335

._crit_edge1787.i:                                ; preds = %._crit_edge1780.i, %.preheader1216.i
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader1216.i ], [ %i.bnc, %._crit_edge1780.i ]
  %i.bne = getelementptr inbounds i8, ptr %.31791.i, i64 %i.adu
  %i.bnf = add nuw nsw i32 %.37861789.i, 1        ; 2 uses
  %scevgep2021.i = getelementptr i8, ptr %indvars.iv2020.i, i64 %i.adu
  %exitcond2026.not.i = icmp eq i32 %i.bnf, %4
  br i1 %exitcond2026.not.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit, label %.preheader1219.i, !llvm.loop !336

_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit: ; preds = %._crit_edge1787.i, %bb.b, %bb.d, %.preheader1220.i
  ret void
}

declare void @_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.copysign.v4f32(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.copysign.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.round.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.round.v16f32(<16 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTSN4ncnn9AllocatorE", !9, i64 0}
!13 = !{!"_ZTSN4ncnn3MatE", !9, i64 0, !10, i64 8, !11, i64 16, !6, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !11, i64 64}
!14 = !{!13, !9, i64 0}
!15 = !{!13, !6, i64 44}
!16 = !{!13, !11, i64 16}
!17 = !{!5, !5, i64 0}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 8, i32 24}
!23 = !{!"branch_weights", i32 8, i32 120}
!24 = !{!13, !6, i64 24}
!25 = !{!13, !6, i64 40}
!26 = !{!13, !11, i64 64}
!27 = !{!11, !11, i64 0}
!28 = !{!6, !6, i64 0}
!29 = !{!"float", !5, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"branch_weights", i32 4, i32 28}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !"LVerDomain"}
!43 = distinct !{!43, !42}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !42}
!46 = distinct !{!46, !19, !20, !21}
!47 = distinct !{!47, !19, !20, !21}
!48 = distinct !{!48, !"LVerDomain"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !48}
!52 = distinct !{!52, !19, !20, !21}
!53 = distinct !{!53, !19, !20, !21}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !19, !20}
!56 = distinct !{!56, !19, !20}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19, !20, !21}
!59 = distinct !{!59, !19, !20, !21}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !19, !20}
!62 = distinct !{!62, !19}
!63 = !{!43}
!64 = !{!44}
!65 = !{!45}
!66 = !{!44, !43}
!67 = !{!49}
!68 = !{!50}
!69 = !{!51}
!70 = !{!50, !49}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !18}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !19}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !18}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !18}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !18}
!86 = distinct !{!86, !18}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !18}
!91 = distinct !{!91, !18}
!92 = distinct !{!92, !19}
!93 = distinct !{!93, !19}
!94 = distinct !{!94, !19}
!95 = distinct !{!95, !"LVerDomain"}
!96 = distinct !{!96, !95}
!97 = distinct !{!97, !95}
!98 = distinct !{!98, !95}
!99 = distinct !{!99, !19, !20, !21}
!100 = distinct !{!100, !19, !20, !21}
!101 = distinct !{!101, !"LVerDomain"}
!102 = distinct !{!102, !101}
!103 = distinct !{!103, !101}
!104 = distinct !{!104, !101}
!105 = distinct !{!105, !19, !20, !21}
!106 = distinct !{!106, !19, !20, !21}
!107 = distinct !{!107, !18}
!108 = distinct !{!108, !19, !20}
!109 = distinct !{!109, !19, !20}
!110 = distinct !{!110, !19}
!111 = distinct !{!111, !19, !20, !21}
!112 = distinct !{!112, !19, !20, !21}
!113 = distinct !{!113, !18}
!114 = distinct !{!114, !19, !20}
end_hunk_2
begin_hunk_3_@llvm.vector.reduce.add.v4i32
!124 = distinct !{!124, !19}
!125 = distinct !{!125, !19}
!126 = distinct !{!126, !18}
!127 = distinct !{!127, !19}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !19}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !18}
!132 = distinct !{!132, !19}
!133 = distinct !{!133, !19}
!134 = distinct !{!134, !19}
!135 = distinct !{!135, !19}
!136 = distinct !{!136, !18}
!137 = distinct !{!137, !19}
!138 = distinct !{!138, !19}
!139 = distinct !{!139, !19}
!140 = distinct !{!140, !19}
!141 = distinct !{!141, !19}
!142 = distinct !{!142, !19}
!143 = distinct !{!143, !19}
!144 = distinct !{!144, !19}
!145 = distinct !{!145, !19}
!146 = distinct !{!146, !19}
!147 = distinct !{!147, !19}
!148 = distinct !{!148, !19}
!149 = distinct !{!149, !19}
!150 = distinct !{!150, !19}
!151 = distinct !{!151, !"LVerDomain"}
!152 = distinct !{!152, !151}
!153 = distinct !{!153, !151}
!154 = distinct !{!154, !151}
!155 = distinct !{!155, !19, !20, !21}
!156 = distinct !{!156, !19}
!157 = distinct !{!157, !19, !20}
!158 = distinct !{!158, !19}
!159 = distinct !{!159, !"LVerDomain"}
!160 = distinct !{!160, !159}
!161 = distinct !{!161, !159}
!162 = distinct !{!162, !19, !20, !21}
!163 = distinct !{!163, !19, !20, !21}
!164 = distinct !{!164, !19}
!165 = distinct !{!165, !19, !20}
!166 = distinct !{!166, !19}
!167 = !{!152}
!168 = !{!153}
!169 = !{!154}
!170 = !{!153, !152}
!171 = !{!160}
!172 = !{!161}
!173 = distinct !{!173, !19}
!174 = distinct !{!174, !19}
!175 = distinct !{!175, !19}
!176 = distinct !{!176, !19}
!177 = distinct !{!177, !19}
!178 = distinct !{!178, !19}
!179 = distinct !{!179, !19}
!180 = distinct !{!180, !19}
!181 = distinct !{!181, !19}
!182 = distinct !{!182, !19}
!183 = distinct !{!183, !19}
!184 = distinct !{!184, !19}
!185 = distinct !{!185, !19}
!186 = distinct !{!186, !19}
!187 = distinct !{!187, !19}
!188 = distinct !{!188, !19}
!189 = distinct !{!189, !19}
!190 = distinct !{!190, !19}
!191 = distinct !{!191, !19}
!192 = distinct !{!192, !19}
!193 = distinct !{!193, !19}
!194 = distinct !{!194, !19}
!195 = distinct !{!195, !19}
!196 = distinct !{!196, !19}
!197 = distinct !{!197, !19}
!198 = distinct !{!198, !19}
!199 = distinct !{!199, !19}
!200 = distinct !{!200, !19}
!201 = distinct !{!201, !19}
!202 = distinct !{!202, !19}
!203 = distinct !{!203, !19}
!204 = distinct !{!204, !19}
!205 = distinct !{!205, !19}
!206 = distinct !{!206, !19}
!207 = distinct !{!207, !"LVerDomain"}
!208 = distinct !{!208, !207}
!209 = distinct !{!209, !207}
!210 = distinct !{!210, !207}
!211 = distinct !{!211, !19, !20, !21}
!212 = distinct !{!212, !19}
!213 = distinct !{!213, !19, !20}
!214 = distinct !{!214, !19}
!215 = distinct !{!215, !"LVerDomain"}
!216 = distinct !{!216, !215}
!217 = distinct !{!217, !215}
!218 = distinct !{!218, !19, !20, !21}
!219 = distinct !{!219, !19, !20, !21}
!220 = distinct !{!220, !19}
!221 = distinct !{!221, !19, !20}
!222 = distinct !{!222, !19}
!223 = !{!208}
!224 = !{!209}
!225 = !{!210}
!226 = !{!209, !208}
!227 = !{!216}
!228 = !{!217}
!229 = distinct !{!229, !19}
!230 = distinct !{!230, !19}
!231 = distinct !{!231, !19}
!232 = distinct !{!232, !19}
!233 = distinct !{!233, !19}
!234 = distinct !{!234, !19}
!235 = distinct !{!235, !19}
!236 = distinct !{!236, !19}
!237 = distinct !{!237, !19}
!238 = distinct !{!238, !19}
!239 = distinct !{!239, !19}
!240 = distinct !{!240, !19}
!241 = distinct !{!241, !19}
!242 = distinct !{!242, !19}
!243 = distinct !{!243, !19}
!244 = distinct !{!244, !19}
!245 = distinct !{!245, !19}
!246 = distinct !{!246, !19}
!247 = distinct !{!247, !19}
!248 = distinct !{!248, !19}
!249 = distinct !{!249, !19}
!250 = distinct !{!250, !19}
!251 = distinct !{!251, !19}
!252 = distinct !{!252, !19}
!253 = distinct !{!253, !19}
!254 = distinct !{!254, !19}
!255 = distinct !{!255, !19}
!256 = distinct !{!256, !19}
!257 = distinct !{!257, !19}
!258 = distinct !{!258, !19}
!259 = distinct !{!259, !19}
!260 = distinct !{!260, !19}
!261 = distinct !{!261, !19}
!262 = distinct !{!262, !19}
!263 = distinct !{!263, !19}
!264 = distinct !{!264, !19}
!265 = distinct !{!265, !19}
!266 = distinct !{!266, !19}
!267 = distinct !{!267, !19}
!268 = distinct !{!268, !19}
!269 = distinct !{!269, !19}
!270 = distinct !{!270, !19}
!271 = distinct !{!271, !19}
!272 = distinct !{!272, !19}
!273 = distinct !{!273, !19}
!274 = distinct !{!274, !19}
!275 = distinct !{!275, !19}
!276 = distinct !{!276, !19}
!277 = distinct !{!277, !19}
!278 = distinct !{!278, !19}
!279 = distinct !{!279, !19}
!280 = distinct !{!280, !19}
!281 = distinct !{!281, !19}
!282 = distinct !{!282, !19}
!283 = distinct !{!283, !19}
!284 = distinct !{!284, !19}
!285 = distinct !{!285, !19}
!286 = distinct !{!286, !19}
!287 = distinct !{!287, !19}
!288 = distinct !{!288, !19}
!289 = distinct !{!289, !19}
!290 = distinct !{!290, !19}
!291 = distinct !{!291, !19}
!292 = distinct !{!292, !19}
!293 = distinct !{!293, !19}
!294 = distinct !{!294, !19}
!295 = distinct !{!295, !19}
!296 = distinct !{!296, !19}
!297 = distinct !{!297, !19}
!298 = distinct !{!298, !19}
!299 = distinct !{!299, !19}
!300 = distinct !{!300, !19}
!301 = distinct !{!301, !19}
!302 = distinct !{!302, !19, !20, !21}
!303 = distinct !{!303, !19, !20, !21}
!304 = distinct !{!304, !19, !21, !20}
!305 = distinct !{!305, !19, !21, !20}
!306 = distinct !{!306, !19}
!307 = distinct !{!307, !19, !20, !21}
!308 = distinct !{!308, !19, !20, !21}
!309 = distinct !{!309, !19, !20, !21}
!310 = distinct !{!310, !19, !20, !21}
!311 = distinct !{!311, !19, !21, !20}
!312 = distinct !{!312, !19, !21, !20}
!313 = distinct !{!313, !19}
!314 = distinct !{!314, !19}
!315 = distinct !{!315, !19}
!316 = distinct !{!316, !19}
!317 = distinct !{!317, !19}
!318 = distinct !{!318, !19}
!319 = distinct !{!319, !19}
!320 = distinct !{!320, !19}
!321 = distinct !{!321, !19, !20, !21}
!322 = distinct !{!322, !19, !20, !21}
!323 = distinct !{!323, !19, !20, !21}
!324 = distinct !{!324, !19, !21, !20}
!325 = distinct !{!325, !19, !21, !20}
!326 = distinct !{!326, !19, !20, !21}
!327 = distinct !{!327, !19, !20, !21}
!328 = distinct !{!328, !19, !21, !20}
!329 = distinct !{!329, !19}
!330 = distinct !{!330, !19, !20, !21}
!331 = distinct !{!331, !19, !21, !20}
!332 = distinct !{!332, !19, !20, !21}
!333 = distinct !{!333, !19, !20, !21}
!334 = distinct !{!334, !19, !21, !20}
!335 = distinct !{!335, !19}
!336 = distinct !{!336, !19}
!337 = !{!"short", !5, i64 0}
!338 = !{!337, !337, i64 0}
!339 = !{!"branch_weights", i32 4, i32 12}
end_hunk_3
