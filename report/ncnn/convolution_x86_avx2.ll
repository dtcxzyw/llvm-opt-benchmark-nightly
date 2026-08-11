inline.NumInlined: 86
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN4ncnn29unpack_output_tile_int32_avx2ERKNS_3MatERS0_iiii:bb.a
  %i.hf = bitcast <8 x float> %i.hb to <8 x i32>
  %i.hg = shufflevector <8 x float> %i.gs, <8 x float> %i.gw, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.hh = bitcast <8 x float> %i.hg to <8 x i32>  ; 2 uses
  %i.hi = shufflevector <8 x float> %i.gt, <8 x float> %i.gx, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.hj = bitcast <8 x float> %i.hi to <8 x i32>  ; 2 uses
  %i.hk = shufflevector <8 x i32> %i.hc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hk, ptr %.4588267.i, align 1, !tbaa !20
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.4588267.i, i64 %i.d
  %i.hm = shufflevector <8 x i32> %i.hd, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hm, ptr %i.hl, align 1, !tbaa !20
  %i.hn = getelementptr inbounds nuw i8, ptr %.4588267.i, i64 %.idx661.i
  %i.ho = shufflevector <8 x i32> %i.he, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.ho, ptr %i.hn, align 1, !tbaa !20
  %i.hp = getelementptr inbounds nuw i8, ptr %.4588267.i, i64 %.idx662.i
  %i.hq = shufflevector <8 x i32> %i.hf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hq, ptr %i.hp, align 1, !tbaa !20
  %i.hr = getelementptr inbounds nuw i8, ptr %.4588267.i, i64 %.idx663.i
  %i.hs = shufflevector <8 x i32> %i.hh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hs, ptr %i.hr, align 1, !tbaa !20
  %i.ht = getelementptr inbounds nuw i8, ptr %.4588267.i, i64 %.idx664.i
  %i.hu = shufflevector <8 x i32> %i.hh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.hu, ptr %i.ht, align 1, !tbaa !20
  %i.hv = getelementptr inbounds nuw i8, ptr %.4588267.i, i64 %.idx665.i
  %i.hw = shufflevector <8 x i32> %i.hj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hw, ptr %i.hv, align 1, !tbaa !20
  %i.hx = getelementptr inbounds nuw i8, ptr %.4588267.i, i64 %.idx666.i
  %i.hy = shufflevector <8 x i32> %i.hj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.hy, ptr %i.hx, align 1, !tbaa !20
  %i.hz = getelementptr inbounds nuw i8, ptr %.4588267.i, i64 16
  br label %.thread219.i

.thread219.i:                                     ; preds = %bb.f, %bb.e, %.thread216.i, %.lr.ph269.i
  %.7591.i = phi ptr [ %i.hz, %bb.f ], [ %.4588267.i, %.lr.ph269.i ], [ %i.gf, %.thread216.i ], [ %i.gp, %bb.e ] ; 2 uses
  %i.ia = add nuw nsw i32 %.1601266.i, 4          ; 3 uses
  %i.ib = or disjoint i32 %i.ia, 3
  %i.ic = icmp slt i32 %i.ib, %5
  br i1 %i.ic, label %.lr.ph269.i, label %.preheader259.i, !llvm.loop !436

.preheader258.i:                                  ; preds = %.thread224.i, %.preheader259.i
  %.2602.lcssa.i = phi i32 [ %.1601.lcssa.i, %.preheader259.i ], [ %i.jg, %.thread224.i ] ; 2 uses
  %.8592.lcssa.i = phi ptr [ %.4588.lcssa.i, %.preheader259.i ], [ %.11595.i, %.thread224.i ]
  %.3.lcssa.i = phi ptr [ %.2.lcssa.i, %.preheader259.i ], [ %i.ih, %.thread224.i ] ; 2 uses
  %i.id = icmp slt i32 %.2602.lcssa.i, %5
  br i1 %i.id, label %.lr.ph283.i, label %._crit_edge.i

.lr.ph276.i:                                      ; preds = %.preheader259.i, %.thread224.i
  %.3275.i = phi ptr [ %i.ih, %.thread224.i ], [ %.2.lcssa.i, %.preheader259.i ] ; 3 uses
  %.8592274.i = phi ptr [ %.11595.i, %.thread224.i ], [ %.4588.lcssa.i, %.preheader259.i ] ; 16 uses
  %.2602273.i = phi i32 [ %i.jg, %.thread224.i ], [ %.1601.lcssa.i, %.preheader259.i ]
  %i.ie = load <8 x i32>, ptr %.3275.i, align 32, !tbaa !20 ; 11 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.3275.i, i64 32
  %i.ig = load <8 x i32>, ptr %i.if, align 32, !tbaa !20 ; 11 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.3275.i, i64 64 ; 2 uses
  %i.ii = shufflevector <8 x i32> %i.ie, <8 x i32> %i.ig, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 2 uses
  %i.ij = shufflevector <8 x i32> %i.ig, <8 x i32> %i.ie, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 2 uses
  switch i32 %i.b, label %.thread224.i [
    i32 8, label %.thread221.i
    i32 4, label %bb.g
    i32 1, label %bb.h
  ]

.thread221.i:                                     ; preds = %.lr.ph276.i
  store <8 x i32> %i.ii, ptr %.8592274.i, align 1, !tbaa !20
  %i.ik = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 32
  store <8 x i32> %i.ij, ptr %i.ik, align 1, !tbaa !20
  %i.il = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 64
  br label %.thread224.i

bb.g:                                             ; preds = %.lr.ph276.i
  %i.im = shufflevector <8 x i32> %i.ii, <8 x i32> %i.ij, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.in = shufflevector <8 x i32> %i.ie, <8 x i32> %i.ig, <8 x i32> <i32 4, i32 13, i32 6, i32 15, i32 12, i32 5, i32 14, i32 7>
  store <8 x i32> %i.im, ptr %.8592274.i, align 1, !tbaa !20
  %i.io = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 %.idx663.i
  store <8 x i32> %i.in, ptr %i.io, align 1, !tbaa !20
  %i.ip = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 32
  br label %.thread224.i

bb.h:                                             ; preds = %.lr.ph276.i
  %i.iq = shufflevector <8 x i32> %i.ie, <8 x i32> %i.ig, <2 x i32> <i32 0, i32 8>
  store <2 x i32> %i.iq, ptr %.8592274.i, align 4, !tbaa !92
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.8592274.i, i64 %i.d
  %i.is = shufflevector <8 x i32> %i.ig, <8 x i32> %i.ie, <2 x i32> <i32 1, i32 9>
  store <2 x i32> %i.is, ptr %i.ir, align 4, !tbaa !92
  %i.it = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 %.idx661.i
  %i.iu = shufflevector <8 x i32> %i.ie, <8 x i32> %i.ig, <2 x i32> <i32 2, i32 10>
  store <2 x i32> %i.iu, ptr %i.it, align 4, !tbaa !92
  %i.iv = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 %.idx662.i
  %i.iw = shufflevector <8 x i32> %i.ig, <8 x i32> %i.ie, <2 x i32> <i32 3, i32 11>
  store <2 x i32> %i.iw, ptr %i.iv, align 4, !tbaa !92
  %i.ix = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 %.idx663.i
  %i.iy = shufflevector <8 x i32> %i.ie, <8 x i32> %i.ig, <2 x i32> <i32 4, i32 12>
  store <2 x i32> %i.iy, ptr %i.ix, align 4, !tbaa !92
  %i.iz = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 %.idx664.i
  %i.ja = shufflevector <8 x i32> %i.ig, <8 x i32> %i.ie, <2 x i32> <i32 5, i32 13>
  store <2 x i32> %i.ja, ptr %i.iz, align 4, !tbaa !92
  %i.jb = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 %.idx665.i
  %i.jc = shufflevector <8 x i32> %i.ie, <8 x i32> %i.ig, <2 x i32> <i32 6, i32 14>
  store <2 x i32> %i.jc, ptr %i.jb, align 4, !tbaa !92
  %i.jd = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 %.idx666.i
  %i.je = shufflevector <8 x i32> %i.ig, <8 x i32> %i.ie, <2 x i32> <i32 7, i32 15>
  store <2 x i32> %i.je, ptr %i.jd, align 4, !tbaa !92
  %i.jf = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 8
  br label %.thread224.i

