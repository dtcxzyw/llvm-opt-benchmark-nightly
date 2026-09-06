Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFExporter?download=true
inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN5o3dgc13SC3DMCEncoderItE16EncodeFloatArrayEPKfmmmS3_S3_mRKNS_14IndexedFaceSetItEENS_25O3DGCSC3DMCPredictionModeERNS_12BinaryStreamE:bb.a
  %i.jg = icmp sgt i64 %i.jc, 0
  br i1 %i.jg, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit: ; preds = %bb.au
  %i.jh = getelementptr i8, ptr %i.je, i64 -8
  %i.ji = load i64, ptr %i.jh, align 8            ; 2 uses
  %i.jj = icmp sgt i64 %i.jf, %i.ji
  %or.cond = and i1 %i.ic, %i.jj
  br i1 %or.cond, label %bb.av, label %.thread549

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread: ; preds = %bb.au
  %i.jk = icmp sgt i64 %i.jf, 0
  %or.cond539 = and i1 %i.ic, %i.jk
  br i1 %or.cond539, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, label %.thread549

bb.av:                                            ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit
  %i.jl = shl i64 %i.ji, 32
  %i.jm = ashr exact i64 %i.jl, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread, %bb.av
  %sext = phi i64 [ %i.jm, %bb.av ], [ 0, %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread ] ; 2 uses
  %sext322 = shl i64 %i.jf, 32
  %i.jn = ashr exact i64 %sext322, 32             ; 2 uses
  %i.jo = icmp slt i64 %sext, %i.jn
  br i1 %i.jo, label %.lr.ph643, label %.thread549

