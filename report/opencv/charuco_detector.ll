Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/charuco_detector?download=true
inline.NumInlined: 1546
inline.NumDeleted: 599
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv5aruco20drawDetectedDiamondsERKNS_17_InputOutputArrayERKNS_11_InputArrayES6_NS_7Scalar_IdEE:bb.a
  %i.gd = load i64, ptr %i.bh, align 8, !tbaa !79
  %i.ge = sext i32 %i.gb to i64
  %i.gf = mul i64 %i.gd, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %.ph.2, i64 %i.gf
  %i.gh = sext i32 %.recomposed279 to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gh
  br label %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112.2

bb.bg:                                            ; preds = %bb.be
  %i.gj = load i64, ptr %i.bh, align 8, !tbaa !79
  %i.gk = mul i64 %i.gj, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %.ph.2, i64 %i.gk
  br label %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112.2

bb.bh:                                            ; preds = %bb.ba
  %i.gm = load ptr, ptr %i.bg, align 8, !tbaa !83 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load i64, ptr %i.gn, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  br label %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112.2

bb.bi:                                            ; preds = %bb.az
  %i.gq = load ptr, ptr %i.bg, align 8, !tbaa !83 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load i64, ptr %i.gr, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  br label %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112.2

_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112.2:     ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.sroa.6.0.extract.trunc172.in.in.2 = phi i64 [ %i.gs, %bb.bi ], [ %i.go, %bb.bh ], [ %i.fx, %bb.bg ], [ %i.fx, %bb.bf ]
  %.0.i111.2 = phi ptr [ %i.gt, %bb.bi ], [ %i.gp, %bb.bh ], [ %i.gl, %bb.bg ], [ %i.gi, %bb.bf ]
  %i.gu = load i64, ptr %.0.i111.2, align 4
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %.sroa.6.0.extract.trunc172.in.in.2, i64 %i.gu, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1, i32 noundef 8, i32 noundef 0)
          to label %bb.bj unwind label %bb.by, !llvm.loop !219

bb.bj:                                            ; preds = %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112.2
  %i.gv = load i32, ptr %i.bc, align 4, !tbaa !82
  %i.gw = icmp slt i32 %i.gv, 2
  br i1 %i.gw, label %bb.bq, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gx = load i32, ptr %12, align 8, !tbaa !84
  %i.gy = and i32 %i.gx, 16384
  %i.gz = icmp ne i32 %i.gy, 0
  %i.ha = load i32, ptr %i.bd, align 4
  %i.hb = icmp eq i32 %i.ha, 1
  %or.cond.i107.3 = select i1 %i.gz, i1 true, i1 %i.hb
  br i1 %or.cond.i107.3, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hc = load i32, ptr %i.be, align 8, !tbaa !26
  %i.hd = icmp eq i32 %i.hc, 1
  br i1 %i.hd, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.he = load i32, ptr %i.bf, align 4, !tbaa !85 ; 3 uses
  %i.hf = sdiv i32 3, %i.he                       ; 2 uses
  %i.hg = mul nsw i32 %i.hf, %i.he                ; 0 uses
  %.recomposed280 = srem i32 3, %i.he
  %i.hh = load ptr, ptr %i.bg, align 8, !tbaa !83 ; 2 uses
  %i.hi = load i64, ptr %i.bh, align 8, !tbaa !79
  %i.hj = sext i32 %i.hf to i64
  %i.hk = mul i64 %i.hi, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hk
  %i.hm = sext i32 %.recomposed280 to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.hm
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.ho = load ptr, ptr %i.bg, align 8, !tbaa !83 ; 2 uses
  %i.hp = load i64, ptr %i.bh, align 8, !tbaa !79
  %i.hq = mul i64 %i.hp, 3
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hq
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.ph.3 = phi ptr [ %i.ho, %bb.bn ], [ %i.hh, %bb.bm ]
  %.0.i108.ph.ph.3 = phi ptr [ %i.hr, %bb.bn ], [ %i.hn, %bb.bm ]
  %i.hs = load i64, ptr %.0.i108.ph.ph.3, align 4
  br label %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112.3

bb.bp:                                            ; preds = %bb.bk
  %i.ht = load ptr, ptr %i.bg, align 8, !tbaa !83 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load i64, ptr %i.hu, align 4
  br label %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112.3