.thread224.i:                                     ; preds = %bb.h, %bb.g, %.thread221.i, %.lr.ph276.i
  %.11595.i = phi ptr [ %i.jf, %bb.h ], [ %.8592274.i, %.lr.ph276.i ], [ %i.il, %.thread221.i ], [ %i.ip, %bb.g ] ; 2 uses
  %i.jg = add nuw nsw i32 %.2602273.i, 2          ; 3 uses
  %i.jh = or disjoint i32 %i.jg, 1
  %i.ji = icmp slt i32 %i.jh, %5
  br i1 %i.ji, label %.lr.ph276.i, label %.preheader258.i, !llvm.loop !437

.lr.ph283.i:                                      ; preds = %.preheader258.i, %.thread229.i
  %.4282.i = phi ptr [ %i.jk, %.thread229.i ], [ %.3.lcssa.i, %.preheader258.i ] ; 2 uses
  %.12596281.i = phi ptr [ %.15599.i, %.thread229.i ], [ %.8592.lcssa.i, %.preheader258.i ] ; 15 uses
  %.3603280.i = phi i32 [ %i.ka, %.thread229.i ], [ %.2602.lcssa.i, %.preheader258.i ]
  %i.jj = load <4 x i64>, ptr %.4282.i, align 32, !tbaa !20 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.4282.i, i64 32 ; 2 uses
  switch i32 %i.b, label %.thread229.i [
    i32 8, label %.thread226.i
    i32 4, label %bb.i
    i32 1, label %bb.j
  ]

.thread226.i:                                     ; preds = %.lr.ph283.i
  store <4 x i64> %i.jj, ptr %.12596281.i, align 1, !tbaa !20
  %i.jl = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 32
  br label %.thread229.i

bb.i:                                             ; preds = %.lr.ph283.i
  %i.jm = bitcast <4 x i64> %i.jj to <8 x i32>    ; 2 uses
  %i.jn = shufflevector <8 x i32> %i.jm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.jn, ptr %.12596281.i, align 16, !tbaa !20
  %i.jo = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 %.idx663.i
  %i.jp = shufflevector <8 x i32> %i.jm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.jp, ptr %i.jo, align 16, !tbaa !20
  %i.jq = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 16
  br label %.thread229.i

bb.j:                                             ; preds = %.lr.ph283.i
  %i.jr = bitcast <4 x i64> %i.jj to <8 x i32>    ; 8 uses
  %.sroa.096.0.vec.extract.i = extractelement <8 x i32> %i.jr, i64 0
  store i32 %.sroa.096.0.vec.extract.i, ptr %.12596281.i, align 4, !tbaa !92
  %.sroa.096.4.vec.extract.i = extractelement <8 x i32> %i.jr, i64 1
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.12596281.i, i64 %i.d
  store i32 %.sroa.096.4.vec.extract.i, ptr %i.js, align 4, !tbaa !92
  %.sroa.096.8.vec.extract.i = extractelement <8 x i32> %i.jr, i64 2
  %i.jt = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 %.idx661.i
  store i32 %.sroa.096.8.vec.extract.i, ptr %i.jt, align 4, !tbaa !92
  %.sroa.096.12.vec.extract.i = extractelement <8 x i32> %i.jr, i64 3
  %i.ju = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 %.idx662.i
  store i32 %.sroa.096.12.vec.extract.i, ptr %i.ju, align 4, !tbaa !92
  %.sroa.096.16.vec.extract.i = extractelement <8 x i32> %i.jr, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 %.idx663.i
  store i32 %.sroa.096.16.vec.extract.i, ptr %i.jv, align 4, !tbaa !92
  %.sroa.096.20.vec.extract.i = extractelement <8 x i32> %i.jr, i64 5
  %i.jw = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 %.idx664.i
  store i32 %.sroa.096.20.vec.extract.i, ptr %i.jw, align 4, !tbaa !92
  %.sroa.096.24.vec.extract.i = extractelement <8 x i32> %i.jr, i64 6
  %i.jx = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 %.idx665.i
  store i32 %.sroa.096.24.vec.extract.i, ptr %i.jx, align 4, !tbaa !92
  %.sroa.096.28.vec.extract.i = extractelement <8 x i32> %i.jr, i64 7
  %i.jy = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 %.idx666.i
  store i32 %.sroa.096.28.vec.extract.i, ptr %i.jy, align 4, !tbaa !92
  %i.jz = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 4
  br label %.thread229.i

.thread229.i:                                     ; preds = %bb.j, %bb.i, %.thread226.i, %.lr.ph283.i
  %.15599.i = phi ptr [ %i.jz, %bb.j ], [ %.12596281.i, %.lr.ph283.i ], [ %i.jl, %.thread226.i ], [ %i.jq, %bb.i ]
  %i.ka = add nuw nsw i32 %.3603280.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ka, %5
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph283.i, !llvm.loop !438

._crit_edge.i:                                    ; preds = %.thread229.i, %.preheader258.i
  %.4.lcssa.i = phi ptr [ %.3.lcssa.i, %.preheader258.i ], [ %i.jk, %.thread229.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.kb = or disjoint i64 %indvars.iv.next.i, 7
  %i.kc = icmp samesign ult i64 %i.kb, %i.j
  br i1 %i.kc, label %bb.b, label %.preheader257.loopexit.i, !llvm.loop !439

.preheader253.loopexit.i:                         ; preds = %._crit_edge317.i
  %i.kd = trunc nuw nsw i64 %indvars.iv.next441.i to i32
  br label %.preheader253.i

.preheader253.i:                                  ; preds = %.preheader253.loopexit.i, %.preheader257.i
  %.1581.lcssa.i = phi i32 [ %.0580.lcssa.i, %.preheader257.i ], [ %i.kd, %.preheader253.loopexit.i ] ; 3 uses
  %.5.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader257.i ], [ %.9.lcssa.i, %.preheader253.loopexit.i ] ; 2 uses
  %i.ke = or disjoint i32 %.1581.lcssa.i, 1
  %i.kf = icmp slt i32 %i.ke, %3
  br i1 %i.kf, label %.lr.ph361.i, label %.preheader249.i

.lr.ph361.i:                                      ; preds = %.preheader253.i
  %i.kg = sext i32 %4 to i64
  %i.kh = icmp sgt i32 %5, 7
  %i.ki = and i32 %5, -8
  %i.kj = zext nneg i32 %.1581.lcssa.i to i64
  %i.kk = sext i32 %3 to i64
  %i.kl = sext i32 %2 to i64
  %invariant.op488.i = add nsw i64 %i.kk, -1
  %i.km = shl nuw nsw i64 %i.d, 2                 ; 4 uses
  %i.kn = add nuw i64 %i.km, 4                    ; 2 uses
  %i.ko = add i32 %5, -2
  br label %bb.r

bb.k:                                             ; preds = %._crit_edge317.i, %.lr.ph328.i
  %indvars.iv440.i = phi i64 [ %i.s, %.lr.ph328.i ], [ %indvars.iv.next441.i, %._crit_edge317.i ] ; 2 uses
  %.5327.i = phi ptr [ %.0.lcssa.i, %.lr.ph328.i ], [ %.9.lcssa.i, %._crit_edge317.i ] ; 2 uses
  %i.kp = load ptr, ptr %1, align 8, !tbaa !9
  %i.kq = add nsw i64 %indvars.iv440.i, %i.u
  %i.kr = mul i64 %i.kq, %i.d
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.kr
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.p ; 2 uses
  br i1 %i.q, label %.lr.ph295.i, label %.preheader256.i

