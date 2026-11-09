Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx2?download=true
inline.NumInlined: 88
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN4ncnn29unpack_output_tile_int32_avx2ERKNS_3MatERS0_iiii:bb.a
  %i.gv = shufflevector <8 x float> %i.gn, <8 x float> %i.gr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gw = bitcast <8 x float> %i.gs to <8 x i32>
  %i.gx = bitcast <8 x float> %i.gt to <8 x i32>
  %i.gy = bitcast <8 x float> %i.gu to <8 x i32>
  %i.gz = bitcast <8 x float> %i.gv to <8 x i32>
  %i.ha = shufflevector <8 x float> %i.gm, <8 x float> %i.gq, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.hb = bitcast <8 x float> %i.ha to <8 x i32>  ; 2 uses
  %i.hc = shufflevector <8 x float> %i.gn, <8 x float> %i.gr, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.hd = bitcast <8 x float> %i.hc to <8 x i32>  ; 2 uses
  %i.he = shufflevector <8 x i32> %i.gw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.he, ptr %.4588267.i, align 1, !tbaa !18
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.4588267.i, i64 %i.d
  %i.hg = shufflevector <8 x i32> %i.gx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hg, ptr %i.hf, align 1, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %.4588267.i, i64 %.idx661.i
  %i.hi = shufflevector <8 x i32> %i.gy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hi, ptr %i.hh, align 1, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %.4588267.i, i64 %.idx662.i
  %i.hk = shufflevector <8 x i32> %i.gz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hk, ptr %i.hj, align 1, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %.4588267.i, i64 %.idx663.i
  %i.hm = shufflevector <8 x i32> %i.hb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hm, ptr %i.hl, align 1, !tbaa !18
  %i.hn = getelementptr inbounds nuw i8, ptr %.4588267.i, i64 %.idx664.i
  %i.ho = shufflevector <8 x i32> %i.hb, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.ho, ptr %i.hn, align 1, !tbaa !18
  %i.hp = getelementptr inbounds nuw i8, ptr %.4588267.i, i64 %.idx665.i
  %i.hq = shufflevector <8 x i32> %i.hd, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hq, ptr %i.hp, align 1, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %.4588267.i, i64 %.idx666.i
  %i.hs = shufflevector <8 x i32> %i.hd, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.hs, ptr %i.hr, align 1, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %.4588267.i, i64 16
  br label %.thread219.i

.thread219.i:                                     ; preds = %bb.f, %bb.e, %.thread216.i, %.lr.ph269.i
  %.7591.i = phi ptr [ %i.ht, %bb.f ], [ %.4588267.i, %.lr.ph269.i ], [ %i.fz, %.thread216.i ], [ %i.gj, %bb.e ] ; 2 uses
  %i.hu = add nuw nsw i32 %.1601266.i, 4          ; 3 uses
  %i.hv = or disjoint i32 %i.hu, 3
  %i.hw = icmp slt i32 %i.hv, %5
  br i1 %i.hw, label %.lr.ph269.i, label %.preheader259.i, !llvm.loop !448

.preheader258.i:                                  ; preds = %.thread224.i, %.preheader259.i
  %.2602.lcssa.i = phi i32 [ %.1601.lcssa.i, %.preheader259.i ], [ %i.iy, %.thread224.i ] ; 2 uses
  %.8592.lcssa.i = phi ptr [ %.4588.lcssa.i, %.preheader259.i ], [ %.11595.i, %.thread224.i ]
  %.3.lcssa.i = phi ptr [ %.2.lcssa.i, %.preheader259.i ], [ %i.hz, %.thread224.i ] ; 2 uses
  %i.hx = icmp slt i32 %.2602.lcssa.i, %5
  br i1 %i.hx, label %.lr.ph283.i, label %._crit_edge.i

.lr.ph276.i:                                      ; preds = %.preheader259.i, %.thread224.i
  %.3275.i = phi ptr [ %i.hz, %.thread224.i ], [ %.2.lcssa.i, %.preheader259.i ] ; 2 uses
  %.8592274.i = phi ptr [ %.11595.i, %.thread224.i ], [ %.4588.lcssa.i, %.preheader259.i ] ; 16 uses
  %.2602273.i = phi i32 [ %i.iy, %.thread224.i ], [ %.1601.lcssa.i, %.preheader259.i ]
  %i.hy = load <16 x i32>, ptr %.3275.i, align 32, !tbaa !18 ; 11 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.3275.i, i64 64 ; 2 uses
  %i.ia = shufflevector <16 x i32> %i.hy, <16 x i32> poison, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 2 uses
  %i.ib = shufflevector <16 x i32> %i.hy, <16 x i32> poison, <8 x i32> <i32 8, i32 1, i32 10, i32 3, i32 12, i32 5, i32 14, i32 7> ; 2 uses
  switch i32 %i.b, label %.thread224.i [
    i32 8, label %.thread221.i
    i32 4, label %bb.g
    i32 1, label %bb.h
  ]

.thread221.i:                                     ; preds = %.lr.ph276.i
  store <8 x i32> %i.ia, ptr %.8592274.i, align 1, !tbaa !18
  %i.ic = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 32
  store <8 x i32> %i.ib, ptr %i.ic, align 1, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 64
  br label %.thread224.i

bb.g:                                             ; preds = %.lr.ph276.i
  %i.ie = shufflevector <8 x i32> %i.ia, <8 x i32> %i.ib, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.if = shufflevector <16 x i32> %i.hy, <16 x i32> poison, <8 x i32> <i32 4, i32 13, i32 6, i32 15, i32 12, i32 5, i32 14, i32 7>
  store <8 x i32> %i.ie, ptr %.8592274.i, align 1, !tbaa !18
  %i.ig = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 %.idx663.i
  store <8 x i32> %i.if, ptr %i.ig, align 1, !tbaa !18
  %i.ih = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 32
  br label %.thread224.i

bb.h:                                             ; preds = %.lr.ph276.i
  %i.ii = shufflevector <16 x i32> %i.hy, <16 x i32> poison, <2 x i32> <i32 0, i32 8>
  store <2 x i32> %i.ii, ptr %.8592274.i, align 4, !tbaa !24
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.8592274.i, i64 %i.d
  %i.ik = shufflevector <16 x i32> %i.hy, <16 x i32> poison, <2 x i32> <i32 9, i32 1>
  store <2 x i32> %i.ik, ptr %i.ij, align 4, !tbaa !24
  %i.il = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 %.idx661.i
  %i.im = shufflevector <16 x i32> %i.hy, <16 x i32> poison, <2 x i32> <i32 2, i32 10>
  store <2 x i32> %i.im, ptr %i.il, align 4, !tbaa !24
  %i.in = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 %.idx662.i
  %i.io = shufflevector <16 x i32> %i.hy, <16 x i32> poison, <2 x i32> <i32 11, i32 3>
  store <2 x i32> %i.io, ptr %i.in, align 4, !tbaa !24
  %i.ip = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 %.idx663.i
  %i.iq = shufflevector <16 x i32> %i.hy, <16 x i32> poison, <2 x i32> <i32 4, i32 12>
  store <2 x i32> %i.iq, ptr %i.ip, align 4, !tbaa !24
  %i.ir = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 %.idx664.i
  %i.is = shufflevector <16 x i32> %i.hy, <16 x i32> poison, <2 x i32> <i32 13, i32 5>
  store <2 x i32> %i.is, ptr %i.ir, align 4, !tbaa !24
  %i.it = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 %.idx665.i
  %i.iu = shufflevector <16 x i32> %i.hy, <16 x i32> poison, <2 x i32> <i32 6, i32 14>
  store <2 x i32> %i.iu, ptr %i.it, align 4, !tbaa !24
  %i.iv = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 %.idx666.i
  %i.iw = shufflevector <16 x i32> %i.hy, <16 x i32> poison, <2 x i32> <i32 15, i32 7>
  store <2 x i32> %i.iw, ptr %i.iv, align 4, !tbaa !24
  %i.ix = getelementptr inbounds nuw i8, ptr %.8592274.i, i64 8
  br label %.thread224.i

.thread224.i:                                     ; preds = %bb.h, %bb.g, %.thread221.i, %.lr.ph276.i
  %.11595.i = phi ptr [ %i.ix, %bb.h ], [ %.8592274.i, %.lr.ph276.i ], [ %i.id, %.thread221.i ], [ %i.ih, %bb.g ] ; 2 uses
  %i.iy = add nuw nsw i32 %.2602273.i, 2          ; 3 uses
  %i.iz = or disjoint i32 %i.iy, 1
  %i.ja = icmp slt i32 %i.iz, %5
  br i1 %i.ja, label %.lr.ph276.i, label %.preheader258.i, !llvm.loop !449

.lr.ph283.i:                                      ; preds = %.preheader258.i, %.thread229.i
  %.4282.i = phi ptr [ %i.jc, %.thread229.i ], [ %.3.lcssa.i, %.preheader258.i ] ; 2 uses
  %.12596281.i = phi ptr [ %.15599.i, %.thread229.i ], [ %.8592.lcssa.i, %.preheader258.i ] ; 15 uses
  %.3603280.i = phi i32 [ %i.js, %.thread229.i ], [ %.2602.lcssa.i, %.preheader258.i ]
  %i.jb = load <4 x i64>, ptr %.4282.i, align 32, !tbaa !18 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.4282.i, i64 32 ; 2 uses
  switch i32 %i.b, label %.thread229.i [
    i32 8, label %.thread226.i
    i32 4, label %bb.i
    i32 1, label %bb.j
  ]

.thread226.i:                                     ; preds = %.lr.ph283.i
  store <4 x i64> %i.jb, ptr %.12596281.i, align 1, !tbaa !18
  %i.jd = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 32
  br label %.thread229.i

bb.i:                                             ; preds = %.lr.ph283.i
  %i.je = bitcast <4 x i64> %i.jb to <8 x i32>    ; 2 uses
  %i.jf = shufflevector <8 x i32> %i.je, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.jf, ptr %.12596281.i, align 16, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 %.idx663.i
  %i.jh = shufflevector <8 x i32> %i.je, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.jh, ptr %i.jg, align 16, !tbaa !18
  %i.ji = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 16
  br label %.thread229.i

bb.j:                                             ; preds = %.lr.ph283.i
  %i.jj = bitcast <4 x i64> %i.jb to <8 x i32>    ; 8 uses
  %.sroa.096.0.vec.extract.i = extractelement <8 x i32> %i.jj, i64 0
  store i32 %.sroa.096.0.vec.extract.i, ptr %.12596281.i, align 4, !tbaa !24
  %.sroa.096.4.vec.extract.i = extractelement <8 x i32> %i.jj, i64 1
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.12596281.i, i64 %i.d
  store i32 %.sroa.096.4.vec.extract.i, ptr %i.jk, align 4, !tbaa !24
  %.sroa.096.8.vec.extract.i = extractelement <8 x i32> %i.jj, i64 2
  %i.jl = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 %.idx661.i
  store i32 %.sroa.096.8.vec.extract.i, ptr %i.jl, align 4, !tbaa !24
  %.sroa.096.12.vec.extract.i = extractelement <8 x i32> %i.jj, i64 3
  %i.jm = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 %.idx662.i
  store i32 %.sroa.096.12.vec.extract.i, ptr %i.jm, align 4, !tbaa !24
  %.sroa.096.16.vec.extract.i = extractelement <8 x i32> %i.jj, i64 4
  %i.jn = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 %.idx663.i
  store i32 %.sroa.096.16.vec.extract.i, ptr %i.jn, align 4, !tbaa !24
  %.sroa.096.20.vec.extract.i = extractelement <8 x i32> %i.jj, i64 5
  %i.jo = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 %.idx664.i
  store i32 %.sroa.096.20.vec.extract.i, ptr %i.jo, align 4, !tbaa !24
  %.sroa.096.24.vec.extract.i = extractelement <8 x i32> %i.jj, i64 6
  %i.jp = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 %.idx665.i
  store i32 %.sroa.096.24.vec.extract.i, ptr %i.jp, align 4, !tbaa !24
  %.sroa.096.28.vec.extract.i = extractelement <8 x i32> %i.jj, i64 7
  %i.jq = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 %.idx666.i
  store i32 %.sroa.096.28.vec.extract.i, ptr %i.jq, align 4, !tbaa !24
  %i.jr = getelementptr inbounds nuw i8, ptr %.12596281.i, i64 4
  br label %.thread229.i

.thread229.i:                                     ; preds = %bb.j, %bb.i, %.thread226.i, %.lr.ph283.i
  %.15599.i = phi ptr [ %i.jr, %bb.j ], [ %.12596281.i, %.lr.ph283.i ], [ %i.jd, %.thread226.i ], [ %i.ji, %bb.i ]
  %i.js = add nuw nsw i32 %.3603280.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.js, %5
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph283.i, !llvm.loop !450

._crit_edge.i:                                    ; preds = %.thread229.i, %.preheader258.i
  %.4.lcssa.i = phi ptr [ %.3.lcssa.i, %.preheader258.i ], [ %i.jc, %.thread229.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.jt = or disjoint i64 %indvars.iv.next.i, 7
  %i.ju = icmp samesign ult i64 %i.jt, %i.j
  br i1 %i.ju, label %bb.b, label %.preheader257.loopexit.i, !llvm.loop !451

.preheader253.loopexit.i:                         ; preds = %._crit_edge317.i
  %i.jv = trunc nuw nsw i64 %indvars.iv.next441.i to i32
  br label %.preheader253.i

.preheader253.i:                                  ; preds = %.preheader253.loopexit.i, %.preheader257.i
  %.1581.lcssa.i = phi i32 [ %.0580.lcssa.i, %.preheader257.i ], [ %i.jv, %.preheader253.loopexit.i ] ; 3 uses
  %.5.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader257.i ], [ %.9.lcssa.i, %.preheader253.loopexit.i ] ; 2 uses
  %i.jw = or disjoint i32 %.1581.lcssa.i, 1
  %i.jx = icmp slt i32 %i.jw, %3
  br i1 %i.jx, label %.lr.ph361.i, label %.preheader249.i

.lr.ph361.i:                                      ; preds = %.preheader253.i
  %i.jy = sext i32 %4 to i64
  %i.jz = icmp sgt i32 %5, 7
  %i.ka = and i32 %5, -8
  %i.kb = zext nneg i32 %.1581.lcssa.i to i64
  %i.kc = sext i32 %3 to i64
  %i.kd = sext i32 %2 to i64
  %invariant.op488.i = add nsw i64 %i.kc, -1
  %i.ke = shl i64 %i.d, 2                         ; 5 uses
  %i.kf = add i32 %5, -2
  br label %bb.r

bb.k:                                             ; preds = %._crit_edge317.i, %.lr.ph328.i
  %indvars.iv440.i = phi i64 [ %i.s, %.lr.ph328.i ], [ %indvars.iv.next441.i, %._crit_edge317.i ] ; 2 uses
  %.5327.i = phi ptr [ %.0.lcssa.i, %.lr.ph328.i ], [ %.9.lcssa.i, %._crit_edge317.i ] ; 2 uses
  %i.kg = load ptr, ptr %1, align 8, !tbaa !15
  %i.kh = add nsw i64 %indvars.iv440.i, %i.u
  %i.ki = mul i64 %i.kh, %i.d
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.ki
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.p ; 2 uses
  br i1 %i.q, label %.lr.ph295.i, label %.preheader256.i

.preheader256.i:                                  ; preds = %bb.m, %bb.k
  %.0624.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.r, %bb.m ] ; 3 uses
  %.0612.lcssa.i = phi ptr [ %i.kk, %bb.k ], [ %.2614.i, %bb.m ] ; 2 uses
  %.6.lcssa.i = phi ptr [ %.5327.i, %bb.k ], [ %i.oa, %bb.m ] ; 2 uses
  %i.kl = or disjoint i32 %.0624.lcssa.i, 3
  %i.km = icmp slt i32 %i.kl, %5
  br i1 %i.km, label %.lr.ph302.i, label %.preheader255.i