bb.bq:                                            ; preds = %bb.bj
  %i.hw = load ptr, ptr %i.bg, align 8, !tbaa !83 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load i64, ptr %i.hx, align 4
  br label %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112.3

_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112.3:     ; preds = %bb.bo, %bb.bq, %bb.bp
  %.sroa.6.0.extract.trunc172.in.in.3 = phi i64 [ %i.hy, %bb.bq ], [ %i.hv, %bb.bp ], [ %i.hs, %bb.bo ]
  %.0.i111.3 = phi ptr [ %i.hw, %bb.bq ], [ %i.ht, %bb.bp ], [ %.ph.3, %bb.bo ]
  %i.hz = load i64, ptr %.0.i111.3, align 4
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %.sroa.6.0.extract.trunc172.in.in.3, i64 %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1, i32 noundef 8, i32 noundef 0)
          to label %bb.br unwind label %bb.by, !llvm.loop !219

bb.br:                                            ; preds = %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112.3
  %i.ia = load ptr, ptr %i.bg, align 8, !tbaa !83 ; 2 uses
  %.val177261 = load i32, ptr %i.ia, align 4, !tbaa !232 ; 2 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 4
  %.val84178262 = load i32, ptr %i.ib, align 4, !tbaa !233 ; 2 uses
  %i.ic = add nsw i32 %.val177261, -3
  %i.id = add nsw i32 %.val84178262, -3
  %.sroa.2.0.insert.ext.i179263 = zext i32 %i.id to i64
  %.sroa.2.0.insert.shift.i180264 = shl nuw i64 %.sroa.2.0.insert.ext.i179263, 32
  %.sroa.0.0.insert.ext.i181265 = zext i32 %i.ic to i64
  %.sroa.0.0.insert.insert.i182266 = or disjoint i64 %.sroa.2.0.insert.shift.i180264, %.sroa.0.0.insert.ext.i181265
  %i.ie = add nsw i32 %.val177261, 3
  %i.if = add nsw i32 %.val84178262, 3
  %.sroa.2.0.insert.ext.i116 = zext i32 %i.if to i64
  %.sroa.2.0.insert.shift.i117 = shl nuw i64 %.sroa.2.0.insert.ext.i116, 32
  %.sroa.0.0.insert.ext.i118 = zext i32 %i.ie to i64
  %.sroa.0.0.insert.insert.i119 = or disjoint i64 %.sroa.2.0.insert.shift.i117, %.sroa.0.0.insert.ext.i118
  invoke void @_ZN2cv9rectangleERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %.sroa.0.0.insert.insert.i182266, i64 %.sroa.0.0.insert.insert.i119, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 1, i32 noundef 16, i32 noundef 0)
          to label %bb.bz unwind label %bb.cb

.preheader275:                                    ; preds = %bb.al, %bb.an
  %i.ig = load i32, ptr %i.bc, align 4, !tbaa !82
  %i.ih = icmp slt i32 %i.ig, 2
  br i1 %i.ih, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %.preheader275
  %i.ii = load i32, ptr %12, align 8, !tbaa !84
  %i.ij = and i32 %i.ii, 16384
  %i.ik = icmp ne i32 %i.ij, 0
  %i.il = load i32, ptr %i.bd, align 4
  %i.im = icmp eq i32 %i.il, 1
  %or.cond.i107 = select i1 %i.ik, i1 true, i1 %i.im
  br i1 %or.cond.i107, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.in = load ptr, ptr %i.bg, align 8, !tbaa !83 ; 3 uses
  %i.io = load i64, ptr %i.in, align 4            ; 2 uses
  %i.ip = load i32, ptr %i.be, align 8, !tbaa !26
  %i.iq = icmp eq i32 %i.ip, 1
  br i1 %i.iq, label %bb.bw, label %bb.bx

bb.bu:                                            ; preds = %.preheader275
  %i.ir = load ptr, ptr %i.bg, align 8, !tbaa !83 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 4
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  br label %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112

bb.bv:                                            ; preds = %bb.bs
  %i.iu = load ptr, ptr %i.bg, align 8, !tbaa !83 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  br label %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112