.preheader256.i:                                  ; preds = %bb.m, %bb.k
  %.0624.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.r, %bb.m ] ; 3 uses
  %.0612.lcssa.i = phi ptr [ %i.kt, %bb.k ], [ %.2614.i, %bb.m ] ; 2 uses
  %.6.lcssa.i = phi ptr [ %.5327.i, %bb.k ], [ %i.oj, %bb.m ] ; 2 uses
  %i.ku = or disjoint i32 %.0624.lcssa.i, 3
  %i.kv = icmp slt i32 %i.ku, %5
  br i1 %i.kv, label %.lr.ph302.i, label %.preheader255.i

.lr.ph295.i:                                      ; preds = %bb.k, %bb.m
  %.6293.i = phi ptr [ %i.oj, %bb.m ], [ %.5327.i, %bb.k ] ; 9 uses
  %.0612292.i = phi ptr [ %.2614.i, %bb.m ], [ %i.kt, %bb.k ] ; 16 uses
  %.0624291.i = phi i32 [ %i.ok, %bb.m ], [ 0, %bb.k ]
  %i.kw = load <4 x i32>, ptr %.6293.i, align 16, !tbaa !20 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.6293.i, i64 16
  %i.ky = load <4 x i32>, ptr %i.kx, align 16, !tbaa !20 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.6293.i, i64 32
  %i.la = load <4 x i32>, ptr %i.kz, align 16, !tbaa !20 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.6293.i, i64 48
  %i.lc = load <4 x i32>, ptr %i.lb, align 16, !tbaa !20 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.6293.i, i64 64
  %i.le = load <4 x i32>, ptr %i.ld, align 16, !tbaa !20 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.6293.i, i64 80
  %i.lg = load <4 x i32>, ptr %i.lf, align 16, !tbaa !20 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.6293.i, i64 96
  %i.li = load <4 x i32>, ptr %i.lh, align 16, !tbaa !20 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.6293.i, i64 112
  %i.lk = load <4 x i32>, ptr %i.lj, align 16, !tbaa !20 ; 2 uses
  %i.ll = shufflevector <4 x i32> %i.kw, <4 x i32> %i.li, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.lm = bitcast <4 x i32> %i.ll to <2 x i64>    ; 2 uses
  %i.ln = shufflevector <4 x i32> %i.kw, <4 x i32> %i.li, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.lo = bitcast <4 x i32> %i.ln to <2 x i64>    ; 2 uses
  %i.lp = shufflevector <4 x i32> %i.ky, <4 x i32> %i.lk, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.lq = bitcast <4 x i32> %i.lp to <2 x i64>    ; 2 uses
  %i.lr = shufflevector <4 x i32> %i.ky, <4 x i32> %i.lk, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.ls = bitcast <4 x i32> %i.lr to <2 x i64>    ; 2 uses
  %i.lt = shufflevector <4 x i32> %i.la, <4 x i32> %i.le, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.lu = bitcast <4 x i32> %i.lt to <2 x i64>    ; 2 uses
  %i.lv = shufflevector <4 x i32> %i.la, <4 x i32> %i.le, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.lw = bitcast <4 x i32> %i.lv to <2 x i64>    ; 2 uses
  %i.lx = shufflevector <4 x i32> %i.lc, <4 x i32> %i.lg, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.ly = bitcast <4 x i32> %i.lx to <2 x i64>    ; 2 uses
  %i.lz = shufflevector <4 x i32> %i.lc, <4 x i32> %i.lg, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.ma = bitcast <4 x i32> %i.lz to <2 x i64>    ; 2 uses
  %i.mb = shufflevector <2 x i64> %i.lm, <2 x i64> %i.lu, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.mc = shufflevector <2 x i64> %i.lm, <2 x i64> %i.lu, <2 x i32> <i32 1, i32 3>
  %i.md = shufflevector <2 x i64> %i.lw, <2 x i64> %i.lo, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.me = shufflevector <2 x i64> %i.lw, <2 x i64> %i.lo, <2 x i32> <i32 1, i32 3>
  %i.mf = shufflevector <2 x i64> %i.lq, <2 x i64> %i.ly, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.mg = shufflevector <2 x i64> %i.lq, <2 x i64> %i.ly, <2 x i32> <i32 1, i32 3>
  %i.mh = shufflevector <2 x i64> %i.ma, <2 x i64> %i.ls, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.mi = shufflevector <2 x i64> %i.ma, <2 x i64> %i.ls, <2 x i32> <i32 1, i32 3>
  %i.mj = bitcast <2 x i64> %i.mc to <4 x i32>    ; 3 uses
  %i.mk = bitcast <2 x i64> %i.me to <4 x i32>    ; 3 uses
  %i.ml = bitcast <2 x i64> %i.mg to <4 x i32>    ; 3 uses
  %i.mm = bitcast <2 x i64> %i.mi to <4 x i32>    ; 3 uses
  switch i32 %i.b, label %bb.m [
    i32 4, label %.thread231.i
    i32 1, label %bb.l
  ]

.thread231.i:                                     ; preds = %.lr.ph295.i
  %i.mn = shufflevector <4 x i32> %i.mm, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.mo = shufflevector <4 x i32> %i.ml, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.mp = shufflevector <4 x i32> %i.mk, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.mq = shufflevector <4 x i32> %i.mj, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <2 x i64> %i.mb, ptr %.0612292.i, align 16, !tbaa !20
  %i.mr = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 16
  store <4 x i32> %i.mq, ptr %i.mr, align 16, !tbaa !20
  %i.ms = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 32
  store <2 x i64> %i.md, ptr %i.ms, align 16, !tbaa !20
  %i.mt = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 48
  store <4 x i32> %i.mp, ptr %i.mt, align 16, !tbaa !20
  %i.mu = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 64
  store <2 x i64> %i.mf, ptr %i.mu, align 16, !tbaa !20
  %i.mv = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 80
  store <4 x i32> %i.mo, ptr %i.mv, align 16, !tbaa !20
  %i.mw = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 96
  store <2 x i64> %i.mh, ptr %i.mw, align 16, !tbaa !20
  %i.mx = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 112
  store <4 x i32> %i.mn, ptr %i.mx, align 16, !tbaa !20
  %i.my = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 128
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph295.i
  %i.mz = bitcast <2 x i64> %i.mb to <4 x i32>    ; 2 uses
  %i.na = shufflevector <4 x i32> %i.mz, <4 x i32> %i.mj, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.nb = bitcast <4 x i32> %i.na to <2 x i64>    ; 2 uses
  %i.nc = shufflevector <4 x i32> %i.mz, <4 x i32> %i.mj, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.nd = bitcast <4 x i32> %i.nc to <2 x i64>    ; 2 uses
  %i.ne = bitcast <2 x i64> %i.md to <4 x i32>    ; 2 uses
  %i.nf = shufflevector <4 x i32> %i.ne, <4 x i32> %i.mk, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.ng = bitcast <4 x i32> %i.nf to <2 x i64>    ; 2 uses
  %i.nh = shufflevector <4 x i32> %i.ne, <4 x i32> %i.mk, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.ni = bitcast <4 x i32> %i.nh to <2 x i64>    ; 2 uses
  %i.nj = shufflevector <2 x i64> %i.nb, <2 x i64> %i.ng, <2 x i32> <i32 0, i32 2>
  %i.nk = shufflevector <2 x i64> %i.nb, <2 x i64> %i.ng, <2 x i32> <i32 1, i32 3>
  %i.nl = shufflevector <2 x i64> %i.nd, <2 x i64> %i.ni, <2 x i32> <i32 0, i32 2>
  %i.nm = shufflevector <2 x i64> %i.nd, <2 x i64> %i.ni, <2 x i32> <i32 1, i32 3>
  %i.nn = bitcast <2 x i64> %i.mf to <4 x i32>    ; 2 uses
  %i.no = shufflevector <4 x i32> %i.nn, <4 x i32> %i.ml, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.np = bitcast <4 x i32> %i.no to <2 x i64>    ; 2 uses
  %i.nq = shufflevector <4 x i32> %i.nn, <4 x i32> %i.ml, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.nr = bitcast <4 x i32> %i.nq to <2 x i64>    ; 2 uses
  %i.ns = bitcast <2 x i64> %i.mh to <4 x i32>    ; 2 uses
  %i.nt = shufflevector <4 x i32> %i.ns, <4 x i32> %i.mm, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.nu = bitcast <4 x i32> %i.nt to <2 x i64>    ; 2 uses
  %i.nv = shufflevector <4 x i32> %i.ns, <4 x i32> %i.mm, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.nw = bitcast <4 x i32> %i.nv to <2 x i64>    ; 2 uses
  %i.nx = shufflevector <2 x i64> %i.np, <2 x i64> %i.nu, <2 x i32> <i32 0, i32 2>
  %i.ny = shufflevector <2 x i64> %i.np, <2 x i64> %i.nu, <2 x i32> <i32 1, i32 3>
  %i.nz = shufflevector <2 x i64> %i.nr, <2 x i64> %i.nw, <2 x i32> <i32 0, i32 2>
  %i.oa = shufflevector <2 x i64> %i.nr, <2 x i64> %i.nw, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.nj, ptr %.0612292.i, align 1, !tbaa !20
  %i.ob = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 16
  store <2 x i64> %i.nx, ptr %i.ob, align 1, !tbaa !20
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.0612292.i, i64 %i.d ; 2 uses
  store <2 x i64> %i.nk, ptr %i.oc, align 1, !tbaa !20
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  store <2 x i64> %i.ny, ptr %i.od, align 1, !tbaa !20
  %i.oe = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 %.idx641.i ; 2 uses
  store <2 x i64> %i.nl, ptr %i.oe, align 1, !tbaa !20
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  store <2 x i64> %i.nz, ptr %i.of, align 1, !tbaa !20
  %i.og = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 %.idx642.i ; 2 uses
  store <2 x i64> %i.nm, ptr %i.og, align 1, !tbaa !20
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  store <2 x i64> %i.oa, ptr %i.oh, align 1, !tbaa !20
  %i.oi = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread231.i, %.lr.ph295.i
  %.2614.i = phi ptr [ %i.oi, %bb.l ], [ %.0612292.i, %.lr.ph295.i ], [ %i.my, %.thread231.i ] ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.6293.i, i64 128 ; 2 uses
  %i.ok = add nuw nsw i32 %.0624291.i, 8          ; 2 uses
  %i.ol = or disjoint i32 %i.ok, 7
  %i.om = icmp slt i32 %i.ol, %5
  br i1 %i.om, label %.lr.ph295.i, label %.preheader256.i, !llvm.loop !440