.lr.ph643:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, %.loopexit591
  %.0278642 = phi i64 [ %i.xc, %.loopexit591 ], [ %sext, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 2 uses
  %.0537641 = phi i64 [ %.7, %.loopexit591 ], [ 0, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 7 uses
  %i.jp = load ptr, ptr %i.id, align 8
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %.0278642
  %i.jr = load i64, ptr %i.jq, align 8            ; 2 uses
  switch i32 %9, label %.loopexit591 [
    i32 5, label %bb.aw
    i32 6, label %.thread543
    i32 1, label %.thread543
  ]

bb.aw:                                            ; preds = %.lr.ph643
  %.idx556 = mul nsw i64 %i.jr, 6
  %i.js = getelementptr inbounds i8, ptr %i.k, i64 %.idx556 ; 3 uses
  %i.jt = load i16, ptr %i.js, align 2
  %i.ju = zext i16 %i.jt to i64                   ; 3 uses
  %i.jv = icmp eq i64 %i.jc, %i.ju
  %i.jw = getelementptr i8, ptr %i.js, i64 2
  %i.jx = load i16, ptr %i.jw, align 2
  %i.jy = zext i16 %i.jx to i64                   ; 3 uses
  br i1 %i.jv, label %.sink.split, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jz = icmp eq i64 %i.jc, %i.jy
  br i1 %i.jz, label %.sink.split, label %bb.ay

.sink.split:                                      ; preds = %bb.ax, %bb.aw
  %.0277.ph = phi i64 [ %i.jy, %bb.aw ], [ %i.ju, %bb.ax ]
  %i.ka = getelementptr i8, ptr %i.js, i64 4
  %i.kb = load i16, ptr %i.ka, align 2
  %i.kc = zext i16 %i.kb to i64
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split, %bb.ax
  %.0277 = phi i64 [ %i.ju, %bb.ax ], [ %.0277.ph, %.sink.split ] ; 9 uses
  %.0276 = phi i64 [ %i.jy, %bb.ax ], [ %i.kc, %.sink.split ] ; 6 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0277 ; 2 uses
  %i.ke = load i64, ptr %i.kd, align 8
  %i.kf = icmp slt i64 %i.ke, %.0279666
  br i1 %i.kf, label %bb.az, label %.thread543

bb.az:                                            ; preds = %bb.ay
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0276 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8
  %i.ki = icmp slt i64 %i.kh, %.0279666
  br i1 %i.ki, label %bb.ba, label %.thread543

bb.ba:                                            ; preds = %bb.az
  %.not557 = icmp eq i64 %.0277, 0
  %.pre730 = load ptr, ptr %i.ib, align 8         ; 2 uses
  br i1 %.not557, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit375, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kj = getelementptr [8 x i8], ptr %.pre730, i64 %.0277
  %i.kk = getelementptr i8, ptr %i.kj, i64 -8
  %i.kl = load i64, ptr %i.kk, align 8
  %i.km = shl i64 %i.kl, 32
  %i.kn = ashr exact i64 %i.km, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit375

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit375:        ; preds = %bb.ba, %bb.bb
  %sext325 = phi i64 [ %i.kn, %bb.bb ], [ 0, %bb.ba ] ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.pre730, i64 %.0277
  %i.kp = load i64, ptr %i.ko, align 8
  %sext326 = shl i64 %i.kp, 32
  %i.kq = ashr exact i64 %sext326, 32             ; 2 uses
  %i.kr = icmp slt i64 %sext325, %i.kq
  br i1 %i.kr, label %.lr.ph635, label %.thread543

.lr.ph635:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit375
  %i.ks = mul i64 %.0277, %4
  %i.kt = mul i64 %.0276, %4
  %i.ku = mul i64 %i.iu, %.0276
  %i.kv = mul i64 %i.iw, %.0277
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph635, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.0275634 = phi i64 [ %sext325, %.lr.ph635 ], [ %i.pi, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 2 uses
  %.1538633 = phi i64 [ %.0537641, %.lr.ph635 ], [ %.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 11 uses
  %i.kw = load ptr, ptr %i.id, align 8
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %.0275634
  %i.ky = load i64, ptr %i.kx, align 8
  %.idx332 = mul i64 %i.ky, 6
  %i.kz = getelementptr i8, ptr %i.k, i64 %.idx332 ; 3 uses
  %i.la = load i16, ptr %i.kz, align 2
  %i.lb = zext i16 %i.la to i64                   ; 4 uses
  %i.lc = icmp eq i64 %.0276, %i.lb               ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.lb
  %i.le = load i64, ptr %i.ld, align 8
  %i.lf = icmp sge i64 %i.le, %.0279666
  %.not333 = icmp eq i64 %.0277, %i.lb
  %or.cond343 = or i1 %i.lf, %.not333
  %or.cond344 = select i1 %or.cond343, i1 true, i1 %i.lc
  %.1274 = select i1 %or.cond344, i64 -1, i64 %i.lb
  %i.lg = getelementptr i8, ptr %i.kz, i64 2
  %i.lh = load i16, ptr %i.lg, align 2
  %i.li = zext i16 %i.lh to i64                   ; 4 uses
  %i.lj = icmp eq i64 %.0276, %i.li               ; 2 uses
  %spec.select.1 = or i1 %i.lj, %i.lc
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.li
  %i.ll = load i64, ptr %i.lk, align 8
  %i.lm = icmp sge i64 %i.ll, %.0279666
  %.not333.1 = icmp eq i64 %.0277, %i.li
  %or.cond343.1 = or i1 %i.lm, %.not333.1
  %or.cond344.1 = select i1 %or.cond343.1, i1 true, i1 %i.lj
  %.1274.1 = select i1 %or.cond344.1, i64 %.1274, i64 %i.li
  %i.ln = getelementptr i8, ptr %i.kz, i64 4
  %i.lo = load i16, ptr %i.ln, align 2
  %i.lp = zext i16 %i.lo to i64                   ; 4 uses
  %i.lq = icmp eq i64 %.0276, %i.lp               ; 2 uses
  %spec.select.2 = or i1 %i.lq, %spec.select.1
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.lp
  %i.ls = load i64, ptr %i.lr, align 8
  %i.lt = icmp sge i64 %i.ls, %.0279666
  %.not333.2 = icmp eq i64 %.0277, %i.lp
  %or.cond343.2 = or i1 %i.lt, %.not333.2
  %or.cond344.2 = select i1 %or.cond343.2, i1 true, i1 %i.lq
  %.1274.2 = select i1 %or.cond344.2, i64 %.1274.1, i64 %i.lp ; 4 uses
  %i.lu = icmp ne i64 %.1274.2, -1
  %or.cond3 = select i1 %i.lu, i1 %spec.select.2, i1 false
  br i1 %or.cond3, label %bb.bd, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

bb.bd:                                            ; preds = %bb.bc
  %i.lv = load i64, ptr %i.kg, align 8            ; 2 uses
  %i.lw = load i64, ptr %i.kd, align 8            ; 2 uses
  %..i = call noundef i64 @llvm.smin.i64(i64 %i.lv, i64 %i.lw) ; 3 uses
  %..i376 = call noundef i64 @llvm.smax.i64(i64 %i.lv, i64 %i.lw) ; 3 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.1274.2
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = xor i64 %i.ly, -1                       ; 3 uses
  %.not.i377 = icmp eq i64 %.1538633, 0
  br i1 %.not.i377, label %.thread34.thread.i, label %.lr.ph.i378

.lr.ph.i378:                                      ; preds = %bb.bd, %bb.bg
  %.02543.i = phi i64 [ %i.mt, %bb.bg ], [ 0, %bb.bd ] ; 7 uses
  %i.ma = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.02543.i ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mc = load i64, ptr %i.mb, align 8            ; 2 uses
  %i.md = icmp eq i64 %i.mc, %i.lz
  br i1 %i.md, label %bb.be, label %.split.i

bb.be:                                            ; preds = %.lr.ph.i378
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mf = load i64, ptr %i.me, align 8            ; 2 uses
  %i.mg = icmp eq i64 %..i376, %i.mf
  br i1 %i.mg, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.be
  %i.mh = load i64, ptr %i.ma, align 8            ; 2 uses
  %i.mi = icmp eq i64 %..i, %i.mh
  br i1 %i.mi, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.split31.i

.split.i:                                         ; preds = %.lr.ph.i378
  %i.mj = icmp sgt i64 %i.mc, %i.lz
  br i1 %i.mj, label %bb.bf, label %bb.bg

.split31.i:                                       ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i
  %i.mk = icmp slt i64 %..i, %i.mh
  br i1 %i.mk, label %bb.bf, label %bb.bg

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.be
  %i.ml = icmp slt i64 %..i376, %i.mf
  br i1 %i.ml, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.mm = icmp eq i64 %.1538633, 1
  %spec.select552 = select i1 %i.mm, i64 2, i64 %.1538633 ; 4 uses
  %.044.i = add i64 %spec.select552, -1
  %i.mn = icmp ugt i64 %.044.i, %.02543.i
  br i1 %i.mn, label %.lr.ph47.preheader.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

.lr.ph47.preheader.i:                             ; preds = %bb.bf
  %i.mo = mul i64 %.02543.i, 280
  %i.mp = getelementptr i8, ptr %i.ie, i64 %i.mo  ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.mp, i64 280
  %i.mq = xor i64 %.02543.i, -1
  %i.mr = add i64 %spec.select552, %i.mq
  %i.ms = mul nuw i64 %i.mr, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %i.mp, i64 %i.ms, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

bb.bg:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.mt = add nuw i64 %.02543.i, 1                ; 2 uses
  %exitcond.not.i379 = icmp eq i64 %i.mt, %.1538633
  br i1 %exitcond.not.i379, label %.thread34.i, label %.lr.ph.i378, !llvm.loop !16

.thread34.i:                                      ; preds = %bb.bg
  %i.mu = icmp eq i64 %.1538633, 1
  br i1 %i.mu, label %.thread34.thread.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

.thread34.thread.i:                               ; preds = %.thread34.i, %bb.bd
  %i.mv = add nuw nsw i64 %.1538633, 1
  %i.mw = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.1538633
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit: ; preds = %bb.bf, %.lr.ph47.preheader.i, %.thread34.thread.i
  %.9 = phi i64 [ %i.mv, %.thread34.thread.i ], [ %spec.select552, %.lr.ph47.preheader.i ], [ %spec.select552, %bb.bf ] ; 4 uses
  %.lcssa.sink.i = phi ptr [ %i.mw, %.thread34.thread.i ], [ %i.ma, %.lr.ph47.preheader.i ], [ %i.ma, %bb.bf ] ; 3 uses
  %.1.ph.i = phi i64 [ %.1538633, %.thread34.thread.i ], [ %.02543.i, %.lr.ph47.preheader.i ], [ %.02543.i, %bb.bf ] ; 3 uses
  store i64 %..i, ptr %.lcssa.sink.i, align 8
  %.sroa.5.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 8
  store i64 %..i376, ptr %.sroa.5.0..lcssa.sink.i.sroa_idx, align 8
  %.sroa.7.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 16
  store i64 %i.lz, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx, align 8
  %.not331 = icmp eq i64 %.1.ph.i, 4294967295
  %brmerge = or i1 %.not331, %.not683
  br i1 %brmerge, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.lr.ph632

.lr.ph632:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit
  %i.mx = load ptr, ptr %i.if, align 8            ; 4 uses
  %i.my = getelementptr [8 x i8], ptr %i.mx, i64 %i.ks ; 4 uses
  %i.mz = getelementptr [8 x i8], ptr %i.mx, i64 %i.kt ; 4 uses
  %i.na = mul i64 %.1274.2, %4
  %i.nb = getelementptr [8 x i8], ptr %i.mx, i64 %i.na ; 4 uses
  %i.nc = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.1.ph.i
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 24 ; 4 uses
  br i1 %min.iters.check1010, label %scalar.ph1009.preheader, label %vector.memcheck1004

vector.memcheck1004:                              ; preds = %.lr.ph632
  %i.ne = ptrtoaddr ptr %i.mx to i64              ; 3 uses
  %i.nf = mul i64 %.1.ph.i, 280                   ; 3 uses
  %i.ng = add i64 %i.ir, %i.nf
  %i.nh = mul i64 %i.is, %.1274.2
  %i.ni = add i64 %i.nh, %i.ne
  %i.nj = sub i64 %i.ni, %i.ng
  %diff.check1005 = icmp ugt i64 %i.nj, -32
  %i.nk = add i64 %i.it, %i.nf
  %i.nl = add i64 %i.ku, %i.ne
  %i.nm = sub i64 %i.nl, %i.nk
  %diff.check1006 = icmp ugt i64 %i.nm, -32
  %conflict.rdx = or i1 %diff.check1005, %diff.check1006
  %i.nn = add i64 %i.iv, %i.nf
  %i.no = add i64 %i.kv, %i.ne
  %i.np = sub i64 %i.no, %i.nn
  %diff.check1007 = icmp ugt i64 %i.np, -32
  %conflict.rdx1008 = or i1 %conflict.rdx, %diff.check1007
  br i1 %conflict.rdx1008, label %scalar.ph1009.preheader, label %vector.body1013

vector.body1013:                                  ; preds = %vector.memcheck1004, %vector.body1013
  %index1014 = phi i64 [ %index.next1021, %vector.body1013 ], [ 0, %vector.memcheck1004 ] ; 5 uses
  %i.nq = getelementptr [8 x i8], ptr %i.my, i64 %index1014 ; 2 uses
  %i.nr = getelementptr i8, ptr %i.nq, i64 16
  %wide.load1015 = load <2 x i64>, ptr %i.nq, align 8
  %wide.load1016 = load <2 x i64>, ptr %i.nr, align 8
  %i.ns = getelementptr [8 x i8], ptr %i.mz, i64 %index1014 ; 2 uses
  %i.nt = getelementptr i8, ptr %i.ns, i64 16
  %wide.load1017 = load <2 x i64>, ptr %i.ns, align 8
  %wide.load1018 = load <2 x i64>, ptr %i.nt, align 8
  %i.nu = add nsw <2 x i64> %wide.load1017, %wide.load1015
  %i.nv = add nsw <2 x i64> %wide.load1018, %wide.load1016
  %i.nw = getelementptr [8 x i8], ptr %i.nb, i64 %index1014 ; 2 uses
  %i.nx = getelementptr i8, ptr %i.nw, i64 16
  %wide.load1019 = load <2 x i64>, ptr %i.nw, align 8
  %wide.load1020 = load <2 x i64>, ptr %i.nx, align 8
  %i.ny = sub <2 x i64> %i.nu, %wide.load1019
  %i.nz = sub <2 x i64> %i.nv, %wide.load1020
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %index1014 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  store <2 x i64> %i.ny, ptr %i.oa, align 8
  store <2 x i64> %i.nz, ptr %i.ob, align 8
  %index.next1021 = add nuw i64 %index1014, 4     ; 2 uses
  %i.oc = icmp eq i64 %index.next1021, %n.vec1012
  br i1 %i.oc, label %middle.block1022, label %vector.body1013, !llvm.loop !961

middle.block1022:                                 ; preds = %vector.body1013
  br i1 %cmp.n1023, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph1009.preheader

scalar.ph1009.preheader:                          ; preds = %vector.memcheck1004, %.lr.ph632, %middle.block1022
  %.0269631.ph = phi i64 [ 0, %vector.memcheck1004 ], [ 0, %.lr.ph632 ], [ %n.vec1012, %middle.block1022 ] ; 7 uses
  %.neg = or disjoint i64 %.0269631.ph, 1
  br i1 %lcmp.mod1069.not, label %scalar.ph1009.prol.loopexit, label %scalar.ph1009.prol

scalar.ph1009.prol:                               ; preds = %scalar.ph1009.preheader
  %i.od = getelementptr [8 x i8], ptr %i.my, i64 %.0269631.ph
  %i.oe = load i64, ptr %i.od, align 8
  %i.of = getelementptr [8 x i8], ptr %i.mz, i64 %.0269631.ph
  %i.og = load i64, ptr %i.of, align 8
  %i.oh = add nsw i64 %i.og, %i.oe
  %i.oi = getelementptr [8 x i8], ptr %i.nb, i64 %.0269631.ph
  %i.oj = load i64, ptr %i.oi, align 8
  %i.ok = sub i64 %i.oh, %i.oj
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %.0269631.ph
  store i64 %i.ok, ptr %i.ol, align 8
  %i.om = or disjoint i64 %.0269631.ph, 1
  br label %scalar.ph1009.prol.loopexit

scalar.ph1009.prol.loopexit:                      ; preds = %scalar.ph1009.prol, %scalar.ph1009.preheader
  %.0269631.unr = phi i64 [ %.0269631.ph, %scalar.ph1009.preheader ], [ %i.om, %scalar.ph1009.prol ]
  %i.on = icmp eq i64 %3, %.neg
  br i1 %i.on, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph1009

scalar.ph1009:                                    ; preds = %scalar.ph1009.prol.loopexit, %scalar.ph1009
  %.0269631 = phi i64 [ %i.ph, %scalar.ph1009 ], [ %.0269631.unr, %scalar.ph1009.prol.loopexit ] ; 6 uses
  %i.oo = getelementptr [8 x i8], ptr %i.my, i64 %.0269631
  %i.op = load i64, ptr %i.oo, align 8
  %i.oq = getelementptr [8 x i8], ptr %i.mz, i64 %.0269631
  %i.or = load i64, ptr %i.oq, align 8
  %i.os = add nsw i64 %i.or, %i.op
  %i.ot = getelementptr [8 x i8], ptr %i.nb, i64 %.0269631
  %i.ou = load i64, ptr %i.ot, align 8
  %i.ov = sub i64 %i.os, %i.ou
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %.0269631
  store i64 %i.ov, ptr %i.ow, align 8
  %i.ox = add nuw i64 %.0269631, 1                ; 4 uses
  %i.oy = getelementptr [8 x i8], ptr %i.my, i64 %i.ox
  %i.oz = load i64, ptr %i.oy, align 8
  %i.pa = getelementptr [8 x i8], ptr %i.mz, i64 %i.ox
  %i.pb = load i64, ptr %i.pa, align 8
  %i.pc = add nsw i64 %i.pb, %i.oz
  %i.pd = getelementptr [8 x i8], ptr %i.nb, i64 %i.ox
  %i.pe = load i64, ptr %i.pd, align 8
  %i.pf = sub i64 %i.pc, %i.pe
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.ox
  store i64 %i.pf, ptr %i.pg, align 8
  %i.ph = add nuw i64 %.0269631, 2                ; 2 uses
  %exitcond716.not.1 = icmp eq i64 %i.ph, %3
  br i1 %exitcond716.not.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph1009, !llvm.loop !962

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, %scalar.ph1009.prol.loopexit, %scalar.ph1009, %middle.block1022, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, %.thread34.i, %bb.bc
  %.2 = phi i64 [ %.9, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit ], [ %.9, %middle.block1022 ], [ %.1538633, %bb.bc ], [ %.1538633, %.thread34.i ], [ %.9, %scalar.ph1009.prol.loopexit ], [ %.9, %scalar.ph1009 ], [ %.1538633, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i ] ; 2 uses
  %i.pi = add nsw i64 %.0275634, 1                ; 2 uses
  %exitcond717.not = icmp eq i64 %i.pi, %i.kq
  br i1 %exitcond717.not, label %.thread543, label %bb.bc, !llvm.loop !963

.thread543:                                       ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit375, %bb.az, %bb.ay, %.lr.ph643, %.lr.ph643
  %.4 = phi i64 [ %.0537641, %bb.az ], [ %.0537641, %bb.ay ], [ %.0537641, %.lr.ph643 ], [ %.0537641, %.lr.ph643 ], [ %.0537641, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit375 ], [ %.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 11 uses
  %.idx = mul i64 %i.jr, 6
  %i.pj = getelementptr i8, ptr %i.k, i64 %.idx   ; 3 uses
  %i.pk = load i16, ptr %i.pj, align 2
  %i.pl = zext i16 %i.pk to i64                   ; 3 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.pl
  %i.pn = load i64, ptr %i.pm, align 8            ; 4 uses
  %i.po = icmp slt i64 %i.pn, %.0279666
  br i1 %i.po, label %bb.bh, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread

bb.bh:                                            ; preds = %.thread543
  %.not.i380 = icmp eq i64 %.4, 0
  br i1 %.not.i380, label %.thread34.thread.i387, label %.lr.ph.i381

.lr.ph.i381:                                      ; preds = %bb.bh, %bb.bk
  %.02543.i382 = phi i64 [ %i.qi, %bb.bk ], [ 0, %bb.bh ] ; 7 uses
  %i.pp = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.02543.i382 ; 5 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pr = load i64, ptr %i.pq, align 8            ; 2 uses
  %i.ps = icmp eq i64 %i.pn, %i.pr
  br i1 %i.ps, label %bb.bi, label %.split.i383

bb.bi:                                            ; preds = %.lr.ph.i381
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pu = load i64, ptr %i.pt, align 8            ; 2 uses
  %i.pv = icmp eq i64 %i.pu, -1
  br i1 %i.pv, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396:   ; preds = %bb.bi
  %i.pw = load i64, ptr %i.pp, align 8            ; 2 uses
  %i.px = icmp eq i64 %i.pw, -1
  br i1 %i.px, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread, label %.split31.i397

.split.i383:                                      ; preds = %.lr.ph.i381
  %i.py = icmp slt i64 %i.pn, %i.pr
  br i1 %i.py, label %bb.bj, label %bb.bk

.split31.i397:                                    ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396
  %i.pz = icmp sgt i64 %i.pw, -1
  br i1 %i.pz, label %bb.bj, label %bb.bk

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395:   ; preds = %bb.bi
  %i.qa = icmp sgt i64 %i.pu, -1
  br i1 %i.qa, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395, %.split31.i397, %.split.i383
  %i.qb = icmp eq i64 %.4, 1
  %spec.select554 = select i1 %i.qb, i64 2, i64 %.4 ; 4 uses
  %.044.i391 = add i64 %spec.select554, -1
  %i.qc = icmp ugt i64 %.044.i391, %.02543.i382
  br i1 %i.qc, label %.lr.ph47.preheader.i392, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398

.lr.ph47.preheader.i392:                          ; preds = %bb.bj
  %i.qd = mul i64 %.02543.i382, 280
  %i.qe = getelementptr i8, ptr %i.ie, i64 %i.qd  ; 2 uses
  %scevgep.i393 = getelementptr i8, ptr %i.qe, i64 280
  %i.qf = xor i64 %.02543.i382, -1
  %i.qg = add i64 %spec.select554, %i.qf
  %i.qh = mul nuw i64 %i.qg, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i393, ptr align 8 %i.qe, i64 %i.qh, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398

bb.bk:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395, %.split31.i397, %.split.i383
  %i.qi = add nuw i64 %.02543.i382, 1             ; 2 uses
  %exitcond.not.i384 = icmp eq i64 %i.qi, %.4
  br i1 %exitcond.not.i384, label %.thread34.i385, label %.lr.ph.i381, !llvm.loop !16

.thread34.i385:                                   ; preds = %bb.bk
  %i.qj = icmp eq i64 %.4, 1
  br i1 %i.qj, label %.thread34.thread.i387, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread

.thread34.thread.i387:                            ; preds = %.thread34.i385, %bb.bh
  %i.qk = add nuw nsw i64 %.4, 1
  %i.ql = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.4
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398: ; preds = %bb.bj, %.lr.ph47.preheader.i392, %.thread34.thread.i387
  %.12 = phi i64 [ %i.qk, %.thread34.thread.i387 ], [ %spec.select554, %.lr.ph47.preheader.i392 ], [ %spec.select554, %bb.bj ] ; 4 uses
  %.lcssa.sink.i389 = phi ptr [ %i.ql, %.thread34.thread.i387 ], [ %i.pp, %.lr.ph47.preheader.i392 ], [ %i.pp, %bb.bj ] ; 2 uses
  %.1.ph.i390 = phi i64 [ %.4, %.thread34.thread.i387 ], [ %.02543.i382, %.lr.ph47.preheader.i392 ], [ %.02543.i382, %bb.bj ] ; 3 uses
  %.sroa.7536.0..lcssa.sink.i389.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i389, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i389, i8 -1, i64 16, i1 false)
  store i64 %i.pn, ptr %.sroa.7536.0..lcssa.sink.i389.sroa_idx, align 8
  %.not327 = icmp eq i64 %.1.ph.i390, 4294967295
  %brmerge680 = or i1 %.not327, %.not683
  br i1 %brmerge680, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread, label %.lr.ph638

.lr.ph638:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398
  %i.qm = load ptr, ptr %i.if, align 8            ; 2 uses
  %i.qn = mul i64 %4, %i.pl
  %i.qo = getelementptr [8 x i8], ptr %i.qm, i64 %i.qn ; 6 uses
  %i.qp = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.1.ph.i390
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 24 ; 6 uses
  br i1 %min.iters.check993, label %scalar.ph992.preheader, label %vector.memcheck990

vector.memcheck990:                               ; preds = %.lr.ph638
  %i.qr = ptrtoaddr ptr %i.qm to i64
  %i.qs = mul i64 %.1.ph.i390, 280
  %i.qt = add i64 %i.ip, %i.qs
  %i.qu = mul i64 %i.iq, %i.pl
  %i.qv = add i64 %i.qu, %i.qr
  %i.qw = sub i64 %i.qv, %i.qt
  %diff.check991 = icmp ugt i64 %i.qw, -32
  br i1 %diff.check991, label %scalar.ph992.preheader, label %vector.body996

vector.body996:                                   ; preds = %vector.memcheck990, %vector.body996
  %index997 = phi i64 [ %index.next1000, %vector.body996 ], [ 0, %vector.memcheck990 ] ; 3 uses
  %i.qx = getelementptr [8 x i8], ptr %i.qo, i64 %index997 ; 2 uses
  %i.qy = getelementptr i8, ptr %i.qx, i64 16
  %wide.load998 = load <2 x i64>, ptr %i.qx, align 8
  %wide.load999 = load <2 x i64>, ptr %i.qy, align 8
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %index997 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  store <2 x i64> %wide.load998, ptr %i.qz, align 8
  store <2 x i64> %wide.load999, ptr %i.ra, align 8
  %index.next1000 = add nuw i64 %index997, 4      ; 2 uses
  %i.rb = icmp eq i64 %index.next1000, %n.vec995
  br i1 %i.rb, label %middle.block1001, label %vector.body996, !llvm.loop !964

middle.block1001:                                 ; preds = %vector.body996
  br i1 %cmp.n1002, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread, label %scalar.ph992.preheader

scalar.ph992.preheader:                           ; preds = %vector.memcheck990, %.lr.ph638, %middle.block1001
  %.0267637.ph = phi i64 [ 0, %vector.memcheck990 ], [ 0, %.lr.ph638 ], [ %n.vec995, %middle.block1001 ] ; 3 uses
  br i1 %lcmp.mod1071.not, label %scalar.ph992.prol.loopexit, label %scalar.ph992.prol

scalar.ph992.prol:                                ; preds = %scalar.ph992.preheader, %scalar.ph992.prol
  %.0267637.prol = phi i64 [ %i.rf, %scalar.ph992.prol ], [ %.0267637.ph, %scalar.ph992.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph992.prol ], [ 0, %scalar.ph992.preheader ]
  %i.rc = getelementptr [8 x i8], ptr %i.qo, i64 %.0267637.prol
  %i.rd = load i64, ptr %i.rc, align 8
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %.0267637.prol
  store i64 %i.rd, ptr %i.re, align 8
  %i.rf = add nuw i64 %.0267637.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1070
  br i1 %prol.iter.cmp.not, label %scalar.ph992.prol.loopexit, label %scalar.ph992.prol, !llvm.loop !965

scalar.ph992.prol.loopexit:                       ; preds = %scalar.ph992.prol, %scalar.ph992.preheader
  %.0267637.unr = phi i64 [ %.0267637.ph, %scalar.ph992.preheader ], [ %i.rf, %scalar.ph992.prol ]
  %i.rg = sub i64 %.0267637.ph, %3
  %i.rh = icmp ugt i64 %i.rg, -4
  br i1 %i.rh, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread, label %scalar.ph992

scalar.ph992:                                     ; preds = %scalar.ph992.prol.loopexit, %scalar.ph992
  %.0267637 = phi i64 [ %i.rx, %scalar.ph992 ], [ %.0267637.unr, %scalar.ph992.prol.loopexit ] ; 6 uses
  %i.ri = getelementptr [8 x i8], ptr %i.qo, i64 %.0267637
  %i.rj = load i64, ptr %i.ri, align 8
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %.0267637
  store i64 %i.rj, ptr %i.rk, align 8
  %i.rl = add nuw i64 %.0267637, 1                ; 2 uses
  %i.rm = getelementptr [8 x i8], ptr %i.qo, i64 %i.rl
  %i.rn = load i64, ptr %i.rm, align 8
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.rl
  store i64 %i.rn, ptr %i.ro, align 8
  %i.rp = add nuw i64 %.0267637, 2                ; 2 uses
  %i.rq = getelementptr [8 x i8], ptr %i.qo, i64 %i.rp
  %i.rr = load i64, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.rp
  store i64 %i.rr, ptr %i.rs, align 8
  %i.rt = add nuw i64 %.0267637, 3                ; 2 uses
  %i.ru = getelementptr [8 x i8], ptr %i.qo, i64 %i.rt
  %i.rv = load i64, ptr %i.ru, align 8
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.rt
  store i64 %i.rv, ptr %i.rw, align 8
  %i.rx = add nuw i64 %.0267637, 4                ; 2 uses
  %exitcond718.not.3 = icmp eq i64 %i.rx, %3
  br i1 %exitcond718.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread, label %scalar.ph992, !llvm.loop !966

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396, %scalar.ph992.prol.loopexit, %scalar.ph992, %middle.block1001, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398, %.thread34.i385, %.thread543
  %.6 = phi i64 [ %.12, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398 ], [ %.12, %middle.block1001 ], [ %.4, %.thread543 ], [ %.4, %.thread34.i385 ], [ %.12, %scalar.ph992.prol.loopexit ], [ %.12, %scalar.ph992 ], [ %.4, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396 ] ; 11 uses
  %i.ry = getelementptr i8, ptr %i.pj, i64 2
  %i.rz = load i16, ptr %i.ry, align 2
  %i.sa = zext i16 %i.rz to i64                   ; 3 uses
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.sa
  %i.sc = load i64, ptr %i.sb, align 8            ; 4 uses
  %i.sd = icmp slt i64 %i.sc, %.0279666
  br i1 %i.sd, label %bb.bl, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1

bb.bl:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread
  %.not.i380.1 = icmp eq i64 %.6, 0
  br i1 %.not.i380.1, label %.thread34.thread.i387.1, label %.lr.ph.i381.1

.lr.ph.i381.1:                                    ; preds = %bb.bl, %bb.bn
  %.02543.i382.1 = phi i64 [ %i.sq, %bb.bn ], [ 0, %bb.bl ] ; 7 uses
  %i.se = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.02543.i382.1 ; 5 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %i.sg = load i64, ptr %i.sf, align 8            ; 2 uses
  %i.sh = icmp eq i64 %i.sc, %i.sg
  br i1 %i.sh, label %bb.bm, label %.split.i383.1

.split.i383.1:                                    ; preds = %.lr.ph.i381.1
  %i.si = icmp slt i64 %i.sc, %i.sg
  br i1 %i.si, label %bb.bo, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i381.1
  %i.sj = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.sk = load i64, ptr %i.sj, align 8            ; 2 uses
  %i.sl = icmp eq i64 %i.sk, -1
  br i1 %i.sl, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.1, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.1

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.1: ; preds = %bb.bm
  %i.sm = icmp sgt i64 %i.sk, -1
  br i1 %i.sm, label %bb.bo, label %bb.bn

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.1: ; preds = %bb.bm
  %i.sn = load i64, ptr %i.se, align 8            ; 2 uses
  %i.so = icmp eq i64 %i.sn, -1
  br i1 %i.so, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1, label %.split31.i397.1

.split31.i397.1:                                  ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.1
  %i.sp = icmp sgt i64 %i.sn, -1
  br i1 %i.sp, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.split31.i397.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.1, %.split.i383.1
  %i.sq = add nuw i64 %.02543.i382.1, 1           ; 2 uses
  %exitcond.not.i384.1 = icmp eq i64 %i.sq, %.6
  br i1 %exitcond.not.i384.1, label %.thread34.i385.1, label %.lr.ph.i381.1, !llvm.loop !16

.thread34.i385.1:                                 ; preds = %bb.bn
  %i.sr = icmp eq i64 %.6, 1
  br i1 %i.sr, label %.thread34.thread.i387.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1

bb.bo:                                            ; preds = %.split31.i397.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.1, %.split.i383.1
  %i.ss = icmp eq i64 %.6, 1
  %spec.select554.1 = select i1 %i.ss, i64 2, i64 %.6 ; 4 uses
  %.044.i391.1 = add i64 %spec.select554.1, -1
  %i.st = icmp ugt i64 %.044.i391.1, %.02543.i382.1
  br i1 %i.st, label %.lr.ph47.preheader.i392.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.1

.lr.ph47.preheader.i392.1:                        ; preds = %bb.bo
  %i.su = mul i64 %.02543.i382.1, 280
  %i.sv = getelementptr i8, ptr %i.ie, i64 %i.su  ; 2 uses
  %scevgep.i393.1 = getelementptr i8, ptr %i.sv, i64 280
  %i.sw = xor i64 %.02543.i382.1, -1
  %i.sx = add i64 %spec.select554.1, %i.sw
  %i.sy = mul nuw i64 %i.sx, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i393.1, ptr align 8 %i.sv, i64 %i.sy, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.1

.thread34.thread.i387.1:                          ; preds = %.thread34.i385.1, %bb.bl
  %i.sz = add nuw nsw i64 %.6, 1
  %i.ta = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.6
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.1

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.1: ; preds = %.thread34.thread.i387.1, %.lr.ph47.preheader.i392.1, %bb.bo
  %.12.1 = phi i64 [ %i.sz, %.thread34.thread.i387.1 ], [ %spec.select554.1, %.lr.ph47.preheader.i392.1 ], [ %spec.select554.1, %bb.bo ] ; 4 uses
  %.lcssa.sink.i389.1 = phi ptr [ %i.ta, %.thread34.thread.i387.1 ], [ %i.se, %.lr.ph47.preheader.i392.1 ], [ %i.se, %bb.bo ] ; 2 uses
  %.1.ph.i390.1 = phi i64 [ %.6, %.thread34.thread.i387.1 ], [ %.02543.i382.1, %.lr.ph47.preheader.i392.1 ], [ %.02543.i382.1, %bb.bo ] ; 3 uses
  %.sroa.7536.0..lcssa.sink.i389.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i389.1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i389.1, i8 -1, i64 16, i1 false)
  store i64 %i.sc, ptr %.sroa.7536.0..lcssa.sink.i389.sroa_idx.1, align 8
  %.not327.1 = icmp eq i64 %.1.ph.i390.1, 4294967295
  %brmerge680.1 = or i1 %.not327.1, %.not683
  br i1 %brmerge680.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1, label %.lr.ph638.1

.lr.ph638.1:                                      ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.1
  %i.tb = load ptr, ptr %i.if, align 8            ; 2 uses
  %i.tc = mul i64 %4, %i.sa
  %i.td = getelementptr [8 x i8], ptr %i.tb, i64 %i.tc ; 6 uses
  %i.te = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.1.ph.i390.1
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 24 ; 6 uses
  br i1 %min.iters.check979, label %scalar.ph978.preheader, label %vector.memcheck976

vector.memcheck976:                               ; preds = %.lr.ph638.1
  %i.tg = ptrtoaddr ptr %i.tb to i64
  %i.th = mul i64 %.1.ph.i390.1, 280
  %i.ti = add i64 %i.in, %i.th
  %i.tj = mul i64 %i.io, %i.sa
  %i.tk = add i64 %i.tj, %i.tg
  %i.tl = sub i64 %i.tk, %i.ti
  %diff.check977 = icmp ugt i64 %i.tl, -32
  br i1 %diff.check977, label %scalar.ph978.preheader, label %vector.body982

vector.body982:                                   ; preds = %vector.memcheck976, %vector.body982
  %index983 = phi i64 [ %index.next986, %vector.body982 ], [ 0, %vector.memcheck976 ] ; 3 uses
  %i.tm = getelementptr [8 x i8], ptr %i.td, i64 %index983 ; 2 uses
  %i.tn = getelementptr i8, ptr %i.tm, i64 16
  %wide.load984 = load <2 x i64>, ptr %i.tm, align 8
  %wide.load985 = load <2 x i64>, ptr %i.tn, align 8
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %index983 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  store <2 x i64> %wide.load984, ptr %i.to, align 8
  store <2 x i64> %wide.load985, ptr %i.tp, align 8
  %index.next986 = add nuw i64 %index983, 4       ; 2 uses
  %i.tq = icmp eq i64 %index.next986, %n.vec981
  br i1 %i.tq, label %middle.block987, label %vector.body982, !llvm.loop !967

middle.block987:                                  ; preds = %vector.body982
  br i1 %cmp.n988, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1, label %scalar.ph978.preheader

scalar.ph978.preheader:                           ; preds = %vector.memcheck976, %.lr.ph638.1, %middle.block987
  %.0267637.1.ph = phi i64 [ 0, %vector.memcheck976 ], [ 0, %.lr.ph638.1 ], [ %n.vec981, %middle.block987 ] ; 3 uses
  br i1 %lcmp.mod1075.not, label %scalar.ph978.prol.loopexit, label %scalar.ph978.prol

scalar.ph978.prol:                                ; preds = %scalar.ph978.preheader, %scalar.ph978.prol
  %.0267637.1.prol = phi i64 [ %i.tu, %scalar.ph978.prol ], [ %.0267637.1.ph, %scalar.ph978.preheader ] ; 3 uses
  %prol.iter1076 = phi i64 [ %prol.iter1076.next, %scalar.ph978.prol ], [ 0, %scalar.ph978.preheader ]
  %i.tr = getelementptr [8 x i8], ptr %i.td, i64 %.0267637.1.prol
  %i.ts = load i64, ptr %i.tr, align 8
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %.0267637.1.prol
  store i64 %i.ts, ptr %i.tt, align 8
  %i.tu = add nuw i64 %.0267637.1.prol, 1         ; 2 uses
  %prol.iter1076.next = add i64 %prol.iter1076, 1 ; 2 uses
  %prol.iter1076.cmp.not = icmp eq i64 %prol.iter1076.next, %xtraiter1074
  br i1 %prol.iter1076.cmp.not, label %scalar.ph978.prol.loopexit, label %scalar.ph978.prol, !llvm.loop !968

scalar.ph978.prol.loopexit:                       ; preds = %scalar.ph978.prol, %scalar.ph978.preheader
  %.0267637.1.unr = phi i64 [ %.0267637.1.ph, %scalar.ph978.preheader ], [ %i.tu, %scalar.ph978.prol ]
  %i.tv = sub i64 %.0267637.1.ph, %3
  %i.tw = icmp ugt i64 %i.tv, -4
  br i1 %i.tw, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1, label %scalar.ph978

scalar.ph978:                                     ; preds = %scalar.ph978.prol.loopexit, %scalar.ph978
  %.0267637.1 = phi i64 [ %i.um, %scalar.ph978 ], [ %.0267637.1.unr, %scalar.ph978.prol.loopexit ] ; 6 uses
  %i.tx = getelementptr [8 x i8], ptr %i.td, i64 %.0267637.1
  %i.ty = load i64, ptr %i.tx, align 8
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %.0267637.1
  store i64 %i.ty, ptr %i.tz, align 8
  %i.ua = add nuw i64 %.0267637.1, 1              ; 2 uses
  %i.ub = getelementptr [8 x i8], ptr %i.td, i64 %i.ua
  %i.uc = load i64, ptr %i.ub, align 8
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %i.ua
  store i64 %i.uc, ptr %i.ud, align 8
  %i.ue = add nuw i64 %.0267637.1, 2              ; 2 uses
  %i.uf = getelementptr [8 x i8], ptr %i.td, i64 %i.ue
  %i.ug = load i64, ptr %i.uf, align 8
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %i.ue
  store i64 %i.ug, ptr %i.uh, align 8
  %i.ui = add nuw i64 %.0267637.1, 3              ; 2 uses
  %i.uj = getelementptr [8 x i8], ptr %i.td, i64 %i.ui
  %i.uk = load i64, ptr %i.uj, align 8
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %i.ui
  store i64 %i.uk, ptr %i.ul, align 8
  %i.um = add nuw i64 %.0267637.1, 4              ; 2 uses
  %exitcond718.1.not.3 = icmp eq i64 %i.um, %3
  br i1 %exitcond718.1.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1, label %scalar.ph978, !llvm.loop !969

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.1, %scalar.ph978.prol.loopexit, %scalar.ph978, %middle.block987, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.1, %.thread34.i385.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread
  %.6.1 = phi i64 [ %.12.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.1 ], [ %.12.1, %middle.block987 ], [ %.6, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread ], [ %.6, %.thread34.i385.1 ], [ %.12.1, %scalar.ph978.prol.loopexit ], [ %.12.1, %scalar.ph978 ], [ %.6, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.1 ] ; 11 uses
  %i.un = getelementptr i8, ptr %i.pj, i64 4
  %i.uo = load i16, ptr %i.un, align 2
  %i.up = zext i16 %i.uo to i64                   ; 3 uses
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.up
  %i.ur = load i64, ptr %i.uq, align 8            ; 4 uses
  %i.us = icmp slt i64 %i.ur, %.0279666
  br i1 %i.us, label %bb.bp, label %.loopexit591

bb.bp:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1
  %.not.i380.2 = icmp eq i64 %.6.1, 0
  br i1 %.not.i380.2, label %.thread34.thread.i387.2, label %.lr.ph.i381.2

.lr.ph.i381.2:                                    ; preds = %bb.bp, %bb.br
  %.02543.i382.2 = phi i64 [ %i.vf, %bb.br ], [ 0, %bb.bp ] ; 7 uses
  %i.ut = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.02543.i382.2 ; 5 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.uv = load i64, ptr %i.uu, align 8            ; 2 uses
  %i.uw = icmp eq i64 %i.ur, %i.uv
  br i1 %i.uw, label %bb.bq, label %.split.i383.2

.split.i383.2:                                    ; preds = %.lr.ph.i381.2
  %i.ux = icmp slt i64 %i.ur, %i.uv
  br i1 %i.ux, label %bb.bs, label %bb.br

bb.bq:                                            ; preds = %.lr.ph.i381.2
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uz = load i64, ptr %i.uy, align 8            ; 2 uses
  %i.va = icmp eq i64 %i.uz, -1
  br i1 %i.va, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.2, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.2

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.2: ; preds = %bb.bq
  %i.vb = icmp sgt i64 %i.uz, -1
  br i1 %i.vb, label %bb.bs, label %bb.br

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.2: ; preds = %bb.bq
  %i.vc = load i64, ptr %i.ut, align 8            ; 2 uses
  %i.vd = icmp eq i64 %i.vc, -1
  br i1 %i.vd, label %.loopexit591, label %.split31.i397.2

.split31.i397.2:                                  ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.2
  %i.ve = icmp sgt i64 %i.vc, -1
  br i1 %i.ve, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.split31.i397.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.2, %.split.i383.2
  %i.vf = add nuw i64 %.02543.i382.2, 1           ; 2 uses
  %exitcond.not.i384.2 = icmp eq i64 %i.vf, %.6.1
  br i1 %exitcond.not.i384.2, label %.thread34.i385.2, label %.lr.ph.i381.2, !llvm.loop !16

.thread34.i385.2:                                 ; preds = %bb.br
  %i.vg = icmp eq i64 %.6.1, 1
  br i1 %i.vg, label %.thread34.thread.i387.2, label %.loopexit591

bb.bs:                                            ; preds = %.split31.i397.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.2, %.split.i383.2
  %i.vh = icmp eq i64 %.6.1, 1
  %spec.select554.2 = select i1 %i.vh, i64 2, i64 %.6.1 ; 4 uses
  %.044.i391.2 = add i64 %spec.select554.2, -1
  %i.vi = icmp ugt i64 %.044.i391.2, %.02543.i382.2
  br i1 %i.vi, label %.lr.ph47.preheader.i392.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.2

.lr.ph47.preheader.i392.2:                        ; preds = %bb.bs
  %i.vj = mul i64 %.02543.i382.2, 280
  %i.vk = getelementptr i8, ptr %i.ie, i64 %i.vj  ; 2 uses
  %scevgep.i393.2 = getelementptr i8, ptr %i.vk, i64 280
  %i.vl = xor i64 %.02543.i382.2, -1
  %i.vm = add i64 %spec.select554.2, %i.vl
  %i.vn = mul nuw i64 %i.vm, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i393.2, ptr align 8 %i.vk, i64 %i.vn, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.2

.thread34.thread.i387.2:                          ; preds = %.thread34.i385.2, %bb.bp
  %i.vo = add nuw nsw i64 %.6.1, 1
  %i.vp = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.6.1
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.2

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.2: ; preds = %.thread34.thread.i387.2, %.lr.ph47.preheader.i392.2, %bb.bs
  %.12.2 = phi i64 [ %i.vo, %.thread34.thread.i387.2 ], [ %spec.select554.2, %.lr.ph47.preheader.i392.2 ], [ %spec.select554.2, %bb.bs ] ; 4 uses
  %.lcssa.sink.i389.2 = phi ptr [ %i.vp, %.thread34.thread.i387.2 ], [ %i.ut, %.lr.ph47.preheader.i392.2 ], [ %i.ut, %bb.bs ] ; 2 uses
  %.1.ph.i390.2 = phi i64 [ %.6.1, %.thread34.thread.i387.2 ], [ %.02543.i382.2, %.lr.ph47.preheader.i392.2 ], [ %.02543.i382.2, %bb.bs ] ; 3 uses
  %.sroa.7536.0..lcssa.sink.i389.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i389.2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i389.2, i8 -1, i64 16, i1 false)
  store i64 %i.ur, ptr %.sroa.7536.0..lcssa.sink.i389.sroa_idx.2, align 8
  %.not327.2 = icmp eq i64 %.1.ph.i390.2, 4294967295
  %brmerge680.2 = or i1 %.not327.2, %.not683
  br i1 %brmerge680.2, label %.loopexit591, label %.lr.ph638.2

.lr.ph638.2:                                      ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.2
  %i.vq = load ptr, ptr %i.if, align 8            ; 2 uses
  %i.vr = mul i64 %4, %i.up
  %i.vs = getelementptr [8 x i8], ptr %i.vq, i64 %i.vr ; 6 uses
  %i.vt = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.1.ph.i390.2
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 24 ; 6 uses
  br i1 %min.iters.check965, label %scalar.ph964.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph638.2
  %i.vv = ptrtoaddr ptr %i.vq to i64
  %i.vw = mul i64 %.1.ph.i390.2, 280
  %i.vx = add i64 %i.il, %i.vw
  %i.vy = mul i64 %i.im, %i.up
  %i.vz = add i64 %i.vy, %i.vv
  %i.wa = sub i64 %i.vz, %i.vx
  %diff.check = icmp ugt i64 %i.wa, -32
  br i1 %diff.check, label %scalar.ph964.preheader, label %vector.body968

vector.body968:                                   ; preds = %vector.memcheck, %vector.body968
  %index969 = phi i64 [ %index.next972, %vector.body968 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.wb = getelementptr [8 x i8], ptr %i.vs, i64 %index969 ; 2 uses
  %i.wc = getelementptr i8, ptr %i.wb, i64 16
  %wide.load970 = load <2 x i64>, ptr %i.wb, align 8
  %wide.load971 = load <2 x i64>, ptr %i.wc, align 8
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %index969 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  store <2 x i64> %wide.load970, ptr %i.wd, align 8
  store <2 x i64> %wide.load971, ptr %i.we, align 8
  %index.next972 = add nuw i64 %index969, 4       ; 2 uses
  %i.wf = icmp eq i64 %index.next972, %n.vec967
  br i1 %i.wf, label %middle.block973, label %vector.body968, !llvm.loop !970

middle.block973:                                  ; preds = %vector.body968
  br i1 %cmp.n974, label %.loopexit591, label %scalar.ph964.preheader

scalar.ph964.preheader:                           ; preds = %vector.memcheck, %.lr.ph638.2, %middle.block973
  %.0267637.2.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph638.2 ], [ %n.vec967, %middle.block973 ] ; 3 uses
  br i1 %lcmp.mod1078.not, label %scalar.ph964.prol.loopexit, label %scalar.ph964.prol

scalar.ph964.prol:                                ; preds = %scalar.ph964.preheader, %scalar.ph964.prol
  %.0267637.2.prol = phi i64 [ %i.wj, %scalar.ph964.prol ], [ %.0267637.2.ph, %scalar.ph964.preheader ] ; 3 uses
  %prol.iter1079 = phi i64 [ %prol.iter1079.next, %scalar.ph964.prol ], [ 0, %scalar.ph964.preheader ]
  %i.wg = getelementptr [8 x i8], ptr %i.vs, i64 %.0267637.2.prol
  %i.wh = load i64, ptr %i.wg, align 8
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %.0267637.2.prol
  store i64 %i.wh, ptr %i.wi, align 8
  %i.wj = add nuw i64 %.0267637.2.prol, 1         ; 2 uses
  %prol.iter1079.next = add i64 %prol.iter1079, 1 ; 2 uses
  %prol.iter1079.cmp.not = icmp eq i64 %prol.iter1079.next, %xtraiter1077
  br i1 %prol.iter1079.cmp.not, label %scalar.ph964.prol.loopexit, label %scalar.ph964.prol, !llvm.loop !971

scalar.ph964.prol.loopexit:                       ; preds = %scalar.ph964.prol, %scalar.ph964.preheader
  %.0267637.2.unr = phi i64 [ %.0267637.2.ph, %scalar.ph964.preheader ], [ %i.wj, %scalar.ph964.prol ]
  %i.wk = sub i64 %.0267637.2.ph, %3
  %i.wl = icmp ugt i64 %i.wk, -4
  br i1 %i.wl, label %.loopexit591, label %scalar.ph964

scalar.ph964:                                     ; preds = %scalar.ph964.prol.loopexit, %scalar.ph964
  %.0267637.2 = phi i64 [ %i.xb, %scalar.ph964 ], [ %.0267637.2.unr, %scalar.ph964.prol.loopexit ] ; 6 uses
  %i.wm = getelementptr [8 x i8], ptr %i.vs, i64 %.0267637.2
  %i.wn = load i64, ptr %i.wm, align 8
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %.0267637.2
  store i64 %i.wn, ptr %i.wo, align 8
  %i.wp = add nuw i64 %.0267637.2, 1              ; 2 uses
  %i.wq = getelementptr [8 x i8], ptr %i.vs, i64 %i.wp
  %i.wr = load i64, ptr %i.wq, align 8
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %i.wp
  store i64 %i.wr, ptr %i.ws, align 8
  %i.wt = add nuw i64 %.0267637.2, 2              ; 2 uses
  %i.wu = getelementptr [8 x i8], ptr %i.vs, i64 %i.wt
  %i.wv = load i64, ptr %i.wu, align 8
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %i.wt
  store i64 %i.wv, ptr %i.ww, align 8
  %i.wx = add nuw i64 %.0267637.2, 3              ; 2 uses
  %i.wy = getelementptr [8 x i8], ptr %i.vs, i64 %i.wx
  %i.wz = load i64, ptr %i.wy, align 8
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %i.wx
  store i64 %i.wz, ptr %i.xa, align 8
  %i.xb = add nuw i64 %.0267637.2, 4              ; 2 uses
  %exitcond718.2.not.3 = icmp eq i64 %i.xb, %3
  br i1 %exitcond718.2.not.3, label %.loopexit591, label %scalar.ph964, !llvm.loop !972

.loopexit591:                                     ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.2, %scalar.ph964.prol.loopexit, %scalar.ph964, %middle.block973, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1, %.thread34.i385.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.2, %.lr.ph643
  %.7 = phi i64 [ %.0537641, %.lr.ph643 ], [ %.12.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.2 ], [ %.12.2, %middle.block973 ], [ %.6.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1 ], [ %.6.1, %.thread34.i385.2 ], [ %.12.2, %scalar.ph964.prol.loopexit ], [ %.12.2, %scalar.ph964 ], [ %.6.1, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.2 ] ; 3 uses
  %i.xc = add nsw i64 %.0278642, 1                ; 2 uses
  %exitcond720.not = icmp eq i64 %i.xc, %i.jn
  br i1 %exitcond720.not, label %._crit_edge644, label %.lr.ph643, !llvm.loop !973

._crit_edge644:                                   ; preds = %.loopexit591
  %i.xd = icmp ugt i64 %.7, 1
  br i1 %i.xd, label %.preheader592, label %.thread549

.preheader592:                                    ; preds = %._crit_edge644
  %i.xe = uitofp i64 %.0282665 to double
  %i.xf = mul i64 %i.jc, %4                       ; 2 uses
  %i.xg = uitofp i64 %.0284664 to double          ; 2 uses
  br label %bb.bu

bb.bt:                                            ; preds = %._crit_edge655
  %i.xh = load i32, ptr %i.p, align 8
  %i.xi = icmp eq i32 %i.xh, 1
  br i1 %i.xi, label %bb.bz, label %bb.cg

bb.bu:                                            ; preds = %.preheader592, %._crit_edge655
  %.0261659 = phi i64 [ 0, %.preheader592 ], [ %i.xv, %._crit_edge655 ] ; 4 uses
  %.0263658 = phi double [ 1.797690e+308, %.preheader592 ], [ %.1264, %._crit_edge655 ] ; 2 uses
  %.0265657 = phi i64 [ 4294967295, %.preheader592 ], [ %.1266, %._crit_edge655 ]
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0261659
  %i.xk = load i64, ptr %i.xj, align 8
  %i.xl = uitofp i64 %i.xk to double
  %i.xm = fadd double %i.xl, 1.000000e+00
  %i.xn = fdiv double %i.xm, %i.xe
  %i.xo = call double @log(double noundef %i.xn) #30
  %i.xp = fdiv double %i.xo, f0xBFE62E42FEFA39EF  ; 2 uses
  br i1 %.not683, label %._crit_edge655, label %.lr.ph654

.lr.ph654:                                        ; preds = %bb.bu
  %i.xq = load ptr, ptr %i.if, align 8
  %i.xr = getelementptr [8 x i8], ptr %i.xq, i64 %i.xf
  %i.xs = getelementptr inbounds nuw [280 x i8], ptr %0, i64 %.0261659
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 624
  br label %bb.bv

._crit_edge655:                                   ; preds = %bb.by, %bb.bu
  %.0262.lcssa = phi double [ %i.xp, %bb.bu ], [ %.1, %bb.by ] ; 2 uses
  %i.xu = fcmp olt double %.0262.lcssa, %.0263658 ; 2 uses
  %.1266 = select i1 %i.xu, i64 %.0261659, i64 %.0265657 ; 5 uses
  %.1264 = select i1 %i.xu, double %.0262.lcssa, double %.0263658
  %i.xv = add nuw i64 %.0261659, 1                ; 2 uses
  %exitcond724.not = icmp eq i64 %i.xv, %.7
  br i1 %exitcond724.not, label %bb.bt, label %bb.bu, !llvm.loop !974

bb.bv:                                            ; preds = %.lr.ph654, %bb.by
  %.0260652 = phi i64 [ 0, %.lr.ph654 ], [ %i.yz, %bb.by ] ; 3 uses
  %.0262651 = phi double [ %i.xp, %.lr.ph654 ], [ %.1, %bb.by ] ; 2 uses
  %i.xw = getelementptr [8 x i8], ptr %i.xr, i64 %.0260652
  %i.xx = load i64, ptr %i.xw, align 8
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xt, i64 %.0260652
  %i.xz = load i64, ptr %i.xy, align 8
  %i.ya = sub nsw i64 %i.xx, %i.xz                ; 2 uses
  %i.yb = shl nsw i64 %i.ya, 1
  %.lobit.i399 = ashr i64 %i.ya, 63
  %i.yc = xor i64 %i.yb, %.lobit.i399             ; 3 uses
  %i.yd = icmp slt i64 %i.yc, 256
  br i1 %i.yd, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ye = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.yc
  %i.yf = load i64, ptr %i.ye, align 8
  %i.yg = uitofp i64 %i.yf to double
  %i.yh = fadd double %i.yg, 1.000000e+00
  %i.yi = fdiv double %i.yh, %i.xg
  %i.yj = call double @log(double noundef %i.yi) #30
  %i.yk = fdiv double %i.yj, f0x3FE62E42FEFA39EF
  %i.yl = fsub double %.0262651, %i.yk
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.ym = load i64, ptr %i.ih, align 8
  %i.yn = uitofp i64 %i.ym to double
  %i.yo = fadd double %i.yn, 1.000000e+00
  %i.yp = fdiv double %i.yo, %i.xg
  %i.yq = call double @log(double noundef %i.yp) #30
  %i.yr = add nsw i64 %i.yc, -256
  %i.ys = uitofp nneg i64 %i.yr to double
  %i.yt = call double @log(double noundef %i.ys) #30
  %i.yu = insertelement <2 x double> poison, double %i.yt, i64 0
  %i.yv = insertelement <2 x double> %i.yu, double %i.yq, i64 1
  %i.yw = fdiv <2 x double> %i.yv, splat (double f0x3FE62E42FEFA39EF) ; 2 uses
  %shift = shufflevector <2 x double> %i.yw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.yw, %shift
  %i.yx = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.yy = fadd double %.0262651, %i.yx
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
end_hunk_0
begin_hunk_1_@_ZN5o3dgc13SC3DMCEncoderItE14EncodeIntArrayEPKlmmmRKNS_14IndexedFaceSetItEENS_25O3DGCSC3DMCPredictionModeERNS_12BinaryStreamE:bb.a
bb.u:                                             ; preds = %._crit_edge483
  invoke void @_ZN5o3dgc16Arithmetic_Codec13start_encoderEv(ptr noundef nonnull align 8 dereferenceable(44) %8)
          to label %bb.v unwind label %.loopexit.split-lp392.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %8, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(20) %10)
          to label %.lr.ph.i unwind label %.loopexit.split-lp392.loopexit.split-lp

.lr.ph.i:                                         ; preds = %bb.v, %.noexc209
  %i.ba = phi i32 [ %i.bd, %.noexc209 ], [ 1, %bb.v ]
  %.016.i = phi i32 [ %i.bb, %.noexc209 ], [ 256, %bb.v ]
  %.01115.i = phi i32 [ %i.bc, %.noexc209 ], [ 0, %bb.v ] ; 2 uses
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %8, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(20) %10)
          to label %.noexc209 unwind label %.loopexit.split-lp392.loopexit

