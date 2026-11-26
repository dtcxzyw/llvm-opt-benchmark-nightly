Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFExporter?download=true
inline.NumInlined: 6973
inline.NumDeleted: 2259
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5o3dgc13SC3DMCEncoderItE16EncodeFloatArrayEPKfmmmS3_S3_mRKNS_14IndexedFaceSetItEENS_25O3DGCSC3DMCPredictionModeERNS_12BinaryStreamE:bb.a
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.040.i366
  %i.hb = load float, ptr %i.ha, align 4
  %i.hc = fsub float %i.gz, %i.hb
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.040.i366
  %i.he = load float, ptr %i.hd, align 8
  %i.hf = call float @llvm.fmuladd.f32(float %i.hc, float %i.he, float 5.000000e-01)
  %i.hg = fptosi float %i.hf to i64
  %i.hh = load ptr, ptr %i.gh, align 8
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.gx
  store i64 %i.hg, ptr %i.hi, align 8
  %i.hj = or disjoint i64 %.040.i366, 1           ; 3 uses
  %i.hk = add i64 %i.hj, %i.gj                    ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hk
  %i.hm = load float, ptr %i.hl, align 4
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hj
  %i.ho = load float, ptr %i.hn, align 4
  %i.hp = fsub float %i.hm, %i.ho
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hj
  %i.hr = load float, ptr %i.hq, align 4
  %i.hs = call float @llvm.fmuladd.f32(float %i.hp, float %i.hr, float 5.000000e-01)
  %i.ht = fptosi float %i.hs to i64
  %i.hu = load ptr, ptr %i.gh, align 8
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.hk
  store i64 %i.ht, ptr %i.hv, align 8
  %i.hw = add nuw nsw i64 %.040.i366, 2           ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge42.i368.unr-lcssa, label %.preheader.i364.new, !llvm.loop !1750

_ZN5o3dgc13SC3DMCEncoderItE18QuantizeFloatArrayEPKfmmmS3_S3_m.exit371: ; preds = %._crit_edge42.i368, %bb.ao, %.preheader.lr.ph.i363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN5o3dgc13SC3DMCEncoderItE18QuantizeFloatArrayEPKfmmmS3_S3_m.exit371, %.loopexit601
  %i.hx = icmp sgt i64 %2, 0
  br i1 %i.hx, label %.lr.ph675, label %._crit_edge676

.lr.ph675:                                        ; preds = %bb.ap
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.hz = icmp ne i32 %9, 0                       ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 16 uses
  %.not690 = icmp eq i64 %3, 0                    ; 8 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 8 uses
  %i.id = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 18 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 3248 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 2 uses
  %i.ii = add nuw i64 %i.a, 624                   ; 4 uses
  %i.ij = add i64 %i.a, 624
  %i.ik = shl i64 %4, 3
  %i.il = add i64 %i.a, 624
  %i.im = shl i64 %4, 3
  %min.iters.check1118 = icmp ult i64 %3, 12
  %invariant.op.a = add i64 %i.ii, -1
  %n.vec1125 = and i64 %3, -4                     ; 3 uses
  %cmp.n1136 = icmp eq i64 %3, %n.vec1125
  %xtraiter1268 = and i64 %3, 1
  %lcmp.mod1269.not = icmp eq i64 %xtraiter1268, 0
  %min.iters.check1099 = icmp ult i64 %3, 10
  %invariant.op1316 = add i64 %i.ii, -1
  %n.vec1103 = and i64 %3, -4                     ; 3 uses
  %cmp.n1110 = icmp eq i64 %3, %n.vec1103
  %xtraiter1270 = and i64 %3, 3                   ; 2 uses
  %lcmp.mod1271.not = icmp eq i64 %xtraiter1270, 0
  %min.iters.check1083 = icmp ult i64 %3, 10
  %invariant.op1318 = add i64 %i.ii, -1
  %n.vec1087 = and i64 %3, -4                     ; 3 uses
  %cmp.n1094 = icmp eq i64 %3, %n.vec1087
  %xtraiter1274 = and i64 %3, 3                   ; 2 uses
  %lcmp.mod1275.not = icmp eq i64 %xtraiter1274, 0
  %min.iters.check1069 = icmp ult i64 %3, 10
  %invariant.op1320 = add i64 %i.ii, -1
  %n.vec1071 = and i64 %3, -4                     ; 3 uses
  %cmp.n1078 = icmp eq i64 %3, %n.vec1071
  %xtraiter1277 = and i64 %3, 3                   ; 2 uses
  %lcmp.mod1278.not = icmp eq i64 %xtraiter1277, 0
  br label %bb.aq