.preheader255.i:                                  ; preds = %bb.o, %.preheader256.i
  %.1625.lcssa.i = phi i32 [ %.0624.lcssa.i, %.preheader256.i ], [ %i.qi, %bb.o ] ; 3 uses
  %.3615.lcssa.i = phi ptr [ %.0612.lcssa.i, %.preheader256.i ], [ %.5617.i, %bb.o ] ; 2 uses
  %.7.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader256.i ], [ %i.qh, %bb.o ] ; 2 uses
  %i.on = or disjoint i32 %.1625.lcssa.i, 1
  %i.oo = icmp slt i32 %i.on, %5
  br i1 %i.oo, label %.lr.ph309.i, label %.preheader254.i

.lr.ph302.i:                                      ; preds = %.preheader256.i, %bb.o
  %.7301.i = phi ptr [ %i.qh, %bb.o ], [ %.6.lcssa.i, %.preheader256.i ] ; 5 uses
  %.3615300.i = phi ptr [ %.5617.i, %bb.o ], [ %.0612.lcssa.i, %.preheader256.i ] ; 11 uses
  %.1625299.i = phi i32 [ %i.qi, %bb.o ], [ %.0624.lcssa.i, %.preheader256.i ]
  %i.op = load <4 x i32>, ptr %.7301.i, align 16, !tbaa !20 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.7301.i, i64 16
  %i.or = load <4 x i32>, ptr %i.oq, align 16, !tbaa !20 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.7301.i, i64 32
  %i.ot = load <4 x i32>, ptr %i.os, align 16, !tbaa !20 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.7301.i, i64 48
  %i.ov = load <4 x i32>, ptr %i.ou, align 16, !tbaa !20 ; 2 uses
  %i.ow = shufflevector <4 x i32> %i.op, <4 x i32> %i.ov, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.ox = bitcast <4 x i32> %i.ow to <2 x i64>    ; 2 uses
  %i.oy = shufflevector <4 x i32> %i.op, <4 x i32> %i.ov, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.oz = bitcast <4 x i32> %i.oy to <2 x i64>    ; 2 uses
  %i.pa = shufflevector <4 x i32> %i.ot, <4 x i32> %i.or, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.pb = bitcast <4 x i32> %i.pa to <2 x i64>    ; 2 uses
  %i.pc = shufflevector <4 x i32> %i.ot, <4 x i32> %i.or, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.pd = bitcast <4 x i32> %i.pc to <2 x i64>    ; 2 uses
  %i.pe = shufflevector <2 x i64> %i.ox, <2 x i64> %i.pb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.pf = shufflevector <2 x i64> %i.ox, <2 x i64> %i.pb, <2 x i32> <i32 1, i32 3>
  %i.pg = shufflevector <2 x i64> %i.pd, <2 x i64> %i.oz, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ph = shufflevector <2 x i64> %i.pd, <2 x i64> %i.oz, <2 x i32> <i32 1, i32 3>
  %i.pi = bitcast <2 x i64> %i.pf to <4 x i32>    ; 3 uses
  %.cast637.i = bitcast <2 x i64> %i.ph to <4 x i32> ; 3 uses
  switch i32 %i.b, label %bb.o [
    i32 4, label %.thread233.i
    i32 1, label %bb.n
  ]

.thread233.i:                                     ; preds = %.lr.ph302.i
  %i.pj = shufflevector <4 x i32> %.cast637.i, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.pk = shufflevector <4 x i32> %i.pi, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <2 x i64> %i.pe, ptr %.3615300.i, align 16, !tbaa !20
  %i.pl = getelementptr inbounds nuw i8, ptr %.3615300.i, i64 16
  store <4 x i32> %i.pk, ptr %i.pl, align 16, !tbaa !20
  %i.pm = getelementptr inbounds nuw i8, ptr %.3615300.i, i64 32
  store <2 x i64> %i.pg, ptr %i.pm, align 16, !tbaa !20
  %i.pn = getelementptr inbounds nuw i8, ptr %.3615300.i, i64 48
  store <4 x i32> %i.pj, ptr %i.pn, align 16, !tbaa !20
  %i.po = getelementptr inbounds nuw i8, ptr %.3615300.i, i64 64
end_hunk_0
begin_hunk_1_@_ZN4ncnn29unpack_output_tile_int32_avx2ERKNS_3MatERS0_iiii:bb.a
  %i.ru = getelementptr inbounds nuw i8, ptr %.9315.us.i, i64 80
  %i.rv = load <2 x i64>, ptr %i.ru, align 16, !tbaa !20
  store <2 x i64> %i.rv, ptr %i.rt, align 16, !tbaa !20
  %i.rw = getelementptr inbounds nuw i8, ptr %.9621314.us.i, i64 96
  %i.rx = getelementptr inbounds nuw i8, ptr %.9315.us.i, i64 96
  %i.ry = load <2 x i64>, ptr %i.rx, align 16, !tbaa !20
  store <2 x i64> %i.ry, ptr %i.rw, align 16, !tbaa !20
  %i.rz = getelementptr inbounds nuw i8, ptr %.9621314.us.i, i64 112
  %i.sa = getelementptr inbounds nuw i8, ptr %.9315.us.i, i64 112
  %i.sb = load <2 x i64>, ptr %i.sa, align 16, !tbaa !20
  store <2 x i64> %i.sb, ptr %i.rz, align 16, !tbaa !20
  %i.sc = getelementptr inbounds nuw i8, ptr %.9621314.us.i, i64 128
  %i.sd = getelementptr inbounds nuw i8, ptr %.9315.us.i, i64 128 ; 2 uses
  %i.se = add nuw nsw i32 %.3627313.us.i, 8       ; 2 uses
  %exitcond438.not.i.7 = icmp eq i32 %i.se, %5
  br i1 %exitcond438.not.i.7, label %._crit_edge317.i, label %.thread237.us.i, !llvm.loop !443