bb.bw:                                            ; preds = %bb.bt
  %i.ix = load i64, ptr %i.bh, align 8, !tbaa !79
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ix
  br label %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112

bb.bx:                                            ; preds = %bb.bt
  %i.iz = load i32, ptr %i.bf, align 4, !tbaa !85
  %.fr276 = freeze i32 %i.iz                      ; 3 uses
  %i.ja = add i32 %.fr276, 1
  %i.jb = icmp ult i32 %i.ja, 3
  %i.jc = select i1 %i.jb, i32 %.fr276, i32 0     ; 2 uses
  %i.jd = mul nsw i32 %i.jc, %.fr276
  %i.je = sub nsw i32 1, %i.jd
  %i.jf = load i64, ptr %i.bh, align 8, !tbaa !79
  %i.jg = sext i32 %i.jc to i64
  %i.jh = mul i64 %i.jf, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.jh
  %i.jj = sext i32 %i.je to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.jj
  br label %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112

_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112:       ; preds = %bb.bu, %bb.bv, %bb.bw, %bb.bx
  %.sroa.6.0.extract.trunc172.in.in = phi i64 [ %i.is, %bb.bu ], [ %i.iv, %bb.bv ], [ %i.io, %bb.bw ], [ %i.io, %bb.bx ]
  %.0.i111 = phi ptr [ %i.it, %bb.bu ], [ %i.iw, %bb.bv ], [ %i.iy, %bb.bw ], [ %i.jk, %bb.bx ]
  %i.jl = load i64, ptr %.0.i111, align 4
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %.sroa.6.0.extract.trunc172.in.in, i64 %i.jl, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1, i32 noundef 8, i32 noundef 0)
          to label %bb.ap unwind label %bb.by, !llvm.loop !219

bb.by:                                            ; preds = %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112.3, %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112.2, %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112.1, %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit112
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.bz:                                            ; preds = %bb.br
  %i.jn = invoke noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %bb.ca unwind label %bb.af

bb.ca:                                            ; preds = %bb.bz
  %.not71 = icmp eq i64 %i.jn, 0
  br i1 %.not71, label %bb.cy, label %.preheader

.preheader:                                       ; preds = %bb.ca
  %i.jo = load i32, ptr %i.bc, align 4, !tbaa !82
  %i.jp = icmp slt i32 %i.jo, 2
  %i.jq = load i32, ptr %i.be, align 8
  %i.jr = icmp eq i32 %i.jq, 1
  %i.js = load i32, ptr %i.bf, align 4
  %.fr = freeze i32 %i.js                         ; 6 uses
  %i.jt = load ptr, ptr %i.bg, align 8            ; 15 uses
  %i.ju = load i64, ptr %i.bh, align 8            ; 6 uses
  br i1 %i.jp, label %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.us.preheader, label %.preheader.split

_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.us.preheader: ; preds = %.preheader
  %.val92.us = load i32, ptr %i.jt, align 4, !tbaa !232
  %i.jv = getelementptr i8, ptr %i.jt, i64 4
  %i.jw = getelementptr i8, ptr %i.jt, i64 12
  %.val93.us.1 = load i32, ptr %i.jw, align 4, !tbaa !233
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jz = load <2 x i32>, ptr %i.jv, align 4, !tbaa !26
  %i.ka = insertelement <2 x i32> poison, i32 %.val93.us.1, i64 0
  %i.kb = insertelement <2 x i32> %i.ka, i32 %.val92.us, i64 1
  %i.kc = add nsw <2 x i32> %i.jz, %i.kb
  %i.kd = shufflevector <2 x i32> %i.kc, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.ke = load <2 x i32>, ptr %i.jx, align 4, !tbaa !26
  %i.kf = add nsw <2 x i32> %i.ke, %i.kd
  %i.kg = load <2 x i32>, ptr %i.jy, align 4, !tbaa !26
  %i.kh = add nsw <2 x i32> %i.kg, %i.kf
  br label %.split.us

.preheader.split:                                 ; preds = %.preheader
  %i.ki = load i32, ptr %12, align 8
  %i.kj = and i32 %i.ki, 16384
  %i.kk = icmp ne i32 %i.kj, 0
  %i.kl = load i32, ptr %i.bd, align 4
  %i.km = icmp eq i32 %i.kl, 1
  %or.cond.i122 = select i1 %i.kk, i1 true, i1 %i.km
  %i.kn = load <2 x i32>, ptr %i.jt, align 4, !tbaa !26 ; 3 uses
  br i1 %or.cond.i122, label %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.us195.preheader, label %.preheader.split.split