.lr.ph295.i:                                      ; preds = %bb.k, %bb.m
  %.6293.i = phi ptr [ %i.oa, %bb.m ], [ %.5327.i, %bb.k ] ; 9 uses
  %.0612292.i = phi ptr [ %.2614.i, %bb.m ], [ %i.kk, %bb.k ] ; 16 uses
  %.0624291.i = phi i32 [ %i.ob, %bb.m ], [ 0, %bb.k ]
  %i.kn = load <4 x i32>, ptr %.6293.i, align 16, !tbaa !18 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.6293.i, i64 16
  %i.kp = load <4 x i32>, ptr %i.ko, align 16, !tbaa !18 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.6293.i, i64 32
  %i.kr = load <4 x i32>, ptr %i.kq, align 16, !tbaa !18 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.6293.i, i64 48
  %i.kt = load <4 x i32>, ptr %i.ks, align 16, !tbaa !18 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.6293.i, i64 64
  %i.kv = load <4 x i32>, ptr %i.ku, align 16, !tbaa !18 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.6293.i, i64 80
  %i.kx = load <4 x i32>, ptr %i.kw, align 16, !tbaa !18 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.6293.i, i64 96
  %i.kz = load <4 x i32>, ptr %i.ky, align 16, !tbaa !18 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.6293.i, i64 112
  %i.lb = load <4 x i32>, ptr %i.la, align 16, !tbaa !18 ; 2 uses
  %i.lc = shufflevector <4 x i32> %i.kn, <4 x i32> %i.kz, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.ld = bitcast <4 x i32> %i.lc to <2 x i64>    ; 2 uses
  %i.le = shufflevector <4 x i32> %i.kn, <4 x i32> %i.kz, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.lf = bitcast <4 x i32> %i.le to <2 x i64>    ; 2 uses
  %i.lg = shufflevector <4 x i32> %i.kp, <4 x i32> %i.lb, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.lh = bitcast <4 x i32> %i.lg to <2 x i64>    ; 2 uses
  %i.li = shufflevector <4 x i32> %i.kp, <4 x i32> %i.lb, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.lj = bitcast <4 x i32> %i.li to <2 x i64>    ; 2 uses
  %i.lk = shufflevector <4 x i32> %i.kr, <4 x i32> %i.kv, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.ll = bitcast <4 x i32> %i.lk to <2 x i64>    ; 2 uses
  %i.lm = shufflevector <4 x i32> %i.kr, <4 x i32> %i.kv, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.ln = bitcast <4 x i32> %i.lm to <2 x i64>    ; 2 uses
  %i.lo = shufflevector <4 x i32> %i.kt, <4 x i32> %i.kx, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.lp = bitcast <4 x i32> %i.lo to <2 x i64>    ; 2 uses
  %i.lq = shufflevector <4 x i32> %i.kt, <4 x i32> %i.kx, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.lr = bitcast <4 x i32> %i.lq to <2 x i64>    ; 2 uses
  %i.ls = shufflevector <2 x i64> %i.ld, <2 x i64> %i.ll, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.lt = shufflevector <2 x i64> %i.ld, <2 x i64> %i.ll, <2 x i32> <i32 1, i32 3>
  %i.lu = shufflevector <2 x i64> %i.ln, <2 x i64> %i.lf, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.lv = shufflevector <2 x i64> %i.ln, <2 x i64> %i.lf, <2 x i32> <i32 1, i32 3>
  %i.lw = shufflevector <2 x i64> %i.lh, <2 x i64> %i.lp, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.lx = shufflevector <2 x i64> %i.lh, <2 x i64> %i.lp, <2 x i32> <i32 1, i32 3>
  %i.ly = shufflevector <2 x i64> %i.lr, <2 x i64> %i.lj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.lz = shufflevector <2 x i64> %i.lr, <2 x i64> %i.lj, <2 x i32> <i32 1, i32 3>
  %i.ma = bitcast <2 x i64> %i.lt to <4 x i32>    ; 3 uses
  %i.mb = bitcast <2 x i64> %i.lv to <4 x i32>    ; 3 uses
  %i.mc = bitcast <2 x i64> %i.lx to <4 x i32>    ; 3 uses
  %i.md = bitcast <2 x i64> %i.lz to <4 x i32>    ; 3 uses
  switch i32 %i.b, label %bb.m [
    i32 4, label %.thread231.i
    i32 1, label %bb.l
  ]

.thread231.i:                                     ; preds = %.lr.ph295.i
  %i.me = shufflevector <4 x i32> %i.md, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.mf = shufflevector <4 x i32> %i.mc, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.mg = shufflevector <4 x i32> %i.mb, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.mh = shufflevector <4 x i32> %i.ma, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <2 x i64> %i.ls, ptr %.0612292.i, align 16, !tbaa !18
  %i.mi = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 16
  store <4 x i32> %i.mh, ptr %i.mi, align 16, !tbaa !18
  %i.mj = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 32
  store <2 x i64> %i.lu, ptr %i.mj, align 16, !tbaa !18
  %i.mk = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 48
  store <4 x i32> %i.mg, ptr %i.mk, align 16, !tbaa !18
  %i.ml = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 64
  store <2 x i64> %i.lw, ptr %i.ml, align 16, !tbaa !18
  %i.mm = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 80
  store <4 x i32> %i.mf, ptr %i.mm, align 16, !tbaa !18
  %i.mn = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 96
  store <2 x i64> %i.ly, ptr %i.mn, align 16, !tbaa !18
  %i.mo = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 112
  store <4 x i32> %i.me, ptr %i.mo, align 16, !tbaa !18
  %i.mp = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 128
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph295.i
  %i.mq = bitcast <2 x i64> %i.ls to <4 x i32>    ; 2 uses
  %i.mr = shufflevector <4 x i32> %i.mq, <4 x i32> %i.ma, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.ms = bitcast <4 x i32> %i.mr to <2 x i64>    ; 2 uses
  %i.mt = shufflevector <4 x i32> %i.mq, <4 x i32> %i.ma, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.mu = bitcast <4 x i32> %i.mt to <2 x i64>    ; 2 uses
  %i.mv = bitcast <2 x i64> %i.lu to <4 x i32>    ; 2 uses
  %i.mw = shufflevector <4 x i32> %i.mv, <4 x i32> %i.mb, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.mx = bitcast <4 x i32> %i.mw to <2 x i64>    ; 2 uses
  %i.my = shufflevector <4 x i32> %i.mv, <4 x i32> %i.mb, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.mz = bitcast <4 x i32> %i.my to <2 x i64>    ; 2 uses
  %i.na = shufflevector <2 x i64> %i.ms, <2 x i64> %i.mx, <2 x i32> <i32 0, i32 2>
  %i.nb = shufflevector <2 x i64> %i.ms, <2 x i64> %i.mx, <2 x i32> <i32 1, i32 3>
  %i.nc = shufflevector <2 x i64> %i.mu, <2 x i64> %i.mz, <2 x i32> <i32 0, i32 2>
  %i.nd = shufflevector <2 x i64> %i.mu, <2 x i64> %i.mz, <2 x i32> <i32 1, i32 3>
  %i.ne = bitcast <2 x i64> %i.lw to <4 x i32>    ; 2 uses
  %i.nf = shufflevector <4 x i32> %i.ne, <4 x i32> %i.mc, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.ng = bitcast <4 x i32> %i.nf to <2 x i64>    ; 2 uses
  %i.nh = shufflevector <4 x i32> %i.ne, <4 x i32> %i.mc, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.ni = bitcast <4 x i32> %i.nh to <2 x i64>    ; 2 uses
  %i.nj = bitcast <2 x i64> %i.ly to <4 x i32>    ; 2 uses
  %i.nk = shufflevector <4 x i32> %i.nj, <4 x i32> %i.md, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.nl = bitcast <4 x i32> %i.nk to <2 x i64>    ; 2 uses
  %i.nm = shufflevector <4 x i32> %i.nj, <4 x i32> %i.md, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.nn = bitcast <4 x i32> %i.nm to <2 x i64>    ; 2 uses
  %i.no = shufflevector <2 x i64> %i.ng, <2 x i64> %i.nl, <2 x i32> <i32 0, i32 2>
  %i.np = shufflevector <2 x i64> %i.ng, <2 x i64> %i.nl, <2 x i32> <i32 1, i32 3>
  %i.nq = shufflevector <2 x i64> %i.ni, <2 x i64> %i.nn, <2 x i32> <i32 0, i32 2>
  %i.nr = shufflevector <2 x i64> %i.ni, <2 x i64> %i.nn, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.na, ptr %.0612292.i, align 1, !tbaa !18
  %i.ns = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 16
  store <2 x i64> %i.no, ptr %i.ns, align 1, !tbaa !18
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %.0612292.i, i64 %i.d ; 2 uses
  store <2 x i64> %i.nb, ptr %i.nt, align 1, !tbaa !18
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store <2 x i64> %i.np, ptr %i.nu, align 1, !tbaa !18
  %i.nv = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 %.idx641.i ; 2 uses
  store <2 x i64> %i.nc, ptr %i.nv, align 1, !tbaa !18
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  store <2 x i64> %i.nq, ptr %i.nw, align 1, !tbaa !18
  %i.nx = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 %.idx642.i ; 2 uses
  store <2 x i64> %i.nd, ptr %i.nx, align 1, !tbaa !18
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  store <2 x i64> %i.nr, ptr %i.ny, align 1, !tbaa !18
  %i.nz = getelementptr inbounds nuw i8, ptr %.0612292.i, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread231.i, %.lr.ph295.i
  %.2614.i = phi ptr [ %i.nz, %bb.l ], [ %.0612292.i, %.lr.ph295.i ], [ %i.mp, %.thread231.i ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.6293.i, i64 128 ; 2 uses
  %i.ob = add nuw nsw i32 %.0624291.i, 8          ; 2 uses
  %i.oc = or disjoint i32 %i.ob, 7
  %i.od = icmp slt i32 %i.oc, %5
  br i1 %i.od, label %.lr.ph295.i, label %.preheader256.i, !llvm.loop !452

.preheader255.i:                                  ; preds = %bb.o, %.preheader256.i
  %.1625.lcssa.i = phi i32 [ %.0624.lcssa.i, %.preheader256.i ], [ %i.px, %bb.o ] ; 3 uses
  %.3615.lcssa.i = phi ptr [ %.0612.lcssa.i, %.preheader256.i ], [ %.5617.i, %bb.o ] ; 2 uses
  %.7.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader256.i ], [ %i.pw, %bb.o ] ; 2 uses
  %i.oe = or disjoint i32 %.1625.lcssa.i, 1
  %i.of = icmp slt i32 %i.oe, %5
  br i1 %i.of, label %.lr.ph309.i, label %.preheader254.i

.lr.ph302.i:                                      ; preds = %.preheader256.i, %bb.o
  %.7301.i = phi ptr [ %i.pw, %bb.o ], [ %.6.lcssa.i, %.preheader256.i ] ; 4 uses
  %.3615300.i = phi ptr [ %.5617.i, %bb.o ], [ %.0612.lcssa.i, %.preheader256.i ] ; 11 uses
  %.1625299.i = phi i32 [ %i.px, %bb.o ], [ %.0624.lcssa.i, %.preheader256.i ]
  %i.og = load <4 x i32>, ptr %.7301.i, align 16, !tbaa !18 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.7301.i, i64 16
  %i.oi = load <8 x i32>, ptr %i.oh, align 16, !tbaa !18 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.7301.i, i64 48
  %i.ok = load <4 x i32>, ptr %i.oj, align 16, !tbaa !18 ; 2 uses
  %i.ol = shufflevector <4 x i32> %i.og, <4 x i32> %i.ok, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.om = bitcast <4 x i32> %i.ol to <2 x i64>    ; 2 uses
  %i.on = shufflevector <4 x i32> %i.og, <4 x i32> %i.ok, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.oo = bitcast <4 x i32> %i.on to <2 x i64>    ; 2 uses
  %i.op = shufflevector <8 x i32> %i.oi, <8 x i32> poison, <4 x i32> <i32 4, i32 3, i32 5, i32 0>
  %i.oq = bitcast <4 x i32> %i.op to <2 x i64>    ; 2 uses
  %i.or = shufflevector <8 x i32> %i.oi, <8 x i32> poison, <4 x i32> <i32 6, i32 1, i32 7, i32 2>
  %i.os = bitcast <4 x i32> %i.or to <2 x i64>    ; 2 uses
  %i.ot = shufflevector <2 x i64> %i.om, <2 x i64> %i.oq, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ou = shufflevector <2 x i64> %i.om, <2 x i64> %i.oq, <2 x i32> <i32 1, i32 3>
  %i.ov = shufflevector <2 x i64> %i.os, <2 x i64> %i.oo, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ow = shufflevector <2 x i64> %i.os, <2 x i64> %i.oo, <2 x i32> <i32 1, i32 3>
  %i.ox = bitcast <2 x i64> %i.ou to <4 x i32>    ; 3 uses
  %.cast637.i = bitcast <2 x i64> %i.ow to <4 x i32> ; 3 uses
  switch i32 %i.b, label %bb.o [
    i32 4, label %.thread233.i
    i32 1, label %bb.n
  ]

.thread233.i:                                     ; preds = %.lr.ph302.i
  %i.oy = shufflevector <4 x i32> %.cast637.i, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.oz = shufflevector <4 x i32> %i.ox, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <2 x i64> %i.ot, ptr %.3615300.i, align 16, !tbaa !18
  %i.pa = getelementptr inbounds nuw i8, ptr %.3615300.i, i64 16
  store <4 x i32> %i.oz, ptr %i.pa, align 16, !tbaa !18
  %i.pb = getelementptr inbounds nuw i8, ptr %.3615300.i, i64 32
  store <2 x i64> %i.ov, ptr %i.pb, align 16, !tbaa !18
  %i.pc = getelementptr inbounds nuw i8, ptr %.3615300.i, i64 48
  store <4 x i32> %i.oy, ptr %i.pc, align 16, !tbaa !18
  %i.pd = getelementptr inbounds nuw i8, ptr %.3615300.i, i64 64
  br label %bb.o

end_hunk_0
begin_hunk_1_@_ZN4ncnn29unpack_output_tile_int32_avx2ERKNS_3MatERS0_iiii:bb.a
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %.6618.lcssa.i, i64 %i.d
  store i32 %.sroa.0.4.vec.extract.us.i.prol, ptr %i.qd, align 4, !tbaa !24
  %.sroa.0.8.vec.extract.us.i.prol = extractelement <4 x i32> %i.qc, i64 2
  %i.qe = getelementptr inbounds nuw i8, ptr %.6618.lcssa.i, i64 %.idx641.i
  store i32 %.sroa.0.8.vec.extract.us.i.prol, ptr %i.qe, align 4, !tbaa !24
  %.sroa.0.12.vec.extract.us.i.prol = extractelement <4 x i32> %i.qc, i64 3
  %i.qf = getelementptr inbounds nuw i8, ptr %.6618.lcssa.i, i64 %.idx642.i
  store i32 %.sroa.0.12.vec.extract.us.i.prol, ptr %i.qf, align 4, !tbaa !24
  %i.qg = getelementptr inbounds nuw i8, ptr %.6618.lcssa.i, i64 4
  %i.qh = getelementptr inbounds nuw i8, ptr %.8.lcssa.i, i64 16 ; 2 uses
  %i.qi = add nuw nsw i32 %.2626.lcssa.i, 1
  br label %.lr.ph316.split.us319.i.prol.loopexit

.lr.ph316.split.us319.i.prol.loopexit:            ; preds = %.lr.ph316.split.us319.i.prol, %.lr.ph316.split.us319.i.preheader
  %.lcssa400.unr = phi ptr [ poison, %.lr.ph316.split.us319.i.preheader ], [ %i.qh, %.lr.ph316.split.us319.i.prol ]
  %.9315.us320.i.unr = phi ptr [ %.8.lcssa.i, %.lr.ph316.split.us319.i.preheader ], [ %i.qh, %.lr.ph316.split.us319.i.prol ]
  %.9621314.us321.i.unr = phi ptr [ %.6618.lcssa.i, %.lr.ph316.split.us319.i.preheader ], [ %i.qg, %.lr.ph316.split.us319.i.prol ]
  %.3627313.us322.i.unr = phi i32 [ %.2626.lcssa.i, %.lr.ph316.split.us319.i.preheader ], [ %i.qi, %.lr.ph316.split.us319.i.prol ]
  %i.qj = icmp eq i32 %5, %.neg
  br i1 %i.qj, label %._crit_edge317.i, label %.lr.ph316.split.us319.i