.noexc209:                                        ; preds = %.lr.ph.i
  %i.bb = sub nuw i32 %.016.i, %i.ba              ; 3 uses
  %i.bc = add nuw nsw i32 %.01115.i, 1            ; 2 uses
  %i.bd = shl nuw i32 2, %.01115.i                ; 2 uses
  %.not.i208 = icmp ult i32 %i.bb, %i.bd
  br i1 %.not.i208, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.noexc209
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %8, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(20) %10)
          to label %.lr.ph21.i unwind label %.loopexit.split-lp392.loopexit.split-lp

.lr.ph21.i:                                       ; preds = %._crit_edge.i, %.noexc211
  %.119.i = phi i32 [ %i.be, %.noexc211 ], [ %i.bc, %._crit_edge.i ]
  %i.be = add nsw i32 %.119.i, -1                 ; 3 uses
  %i.bf = lshr i32 %i.bb, %i.be
  %i.bg = and i32 %i.bf, 1
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %8, i32 noundef %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %.noexc211 unwind label %.loopexit391

.noexc211:                                        ; preds = %.lr.ph21.i
  %.not13.i = icmp eq i32 %i.be, 0
  br i1 %.not13.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit212, label %.lr.ph21.i, !llvm.loop !24

_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit212: ; preds = %.noexc211, %_ZN5o3dgc6VectorIlE8AllocateEm.exit
  %.0170 = phi i8 [ %i.ae, %_ZN5o3dgc6VectorIlE8AllocateEm.exit ], [ %i.an, %.noexc211 ]
  %i.bh = load i32, ptr %i.m, align 8
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit212
  invoke void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %7, i64 noundef 0)
          to label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit unwind label %bb.o