_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.us195.preheader: ; preds = %.preheader.split
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.kr = load <2 x i32>, ptr %i.ko, align 4, !tbaa !26
  %i.ks = add nsw <2 x i32> %i.kr, %i.kn
  %i.kt = load <2 x i32>, ptr %i.kp, align 4, !tbaa !26
  %i.ku = add nsw <2 x i32> %i.kt, %i.ks
  %i.kv = load <2 x i32>, ptr %i.kq, align 4, !tbaa !26
  %i.kw = add nsw <2 x i32> %i.kv, %i.ku
  br label %.split.us

.preheader.split.split:                           ; preds = %.preheader.split
  br i1 %i.jr, label %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.us206.preheader, label %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.preheader

_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.preheader: ; preds = %.preheader.split.split
  %i.kx = add i32 %.fr, 1
  %i.ky = icmp ult i32 %i.kx, 3
  %i.kz = select i1 %i.ky, i32 %.fr, i32 0        ; 2 uses
  %i.la = mul nsw i32 %i.kz, %.fr
  %i.lb = sub nsw i32 1, %i.la
  %i.lc = sext i32 %i.kz to i64
  %i.ld = mul i64 %i.ju, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.ld
  %i.lf = sext i32 %i.lb to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.le, i64 %i.lf
  %20 = insertelement <2 x i32> poison, i32 %.fr, i64 0
  %21 = shufflevector <2 x i32> %20, <2 x i32> poison, <2 x i32> zeroinitializer
  %22 = sdiv <2 x i32> <i32 2, i32 3>, %21        ; 2 uses
  %23 = extractelement <2 x i32> %22, i64 0       ; 2 uses
  %i.lh = mul nsw i32 %23, %.fr
  %24 = sub nsw i32 2, %i.lh
  %i.li = sext i32 %23 to i64
  %i.lj = mul i64 %i.ju, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.lj
  %i.ll = sext i32 %24 to i64
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.ll
  %25 = extractelement <2 x i32> %22, i64 1       ; 2 uses
  %i.ln = mul nsw i32 %25, %.fr
  %26 = sub nsw i32 3, %i.ln
  %i.lo = sext i32 %25 to i64
  %i.lp = mul i64 %i.ju, %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.lp
  %i.lr = sext i32 %26 to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %i.lr
  %i.lt = load <2 x i32>, ptr %i.lg, align 4, !tbaa !26
  %i.lu = add nsw <2 x i32> %i.lt, %i.kn
  %i.lv = load <2 x i32>, ptr %i.lm, align 4, !tbaa !26
  %i.lw = add nsw <2 x i32> %i.lv, %i.lu
  %i.lx = load <2 x i32>, ptr %i.ls, align 4, !tbaa !26
  %i.ly = add nsw <2 x i32> %i.lx, %i.lw
  br label %.split.us

_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.us206.preheader: ; preds = %.preheader.split.split
  %i.lz = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.ju
  %i.ma = shl i64 %i.ju, 1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.ma
  %i.mc = mul i64 %i.ju, 3
  %i.md = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.mc
  %i.me = load <2 x i32>, ptr %i.lz, align 4, !tbaa !26
  %i.mf = add nsw <2 x i32> %i.me, %i.kn
  %i.mg = load <2 x i32>, ptr %i.mb, align 4, !tbaa !26
  %i.mh = add nsw <2 x i32> %i.mg, %i.mf
  %i.mi = load <2 x i32>, ptr %i.md, align 4, !tbaa !26
  %i.mj = add nsw <2 x i32> %i.mi, %i.mh
  br label %.split.us