.thread237.us.i.preheader:                        ; preds = %.lr.ph316.i
  %i.qk = sub i32 %5, %.2626.lcssa.i
  %xtraiter408 = and i32 %i.qk, 7                 ; 2 uses
  %lcmp.mod409.not = icmp eq i32 %xtraiter408, 0
  br i1 %lcmp.mod409.not, label %.thread237.us.i.prol.loopexit, label %.thread237.us.i.prol

.thread237.us.i.prol:                             ; preds = %.thread237.us.i.preheader, %.thread237.us.i.prol
  %.9315.us.i.prol = phi ptr [ %i.qn, %.thread237.us.i.prol ], [ %.8.lcssa.i, %.thread237.us.i.preheader ] ; 2 uses
  %.9621314.us.i.prol = phi ptr [ %i.qm, %.thread237.us.i.prol ], [ %.6618.lcssa.i, %.thread237.us.i.preheader ] ; 2 uses
  %.3627313.us.i.prol = phi i32 [ %i.qo, %.thread237.us.i.prol ], [ %.2626.lcssa.i, %.thread237.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.thread237.us.i.prol ], [ 0, %.thread237.us.i.preheader ]
  %i.ql = load <2 x i64>, ptr %.9315.us.i.prol, align 16, !tbaa !18
  store <2 x i64> %i.ql, ptr %.9621314.us.i.prol, align 16, !tbaa !18
  %i.qm = getelementptr inbounds nuw i8, ptr %.9621314.us.i.prol, i64 16 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.9315.us.i.prol, i64 16 ; 3 uses
  %i.qo = add nuw nsw i32 %.3627313.us.i.prol, 1  ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter408
  br i1 %prol.iter.cmp.not, label %.thread237.us.i.prol.loopexit, label %.thread237.us.i.prol, !llvm.loop !454

.thread237.us.i.prol.loopexit:                    ; preds = %.thread237.us.i.prol, %.thread237.us.i.preheader
  %.lcssa401.unr = phi ptr [ poison, %.thread237.us.i.preheader ], [ %i.qn, %.thread237.us.i.prol ]
  %.9315.us.i.unr = phi ptr [ %.8.lcssa.i, %.thread237.us.i.preheader ], [ %i.qn, %.thread237.us.i.prol ]
  %.9621314.us.i.unr = phi ptr [ %.6618.lcssa.i, %.thread237.us.i.preheader ], [ %i.qm, %.thread237.us.i.prol ]
  %.3627313.us.i.unr = phi i32 [ %.2626.lcssa.i, %.thread237.us.i.preheader ], [ %i.qo, %.thread237.us.i.prol ]
  %i.qp = sub i32 %.2626.lcssa.i, %5
  %i.qq = icmp ugt i32 %i.qp, -8
  br i1 %i.qq, label %._crit_edge317.i, label %.thread237.us.i

.lr.ph316.split.preheader.i:                      ; preds = %.lr.ph316.i
  %scevgep.i = getelementptr i8, ptr %.8.lcssa.i, i64 16
  %i.qr = xor i32 %.2626.lcssa.i, -1
  %i.qs = add i32 %5, %i.qr
  %i.qt = zext i32 %i.qs to i64
  %i.qu = shl nuw nsw i64 %i.qt, 4
  %scevgep439.i = getelementptr i8, ptr %scevgep.i, i64 %i.qu
  br label %._crit_edge317.i

.thread237.us.i:                                  ; preds = %.thread237.us.i.prol.loopexit, %.thread237.us.i
  %.9315.us.i = phi ptr [ %i.rs, %.thread237.us.i ], [ %.9315.us.i.unr, %.thread237.us.i.prol.loopexit ] ; 9 uses
  %.9621314.us.i = phi ptr [ %i.rr, %.thread237.us.i ], [ %.9621314.us.i.unr, %.thread237.us.i.prol.loopexit ] ; 9 uses
  %.3627313.us.i = phi i32 [ %i.rt, %.thread237.us.i ], [ %.3627313.us.i.unr, %.thread237.us.i.prol.loopexit ]
  %i.qv = load <2 x i64>, ptr %.9315.us.i, align 16, !tbaa !18
  store <2 x i64> %i.qv, ptr %.9621314.us.i, align 16, !tbaa !18
  %i.qw = getelementptr inbounds nuw i8, ptr %.9621314.us.i, i64 16
  %i.qx = getelementptr inbounds nuw i8, ptr %.9315.us.i, i64 16
  %i.qy = load <2 x i64>, ptr %i.qx, align 16, !tbaa !18
  store <2 x i64> %i.qy, ptr %i.qw, align 16, !tbaa !18
  %i.qz = getelementptr inbounds nuw i8, ptr %.9621314.us.i, i64 32
  %i.ra = getelementptr inbounds nuw i8, ptr %.9315.us.i, i64 32
  %i.rb = load <2 x i64>, ptr %i.ra, align 16, !tbaa !18
  store <2 x i64> %i.rb, ptr %i.qz, align 16, !tbaa !18
  %i.rc = getelementptr inbounds nuw i8, ptr %.9621314.us.i, i64 48
  %i.rd = getelementptr inbounds nuw i8, ptr %.9315.us.i, i64 48
  %i.re = load <2 x i64>, ptr %i.rd, align 16, !tbaa !18
  store <2 x i64> %i.re, ptr %i.rc, align 16, !tbaa !18
  %i.rf = getelementptr inbounds nuw i8, ptr %.9621314.us.i, i64 64
  %i.rg = getelementptr inbounds nuw i8, ptr %.9315.us.i, i64 64
  %i.rh = load <2 x i64>, ptr %i.rg, align 16, !tbaa !18
  store <2 x i64> %i.rh, ptr %i.rf, align 16, !tbaa !18
  %i.ri = getelementptr inbounds nuw i8, ptr %.9621314.us.i, i64 80
  %i.rj = getelementptr inbounds nuw i8, ptr %.9315.us.i, i64 80
  %i.rk = load <2 x i64>, ptr %i.rj, align 16, !tbaa !18
  store <2 x i64> %i.rk, ptr %i.ri, align 16, !tbaa !18
  %i.rl = getelementptr inbounds nuw i8, ptr %.9621314.us.i, i64 96
  %i.rm = getelementptr inbounds nuw i8, ptr %.9315.us.i, i64 96
  %i.rn = load <2 x i64>, ptr %i.rm, align 16, !tbaa !18
  store <2 x i64> %i.rn, ptr %i.rl, align 16, !tbaa !18
  %i.ro = getelementptr inbounds nuw i8, ptr %.9621314.us.i, i64 112
  %i.rp = getelementptr inbounds nuw i8, ptr %.9315.us.i, i64 112
  %i.rq = load <2 x i64>, ptr %i.rp, align 16, !tbaa !18
  store <2 x i64> %i.rq, ptr %i.ro, align 16, !tbaa !18
  %i.rr = getelementptr inbounds nuw i8, ptr %.9621314.us.i, i64 128
  %i.rs = getelementptr inbounds nuw i8, ptr %.9315.us.i, i64 128 ; 2 uses
  %i.rt = add nuw nsw i32 %.3627313.us.i, 8       ; 2 uses
  %exitcond438.not.i.7 = icmp eq i32 %i.rt, %5
  br i1 %exitcond438.not.i.7, label %._crit_edge317.i, label %.thread237.us.i, !llvm.loop !455

.lr.ph316.split.us319.i:                          ; preds = %.lr.ph316.split.us319.i.prol.loopexit, %.lr.ph316.split.us319.i
  %.9315.us320.i = phi ptr [ %i.sf, %.lr.ph316.split.us319.i ], [ %.9315.us320.i.unr, %.lr.ph316.split.us319.i.prol.loopexit ] ; 3 uses
  %.9621314.us321.i = phi ptr [ %i.se, %.lr.ph316.split.us319.i ], [ %.9621314.us321.i.unr, %.lr.ph316.split.us319.i.prol.loopexit ] ; 6 uses
  %.3627313.us322.i = phi i32 [ %i.sg, %.lr.ph316.split.us319.i ], [ %.3627313.us322.i.unr, %.lr.ph316.split.us319.i.prol.loopexit ]
  %i.ru = load <4 x i32>, ptr %.9315.us320.i, align 16, !tbaa !18 ; 4 uses
  %.sroa.0.0.vec.extract.us.i = extractelement <4 x i32> %i.ru, i64 0
  store i32 %.sroa.0.0.vec.extract.us.i, ptr %.9621314.us321.i, align 4, !tbaa !24
  %.sroa.0.4.vec.extract.us.i = extractelement <4 x i32> %i.ru, i64 1
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.9621314.us321.i, i64 %i.d
  store i32 %.sroa.0.4.vec.extract.us.i, ptr %i.rv, align 4, !tbaa !24
  %.sroa.0.8.vec.extract.us.i = extractelement <4 x i32> %i.ru, i64 2
  %i.rw = getelementptr inbounds nuw i8, ptr %.9621314.us321.i, i64 %.idx641.i
  store i32 %.sroa.0.8.vec.extract.us.i, ptr %i.rw, align 4, !tbaa !24
  %.sroa.0.12.vec.extract.us.i = extractelement <4 x i32> %i.ru, i64 3
  %i.rx = getelementptr inbounds nuw i8, ptr %.9621314.us321.i, i64 %.idx642.i
  store i32 %.sroa.0.12.vec.extract.us.i, ptr %i.rx, align 4, !tbaa !24
  %i.ry = getelementptr inbounds nuw i8, ptr %.9621314.us321.i, i64 4 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.9315.us320.i, i64 16
  %i.sa = load <4 x i32>, ptr %i.rz, align 16, !tbaa !18 ; 4 uses
  %.sroa.0.0.vec.extract.us.i.1 = extractelement <4 x i32> %i.sa, i64 0
  store i32 %.sroa.0.0.vec.extract.us.i.1, ptr %i.ry, align 4, !tbaa !24
  %.sroa.0.4.vec.extract.us.i.1 = extractelement <4 x i32> %i.sa, i64 1
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.d
  store i32 %.sroa.0.4.vec.extract.us.i.1, ptr %i.sb, align 4, !tbaa !24
  %.sroa.0.8.vec.extract.us.i.1 = extractelement <4 x i32> %i.sa, i64 2
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ry, i64 %.idx641.i
  store i32 %.sroa.0.8.vec.extract.us.i.1, ptr %i.sc, align 4, !tbaa !24
  %.sroa.0.12.vec.extract.us.i.1 = extractelement <4 x i32> %i.sa, i64 3
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ry, i64 %.idx642.i
  store i32 %.sroa.0.12.vec.extract.us.i.1, ptr %i.sd, align 4, !tbaa !24
  %i.se = getelementptr inbounds nuw i8, ptr %.9621314.us321.i, i64 8
  %i.sf = getelementptr inbounds nuw i8, ptr %.9315.us320.i, i64 32 ; 2 uses
  %i.sg = add nuw nsw i32 %.3627313.us322.i, 2    ; 2 uses
  %exitcond437.not.i.1 = icmp eq i32 %i.sg, %5
  br i1 %exitcond437.not.i.1, label %._crit_edge317.i, label %.lr.ph316.split.us319.i, !llvm.loop !455

.lr.ph309.i:                                      ; preds = %.preheader255.i, %bb.q
  %.8308.i = phi ptr [ %i.su, %bb.q ], [ %.7.lcssa.i, %.preheader255.i ] ; 2 uses
  %.6618307.i = phi ptr [ %.8620.i, %bb.q ], [ %.3615.lcssa.i, %.preheader255.i ] ; 9 uses
  %.2626306.i = phi i32 [ %i.sv, %bb.q ], [ %.1625.lcssa.i, %.preheader255.i ]
  %i.sh = load <8 x i32>, ptr %.8308.i, align 16, !tbaa !18 ; 6 uses
  switch i32 %i.b, label %bb.q [
    i32 4, label %.thread235.i
    i32 1, label %bb.p
  ]

.thread235.i:                                     ; preds = %.lr.ph309.i
  %i.si = shufflevector <8 x i32> %i.sh, <8 x i32> poison, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  %i.sj = shufflevector <8 x i32> %i.sh, <8 x i32> poison, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %i.sj, ptr %.6618307.i, align 16, !tbaa !18
  %i.sk = getelementptr inbounds nuw i8, ptr %.6618307.i, i64 16
  store <4 x i32> %i.si, ptr %i.sk, align 16, !tbaa !18
  %i.sl = getelementptr inbounds nuw i8, ptr %.6618307.i, i64 32
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph309.i
  %i.sm = shufflevector <8 x i32> %i.sh, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.sm, ptr %.6618307.i, align 4, !tbaa !24
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %.6618307.i, i64 %i.d
  %i.so = shufflevector <8 x i32> %i.sh, <8 x i32> poison, <2 x i32> <i32 5, i32 1>
  store <2 x i32> %i.so, ptr %i.sn, align 4, !tbaa !24
  %i.sp = getelementptr inbounds nuw i8, ptr %.6618307.i, i64 %.idx641.i
  %i.sq = shufflevector <8 x i32> %i.sh, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.sq, ptr %i.sp, align 4, !tbaa !24
  %i.sr = getelementptr inbounds nuw i8, ptr %.6618307.i, i64 %.idx642.i
  %i.ss = shufflevector <8 x i32> %i.sh, <8 x i32> poison, <2 x i32> <i32 7, i32 3>
  store <2 x i32> %i.ss, ptr %i.sr, align 4, !tbaa !24
  %i.st = getelementptr inbounds nuw i8, ptr %.6618307.i, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread235.i, %.lr.ph309.i
  %.8620.i = phi ptr [ %i.st, %bb.p ], [ %.6618307.i, %.lr.ph309.i ], [ %i.sl, %.thread235.i ] ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.8308.i, i64 32 ; 2 uses
  %i.sv = add nuw nsw i32 %.2626306.i, 2          ; 3 uses
  %i.sw = or disjoint i32 %i.sv, 1
  %i.sx = icmp slt i32 %i.sw, %5
  br i1 %i.sx, label %.lr.ph309.i, label %.preheader254.i, !llvm.loop !456

._crit_edge317.i:                                 ; preds = %.lr.ph316.split.us319.i.prol.loopexit, %.lr.ph316.split.us319.i, %.thread237.us.i.prol.loopexit, %.thread237.us.i, %.lr.ph316.split.preheader.i, %.preheader254.i
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader254.i ], [ %scevgep439.i, %.lr.ph316.split.preheader.i ], [ %i.rs, %.thread237.us.i ], [ %.lcssa401.unr, %.thread237.us.i.prol.loopexit ], [ %.lcssa400.unr, %.lr.ph316.split.us319.i.prol.loopexit ], [ %i.sf, %.lr.ph316.split.us319.i ] ; 2 uses
  %indvars.iv.next441.i = add nuw nsw i64 %indvars.iv440.i, 4 ; 3 uses
  %i.sy = icmp slt i64 %indvars.iv.next441.i, %invariant.op.i
  br i1 %i.sy, label %bb.k, label %.preheader253.loopexit.i, !llvm.loop !457

.preheader249.loopexit.i:                         ; preds = %._crit_edge357.i
  %i.sz = trunc nuw nsw i64 %indvars.iv.next445.i to i32
  br label %.preheader249.i