bb.x:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit212
  invoke void @_ZN5o3dgc12BinaryStream14WriteUInt32BinEm(ptr noundef nonnull align 8 dereferenceable(28) %7, i64 noundef 0)
          to label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit unwind label %bb.o

_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit: ; preds = %bb.w, %bb.x
  %i.bj = load i32, ptr %i.m, align 8
  invoke void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %7, i8 noundef zeroext %.0170, i32 noundef %i.bj)
          to label %.preheader390 unwind label %bb.o

.preheader390:                                    ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit
  %i.bk = icmp sgt i64 %2, 0
  br i1 %i.bk, label %.lr.ph438, label %._crit_edge439

.lr.ph438:                                        ; preds = %.preheader390
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bm = icmp ne i32 %6, 0                       ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 12 uses
  %.not449 = icmp eq i64 %3, 0                    ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 18 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3248 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 2 uses
  %i.bu = add i64 %i.b, 624
  %i.bv = shl i64 %4, 3
  %i.bw = add i64 %i.b, 624
  %i.bx = shl i64 %4, 3
  %i.by = add i64 %i.b, 624
  %i.bz = shl i64 %4, 3
  %min.iters.check682 = icmp ult i64 %3, 10
  %n.vec684 = and i64 %3, -4                      ; 3 uses
  %cmp.n691 = icmp eq i64 %3, %n.vec684
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check668 = icmp ult i64 %3, 10
  %n.vec670 = and i64 %3, -4                      ; 3 uses
  %cmp.n677 = icmp eq i64 %3, %n.vec670
  %xtraiter725 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod726.not = icmp eq i64 %xtraiter725, 0
  %min.iters.check = icmp ult i64 %3, 10
  %n.vec = and i64 %3, -4                         ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter728 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod729.not = icmp eq i64 %xtraiter728, 0
  br label %bb.y