bb.cb:                                            ; preds = %bb.br
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.split.us:                                        ; preds = %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.preheader, %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.us206.preheader, %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.us195.preheader, %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.us.preheader
  %i.ml = phi <2 x i32> [ %i.mj, %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.us206.preheader ], [ %i.kh, %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.us.preheader ], [ %i.kw, %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.us195.preheader ], [ %i.ly, %_ZN2cv3Mat2atINS_6Point_IiEEEERT_i.exit124.preheader ]
  %i.mm = sitofp <2 x i32> %i.ml to <2 x double>
  %i.mn = fmul nnan <2 x double> %i.mm, splat (double 2.500000e-01) ; 2 uses
  %i.mo = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.mn)
  %i.mp = shufflevector <2 x double> %i.mn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.mq = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.mp)
  %.sroa.4.0.insert.ext.i = zext i32 %i.mq to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %16)
          to label %bb.cc unwind label %bb.cq

bb.cc:                                            ; preds = %.split.us
  %i.mr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.6, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ms = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc127 unwind label %bb.cs

.noexc127:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.mt = icmp eq i32 %i.ms, 65536
  br i1 %i.mt, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.noexc127
  %i.mu = load ptr, ptr %i.bj, align 8, !tbaa !37, !noalias !234
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %i.mu)
          to label %_ZNK2cv11_InputArray6getMatEi.exit130 unwind label %bb.cs

bb.ce:                                            ; preds = %.noexc127
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit130 unwind label %bb.cs

_ZNK2cv11_InputArray6getMatEi.exit130:            ; preds = %bb.cd, %bb.ce
  %i.mv = load i32, ptr %i.bk, align 4, !tbaa !82
  %i.mw = icmp slt i32 %i.mv, 2
  br i1 %i.mw, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit130
  %i.mx = load ptr, ptr %i.bo, align 8, !tbaa !83
  %i.my = getelementptr inbounds nuw [16 x i8], ptr %i.mx, i64 %indvars.iv239
  br label %_ZN2cv3Mat2atINS_3VecIiLi4EEEEERT_i.exit

bb.cg:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit130
  %i.mz = load i32, ptr %17, align 8, !tbaa !84
  %i.na = and i32 %i.mz, 16384
  %i.nb = icmp ne i32 %i.na, 0
  %i.nc = load i32, ptr %i.bl, align 4
  %i.nd = icmp eq i32 %i.nc, 1
  %or.cond.i131 = select i1 %i.nb, i1 true, i1 %i.nd
  br i1 %or.cond.i131, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ne = load ptr, ptr %i.bo, align 8, !tbaa !83
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv239
  br label %_ZN2cv3Mat2atINS_3VecIiLi4EEEEERT_i.exit

bb.ci:                                            ; preds = %bb.cg
  %i.ng = load i32, ptr %i.bm, align 8, !tbaa !26
  %i.nh = icmp eq i32 %i.ng, 1
  br i1 %i.nh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ni = load ptr, ptr %i.bo, align 8, !tbaa !83
  %i.nj = load i64, ptr %i.bp, align 8, !tbaa !79
  %i.nk = mul i64 %i.nj, %indvars.iv239
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nk
  br label %_ZN2cv3Mat2atINS_3VecIiLi4EEEEERT_i.exit

bb.ck:                                            ; preds = %bb.ci
  %i.nm = load i32, ptr %i.bn, align 4, !tbaa !85 ; 3 uses
  %i.nn = sdiv i32 %i.cn, %i.nm                   ; 2 uses
  %i.no = mul nsw i32 %i.nn, %i.nm                ; 0 uses
  %.recomposed283 = srem i32 %i.cn, %i.nm
  %i.np = load ptr, ptr %i.bo, align 8, !tbaa !83
  %i.nq = load i64, ptr %i.bp, align 8, !tbaa !79
  %i.nr = sext i32 %i.nn to i64
  %i.ns = mul i64 %i.nq, %i.nr
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.ns
  %i.nu = sext i32 %.recomposed283 to i64
  %i.nv = getelementptr inbounds [16 x i8], ptr %i.nt, i64 %i.nu
  br label %_ZN2cv3Mat2atINS_3VecIiLi4EEEEERT_i.exit

_ZN2cv3Mat2atINS_3VecIiLi4EEEEERT_i.exit:         ; preds = %bb.cf, %bb.ch, %bb.cj, %bb.ck
  %.0.i132 = phi ptr [ %i.my, %bb.cf ], [ %i.nf, %bb.ch ], [ %i.nl, %bb.cj ], [ %i.nv, %bb.ck ] ; 4 uses
  %i.nw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.29, i64 noundef 1)
          to label %.noexc133 unwind label %bb.ct ; 0 uses