.preheader249.i:                                  ; preds = %.preheader249.loopexit.i, %.preheader253.i
  %.2582.lcssa.i = phi i32 [ %.1581.lcssa.i, %.preheader253.i ], [ %i.sz, %.preheader249.loopexit.i ] ; 2 uses
  %.10.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader253.i ], [ %.14.lcssa.i, %.preheader249.loopexit.i ]
  %i.ta = icmp slt i32 %.2582.lcssa.i, %3
  br i1 %i.ta, label %.lr.ph394.i, label %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit

.lr.ph394.i:                                      ; preds = %.preheader249.i
  %i.tb = sext i32 %4 to i64
  %i.tc = icmp sgt i32 %5, 7
  %i.td = and i32 %5, -8                          ; 2 uses
  %i.te = sext i32 %.2582.lcssa.i to i64
  %i.tf = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %i.tg = add i32 %5, -2
  %i.th = add i32 %5, -8                          ; 2 uses
  %i.ti = lshr i32 %i.th, 3
  %i.tj = add nuw nsw i32 %i.ti, 1                ; 2 uses
  %xtraiter413 = and i32 %i.tj, 3                 ; 3 uses
  %i.tk = icmp ult i32 %i.th, 24
  %unroll_iter = and i32 %i.tj, 1073741820
  %lcmp.mod414.not = icmp eq i32 %xtraiter413, 0
  %lcmp.mod417 = icmp ne i32 %xtraiter413, 0
  %6 = add i32 %5, -2
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge357.i, %.lr.ph361.i
  %indvars.iv444.i = phi i64 [ %i.kb, %.lr.ph361.i ], [ %indvars.iv.next445.i, %._crit_edge357.i ] ; 2 uses
  %.10360.i = phi ptr [ %.5.lcssa.i, %.lr.ph361.i ], [ %.14.lcssa.i, %._crit_edge357.i ] ; 2 uses
  %i.tl = load ptr, ptr %1, align 8, !tbaa !15
  %i.tm = add nsw i64 %indvars.iv444.i, %i.kd
  %i.tn = mul i64 %i.tm, %i.d
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.tn
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.jy ; 2 uses
  br i1 %i.jz, label %.lr.ph335.i, label %.preheader252.i

.preheader252.i:                                  ; preds = %.lr.ph335.i, %bb.r
  %.0632.lcssa.i = phi i32 [ 0, %bb.r ], [ %i.ka, %.lr.ph335.i ] ; 3 uses
  %.0628.lcssa.i = phi ptr [ %i.tp, %bb.r ], [ %i.us, %.lr.ph335.i ] ; 2 uses
  %.11.lcssa.i = phi ptr [ %.10360.i, %bb.r ], [ %i.ut, %.lr.ph335.i ] ; 2 uses
  %i.tq = or disjoint i32 %.0632.lcssa.i, 3
  %i.tr = icmp slt i32 %i.tq, %5
  br i1 %i.tr, label %.lr.ph342.i, label %.preheader251.i

.lr.ph335.i:                                      ; preds = %bb.r, %.lr.ph335.i
  %.11333.i = phi ptr [ %i.ut, %.lr.ph335.i ], [ %.10360.i, %bb.r ] ; 5 uses
  %.0628332.i = phi ptr [ %i.us, %.lr.ph335.i ], [ %i.tp, %bb.r ] ; 4 uses
  %.0632331.i = phi i32 [ %i.uu, %.lr.ph335.i ], [ 0, %bb.r ]
  %i.ts = load <4 x i32>, ptr %.11333.i, align 16, !tbaa !18 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.11333.i, i64 16
  %i.tu = load <4 x i32>, ptr %i.tt, align 16, !tbaa !18 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.11333.i, i64 32
  %i.tw = load <4 x i32>, ptr %i.tv, align 16, !tbaa !18 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.11333.i, i64 48
  %i.ty = load <4 x i32>, ptr %i.tx, align 16, !tbaa !18 ; 2 uses
  %i.tz = shufflevector <4 x i32> %i.ts, <4 x i32> %i.tw, <4 x i32> <i32 0, i32 5, i32 1, i32 4>
  %i.ua = bitcast <4 x i32> %i.tz to <2 x i64>    ; 2 uses
  %i.ub = shufflevector <4 x i32> %i.ts, <4 x i32> %i.tw, <4 x i32> <i32 2, i32 7, i32 3, i32 6>
  %i.uc = bitcast <4 x i32> %i.ub to <2 x i64>    ; 2 uses
  %i.ud = shufflevector <4 x i32> %i.tu, <4 x i32> %i.ty, <4 x i32> <i32 0, i32 5, i32 1, i32 4>
  %i.ue = bitcast <4 x i32> %i.ud to <2 x i64>    ; 2 uses
  %i.uf = shufflevector <4 x i32> %i.tu, <4 x i32> %i.ty, <4 x i32> <i32 2, i32 7, i32 3, i32 6>
  %i.ug = bitcast <4 x i32> %i.uf to <2 x i64>    ; 2 uses
  %i.uh = shufflevector <2 x i64> %i.ua, <2 x i64> %i.uc, <2 x i32> <i32 0, i32 2>
  %i.ui = shufflevector <2 x i64> %i.ue, <2 x i64> %i.ug, <2 x i32> <i32 0, i32 2>
  %i.uj = shufflevector <2 x i64> %i.ua, <2 x i64> %i.uc, <2 x i32> <i32 1, i32 3>
  %i.uk = shufflevector <2 x i64> %i.ue, <2 x i64> %i.ug, <2 x i32> <i32 1, i32 3>
  %i.ul = bitcast <2 x i64> %i.uj to <4 x i32>
  %i.um = shufflevector <4 x i32> %i.ul, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.un = bitcast <2 x i64> %i.uk to <4 x i32>
  %i.uo = shufflevector <4 x i32> %i.un, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <2 x i64> %i.uh, ptr %.0628332.i, align 1, !tbaa !18
  %i.up = getelementptr inbounds nuw i8, ptr %.0628332.i, i64 16
  store <2 x i64> %i.ui, ptr %i.up, align 1, !tbaa !18
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %.0628332.i, i64 %i.d ; 2 uses
  store <4 x i32> %i.um, ptr %i.uq, align 1, !tbaa !18
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 16
  store <4 x i32> %i.uo, ptr %i.ur, align 1, !tbaa !18
  %i.us = getelementptr inbounds nuw i8, ptr %.0628332.i, i64 32 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.11333.i, i64 64 ; 2 uses
  %i.uu = add nuw nsw i32 %.0632331.i, 8          ; 2 uses
  %i.uv = or disjoint i32 %i.uu, 7
  %i.uw = icmp slt i32 %i.uv, %5
  br i1 %i.uw, label %.lr.ph335.i, label %.preheader252.i, !llvm.loop !458

.preheader251.i:                                  ; preds = %.lr.ph342.i, %.preheader252.i
  %.1633.lcssa.i = phi i32 [ %.0632.lcssa.i, %.preheader252.i ], [ %i.wn, %.lr.ph342.i ] ; 6 uses
  %.1629.lcssa.i = phi ptr [ %.0628.lcssa.i, %.preheader252.i ], [ %i.wl, %.lr.ph342.i ] ; 16 uses
  %.12.lcssa.i = phi ptr [ %.11.lcssa.i, %.preheader252.i ], [ %i.wm, %.lr.ph342.i ] ; 10 uses
  %i.ux = or disjoint i32 %.1633.lcssa.i, 1
  %i.uy = icmp slt i32 %i.ux, %5
  br i1 %i.uy, label %.lr.ph349.i.preheader, label %.preheader250.i

.lr.ph349.i.preheader:                            ; preds = %.preheader251.i
  %i.uz = sub i32 %i.kf, %.1633.lcssa.i           ; 2 uses
  %7 = zext i32 %i.uz to i64                      ; 2 uses
  %8 = lshr i64 %7, 1
  %9 = add nuw nsw i64 %8, 1                      ; 2 uses
  %min.iters.check222 = icmp ult i32 %i.uz, 46
  br i1 %min.iters.check222, label %.lr.ph349.i.preheader384, label %vector.memcheck223

vector.memcheck223:                               ; preds = %.lr.ph349.i.preheader
  %10 = lshr i64 %7, 1                            ; 2 uses
  %i.va = shl nuw nsw i64 %10, 3                  ; 3 uses
  %i.vb = getelementptr i8, ptr %.1629.lcssa.i, i64 %i.va
  %i.vc = getelementptr i8, ptr %i.vb, i64 4      ; 4 uses
  %i.vd = getelementptr i8, ptr %.1629.lcssa.i, i64 4 ; 4 uses
  %i.ve = getelementptr i8, ptr %.1629.lcssa.i, i64 %i.va
  %i.vf = getelementptr i8, ptr %i.ve, i64 8      ; 4 uses
  %i.vg = getelementptr i8, ptr %.1629.lcssa.i, i64 %i.ke ; 4 uses
  %11 = add i64 %i.va, %i.ke                      ; 2 uses
  %i.vh = getelementptr i8, ptr %.1629.lcssa.i, i64 %11
  %i.vi = getelementptr i8, ptr %i.vh, i64 4      ; 4 uses
  %i.vj = getelementptr i8, ptr %.1629.lcssa.i, i64 %i.ke
  %i.vk = getelementptr i8, ptr %i.vj, i64 4      ; 4 uses
  %i.vl = getelementptr i8, ptr %.1629.lcssa.i, i64 %11
  %i.vm = getelementptr i8, ptr %i.vl, i64 8      ; 4 uses
  %i.vn = shl nuw nsw i64 %10, 4
  %i.vo = getelementptr i8, ptr %.12.lcssa.i, i64 %i.vn
  %i.vp = getelementptr i8, ptr %i.vo, i64 16     ; 4 uses
  %bound0224 = icmp ult ptr %.1629.lcssa.i, %i.vf
  %bound1225 = icmp ult ptr %i.vd, %i.vc
  %found.conflict226 = and i1 %bound0224, %bound1225
  %bound0227 = icmp ult ptr %.1629.lcssa.i, %i.vi
  %bound1228 = icmp ult ptr %i.vg, %i.vc
  %found.conflict229 = and i1 %bound0227, %bound1228
  %conflict.rdx230 = or i1 %found.conflict226, %found.conflict229
  %bound0231 = icmp ult ptr %.1629.lcssa.i, %i.vm
  %bound1232 = icmp ult ptr %i.vk, %i.vc
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %conflict.rdx230, %found.conflict233
  %bound0235 = icmp ult ptr %.1629.lcssa.i, %i.vp
  %bound1236 = icmp ult ptr %.12.lcssa.i, %i.vc
  %found.conflict237 = and i1 %bound0235, %bound1236
  %conflict.rdx238 = or i1 %conflict.rdx234, %found.conflict237
  %bound0239 = icmp ult ptr %i.vd, %i.vi
  %bound1240 = icmp ult ptr %i.vg, %i.vf
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx242 = or i1 %conflict.rdx238, %found.conflict241
  %bound0243 = icmp ult ptr %i.vd, %i.vm
  %bound1244 = icmp ult ptr %i.vk, %i.vf
  %found.conflict245 = and i1 %bound0243, %bound1244
  %conflict.rdx246 = or i1 %conflict.rdx242, %found.conflict245
  %bound0247 = icmp ult ptr %i.vd, %i.vp
  %bound1248 = icmp ult ptr %.12.lcssa.i, %i.vf
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx250 = or i1 %conflict.rdx246, %found.conflict249
  %bound0251 = icmp ult ptr %i.vg, %i.vm
  %bound1252 = icmp ult ptr %i.vk, %i.vi
  %found.conflict253 = and i1 %bound0251, %bound1252
  %conflict.rdx254 = or i1 %conflict.rdx250, %found.conflict253
  %bound0255 = icmp ult ptr %i.vg, %i.vp
  %bound1256 = icmp ult ptr %.12.lcssa.i, %i.vi
  %found.conflict257 = and i1 %bound0255, %bound1256
  %conflict.rdx258 = or i1 %conflict.rdx254, %found.conflict257
  %bound0259 = icmp ult ptr %i.vk, %i.vp
  %bound1260 = icmp ult ptr %.12.lcssa.i, %i.vm
  %found.conflict261 = and i1 %bound0259, %bound1260
  %conflict.rdx262 = or i1 %conflict.rdx258, %found.conflict261
  br i1 %conflict.rdx262, label %.lr.ph349.i.preheader384, label %vector.ph263

vector.ph263:                                     ; preds = %vector.memcheck223
  %n.vec264 = and i64 %9, 4294967288              ; 5 uses
  %i.vq = shl nuw nsw i64 %n.vec264, 4
  %i.vr = getelementptr i8, ptr %.12.lcssa.i, i64 %i.vq ; 2 uses
  %i.vs = shl nuw nsw i64 %n.vec264, 3
  %i.vt = getelementptr i8, ptr %.1629.lcssa.i, i64 %i.vs ; 2 uses
  %i.vu = trunc nuw i64 %n.vec264 to i32
  %i.vv = shl i32 %i.vu, 1
  %i.vw = add i32 %.1633.lcssa.i, %i.vv           ; 2 uses
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph263
  %index266 = phi i64 [ 0, %vector.ph263 ], [ %index.next275, %vector.body265 ] ; 3 uses
  %i.vx = shl i64 %index266, 4
  %next.gep267 = getelementptr i8, ptr %.12.lcssa.i, i64 %i.vx
  %i.vy = shl i64 %index266, 3
  %next.gep268 = getelementptr i8, ptr %.1629.lcssa.i, i64 %i.vy ; 2 uses
  %wide.vec269 = load <32 x i32>, ptr %next.gep267, align 4, !tbaa !24, !alias.scope !487 ; 2 uses
  %interleaved.vec = shufflevector <32 x i32> %wide.vec269, <32 x i32> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29>
  store <16 x i32> %interleaved.vec, ptr %next.gep268, align 4, !tbaa !24
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %next.gep268, i64 %i.d
  %interleaved.vec274 = shufflevector <32 x i32> %wide.vec269, <32 x i32> poison, <16 x i32> <i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15, i32 18, i32 19, i32 22, i32 23, i32 26, i32 27, i32 30, i32 31>
  store <16 x i32> %interleaved.vec274, ptr %i.vz, align 4, !tbaa !24
  %index.next275 = add nuw i64 %index266, 8       ; 2 uses
  %i.wa = icmp eq i64 %index.next275, %n.vec264
  br i1 %i.wa, label %middle.block276, label %vector.body265, !llvm.loop !461

middle.block276:                                  ; preds = %vector.body265
  %cmp.n277 = icmp eq i64 %9, %n.vec264
  br i1 %cmp.n277, label %.preheader250.i, label %.lr.ph349.i.preheader384

.lr.ph349.i.preheader384:                         ; preds = %vector.memcheck223, %.lr.ph349.i.preheader, %middle.block276
  %.13348.i.ph = phi ptr [ %.12.lcssa.i, %vector.memcheck223 ], [ %.12.lcssa.i, %.lr.ph349.i.preheader ], [ %i.vr, %middle.block276 ]
  %.2630347.i.ph = phi ptr [ %.1629.lcssa.i, %vector.memcheck223 ], [ %.1629.lcssa.i, %.lr.ph349.i.preheader ], [ %i.vt, %middle.block276 ]
  %.2634346.i.ph = phi i32 [ %.1633.lcssa.i, %vector.memcheck223 ], [ %.1633.lcssa.i, %.lr.ph349.i.preheader ], [ %i.vw, %middle.block276 ]
  br label %.lr.ph349.i