.lr.ph316.split.us319.i:                          ; preds = %.lr.ph316.split.us319.i.prol.loopexit, %.lr.ph316.split.us319.i
  %.9315.us320.i = phi ptr [ %i.sq, %.lr.ph316.split.us319.i ], [ %.9315.us320.i.unr, %.lr.ph316.split.us319.i.prol.loopexit ] ; 3 uses
  %.9621314.us321.i = phi ptr [ %i.sp, %.lr.ph316.split.us319.i ], [ %.9621314.us321.i.unr, %.lr.ph316.split.us319.i.prol.loopexit ] ; 6 uses
  %.3627313.us322.i = phi i32 [ %i.sr, %.lr.ph316.split.us319.i ], [ %.3627313.us322.i.unr, %.lr.ph316.split.us319.i.prol.loopexit ]
  %i.sf = load <4 x i32>, ptr %.9315.us320.i, align 16, !tbaa !20 ; 4 uses
  %.sroa.0.0.vec.extract.us.i = extractelement <4 x i32> %i.sf, i64 0
  store i32 %.sroa.0.0.vec.extract.us.i, ptr %.9621314.us321.i, align 4, !tbaa !92
  %.sroa.0.4.vec.extract.us.i = extractelement <4 x i32> %i.sf, i64 1
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.9621314.us321.i, i64 %i.d
  store i32 %.sroa.0.4.vec.extract.us.i, ptr %i.sg, align 4, !tbaa !92
  %.sroa.0.8.vec.extract.us.i = extractelement <4 x i32> %i.sf, i64 2
  %i.sh = getelementptr inbounds nuw i8, ptr %.9621314.us321.i, i64 %.idx641.i
  store i32 %.sroa.0.8.vec.extract.us.i, ptr %i.sh, align 4, !tbaa !92
  %.sroa.0.12.vec.extract.us.i = extractelement <4 x i32> %i.sf, i64 3
  %i.si = getelementptr inbounds nuw i8, ptr %.9621314.us321.i, i64 %.idx642.i
  store i32 %.sroa.0.12.vec.extract.us.i, ptr %i.si, align 4, !tbaa !92
  %i.sj = getelementptr inbounds nuw i8, ptr %.9621314.us321.i, i64 4 ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.9315.us320.i, i64 16
  %i.sl = load <4 x i32>, ptr %i.sk, align 16, !tbaa !20 ; 4 uses
  %.sroa.0.0.vec.extract.us.i.1 = extractelement <4 x i32> %i.sl, i64 0
  store i32 %.sroa.0.0.vec.extract.us.i.1, ptr %i.sj, align 4, !tbaa !92
  %.sroa.0.4.vec.extract.us.i.1 = extractelement <4 x i32> %i.sl, i64 1
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.d
  store i32 %.sroa.0.4.vec.extract.us.i.1, ptr %i.sm, align 4, !tbaa !92
  %.sroa.0.8.vec.extract.us.i.1 = extractelement <4 x i32> %i.sl, i64 2
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 %.idx641.i
  store i32 %.sroa.0.8.vec.extract.us.i.1, ptr %i.sn, align 4, !tbaa !92
  %.sroa.0.12.vec.extract.us.i.1 = extractelement <4 x i32> %i.sl, i64 3
  %i.so = getelementptr inbounds nuw i8, ptr %i.sj, i64 %.idx642.i
  store i32 %.sroa.0.12.vec.extract.us.i.1, ptr %i.so, align 4, !tbaa !92
  %i.sp = getelementptr inbounds nuw i8, ptr %.9621314.us321.i, i64 8
  %i.sq = getelementptr inbounds nuw i8, ptr %.9315.us320.i, i64 32 ; 2 uses
  %i.sr = add nuw nsw i32 %.3627313.us322.i, 2    ; 2 uses
  %exitcond437.not.i.1 = icmp eq i32 %i.sr, %5
  br i1 %exitcond437.not.i.1, label %._crit_edge317.i, label %.lr.ph316.split.us319.i, !llvm.loop !443

.lr.ph309.i:                                      ; preds = %.preheader255.i, %bb.q
  %.8308.i = phi ptr [ %i.th, %bb.q ], [ %.7.lcssa.i, %.preheader255.i ] ; 3 uses
  %.6618307.i = phi ptr [ %.8620.i, %bb.q ], [ %.3615.lcssa.i, %.preheader255.i ] ; 9 uses
  %.2626306.i = phi i32 [ %i.ti, %bb.q ], [ %.1625.lcssa.i, %.preheader255.i ]
  %i.ss = load <4 x i32>, ptr %.8308.i, align 16, !tbaa !20 ; 6 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.8308.i, i64 16
  %i.su = load <4 x i32>, ptr %i.st, align 16, !tbaa !20 ; 6 uses
  switch i32 %i.b, label %bb.q [
    i32 4, label %.thread235.i
    i32 1, label %bb.p
  ]

.thread235.i:                                     ; preds = %.lr.ph309.i
  %i.sv = shufflevector <4 x i32> %i.su, <4 x i32> %i.ss, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.sw = shufflevector <4 x i32> %i.ss, <4 x i32> %i.su, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %i.sw, ptr %.6618307.i, align 16, !tbaa !20
  %i.sx = getelementptr inbounds nuw i8, ptr %.6618307.i, i64 16
  store <4 x i32> %i.sv, ptr %i.sx, align 16, !tbaa !20
  %i.sy = getelementptr inbounds nuw i8, ptr %.6618307.i, i64 32
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph309.i
  %i.sz = shufflevector <4 x i32> %i.ss, <4 x i32> %i.su, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.sz, ptr %.6618307.i, align 4, !tbaa !92
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %.6618307.i, i64 %i.d
  %i.tb = shufflevector <4 x i32> %i.su, <4 x i32> %i.ss, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.tb, ptr %i.ta, align 4, !tbaa !92
  %i.tc = getelementptr inbounds nuw i8, ptr %.6618307.i, i64 %.idx641.i
  %i.td = shufflevector <4 x i32> %i.ss, <4 x i32> %i.su, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.td, ptr %i.tc, align 4, !tbaa !92
  %i.te = getelementptr inbounds nuw i8, ptr %.6618307.i, i64 %.idx642.i
  %i.tf = shufflevector <4 x i32> %i.su, <4 x i32> %i.ss, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.tf, ptr %i.te, align 4, !tbaa !92
  %i.tg = getelementptr inbounds nuw i8, ptr %.6618307.i, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread235.i, %.lr.ph309.i
  %.8620.i = phi ptr [ %i.tg, %bb.p ], [ %.6618307.i, %.lr.ph309.i ], [ %i.sy, %.thread235.i ] ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.8308.i, i64 32 ; 2 uses
  %i.ti = add nuw nsw i32 %.2626306.i, 2          ; 3 uses
  %i.tj = or disjoint i32 %i.ti, 1
  %i.tk = icmp slt i32 %i.tj, %5
  br i1 %i.tk, label %.lr.ph309.i, label %.preheader254.i, !llvm.loop !444