.noexc133:                                        ; preds = %_ZN2cv3Mat2atINS_3VecIiLi4EEEEERT_i.exit
  %i.nx = load i32, ptr %.0.i132, align 4, !tbaa !26
  %i.ny = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i32 noundef %i.nx)
          to label %.noexc134 unwind label %bb.ct

.noexc134:                                        ; preds = %.noexc133
  %i.nz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ny, ptr noundef nonnull @.str.30, i64 noundef 2)
          to label %.noexc135 unwind label %bb.ct ; 0 uses

.noexc135:                                        ; preds = %.noexc134
  %i.oa = getelementptr inbounds nuw i8, ptr %.0.i132, i64 4
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !26
  %i.oc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i32 noundef %i.ob)
          to label %.noexc136 unwind label %bb.ct

.noexc136:                                        ; preds = %.noexc135
  %i.od = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oc, ptr noundef nonnull @.str.30, i64 noundef 2)
          to label %.noexc137 unwind label %bb.ct ; 0 uses

.noexc137:                                        ; preds = %.noexc136
  %i.oe = getelementptr inbounds nuw i8, ptr %.0.i132, i64 8
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !26
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i32 noundef %i.of)
          to label %.noexc138 unwind label %bb.ct

.noexc138:                                        ; preds = %.noexc137
  %i.oh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.og, ptr noundef nonnull @.str.30, i64 noundef 2)
          to label %.noexc139 unwind label %bb.ct ; 0 uses

.noexc139:                                        ; preds = %.noexc138
  %i.oi = getelementptr inbounds nuw i8, ptr %.0.i132, i64 12
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !26
  %i.ok = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i32 noundef %i.oj)
          to label %.noexc140 unwind label %bb.ct

.noexc140:                                        ; preds = %.noexc139
  %i.ol = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ok, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %_ZN2cvlsIiLi4EEERSoS1_RKNS_3VecIT_XT0_EEE.exit unwind label %bb.ct ; 0 uses

_ZN2cvlsIiLi4EEERSoS1_RKNS_3VecIT_XT0_EEE.exit:   ; preds = %.noexc140
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  store ptr %i.bq, ptr %18, align 8, !tbaa !103, !alias.scope !237
  store i64 0, ptr %i.br, align 8, !tbaa !104, !alias.scope !237
  store i8 0, ptr %i.bq, align 8, !tbaa !25, !alias.scope !237
  %i.om = load ptr, ptr %i.bs, align 8, !tbaa !108, !noalias !237 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.om, null
  %i.on = load ptr, ptr %i.bt, align 8, !noalias !237 ; 2 uses
  %i.oo = icmp ugt ptr %i.om, %i.on
  %.08.i.i.i = select i1 %i.oo, ptr %i.om, ptr %i.on ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %_ZN2cvlsIiLi4EEERSoS1_RKNS_3VecIT_XT0_EEE.exit
  %i.op = load ptr, ptr %i.bu, align 8, !tbaa !109, !noalias !237 ; 2 uses
  %i.oq = ptrtoint ptr %.08.i.i.i to i64
  %i.or = ptrtoint ptr %i.op to i64
  %i.os = sub i64 %i.oq, %i.or
  %i.ot = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %i.op, i64 noundef %i.os)
          to label %bb.co unwind label %bb.cm     ; 0 uses

bb.cm:                                            ; preds = %bb.cn, %bb.cl
  %i.ou = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ov = load ptr, ptr %18, align 8, !tbaa !77, !alias.scope !237 ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.bq
  br i1 %i.ow, label %.body, label %.body.sink.split

bb.cn:                                            ; preds = %_ZN2cvlsIiLi4EEERSoS1_RKNS_3VecIT_XT0_EEE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.bv)
          to label %bb.co unwind label %bb.cm

bb.co:                                            ; preds = %bb.cl, %bb.cn
  %.sroa.0.0.insert.ext = zext i32 %i.mo to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext
  store double %i.ck, ptr %19, align 8, !tbaa !111
  store <2 x double> %i.cl, ptr %i.bw, align 8, !tbaa !111
  store double %i.at, ptr %i.bx, align 8, !tbaa !111
end_hunk_0