.lr.ph342.i:                                      ; preds = %.preheader252.i, %.lr.ph342.i
  %.12341.i = phi ptr [ %i.wm, %.lr.ph342.i ], [ %.11.lcssa.i, %.preheader252.i ] ; 2 uses
  %.1629340.i = phi ptr [ %i.wl, %.lr.ph342.i ], [ %.0628.lcssa.i, %.preheader252.i ] ; 3 uses
  %.1633339.i = phi i32 [ %i.wn, %.lr.ph342.i ], [ %.0632.lcssa.i, %.preheader252.i ]
  %i.wb = load <8 x i32>, ptr %.12341.i, align 16, !tbaa !18 ; 2 uses
  %i.wc = shufflevector <8 x i32> %i.wb, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.wd = bitcast <4 x i32> %i.wc to <2 x i64>    ; 2 uses
  %i.we = shufflevector <8 x i32> %i.wb, <8 x i32> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.wf = bitcast <4 x i32> %i.we to <2 x i64>    ; 2 uses
  %i.wg = shufflevector <2 x i64> %i.wd, <2 x i64> %i.wf, <2 x i32> <i32 0, i32 2>
  %i.wh = shufflevector <2 x i64> %i.wf, <2 x i64> %i.wd, <2 x i32> <i32 1, i32 3>
  %i.wi = bitcast <2 x i64> %i.wh to <4 x i32>
  %i.wj = shufflevector <4 x i32> %i.wi, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <2 x i64> %i.wg, ptr %.1629340.i, align 1, !tbaa !18
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %.1629340.i, i64 %i.d
  store <4 x i32> %i.wj, ptr %i.wk, align 1, !tbaa !18
  %i.wl = getelementptr inbounds nuw i8, ptr %.1629340.i, i64 16 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.12341.i, i64 32 ; 2 uses
  %i.wn = add nuw nsw i32 %.1633339.i, 4          ; 3 uses
  %i.wo = or disjoint i32 %i.wn, 3
  %i.wp = icmp slt i32 %i.wo, %5
  br i1 %i.wp, label %.lr.ph342.i, label %.preheader251.i, !llvm.loop !462

.preheader250.i:                                  ; preds = %.lr.ph349.i, %middle.block276, %.preheader251.i
  %.2634.lcssa.i = phi i32 [ %.1633.lcssa.i, %.preheader251.i ], [ %i.vw, %middle.block276 ], [ %i.yv, %.lr.ph349.i ] ; 7 uses
  %.2630.lcssa.i = phi ptr [ %.1629.lcssa.i, %.preheader251.i ], [ %i.vt, %middle.block276 ], [ %i.yt, %.lr.ph349.i ] ; 11 uses
  %.13.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader251.i ], [ %i.vr, %middle.block276 ], [ %i.yu, %.lr.ph349.i ] ; 11 uses
  %i.wq = icmp slt i32 %.2634.lcssa.i, %5
  br i1 %i.wq, label %iter.check, label %._crit_edge357.i

iter.check:                                       ; preds = %.preheader250.i
  %i.wr = xor i32 %.2634.lcssa.i, -1
  %i.ws = add i32 %5, %i.wr                       ; 3 uses
  %i.wt = zext i32 %i.ws to i64
  %i.wu = add nuw nsw i64 %i.wt, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ws, 3
  br i1 %min.iters.check, label %.lr.ph356.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.wv = xor i32 %.2634.lcssa.i, -1
  %i.ww = add i32 %5, %i.wv
  %i.wx = zext i32 %i.ww to i64                   ; 2 uses
  %i.wy = shl nuw nsw i64 %i.wx, 2                ; 2 uses
  %12 = getelementptr i8, ptr %.2630.lcssa.i, i64 %i.wy
  %i.wz = getelementptr i8, ptr %12, i64 4        ; 2 uses
  %i.xa = getelementptr i8, ptr %.2630.lcssa.i, i64 %i.ke ; 2 uses
  %i.xb = getelementptr i8, ptr %.2630.lcssa.i, i64 %i.ke
  %i.xc = getelementptr i8, ptr %i.xb, i64 %i.wy
  %i.xd = getelementptr i8, ptr %i.xc, i64 4      ; 2 uses
  %i.xe = shl nuw nsw i64 %i.wx, 3
  %i.xf = getelementptr i8, ptr %.13.lcssa.i, i64 %i.xe
  %i.xg = getelementptr i8, ptr %i.xf, i64 8      ; 2 uses
  %bound0 = icmp ult ptr %.2630.lcssa.i, %i.xd
  %bound1 = icmp ult ptr %i.xa, %i.wz
  %found.conflict = and i1 %bound0, %bound1
  %bound0147 = icmp ult ptr %.2630.lcssa.i, %i.xg
  %bound1148 = icmp ult ptr %.13.lcssa.i, %i.wz
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx = or i1 %found.conflict, %found.conflict149
  %bound0150 = icmp ult ptr %i.xa, %i.xg
  %bound1151 = icmp ult ptr %.13.lcssa.i, %i.xd
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx153 = or i1 %conflict.rdx, %found.conflict152
  br i1 %conflict.rdx153, label %.lr.ph356.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check154 = icmp ult i32 %i.ws, 15
  br i1 %min.iters.check154, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.xh = and i64 %i.wu, 12
  %n.vec = and i64 %i.wu, 8589934576              ; 6 uses
  %i.xi = shl nuw nsw i64 %n.vec, 3
  %i.xj = getelementptr i8, ptr %.13.lcssa.i, i64 %i.xi ; 2 uses
  %i.xk = shl nuw nsw i64 %n.vec, 2
  %i.xl = getelementptr i8, ptr %.2630.lcssa.i, i64 %i.xk
  %i.xm = trunc i64 %n.vec to i32
  %i.xn = add i32 %.2634.lcssa.i, %i.xm
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.xo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.13.lcssa.i, i64 %i.xo
  %i.xp = getelementptr i8, ptr %.13.lcssa.i, i64 %i.xo
  %next.gep155 = getelementptr i8, ptr %i.xp, i64 64
  %i.xq = shl i64 %index, 2
  %next.gep156 = getelementptr i8, ptr %.2630.lcssa.i, i64 %i.xq ; 3 uses
  %wide.vec = load <16 x i32>, ptr %next.gep, align 4, !tbaa !24, !alias.scope !488 ; 2 uses
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec157 = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec158 = load <16 x i32>, ptr %next.gep155, align 4, !tbaa !24, !alias.scope !488 ; 2 uses
  %strided.vec159 = shufflevector <16 x i32> %wide.vec158, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec160 = shufflevector <16 x i32> %wide.vec158, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.xr = getelementptr i8, ptr %next.gep156, i64 32
  store <8 x i32> %strided.vec, ptr %next.gep156, align 4, !tbaa !24, !alias.scope !489, !noalias !490
  store <8 x i32> %strided.vec159, ptr %i.xr, align 4, !tbaa !24, !alias.scope !489, !noalias !490
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %next.gep156, i64 %i.d ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 32
  store <8 x i32> %strided.vec157, ptr %i.xs, align 4, !tbaa !24, !alias.scope !491, !noalias !488
  store <8 x i32> %strided.vec160, ptr %i.xt, align 4, !tbaa !24, !alias.scope !491, !noalias !488
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.xu = icmp eq i64 %index.next, %n.vec
  br i1 %i.xu, label %middle.block, label %vector.body, !llvm.loop !467

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.wu, %n.vec
  br i1 %cmp.n, label %._crit_edge357.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.xh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph356.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec161 = and i64 %i.wu, 8589934588           ; 5 uses
  %i.xv = shl nuw nsw i64 %n.vec161, 3
  %i.xw = getelementptr i8, ptr %.13.lcssa.i, i64 %i.xv ; 2 uses
  %i.xx = shl nuw nsw i64 %n.vec161, 2
  %i.xy = getelementptr i8, ptr %.2630.lcssa.i, i64 %i.xx
  %i.xz = trunc i64 %n.vec161 to i32
  %i.ya = add i32 %.2634.lcssa.i, %i.xz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index162 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next168, %vec.epilog.vector.body ] ; 3 uses
  %i.yb = shl i64 %index162, 3
  %next.gep163 = getelementptr i8, ptr %.13.lcssa.i, i64 %i.yb
  %i.yc = shl i64 %index162, 2
  %next.gep164 = getelementptr i8, ptr %.2630.lcssa.i, i64 %i.yc ; 2 uses
  %wide.vec165 = load <8 x i32>, ptr %next.gep163, align 4, !tbaa !24, !alias.scope !488 ; 2 uses
  %strided.vec166 = shufflevector <8 x i32> %wide.vec165, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec167 = shufflevector <8 x i32> %wide.vec165, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x i32> %strided.vec166, ptr %next.gep164, align 4, !tbaa !24, !alias.scope !489, !noalias !490
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %next.gep164, i64 %i.d
  store <4 x i32> %strided.vec167, ptr %i.yd, align 4, !tbaa !24, !alias.scope !491, !noalias !488
  %index.next168 = add nuw i64 %index162, 4       ; 2 uses
  %i.ye = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.ye, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !468

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n169 = icmp eq i64 %i.wu, %n.vec161
  br i1 %cmp.n169, label %._crit_edge357.i, label %.lr.ph356.i.preheader

.lr.ph356.i.preheader:                            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.14355.i.ph = phi ptr [ %.13.lcssa.i, %iter.check ], [ %.13.lcssa.i, %vector.memcheck ], [ %i.xj, %vec.epilog.iter.check ], [ %i.xw, %vec.epilog.middle.block ] ; 2 uses
  %.3631354.i.ph = phi ptr [ %.2630.lcssa.i, %iter.check ], [ %.2630.lcssa.i, %vector.memcheck ], [ %i.xl, %vec.epilog.iter.check ], [ %i.xy, %vec.epilog.middle.block ] ; 2 uses
  %.3635353.i.ph = phi i32 [ %.2634.lcssa.i, %iter.check ], [ %.2634.lcssa.i, %vector.memcheck ], [ %i.xn, %vec.epilog.iter.check ], [ %i.ya, %vec.epilog.middle.block ] ; 4 uses
  %i.yf = sub i32 %5, %.3635353.i.ph
  %xtraiter410 = and i32 %i.yf, 3                 ; 2 uses
  %lcmp.mod411.not = icmp eq i32 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %.lr.ph356.i.prol.loopexit, label %.lr.ph356.i.prol

.lr.ph356.i.prol:                                 ; preds = %.lr.ph356.i.preheader, %.lr.ph356.i.prol
  %.14355.i.prol = phi ptr [ %i.yl, %.lr.ph356.i.prol ], [ %.14355.i.ph, %.lr.ph356.i.preheader ] ; 3 uses
  %.3631354.i.prol = phi ptr [ %i.yk, %.lr.ph356.i.prol ], [ %.3631354.i.ph, %.lr.ph356.i.preheader ] ; 3 uses
  %.3635353.i.prol = phi i32 [ %i.ym, %.lr.ph356.i.prol ], [ %.3635353.i.ph, %.lr.ph356.i.preheader ]
  %prol.iter412 = phi i32 [ %prol.iter412.next, %.lr.ph356.i.prol ], [ 0, %.lr.ph356.i.preheader ]
  %i.yg = load i32, ptr %.14355.i.prol, align 4, !tbaa !24
  %i.yh = getelementptr inbounds nuw i8, ptr %.14355.i.prol, i64 4
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !24
  store i32 %i.yg, ptr %.3631354.i.prol, align 4, !tbaa !24
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.3631354.i.prol, i64 %i.d
  store i32 %i.yi, ptr %i.yj, align 4, !tbaa !24
  %i.yk = getelementptr inbounds nuw i8, ptr %.3631354.i.prol, i64 4 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.14355.i.prol, i64 8 ; 3 uses
  %i.ym = add nuw nsw i32 %.3635353.i.prol, 1     ; 2 uses
  %prol.iter412.next = add i32 %prol.iter412, 1   ; 2 uses
  %prol.iter412.cmp.not = icmp eq i32 %prol.iter412.next, %xtraiter410
  br i1 %prol.iter412.cmp.not, label %.lr.ph356.i.prol.loopexit, label %.lr.ph356.i.prol, !llvm.loop !469

.lr.ph356.i.prol.loopexit:                        ; preds = %.lr.ph356.i.prol, %.lr.ph356.i.preheader
  %.lcssa393.unr = phi ptr [ poison, %.lr.ph356.i.preheader ], [ %i.yl, %.lr.ph356.i.prol ]
  %.14355.i.unr = phi ptr [ %.14355.i.ph, %.lr.ph356.i.preheader ], [ %i.yl, %.lr.ph356.i.prol ]
  %.3631354.i.unr = phi ptr [ %.3631354.i.ph, %.lr.ph356.i.preheader ], [ %i.yk, %.lr.ph356.i.prol ]
  %.3635353.i.unr = phi i32 [ %.3635353.i.ph, %.lr.ph356.i.preheader ], [ %i.ym, %.lr.ph356.i.prol ]
  %i.yn = sub i32 %.3635353.i.ph, %5
  %i.yo = icmp ugt i32 %i.yn, -4
  br i1 %i.yo, label %._crit_edge357.i, label %.lr.ph356.i

.lr.ph349.i:                                      ; preds = %.lr.ph349.i.preheader384, %.lr.ph349.i
  %.13348.i = phi ptr [ %i.yu, %.lr.ph349.i ], [ %.13348.i.ph, %.lr.ph349.i.preheader384 ] ; 3 uses
  %.2630347.i = phi ptr [ %i.yt, %.lr.ph349.i ], [ %.2630347.i.ph, %.lr.ph349.i.preheader384 ] ; 3 uses
  %.2634346.i = phi i32 [ %i.yv, %.lr.ph349.i ], [ %.2634346.i.ph, %.lr.ph349.i.preheader384 ]
  %i.yp = getelementptr inbounds nuw i8, ptr %.13348.i, i64 8
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %.2630347.i, i64 %i.d
  %i.yr = load <2 x i32>, ptr %i.yp, align 4, !tbaa !24
  %i.ys = load <2 x i32>, ptr %.13348.i, align 4, !tbaa !24
  store <2 x i32> %i.ys, ptr %.2630347.i, align 4, !tbaa !24
  store <2 x i32> %i.yr, ptr %i.yq, align 4, !tbaa !24
  %i.yt = getelementptr inbounds nuw i8, ptr %.2630347.i, i64 8 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.13348.i, i64 16 ; 2 uses
  %i.yv = add nuw nsw i32 %.2634346.i, 2          ; 3 uses
  %i.yw = or disjoint i32 %i.yv, 1
  %i.yx = icmp slt i32 %i.yw, %5
  br i1 %i.yx, label %.lr.ph349.i, label %.preheader250.i, !llvm.loop !470

.lr.ph356.i:                                      ; preds = %.lr.ph356.i.prol.loopexit, %.lr.ph356.i
  %.14355.i = phi ptr [ %i.zv, %.lr.ph356.i ], [ %.14355.i.unr, %.lr.ph356.i.prol.loopexit ] ; 9 uses
  %.3631354.i = phi ptr [ %i.zu, %.lr.ph356.i ], [ %.3631354.i.unr, %.lr.ph356.i.prol.loopexit ] ; 6 uses
  %.3635353.i = phi i32 [ %i.zw, %.lr.ph356.i ], [ %.3635353.i.unr, %.lr.ph356.i.prol.loopexit ]
  %i.yy = load i32, ptr %.14355.i, align 4, !tbaa !24
  %i.yz = getelementptr inbounds nuw i8, ptr %.14355.i, i64 4
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !24
  store i32 %i.yy, ptr %.3631354.i, align 4, !tbaa !24
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %.3631354.i, i64 %i.d
  store i32 %i.za, ptr %i.zb, align 4, !tbaa !24
  %i.zc = getelementptr inbounds nuw i8, ptr %.3631354.i, i64 4 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.14355.i, i64 8
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !24
  %i.zf = getelementptr inbounds nuw i8, ptr %.14355.i, i64 12
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !24
  store i32 %i.ze, ptr %i.zc, align 4, !tbaa !24
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.zc, i64 %i.d
  store i32 %i.zg, ptr %i.zh, align 4, !tbaa !24
  %i.zi = getelementptr inbounds nuw i8, ptr %.3631354.i, i64 8 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.14355.i, i64 16
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !24
  %i.zl = getelementptr inbounds nuw i8, ptr %.14355.i, i64 20
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !24
  store i32 %i.zk, ptr %i.zi, align 4, !tbaa !24
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %i.d
  store i32 %i.zm, ptr %i.zn, align 4, !tbaa !24
  %i.zo = getelementptr inbounds nuw i8, ptr %.3631354.i, i64 12 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %.14355.i, i64 24
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !24
  %i.zr = getelementptr inbounds nuw i8, ptr %.14355.i, i64 28
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !24
  store i32 %i.zq, ptr %i.zo, align 4, !tbaa !24
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %i.d
  store i32 %i.zs, ptr %i.zt, align 4, !tbaa !24
  %i.zu = getelementptr inbounds nuw i8, ptr %.3631354.i, i64 16
  %i.zv = getelementptr inbounds nuw i8, ptr %.14355.i, i64 32 ; 2 uses
  %i.zw = add nuw nsw i32 %.3635353.i, 4          ; 2 uses
  %exitcond443.not.i.3 = icmp eq i32 %i.zw, %5
  br i1 %exitcond443.not.i.3, label %._crit_edge357.i, label %.lr.ph356.i, !llvm.loop !471