._crit_edge317.i:                                 ; preds = %.lr.ph316.split.us319.i.prol.loopexit, %.lr.ph316.split.us319.i, %.thread237.us.i.prol.loopexit, %.thread237.us.i, %.lr.ph316.split.preheader.i, %.preheader254.i
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader254.i ], [ %scevgep439.i, %.lr.ph316.split.preheader.i ], [ %i.sd, %.thread237.us.i ], [ %.lcssa358.unr, %.thread237.us.i.prol.loopexit ], [ %.lcssa357.unr, %.lr.ph316.split.us319.i.prol.loopexit ], [ %i.sq, %.lr.ph316.split.us319.i ] ; 2 uses
  %indvars.iv.next441.i = add nuw nsw i64 %indvars.iv440.i, 4 ; 3 uses
  %i.tl = icmp slt i64 %indvars.iv.next441.i, %invariant.op.i
  br i1 %i.tl, label %bb.k, label %.preheader253.loopexit.i, !llvm.loop !445

.preheader249.loopexit.i:                         ; preds = %._crit_edge357.i
  %i.tm = trunc nsw i64 %indvars.iv.next445.i to i32
  br label %.preheader249.i

.preheader249.i:                                  ; preds = %.preheader249.loopexit.i, %.preheader253.i
  %.2582.lcssa.i = phi i32 [ %.1581.lcssa.i, %.preheader253.i ], [ %i.tm, %.preheader249.loopexit.i ] ; 2 uses
  %.10.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader253.i ], [ %.14.lcssa.i, %.preheader249.loopexit.i ]
  %i.tn = icmp slt i32 %.2582.lcssa.i, %3
  br i1 %i.tn, label %.lr.ph394.i, label %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit

.lr.ph394.i:                                      ; preds = %.preheader249.i
  %i.to = sext i32 %4 to i64
  %i.tp = icmp sgt i32 %5, 7
  %i.tq = and i32 %5, -8                          ; 2 uses
  %i.tr = sext i32 %.2582.lcssa.i to i64
  %i.ts = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %i.tt = add i32 %5, -2
  %i.tu = add i32 %5, -2
  %i.tv = add i32 %5, -8                          ; 2 uses
  %i.tw = lshr i32 %i.tv, 3
  %i.tx = add nuw nsw i32 %i.tw, 1                ; 2 uses
  %xtraiter370 = and i32 %i.tx, 3                 ; 3 uses
  %i.ty = icmp ult i32 %i.tv, 24
  %unroll_iter = and i32 %i.tx, 1073741820
  %lcmp.mod371.not = icmp eq i32 %xtraiter370, 0
  %lcmp.mod374 = icmp ne i32 %xtraiter370, 0
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge357.i, %.lr.ph361.i
  %indvars.iv444.i = phi i64 [ %i.kj, %.lr.ph361.i ], [ %indvars.iv.next445.i, %._crit_edge357.i ] ; 2 uses
  %.10360.i = phi ptr [ %.5.lcssa.i, %.lr.ph361.i ], [ %.14.lcssa.i, %._crit_edge357.i ] ; 2 uses
  %i.tz = load ptr, ptr %1, align 8, !tbaa !9
  %i.ua = add nsw i64 %indvars.iv444.i, %i.kl
  %i.ub = mul i64 %i.ua, %i.d
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %i.ub
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.kg ; 2 uses
  br i1 %i.kh, label %.lr.ph335.i, label %.preheader252.i

.preheader252.i:                                  ; preds = %.lr.ph335.i, %bb.r
  %.0632.lcssa.i = phi i32 [ 0, %bb.r ], [ %i.ki, %.lr.ph335.i ] ; 3 uses
  %.0628.lcssa.i = phi ptr [ %i.ud, %bb.r ], [ %i.vg, %.lr.ph335.i ] ; 2 uses
  %.11.lcssa.i = phi ptr [ %.10360.i, %bb.r ], [ %i.vh, %.lr.ph335.i ] ; 2 uses
  %i.ue = or disjoint i32 %.0632.lcssa.i, 3
  %i.uf = icmp slt i32 %i.ue, %5
  br i1 %i.uf, label %.lr.ph342.i, label %.preheader251.i

.lr.ph335.i:                                      ; preds = %bb.r, %.lr.ph335.i
  %.11333.i = phi ptr [ %i.vh, %.lr.ph335.i ], [ %.10360.i, %bb.r ] ; 5 uses
  %.0628332.i = phi ptr [ %i.vg, %.lr.ph335.i ], [ %i.ud, %bb.r ] ; 4 uses
  %.0632331.i = phi i32 [ %i.vi, %.lr.ph335.i ], [ 0, %bb.r ]
  %i.ug = load <4 x i32>, ptr %.11333.i, align 16, !tbaa !20 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.11333.i, i64 16
  %i.ui = load <4 x i32>, ptr %i.uh, align 16, !tbaa !20 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.11333.i, i64 32
  %i.uk = load <4 x i32>, ptr %i.uj, align 16, !tbaa !20 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.11333.i, i64 48
  %i.um = load <4 x i32>, ptr %i.ul, align 16, !tbaa !20 ; 2 uses
  %i.un = shufflevector <4 x i32> %i.ug, <4 x i32> %i.uk, <4 x i32> <i32 0, i32 5, i32 1, i32 4>
  %i.uo = bitcast <4 x i32> %i.un to <2 x i64>    ; 2 uses
  %i.up = shufflevector <4 x i32> %i.ug, <4 x i32> %i.uk, <4 x i32> <i32 2, i32 7, i32 3, i32 6>
  %i.uq = bitcast <4 x i32> %i.up to <2 x i64>    ; 2 uses
  %i.ur = shufflevector <4 x i32> %i.ui, <4 x i32> %i.um, <4 x i32> <i32 0, i32 5, i32 1, i32 4>
  %i.us = bitcast <4 x i32> %i.ur to <2 x i64>    ; 2 uses
  %i.ut = shufflevector <4 x i32> %i.ui, <4 x i32> %i.um, <4 x i32> <i32 2, i32 7, i32 3, i32 6>
  %i.uu = bitcast <4 x i32> %i.ut to <2 x i64>    ; 2 uses
  %i.uv = shufflevector <2 x i64> %i.uo, <2 x i64> %i.uq, <2 x i32> <i32 0, i32 2>
  %i.uw = shufflevector <2 x i64> %i.us, <2 x i64> %i.uu, <2 x i32> <i32 0, i32 2>
  %i.ux = shufflevector <2 x i64> %i.uo, <2 x i64> %i.uq, <2 x i32> <i32 1, i32 3>
  %i.uy = shufflevector <2 x i64> %i.us, <2 x i64> %i.uu, <2 x i32> <i32 1, i32 3>
  %i.uz = bitcast <2 x i64> %i.ux to <4 x i32>
  %i.va = shufflevector <4 x i32> %i.uz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.vb = bitcast <2 x i64> %i.uy to <4 x i32>
  %i.vc = shufflevector <4 x i32> %i.vb, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <2 x i64> %i.uv, ptr %.0628332.i, align 1, !tbaa !20
  %i.vd = getelementptr inbounds nuw i8, ptr %.0628332.i, i64 16
  store <2 x i64> %i.uw, ptr %i.vd, align 1, !tbaa !20
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %.0628332.i, i64 %i.d ; 2 uses
  store <4 x i32> %i.va, ptr %i.ve, align 1, !tbaa !20
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  store <4 x i32> %i.vc, ptr %i.vf, align 1, !tbaa !20
  %i.vg = getelementptr inbounds nuw i8, ptr %.0628332.i, i64 32 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.11333.i, i64 64 ; 2 uses
  %i.vi = add nuw nsw i32 %.0632331.i, 8          ; 2 uses
  %i.vj = or disjoint i32 %i.vi, 7
  %i.vk = icmp slt i32 %i.vj, %5
  br i1 %i.vk, label %.lr.ph335.i, label %.preheader252.i, !llvm.loop !446