._crit_edge676:                                   ; preds = %.loopexit591, %bb.ap
  %i.in = load i32, ptr %i.p, align 8
  %.not = icmp eq i32 %i.in, 1
  br i1 %.not, label %.thread548, label %bb.em

.thread548:                                       ; preds = %._crit_edge676
  %i.io = load i64, ptr %i.l, align 8
  %i.ip = sub i64 %i.io, %i.m                     ; 2 uses
  %i.iq = trunc i64 %i.ip to i8
  br label %bb.eu

bb.aq:                                            ; preds = %.lr.ph675, %.loopexit591
  %.0279673 = phi i64 [ 0, %.lr.ph675 ], [ %i.ahp, %.loopexit591 ] ; 11 uses
  %.0282672 = phi i64 [ 2, %.lr.ph675 ], [ %.1283, %.loopexit591 ] ; 6 uses
  %.0284671 = phi i64 [ 257, %.lr.ph675 ], [ %.1285, %.loopexit591 ] ; 6 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0279673 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8            ; 7 uses
  %i.it = load ptr, ptr %i.hy, align 8
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.is ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8            ; 3 uses
  %i.iw = icmp sgt i64 %i.is, 0
  br i1 %i.iw, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit: ; preds = %bb.aq
  %i.ix = getelementptr i8, ptr %i.iu, i64 -8
  %i.iy = load i64, ptr %i.ix, align 8            ; 2 uses
  %i.iz = icmp sgt i64 %i.iv, %i.iy
  %or.cond = and i1 %i.hz, %i.iz
  br i1 %or.cond, label %bb.ar, label %.thread546

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread: ; preds = %bb.aq
  %i.ja = icmp sgt i64 %i.iv, 0
  %or.cond536 = and i1 %i.hz, %i.ja
  br i1 %or.cond536, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, label %.thread546

bb.ar:                                            ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit
  %i.jb = shl i64 %i.iy, 32
  %i.jc = ashr exact i64 %i.jb, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread, %bb.ar
  %i.jd = phi i64 [ %i.jc, %bb.ar ], [ 0, %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread ] ; 2 uses
  %i.je = shl i64 %i.iv, 32
  %i.jf = ashr exact i64 %i.je, 32                ; 2 uses
  %i.jg = icmp slt i64 %i.jd, %i.jf
  br i1 %i.jg, label %.lr.ph650, label %.thread546