._crit_edge357.i:                                 ; preds = %.lr.ph356.i.prol.loopexit, %.lr.ph356.i, %middle.block, %vec.epilog.middle.block, %.preheader250.i
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader250.i ], [ %i.xw, %vec.epilog.middle.block ], [ %i.xj, %middle.block ], [ %.lcssa393.unr, %.lr.ph356.i.prol.loopexit ], [ %i.zv, %.lr.ph356.i ] ; 2 uses
  %indvars.iv.next445.i = add nuw nsw i64 %indvars.iv444.i, 2 ; 3 uses
  %i.zx = icmp slt i64 %indvars.iv.next445.i, %invariant.op488.i
  br i1 %i.zx, label %bb.r, label %.preheader249.loopexit.i, !llvm.loop !472

bb.s:                                             ; preds = %._crit_edge390.i, %.lr.ph394.i
  %indvars.iv448.i = phi i64 [ %i.te, %.lr.ph394.i ], [ %indvars.iv.next449.i, %._crit_edge390.i ] ; 2 uses
  %.15393.i = phi ptr [ %.10.lcssa.i, %.lr.ph394.i ], [ %.19.lcssa.i, %._crit_edge390.i ] ; 3 uses
  %i.zy = load ptr, ptr %1, align 8, !tbaa !15
  %i.zz = add nsw i64 %indvars.iv448.i, %i.tf
  %i.aaa = mul i64 %i.zz, %i.d
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %i.aaa
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.aab, i64 %i.tb ; 3 uses
  br i1 %i.tc, label %.lr.ph368.i.preheader, label %.preheader248.i

.lr.ph368.i.preheader:                            ; preds = %bb.s
  br i1 %i.tk, label %.lr.ph368.i.epil.preheader, label %.lr.ph368.i

.preheader248.i.loopexit.unr-lcssa:               ; preds = %.lr.ph368.i
  br i1 %lcmp.mod414.not, label %.preheader248.i, label %.lr.ph368.i.epil.preheader

.lr.ph368.i.epil.preheader:                       ; preds = %.preheader248.i.loopexit.unr-lcssa, %.lr.ph368.i.preheader
  %.16366.i.epil.init = phi ptr [ %.15393.i, %.lr.ph368.i.preheader ], [ %i.abi, %.preheader248.i.loopexit.unr-lcssa ]
  %.0608364.i.epil.init = phi ptr [ %i.aac, %.lr.ph368.i.preheader ], [ %i.abh, %.preheader248.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod417)
  br label %.lr.ph368.i.epil

.lr.ph368.i.epil:                                 ; preds = %.lr.ph368.i.epil, %.lr.ph368.i.epil.preheader
  %.16366.i.epil = phi ptr [ %i.aai, %.lr.ph368.i.epil ], [ %.16366.i.epil.init, %.lr.ph368.i.epil.preheader ] ; 3 uses
  %.0608364.i.epil = phi ptr [ %i.aah, %.lr.ph368.i.epil ], [ %.0608364.i.epil.init, %.lr.ph368.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph368.i.epil ], [ 0, %.lr.ph368.i.epil.preheader ]
  %i.aad = load <2 x i64>, ptr %.16366.i.epil, align 1, !tbaa !18
  %i.aae = getelementptr inbounds nuw i8, ptr %.16366.i.epil, i64 16
  %i.aaf = load <2 x i64>, ptr %i.aae, align 1, !tbaa !18
  store <2 x i64> %i.aad, ptr %.0608364.i.epil, align 1, !tbaa !18
  %i.aag = getelementptr inbounds nuw i8, ptr %.0608364.i.epil, i64 16
  store <2 x i64> %i.aaf, ptr %i.aag, align 1, !tbaa !18
  %i.aah = getelementptr inbounds nuw i8, ptr %.0608364.i.epil, i64 32 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.16366.i.epil, i64 32 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter413
  br i1 %epil.iter.cmp.not, label %.preheader248.i, label %.lr.ph368.i.epil, !llvm.loop !473

.preheader248.i:                                  ; preds = %.preheader248.i.loopexit.unr-lcssa, %.lr.ph368.i.epil, %bb.s
  %.0608.lcssa.i = phi ptr [ %i.aac, %bb.s ], [ %i.abh, %.preheader248.i.loopexit.unr-lcssa ], [ %i.aah, %.lr.ph368.i.epil ] ; 2 uses
  %.0604.lcssa.i = phi i32 [ 0, %bb.s ], [ %i.td, %.lr.ph368.i.epil ], [ %i.td, %.preheader248.i.loopexit.unr-lcssa ] ; 3 uses
  %.16.lcssa.i = phi ptr [ %.15393.i, %bb.s ], [ %i.abi, %.preheader248.i.loopexit.unr-lcssa ], [ %i.aai, %.lr.ph368.i.epil ] ; 2 uses
  %i.aaj = or disjoint i32 %.0604.lcssa.i, 3
  %i.aak = icmp slt i32 %i.aaj, %5
  br i1 %i.aak, label %.lr.ph375.i, label %.preheader247.i

.lr.ph368.i:                                      ; preds = %.lr.ph368.i.preheader, %.lr.ph368.i
  %.16366.i = phi ptr [ %i.abi, %.lr.ph368.i ], [ %.15393.i, %.lr.ph368.i.preheader ] ; 9 uses
  %.0608364.i = phi ptr [ %i.abh, %.lr.ph368.i ], [ %i.aac, %.lr.ph368.i.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph368.i ], [ 0, %.lr.ph368.i.preheader ]
  %i.aal = load <2 x i64>, ptr %.16366.i, align 1, !tbaa !18
  %i.aam = getelementptr inbounds nuw i8, ptr %.16366.i, i64 16
  %i.aan = load <2 x i64>, ptr %i.aam, align 1, !tbaa !18
  store <2 x i64> %i.aal, ptr %.0608364.i, align 1, !tbaa !18
  %i.aao = getelementptr inbounds nuw i8, ptr %.0608364.i, i64 16
  store <2 x i64> %i.aan, ptr %i.aao, align 1, !tbaa !18
  %i.aap = getelementptr inbounds nuw i8, ptr %.0608364.i, i64 32
  %i.aaq = getelementptr inbounds nuw i8, ptr %.16366.i, i64 32
  %i.aar = load <2 x i64>, ptr %i.aaq, align 1, !tbaa !18
  %i.aas = getelementptr inbounds nuw i8, ptr %.16366.i, i64 48
  %i.aat = load <2 x i64>, ptr %i.aas, align 1, !tbaa !18
  store <2 x i64> %i.aar, ptr %i.aap, align 1, !tbaa !18
  %i.aau = getelementptr inbounds nuw i8, ptr %.0608364.i, i64 48
  store <2 x i64> %i.aat, ptr %i.aau, align 1, !tbaa !18
  %i.aav = getelementptr inbounds nuw i8, ptr %.0608364.i, i64 64
  %i.aaw = getelementptr inbounds nuw i8, ptr %.16366.i, i64 64
  %i.aax = load <2 x i64>, ptr %i.aaw, align 1, !tbaa !18
  %i.aay = getelementptr inbounds nuw i8, ptr %.16366.i, i64 80
  %i.aaz = load <2 x i64>, ptr %i.aay, align 1, !tbaa !18
  store <2 x i64> %i.aax, ptr %i.aav, align 1, !tbaa !18
  %i.aba = getelementptr inbounds nuw i8, ptr %.0608364.i, i64 80
  store <2 x i64> %i.aaz, ptr %i.aba, align 1, !tbaa !18
  %i.abb = getelementptr inbounds nuw i8, ptr %.0608364.i, i64 96
  %i.abc = getelementptr inbounds nuw i8, ptr %.16366.i, i64 96
  %i.abd = load <2 x i64>, ptr %i.abc, align 1, !tbaa !18
  %i.abe = getelementptr inbounds nuw i8, ptr %.16366.i, i64 112
  %i.abf = load <2 x i64>, ptr %i.abe, align 1, !tbaa !18
  store <2 x i64> %i.abd, ptr %i.abb, align 1, !tbaa !18
  %i.abg = getelementptr inbounds nuw i8, ptr %.0608364.i, i64 112
  store <2 x i64> %i.abf, ptr %i.abg, align 1, !tbaa !18
  %i.abh = getelementptr inbounds nuw i8, ptr %.0608364.i, i64 128 ; 3 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %.16366.i, i64 128 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader248.i.loopexit.unr-lcssa, label %.lr.ph368.i, !llvm.loop !474

.preheader247.i:                                  ; preds = %.lr.ph375.i, %.preheader248.i
  %.1609.lcssa.i = phi ptr [ %.0608.lcssa.i, %.preheader248.i ], [ %i.aco, %.lr.ph375.i ] ; 10 uses
  %.1605.lcssa.i = phi i32 [ %.0604.lcssa.i, %.preheader248.i ], [ %i.acq, %.lr.ph375.i ] ; 8 uses
  %.17.lcssa.i = phi ptr [ %.16.lcssa.i, %.preheader248.i ], [ %i.acp, %.lr.ph375.i ] ; 10 uses
  %i.abj = or disjoint i32 %.1605.lcssa.i, 1
  %i.abk = icmp slt i32 %i.abj, %5
  br i1 %i.abk, label %iter.check355, label %.preheader.i

iter.check355:                                    ; preds = %.preheader247.i
  %i.abl = sub i32 %i.tg, %.1605.lcssa.i          ; 3 uses
  %i.abm = lshr i32 %i.abl, 1
  %narrow.a = add nuw i32 %i.abm, 1
  %i.abn = zext i32 %narrow.a to i64              ; 5 uses
  %min.iters.check329 = icmp ult i32 %i.abl, 6
  br i1 %min.iters.check329, label %.lr.ph382.i.preheader, label %vector.memcheck330

vector.memcheck330:                               ; preds = %iter.check355
  %i.abo = sub i32 %6, %.1605.lcssa.i
  %i.abp = lshr i32 %i.abo, 1
  %i.abq = zext nneg i32 %i.abp to i64
  %i.abr = shl nuw nsw i64 %i.abq, 3
  %i.abs = add nuw nsw i64 %i.abr, 8              ; 2 uses
  %i.abt = getelementptr i8, ptr %.1609.lcssa.i, i64 %i.abs
  %i.abu = getelementptr i8, ptr %.17.lcssa.i, i64 %i.abs
  %bound0331 = icmp ult ptr %.1609.lcssa.i, %i.abu
  %bound1332 = icmp ult ptr %.17.lcssa.i, %i.abt
  %found.conflict333 = and i1 %bound0331, %bound1332
  br i1 %found.conflict333, label %.lr.ph382.i.preheader, label %vector.main.loop.iter.check334

vector.main.loop.iter.check334:                   ; preds = %vector.memcheck330
  %min.iters.check335 = icmp ult i32 %i.abl, 30
  br i1 %min.iters.check335, label %vec.epilog.ph359, label %vector.ph336

vector.ph336:                                     ; preds = %vector.main.loop.iter.check334
  %i.abv = and i64 %i.abn, 12
  %n.vec337 = and i64 %i.abn, 4294967280          ; 5 uses
  %i.abw = shl nuw nsw i64 %n.vec337, 3           ; 2 uses
  %i.abx = getelementptr i8, ptr %.17.lcssa.i, i64 %i.abw ; 2 uses
  %i.aby = trunc nuw i64 %n.vec337 to i32
  %i.abz = shl i32 %i.aby, 1
  %i.aca = add i32 %.1605.lcssa.i, %i.abz         ; 2 uses
  %i.acb = getelementptr i8, ptr %.1609.lcssa.i, i64 %i.abw ; 2 uses
  br label %vector.body338

vector.body338:                                   ; preds = %vector.ph336, %vector.body338
  %index339 = phi i64 [ 0, %vector.ph336 ], [ %index.next352, %vector.body338 ] ; 2 uses
  %i.acc = shl i64 %index339, 3                   ; 3 uses
  %i.acd = or disjoint i64 %i.acc, 64             ; 2 uses
  %next.gep340 = getelementptr i8, ptr %.17.lcssa.i, i64 %i.acc
  %next.gep341 = getelementptr i8, ptr %.17.lcssa.i, i64 %i.acd
  %next.gep342 = getelementptr i8, ptr %.1609.lcssa.i, i64 %i.acc
  %next.gep343 = getelementptr i8, ptr %.1609.lcssa.i, i64 %i.acd
  %wide.vec344 = load <16 x i32>, ptr %next.gep340, align 4, !tbaa !24, !alias.scope !492
  %wide.vec347 = load <16 x i32>, ptr %next.gep341, align 4, !tbaa !24, !alias.scope !492
  store <16 x i32> %wide.vec344, ptr %next.gep342, align 4, !tbaa !24, !alias.scope !493, !noalias !492
  store <16 x i32> %wide.vec347, ptr %next.gep343, align 4, !tbaa !24, !alias.scope !493, !noalias !492
  %index.next352 = add nuw i64 %index339, 16      ; 2 uses
  %i.ace = icmp eq i64 %index.next352, %n.vec337
  br i1 %i.ace, label %middle.block353, label %vector.body338, !llvm.loop !478

middle.block353:                                  ; preds = %vector.body338
  %cmp.n354 = icmp eq i64 %n.vec337, %i.abn
  br i1 %cmp.n354, label %.preheader.i, label %vec.epilog.iter.check356

vec.epilog.iter.check356:                         ; preds = %middle.block353
  %min.epilog.iters.check358 = icmp eq i64 %i.abv, 0
  br i1 %min.epilog.iters.check358, label %.lr.ph382.i.preheader, label %vec.epilog.ph359, !prof !33

vec.epilog.ph359:                                 ; preds = %vector.main.loop.iter.check334, %vec.epilog.iter.check356
  %vec.epilog.resume.val360 = phi i64 [ %n.vec337, %vec.epilog.iter.check356 ], [ 0, %vector.main.loop.iter.check334 ]
  %n.vec361 = and i64 %i.abn, 4294967292          ; 4 uses
  %i.acf = shl nuw nsw i64 %n.vec361, 3           ; 2 uses
  %i.acg = getelementptr i8, ptr %.17.lcssa.i, i64 %i.acf ; 2 uses
  %i.ach = trunc nuw i64 %n.vec361 to i32
  %i.aci = shl i32 %i.ach, 1
  %i.acj = add i32 %.1605.lcssa.i, %i.aci         ; 2 uses
  %i.ack = getelementptr i8, ptr %.1609.lcssa.i, i64 %i.acf ; 2 uses
  br label %vec.epilog.vector.body362

vec.epilog.vector.body362:                        ; preds = %vec.epilog.vector.body362, %vec.epilog.ph359
  %index363 = phi i64 [ %vec.epilog.resume.val360, %vec.epilog.ph359 ], [ %index.next370, %vec.epilog.vector.body362 ] ; 2 uses
  %i.acl = shl i64 %index363, 3                   ; 2 uses
  %next.gep364 = getelementptr i8, ptr %.17.lcssa.i, i64 %i.acl
  %next.gep365 = getelementptr i8, ptr %.1609.lcssa.i, i64 %i.acl
  %wide.vec366 = load <8 x i32>, ptr %next.gep364, align 4, !tbaa !24, !alias.scope !492
  store <8 x i32> %wide.vec366, ptr %next.gep365, align 4, !tbaa !24, !alias.scope !493, !noalias !492
  %index.next370 = add nuw i64 %index363, 4       ; 2 uses
  %i.acm = icmp eq i64 %index.next370, %n.vec361
  br i1 %i.acm, label %vec.epilog.middle.block371, label %vec.epilog.vector.body362, !llvm.loop !479