.preheader251.i:                                  ; preds = %.lr.ph342.i, %.preheader252.i
  %.1633.lcssa.i = phi i32 [ %.0632.lcssa.i, %.preheader252.i ], [ %i.wv, %.lr.ph342.i ] ; 7 uses
  %.1629.lcssa.i = phi ptr [ %.0628.lcssa.i, %.preheader252.i ], [ %i.wt, %.lr.ph342.i ] ; 14 uses
  %.12.lcssa.i = phi ptr [ %.11.lcssa.i, %.preheader252.i ], [ %i.wu, %.lr.ph342.i ] ; 10 uses
  %i.vl = or disjoint i32 %.1633.lcssa.i, 1
  %i.vm = icmp slt i32 %i.vl, %5
  br i1 %i.vm, label %.lr.ph349.i.preheader, label %.preheader250.i

.lr.ph349.i.preheader:                            ; preds = %.preheader251.i
  %i.vn = sub i32 %5, %.1633.lcssa.i
  %6 = add i32 %i.vn, -2                          ; 2 uses
  %i.vo = lshr i32 %6, 1
  %narrow = add nuw i32 %i.vo, 1
  %i.vp = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check219 = icmp ult i32 %6, 46
  br i1 %min.iters.check219, label %.lr.ph349.i.preheader341, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph349.i.preheader
  %scevgep169 = getelementptr i8, ptr %.1629.lcssa.i, i64 4 ; 5 uses
  %i.vq = sub i32 %i.ko, %.1633.lcssa.i
  %i.vr = lshr i32 %i.vq, 1
  %i.vs = zext nneg i32 %i.vr to i64              ; 2 uses
  %i.vt = shl nuw nsw i64 %i.vs, 3                ; 4 uses
  %scevgep170 = getelementptr i8, ptr %scevgep169, i64 %i.vt ; 4 uses
  %scevgep171 = getelementptr i8, ptr %.1629.lcssa.i, i64 8
  %scevgep172 = getelementptr i8, ptr %scevgep171, i64 %i.vt ; 4 uses
  %scevgep173 = getelementptr i8, ptr %.1629.lcssa.i, i64 %i.km ; 4 uses
  %scevgep174 = getelementptr i8, ptr %.1629.lcssa.i, i64 %i.kn ; 5 uses
  %scevgep175 = getelementptr i8, ptr %scevgep174, i64 %i.vt ; 4 uses
  %i.vu = getelementptr i8, ptr %.1629.lcssa.i, i64 %i.km
  %scevgep176 = getelementptr i8, ptr %i.vu, i64 8
  %scevgep177 = getelementptr i8, ptr %scevgep176, i64 %i.vt ; 4 uses
  %scevgep178 = getelementptr i8, ptr %.12.lcssa.i, i64 16
  %i.vv = shl nuw nsw i64 %i.vs, 4
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.vv ; 4 uses
  %bound0180 = icmp ult ptr %.1629.lcssa.i, %scevgep172
  %bound1181 = icmp ult ptr %scevgep169, %scevgep170
  %found.conflict182 = and i1 %bound0180, %bound1181
  %bound0183 = icmp ult ptr %.1629.lcssa.i, %scevgep175
  %bound1184 = icmp ult ptr %scevgep173, %scevgep170
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %found.conflict182, %found.conflict185
  %bound0187 = icmp ult ptr %.1629.lcssa.i, %scevgep177
  %bound1188 = icmp ult ptr %scevgep174, %scevgep170
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %conflict.rdx186, %found.conflict189
  %bound0191 = icmp ult ptr %.1629.lcssa.i, %scevgep179
  %bound1192 = icmp ult ptr %.12.lcssa.i, %scevgep170
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  %bound0195 = icmp ult ptr %scevgep169, %scevgep175
  %bound1196 = icmp ult ptr %scevgep173, %scevgep172
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx198 = or i1 %conflict.rdx194, %found.conflict197
  %bound0199 = icmp ult ptr %scevgep169, %scevgep177
  %bound1200 = icmp ult ptr %scevgep174, %scevgep172
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %conflict.rdx198, %found.conflict201
  %bound0203 = icmp ult ptr %scevgep169, %scevgep179
  %bound1204 = icmp ult ptr %.12.lcssa.i, %scevgep172
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %conflict.rdx202, %found.conflict205
  %bound0207 = icmp ult ptr %scevgep173, %scevgep177
  %bound1208 = icmp ult ptr %scevgep174, %scevgep175
  %found.conflict209 = and i1 %bound0207, %bound1208
  %conflict.rdx210 = or i1 %conflict.rdx206, %found.conflict209
  %bound0211 = icmp ult ptr %scevgep173, %scevgep179
  %bound1212 = icmp ult ptr %.12.lcssa.i, %scevgep175
  %found.conflict213 = and i1 %bound0211, %bound1212
  %conflict.rdx214 = or i1 %conflict.rdx210, %found.conflict213
  %bound0215 = icmp ult ptr %scevgep174, %scevgep179
  %bound1216 = icmp ult ptr %.12.lcssa.i, %scevgep177
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx218 = or i1 %conflict.rdx214, %found.conflict217
  br i1 %conflict.rdx218, label %.lr.ph349.i.preheader341, label %vector.ph220

vector.ph220:                                     ; preds = %vector.memcheck168
  %n.vec221 = and i64 %i.vp, 4294967288           ; 5 uses
  %i.vw = shl nuw nsw i64 %n.vec221, 4
  %i.vx = getelementptr i8, ptr %.12.lcssa.i, i64 %i.vw ; 2 uses
  %i.vy = shl nuw nsw i64 %n.vec221, 3
  %i.vz = getelementptr i8, ptr %.1629.lcssa.i, i64 %i.vy ; 2 uses
  %i.wa = trunc nuw i64 %n.vec221 to i32
  %i.wb = shl i32 %i.wa, 1
  %i.wc = add i32 %.1633.lcssa.i, %i.wb           ; 2 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph220
  %index223 = phi i64 [ 0, %vector.ph220 ], [ %index.next232, %vector.body222 ] ; 3 uses
  %i.wd = shl i64 %index223, 4
  %next.gep224 = getelementptr i8, ptr %.12.lcssa.i, i64 %i.wd
  %i.we = shl i64 %index223, 3
  %next.gep225 = getelementptr i8, ptr %.1629.lcssa.i, i64 %i.we ; 2 uses
  %wide.vec226 = load <32 x i32>, ptr %next.gep224, align 4, !tbaa !92, !alias.scope !447 ; 2 uses
  %interleaved.vec = shufflevector <32 x i32> %wide.vec226, <32 x i32> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29>
  store <16 x i32> %interleaved.vec, ptr %next.gep225, align 4, !tbaa !92
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %next.gep225, i64 %i.d
  %interleaved.vec231 = shufflevector <32 x i32> %wide.vec226, <32 x i32> poison, <16 x i32> <i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15, i32 18, i32 19, i32 22, i32 23, i32 26, i32 27, i32 30, i32 31>
  store <16 x i32> %interleaved.vec231, ptr %i.wf, align 4, !tbaa !92
  %index.next232 = add nuw i64 %index223, 8       ; 2 uses
  %i.wg = icmp eq i64 %index.next232, %n.vec221
  br i1 %i.wg, label %middle.block233, label %vector.body222, !llvm.loop !450

middle.block233:                                  ; preds = %vector.body222
  %cmp.n234 = icmp eq i64 %n.vec221, %i.vp
  br i1 %cmp.n234, label %.preheader250.i, label %.lr.ph349.i.preheader341

.lr.ph349.i.preheader341:                         ; preds = %vector.memcheck168, %.lr.ph349.i.preheader, %middle.block233
  %.13348.i.ph = phi ptr [ %.12.lcssa.i, %vector.memcheck168 ], [ %.12.lcssa.i, %.lr.ph349.i.preheader ], [ %i.vx, %middle.block233 ]
  %.2630347.i.ph = phi ptr [ %.1629.lcssa.i, %vector.memcheck168 ], [ %.1629.lcssa.i, %.lr.ph349.i.preheader ], [ %i.vz, %middle.block233 ]
  %.2634346.i.ph = phi i32 [ %.1633.lcssa.i, %vector.memcheck168 ], [ %.1633.lcssa.i, %.lr.ph349.i.preheader ], [ %i.wc, %middle.block233 ]
  br label %.lr.ph349.i