._crit_edge439:                                   ; preds = %.loopexit387, %.preheader390
  %i.ca = load i32, ptr %i.m, align 8
  %.not = icmp eq i32 %i.ca, 1
  br i1 %.not, label %.thread353, label %bb.dl

.thread353:                                       ; preds = %._crit_edge439
  %i.cb = load i64, ptr %i.i, align 8
  %i.cc = sub i64 %i.cb, %i.j                     ; 2 uses
  %i.cd = trunc i64 %i.cc to i8
  br label %bb.dv

bb.y:                                             ; preds = %.lr.ph438, %.loopexit387
  %.0165437 = phi i64 [ 0, %.lr.ph438 ], [ %i.vf, %.loopexit387 ] ; 6 uses
  %.0166436 = phi i64 [ 2, %.lr.ph438 ], [ %.1167, %.loopexit387 ] ; 6 uses
  %.0168435 = phi i64 [ 257, %.lr.ph438 ], [ %.1169, %.loopexit387 ] ; 6 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0165437 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8            ; 5 uses
  %i.cg = load ptr, ptr %i.bl, align 8
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.cf ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8            ; 3 uses
  %i.cj = icmp sgt i64 %i.cf, 0
  br i1 %i.cj, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit: ; preds = %bb.y
  %i.ck = getelementptr i8, ptr %i.ch, i64 -8
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.cm = icmp sgt i64 %i.ci, %i.cl
  %or.cond = and i1 %i.bm, %i.cm
  br i1 %or.cond, label %bb.z, label %.thread351

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread: ; preds = %bb.y
  %i.cn = icmp sgt i64 %i.ci, 0
  %or.cond347 = and i1 %i.bm, %i.cn
  br i1 %or.cond347, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, label %.thread351