vec.epilog.middle.block371:                       ; preds = %vec.epilog.vector.body362
  %cmp.n372 = icmp eq i64 %n.vec361, %i.abn
  br i1 %cmp.n372, label %.preheader.i, label %.lr.ph382.i.preheader

.lr.ph382.i.preheader:                            ; preds = %iter.check355, %vector.memcheck330, %vec.epilog.iter.check356, %vec.epilog.middle.block371
  %.18381.i.ph = phi ptr [ %.17.lcssa.i, %iter.check355 ], [ %.17.lcssa.i, %vector.memcheck330 ], [ %i.abx, %vec.epilog.iter.check356 ], [ %i.acg, %vec.epilog.middle.block371 ]
  %.2606380.i.ph = phi i32 [ %.1605.lcssa.i, %iter.check355 ], [ %.1605.lcssa.i, %vector.memcheck330 ], [ %i.aca, %vec.epilog.iter.check356 ], [ %i.acj, %vec.epilog.middle.block371 ]
  %.2610379.i.ph = phi ptr [ %.1609.lcssa.i, %iter.check355 ], [ %.1609.lcssa.i, %vector.memcheck330 ], [ %i.acb, %vec.epilog.iter.check356 ], [ %i.ack, %vec.epilog.middle.block371 ]
  br label %.lr.ph382.i

.lr.ph375.i:                                      ; preds = %.preheader248.i, %.lr.ph375.i
  %.17374.i = phi ptr [ %i.acp, %.lr.ph375.i ], [ %.16.lcssa.i, %.preheader248.i ] ; 2 uses
  %.1605373.i = phi i32 [ %i.acq, %.lr.ph375.i ], [ %.0604.lcssa.i, %.preheader248.i ]
  %.1609372.i = phi ptr [ %i.aco, %.lr.ph375.i ], [ %.0608.lcssa.i, %.preheader248.i ] ; 2 uses
  %i.acn = load <2 x i64>, ptr %.17374.i, align 1, !tbaa !18
  store <2 x i64> %i.acn, ptr %.1609372.i, align 1, !tbaa !18
  %i.aco = getelementptr inbounds nuw i8, ptr %.1609372.i, i64 16 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.17374.i, i64 16 ; 2 uses
  %i.acq = add nuw nsw i32 %.1605373.i, 4         ; 3 uses
  %i.acr = or disjoint i32 %i.acq, 3
  %i.acs = icmp slt i32 %i.acr, %5
  br i1 %i.acs, label %.lr.ph375.i, label %.preheader247.i, !llvm.loop !480

.preheader.i:                                     ; preds = %.lr.ph382.i, %middle.block353, %vec.epilog.middle.block371, %.preheader247.i
  %.2610.lcssa.i = phi ptr [ %.1609.lcssa.i, %.preheader247.i ], [ %i.ack, %vec.epilog.middle.block371 ], [ %i.acb, %middle.block353 ], [ %i.aec, %.lr.ph382.i ] ; 6 uses
  %.2606.lcssa.i = phi i32 [ %.1605.lcssa.i, %.preheader247.i ], [ %i.acj, %vec.epilog.middle.block371 ], [ %i.aca, %middle.block353 ], [ %i.aee, %.lr.ph382.i ] ; 5 uses
  %.18.lcssa.i = phi ptr [ %.17.lcssa.i, %.preheader247.i ], [ %i.acg, %vec.epilog.middle.block371 ], [ %i.abx, %middle.block353 ], [ %i.aed, %.lr.ph382.i ] ; 7 uses
  %i.act = icmp slt i32 %.2606.lcssa.i, %5
  br i1 %i.act, label %iter.check303, label %._crit_edge390.i

iter.check303:                                    ; preds = %.preheader.i
  %.2610.lcssa.i285 = ptrtoaddr ptr %.2610.lcssa.i to i64
  %.18.lcssa.i284 = ptrtoaddr ptr %.18.lcssa.i to i64
  %i.acu = xor i32 %.2606.lcssa.i, -1
  %i.acv = add i32 %5, %i.acu                     ; 3 uses
  %i.acw = zext i32 %i.acv to i64
  %i.acx = add nuw nsw i64 %i.acw, 1              ; 5 uses
  %min.iters.check287 = icmp ult i32 %i.acv, 7
  %i.acy = sub i64 %.18.lcssa.i284, %.2610.lcssa.i285
  %diff.check = icmp ugt i64 %i.acy, -128
  %or.cond = select i1 %min.iters.check287, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph389.i.preheader, label %vector.main.loop.iter.check289

vector.main.loop.iter.check289:                   ; preds = %iter.check303
  %min.iters.check290 = icmp ult i32 %i.acv, 31
  br i1 %min.iters.check290, label %vec.epilog.ph307, label %vector.ph291

vector.ph291:                                     ; preds = %vector.main.loop.iter.check289
  %i.acz = and i64 %i.acx, 24
  %n.vec292 = and i64 %i.acx, 8589934560          ; 5 uses
  %i.ada = shl nuw nsw i64 %n.vec292, 2           ; 2 uses
  %i.adb = getelementptr i8, ptr %.18.lcssa.i, i64 %i.ada ; 2 uses
  %i.adc = trunc i64 %n.vec292 to i32
  %i.add = add i32 %.2606.lcssa.i, %i.adc
  %i.ade = getelementptr i8, ptr %.2610.lcssa.i, i64 %i.ada
  br label %vector.body293

vector.body293:                                   ; preds = %vector.ph291, %vector.body293
  %index294 = phi i64 [ 0, %vector.ph291 ], [ %index.next300, %vector.body293 ] ; 2 uses
  %i.adf = shl i64 %index294, 2                   ; 2 uses
  %next.gep295 = getelementptr i8, ptr %.18.lcssa.i, i64 %i.adf ; 4 uses
  %next.gep296 = getelementptr i8, ptr %.2610.lcssa.i, i64 %i.adf ; 4 uses
  %i.adg = getelementptr i8, ptr %next.gep295, i64 32
  %i.adh = getelementptr i8, ptr %next.gep295, i64 64
  %i.adi = getelementptr i8, ptr %next.gep295, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep295, align 4, !tbaa !24
  %wide.load297 = load <8 x i32>, ptr %i.adg, align 4, !tbaa !24
  %wide.load298 = load <8 x i32>, ptr %i.adh, align 4, !tbaa !24
  %wide.load299 = load <8 x i32>, ptr %i.adi, align 4, !tbaa !24
  %i.adj = getelementptr i8, ptr %next.gep296, i64 32
  %i.adk = getelementptr i8, ptr %next.gep296, i64 64
  %i.adl = getelementptr i8, ptr %next.gep296, i64 96
  store <8 x i32> %wide.load, ptr %next.gep296, align 4, !tbaa !24
  store <8 x i32> %wide.load297, ptr %i.adj, align 4, !tbaa !24
  store <8 x i32> %wide.load298, ptr %i.adk, align 4, !tbaa !24
  store <8 x i32> %wide.load299, ptr %i.adl, align 4, !tbaa !24
  %index.next300 = add nuw i64 %index294, 32      ; 2 uses
  %i.adm = icmp eq i64 %index.next300, %n.vec292
  br i1 %i.adm, label %middle.block301, label %vector.body293, !llvm.loop !481

middle.block301:                                  ; preds = %vector.body293
  %cmp.n302 = icmp eq i64 %i.acx, %n.vec292
  br i1 %cmp.n302, label %._crit_edge390.i, label %vec.epilog.iter.check304

vec.epilog.iter.check304:                         ; preds = %middle.block301
  %min.epilog.iters.check306 = icmp eq i64 %i.acz, 0
  br i1 %min.epilog.iters.check306, label %.lr.ph389.i.preheader, label %vec.epilog.ph307, !prof !23

vec.epilog.ph307:                                 ; preds = %vector.main.loop.iter.check289, %vec.epilog.iter.check304
  %vec.epilog.resume.val308 = phi i64 [ %n.vec292, %vec.epilog.iter.check304 ], [ 0, %vector.main.loop.iter.check289 ]
  %n.vec309 = and i64 %i.acx, 8589934584          ; 4 uses
  %i.adn = shl nuw nsw i64 %n.vec309, 2           ; 2 uses
  %i.ado = getelementptr i8, ptr %.18.lcssa.i, i64 %i.adn ; 2 uses
  %i.adp = trunc i64 %n.vec309 to i32
  %i.adq = add i32 %.2606.lcssa.i, %i.adp
  %i.adr = getelementptr i8, ptr %.2610.lcssa.i, i64 %i.adn
  br label %vec.epilog.vector.body310

vec.epilog.vector.body310:                        ; preds = %vec.epilog.vector.body310, %vec.epilog.ph307
  %index311 = phi i64 [ %vec.epilog.resume.val308, %vec.epilog.ph307 ], [ %index.next315, %vec.epilog.vector.body310 ] ; 2 uses
  %i.ads = shl i64 %index311, 2                   ; 2 uses
  %next.gep312 = getelementptr i8, ptr %.18.lcssa.i, i64 %i.ads
  %next.gep313 = getelementptr i8, ptr %.2610.lcssa.i, i64 %i.ads
  %wide.load314 = load <8 x i32>, ptr %next.gep312, align 4, !tbaa !24
  store <8 x i32> %wide.load314, ptr %next.gep313, align 4, !tbaa !24
  %index.next315 = add nuw i64 %index311, 8       ; 2 uses
  %i.adt = icmp eq i64 %index.next315, %n.vec309
  br i1 %i.adt, label %vec.epilog.middle.block316, label %vec.epilog.vector.body310, !llvm.loop !482

vec.epilog.middle.block316:                       ; preds = %vec.epilog.vector.body310
  %cmp.n317 = icmp eq i64 %i.acx, %n.vec309
  br i1 %cmp.n317, label %._crit_edge390.i, label %.lr.ph389.i.preheader

.lr.ph389.i.preheader:                            ; preds = %iter.check303, %vec.epilog.iter.check304, %vec.epilog.middle.block316
  %.19388.i.ph = phi ptr [ %.18.lcssa.i, %iter.check303 ], [ %i.adb, %vec.epilog.iter.check304 ], [ %i.ado, %vec.epilog.middle.block316 ] ; 2 uses
  %.3607387.i.ph = phi i32 [ %.2606.lcssa.i, %iter.check303 ], [ %i.add, %vec.epilog.iter.check304 ], [ %i.adq, %vec.epilog.middle.block316 ] ; 4 uses
  %.3611386.i.ph = phi ptr [ %.2610.lcssa.i, %iter.check303 ], [ %i.ade, %vec.epilog.iter.check304 ], [ %i.adr, %vec.epilog.middle.block316 ] ; 2 uses
  %i.adu = sub i32 %5, %.3607387.i.ph
  %xtraiter418 = and i32 %i.adu, 7                ; 2 uses
  %lcmp.mod419.not = icmp eq i32 %xtraiter418, 0
  br i1 %lcmp.mod419.not, label %.lr.ph389.i.prol.loopexit, label %.lr.ph389.i.prol

.lr.ph389.i.prol:                                 ; preds = %.lr.ph389.i.preheader, %.lr.ph389.i.prol
  %.19388.i.prol = phi ptr [ %i.adx, %.lr.ph389.i.prol ], [ %.19388.i.ph, %.lr.ph389.i.preheader ] ; 2 uses
  %.3607387.i.prol = phi i32 [ %i.ady, %.lr.ph389.i.prol ], [ %.3607387.i.ph, %.lr.ph389.i.preheader ]
  %.3611386.i.prol = phi ptr [ %i.adw, %.lr.ph389.i.prol ], [ %.3611386.i.ph, %.lr.ph389.i.preheader ] ; 2 uses
  %prol.iter420 = phi i32 [ %prol.iter420.next, %.lr.ph389.i.prol ], [ 0, %.lr.ph389.i.preheader ]
  %i.adv = load i32, ptr %.19388.i.prol, align 4, !tbaa !24
end_hunk_1
begin_hunk_2_@_ZN4ncnn47conv3x3s1_winograd43_transform_kernel_int8_avx2ERKNS_3MatERS0_iiRKNS_6OptionE:bb.a
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !36 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = atomicrmw add ptr %i.bg, i32 -1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.g, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.g:                                             ; preds = %bb.f
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !37 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.bj, null
  %i.bk = load ptr, ptr %5, align 8, !tbaa !15    ; 3 uses
  br i1 %.not3.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bk)
          to label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit unwind label %bb.k, !inline_history !0

bb.i:                                             ; preds = %bb.g
  %.not.i14.i = icmp eq ptr %i.bk, null
  br i1 %.not.i14.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.bk) #8
  br label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.k:                                             ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #23
  unreachable

bb.l:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !36 ; 2 uses
  %.not.i9.i = icmp eq ptr %i.br, null
  br i1 %.not.i9.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = atomicrmw add ptr %i.br, i32 -1 acq_rel, align 4
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.n, label %_ZN4ncnn3MatD2Ev.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bb, align 8, !tbaa !37 ; 3 uses
  %.not3.i10.i = icmp eq ptr %i.bu, null
  %i.bv = load ptr, ptr %5, align 8, !tbaa !15    ; 3 uses
  br i1 %.not3.i10.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !39
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef %i.bv)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.r, !inline_history !0

bb.p:                                             ; preds = %bb.n
  %.not.i13.i = icmp eq ptr %i.bv, null
  br i1 %.not.i13.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.bv) #8
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.r:                                             ; preds = %bb.o
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  resume { ptr, i32 } %i.bq