.lr.ph342.i:                                      ; preds = %.preheader252.i, %.lr.ph342.i
  %.12341.i = phi ptr [ %i.wu, %.lr.ph342.i ], [ %.11.lcssa.i, %.preheader252.i ] ; 3 uses
  %.1629340.i = phi ptr [ %i.wt, %.lr.ph342.i ], [ %.0628.lcssa.i, %.preheader252.i ] ; 3 uses
  %.1633339.i = phi i32 [ %i.wv, %.lr.ph342.i ], [ %.0632.lcssa.i, %.preheader252.i ]
  %i.wh = load <4 x i32>, ptr %.12341.i, align 16, !tbaa !20 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.12341.i, i64 16
  %i.wj = load <4 x i32>, ptr %i.wi, align 16, !tbaa !20 ; 2 uses
  %i.wk = shufflevector <4 x i32> %i.wh, <4 x i32> %i.wj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.wl = bitcast <4 x i32> %i.wk to <2 x i64>    ; 2 uses
  %i.wm = shufflevector <4 x i32> %i.wh, <4 x i32> %i.wj, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.wn = bitcast <4 x i32> %i.wm to <2 x i64>    ; 2 uses
  %i.wo = shufflevector <2 x i64> %i.wl, <2 x i64> %i.wn, <2 x i32> <i32 0, i32 2>
  %i.wp = shufflevector <2 x i64> %i.wn, <2 x i64> %i.wl, <2 x i32> <i32 1, i32 3>
  %i.wq = bitcast <2 x i64> %i.wp to <4 x i32>
  %i.wr = shufflevector <4 x i32> %i.wq, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <2 x i64> %i.wo, ptr %.1629340.i, align 1, !tbaa !20
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %.1629340.i, i64 %i.d
  store <4 x i32> %i.wr, ptr %i.ws, align 1, !tbaa !20
  %i.wt = getelementptr inbounds nuw i8, ptr %.1629340.i, i64 16 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.12341.i, i64 32 ; 2 uses
  %i.wv = add nuw nsw i32 %.1633339.i, 4          ; 3 uses
  %i.ww = or disjoint i32 %i.wv, 3
  %i.wx = icmp slt i32 %i.ww, %5
  br i1 %i.wx, label %.lr.ph342.i, label %.preheader251.i, !llvm.loop !451

.preheader250.i:                                  ; preds = %.lr.ph349.i, %middle.block233, %.preheader251.i
  %.2634.lcssa.i = phi i32 [ %.1633.lcssa.i, %.preheader251.i ], [ %i.wc, %middle.block233 ], [ %i.yw, %.lr.ph349.i ] ; 7 uses
  %.2630.lcssa.i = phi ptr [ %.1629.lcssa.i, %.preheader251.i ], [ %i.vz, %middle.block233 ], [ %i.yu, %.lr.ph349.i ] ; 11 uses
  %.13.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader251.i ], [ %i.vx, %middle.block233 ], [ %i.yv, %.lr.ph349.i ] ; 11 uses
  %i.wy = icmp slt i32 %.2634.lcssa.i, %5
  br i1 %i.wy, label %iter.check, label %._crit_edge357.i

iter.check:                                       ; preds = %.preheader250.i
  %i.wz = xor i32 %.2634.lcssa.i, -1
  %i.xa = add i32 %5, %i.wz                       ; 3 uses
  %i.xb = zext i32 %i.xa to i64
  %i.xc = add nuw nsw i64 %i.xb, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.xa, 3
  br i1 %min.iters.check, label %.lr.ph356.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.2630.lcssa.i, i64 4
  %i.xd = xor i32 %.2634.lcssa.i, -1
  %i.xe = add i32 %5, %i.xd
  %i.xf = zext i32 %i.xe to i64                   ; 2 uses
  %i.xg = shl nuw nsw i64 %i.xf, 2                ; 2 uses
  %scevgep134 = getelementptr i8, ptr %scevgep, i64 %i.xg ; 2 uses
  %scevgep135 = getelementptr i8, ptr %.2630.lcssa.i, i64 %i.km ; 2 uses
  %scevgep136 = getelementptr i8, ptr %.2630.lcssa.i, i64 %i.kn
  %scevgep137 = getelementptr i8, ptr %scevgep136, i64 %i.xg ; 2 uses
  %scevgep138 = getelementptr i8, ptr %.13.lcssa.i, i64 8
  %i.xh = shl nuw nsw i64 %i.xf, 3
  %scevgep139 = getelementptr i8, ptr %scevgep138, i64 %i.xh ; 2 uses
  %bound0 = icmp ult ptr %.2630.lcssa.i, %scevgep137
  %bound1 = icmp ult ptr %scevgep135, %scevgep134
  %found.conflict = and i1 %bound0, %bound1
  %bound0140 = icmp ult ptr %.2630.lcssa.i, %scevgep139
  %bound1141 = icmp ult ptr %.13.lcssa.i, %scevgep134
  %found.conflict142 = and i1 %bound0140, %bound1141
  %conflict.rdx = or i1 %found.conflict, %found.conflict142
  %bound0143 = icmp ult ptr %scevgep135, %scevgep139
  %bound1144 = icmp ult ptr %.13.lcssa.i, %scevgep137
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %conflict.rdx, %found.conflict145
  br i1 %conflict.rdx146, label %.lr.ph356.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check147 = icmp ult i32 %i.xa, 15
  br i1 %min.iters.check147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.xi = and i64 %i.xc, 12
  %n.vec = and i64 %i.xc, 8589934576              ; 6 uses
  %i.xj = shl nuw nsw i64 %n.vec, 3
  %i.xk = getelementptr i8, ptr %.13.lcssa.i, i64 %i.xj ; 2 uses
  %i.xl = shl nuw nsw i64 %n.vec, 2
  %i.xm = getelementptr i8, ptr %.2630.lcssa.i, i64 %i.xl
  %i.xn = trunc i64 %n.vec to i32
  %i.xo = add i32 %.2634.lcssa.i, %i.xn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.xp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.13.lcssa.i, i64 %i.xp
  %i.xq = getelementptr i8, ptr %.13.lcssa.i, i64 %i.xp
  %next.gep148 = getelementptr i8, ptr %i.xq, i64 64
  %i.xr = shl i64 %index, 2
  %next.gep149 = getelementptr i8, ptr %.2630.lcssa.i, i64 %i.xr ; 3 uses
  %wide.vec = load <16 x i32>, ptr %next.gep, align 4, !tbaa !92, !alias.scope !452 ; 2 uses
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec150 = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec151 = load <16 x i32>, ptr %next.gep148, align 4, !tbaa !92, !alias.scope !452 ; 2 uses
  %strided.vec152 = shufflevector <16 x i32> %wide.vec151, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec153 = shufflevector <16 x i32> %wide.vec151, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.xs = getelementptr i8, ptr %next.gep149, i64 32
  store <8 x i32> %strided.vec, ptr %next.gep149, align 4, !tbaa !92, !alias.scope !455, !noalias !457
  store <8 x i32> %strided.vec152, ptr %i.xs, align 4, !tbaa !92, !alias.scope !455, !noalias !457
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %next.gep149, i64 %i.d ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  store <8 x i32> %strided.vec150, ptr %i.xt, align 4, !tbaa !92, !alias.scope !459, !noalias !452
  store <8 x i32> %strided.vec153, ptr %i.xu, align 4, !tbaa !92, !alias.scope !459, !noalias !452
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.xv = icmp eq i64 %index.next, %n.vec
  br i1 %i.xv, label %middle.block, label %vector.body, !llvm.loop !460

middle.block:                                     ; preds = %vector.body
end_hunk_1