bb.z:                                             ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit
  %i.co = shl i64 %i.cl, 32
  %i.cp = ashr exact i64 %i.co, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread, %bb.z
  %sext = phi i64 [ %i.cp, %bb.z ], [ 0, %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread ] ; 2 uses
  %sext195 = shl i64 %i.ci, 32
  %i.cq = ashr exact i64 %sext195, 32             ; 2 uses
  %i.cr = icmp slt i64 %sext, %i.cq
  br i1 %i.cr, label %.lr.ph416, label %.thread351

.lr.ph416:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2
  %.0164415 = phi i64 [ %i.ki, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2 ], [ %sext, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 2 uses
  %.0345414 = phi i64 [ %.2.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2 ], [ 0, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 11 uses
  %i.cs = load ptr, ptr %i.bn, align 8
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %.0164415
  %i.cu = load i64, ptr %i.ct, align 8
  %.idx = mul i64 %i.cu, 6
  %i.cv = getelementptr i8, ptr %i.h, i64 %.idx   ; 3 uses
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = zext i16 %i.cw to i64                   ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8            ; 4 uses
  %i.da = icmp slt i64 %i.cz, %.0165437
  br i1 %i.da, label %bb.aa, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

bb.aa:                                            ; preds = %.lr.ph416
  %.not.i215 = icmp eq i64 %.0345414, 0
  br i1 %.not.i215, label %.thread34.thread.i, label %.lr.ph.i216

.lr.ph.i216:                                      ; preds = %bb.aa, %bb.ad
  %.02543.i = phi i64 [ %i.du, %bb.ad ], [ 0, %bb.aa ] ; 7 uses
  %i.db = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.02543.i ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.de = icmp eq i64 %i.cz, %i.dd
  br i1 %i.de, label %bb.ab, label %.split.i

bb.ab:                                            ; preds = %.lr.ph.i216
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dg = load i64, ptr %i.df, align 8            ; 2 uses
  %i.dh = icmp eq i64 %i.dg, -1
  br i1 %i.dh, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.ab
  %i.di = load i64, ptr %i.db, align 8            ; 2 uses
  %i.dj = icmp eq i64 %i.di, -1
  br i1 %i.dj, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.split31.i

.split.i:                                         ; preds = %.lr.ph.i216
  %i.dk = icmp slt i64 %i.cz, %i.dd
  br i1 %i.dk, label %bb.ac, label %bb.ad

.split31.i:                                       ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i
  %i.dl = icmp sgt i64 %i.di, -1
  br i1 %i.dl, label %bb.ac, label %bb.ad

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.ab
  %i.dm = icmp sgt i64 %i.dg, -1
  br i1 %i.dm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.dn = icmp eq i64 %.0345414, 1
  %spec.select = select i1 %i.dn, i64 2, i64 %.0345414 ; 4 uses
  %.044.i = add i64 %spec.select, -1
  %i.do = icmp ugt i64 %.044.i, %.02543.i
  br i1 %i.do, label %.lr.ph47.preheader.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

.lr.ph47.preheader.i:                             ; preds = %bb.ac
  %i.dp = mul i64 %.02543.i, 280
  %i.dq = getelementptr i8, ptr %i.bo, i64 %i.dp  ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.dq, i64 280
  %i.dr = xor i64 %.02543.i, -1
  %i.ds = add i64 %spec.select, %i.dr
  %i.dt = mul nuw i64 %i.ds, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %i.dq, i64 %i.dt, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

bb.ad:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.du = add nuw i64 %.02543.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.du, %.0345414
  br i1 %exitcond.not.i, label %.thread34.i, label %.lr.ph.i216, !llvm.loop !16

.thread34.i:                                      ; preds = %bb.ad
  %i.dv = icmp eq i64 %.0345414, 1
  br i1 %i.dv, label %.thread34.thread.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

.thread34.thread.i:                               ; preds = %.thread34.i, %bb.aa
  %i.dw = add nuw nsw i64 %.0345414, 1
  %i.dx = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.0345414
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit: ; preds = %bb.ac, %.lr.ph47.preheader.i, %.thread34.thread.i
  %.4 = phi i64 [ %i.dw, %.thread34.thread.i ], [ %spec.select, %.lr.ph47.preheader.i ], [ %spec.select, %bb.ac ] ; 4 uses
  %.lcssa.sink.i = phi ptr [ %i.dx, %.thread34.thread.i ], [ %i.db, %.lr.ph47.preheader.i ], [ %i.db, %bb.ac ] ; 2 uses
  %.1.ph.i = phi i64 [ %.0345414, %.thread34.thread.i ], [ %.02543.i, %.lr.ph47.preheader.i ], [ %.02543.i, %bb.ac ] ; 3 uses
  %.sroa.7.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i, i8 -1, i64 16, i1 false)
  store i64 %i.cz, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx, align 8
  %.not206 = icmp eq i64 %.1.ph.i, 4294967295
  %brmerge = or i1 %.not206, %.not449
  br i1 %brmerge, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit
  %i.dy = mul i64 %4, %i.cx
  %i.dz = getelementptr [8 x i8], ptr %1, i64 %i.dy ; 6 uses
  %i.ea = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.1.ph.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 6 uses
  br i1 %min.iters.check682, label %scalar.ph681.preheader, label %vector.memcheck679

vector.memcheck679:                               ; preds = %.lr.ph
  %i.ec = mul i64 %.1.ph.i, 280
  %i.ed = mul i64 %i.bz, %i.cx
  %i.ee = add i64 %i.by, %i.ec
  %i.ef = add i64 %i.ed, %i.a
  %i.eg = sub i64 %i.ef, %i.ee
  %diff.check680 = icmp ugt i64 %i.eg, -32
  br i1 %diff.check680, label %scalar.ph681.preheader, label %vector.body685

vector.body685:                                   ; preds = %vector.memcheck679, %vector.body685
  %index686 = phi i64 [ %index.next689, %vector.body685 ], [ 0, %vector.memcheck679 ] ; 3 uses
  %i.eh = getelementptr [8 x i8], ptr %i.dz, i64 %index686 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  %wide.load687 = load <2 x i64>, ptr %i.eh, align 8
  %wide.load688 = load <2 x i64>, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index686 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <2 x i64> %wide.load687, ptr %i.ej, align 8
  store <2 x i64> %wide.load688, ptr %i.ek, align 8
  %index.next689 = add nuw i64 %index686, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next689, %n.vec684
  br i1 %i.el, label %middle.block690, label %vector.body685, !llvm.loop !984

middle.block690:                                  ; preds = %vector.body685
  br i1 %cmp.n691, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph681.preheader

scalar.ph681.preheader:                           ; preds = %vector.memcheck679, %.lr.ph, %middle.block690
  %.0162411.ph = phi i64 [ 0, %vector.memcheck679 ], [ 0, %.lr.ph ], [ %n.vec684, %middle.block690 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph681.prol.loopexit, label %scalar.ph681.prol

scalar.ph681.prol:                                ; preds = %scalar.ph681.preheader, %scalar.ph681.prol
  %.0162411.prol = phi i64 [ %i.ep, %scalar.ph681.prol ], [ %.0162411.ph, %scalar.ph681.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph681.prol ], [ 0, %scalar.ph681.preheader ]
  %i.em = getelementptr [8 x i8], ptr %i.dz, i64 %.0162411.prol
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.0162411.prol
  store i64 %i.en, ptr %i.eo, align 8
  %i.ep = add nuw i64 %.0162411.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph681.prol.loopexit, label %scalar.ph681.prol, !llvm.loop !985

scalar.ph681.prol.loopexit:                       ; preds = %scalar.ph681.prol, %scalar.ph681.preheader
  %.0162411.unr = phi i64 [ %.0162411.ph, %scalar.ph681.preheader ], [ %i.ep, %scalar.ph681.prol ]
  %i.eq = sub i64 %.0162411.ph, %3
  %i.er = icmp ugt i64 %i.eq, -4
  br i1 %i.er, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph681

scalar.ph681:                                     ; preds = %scalar.ph681.prol.loopexit, %scalar.ph681
  %.0162411 = phi i64 [ %i.fh, %scalar.ph681 ], [ %.0162411.unr, %scalar.ph681.prol.loopexit ] ; 6 uses
  %i.es = getelementptr [8 x i8], ptr %i.dz, i64 %.0162411
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.0162411
  store i64 %i.et, ptr %i.eu, align 8
  %i.ev = add nuw i64 %.0162411, 1                ; 2 uses
  %i.ew = getelementptr [8 x i8], ptr %i.dz, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ev
  store i64 %i.ex, ptr %i.ey, align 8
  %i.ez = add nuw i64 %.0162411, 2                ; 2 uses
  %i.fa = getelementptr [8 x i8], ptr %i.dz, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ez
  store i64 %i.fb, ptr %i.fc, align 8
  %i.fd = add nuw i64 %.0162411, 3                ; 2 uses
  %i.fe = getelementptr [8 x i8], ptr %i.dz, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.fd
  store i64 %i.ff, ptr %i.fg, align 8
  %i.fh = add nuw i64 %.0162411, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fh, %3
  br i1 %exitcond.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph681, !llvm.loop !986

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, %scalar.ph681.prol.loopexit, %scalar.ph681, %middle.block690, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, %.thread34.i, %.lr.ph416
  %.2 = phi i64 [ %.4, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit ], [ %.4, %middle.block690 ], [ %.0345414, %.lr.ph416 ], [ %.0345414, %.thread34.i ], [ %.4, %scalar.ph681.prol.loopexit ], [ %.4, %scalar.ph681 ], [ %.0345414, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i ] ; 11 uses
  %i.fi = getelementptr i8, ptr %i.cv, i64 2
  %i.fj = load i16, ptr %i.fi, align 2
  %i.fk = zext i16 %i.fj to i64                   ; 3 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8            ; 4 uses
  %i.fn = icmp slt i64 %i.fm, %.0165437
  br i1 %i.fn, label %bb.ae, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1

bb.ae:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.not.i215.1 = icmp eq i64 %.2, 0
  br i1 %.not.i215.1, label %.thread34.thread.i.1, label %.lr.ph.i216.1

.lr.ph.i216.1:                                    ; preds = %bb.ae, %bb.ag
  %.02543.i.1 = phi i64 [ %i.ga, %bb.ag ], [ 0, %bb.ae ] ; 7 uses
  %i.fo = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.02543.i.1 ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load i64, ptr %i.fp, align 8            ; 2 uses
  %i.fr = icmp eq i64 %i.fm, %i.fq
  br i1 %i.fr, label %bb.af, label %.split.i.1

.split.i.1:                                       ; preds = %.lr.ph.i216.1
  %i.fs = icmp slt i64 %i.fm, %i.fq
  br i1 %i.fs, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i216.1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fu = load i64, ptr %i.ft, align 8            ; 2 uses
  %i.fv = icmp eq i64 %i.fu, -1
  br i1 %i.fv, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1:    ; preds = %bb.af
  %i.fw = icmp sgt i64 %i.fu, -1
  br i1 %i.fw, label %bb.ah, label %bb.ag

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1:    ; preds = %bb.af
  %i.fx = load i64, ptr %i.fo, align 8            ; 2 uses
  %i.fy = icmp eq i64 %i.fx, -1
  br i1 %i.fy, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %.split31.i.1

.split31.i.1:                                     ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1
  %i.fz = icmp sgt i64 %i.fx, -1
  br i1 %i.fz, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.split31.i.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1, %.split.i.1
  %i.ga = add nuw i64 %.02543.i.1, 1              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ga, %.2
  br i1 %exitcond.not.i.1, label %.thread34.i.1, label %.lr.ph.i216.1, !llvm.loop !16

.thread34.i.1:                                    ; preds = %bb.ag
  %i.gb = icmp eq i64 %.2, 1
  br i1 %i.gb, label %.thread34.thread.i.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1

bb.ah:                                            ; preds = %.split31.i.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1, %.split.i.1
  %i.gc = icmp eq i64 %.2, 1
  %spec.select.1 = select i1 %i.gc, i64 2, i64 %.2 ; 4 uses
  %.044.i.1 = add i64 %spec.select.1, -1
  %i.gd = icmp ugt i64 %.044.i.1, %.02543.i.1
  br i1 %i.gd, label %.lr.ph47.preheader.i.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1

.lr.ph47.preheader.i.1:                           ; preds = %bb.ah
  %i.ge = mul i64 %.02543.i.1, 280
  %i.gf = getelementptr i8, ptr %i.bo, i64 %i.ge  ; 2 uses
  %scevgep.i.1 = getelementptr i8, ptr %i.gf, i64 280
  %i.gg = xor i64 %.02543.i.1, -1
  %i.gh = add i64 %spec.select.1, %i.gg
  %i.gi = mul nuw i64 %i.gh, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i.1, ptr align 8 %i.gf, i64 %i.gi, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1

.thread34.thread.i.1:                             ; preds = %.thread34.i.1, %bb.ae
  %i.gj = add nuw nsw i64 %.2, 1
  %i.gk = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.2
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1: ; preds = %.thread34.thread.i.1, %.lr.ph47.preheader.i.1, %bb.ah
  %.4.1 = phi i64 [ %i.gj, %.thread34.thread.i.1 ], [ %spec.select.1, %.lr.ph47.preheader.i.1 ], [ %spec.select.1, %bb.ah ] ; 4 uses
  %.lcssa.sink.i.1 = phi ptr [ %i.gk, %.thread34.thread.i.1 ], [ %i.fo, %.lr.ph47.preheader.i.1 ], [ %i.fo, %bb.ah ] ; 2 uses
  %.1.ph.i.1 = phi i64 [ %.2, %.thread34.thread.i.1 ], [ %.02543.i.1, %.lr.ph47.preheader.i.1 ], [ %.02543.i.1, %bb.ah ] ; 3 uses
  %.sroa.7.0..lcssa.sink.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i.1, i8 -1, i64 16, i1 false)
  store i64 %i.fm, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx.1, align 8
  %.not206.1 = icmp eq i64 %.1.ph.i.1, 4294967295
  %brmerge.1 = or i1 %.not206.1, %.not449
  br i1 %brmerge.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1
  %i.gl = mul i64 %4, %i.fk
  %i.gm = getelementptr [8 x i8], ptr %1, i64 %i.gl ; 6 uses
  %i.gn = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.1.ph.i.1
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24 ; 6 uses
  br i1 %min.iters.check668, label %scalar.ph667.preheader, label %vector.memcheck665

vector.memcheck665:                               ; preds = %.lr.ph.1
  %i.gp = mul i64 %.1.ph.i.1, 280
  %i.gq = mul i64 %i.bx, %i.fk
  %i.gr = add i64 %i.bw, %i.gp
  %i.gs = add i64 %i.gq, %i.a
  %i.gt = sub i64 %i.gs, %i.gr
  %diff.check666 = icmp ugt i64 %i.gt, -32
  br i1 %diff.check666, label %scalar.ph667.preheader, label %vector.body671

vector.body671:                                   ; preds = %vector.memcheck665, %vector.body671
  %index672 = phi i64 [ %index.next675, %vector.body671 ], [ 0, %vector.memcheck665 ] ; 3 uses
  %i.gu = getelementptr [8 x i8], ptr %i.gm, i64 %index672 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 16
  %wide.load673 = load <2 x i64>, ptr %i.gu, align 8
  %wide.load674 = load <2 x i64>, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %index672 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <2 x i64> %wide.load673, ptr %i.gw, align 8
  store <2 x i64> %wide.load674, ptr %i.gx, align 8
  %index.next675 = add nuw i64 %index672, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next675, %n.vec670
  br i1 %i.gy, label %middle.block676, label %vector.body671, !llvm.loop !987

middle.block676:                                  ; preds = %vector.body671
  br i1 %cmp.n677, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %scalar.ph667.preheader

scalar.ph667.preheader:                           ; preds = %vector.memcheck665, %.lr.ph.1, %middle.block676
  %.0162411.1.ph = phi i64 [ 0, %vector.memcheck665 ], [ 0, %.lr.ph.1 ], [ %n.vec670, %middle.block676 ] ; 3 uses
  br i1 %lcmp.mod726.not, label %scalar.ph667.prol.loopexit, label %scalar.ph667.prol

scalar.ph667.prol:                                ; preds = %scalar.ph667.preheader, %scalar.ph667.prol
  %.0162411.1.prol = phi i64 [ %i.hc, %scalar.ph667.prol ], [ %.0162411.1.ph, %scalar.ph667.preheader ] ; 3 uses
  %prol.iter727 = phi i64 [ %prol.iter727.next, %scalar.ph667.prol ], [ 0, %scalar.ph667.preheader ]
  %i.gz = getelementptr [8 x i8], ptr %i.gm, i64 %.0162411.1.prol
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.0162411.1.prol
  store i64 %i.ha, ptr %i.hb, align 8
  %i.hc = add nuw i64 %.0162411.1.prol, 1         ; 2 uses
  %prol.iter727.next = add i64 %prol.iter727, 1   ; 2 uses
  %prol.iter727.cmp.not = icmp eq i64 %prol.iter727.next, %xtraiter725
  br i1 %prol.iter727.cmp.not, label %scalar.ph667.prol.loopexit, label %scalar.ph667.prol, !llvm.loop !988

scalar.ph667.prol.loopexit:                       ; preds = %scalar.ph667.prol, %scalar.ph667.preheader
  %.0162411.1.unr = phi i64 [ %.0162411.1.ph, %scalar.ph667.preheader ], [ %i.hc, %scalar.ph667.prol ]
  %i.hd = sub i64 %.0162411.1.ph, %3
  %i.he = icmp ugt i64 %i.hd, -4
  br i1 %i.he, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %scalar.ph667

scalar.ph667:                                     ; preds = %scalar.ph667.prol.loopexit, %scalar.ph667
  %.0162411.1 = phi i64 [ %i.hu, %scalar.ph667 ], [ %.0162411.1.unr, %scalar.ph667.prol.loopexit ] ; 6 uses
  %i.hf = getelementptr [8 x i8], ptr %i.gm, i64 %.0162411.1
  %i.hg = load i64, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.0162411.1
  store i64 %i.hg, ptr %i.hh, align 8
  %i.hi = add nuw i64 %.0162411.1, 1              ; 2 uses
  %i.hj = getelementptr [8 x i8], ptr %i.gm, i64 %i.hi
  %i.hk = load i64, ptr %i.hj, align 8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.hi
  store i64 %i.hk, ptr %i.hl, align 8
  %i.hm = add nuw i64 %.0162411.1, 2              ; 2 uses
  %i.hn = getelementptr [8 x i8], ptr %i.gm, i64 %i.hm
  %i.ho = load i64, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.hm
  store i64 %i.ho, ptr %i.hp, align 8
  %i.hq = add nuw i64 %.0162411.1, 3              ; 2 uses
  %i.hr = getelementptr [8 x i8], ptr %i.gm, i64 %i.hq
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.hq
  store i64 %i.hs, ptr %i.ht, align 8
  %i.hu = add nuw i64 %.0162411.1, 4              ; 2 uses
  %exitcond.1.not.3 = icmp eq i64 %i.hu, %3
  br i1 %exitcond.1.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %scalar.ph667, !llvm.loop !989

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1, %scalar.ph667.prol.loopexit, %scalar.ph667, %middle.block676, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1, %.thread34.i.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.2.1 = phi i64 [ %.4.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1 ], [ %.4.1, %middle.block676 ], [ %.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ], [ %.2, %.thread34.i.1 ], [ %.4.1, %scalar.ph667.prol.loopexit ], [ %.4.1, %scalar.ph667 ], [ %.2, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1 ] ; 11 uses
  %i.hv = getelementptr i8, ptr %i.cv, i64 4
  %i.hw = load i16, ptr %i.hv, align 2
  %i.hx = zext i16 %i.hw to i64                   ; 3 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.hx
  %i.hz = load i64, ptr %i.hy, align 8            ; 4 uses
  %i.ia = icmp slt i64 %i.hz, %.0165437
  br i1 %i.ia, label %bb.ai, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2

bb.ai:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1
  %.not.i215.2 = icmp eq i64 %.2.1, 0
  br i1 %.not.i215.2, label %.thread34.thread.i.2, label %.lr.ph.i216.2

.lr.ph.i216.2:                                    ; preds = %bb.ai, %bb.ak
  %.02543.i.2 = phi i64 [ %i.in, %bb.ak ], [ 0, %bb.ai ] ; 7 uses
  %i.ib = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.02543.i.2 ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load i64, ptr %i.ic, align 8            ; 2 uses
  %i.ie = icmp eq i64 %i.hz, %i.id
  br i1 %i.ie, label %bb.aj, label %.split.i.2

.split.i.2:                                       ; preds = %.lr.ph.i216.2
  %i.if = icmp slt i64 %i.hz, %i.id
  br i1 %i.if, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i216.2
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.ih = load i64, ptr %i.ig, align 8            ; 2 uses
  %i.ii = icmp eq i64 %i.ih, -1
  br i1 %i.ii, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2:    ; preds = %bb.aj
  %i.ij = icmp sgt i64 %i.ih, -1
  br i1 %i.ij, label %bb.al, label %bb.ak

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2:    ; preds = %bb.aj
  %i.ik = load i64, ptr %i.ib, align 8            ; 2 uses
  %i.il = icmp eq i64 %i.ik, -1
  br i1 %i.il, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %.split31.i.2

.split31.i.2:                                     ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2
  %i.im = icmp sgt i64 %i.ik, -1
  br i1 %i.im, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.split31.i.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2, %.split.i.2
  %i.in = add nuw i64 %.02543.i.2, 1              ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %i.in, %.2.1
  br i1 %exitcond.not.i.2, label %.thread34.i.2, label %.lr.ph.i216.2, !llvm.loop !16

.thread34.i.2:                                    ; preds = %bb.ak
  %i.io = icmp eq i64 %.2.1, 1
  br i1 %i.io, label %.thread34.thread.i.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2

bb.al:                                            ; preds = %.split31.i.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2, %.split.i.2
  %i.ip = icmp eq i64 %.2.1, 1
  %spec.select.2 = select i1 %i.ip, i64 2, i64 %.2.1 ; 4 uses
  %.044.i.2 = add i64 %spec.select.2, -1
  %i.iq = icmp ugt i64 %.044.i.2, %.02543.i.2
  br i1 %i.iq, label %.lr.ph47.preheader.i.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2

.lr.ph47.preheader.i.2:                           ; preds = %bb.al
  %i.ir = mul i64 %.02543.i.2, 280
  %i.is = getelementptr i8, ptr %i.bo, i64 %i.ir  ; 2 uses
  %scevgep.i.2 = getelementptr i8, ptr %i.is, i64 280
  %i.it = xor i64 %.02543.i.2, -1
  %i.iu = add i64 %spec.select.2, %i.it
  %i.iv = mul nuw i64 %i.iu, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i.2, ptr align 8 %i.is, i64 %i.iv, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2

.thread34.thread.i.2:                             ; preds = %.thread34.i.2, %bb.ai
  %i.iw = add nuw nsw i64 %.2.1, 1
  %i.ix = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.2.1
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2: ; preds = %.thread34.thread.i.2, %.lr.ph47.preheader.i.2, %bb.al
  %.4.2 = phi i64 [ %i.iw, %.thread34.thread.i.2 ], [ %spec.select.2, %.lr.ph47.preheader.i.2 ], [ %spec.select.2, %bb.al ] ; 4 uses
  %.lcssa.sink.i.2 = phi ptr [ %i.ix, %.thread34.thread.i.2 ], [ %i.ib, %.lr.ph47.preheader.i.2 ], [ %i.ib, %bb.al ] ; 2 uses
  %.1.ph.i.2 = phi i64 [ %.2.1, %.thread34.thread.i.2 ], [ %.02543.i.2, %.lr.ph47.preheader.i.2 ], [ %.02543.i.2, %bb.al ] ; 3 uses
  %.sroa.7.0..lcssa.sink.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i.2, i8 -1, i64 16, i1 false)
  store i64 %i.hz, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx.2, align 8
  %.not206.2 = icmp eq i64 %.1.ph.i.2, 4294967295
  %brmerge.2 = or i1 %.not206.2, %.not449
  br i1 %brmerge.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2
  %i.iy = mul i64 %4, %i.hx
  %i.iz = getelementptr [8 x i8], ptr %1, i64 %i.iy ; 6 uses
  %i.ja = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.1.ph.i.2
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.2
  %i.jc = mul i64 %.1.ph.i.2, 280
  %i.jd = mul i64 %i.bv, %i.hx
  %i.je = add i64 %i.bu, %i.jc
  %i.jf = add i64 %i.jd, %i.a
  %i.jg = sub i64 %i.jf, %i.je
  %diff.check = icmp ugt i64 %i.jg, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.jh = getelementptr [8 x i8], ptr %i.iz, i64 %index ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 16
  %wide.load = load <2 x i64>, ptr %i.jh, align 8
  %wide.load664 = load <2 x i64>, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %index ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store <2 x i64> %wide.load, ptr %i.jj, align 8
  store <2 x i64> %wide.load664, ptr %i.jk, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %middle.block, label %vector.body, !llvm.loop !990

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.2, %middle.block
  %.0162411.2.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.2 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod729.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0162411.2.prol = phi i64 [ %i.jp, %scalar.ph.prol ], [ %.0162411.2.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter730 = phi i64 [ %prol.iter730.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.jm = getelementptr [8 x i8], ptr %i.iz, i64 %.0162411.2.prol
  %i.jn = load i64, ptr %i.jm, align 8
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.0162411.2.prol
  store i64 %i.jn, ptr %i.jo, align 8
  %i.jp = add nuw i64 %.0162411.2.prol, 1         ; 2 uses
  %prol.iter730.next = add i64 %prol.iter730, 1   ; 2 uses
  %prol.iter730.cmp.not = icmp eq i64 %prol.iter730.next, %xtraiter728
  br i1 %prol.iter730.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !991

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0162411.2.unr = phi i64 [ %.0162411.2.ph, %scalar.ph.preheader ], [ %i.jp, %scalar.ph.prol ]
  %i.jq = sub i64 %.0162411.2.ph, %3
  %i.jr = icmp ugt i64 %i.jq, -4
  br i1 %i.jr, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0162411.2 = phi i64 [ %i.kh, %scalar.ph ], [ %.0162411.2.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.js = getelementptr [8 x i8], ptr %i.iz, i64 %.0162411.2
  %i.jt = load i64, ptr %i.js, align 8
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.0162411.2
  store i64 %i.jt, ptr %i.ju, align 8
  %i.jv = add nuw i64 %.0162411.2, 1              ; 2 uses
  %i.jw = getelementptr [8 x i8], ptr %i.iz, i64 %i.jv
  %i.jx = load i64, ptr %i.jw, align 8
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jv
  store i64 %i.jx, ptr %i.jy, align 8
  %i.jz = add nuw i64 %.0162411.2, 2              ; 2 uses
  %i.ka = getelementptr [8 x i8], ptr %i.iz, i64 %i.jz
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jz
  store i64 %i.kb, ptr %i.kc, align 8
  %i.kd = add nuw i64 %.0162411.2, 3              ; 2 uses
  %i.ke = getelementptr [8 x i8], ptr %i.iz, i64 %i.kd
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.kd
  store i64 %i.kf, ptr %i.kg, align 8
  %i.kh = add nuw i64 %.0162411.2, 4              ; 2 uses
  %exitcond.2.not.3 = icmp eq i64 %i.kh, %3
  br i1 %exitcond.2.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %scalar.ph, !llvm.loop !992

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2, %.thread34.i.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1
  %.2.2 = phi i64 [ %.4.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2 ], [ %.4.2, %middle.block ], [ %.2.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1 ], [ %.2.1, %.thread34.i.2 ], [ %.4.2, %scalar.ph.prol.loopexit ], [ %.4.2, %scalar.ph ], [ %.2.1, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2 ] ; 3 uses
  %i.ki = add nsw i64 %.0164415, 1                ; 2 uses
  %exitcond474.not = icmp eq i64 %i.ki, %i.cq
  br i1 %exitcond474.not, label %._crit_edge, label %.lr.ph416, !llvm.loop !993

._crit_edge:                                      ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2
  %i.kj = icmp ugt i64 %.2.2, 1
  br i1 %i.kj, label %.preheader386, label %.thread351

.preheader386:                                    ; preds = %._crit_edge
  %i.kk = uitofp i64 %.0166436 to double
  %i.kl = mul i64 %i.cf, %4
  %i.km = getelementptr [8 x i8], ptr %1, i64 %i.kl ; 2 uses
  %i.kn = uitofp i64 %.0168435 to double          ; 2 uses
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge426
  %i.ko = load i32, ptr %i.m, align 8
  %i.kp = icmp eq i32 %i.ko, 1
  br i1 %i.kp, label %bb.as, label %bb.az

bb.an:                                            ; preds = %.preheader386, %._crit_edge426
  %.0156430 = phi i64 [ 0, %.preheader386 ], [ %i.la, %._crit_edge426 ] ; 4 uses
  %.0158429 = phi double [ 1.797690e+308, %.preheader386 ], [ %.1159, %._crit_edge426 ] ; 2 uses
  %.0160428 = phi i64 [ 4294967295, %.preheader386 ], [ %.1161, %._crit_edge426 ]
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0156430
  %i.kr = load i64, ptr %i.kq, align 8
  %i.ks = uitofp i64 %i.kr to double
  %i.kt = fadd double %i.ks, 1.000000e+00
  %i.ku = fdiv double %i.kt, %i.kk
  %i.kv = call double @log(double noundef %i.ku) #30
  %i.kw = fdiv double %i.kv, f0xBFE62E42FEFA39EF  ; 2 uses
  br i1 %.not449, label %._crit_edge426, label %.lr.ph425

.lr.ph425:                                        ; preds = %bb.an
  %i.kx = getelementptr inbounds nuw [280 x i8], ptr %0, i64 %.0156430
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 624
  br label %bb.ao

._crit_edge426:                                   ; preds = %bb.ar, %bb.an
  %.0157.lcssa = phi double [ %i.kw, %bb.an ], [ %.1, %bb.ar ] ; 2 uses
  %i.kz = fcmp olt double %.0157.lcssa, %.0158429 ; 2 uses
  %.1161 = select i1 %i.kz, i64 %.0156430, i64 %.0160428 ; 5 uses
  %.1159 = select i1 %i.kz, double %.0157.lcssa, double %.0158429
  %i.la = add nuw i64 %.0156430, 1                ; 2 uses
  %exitcond478.not = icmp eq i64 %i.la, %.2.2
  br i1 %exitcond478.not, label %bb.am, label %bb.an, !llvm.loop !994

bb.ao:                                            ; preds = %.lr.ph425, %bb.ar
  %.0155423 = phi i64 [ 0, %.lr.ph425 ], [ %i.me, %bb.ar ] ; 3 uses
  %.0157422 = phi double [ %i.kw, %.lr.ph425 ], [ %.1, %bb.ar ] ; 2 uses
  %i.lb = getelementptr [8 x i8], ptr %i.km, i64 %.0155423
  %i.lc = load i64, ptr %i.lb, align 8
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %.0155423
  %i.le = load i64, ptr %i.ld, align 8
  %i.lf = sub nsw i64 %i.lc, %i.le                ; 2 uses
  %i.lg = shl nsw i64 %i.lf, 1
  %.lobit.i = ashr i64 %i.lf, 63
  %i.lh = xor i64 %i.lg, %.lobit.i                ; 3 uses
  %i.li = icmp slt i64 %i.lh, 256
  br i1 %i.li, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.lh
  %i.lk = load i64, ptr %i.lj, align 8
  %i.ll = uitofp i64 %i.lk to double
  %i.lm = fadd double %i.ll, 1.000000e+00
  %i.ln = fdiv double %i.lm, %i.kn
  %i.lo = call double @log(double noundef %i.ln) #30
  %i.lp = fdiv double %i.lo, f0x3FE62E42FEFA39EF
  %i.lq = fsub double %.0157422, %i.lp
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.lr = load i64, ptr %i.bq, align 8
  %i.ls = uitofp i64 %i.lr to double
  %i.lt = fadd double %i.ls, 1.000000e+00
  %i.lu = fdiv double %i.lt, %i.kn
  %i.lv = call double @log(double noundef %i.lu) #30
  %i.lw = add nsw i64 %i.lh, -256
  %i.lx = uitofp nneg i64 %i.lw to double
  %i.ly = call double @log(double noundef %i.lx) #30
  %i.lz = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.ma = insertelement <2 x double> %i.lz, double %i.lv, i64 1
  %i.mb = fdiv <2 x double> %i.ma, splat (double f0x3FE62E42FEFA39EF) ; 2 uses
  %shift = shufflevector <2 x double> %i.mb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.mb, %shift
  %i.mc = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.md = fadd double %.0157422, %i.mc
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.1 = phi double [ %i.lq, %bb.ap ], [ %i.md, %bb.aq ] ; 2 uses
  %i.me = add nuw i64 %.0155423, 1                ; 2 uses
  %exitcond477.not = icmp eq i64 %i.me, %3
end_hunk_1