_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit: ; preds = %bb.e, %bb.f, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !24     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !24
  %i.h = load i32, ptr %0, align 4, !tbaa !24     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !24
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !24
  %i.k = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %.not110 = icmp sgt i32 %i.k, %i.j
  br i1 %.not110, label %._crit_edge, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph112, %_ZN4ncnn3MatD2Ev.exit
  %.033111 = phi i32 [ %i.k, %.lr.ph112 ], [ %i.am, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aa = load i32, ptr %3, align 4, !tbaa !24
  %i.ab = mul nsw i32 %i.aa, %.033111             ; 3 uses
  %i.ac = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc34 unwind label %bb.e

.noexc34:                                         ; preds = %bb.c
  %i.ad = load ptr, ptr %4, align 8, !tbaa !15, !noalias !686
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !686
  %i.af = sext i32 %i.ac to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !686
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %5, align 4, !tbaa !24    ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %.noexc34
  %.pre = load i32, ptr %6, align 4, !tbaa !24
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.noexc, %.noexc34
  %i.am = add nsw i32 %.033111, 1
  %i.an = load i32, ptr %i.b, align 4, !tbaa !24
  %.not.not = icmp slt i32 %.033111, %i.an
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.noexc
  %i.ao = phi i32 [ %i.awl, %.noexc ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.ap = phi i32 [ %i.awn, %.noexc ], [ %i.ak, %.lr.ph.preheader ]
  %.0109 = phi i32 [ %i.awm, %.noexc ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.aq = load i32, ptr %7, align 4, !tbaa !24
  %i.ar = sub nsw i32 %i.aq, %i.ab
  %i.as = load i32, ptr %3, align 4, !tbaa !24    ; 2 uses
  %.sroa.speculated68 = call i32 @llvm.smin.i32(i32 %i.as, i32 %i.ar) ; 3 uses
  %i.at = sub i32 %i.ap, %.0109
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.at) ; 4 uses
  %.val52 = load ptr, ptr %8, align 8             ; 3 uses
  %i.au = icmp sgt i32 %.sroa.speculated68, 0
  br i1 %i.au, label %.preheader11.lr.ph.i, label %.noexc

.preheader11.lr.ph.i:                             ; preds = %.lr.ph
  %i.av = load i32, ptr %9, align 4, !tbaa !24
  %i.aw = icmp sgt i32 %.sroa.speculated, 0
  %i.ax = mul i32 %i.av, 9
  br i1 %i.aw, label %.preheader11.preheader.i, label %.noexc

.preheader11.preheader.i:                         ; preds = %.preheader11.lr.ph.i
  %i.ay = sext i32 %.0109 to i64                  ; 11 uses
  %wide.trip.count27.i = zext nneg i32 %.sroa.speculated68 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 5 uses
  %i.az = mul nsw i64 %i.ay, 9
  %12 = mul nuw nsw i64 %wide.trip.count.i, 72
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %13 = getelementptr i8, ptr %.val52, i64 %i.az
  %14 = add nsw i64 %i.ay, %wide.trip.count.i
  %15 = mul nsw i64 %14, 9
  %i.ba = getelementptr i8, ptr %.val52, i64 %15
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.bb = mul nuw nsw i64 %n.vec, 72
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader11.i

.preheader11.i:                                   ; preds = %._crit_edge.i, %.preheader11.preheader.i
  %indvars.iv24.i = phi i64 [ 0, %.preheader11.preheader.i ], [ %indvars.iv.next25.i, %._crit_edge.i ] ; 2 uses
  %.019.i = phi ptr [ %i.aj, %.preheader11.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 13 uses
  %i.bc = trunc i64 %indvars.iv24.i to i32
  %i.bd = add i32 %i.ab, %i.bc
  %i.be = mul i32 %i.ax, %i.bd
  %i.bf = sext i32 %i.be to i64                   ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %.val52, i64 %i.bf ; 9 uses
  br i1 %min.iters.check, label %.preheader.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader11.i
  %i.bh = getelementptr i8, ptr %.019.i, i64 %12
  %i.bi = getelementptr i8, ptr %13, i64 %i.bf
  %i.bj = getelementptr i8, ptr %i.ba, i64 %i.bf
  %bound0 = icmp ult ptr %.019.i, %i.bj
  %bound1 = icmp ult ptr %i.bi, %i.bh
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bk = getelementptr i8, ptr %.019.i, i64 %i.bb ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.bl = or disjoint i64 %index, 1
  %i.bm = or disjoint i64 %index, 2
  %i.bn = or disjoint i64 %index, 3
  %i.bo = or disjoint i64 %index, 4
  %i.bp = or disjoint i64 %index, 5
  %i.bq = or disjoint i64 %index, 6
  %i.br = or disjoint i64 %index, 7
  %i.bs = mul i64 %index, 72                      ; 8 uses
  %next.gep = getelementptr i8, ptr %.019.i, i64 %i.bs ; 36 uses
  %i.bt = getelementptr i8, ptr %.019.i, i64 %i.bs ; 36 uses
  %next.gep121 = getelementptr i8, ptr %i.bt, i64 72
  %i.bu = getelementptr i8, ptr %.019.i, i64 %i.bs ; 36 uses
  %next.gep122 = getelementptr i8, ptr %i.bu, i64 144
  %i.bv = getelementptr i8, ptr %.019.i, i64 %i.bs ; 36 uses
  %next.gep123 = getelementptr i8, ptr %i.bv, i64 216
  %i.bw = getelementptr i8, ptr %.019.i, i64 %i.bs ; 36 uses
  %next.gep124 = getelementptr i8, ptr %i.bw, i64 288
  %i.bx = getelementptr i8, ptr %.019.i, i64 %i.bs ; 36 uses
  %next.gep125 = getelementptr i8, ptr %i.bx, i64 360
  %i.by = getelementptr i8, ptr %.019.i, i64 %i.bs ; 36 uses
  %next.gep126 = getelementptr i8, ptr %i.by, i64 432
  %i.bz = getelementptr i8, ptr %.019.i, i64 %i.bs ; 36 uses
  %next.gep127 = getelementptr i8, ptr %i.bz, i64 504
  %i.ca = add nsw i64 %index, %i.ay
  %i.cb = add nsw i64 %i.bl, %i.ay
  %i.cc = add nsw i64 %i.bm, %i.ay
  %i.cd = add nsw i64 %i.bn, %i.ay
  %i.ce = add nsw i64 %i.bo, %i.ay
  %i.cf = add nsw i64 %i.bp, %i.ay
  %i.cg = add nsw i64 %i.bq, %i.ay
  %i.ch = add nsw i64 %i.br, %i.ay
  %i.ci = mul nsw i64 %i.ca, 9
  %i.cj = mul nsw i64 %i.cb, 9
  %i.ck = mul nsw i64 %i.cc, 9
  %i.cl = mul nsw i64 %i.cd, 9
  %i.cm = mul nsw i64 %i.ce, 9
  %i.cn = mul nsw i64 %i.cf, 9
  %i.co = mul nsw i64 %i.cg, 9
  %i.cp = mul nsw i64 %i.ch, 9
  %i.cq = getelementptr inbounds i8, ptr %i.bg, i64 %i.ci ; 9 uses
  %i.cr = getelementptr inbounds i8, ptr %i.bg, i64 %i.cj ; 9 uses
  %i.cs = getelementptr inbounds i8, ptr %i.bg, i64 %i.ck ; 9 uses
  %i.ct = getelementptr inbounds i8, ptr %i.bg, i64 %i.cl ; 9 uses
  %i.cu = getelementptr inbounds i8, ptr %i.bg, i64 %i.cm ; 9 uses
  %i.cv = getelementptr inbounds i8, ptr %i.bg, i64 %i.cn ; 9 uses
  %i.cw = getelementptr inbounds i8, ptr %i.bg, i64 %i.co ; 9 uses
  %i.cx = getelementptr inbounds i8, ptr %i.bg, i64 %i.cp ; 9 uses
  %i.cy = load i8, ptr %i.cq, align 1, !tbaa !18, !alias.scope !687
  %i.cz = load i8, ptr %i.cr, align 1, !tbaa !18, !alias.scope !687
  %i.da = load i8, ptr %i.cs, align 1, !tbaa !18, !alias.scope !687
  %i.db = load i8, ptr %i.ct, align 1, !tbaa !18, !alias.scope !687
  %i.dc = load i8, ptr %i.cu, align 1, !tbaa !18, !alias.scope !687
  %i.dd = load i8, ptr %i.cv, align 1, !tbaa !18, !alias.scope !687
  %i.de = load i8, ptr %i.cw, align 1, !tbaa !18, !alias.scope !687
  %i.df = load i8, ptr %i.cx, align 1, !tbaa !18, !alias.scope !687
  %i.dg = insertelement <8 x i8> poison, i8 %i.cy, i64 0
  %i.dh = insertelement <8 x i8> %i.dg, i8 %i.cz, i64 1
  %i.di = insertelement <8 x i8> %i.dh, i8 %i.da, i64 2
  %i.dj = insertelement <8 x i8> %i.di, i8 %i.db, i64 3
  %i.dk = insertelement <8 x i8> %i.dj, i8 %i.dc, i64 4
  %i.dl = insertelement <8 x i8> %i.dk, i8 %i.dd, i64 5
  %i.dm = insertelement <8 x i8> %i.dl, i8 %i.de, i64 6
  %i.dn = insertelement <8 x i8> %i.dm, i8 %i.df, i64 7 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.dw = load i8, ptr %i.do, align 1, !tbaa !18, !alias.scope !687
  %i.dx = load i8, ptr %i.dp, align 1, !tbaa !18, !alias.scope !687
  %i.dy = load i8, ptr %i.dq, align 1, !tbaa !18, !alias.scope !687
  %i.dz = load i8, ptr %i.dr, align 1, !tbaa !18, !alias.scope !687
  %i.ea = load i8, ptr %i.ds, align 1, !tbaa !18, !alias.scope !687
  %i.eb = load i8, ptr %i.dt, align 1, !tbaa !18, !alias.scope !687
  %i.ec = load i8, ptr %i.du, align 1, !tbaa !18, !alias.scope !687
  %i.ed = load i8, ptr %i.dv, align 1, !tbaa !18, !alias.scope !687
  %i.ee = insertelement <8 x i8> poison, i8 %i.dw, i64 0
  %i.ef = insertelement <8 x i8> %i.ee, i8 %i.dx, i64 1
  %i.eg = insertelement <8 x i8> %i.ef, i8 %i.dy, i64 2
  %i.eh = insertelement <8 x i8> %i.eg, i8 %i.dz, i64 3
  %i.ei = insertelement <8 x i8> %i.eh, i8 %i.ea, i64 4
  %i.ej = insertelement <8 x i8> %i.ei, i8 %i.eb, i64 5
  %i.ek = insertelement <8 x i8> %i.ej, i8 %i.ec, i64 6
  %i.el = insertelement <8 x i8> %i.ek, i8 %i.ed, i64 7
  %i.em = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.en = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %i.er = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.es = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.et = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %i.eu = load i8, ptr %i.em, align 1, !tbaa !18, !alias.scope !687
  %i.ev = load i8, ptr %i.en, align 1, !tbaa !18, !alias.scope !687
  %i.ew = load i8, ptr %i.eo, align 1, !tbaa !18, !alias.scope !687
  %i.ex = load i8, ptr %i.ep, align 1, !tbaa !18, !alias.scope !687
  %i.ey = load i8, ptr %i.eq, align 1, !tbaa !18, !alias.scope !687
  %i.ez = load i8, ptr %i.er, align 1, !tbaa !18, !alias.scope !687
  %i.fa = load i8, ptr %i.es, align 1, !tbaa !18, !alias.scope !687
  %i.fb = load i8, ptr %i.et, align 1, !tbaa !18, !alias.scope !687
  %i.fc = insertelement <8 x i8> poison, i8 %i.eu, i64 0
  %i.fd = insertelement <8 x i8> %i.fc, i8 %i.ev, i64 1
  %i.fe = insertelement <8 x i8> %i.fd, i8 %i.ew, i64 2
  %i.ff = insertelement <8 x i8> %i.fe, i8 %i.ex, i64 3
  %i.fg = insertelement <8 x i8> %i.ff, i8 %i.ey, i64 4
  %i.fh = insertelement <8 x i8> %i.fg, i8 %i.ez, i64 5
  %i.fi = insertelement <8 x i8> %i.fh, i8 %i.fa, i64 6
  %i.fj = insertelement <8 x i8> %i.fi, i8 %i.fb, i64 7 ; 2 uses
  %i.fk = sext <8 x i8> %i.dn to <8 x i32>        ; 3 uses
  %i.fl = sext <8 x i8> %i.dn to <8 x i16>        ; 2 uses
  %i.fm = mul nsw <8 x i16> %i.fl, splat (i16 6)
  %i.fn = mul nsw <8 x i32> %i.fk, splat (i32 -4) ; 2 uses
  %i.fo = sext <8 x i8> %i.el to <8 x i32>        ; 2 uses
  %i.fp = shl nsw <8 x i32> %i.fo, splat (i32 2)  ; 2 uses
  %i.fq = sext <8 x i8> %i.fj to <8 x i32>
  %i.fr = shl nsw <8 x i32> %i.fq, splat (i32 2)  ; 4 uses
  %i.fs = add nsw <8 x i32> %i.fp, %i.fr
  %i.ft = sub nsw <8 x i32> %i.fn, %i.fs          ; 4 uses
  %i.fu = trunc nsw <8 x i32> %i.ft to <8 x i16>
  %i.fv = add nsw <8 x i32> %i.fp, %i.fn
  %i.fw = sub nsw <8 x i32> %i.fv, %i.fr          ; 4 uses
  %i.fx = trunc nsw <8 x i32> %i.fw to <8 x i16>
  %i.fy = shl nsw <8 x i32> %i.fo, splat (i32 1)  ; 2 uses
  %i.fz = add nsw <8 x i32> %i.fy, %i.fk
  %i.ga = add nsw <8 x i32> %i.fz, %i.fr          ; 4 uses
  %i.gb = trunc nsw <8 x i32> %i.ga to <8 x i16>
  %i.gc = sub nsw <8 x i32> %i.fk, %i.fy
  %i.gd = add nsw <8 x i32> %i.gc, %i.fr          ; 4 uses
  %i.ge = trunc nsw <8 x i32> %i.gd to <8 x i16>
  %i.gf = sext <8 x i8> %i.fj to <8 x i16>        ; 2 uses
  %i.gg = mul nsw <8 x i16> %i.gf, splat (i16 6)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cs, i64 3
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ct, i64 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cu, i64 3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cv, i64 3
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  %i.go = getelementptr inbounds nuw i8, ptr %i.cx, i64 3
  %i.gp = load i8, ptr %i.gh, align 1, !tbaa !18, !alias.scope !687
  %i.gq = load i8, ptr %i.gi, align 1, !tbaa !18, !alias.scope !687
  %i.gr = load i8, ptr %i.gj, align 1, !tbaa !18, !alias.scope !687
  %i.gs = load i8, ptr %i.gk, align 1, !tbaa !18, !alias.scope !687
  %i.gt = load i8, ptr %i.gl, align 1, !tbaa !18, !alias.scope !687
  %i.gu = load i8, ptr %i.gm, align 1, !tbaa !18, !alias.scope !687
  %i.gv = load i8, ptr %i.gn, align 1, !tbaa !18, !alias.scope !687
  %i.gw = load i8, ptr %i.go, align 1, !tbaa !18, !alias.scope !687
  %i.gx = insertelement <8 x i8> poison, i8 %i.gp, i64 0
  %i.gy = insertelement <8 x i8> %i.gx, i8 %i.gq, i64 1
  %i.gz = insertelement <8 x i8> %i.gy, i8 %i.gr, i64 2
  %i.ha = insertelement <8 x i8> %i.gz, i8 %i.gs, i64 3
  %i.hb = insertelement <8 x i8> %i.ha, i8 %i.gt, i64 4
  %i.hc = insertelement <8 x i8> %i.hb, i8 %i.gu, i64 5
  %i.hd = insertelement <8 x i8> %i.hc, i8 %i.gv, i64 6
  %i.he = insertelement <8 x i8> %i.hd, i8 %i.gw, i64 7
  %i.hf = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.hn = load i8, ptr %i.hf, align 1, !tbaa !18, !alias.scope !687
  %i.ho = load i8, ptr %i.hg, align 1, !tbaa !18, !alias.scope !687
  %i.hp = load i8, ptr %i.hh, align 1, !tbaa !18, !alias.scope !687
  %i.hq = load i8, ptr %i.hi, align 1, !tbaa !18, !alias.scope !687
  %i.hr = load i8, ptr %i.hj, align 1, !tbaa !18, !alias.scope !687
  %i.hs = load i8, ptr %i.hk, align 1, !tbaa !18, !alias.scope !687
  %i.ht = load i8, ptr %i.hl, align 1, !tbaa !18, !alias.scope !687
  %i.hu = load i8, ptr %i.hm, align 1, !tbaa !18, !alias.scope !687
  %i.hv = insertelement <8 x i8> poison, i8 %i.hn, i64 0
  %i.hw = insertelement <8 x i8> %i.hv, i8 %i.ho, i64 1
  %i.hx = insertelement <8 x i8> %i.hw, i8 %i.hp, i64 2
  %i.hy = insertelement <8 x i8> %i.hx, i8 %i.hq, i64 3
  %i.hz = insertelement <8 x i8> %i.hy, i8 %i.hr, i64 4
  %i.ia = insertelement <8 x i8> %i.hz, i8 %i.hs, i64 5
  %i.ib = insertelement <8 x i8> %i.ia, i8 %i.ht, i64 6
  %i.ic = insertelement <8 x i8> %i.ib, i8 %i.hu, i64 7
  %i.id = getelementptr inbounds nuw i8, ptr %i.cq, i64 5
  %i.ie = getelementptr inbounds nuw i8, ptr %i.cr, i64 5
  %i.if = getelementptr inbounds nuw i8, ptr %i.cs, i64 5
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ct, i64 5
  %i.ih = getelementptr inbounds nuw i8, ptr %i.cu, i64 5
  %i.ii = getelementptr inbounds nuw i8, ptr %i.cv, i64 5
end_hunk_2