.lr.ph650:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, %.loopexit586
  %.0278649 = phi i64 [ %i.wp, %.loopexit586 ], [ %i.jd, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 2 uses
  %.0534648 = phi i64 [ %.7, %.loopexit586 ], [ 0, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 7 uses
  %i.jh = load ptr, ptr %i.ia, align 8
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %.0278649
  %i.jj = load i64, ptr %i.ji, align 8            ; 2 uses
  switch i32 %9, label %.loopexit586 [
    i32 5, label %bb.as
    i32 6, label %.thread540
    i32 1, label %.thread540
  ]

bb.as:                                            ; preds = %.lr.ph650
  %.idx553 = mul nsw i64 %i.jj, 6
  %i.jk = getelementptr inbounds i8, ptr %i.k, i64 %.idx553 ; 3 uses
  %i.jl = load i16, ptr %i.jk, align 2
  %i.jm = zext i16 %i.jl to i64                   ; 3 uses
  %i.jn = icmp eq i64 %i.is, %i.jm
  %i.jo = getelementptr i8, ptr %i.jk, i64 2
  %i.jp = load i16, ptr %i.jo, align 2
  %i.jq = zext i16 %i.jp to i64                   ; 3 uses
  br i1 %i.jn, label %.sink.split, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jr = icmp eq i64 %i.is, %i.jq
  br i1 %i.jr, label %.sink.split, label %bb.au

.sink.split:                                      ; preds = %bb.at, %bb.as
  %.0277.ph = phi i64 [ %i.jq, %bb.as ], [ %i.jm, %bb.at ]
  %i.js = getelementptr i8, ptr %i.jk, i64 4
  %i.jt = load i16, ptr %i.js, align 2
  %i.ju = zext i16 %i.jt to i64
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %bb.at
  %.0277 = phi i64 [ %i.jm, %bb.at ], [ %.0277.ph, %.sink.split ] ; 9 uses
  %.0276 = phi i64 [ %i.jq, %bb.at ], [ %i.ju, %.sink.split ] ; 6 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0277 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8
  %i.jx = icmp slt i64 %i.jw, %.0279673
  br i1 %i.jx, label %bb.av, label %.thread540

bb.av:                                            ; preds = %bb.au
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0276 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8
  %i.ka = icmp slt i64 %i.jz, %.0279673
  br i1 %i.ka, label %bb.aw, label %.thread540

bb.aw:                                            ; preds = %bb.av
  %.not554 = icmp eq i64 %.0277, 0
  %.pre781 = load ptr, ptr %i.hy, align 8         ; 2 uses
  br i1 %.not554, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit372, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kb = getelementptr [8 x i8], ptr %.pre781, i64 %.0277
  %i.kc = getelementptr i8, ptr %i.kb, i64 -8
  %i.kd = load i64, ptr %i.kc, align 8
  %i.ke = shl i64 %i.kd, 32
  %i.kf = ashr exact i64 %i.ke, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit372

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit372:        ; preds = %bb.aw, %bb.ax
  %i.kg = phi i64 [ %i.kf, %bb.ax ], [ 0, %bb.aw ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.pre781, i64 %.0277
  %i.ki = load i64, ptr %i.kh, align 8
  %i.kj = shl i64 %i.ki, 32
  %i.kk = ashr exact i64 %i.kj, 32                ; 2 uses
  %i.kl = icmp slt i64 %i.kg, %i.kk
  br i1 %i.kl, label %.lr.ph642, label %.thread540

.lr.ph642:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit372
  %i.km = mul i64 %.0277, %4
  %i.kn = mul i64 %.0276, %4
  %i.ko = mul i64 %i.ik, %.0277
  %i.kp = sub i64 %i.ij, %i.ko
  %i.kq = mul i64 %i.im, %.0276
  %i.kr = sub i64 %i.il, %i.kq
  %invariant.op1312.a = add i64 %i.kr, -1
  %invariant.op1314 = add i64 %i.kp, -1
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph642, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.0275641 = phi i64 [ %i.kg, %.lr.ph642 ], [ %i.ov, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 2 uses
  %.1535640 = phi i64 [ %.0534648, %.lr.ph642 ], [ %.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 11 uses
  %i.ks = load ptr, ptr %i.ia, align 8
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %.0275641
  %i.ku = load i64, ptr %i.kt, align 8
  %.idx329 = mul i64 %i.ku, 6
  %i.kv = getelementptr i8, ptr %i.k, i64 %.idx329 ; 3 uses
  %i.kw = load i16, ptr %i.kv, align 2
  %i.kx = zext i16 %i.kw to i64                   ; 4 uses
  %i.ky = icmp eq i64 %.0276, %i.kx               ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.kx
  %i.la = load i64, ptr %i.kz, align 8
  %i.lb = icmp sge i64 %i.la, %.0279673
  %.not330 = icmp eq i64 %.0277, %i.kx
  %or.cond340 = or i1 %i.lb, %.not330
  %or.cond341 = select i1 %or.cond340, i1 true, i1 %i.ky
  %.1274 = select i1 %or.cond341, i64 -1, i64 %i.kx
  %i.lc = getelementptr i8, ptr %i.kv, i64 2
  %i.ld = load i16, ptr %i.lc, align 2
  %i.le = zext i16 %i.ld to i64                   ; 4 uses
  %i.lf = icmp eq i64 %.0276, %i.le               ; 2 uses
  %spec.select.1 = or i1 %i.lf, %i.ky
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.le
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = icmp sge i64 %i.lh, %.0279673
  %.not330.1 = icmp eq i64 %.0277, %i.le
  %or.cond340.1 = or i1 %i.li, %.not330.1
  %or.cond341.1 = select i1 %or.cond340.1, i1 true, i1 %i.lf
  %.1274.1 = select i1 %or.cond341.1, i64 %.1274, i64 %i.le
  %i.lj = getelementptr i8, ptr %i.kv, i64 4
  %i.lk = load i16, ptr %i.lj, align 2
  %i.ll = zext i16 %i.lk to i64                   ; 4 uses
  %i.lm = icmp eq i64 %.0276, %i.ll               ; 2 uses
  %spec.select.2 = or i1 %i.lm, %spec.select.1
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ll
  %i.lo = load i64, ptr %i.ln, align 8
  %i.lp = icmp sge i64 %i.lo, %.0279673
  %.not330.2 = icmp eq i64 %.0277, %i.ll
  %or.cond340.2 = or i1 %i.lp, %.not330.2
  %or.cond341.2 = select i1 %or.cond340.2, i1 true, i1 %i.lm
  %.1274.2 = select i1 %or.cond341.2, i64 %.1274.1, i64 %i.ll ; 4 uses
  %i.lq = icmp ne i64 %.1274.2, -1
  %or.cond3 = select i1 %i.lq, i1 %spec.select.2, i1 false
  br i1 %or.cond3, label %bb.az, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.lr = load i64, ptr %i.jy, align 8            ; 2 uses
  %i.ls = load i64, ptr %i.jv, align 8            ; 2 uses
  %..i = call noundef i64 @llvm.smin.i64(i64 %i.lr, i64 %i.ls) ; 3 uses
  %..i373 = call noundef i64 @llvm.smax.i64(i64 %i.lr, i64 %i.ls) ; 3 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.1274.2
  %i.lu = load i64, ptr %i.lt, align 8
  %i.lv = xor i64 %i.lu, -1                       ; 3 uses
  %.not.i374 = icmp eq i64 %.1535640, 0
  br i1 %.not.i374, label %.thread34.thread.i, label %.lr.ph.i375

.lr.ph.i375:                                      ; preds = %bb.az, %bb.bc
  %.02543.i = phi i64 [ %i.mp, %bb.bc ], [ 0, %bb.az ] ; 7 uses
  %i.lw = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.02543.i ; 5 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load i64, ptr %i.lx, align 8            ; 2 uses
  %i.lz = icmp eq i64 %i.ly, %i.lv
  br i1 %i.lz, label %bb.ba, label %.split.i

bb.ba:                                            ; preds = %.lr.ph.i375
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.mb = load i64, ptr %i.ma, align 8            ; 2 uses
  %i.mc = icmp eq i64 %..i373, %i.mb
  br i1 %i.mc, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.ba
  %i.md = load i64, ptr %i.lw, align 8            ; 2 uses
  %i.me = icmp eq i64 %..i, %i.md
  br i1 %i.me, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.split31.i

.split.i:                                         ; preds = %.lr.ph.i375
  %i.mf = icmp sgt i64 %i.ly, %i.lv
  br i1 %i.mf, label %bb.bb, label %bb.bc

.split31.i:                                       ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i
  %i.mg = icmp slt i64 %..i, %i.md
  br i1 %i.mg, label %bb.bb, label %bb.bc

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.ba
  %i.mh = icmp slt i64 %..i373, %i.mb
  br i1 %i.mh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.mi = icmp eq i64 %.1535640, 1
  %spec.select549 = select i1 %i.mi, i64 2, i64 %.1535640 ; 4 uses
  %.044.i = add i64 %spec.select549, -1
  %i.mj = icmp ugt i64 %.044.i, %.02543.i
  br i1 %i.mj, label %.lr.ph47.preheader.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

.lr.ph47.preheader.i:                             ; preds = %bb.bb
  %i.mk = mul i64 %.02543.i, 280
  %i.ml = getelementptr i8, ptr %i.ib, i64 %i.mk  ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.ml, i64 280
  %i.mm = xor i64 %.02543.i, -1
  %i.mn = add i64 %spec.select549, %i.mm
  %i.mo = mul nuw i64 %i.mn, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %i.ml, i64 %i.mo, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

bb.bc:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.mp = add nuw i64 %.02543.i, 1                ; 2 uses
  %exitcond.not.i376 = icmp eq i64 %i.mp, %.1535640
  br i1 %exitcond.not.i376, label %.thread34.i, label %.lr.ph.i375, !llvm.loop !16

.thread34.i:                                      ; preds = %bb.bc
  %i.mq = icmp eq i64 %.1535640, 1
  br i1 %i.mq, label %.thread34.thread.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

.thread34.thread.i:                               ; preds = %.thread34.i, %bb.az
  %i.mr = add nuw nsw i64 %.1535640, 1
  %i.ms = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.1535640
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit: ; preds = %bb.bb, %.lr.ph47.preheader.i, %.thread34.thread.i
  %.9 = phi i64 [ %i.mr, %.thread34.thread.i ], [ %spec.select549, %.lr.ph47.preheader.i ], [ %spec.select549, %bb.bb ] ; 4 uses
  %.lcssa.sink.i = phi ptr [ %i.ms, %.thread34.thread.i ], [ %i.lw, %.lr.ph47.preheader.i ], [ %i.lw, %bb.bb ] ; 3 uses
  %.1.ph.i = phi i64 [ %.1535640, %.thread34.thread.i ], [ %.02543.i, %.lr.ph47.preheader.i ], [ %.02543.i, %bb.bb ] ; 3 uses
  store i64 %..i, ptr %.lcssa.sink.i, align 8
  %.sroa.5.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 8
  store i64 %..i373, ptr %.sroa.5.0..lcssa.sink.i.sroa_idx, align 8
  %.sroa.7.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 16
  store i64 %i.lv, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx, align 8
  %.not328 = icmp eq i64 %.1.ph.i, 4294967295
  %brmerge = or i1 %.not328, %.not690
  br i1 %brmerge, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.lr.ph639

.lr.ph639:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit
  %i.mt = load ptr, ptr %i.ic, align 8            ; 4 uses
  %i.mu = getelementptr [8 x i8], ptr %i.mt, i64 %i.km ; 4 uses
  %i.mv = getelementptr [8 x i8], ptr %i.mt, i64 %i.kn ; 4 uses
  %i.mw = mul i64 %.1274.2, %4
  %i.mx = getelementptr [8 x i8], ptr %i.mt, i64 %i.mw ; 4 uses
  %i.my = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.1.ph.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24 ; 4 uses
  br i1 %min.iters.check1118, label %scalar.ph1117.preheader, label %vector.memcheck1119

vector.memcheck1119:                              ; preds = %.lr.ph639
  %i.na = ptrtoaddr ptr %i.mt to i64              ; 2 uses
  %i.nb = mul i64 %.1.ph.i, 280                   ; 2 uses
  %17 = mul i64 %.1274.2, %4
  %18 = shl i64 %17, 3
  %i.nc = add i64 %18, %i.na
  %19 = sub i64 %i.nb, %i.nc
  %.reass = add i64 %19, %invariant.op.a
  %diff.check1120.a = icmp ult i64 %.reass, 31
  %20 = sub i64 %i.nb, %i.na                      ; 2 uses
  %.reass1313 = add i64 %20, %invariant.op1312.a
  %diff.check1121 = icmp ult i64 %.reass1313, 31
  %conflict.rdx = or i1 %diff.check1120.a, %diff.check1121
  %.reass1315 = add i64 %20, %invariant.op1314
  %diff.check1122 = icmp ult i64 %.reass1315, 31
  %conflict.rdx1123 = or i1 %conflict.rdx, %diff.check1122
  br i1 %conflict.rdx1123, label %scalar.ph1117.preheader, label %vector.body1126

vector.body1126:                                  ; preds = %vector.memcheck1119, %vector.body1126
  %index1127 = phi i64 [ %index.next1134, %vector.body1126 ], [ 0, %vector.memcheck1119 ] ; 5 uses
  %i.nd = getelementptr [8 x i8], ptr %i.mu, i64 %index1127 ; 2 uses
  %i.ne = getelementptr i8, ptr %i.nd, i64 16
  %wide.load1128 = load <2 x i64>, ptr %i.nd, align 8
  %wide.load1129 = load <2 x i64>, ptr %i.ne, align 8
  %i.nf = getelementptr [8 x i8], ptr %i.mv, i64 %index1127 ; 2 uses
  %i.ng = getelementptr i8, ptr %i.nf, i64 16
  %wide.load1130 = load <2 x i64>, ptr %i.nf, align 8
  %wide.load1131 = load <2 x i64>, ptr %i.ng, align 8
  %i.nh = add nsw <2 x i64> %wide.load1130, %wide.load1128
  %i.ni = add nsw <2 x i64> %wide.load1131, %wide.load1129
  %i.nj = getelementptr [8 x i8], ptr %i.mx, i64 %index1127 ; 2 uses
  %i.nk = getelementptr i8, ptr %i.nj, i64 16
  %wide.load1132 = load <2 x i64>, ptr %i.nj, align 8
  %wide.load1133 = load <2 x i64>, ptr %i.nk, align 8
  %i.nl = sub <2 x i64> %i.nh, %wide.load1132
  %i.nm = sub <2 x i64> %i.ni, %wide.load1133
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %index1127 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  store <2 x i64> %i.nl, ptr %i.nn, align 8
  store <2 x i64> %i.nm, ptr %i.no, align 8
  %index.next1134 = add nuw i64 %index1127, 4     ; 2 uses
  %i.np = icmp eq i64 %index.next1134, %n.vec1125
  br i1 %i.np, label %middle.block1135, label %vector.body1126, !llvm.loop !1753

middle.block1135:                                 ; preds = %vector.body1126
  br i1 %cmp.n1136, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph1117.preheader

scalar.ph1117.preheader:                          ; preds = %vector.memcheck1119, %.lr.ph639, %middle.block1135
  %.0269638.ph = phi i64 [ 0, %vector.memcheck1119 ], [ 0, %.lr.ph639 ], [ %n.vec1125, %middle.block1135 ] ; 7 uses
  %.neg = or disjoint i64 %.0269638.ph, 1
  br i1 %lcmp.mod1269.not, label %scalar.ph1117.prol.loopexit, label %scalar.ph1117.prol

scalar.ph1117.prol:                               ; preds = %scalar.ph1117.preheader
  %i.nq = getelementptr [8 x i8], ptr %i.mu, i64 %.0269638.ph
  %i.nr = load i64, ptr %i.nq, align 8
  %i.ns = getelementptr [8 x i8], ptr %i.mv, i64 %.0269638.ph
  %i.nt = load i64, ptr %i.ns, align 8
  %i.nu = add nsw i64 %i.nt, %i.nr
  %i.nv = getelementptr [8 x i8], ptr %i.mx, i64 %.0269638.ph
  %i.nw = load i64, ptr %i.nv, align 8
  %i.nx = sub i64 %i.nu, %i.nw
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %.0269638.ph
  store i64 %i.nx, ptr %i.ny, align 8
  %i.nz = or disjoint i64 %.0269638.ph, 1
  br label %scalar.ph1117.prol.loopexit

scalar.ph1117.prol.loopexit:                      ; preds = %scalar.ph1117.prol, %scalar.ph1117.preheader
  %.0269638.unr = phi i64 [ %.0269638.ph, %scalar.ph1117.preheader ], [ %i.nz, %scalar.ph1117.prol ]
  %i.oa = icmp eq i64 %3, %.neg
  br i1 %i.oa, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph1117

scalar.ph1117:                                    ; preds = %scalar.ph1117.prol.loopexit, %scalar.ph1117
  %.0269638 = phi i64 [ %i.ou, %scalar.ph1117 ], [ %.0269638.unr, %scalar.ph1117.prol.loopexit ] ; 6 uses
  %i.ob = getelementptr [8 x i8], ptr %i.mu, i64 %.0269638
  %i.oc = load i64, ptr %i.ob, align 8
  %i.od = getelementptr [8 x i8], ptr %i.mv, i64 %.0269638
  %i.oe = load i64, ptr %i.od, align 8
  %i.of = add nsw i64 %i.oe, %i.oc
  %i.og = getelementptr [8 x i8], ptr %i.mx, i64 %.0269638
  %i.oh = load i64, ptr %i.og, align 8
  %i.oi = sub i64 %i.of, %i.oh
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %.0269638
  store i64 %i.oi, ptr %i.oj, align 8
  %i.ok = add nuw i64 %.0269638, 1                ; 4 uses
  %i.ol = getelementptr [8 x i8], ptr %i.mu, i64 %i.ok
  %i.om = load i64, ptr %i.ol, align 8
  %i.on = getelementptr [8 x i8], ptr %i.mv, i64 %i.ok
  %i.oo = load i64, ptr %i.on, align 8
  %i.op = add nsw i64 %i.oo, %i.om
  %i.oq = getelementptr [8 x i8], ptr %i.mx, i64 %i.ok
  %i.or = load i64, ptr %i.oq, align 8
  %i.os = sub i64 %i.op, %i.or
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.ok
  store i64 %i.os, ptr %i.ot, align 8
  %i.ou = add nuw i64 %.0269638, 2                ; 2 uses
  %exitcond767.not.1 = icmp eq i64 %i.ou, %3
  br i1 %exitcond767.not.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph1117, !llvm.loop !1754

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, %scalar.ph1117.prol.loopexit, %scalar.ph1117, %middle.block1135, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, %.thread34.i, %bb.ay
  %.2 = phi i64 [ %.9, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit ], [ %.9, %middle.block1135 ], [ %.1535640, %bb.ay ], [ %.1535640, %.thread34.i ], [ %.9, %scalar.ph1117.prol.loopexit ], [ %.9, %scalar.ph1117 ], [ %.1535640, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i ] ; 2 uses
  %i.ov = add nsw i64 %.0275641, 1                ; 2 uses
  %exitcond768.not = icmp eq i64 %i.ov, %i.kk
  br i1 %exitcond768.not, label %.thread540, label %bb.ay, !llvm.loop !1755

.thread540:                                       ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit372, %bb.av, %bb.au, %.lr.ph650, %.lr.ph650
  %.4 = phi i64 [ %.0534648, %bb.av ], [ %.0534648, %bb.au ], [ %.0534648, %.lr.ph650 ], [ %.0534648, %.lr.ph650 ], [ %.0534648, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit372 ], [ %.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 11 uses
  %.idx = mul i64 %i.jj, 6
  %i.ow = getelementptr i8, ptr %i.k, i64 %.idx   ; 3 uses
  %i.ox = load i16, ptr %i.ow, align 2
  %i.oy = zext i16 %i.ox to i64                   ; 3 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.oy
  %i.pa = load i64, ptr %i.oz, align 8            ; 4 uses
  %i.pb = icmp slt i64 %i.pa, %.0279673
  br i1 %i.pb, label %bb.bd, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread

bb.bd:                                            ; preds = %.thread540
  %.not.i377 = icmp eq i64 %.4, 0
  br i1 %.not.i377, label %.thread34.thread.i384, label %.lr.ph.i378

.lr.ph.i378:                                      ; preds = %bb.bd, %bb.bg
  %.02543.i379 = phi i64 [ %i.pv, %bb.bg ], [ 0, %bb.bd ] ; 7 uses
  %i.pc = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.02543.i379 ; 5 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pe = load i64, ptr %i.pd, align 8            ; 2 uses
  %i.pf = icmp eq i64 %i.pa, %i.pe
  br i1 %i.pf, label %bb.be, label %.split.i380

bb.be:                                            ; preds = %.lr.ph.i378
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.ph = load i64, ptr %i.pg, align 8            ; 2 uses
  %i.pi = icmp eq i64 %i.ph, -1
  br i1 %i.pi, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393:   ; preds = %bb.be
  %i.pj = load i64, ptr %i.pc, align 8            ; 2 uses
  %i.pk = icmp eq i64 %i.pj, -1
  br i1 %i.pk, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread, label %.split31.i394

.split.i380:                                      ; preds = %.lr.ph.i378
  %i.pl = icmp slt i64 %i.pa, %i.pe
  br i1 %i.pl, label %bb.bf, label %bb.bg

.split31.i394:                                    ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393
  %i.pm = icmp sgt i64 %i.pj, -1
  br i1 %i.pm, label %bb.bf, label %bb.bg

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392:   ; preds = %bb.be
  %i.pn = icmp sgt i64 %i.ph, -1
  br i1 %i.pn, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392, %.split31.i394, %.split.i380
  %i.po = icmp eq i64 %.4, 1
  %spec.select551 = select i1 %i.po, i64 2, i64 %.4 ; 4 uses
  %.044.i388 = add i64 %spec.select551, -1
  %i.pp = icmp ugt i64 %.044.i388, %.02543.i379
  br i1 %i.pp, label %.lr.ph47.preheader.i389, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395

.lr.ph47.preheader.i389:                          ; preds = %bb.bf
  %i.pq = mul i64 %.02543.i379, 280
  %i.pr = getelementptr i8, ptr %i.ib, i64 %i.pq  ; 2 uses
  %scevgep.i390 = getelementptr i8, ptr %i.pr, i64 280
  %i.ps = xor i64 %.02543.i379, -1
  %i.pt = add i64 %spec.select551, %i.ps
  %i.pu = mul nuw i64 %i.pt, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i390, ptr align 8 %i.pr, i64 %i.pu, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395

bb.bg:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392, %.split31.i394, %.split.i380
  %i.pv = add nuw i64 %.02543.i379, 1             ; 2 uses
  %exitcond.not.i381 = icmp eq i64 %i.pv, %.4
  br i1 %exitcond.not.i381, label %.thread34.i382, label %.lr.ph.i378, !llvm.loop !16

.thread34.i382:                                   ; preds = %bb.bg
  %i.pw = icmp eq i64 %.4, 1
  br i1 %i.pw, label %.thread34.thread.i384, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread

.thread34.thread.i384:                            ; preds = %.thread34.i382, %bb.bd
  %i.px = add nuw nsw i64 %.4, 1
  %i.py = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.4
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395: ; preds = %bb.bf, %.lr.ph47.preheader.i389, %.thread34.thread.i384
  %.12 = phi i64 [ %i.px, %.thread34.thread.i384 ], [ %spec.select551, %.lr.ph47.preheader.i389 ], [ %spec.select551, %bb.bf ] ; 4 uses
  %.lcssa.sink.i386 = phi ptr [ %i.py, %.thread34.thread.i384 ], [ %i.pc, %.lr.ph47.preheader.i389 ], [ %i.pc, %bb.bf ] ; 2 uses
  %.1.ph.i387 = phi i64 [ %.4, %.thread34.thread.i384 ], [ %.02543.i379, %.lr.ph47.preheader.i389 ], [ %.02543.i379, %bb.bf ] ; 3 uses
  %.sroa.7533.0..lcssa.sink.i386.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i386, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i386, i8 -1, i64 16, i1 false)
  store i64 %i.pa, ptr %.sroa.7533.0..lcssa.sink.i386.sroa_idx, align 8
  %.not324 = icmp eq i64 %.1.ph.i387, 4294967295
  %brmerge687 = or i1 %.not324, %.not690
  br i1 %brmerge687, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread, label %.lr.ph645

.lr.ph645:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395
  %i.pz = load ptr, ptr %i.ic, align 8            ; 2 uses
  %i.qa = mul i64 %4, %i.oy
  %i.qb = getelementptr [8 x i8], ptr %i.pz, i64 %i.qa ; 6 uses
  %i.qc = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.1.ph.i387
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 24 ; 6 uses
  br i1 %min.iters.check1099, label %scalar.ph1098.preheader, label %vector.memcheck1100

vector.memcheck1100:                              ; preds = %.lr.ph645
  %i.qe = ptrtoaddr ptr %i.pz to i64
  %i.qf = mul i64 %.1.ph.i387, 280
  %i.qg = mul i64 %4, %i.oy
  %i.qh = shl i64 %i.qg, 3
  %i.qi = add i64 %i.qh, %i.qe
  %i.qj = sub i64 %i.qf, %i.qi
  %.reass1317 = add i64 %i.qj, %invariant.op1316
  %diff.check1101 = icmp ult i64 %.reass1317, 31
  br i1 %diff.check1101, label %scalar.ph1098.preheader, label %vector.body1104

vector.body1104:                                  ; preds = %vector.memcheck1100, %vector.body1104
  %index1105 = phi i64 [ %index.next1108, %vector.body1104 ], [ 0, %vector.memcheck1100 ] ; 3 uses
  %i.qk = getelementptr [8 x i8], ptr %i.qb, i64 %index1105 ; 2 uses
end_hunk_0
