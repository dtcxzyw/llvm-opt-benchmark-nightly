Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFExporter?download=true
inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN5o3dgc13SC3DMCDecoderItE16DecodeFloatArrayEPfmmmPKfS4_mRKNS_14IndexedFaceSetItEERNS_25O3DGCSC3DMCPredictionModeERKNS_12BinaryStreamE:bb.a
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.0226593 ; 3 uses
  %i.fc = load i64, ptr %i.fb, align 8            ; 2 uses
  %.not485 = icmp eq i64 %.0226593, 0             ; 3 uses
  br i1 %.not485, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fd = getelementptr i8, ptr %i.fb, i64 -8
  %i.fe = load i64, ptr %i.fd, align 8
  br label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit: ; preds = %bb.au, %bb.av
  %i.ff = phi i64 [ %i.fe, %bb.av ], [ 0, %bb.au ]
  %i.fg = icmp sgt i64 %i.fc, %i.ff
  br i1 %i.fg, label %bb.aw, label %.critedge298.thread

bb.aw:                                            ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit
  %i.fh = load i32, ptr %9, align 4               ; 3 uses
  %.not268 = icmp eq i32 %i.fh, 0
  br i1 %.not268, label %.critedge298.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not485, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fi = getelementptr i8, ptr %i.fb, i64 -8
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = shl i64 %i.fj, 32
  %i.fl = ashr exact i64 %i.fk, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %bb.ax, %bb.ay
  %sext = phi i64 [ %i.fl, %bb.ay ], [ 0, %bb.ax ] ; 2 uses
  %sext269 = shl i64 %i.fc, 32
  %i.fm = ashr exact i64 %sext269, 32             ; 2 uses
  %i.fn = icmp slt i64 %sext, %i.fm
  br i1 %i.fn, label %.lr.ph580, label %.critedge298.thread

.lr.ph580:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit
  %i.fo = icmp eq i32 %i.fh, 5
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph580, %.loopexit514
  %.0225579 = phi i64 [ %sext, %.lr.ph580 ], [ %i.or, %.loopexit514 ] ; 2 uses
  %.0467578 = phi i64 [ 0, %.lr.ph580 ], [ %.7, %.loopexit514 ] ; 5 uses
  %i.fp = load ptr, ptr %i.eo, align 8            ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %.0225579
  %i.fr = load i64, ptr %i.fq, align 8            ; 3 uses
  %i.fs = icmp sgt i64 %i.fr, -1
  br i1 %i.fs, label %bb.ba, label %.critedge298

bb.ba:                                            ; preds = %bb.az
  br i1 %i.fo, label %bb.bb, label %.critedge

bb.bb:                                            ; preds = %bb.ba
  %.idx486 = mul nuw nsw i64 %i.fr, 6
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx486 ; 3 uses
  %i.fu = load i16, ptr %i.ft, align 2
  %i.fv = zext i16 %i.fu to i64                   ; 3 uses
  %i.fw = icmp eq i64 %.0226593, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  %i.fy = load i16, ptr %i.fx, align 2
  %i.fz = zext i16 %i.fy to i64                   ; 3 uses
  br i1 %i.fw, label %.sink.split, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ga = icmp eq i64 %.0226593, %i.fz
  br i1 %i.ga, label %.sink.split, label %bb.bd

.sink.split:                                      ; preds = %bb.bc, %bb.bb
  %.0465.ph = phi i64 [ %i.fz, %bb.bb ], [ %i.fv, %bb.bc ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.gc = load i16, ptr %i.gb, align 2
  %i.gd = zext i16 %i.gc to i64
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split, %bb.bc
  %.0465 = phi i64 [ %i.fv, %bb.bc ], [ %.0465.ph, %.sink.split ] ; 11 uses
  %.0464 = phi i64 [ %i.fz, %bb.bc ], [ %i.gd, %.sink.split ] ; 8 uses
  %i.ge = icmp samesign ult i64 %.0465, %.0226593
  %i.gf = icmp samesign ult i64 %.0464, %.0226593
  %or.cond294 = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %or.cond294, label %bb.be, label %.critedge.thread

bb.be:                                            ; preds = %bb.bd
  %.not487 = icmp eq i64 %.0465, 0
  br i1 %.not487, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gg = getelementptr [8 x i8], ptr %i.fa, i64 %.0465
  %i.gh = getelementptr i8, ptr %i.gg, i64 -8
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = shl i64 %i.gi, 32
  %i.gk = ashr exact i64 %i.gj, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330:        ; preds = %bb.be, %bb.bf
  %sext270 = phi i64 [ %i.gk, %bb.bf ], [ 0, %bb.be ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.0465
  %i.gm = load i64, ptr %i.gl, align 8
  %sext271 = shl i64 %i.gm, 32
  %i.gn = ashr exact i64 %sext271, 32             ; 2 uses
  %i.go = icmp slt i64 %sext270, %i.gn
  br i1 %i.go, label %.lr.ph571, label %.critedge.thread

.lr.ph571:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330
  %i.gp = call i64 @llvm.umin.i64(i64 %.0464, i64 %.0465) ; 3 uses
  %i.gq = call i64 @llvm.umax.i64(i64 %.0464, i64 %.0465) ; 3 uses
  %i.gr = mul i64 %.0465, %4
  %i.gs = mul i64 %.0464, %4
  %i.gt = mul i64 %i.ev, %.0464
  %i.gu = mul i64 %i.ex, %.0465
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph571, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.0224570 = phi i64 [ %sext270, %.lr.ph571 ], [ %i.ky, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 2 uses
  %.1468569 = phi i64 [ %.0467578, %.lr.ph571 ], [ %.2469, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 12 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %.0224570
  %i.gw = load i64, ptr %i.gv, align 8            ; 2 uses
  %i.gx = icmp sgt i64 %i.gw, -1
  br i1 %i.gx, label %.preheader493, label %.critedge

.preheader493:                                    ; preds = %bb.bg
  %.idx = mul nuw nsw i64 %i.gw, 6
  %i.gy = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 3 uses
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = zext i16 %i.gz to i64                   ; 4 uses
  %i.hb = icmp eq i64 %.0464, %i.ha               ; 2 uses
  %i.hc = icmp samesign ule i64 %.0226593, %i.ha
  %.not273 = icmp eq i64 %.0465, %i.ha
  %or.cond295 = or i1 %i.hc, %.not273
  %or.cond296 = select i1 %or.cond295, i1 true, i1 %i.hb
  %.1223 = select i1 %or.cond296, i64 -1, i64 %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %i.he = load i16, ptr %i.hd, align 2
  %i.hf = zext i16 %i.he to i64                   ; 4 uses
  %i.hg = icmp eq i64 %.0464, %i.hf               ; 2 uses
  %i.hh = icmp samesign ule i64 %.0226593, %i.hf
  %.not273.1 = icmp eq i64 %.0465, %i.hf
  %or.cond295.1 = or i1 %i.hh, %.not273.1
  %or.cond296.1 = select i1 %or.cond295.1, i1 true, i1 %i.hg
  %.1223.1 = select i1 %or.cond296.1, i64 %.1223, i64 %i.hf
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.hj = load i16, ptr %i.hi, align 2
  %i.hk = zext i16 %i.hj to i64                   ; 4 uses
  %i.hl = icmp eq i64 %.0464, %i.hk               ; 2 uses
  %i.hm = select i1 %i.hl, i1 true, i1 %i.hg
  %spec.select.2 = select i1 %i.hm, i1 true, i1 %i.hb
  %i.hn = icmp samesign ule i64 %.0226593, %i.hk
  %.not273.2 = icmp eq i64 %.0465, %i.hk
  %or.cond295.2 = or i1 %i.hn, %.not273.2
  %or.cond296.2 = select i1 %or.cond295.2, i1 true, i1 %i.hl
  %.1223.2 = select i1 %or.cond296.2, i64 %.1223.1, i64 %i.hk ; 4 uses
  %i.ho = icmp ne i64 %.1223.2, -1
  %or.cond = select i1 %i.ho, i1 %spec.select.2, i1 false
  br i1 %or.cond, label %bb.bh, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

bb.bh:                                            ; preds = %.preheader493
  %i.hp = xor i64 %.1223.2, -1                    ; 3 uses
  %.not.i332 = icmp eq i64 %.1468569, 0
  br i1 %.not.i332, label %.thread34.thread.i, label %.lr.ph.i333

.lr.ph.i333:                                      ; preds = %bb.bh, %bb.bk
  %.02543.i = phi i64 [ %i.ij, %bb.bk ], [ 0, %bb.bh ] ; 7 uses
  %i.hq = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.02543.i ; 5 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load i64, ptr %i.hr, align 8            ; 2 uses
  %i.ht = icmp eq i64 %i.hs, %i.hp
  br i1 %i.ht, label %bb.bi, label %.split.i

bb.bi:                                            ; preds = %.lr.ph.i333
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hv = load i64, ptr %i.hu, align 8            ; 2 uses
  %i.hw = icmp eq i64 %i.gq, %i.hv
  br i1 %i.hw, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.bi
  %i.hx = load i64, ptr %i.hq, align 8            ; 2 uses
  %i.hy = icmp eq i64 %i.gp, %i.hx
  br i1 %i.hy, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.split31.i

.split.i:                                         ; preds = %.lr.ph.i333
  %i.hz = icmp sgt i64 %i.hs, %i.hp
  br i1 %i.hz, label %bb.bj, label %bb.bk

.split31.i:                                       ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i
  %i.ia = icmp slt i64 %i.gp, %i.hx
  br i1 %i.ia, label %bb.bj, label %bb.bk

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.bi
  %i.ib = icmp slt i64 %i.gq, %i.hv
  br i1 %i.ib, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.ic = icmp eq i64 %.1468569, 1
  %spec.select480 = select i1 %i.ic, i64 2, i64 %.1468569 ; 4 uses
  %.044.i = add i64 %spec.select480, -1
  %i.id = icmp ugt i64 %.044.i, %.02543.i
  br i1 %i.id, label %.lr.ph47.preheader.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

.lr.ph47.preheader.i:                             ; preds = %bb.bj
  %i.ie = mul nuw i64 %.02543.i, 280
  %i.if = getelementptr i8, ptr %11, i64 %i.ie    ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.if, i64 280
  %i.ig = xor i64 %.02543.i, -1
  %i.ih = add i64 %spec.select480, %i.ig
  %i.ii = mul nuw i64 %i.ih, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %i.if, i64 %i.ii, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

bb.bk:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.ij = add nuw i64 %.02543.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ij, %.1468569
  br i1 %exitcond.not.i, label %.thread34.i, label %.lr.ph.i333, !llvm.loop !386

.thread34.i:                                      ; preds = %bb.bk
  %i.ik = icmp eq i64 %.1468569, 1
  br i1 %i.ik, label %.thread34.thread.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

.thread34.thread.i:                               ; preds = %.thread34.i, %bb.bh
  %i.il = add nuw nsw i64 %.1468569, 1
  %i.im = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.1468569
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit: ; preds = %bb.bj, %.lr.ph47.preheader.i, %.thread34.thread.i
  %.9 = phi i64 [ %i.il, %.thread34.thread.i ], [ %spec.select480, %.lr.ph47.preheader.i ], [ %spec.select480, %bb.bj ] ; 4 uses
  %.lcssa.sink.i = phi ptr [ %i.im, %.thread34.thread.i ], [ %i.hq, %.lr.ph47.preheader.i ], [ %i.hq, %bb.bj ] ; 3 uses
  %.1.ph.i = phi i64 [ %.1468569, %.thread34.thread.i ], [ %.02543.i, %.lr.ph47.preheader.i ], [ %.02543.i, %bb.bj ] ; 3 uses
  store i64 %i.gp, ptr %.lcssa.sink.i, align 8
  %.sroa.5.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 8
  store i64 %i.gq, ptr %.sroa.5.0..lcssa.sink.i.sroa_idx, align 8
  %.sroa.7.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 16
  store i64 %i.hp, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx, align 8
  %.not272 = icmp eq i64 %.1.ph.i, 4294967295
  %brmerge = or i1 %.not272, %.not608
  br i1 %brmerge, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.lr.ph568

.lr.ph568:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit
  %i.in = load ptr, ptr %i.ep, align 8            ; 4 uses
  %i.io = getelementptr [8 x i8], ptr %i.in, i64 %i.gr ; 4 uses
  %i.ip = getelementptr [8 x i8], ptr %i.in, i64 %i.gs ; 4 uses
  %i.iq = mul i64 %.1223.2, %4
  %i.ir = getelementptr [8 x i8], ptr %i.in, i64 %i.iq ; 4 uses
  %i.is = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.1.ph.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph568
  %i.iu = ptrtoaddr ptr %i.in to i64              ; 3 uses
  %i.iv = mul i64 %.1.ph.i, 280                   ; 3 uses
  %i.iw = add i64 %i.es, %i.iv
  %i.ix = mul i64 %i.et, %.1223.2
  %i.iy = add i64 %i.ix, %i.iu
  %i.iz = sub i64 %i.iy, %i.iw
  %diff.check = icmp ugt i64 %i.iz, -32
  %i.ja = add i64 %i.eu, %i.iv
  %i.jb = add i64 %i.gt, %i.iu
  %i.jc = sub i64 %i.jb, %i.ja
  %diff.check765 = icmp ugt i64 %i.jc, -32
  %conflict.rdx = or i1 %diff.check, %diff.check765
  %i.jd = add i64 %i.ew, %i.iv
  %i.je = add i64 %i.gu, %i.iu
  %i.jf = sub i64 %i.je, %i.jd
  %diff.check766 = icmp ugt i64 %i.jf, -32
  %conflict.rdx767 = or i1 %conflict.rdx, %diff.check766
  br i1 %conflict.rdx767, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.jg = getelementptr [8 x i8], ptr %i.io, i64 %index ; 2 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 16
  %wide.load = load <2 x i64>, ptr %i.jg, align 8
  %wide.load768 = load <2 x i64>, ptr %i.jh, align 8
  %i.ji = getelementptr [8 x i8], ptr %i.ip, i64 %index ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 16
  %wide.load769 = load <2 x i64>, ptr %i.ji, align 8
  %wide.load770 = load <2 x i64>, ptr %i.jj, align 8
  %i.jk = add nsw <2 x i64> %wide.load769, %wide.load
  %i.jl = add nsw <2 x i64> %wide.load770, %wide.load768
  %i.jm = getelementptr [8 x i8], ptr %i.ir, i64 %index ; 2 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 16
  %wide.load771 = load <2 x i64>, ptr %i.jm, align 8
  %wide.load772 = load <2 x i64>, ptr %i.jn, align 8
  %i.jo = sub <2 x i64> %i.jk, %wide.load771
  %i.jp = sub <2 x i64> %i.jl, %wide.load772
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %index ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store <2 x i64> %i.jo, ptr %i.jq, align 8
  store <2 x i64> %i.jp, ptr %i.jr, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.js = icmp eq i64 %index.next, %n.vec
  br i1 %i.js, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph568, %middle.block
  %.0219567.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph568 ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg834 = or disjoint i64 %.0219567.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jt = getelementptr [8 x i8], ptr %i.io, i64 %.0219567.ph
  %i.ju = load i64, ptr %i.jt, align 8
  %i.jv = getelementptr [8 x i8], ptr %i.ip, i64 %.0219567.ph
  %i.jw = load i64, ptr %i.jv, align 8
  %i.jx = add nsw i64 %i.jw, %i.ju
  %i.jy = getelementptr [8 x i8], ptr %i.ir, i64 %.0219567.ph
  %i.jz = load i64, ptr %i.jy, align 8
  %i.ka = sub i64 %i.jx, %i.jz
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %.0219567.ph
  store i64 %i.ka, ptr %i.kb, align 8
  %i.kc = or disjoint i64 %.0219567.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0219567.unr = phi i64 [ %.0219567.ph, %scalar.ph.preheader ], [ %i.kc, %scalar.ph.prol ]
  %i.kd = icmp eq i64 %.0251, %.neg834
  br i1 %i.kd, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0219567 = phi i64 [ %i.kx, %scalar.ph ], [ %.0219567.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ke = getelementptr [8 x i8], ptr %i.io, i64 %.0219567
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = getelementptr [8 x i8], ptr %i.ip, i64 %.0219567
  %i.kh = load i64, ptr %i.kg, align 8
  %i.ki = add nsw i64 %i.kh, %i.kf
  %i.kj = getelementptr [8 x i8], ptr %i.ir, i64 %.0219567
  %i.kk = load i64, ptr %i.kj, align 8
  %i.kl = sub i64 %i.ki, %i.kk
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %.0219567
  store i64 %i.kl, ptr %i.km, align 8
  %i.kn = add nuw i64 %.0219567, 1                ; 4 uses
  %i.ko = getelementptr [8 x i8], ptr %i.io, i64 %i.kn
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = getelementptr [8 x i8], ptr %i.ip, i64 %i.kn
  %i.kr = load i64, ptr %i.kq, align 8
  %i.ks = add nsw i64 %i.kr, %i.kp
  %i.kt = getelementptr [8 x i8], ptr %i.ir, i64 %i.kn
  %i.ku = load i64, ptr %i.kt, align 8
  %i.kv = sub i64 %i.ks, %i.ku
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.kn
  store i64 %i.kv, ptr %i.kw, align 8
  %i.kx = add nuw i64 %.0219567, 2                ; 2 uses
  %exitcond632.not.1 = icmp eq i64 %i.kx, %.0251
  br i1 %exitcond632.not.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph, !llvm.loop !388

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, %.preheader493, %.thread34.i
  %.2469 = phi i64 [ %.9, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit ], [ %.9, %middle.block ], [ %.1468569, %.preheader493 ], [ %.1468569, %.thread34.i ], [ %.9, %scalar.ph.prol.loopexit ], [ %.9, %scalar.ph ], [ %.1468569, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i ] ; 2 uses
  %i.ky = add nsw i64 %.0224570, 1                ; 2 uses
  %exitcond633.not = icmp eq i64 %i.ky, %i.gn
  br i1 %exitcond633.not, label %.critedge, label %bb.bg, !llvm.loop !389

.critedge:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, %bb.bg, %bb.ba
  %.4 = phi i64 [ %.0467578, %bb.ba ], [ %.1468569, %bb.bg ], [ %.2469, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 4 uses
  switch i32 %i.fh, label %.loopexit514 [
    i32 6, label %.critedge.thread
    i32 5, label %.critedge.thread
    i32 1, label %.critedge.thread
  ]

.critedge.thread:                                 ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330, %bb.bd, %.critedge, %.critedge, %.critedge
  %.4475 = phi i64 [ %.4, %.critedge ], [ %.4, %.critedge ], [ %.4, %.critedge ], [ %.0467578, %bb.bd ], [ %.0467578, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330 ] ; 11 uses
  %.idx275 = mul nuw nsw i64 %i.fr, 6
  %i.kz = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx275 ; 3 uses
  %i.la = load i16, ptr %i.kz, align 2
  %i.lb = zext i16 %i.la to i64                   ; 5 uses
  %i.lc = icmp samesign ugt i64 %.0226593, %i.lb
  br i1 %i.lc, label %bb.bl, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread

bb.bl:                                            ; preds = %.critedge.thread
  %.not.i335 = icmp eq i64 %.4475, 0
  br i1 %.not.i335, label %.thread34.thread.i342, label %.lr.ph.i336

.lr.ph.i336:                                      ; preds = %bb.bl, %bb.bo
  %.02543.i337 = phi i64 [ %i.lw, %bb.bo ], [ 0, %bb.bl ] ; 7 uses
  %i.ld = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.02543.i337 ; 5 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load i64, ptr %i.le, align 8            ; 2 uses
  %i.lg = icmp eq i64 %i.lf, %i.lb
  br i1 %i.lg, label %bb.bm, label %.split.i338

bb.bm:                                            ; preds = %.lr.ph.i336
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.li = load i64, ptr %i.lh, align 8            ; 2 uses
  %i.lj = icmp eq i64 %i.li, -1
  br i1 %i.lj, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351:   ; preds = %bb.bm
  %i.lk = load i64, ptr %i.ld, align 8            ; 2 uses
  %i.ll = icmp eq i64 %i.lk, -1
  br i1 %i.ll, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread, label %.split31.i352

.split.i338:                                      ; preds = %.lr.ph.i336
  %i.lm = icmp sgt i64 %i.lf, %i.lb
  br i1 %i.lm, label %bb.bn, label %bb.bo

.split31.i352:                                    ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351
  %i.ln = icmp sgt i64 %i.lk, -1
  br i1 %i.ln, label %bb.bn, label %bb.bo

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350:   ; preds = %bb.bm
  %i.lo = icmp sgt i64 %i.li, -1
  br i1 %i.lo, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350, %.split31.i352, %.split.i338
  %i.lp = icmp eq i64 %.4475, 1
  %spec.select482 = select i1 %i.lp, i64 2, i64 %.4475 ; 4 uses
  %.044.i346 = add i64 %spec.select482, -1
  %i.lq = icmp ugt i64 %.044.i346, %.02543.i337
  br i1 %i.lq, label %.lr.ph47.preheader.i347, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353

.lr.ph47.preheader.i347:                          ; preds = %bb.bn
  %i.lr = mul nuw i64 %.02543.i337, 280
  %i.ls = getelementptr i8, ptr %11, i64 %i.lr    ; 2 uses
  %scevgep.i348 = getelementptr i8, ptr %i.ls, i64 280
  %i.lt = xor i64 %.02543.i337, -1
  %i.lu = add i64 %spec.select482, %i.lt
  %i.lv = mul nuw i64 %i.lu, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i348, ptr align 8 %i.ls, i64 %i.lv, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353

bb.bo:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350, %.split31.i352, %.split.i338
  %i.lw = add nuw i64 %.02543.i337, 1             ; 2 uses
  %exitcond.not.i339 = icmp eq i64 %i.lw, %.4475
  br i1 %exitcond.not.i339, label %.thread34.i340, label %.lr.ph.i336, !llvm.loop !386

.thread34.i340:                                   ; preds = %bb.bo
  %i.lx = icmp eq i64 %.4475, 1
  br i1 %i.lx, label %.thread34.thread.i342, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread

.thread34.thread.i342:                            ; preds = %.thread34.i340, %bb.bl
  %i.ly = add nuw nsw i64 %.4475, 1
  %i.lz = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.4475
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353: ; preds = %bb.bn, %.lr.ph47.preheader.i347, %.thread34.thread.i342
  %.12 = phi i64 [ %i.ly, %.thread34.thread.i342 ], [ %spec.select482, %.lr.ph47.preheader.i347 ], [ %spec.select482, %bb.bn ] ; 2 uses
  %.lcssa.sink.i344 = phi ptr [ %i.lz, %.thread34.thread.i342 ], [ %i.ld, %.lr.ph47.preheader.i347 ], [ %i.ld, %bb.bn ] ; 2 uses
  %.1.ph.i345 = phi i64 [ %.4475, %.thread34.thread.i342 ], [ %.02543.i337, %.lr.ph47.preheader.i347 ], [ %.02543.i337, %bb.bn ] ; 2 uses
  %.sroa.7463.0..lcssa.sink.i344.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i344, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i344, i8 -1, i64 16, i1 false)
  store i64 %i.lb, ptr %.sroa.7463.0..lcssa.sink.i344.sroa_idx, align 8
  %.not278 = icmp eq i64 %.1.ph.i345, 4294967295
  %brmerge605 = or i1 %.not278, %.not608
  br i1 %brmerge605, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread, label %.lr.ph575

.lr.ph575:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353
  %i.ma = load ptr, ptr %i.ep, align 8
  %i.mb = mul i64 %4, %i.lb
  %i.mc = getelementptr [8 x i8], ptr %i.ma, i64 %i.mb
  %i.md = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.1.ph.i345
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.me, ptr align 8 %i.mc, i64 %i.er, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351, %.lr.ph575, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353, %.thread34.i340, %.critedge.thread
  %.6 = phi i64 [ %.12, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353 ], [ %.12, %.lr.ph575 ], [ %.4475, %.critedge.thread ], [ %.4475, %.thread34.i340 ], [ %.4475, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351 ] ; 11 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kz, i64 2
  %i.mg = load i16, ptr %i.mf, align 2
  %i.mh = zext i16 %i.mg to i64                   ; 5 uses
  %i.mi = icmp samesign ugt i64 %.0226593, %i.mh
  br i1 %i.mi, label %bb.bp, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1

bb.bp:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread
  %.not.i335.1 = icmp eq i64 %.6, 0
  br i1 %.not.i335.1, label %.thread34.thread.i342.1, label %.lr.ph.i336.1

.lr.ph.i336.1:                                    ; preds = %bb.bp, %bb.br
  %.02543.i337.1 = phi i64 [ %i.mv, %bb.br ], [ 0, %bb.bp ] ; 7 uses
  %i.mj = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.02543.i337.1 ; 5 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load i64, ptr %i.mk, align 8            ; 2 uses
  %i.mm = icmp eq i64 %i.ml, %i.mh
  br i1 %i.mm, label %bb.bq, label %.split.i338.1

.split.i338.1:                                    ; preds = %.lr.ph.i336.1
  %i.mn = icmp sgt i64 %i.ml, %i.mh
  br i1 %i.mn, label %bb.bs, label %bb.br

bb.bq:                                            ; preds = %.lr.ph.i336.1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.mp = load i64, ptr %i.mo, align 8            ; 2 uses
  %i.mq = icmp eq i64 %i.mp, -1
  br i1 %i.mq, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.1, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.1

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.1: ; preds = %bb.bq
  %i.mr = icmp sgt i64 %i.mp, -1
  br i1 %i.mr, label %bb.bs, label %bb.br

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.1: ; preds = %bb.bq
  %i.ms = load i64, ptr %i.mj, align 8            ; 2 uses
  %i.mt = icmp eq i64 %i.ms, -1
  br i1 %i.mt, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1, label %.split31.i352.1

.split31.i352.1:                                  ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.1
  %i.mu = icmp sgt i64 %i.ms, -1
  br i1 %i.mu, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.split31.i352.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.1, %.split.i338.1
  %i.mv = add nuw i64 %.02543.i337.1, 1           ; 2 uses
  %exitcond.not.i339.1 = icmp eq i64 %i.mv, %.6
  br i1 %exitcond.not.i339.1, label %.thread34.i340.1, label %.lr.ph.i336.1, !llvm.loop !386

.thread34.i340.1:                                 ; preds = %bb.br
  %i.mw = icmp eq i64 %.6, 1
  br i1 %i.mw, label %.thread34.thread.i342.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1

bb.bs:                                            ; preds = %.split31.i352.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.1, %.split.i338.1
  %i.mx = icmp eq i64 %.6, 1
  %spec.select482.1 = select i1 %i.mx, i64 2, i64 %.6 ; 4 uses
  %.044.i346.1 = add i64 %spec.select482.1, -1
  %i.my = icmp ugt i64 %.044.i346.1, %.02543.i337.1
  br i1 %i.my, label %.lr.ph47.preheader.i347.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.1

.lr.ph47.preheader.i347.1:                        ; preds = %bb.bs
  %i.mz = mul nuw i64 %.02543.i337.1, 280
  %i.na = getelementptr i8, ptr %11, i64 %i.mz    ; 2 uses
  %scevgep.i348.1 = getelementptr i8, ptr %i.na, i64 280
  %i.nb = xor i64 %.02543.i337.1, -1
  %i.nc = add i64 %spec.select482.1, %i.nb
  %i.nd = mul nuw i64 %i.nc, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i348.1, ptr align 8 %i.na, i64 %i.nd, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.1

.thread34.thread.i342.1:                          ; preds = %.thread34.i340.1, %bb.bp
  %i.ne = add nuw nsw i64 %.6, 1
  %i.nf = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.6
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.1

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.1: ; preds = %.thread34.thread.i342.1, %.lr.ph47.preheader.i347.1, %bb.bs
  %.12.1 = phi i64 [ %i.ne, %.thread34.thread.i342.1 ], [ %spec.select482.1, %.lr.ph47.preheader.i347.1 ], [ %spec.select482.1, %bb.bs ] ; 2 uses
  %.lcssa.sink.i344.1 = phi ptr [ %i.nf, %.thread34.thread.i342.1 ], [ %i.mj, %.lr.ph47.preheader.i347.1 ], [ %i.mj, %bb.bs ] ; 2 uses
  %.1.ph.i345.1 = phi i64 [ %.6, %.thread34.thread.i342.1 ], [ %.02543.i337.1, %.lr.ph47.preheader.i347.1 ], [ %.02543.i337.1, %bb.bs ] ; 2 uses
  %.sroa.7463.0..lcssa.sink.i344.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i344.1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i344.1, i8 -1, i64 16, i1 false)
  store i64 %i.mh, ptr %.sroa.7463.0..lcssa.sink.i344.sroa_idx.1, align 8
  %.not278.1 = icmp eq i64 %.1.ph.i345.1, 4294967295
  %brmerge605.1 = or i1 %.not278.1, %.not608
  br i1 %brmerge605.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1, label %.lr.ph575.1

.lr.ph575.1:                                      ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.1
  %i.ng = load ptr, ptr %i.ep, align 8
  %i.nh = mul i64 %4, %i.mh
  %i.ni = getelementptr [8 x i8], ptr %i.ng, i64 %i.nh
  %i.nj = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.1.ph.i345.1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.nk, ptr align 8 %i.ni, i64 %i.er, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.1, %.lr.ph575.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.1, %.thread34.i340.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread
  %.6.1 = phi i64 [ %.12.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.1 ], [ %.12.1, %.lr.ph575.1 ], [ %.6, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread ], [ %.6, %.thread34.i340.1 ], [ %.6, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.1 ] ; 11 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.nm = load i16, ptr %i.nl, align 2
  %i.nn = zext i16 %i.nm to i64                   ; 5 uses
  %i.no = icmp samesign ugt i64 %.0226593, %i.nn
  br i1 %i.no, label %bb.bt, label %.loopexit514

bb.bt:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1
  %.not.i335.2 = icmp eq i64 %.6.1, 0
  br i1 %.not.i335.2, label %.thread34.thread.i342.2, label %.lr.ph.i336.2

.lr.ph.i336.2:                                    ; preds = %bb.bt, %bb.bv
  %.02543.i337.2 = phi i64 [ %i.ob, %bb.bv ], [ 0, %bb.bt ] ; 7 uses
  %i.np = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.02543.i337.2 ; 5 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  %i.nr = load i64, ptr %i.nq, align 8            ; 2 uses
  %i.ns = icmp eq i64 %i.nr, %i.nn
  br i1 %i.ns, label %bb.bu, label %.split.i338.2

.split.i338.2:                                    ; preds = %.lr.ph.i336.2
  %i.nt = icmp sgt i64 %i.nr, %i.nn
  br i1 %i.nt, label %bb.bw, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph.i336.2
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nv = load i64, ptr %i.nu, align 8            ; 2 uses
  %i.nw = icmp eq i64 %i.nv, -1
  br i1 %i.nw, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.2, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.2

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.2: ; preds = %bb.bu
  %i.nx = icmp sgt i64 %i.nv, -1
  br i1 %i.nx, label %bb.bw, label %bb.bv

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.2: ; preds = %bb.bu
  %i.ny = load i64, ptr %i.np, align 8            ; 2 uses
  %i.nz = icmp eq i64 %i.ny, -1
  br i1 %i.nz, label %.loopexit514, label %.split31.i352.2

.split31.i352.2:                                  ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.2
  %i.oa = icmp sgt i64 %i.ny, -1
  br i1 %i.oa, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.split31.i352.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.2, %.split.i338.2
  %i.ob = add nuw i64 %.02543.i337.2, 1           ; 2 uses
  %exitcond.not.i339.2 = icmp eq i64 %i.ob, %.6.1
  br i1 %exitcond.not.i339.2, label %.thread34.i340.2, label %.lr.ph.i336.2, !llvm.loop !386

.thread34.i340.2:                                 ; preds = %bb.bv
  %i.oc = icmp eq i64 %.6.1, 1
  br i1 %i.oc, label %.thread34.thread.i342.2, label %.loopexit514

bb.bw:                                            ; preds = %.split31.i352.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.2, %.split.i338.2
  %i.od = icmp eq i64 %.6.1, 1
  %spec.select482.2 = select i1 %i.od, i64 2, i64 %.6.1 ; 4 uses
  %.044.i346.2 = add i64 %spec.select482.2, -1
  %i.oe = icmp ugt i64 %.044.i346.2, %.02543.i337.2
  br i1 %i.oe, label %.lr.ph47.preheader.i347.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.2

.lr.ph47.preheader.i347.2:                        ; preds = %bb.bw
  %i.of = mul nuw i64 %.02543.i337.2, 280
  %i.og = getelementptr i8, ptr %11, i64 %i.of    ; 2 uses
  %scevgep.i348.2 = getelementptr i8, ptr %i.og, i64 280
  %i.oh = xor i64 %.02543.i337.2, -1
  %i.oi = add i64 %spec.select482.2, %i.oh
  %i.oj = mul nuw i64 %i.oi, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i348.2, ptr align 8 %i.og, i64 %i.oj, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.2

.thread34.thread.i342.2:                          ; preds = %.thread34.i340.2, %bb.bt
  %i.ok = add nuw nsw i64 %.6.1, 1
  %i.ol = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.6.1
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.2

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.2: ; preds = %.thread34.thread.i342.2, %.lr.ph47.preheader.i347.2, %bb.bw
  %.12.2 = phi i64 [ %i.ok, %.thread34.thread.i342.2 ], [ %spec.select482.2, %.lr.ph47.preheader.i347.2 ], [ %spec.select482.2, %bb.bw ] ; 2 uses
  %.lcssa.sink.i344.2 = phi ptr [ %i.ol, %.thread34.thread.i342.2 ], [ %i.np, %.lr.ph47.preheader.i347.2 ], [ %i.np, %bb.bw ] ; 2 uses
  %.1.ph.i345.2 = phi i64 [ %.6.1, %.thread34.thread.i342.2 ], [ %.02543.i337.2, %.lr.ph47.preheader.i347.2 ], [ %.02543.i337.2, %bb.bw ] ; 2 uses
  %.sroa.7463.0..lcssa.sink.i344.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i344.2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i344.2, i8 -1, i64 16, i1 false)
  store i64 %i.nn, ptr %.sroa.7463.0..lcssa.sink.i344.sroa_idx.2, align 8
  %.not278.2 = icmp eq i64 %.1.ph.i345.2, 4294967295
  %brmerge605.2 = or i1 %.not278.2, %.not608
  br i1 %brmerge605.2, label %.loopexit514, label %.lr.ph575.2

.lr.ph575.2:                                      ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.2
  %i.om = load ptr, ptr %i.ep, align 8
  %i.on = mul i64 %4, %i.nn
  %i.oo = getelementptr [8 x i8], ptr %i.om, i64 %i.on
  %i.op = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.1.ph.i345.2
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.oq, ptr align 8 %i.oo, i64 %i.er, i1 false)
  br label %.loopexit514

.loopexit514:                                     ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1, %.thread34.i340.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.2, %.lr.ph575.2, %.critedge
  %.7 = phi i64 [ %.4, %.critedge ], [ %.12.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.2 ], [ %.12.2, %.lr.ph575.2 ], [ %.6.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1 ], [ %.6.1, %.thread34.i340.2 ], [ %.6.1, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.2 ] ; 2 uses
  %i.or = add nsw i64 %.0225579, 1                ; 2 uses
  %exitcond635.not = icmp eq i64 %i.or, %i.fm
  br i1 %exitcond635.not, label %.critedge298, label %bb.az, !llvm.loop !390

.critedge298:                                     ; preds = %bb.az, %.loopexit514
  %.0467.lcssa.ph = phi i64 [ %.0467578, %bb.az ], [ %.7, %.loopexit514 ]
  %i.os = icmp ugt i64 %.0467.lcssa.ph, 1
  br i1 %i.os, label %bb.bx, label %.critedge298.thread

bb.bx:                                            ; preds = %.critedge298
  %i.ot = load i32, ptr %i.j, align 8
  %i.ou = icmp eq i32 %i.ot, 1
  br i1 %i.ou, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ov = add i64 %.1592, 1
  %i.ow = load ptr, ptr %10, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %.1592
  %i.oy = load i8, ptr %i.ox, align 1
  %i.oz = zext i8 %i.oy to i64
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bx
  %i.pa = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 8 dereferenceable(52) %15)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.pb = zext i32 %i.pa to i64
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp507

bb.cc:                                            ; preds = %bb.ca, %bb.by
  %.2 = phi i64 [ %i.ov, %bb.by ], [ %.1592, %bb.ca ] ; 2 uses
  %.0216 = phi i64 [ %i.oz, %bb.by ], [ %i.pb, %bb.ca ]
  br i1 %.not608, label %.loopexit515, label %.lr.ph586

.lr.ph586:                                        ; preds = %bb.cc
  %i.pd = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.0216
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  %i.pf = mul i64 %.0226593, %4
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph586, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360
  %.0215584 = phi i64 [ 0, %.lr.ph586 ], [ %i.rc, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360 ] ; 3 uses
  %i.pg = load i32, ptr %i.j, align 8
  %i.ph = icmp eq i32 %i.pg, 1
  br i1 %i.ph, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.pi = load i64, ptr %0, align 8               ; 2 uses
  %i.pj = add i64 %i.pi, 1                        ; 2 uses
  store i64 %i.pj, ptr %0, align 8
  %i.pk = load ptr, ptr %10, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pi
  %i.pm = load i8, ptr %i.pl, align 1             ; 2 uses
  %i.pn = zext i8 %i.pm to i64
  %i.po = icmp eq i8 %i.pm, 127
  br i1 %i.po, label %.preheader.i.i356, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360

.preheader.i.i356:                                ; preds = %bb.ce, %.preheader.i.i356
  %i.pp = phi i64 [ %i.pq, %.preheader.i.i356 ], [ %i.pj, %bb.ce ] ; 2 uses
  %.09.i.i357 = phi i64 [ %i.px, %.preheader.i.i356 ], [ 127, %bb.ce ]
  %.0.i.i358 = phi i64 [ %i.py, %.preheader.i.i356 ], [ 0, %bb.ce ] ; 2 uses
  %i.pq = add i64 %i.pp, 1                        ; 2 uses
  store i64 %i.pq, ptr %0, align 8
  %i.pr = load ptr, ptr %10, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.pp
  %i.pt = load i8, ptr %i.ps, align 1
  %i.pu = zext i8 %i.pt to i64                    ; 2 uses
  %i.pv = lshr i64 %i.pu, 1
  %i.pw = shl i64 %i.pv, %.0.i.i358
  %i.px = add i64 %i.pw, %.09.i.i357              ; 2 uses
  %i.py = add i64 %.0.i.i358, 6
  %i.pz = and i64 %i.pu, 1
  %.not.i.i359 = icmp eq i64 %i.pz, 0
  br i1 %.not.i.i359, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360, label %.preheader.i.i356, !llvm.loop !383

.loopexit506:                                     ; preds = %.lr.ph.i.i
  %lpad.loopexit508 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp507

.loopexit.split-lp507.loopexit:                   ; preds = %.preheader510
  %lpad.loopexit511 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp507

.loopexit.split-lp507.loopexit.split-lp:          ; preds = %bb.cf
  %lpad.loopexit.split-lp512 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp507

bb.cf:                                            ; preds = %bb.cd
  %i.qa = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 8 dereferenceable(52) %16)
          to label %.noexc365 unwind label %.loopexit.split-lp507.loopexit.split-lp ; 2 uses

.noexc365:                                        ; preds = %bb.cf
  %i.qb = zext i32 %i.qa to i64
  %i.qc = icmp eq i32 %.0231, %i.qa
  br i1 %i.qc, label %.preheader510, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360

.preheader510:                                    ; preds = %.noexc365, %.noexc366
  %.014.i.i = phi i32 [ %.115.i.i, %.noexc366 ], [ %.0232, %.noexc365 ] ; 2 uses
  %.012.i.i = phi i32 [ %.113.i.i, %.noexc366 ], [ 0, %.noexc365 ]
  %i.qd = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(20) %14)
          to label %.noexc366 unwind label %.loopexit.split-lp507.loopexit ; 2 uses

.noexc366:                                        ; preds = %.preheader510
  %i.qe = icmp eq i32 %i.qd, 1                    ; 2 uses
  %i.qf = shl nuw i32 1, %.014.i.i
  %i.qg = zext i1 %i.qe to i32
  %.115.i.i = add nsw i32 %.014.i.i, %i.qg        ; 3 uses
  %i.qh = select i1 %i.qe, i32 %i.qf, i32 0
  %.113.i.i = add nsw i32 %i.qh, %.012.i.i        ; 2 uses
  %.not.i.i362 = icmp eq i32 %i.qd, 0
  br i1 %.not.i.i362, label %.preheader.i.i363, label %.preheader510, !llvm.loop !381

.preheader.i.i363:                                ; preds = %.noexc366
  %.not1617.i.i = icmp eq i32 %.115.i.i, 0
  br i1 %.not1617.i.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i363, %.noexc367
  %.019.i.i = phi i32 [ %.1.i.i364, %.noexc367 ], [ 0, %.preheader.i.i363 ]
  %.218.i.i = phi i32 [ %i.qj, %.noexc367 ], [ %.115.i.i, %.preheader.i.i363 ]
  %i.qi = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc367 unwind label %.loopexit506

.noexc367:                                        ; preds = %.lr.ph.i.i
  %i.qj = add nsw i32 %.218.i.i, -1               ; 3 uses
  %i.qk = icmp eq i32 %i.qi, 1
  %i.ql = shl nuw i32 1, %i.qj
  %i.qm = select i1 %i.qk, i32 %i.ql, i32 0
  %.1.i.i364 = or i32 %i.qm, %.019.i.i            ; 2 uses
  %.not16.i.i = icmp eq i32 %i.qj, 0
  br i1 %.not16.i.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i, label %.lr.ph.i.i, !llvm.loop !382

_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i: ; preds = %.noexc367, %.preheader.i.i363
  %.0.lcssa.i.i = phi i32 [ 0, %.preheader.i.i363 ], [ %.1.i.i364, %.noexc367 ]
  %i.qn = add nsw i32 %.0.lcssa.i.i, %.113.i.i
  %i.qo = zext i32 %i.qn to i64
  %i.qp = add nuw nsw i64 %i.qo, %i.eq
  br label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360

_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360: ; preds = %.preheader.i.i356, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i, %.noexc365, %bb.ce
  %.0.i361.sink734 = phi i64 [ %i.qb, %.noexc365 ], [ %i.pn, %bb.ce ], [ %i.qp, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i ], [ %i.px, %.preheader.i.i356 ] ; 3 uses
  %i.qq = and i64 %.0.i361.sink734, 1
  %.not.i10.i = icmp eq i64 %i.qq, 0
  %i.qr = add i64 %.0.i361.sink734, 1
  %i.qs = lshr exact i64 %i.qr, 1
  %i.qt = sub nsw i64 0, %i.qs
  %i.qu = lshr exact i64 %.0.i361.sink734, 1
  %i.qv = select i1 %.not.i10.i, i64 %i.qu, i64 %i.qt
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %.0215584
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = add nsw i64 %i.qx, %i.qv
  %i.qz = load ptr, ptr %i.ep, align 8
  %i.ra = getelementptr [8 x i8], ptr %i.qz, i64 %i.pf
  %i.rb = getelementptr [8 x i8], ptr %i.ra, i64 %.0215584
  store i64 %i.qy, ptr %i.rb, align 8
  %i.rc = add nuw i64 %.0215584, 1                ; 2 uses
  %exitcond636.not = icmp eq i64 %i.rc, %.0251
end_hunk_0
begin_hunk_1_@_ZN5o3dgc13SC3DMCDecoderItE14DecodeIntArrayEPlmmmRKNS_14IndexedFaceSetItEERNS_25O3DGCSC3DMCPredictionModeERKNS_12BinaryStreamE:bb.a
  %i.ak = icmp eq i32 %i.aj, 1                    ; 2 uses
  %i.al = shl nuw i32 1, %.014.i143
  %i.am = zext i1 %i.ak to i32
  %.115.i145 = add nuw nsw i32 %.014.i143, %i.am  ; 3 uses
  %i.an = select i1 %i.ak, i32 %i.al, i32 0
  %.113.i146 = add nsw i32 %i.an, %.012.i144      ; 2 uses
  %.not.i147 = icmp eq i32 %i.aj, 0
  br i1 %.not.i147, label %.preheader.i148, label %bb.m, !llvm.loop !381

.preheader.i148:                                  ; preds = %.noexc156
  %.not1617.i149 = icmp eq i32 %.115.i145, 0
  br i1 %.not1617.i149, label %.loopexit267, label %.lr.ph.i150

.lr.ph.i150:                                      ; preds = %.preheader.i148, %.noexc157
  %.019.i151 = phi i32 [ %.1.i153, %.noexc157 ], [ 0, %.preheader.i148 ]
  %.218.i152 = phi i32 [ %i.ap, %.noexc157 ], [ %.115.i145, %.preheader.i148 ]
  %i.ao = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 4 dereferenceable(4) %10)
          to label %.noexc157 unwind label %.loopexit263

.noexc157:                                        ; preds = %.lr.ph.i150
  %i.ap = add nsw i32 %.218.i152, -1              ; 3 uses
  %i.aq = icmp eq i32 %i.ao, 1
  %i.ar = shl nuw i32 1, %i.ap
  %i.as = select i1 %i.aq, i32 %i.ar, i32 0
  %.1.i153 = or i32 %i.as, %.019.i151             ; 2 uses
  %.not16.i154 = icmp eq i32 %i.ap, 0
  br i1 %.not16.i154, label %.loopexit267, label %.lr.ph.i150, !llvm.loop !382

.loopexit267:                                     ; preds = %.noexc157, %.preheader.i148
  %.0.lcssa.i155 = phi i32 [ 0, %.preheader.i148 ], [ %.1.i153, %.noexc157 ]
  %i.at = add nsw i32 %.0.lcssa.i155, %.113.i146
  br label %bb.p

.loopexit263:                                     ; preds = %.lr.ph.i150
  %lpad.loopexit265 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp264

.loopexit.split-lp264.loopexit:                   ; preds = %bb.m
  %lpad.loopexit268 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp264

.loopexit.split-lp264.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i
  %lpad.loopexit271 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp264

.loopexit.split-lp264.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.preheader274
  %lpad.loopexit275 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp264

.loopexit.split-lp264.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.k
  %lpad.loopexit.split-lp276 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp264

bb.n:                                             ; preds = %bb.e
  %.not126 = icmp eq i32 %i.m, 5
  br i1 %.not126, label %bb.o, label %bb.ba

bb.o:                                             ; preds = %bb.n
  %i.au = add i64 %.neg, 5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit267
  %.0224 = phi i64 [ %i.au, %bb.o ], [ %.neg, %.loopexit267 ] ; 2 uses
  %.0107 = phi i32 [ 0, %bb.o ], [ %i.ai, %.loopexit267 ] ; 3 uses
  %.0106 = phi i32 [ 0, %bb.o ], [ %i.at, %.loopexit267 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.av = add i32 %.0106, 2
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %13, i32 noundef %i.av)
          to label %.preheader262 unwind label %bb.q

.preheader262:                                    ; preds = %bb.p
  %i.aw = icmp sgt i64 %2, 0
  br i1 %i.aw, label %.lr.ph312, label %._crit_edge

.lr.ph312:                                        ; preds = %.preheader262
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4336
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4328
  %.not315 = icmp eq i64 %3, 0                    ; 6 uses
  %i.az = zext i32 %.0106 to i64                  ; 3 uses
  %i.ba = shl nuw i64 %3, 3                       ; 3 uses
  br label %bb.r

._crit_edge:                                      ; preds = %.loopexit258, %.preheader262
  %.1.lcssa = phi i64 [ %.0224, %.preheader262 ], [ %.3, %.loopexit258 ]
  store i64 %.1.lcssa, ptr %0, align 8
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.ba

bb.q:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.r:                                             ; preds = %.lr.ph312, %.loopexit258
  %.0104310 = phi i64 [ 0, %.lr.ph312 ], [ %i.lj, %.loopexit258 ] ; 10 uses
  %.1309 = phi i64 [ %.0224, %.lr.ph312 ], [ %.3, %.loopexit258 ] ; 7 uses
  %i.bc = load ptr, ptr %i.ax, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.0104310 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %.not234 = icmp eq i64 %.0104310, 0             ; 3 uses
  br i1 %.not234, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr i8, ptr %i.bd, i64 -8
  %i.bg = load i64, ptr %i.bf, align 8
  br label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit: ; preds = %bb.r, %bb.s
  %i.bh = phi i64 [ %i.bg, %bb.s ], [ 0, %bb.r ]
  %i.bi = icmp sgt i64 %i.be, %i.bh
  br i1 %i.bi, label %bb.t, label %.critedge.thread

bb.t:                                             ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit
  %i.bj = load i32, ptr %6, align 4
  %.not128 = icmp eq i32 %i.bj, 0
  br i1 %.not128, label %.critedge.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not234, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr i8, ptr %i.bd, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = shl i64 %i.bl, 32
  %i.bn = ashr exact i64 %i.bm, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %bb.u, %bb.v
  %sext = phi i64 [ %i.bn, %bb.v ], [ 0, %bb.u ]  ; 2 uses
  %sext129 = shl i64 %i.be, 32
  %i.bo = ashr exact i64 %sext129, 32             ; 2 uses
  %i.bp = icmp slt i64 %sext, %i.bo
  br i1 %i.bp, label %.lr.ph300, label %.critedge.thread

.lr.ph300:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2
  %.0103299 = phi i64 [ %i.fj, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2 ], [ %sext, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 2 uses
  %.0225298 = phi i64 [ %.2227.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2 ], [ 0, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 12 uses
  %i.bq = load ptr, ptr %i.ay, align 8
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %.0103299
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  br i1 %i.bt, label %.preheader257, label %.critedge

.preheader257:                                    ; preds = %.lr.ph300
  %.idx = mul nuw nsw i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 3 uses
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = zext i16 %i.bv to i64                   ; 5 uses
  %i.bx = icmp samesign ugt i64 %.0104310, %i.bw
  br i1 %i.bx, label %bb.w, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

bb.w:                                             ; preds = %.preheader257
  %.not.i160 = icmp eq i64 %.0225298, 0
  br i1 %.not.i160, label %.thread34.thread.i, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %bb.w, %bb.z
  %.02543.i = phi i64 [ %i.cr, %bb.z ], [ 0, %bb.w ] ; 7 uses
  %i.by = getelementptr inbounds nuw [280 x i8], ptr %8, i64 %.02543.i ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8            ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.bw
  br i1 %i.cb, label %bb.x, label %.split.i

bb.x:                                             ; preds = %.lr.ph.i161
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cd = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.x
  %i.cf = load i64, ptr %i.by, align 8            ; 2 uses
  %i.cg = icmp eq i64 %i.cf, -1
  br i1 %i.cg, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.split31.i

.split.i:                                         ; preds = %.lr.ph.i161
  %i.ch = icmp sgt i64 %i.ca, %i.bw
  br i1 %i.ch, label %bb.y, label %bb.z

.split31.i:                                       ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i
  %i.ci = icmp sgt i64 %i.cf, -1
  br i1 %i.ci, label %bb.y, label %bb.z

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.x
  %i.cj = icmp sgt i64 %i.cd, -1
  br i1 %i.cj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.ck = icmp eq i64 %.0225298, 1
  %spec.select = select i1 %i.ck, i64 2, i64 %.0225298 ; 4 uses
  %.044.i = add i64 %spec.select, -1
  %i.cl = icmp ugt i64 %.044.i, %.02543.i
  br i1 %i.cl, label %.lr.ph47.preheader.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

.lr.ph47.preheader.i:                             ; preds = %bb.y
  %i.cm = mul nuw i64 %.02543.i, 280
  %i.cn = getelementptr i8, ptr %8, i64 %i.cm     ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.cn, i64 280
  %i.co = xor i64 %.02543.i, -1
  %i.cp = add i64 %spec.select, %i.co
  %i.cq = mul nuw i64 %i.cp, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %i.cn, i64 %i.cq, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

bb.z:                                             ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.cr = add nuw i64 %.02543.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cr, %.0225298
  br i1 %exitcond.not.i, label %.thread34.i, label %.lr.ph.i161, !llvm.loop !386

.thread34.i:                                      ; preds = %bb.z
  %i.cs = icmp eq i64 %.0225298, 1
  br i1 %i.cs, label %.thread34.thread.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

.thread34.thread.i:                               ; preds = %.thread34.i, %bb.w
  %i.ct = add nuw nsw i64 %.0225298, 1
  %i.cu = getelementptr inbounds nuw [280 x i8], ptr %8, i64 %.0225298
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit: ; preds = %bb.y, %.lr.ph47.preheader.i, %.thread34.thread.i
  %.4 = phi i64 [ %i.ct, %.thread34.thread.i ], [ %spec.select, %.lr.ph47.preheader.i ], [ %spec.select, %bb.y ] ; 2 uses
  %.lcssa.sink.i = phi ptr [ %i.cu, %.thread34.thread.i ], [ %i.by, %.lr.ph47.preheader.i ], [ %i.by, %bb.y ] ; 2 uses
  %.1.ph.i = phi i64 [ %.0225298, %.thread34.thread.i ], [ %.02543.i, %.lr.ph47.preheader.i ], [ %.02543.i, %bb.y ] ; 2 uses
  %.sroa.7.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i, i8 -1, i64 16, i1 false)
  store i64 %i.bw, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx, align 8
  %.not130 = icmp eq i64 %.1.ph.i, 4294967295
  %brmerge = or i1 %.not130, %.not315
  br i1 %brmerge, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit
  %i.cv = mul i64 %4, %i.bw
  %i.cw = getelementptr [8 x i8], ptr %1, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [280 x i8], ptr %8, i64 %.1.ph.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cy, ptr align 8 %i.cw, i64 %i.ba, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, %.lr.ph, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, %.thread34.i, %.preheader257
  %.2227 = phi i64 [ %.4, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit ], [ %.4, %.lr.ph ], [ %.0225298, %.preheader257 ], [ %.0225298, %.thread34.i ], [ %.0225298, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i ] ; 11 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = zext i16 %i.da to i64                   ; 5 uses
  %i.dc = icmp samesign ugt i64 %.0104310, %i.db
  br i1 %i.dc, label %bb.aa, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1

bb.aa:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.not.i160.1 = icmp eq i64 %.2227, 0
  br i1 %.not.i160.1, label %.thread34.thread.i.1, label %.lr.ph.i161.1

.lr.ph.i161.1:                                    ; preds = %bb.aa, %bb.ac
  %.02543.i.1 = phi i64 [ %i.dp, %bb.ac ], [ 0, %bb.aa ] ; 7 uses
  %i.dd = getelementptr inbounds nuw [280 x i8], ptr %8, i64 %.02543.i.1 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i64, ptr %i.de, align 8            ; 2 uses
  %i.dg = icmp eq i64 %i.df, %i.db
  br i1 %i.dg, label %bb.ab, label %.split.i.1

.split.i.1:                                       ; preds = %.lr.ph.i161.1
  %i.dh = icmp sgt i64 %i.df, %i.db
  br i1 %i.dh, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i161.1
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dj = load i64, ptr %i.di, align 8            ; 2 uses
  %i.dk = icmp eq i64 %i.dj, -1
  br i1 %i.dk, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1:    ; preds = %bb.ab
  %i.dl = icmp sgt i64 %i.dj, -1
  br i1 %i.dl, label %bb.ad, label %bb.ac

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1:    ; preds = %bb.ab
  %i.dm = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.dn = icmp eq i64 %i.dm, -1
  br i1 %i.dn, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %.split31.i.1

.split31.i.1:                                     ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1
  %i.do = icmp sgt i64 %i.dm, -1
  br i1 %i.do, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.split31.i.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1, %.split.i.1
  %i.dp = add nuw i64 %.02543.i.1, 1              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.dp, %.2227
  br i1 %exitcond.not.i.1, label %.thread34.i.1, label %.lr.ph.i161.1, !llvm.loop !386

.thread34.i.1:                                    ; preds = %bb.ac
  %i.dq = icmp eq i64 %.2227, 1
  br i1 %i.dq, label %.thread34.thread.i.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1

bb.ad:                                            ; preds = %.split31.i.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1, %.split.i.1
  %i.dr = icmp eq i64 %.2227, 1
  %spec.select.1 = select i1 %i.dr, i64 2, i64 %.2227 ; 4 uses
  %.044.i.1 = add i64 %spec.select.1, -1
  %i.ds = icmp ugt i64 %.044.i.1, %.02543.i.1
  br i1 %i.ds, label %.lr.ph47.preheader.i.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1

.lr.ph47.preheader.i.1:                           ; preds = %bb.ad
  %i.dt = mul nuw i64 %.02543.i.1, 280
  %i.du = getelementptr i8, ptr %8, i64 %i.dt     ; 2 uses
  %scevgep.i.1 = getelementptr i8, ptr %i.du, i64 280
  %i.dv = xor i64 %.02543.i.1, -1
  %i.dw = add i64 %spec.select.1, %i.dv
  %i.dx = mul nuw i64 %i.dw, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i.1, ptr align 8 %i.du, i64 %i.dx, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1

.thread34.thread.i.1:                             ; preds = %.thread34.i.1, %bb.aa
  %i.dy = add nuw nsw i64 %.2227, 1
  %i.dz = getelementptr inbounds nuw [280 x i8], ptr %8, i64 %.2227
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1: ; preds = %.thread34.thread.i.1, %.lr.ph47.preheader.i.1, %bb.ad
  %.4.1 = phi i64 [ %i.dy, %.thread34.thread.i.1 ], [ %spec.select.1, %.lr.ph47.preheader.i.1 ], [ %spec.select.1, %bb.ad ] ; 2 uses
  %.lcssa.sink.i.1 = phi ptr [ %i.dz, %.thread34.thread.i.1 ], [ %i.dd, %.lr.ph47.preheader.i.1 ], [ %i.dd, %bb.ad ] ; 2 uses
  %.1.ph.i.1 = phi i64 [ %.2227, %.thread34.thread.i.1 ], [ %.02543.i.1, %.lr.ph47.preheader.i.1 ], [ %.02543.i.1, %bb.ad ] ; 2 uses
  %.sroa.7.0..lcssa.sink.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i.1, i8 -1, i64 16, i1 false)
  store i64 %i.db, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx.1, align 8
  %.not130.1 = icmp eq i64 %.1.ph.i.1, 4294967295
  %brmerge.1 = or i1 %.not130.1, %.not315
  br i1 %brmerge.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1
  %i.ea = mul i64 %4, %i.db
  %i.eb = getelementptr [8 x i8], ptr %1, i64 %i.ea
  %i.ec = getelementptr inbounds nuw [280 x i8], ptr %8, i64 %.1.ph.i.1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr align 8 %i.eb, i64 %i.ba, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1, %.lr.ph.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1, %.thread34.i.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.2227.1 = phi i64 [ %.4.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1 ], [ %.4.1, %.lr.ph.1 ], [ %.2227, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ], [ %.2227, %.thread34.i.1 ], [ %.2227, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1 ] ; 11 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.ef = load i16, ptr %i.ee, align 2
  %i.eg = zext i16 %i.ef to i64                   ; 5 uses
  %i.eh = icmp samesign ugt i64 %.0104310, %i.eg
  br i1 %i.eh, label %bb.ae, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2

bb.ae:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1
  %.not.i160.2 = icmp eq i64 %.2227.1, 0
  br i1 %.not.i160.2, label %.thread34.thread.i.2, label %.lr.ph.i161.2

.lr.ph.i161.2:                                    ; preds = %bb.ae, %bb.ag
  %.02543.i.2 = phi i64 [ %i.eu, %bb.ag ], [ 0, %bb.ae ] ; 7 uses
  %i.ei = getelementptr inbounds nuw [280 x i8], ptr %8, i64 %.02543.i.2 ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8            ; 2 uses
  %i.el = icmp eq i64 %i.ek, %i.eg
  br i1 %i.el, label %bb.af, label %.split.i.2

.split.i.2:                                       ; preds = %.lr.ph.i161.2
  %i.em = icmp sgt i64 %i.ek, %i.eg
  br i1 %i.em, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i161.2
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.eo = load i64, ptr %i.en, align 8            ; 2 uses
  %i.ep = icmp eq i64 %i.eo, -1
  br i1 %i.ep, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2:    ; preds = %bb.af
  %i.eq = icmp sgt i64 %i.eo, -1
  br i1 %i.eq, label %bb.ah, label %bb.ag

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2:    ; preds = %bb.af
  %i.er = load i64, ptr %i.ei, align 8            ; 2 uses
  %i.es = icmp eq i64 %i.er, -1
  br i1 %i.es, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %.split31.i.2

.split31.i.2:                                     ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2
  %i.et = icmp sgt i64 %i.er, -1
  br i1 %i.et, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.split31.i.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2, %.split.i.2
  %i.eu = add nuw i64 %.02543.i.2, 1              ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %i.eu, %.2227.1
  br i1 %exitcond.not.i.2, label %.thread34.i.2, label %.lr.ph.i161.2, !llvm.loop !386

.thread34.i.2:                                    ; preds = %bb.ag
  %i.ev = icmp eq i64 %.2227.1, 1
  br i1 %i.ev, label %.thread34.thread.i.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2

bb.ah:                                            ; preds = %.split31.i.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2, %.split.i.2
  %i.ew = icmp eq i64 %.2227.1, 1
  %spec.select.2 = select i1 %i.ew, i64 2, i64 %.2227.1 ; 4 uses
  %.044.i.2 = add i64 %spec.select.2, -1
  %i.ex = icmp ugt i64 %.044.i.2, %.02543.i.2
  br i1 %i.ex, label %.lr.ph47.preheader.i.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2

.lr.ph47.preheader.i.2:                           ; preds = %bb.ah
  %i.ey = mul nuw i64 %.02543.i.2, 280
  %i.ez = getelementptr i8, ptr %8, i64 %i.ey     ; 2 uses
  %scevgep.i.2 = getelementptr i8, ptr %i.ez, i64 280
  %i.fa = xor i64 %.02543.i.2, -1
  %i.fb = add i64 %spec.select.2, %i.fa
  %i.fc = mul nuw i64 %i.fb, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i.2, ptr align 8 %i.ez, i64 %i.fc, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2

.thread34.thread.i.2:                             ; preds = %.thread34.i.2, %bb.ae
  %i.fd = add nuw nsw i64 %.2227.1, 1
  %i.fe = getelementptr inbounds nuw [280 x i8], ptr %8, i64 %.2227.1
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2: ; preds = %.thread34.thread.i.2, %.lr.ph47.preheader.i.2, %bb.ah
  %.4.2 = phi i64 [ %i.fd, %.thread34.thread.i.2 ], [ %spec.select.2, %.lr.ph47.preheader.i.2 ], [ %spec.select.2, %bb.ah ] ; 2 uses
  %.lcssa.sink.i.2 = phi ptr [ %i.fe, %.thread34.thread.i.2 ], [ %i.ei, %.lr.ph47.preheader.i.2 ], [ %i.ei, %bb.ah ] ; 2 uses
  %.1.ph.i.2 = phi i64 [ %.2227.1, %.thread34.thread.i.2 ], [ %.02543.i.2, %.lr.ph47.preheader.i.2 ], [ %.02543.i.2, %bb.ah ] ; 2 uses
  %.sroa.7.0..lcssa.sink.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i.2, i8 -1, i64 16, i1 false)
  store i64 %i.eg, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx.2, align 8
  %.not130.2 = icmp eq i64 %.1.ph.i.2, 4294967295
  %brmerge.2 = or i1 %.not130.2, %.not315
  br i1 %brmerge.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2
  %i.ff = mul i64 %4, %i.eg
  %i.fg = getelementptr [8 x i8], ptr %1, i64 %i.ff
  %i.fh = getelementptr inbounds nuw [280 x i8], ptr %8, i64 %.1.ph.i.2
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fi, ptr align 8 %i.fg, i64 %i.ba, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2, %.lr.ph.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2, %.thread34.i.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1
  %.2227.2 = phi i64 [ %.4.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2 ], [ %.4.2, %.lr.ph.2 ], [ %.2227.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1 ], [ %.2227.1, %.thread34.i.2 ], [ %.2227.1, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2 ] ; 2 uses
  %i.fj = add nsw i64 %.0103299, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.fj, %i.bo
  br i1 %exitcond.not, label %.critedge, label %.lr.ph300, !llvm.loop !402

.critedge:                                        ; preds = %.lr.ph300, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2
  %.0225.lcssa.ph = phi i64 [ %.0225298, %.lr.ph300 ], [ %.2227.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2 ]
  %i.fk = icmp ugt i64 %.0225.lcssa.ph, 1
  br i1 %i.fk, label %bb.ai, label %.critedge.thread

bb.ai:                                            ; preds = %.critedge
  %i.fl = load i32, ptr %i.d, align 8
  %i.fm = icmp eq i32 %i.fl, 1
  br i1 %i.fm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fn = add i64 %.1309, 1
  %i.fo = load ptr, ptr %7, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.1309
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = zext i8 %i.fq to i64
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.fs = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 8 dereferenceable(52) %12)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ft = zext i32 %i.fs to i64
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp250

bb.an:                                            ; preds = %bb.al, %bb.aj
  %.2 = phi i64 [ %i.fn, %bb.aj ], [ %.1309, %bb.al ] ; 2 uses
  %.0100 = phi i64 [ %i.fr, %bb.aj ], [ %i.ft, %bb.al ]
  br i1 %.not315, label %.loopexit258, label %.lr.ph304

.lr.ph304:                                        ; preds = %bb.an
  %i.fv = getelementptr inbounds nuw [280 x i8], ptr %8, i64 %.0100
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = mul i64 %.0104310, %4
  %i.fy = getelementptr [8 x i8], ptr %1, i64 %i.fx
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph304, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit
  %.099303 = phi i64 [ 0, %.lr.ph304 ], [ %i.ht, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit ] ; 3 uses
  %i.fz = load i32, ptr %i.d, align 8
  %i.ga = icmp eq i32 %i.fz, 1
  br i1 %i.ga, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gb = load i64, ptr %0, align 8               ; 2 uses
  %i.gc = add i64 %i.gb, 1                        ; 2 uses
  store i64 %i.gc, ptr %0, align 8
  %i.gd = load ptr, ptr %7, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gb
  %i.gf = load i8, ptr %i.ge, align 1             ; 2 uses
  %i.gg = zext i8 %i.gf to i64
  %i.gh = icmp eq i8 %i.gf, 127
  br i1 %i.gh, label %.preheader.i.i, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit

.preheader.i.i:                                   ; preds = %bb.ap, %.preheader.i.i
  %i.gi = phi i64 [ %i.gj, %.preheader.i.i ], [ %i.gc, %bb.ap ] ; 2 uses
  %.09.i.i = phi i64 [ %i.gq, %.preheader.i.i ], [ 127, %bb.ap ]
  %.0.i.i = phi i64 [ %i.gr, %.preheader.i.i ], [ 0, %bb.ap ] ; 2 uses
  %i.gj = add i64 %i.gi, 1                        ; 2 uses
  store i64 %i.gj, ptr %0, align 8
  %i.gk = load ptr, ptr %7, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gi
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = zext i8 %i.gm to i64                    ; 2 uses
  %i.go = lshr i64 %i.gn, 1
  %i.gp = shl i64 %i.go, %.0.i.i
  %i.gq = add i64 %i.gp, %.09.i.i                 ; 2 uses
  %i.gr = add i64 %.0.i.i, 6
  %i.gs = and i64 %i.gn, 1
  %.not.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit, label %.preheader.i.i, !llvm.loop !383

.loopexit249:                                     ; preds = %.lr.ph.i.i
  %lpad.loopexit251 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp250

.loopexit.split-lp250.loopexit:                   ; preds = %.preheader253
  %lpad.loopexit254 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp250

.loopexit.split-lp250.loopexit.split-lp:          ; preds = %bb.aq
  %lpad.loopexit.split-lp255 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp250

bb.aq:                                            ; preds = %bb.ao
  %i.gt = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 8 dereferenceable(52) %13)
          to label %.noexc167 unwind label %.loopexit.split-lp250.loopexit.split-lp ; 2 uses

.noexc167:                                        ; preds = %bb.aq
  %i.gu = zext i32 %i.gt to i64
  %i.gv = icmp eq i32 %.0106, %i.gt
  br i1 %i.gv, label %.preheader253, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit

.preheader253:                                    ; preds = %.noexc167, %.noexc168
  %.014.i.i = phi i32 [ %.115.i.i, %.noexc168 ], [ %.0107, %.noexc167 ] ; 2 uses
  %.012.i.i = phi i32 [ %.113.i.i, %.noexc168 ], [ 0, %.noexc167 ]
  %i.gw = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 4 dereferenceable(20) %11)
          to label %.noexc168 unwind label %.loopexit.split-lp250.loopexit ; 2 uses

.noexc168:                                        ; preds = %.preheader253
  %i.gx = icmp eq i32 %i.gw, 1                    ; 2 uses
  %i.gy = shl nuw i32 1, %.014.i.i
  %i.gz = zext i1 %i.gx to i32
  %.115.i.i = add nsw i32 %.014.i.i, %i.gz        ; 3 uses
  %i.ha = select i1 %i.gx, i32 %i.gy, i32 0
  %.113.i.i = add nsw i32 %i.ha, %.012.i.i        ; 2 uses
  %.not.i.i164 = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i164, label %.preheader.i.i165, label %.preheader253, !llvm.loop !381

.preheader.i.i165:                                ; preds = %.noexc168
  %.not1617.i.i = icmp eq i32 %.115.i.i, 0
  br i1 %.not1617.i.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i165, %.noexc169
  %.019.i.i = phi i32 [ %.1.i.i166, %.noexc169 ], [ 0, %.preheader.i.i165 ]
  %.218.i.i = phi i32 [ %i.hc, %.noexc169 ], [ %.115.i.i, %.preheader.i.i165 ]
  %i.hb = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 4 dereferenceable(4) %10)
          to label %.noexc169 unwind label %.loopexit249

.noexc169:                                        ; preds = %.lr.ph.i.i
  %i.hc = add nsw i32 %.218.i.i, -1               ; 3 uses
  %i.hd = icmp eq i32 %i.hb, 1
  %i.he = shl nuw i32 1, %i.hc
  %i.hf = select i1 %i.hd, i32 %i.he, i32 0
  %.1.i.i166 = or i32 %i.hf, %.019.i.i            ; 2 uses
  %.not16.i.i = icmp eq i32 %i.hc, 0
  br i1 %.not16.i.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i, label %.lr.ph.i.i, !llvm.loop !382

_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i: ; preds = %.noexc169, %.preheader.i.i165
  %.0.lcssa.i.i = phi i32 [ 0, %.preheader.i.i165 ], [ %.1.i.i166, %.noexc169 ]
  %i.hg = add nsw i32 %.0.lcssa.i.i, %.113.i.i
  %i.hh = zext i32 %i.hg to i64
  %i.hi = add nuw nsw i64 %i.hh, %i.az
  br label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit

_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit:   ; preds = %.preheader.i.i, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i, %.noexc167, %bb.ap
  %.0.i163.sink388 = phi i64 [ %i.gu, %.noexc167 ], [ %i.gg, %bb.ap ], [ %i.hi, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i ], [ %i.gq, %.preheader.i.i ] ; 3 uses
  %i.hj = and i64 %.0.i163.sink388, 1
  %.not.i10.i = icmp eq i64 %i.hj, 0
  %i.hk = add i64 %.0.i163.sink388, 1
  %i.hl = lshr exact i64 %i.hk, 1
  %i.hm = sub nsw i64 0, %i.hl
  %i.hn = lshr exact i64 %.0.i163.sink388, 1
  %i.ho = select i1 %.not.i10.i, i64 %i.hn, i64 %i.hm
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.099303
  %i.hq = load i64, ptr %i.hp, align 8
  %i.hr = add nsw i64 %i.hq, %i.ho
  %i.hs = getelementptr [8 x i8], ptr %i.fy, i64 %.099303
  store i64 %i.hr, ptr %i.hs, align 8
  %i.ht = add nuw i64 %.099303, 1                 ; 2 uses
  %exitcond329.not = icmp eq i64 %i.ht, %3
  br i1 %exitcond329.not, label %.loopexit258, label %bb.ao, !llvm.loop !403

end_hunk_1
begin_hunk_2_@_ZN5o3dgc13SC3DMCEncoderItE16EncodeFloatArrayEPKfmmmS3_S3_mRKNS_14IndexedFaceSetItEENS_25O3DGCSC3DMCPredictionModeERNS_12BinaryStreamE:bb.a
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
  %i.mo = mul nuw i64 %.02543.i, 280
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
  br i1 %exitcond.not.i379, label %.thread34.i, label %.lr.ph.i378, !llvm.loop !386

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
  br i1 %min.iters.check998, label %scalar.ph997.preheader, label %vector.memcheck992

vector.memcheck992:                               ; preds = %.lr.ph632
  %i.ne = ptrtoaddr ptr %i.mx to i64              ; 3 uses
  %i.nf = mul i64 %.1.ph.i, 280                   ; 3 uses
  %i.ng = add i64 %i.ir, %i.nf
  %i.nh = mul i64 %i.is, %.1274.2
  %i.ni = add i64 %i.nh, %i.ne
  %i.nj = sub i64 %i.ni, %i.ng
  %diff.check993 = icmp ugt i64 %i.nj, -32
  %i.nk = add i64 %i.it, %i.nf
  %i.nl = add i64 %i.ku, %i.ne
  %i.nm = sub i64 %i.nl, %i.nk
  %diff.check994 = icmp ugt i64 %i.nm, -32
  %conflict.rdx = or i1 %diff.check993, %diff.check994
  %i.nn = add i64 %i.iv, %i.nf
  %i.no = add i64 %i.kv, %i.ne
  %i.np = sub i64 %i.no, %i.nn
  %diff.check995 = icmp ugt i64 %i.np, -32
  %conflict.rdx996 = or i1 %conflict.rdx, %diff.check995
  br i1 %conflict.rdx996, label %scalar.ph997.preheader, label %vector.body1001

vector.body1001:                                  ; preds = %vector.memcheck992, %vector.body1001
  %index1002 = phi i64 [ %index.next1009, %vector.body1001 ], [ 0, %vector.memcheck992 ] ; 5 uses
  %i.nq = getelementptr [8 x i8], ptr %i.my, i64 %index1002 ; 2 uses
  %i.nr = getelementptr i8, ptr %i.nq, i64 16
  %wide.load1003 = load <2 x i64>, ptr %i.nq, align 8
  %wide.load1004 = load <2 x i64>, ptr %i.nr, align 8
  %i.ns = getelementptr [8 x i8], ptr %i.mz, i64 %index1002 ; 2 uses
  %i.nt = getelementptr i8, ptr %i.ns, i64 16
  %wide.load1005 = load <2 x i64>, ptr %i.ns, align 8
  %wide.load1006 = load <2 x i64>, ptr %i.nt, align 8
  %i.nu = add nsw <2 x i64> %wide.load1005, %wide.load1003
  %i.nv = add nsw <2 x i64> %wide.load1006, %wide.load1004
  %i.nw = getelementptr [8 x i8], ptr %i.nb, i64 %index1002 ; 2 uses
  %i.nx = getelementptr i8, ptr %i.nw, i64 16
  %wide.load1007 = load <2 x i64>, ptr %i.nw, align 8
  %wide.load1008 = load <2 x i64>, ptr %i.nx, align 8
  %i.ny = sub <2 x i64> %i.nu, %wide.load1007
  %i.nz = sub <2 x i64> %i.nv, %wide.load1008
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %index1002 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  store <2 x i64> %i.ny, ptr %i.oa, align 8
  store <2 x i64> %i.nz, ptr %i.ob, align 8
  %index.next1009 = add nuw i64 %index1002, 4     ; 2 uses
  %i.oc = icmp eq i64 %index.next1009, %n.vec1000
  br i1 %i.oc, label %middle.block1010, label %vector.body1001, !llvm.loop !960

middle.block1010:                                 ; preds = %vector.body1001
  br i1 %cmp.n1011, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph997.preheader

scalar.ph997.preheader:                           ; preds = %vector.memcheck992, %.lr.ph632, %middle.block1010
  %.0269631.ph = phi i64 [ 0, %vector.memcheck992 ], [ 0, %.lr.ph632 ], [ %n.vec1000, %middle.block1010 ] ; 7 uses
  %.neg = or disjoint i64 %.0269631.ph, 1
  br i1 %lcmp.mod1057.not, label %scalar.ph997.prol.loopexit, label %scalar.ph997.prol

scalar.ph997.prol:                                ; preds = %scalar.ph997.preheader
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
  br label %scalar.ph997.prol.loopexit

scalar.ph997.prol.loopexit:                       ; preds = %scalar.ph997.prol, %scalar.ph997.preheader
  %.0269631.unr = phi i64 [ %.0269631.ph, %scalar.ph997.preheader ], [ %i.om, %scalar.ph997.prol ]
  %i.on = icmp eq i64 %3, %.neg
  br i1 %i.on, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph997

scalar.ph997:                                     ; preds = %scalar.ph997.prol.loopexit, %scalar.ph997
  %.0269631 = phi i64 [ %i.ph, %scalar.ph997 ], [ %.0269631.unr, %scalar.ph997.prol.loopexit ] ; 6 uses
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
  br i1 %exitcond716.not.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph997, !llvm.loop !961

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, %scalar.ph997.prol.loopexit, %scalar.ph997, %middle.block1010, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, %.thread34.i, %bb.bc
  %.2 = phi i64 [ %.9, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit ], [ %.9, %middle.block1010 ], [ %.1538633, %bb.bc ], [ %.1538633, %.thread34.i ], [ %.9, %scalar.ph997.prol.loopexit ], [ %.9, %scalar.ph997 ], [ %.1538633, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i ] ; 2 uses
  %i.pi = add nsw i64 %.0275634, 1                ; 2 uses
  %exitcond717.not = icmp eq i64 %i.pi, %i.kq
  br i1 %exitcond717.not, label %.thread543, label %bb.bc, !llvm.loop !962

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
  %i.qd = mul nuw i64 %.02543.i382, 280
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
  br i1 %exitcond.not.i384, label %.thread34.i385, label %.lr.ph.i381, !llvm.loop !386

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
  br i1 %min.iters.check981, label %scalar.ph980.preheader, label %vector.memcheck978

vector.memcheck978:                               ; preds = %.lr.ph638
  %i.qr = ptrtoaddr ptr %i.qm to i64
  %i.qs = mul i64 %.1.ph.i390, 280
  %i.qt = add i64 %i.ip, %i.qs
  %i.qu = mul i64 %i.iq, %i.pl
  %i.qv = add i64 %i.qu, %i.qr
  %i.qw = sub i64 %i.qv, %i.qt
  %diff.check979 = icmp ugt i64 %i.qw, -32
  br i1 %diff.check979, label %scalar.ph980.preheader, label %vector.body984

vector.body984:                                   ; preds = %vector.memcheck978, %vector.body984
  %index985 = phi i64 [ %index.next988, %vector.body984 ], [ 0, %vector.memcheck978 ] ; 3 uses
  %i.qx = getelementptr [8 x i8], ptr %i.qo, i64 %index985 ; 2 uses
  %i.qy = getelementptr i8, ptr %i.qx, i64 16
  %wide.load986 = load <2 x i64>, ptr %i.qx, align 8
  %wide.load987 = load <2 x i64>, ptr %i.qy, align 8
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %index985 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  store <2 x i64> %wide.load986, ptr %i.qz, align 8
  store <2 x i64> %wide.load987, ptr %i.ra, align 8
  %index.next988 = add nuw i64 %index985, 4       ; 2 uses
  %i.rb = icmp eq i64 %index.next988, %n.vec983
  br i1 %i.rb, label %middle.block989, label %vector.body984, !llvm.loop !963

middle.block989:                                  ; preds = %vector.body984
  br i1 %cmp.n990, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread, label %scalar.ph980.preheader

scalar.ph980.preheader:                           ; preds = %vector.memcheck978, %.lr.ph638, %middle.block989
  %.0267637.ph = phi i64 [ 0, %vector.memcheck978 ], [ 0, %.lr.ph638 ], [ %n.vec983, %middle.block989 ] ; 3 uses
  br i1 %lcmp.mod1059.not, label %scalar.ph980.prol.loopexit, label %scalar.ph980.prol

scalar.ph980.prol:                                ; preds = %scalar.ph980.preheader, %scalar.ph980.prol
  %.0267637.prol = phi i64 [ %i.rf, %scalar.ph980.prol ], [ %.0267637.ph, %scalar.ph980.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph980.prol ], [ 0, %scalar.ph980.preheader ]
  %i.rc = getelementptr [8 x i8], ptr %i.qo, i64 %.0267637.prol
  %i.rd = load i64, ptr %i.rc, align 8
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %.0267637.prol
  store i64 %i.rd, ptr %i.re, align 8
  %i.rf = add nuw i64 %.0267637.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1058
  br i1 %prol.iter.cmp.not, label %scalar.ph980.prol.loopexit, label %scalar.ph980.prol, !llvm.loop !964

scalar.ph980.prol.loopexit:                       ; preds = %scalar.ph980.prol, %scalar.ph980.preheader
  %.0267637.unr = phi i64 [ %.0267637.ph, %scalar.ph980.preheader ], [ %i.rf, %scalar.ph980.prol ]
  %i.rg = sub i64 %.0267637.ph, %3
  %i.rh = icmp ugt i64 %i.rg, -4
  br i1 %i.rh, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread, label %scalar.ph980

scalar.ph980:                                     ; preds = %scalar.ph980.prol.loopexit, %scalar.ph980
  %.0267637 = phi i64 [ %i.rx, %scalar.ph980 ], [ %.0267637.unr, %scalar.ph980.prol.loopexit ] ; 6 uses
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
  br i1 %exitcond718.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread, label %scalar.ph980, !llvm.loop !965

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396, %scalar.ph980.prol.loopexit, %scalar.ph980, %middle.block989, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398, %.thread34.i385, %.thread543
  %.6 = phi i64 [ %.12, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398 ], [ %.12, %middle.block989 ], [ %.4, %.thread543 ], [ %.4, %.thread34.i385 ], [ %.12, %scalar.ph980.prol.loopexit ], [ %.12, %scalar.ph980 ], [ %.4, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396 ] ; 11 uses
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
  br i1 %exitcond.not.i384.1, label %.thread34.i385.1, label %.lr.ph.i381.1, !llvm.loop !386

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
  %i.su = mul nuw i64 %.02543.i382.1, 280
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
  br i1 %min.iters.check967, label %scalar.ph966.preheader, label %vector.memcheck964

vector.memcheck964:                               ; preds = %.lr.ph638.1
  %i.tg = ptrtoaddr ptr %i.tb to i64
  %i.th = mul i64 %.1.ph.i390.1, 280
  %i.ti = add i64 %i.in, %i.th
  %i.tj = mul i64 %i.io, %i.sa
  %i.tk = add i64 %i.tj, %i.tg
  %i.tl = sub i64 %i.tk, %i.ti
  %diff.check965 = icmp ugt i64 %i.tl, -32
  br i1 %diff.check965, label %scalar.ph966.preheader, label %vector.body970

vector.body970:                                   ; preds = %vector.memcheck964, %vector.body970
  %index971 = phi i64 [ %index.next974, %vector.body970 ], [ 0, %vector.memcheck964 ] ; 3 uses
  %i.tm = getelementptr [8 x i8], ptr %i.td, i64 %index971 ; 2 uses
  %i.tn = getelementptr i8, ptr %i.tm, i64 16
  %wide.load972 = load <2 x i64>, ptr %i.tm, align 8
  %wide.load973 = load <2 x i64>, ptr %i.tn, align 8
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %index971 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  store <2 x i64> %wide.load972, ptr %i.to, align 8
  store <2 x i64> %wide.load973, ptr %i.tp, align 8
  %index.next974 = add nuw i64 %index971, 4       ; 2 uses
  %i.tq = icmp eq i64 %index.next974, %n.vec969
  br i1 %i.tq, label %middle.block975, label %vector.body970, !llvm.loop !966

middle.block975:                                  ; preds = %vector.body970
  br i1 %cmp.n976, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1, label %scalar.ph966.preheader

scalar.ph966.preheader:                           ; preds = %vector.memcheck964, %.lr.ph638.1, %middle.block975
  %.0267637.1.ph = phi i64 [ 0, %vector.memcheck964 ], [ 0, %.lr.ph638.1 ], [ %n.vec969, %middle.block975 ] ; 3 uses
  br i1 %lcmp.mod1063.not, label %scalar.ph966.prol.loopexit, label %scalar.ph966.prol

scalar.ph966.prol:                                ; preds = %scalar.ph966.preheader, %scalar.ph966.prol
  %.0267637.1.prol = phi i64 [ %i.tu, %scalar.ph966.prol ], [ %.0267637.1.ph, %scalar.ph966.preheader ] ; 3 uses
  %prol.iter1064 = phi i64 [ %prol.iter1064.next, %scalar.ph966.prol ], [ 0, %scalar.ph966.preheader ]
  %i.tr = getelementptr [8 x i8], ptr %i.td, i64 %.0267637.1.prol
  %i.ts = load i64, ptr %i.tr, align 8
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %.0267637.1.prol
  store i64 %i.ts, ptr %i.tt, align 8
  %i.tu = add nuw i64 %.0267637.1.prol, 1         ; 2 uses
  %prol.iter1064.next = add i64 %prol.iter1064, 1 ; 2 uses
  %prol.iter1064.cmp.not = icmp eq i64 %prol.iter1064.next, %xtraiter1062
  br i1 %prol.iter1064.cmp.not, label %scalar.ph966.prol.loopexit, label %scalar.ph966.prol, !llvm.loop !967

scalar.ph966.prol.loopexit:                       ; preds = %scalar.ph966.prol, %scalar.ph966.preheader
  %.0267637.1.unr = phi i64 [ %.0267637.1.ph, %scalar.ph966.preheader ], [ %i.tu, %scalar.ph966.prol ]
  %i.tv = sub i64 %.0267637.1.ph, %3
  %i.tw = icmp ugt i64 %i.tv, -4
  br i1 %i.tw, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1, label %scalar.ph966

scalar.ph966:                                     ; preds = %scalar.ph966.prol.loopexit, %scalar.ph966
  %.0267637.1 = phi i64 [ %i.um, %scalar.ph966 ], [ %.0267637.1.unr, %scalar.ph966.prol.loopexit ] ; 6 uses
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
  br i1 %exitcond718.1.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1, label %scalar.ph966, !llvm.loop !968

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.1, %scalar.ph966.prol.loopexit, %scalar.ph966, %middle.block975, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.1, %.thread34.i385.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread
  %.6.1 = phi i64 [ %.12.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.1 ], [ %.12.1, %middle.block975 ], [ %.6, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread ], [ %.6, %.thread34.i385.1 ], [ %.12.1, %scalar.ph966.prol.loopexit ], [ %.12.1, %scalar.ph966 ], [ %.6, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.1 ] ; 11 uses
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
  br i1 %exitcond.not.i384.2, label %.thread34.i385.2, label %.lr.ph.i381.2, !llvm.loop !386

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
  %i.vj = mul nuw i64 %.02543.i382.2, 280
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
  br i1 %min.iters.check953, label %scalar.ph952.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph638.2
  %i.vv = ptrtoaddr ptr %i.vq to i64
  %i.vw = mul i64 %.1.ph.i390.2, 280
  %i.vx = add i64 %i.il, %i.vw
  %i.vy = mul i64 %i.im, %i.up
  %i.vz = add i64 %i.vy, %i.vv
  %i.wa = sub i64 %i.vz, %i.vx
  %diff.check = icmp ugt i64 %i.wa, -32
  br i1 %diff.check, label %scalar.ph952.preheader, label %vector.body956

vector.body956:                                   ; preds = %vector.memcheck, %vector.body956
  %index957 = phi i64 [ %index.next960, %vector.body956 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.wb = getelementptr [8 x i8], ptr %i.vs, i64 %index957 ; 2 uses
  %i.wc = getelementptr i8, ptr %i.wb, i64 16
  %wide.load958 = load <2 x i64>, ptr %i.wb, align 8
  %wide.load959 = load <2 x i64>, ptr %i.wc, align 8
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %index957 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  store <2 x i64> %wide.load958, ptr %i.wd, align 8
  store <2 x i64> %wide.load959, ptr %i.we, align 8
  %index.next960 = add nuw i64 %index957, 4       ; 2 uses
  %i.wf = icmp eq i64 %index.next960, %n.vec955
  br i1 %i.wf, label %middle.block961, label %vector.body956, !llvm.loop !969

middle.block961:                                  ; preds = %vector.body956
  br i1 %cmp.n962, label %.loopexit591, label %scalar.ph952.preheader

scalar.ph952.preheader:                           ; preds = %vector.memcheck, %.lr.ph638.2, %middle.block961
  %.0267637.2.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph638.2 ], [ %n.vec955, %middle.block961 ] ; 3 uses
  br i1 %lcmp.mod1066.not, label %scalar.ph952.prol.loopexit, label %scalar.ph952.prol

scalar.ph952.prol:                                ; preds = %scalar.ph952.preheader, %scalar.ph952.prol
  %.0267637.2.prol = phi i64 [ %i.wj, %scalar.ph952.prol ], [ %.0267637.2.ph, %scalar.ph952.preheader ] ; 3 uses
  %prol.iter1067 = phi i64 [ %prol.iter1067.next, %scalar.ph952.prol ], [ 0, %scalar.ph952.preheader ]
  %i.wg = getelementptr [8 x i8], ptr %i.vs, i64 %.0267637.2.prol
  %i.wh = load i64, ptr %i.wg, align 8
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %.0267637.2.prol
  store i64 %i.wh, ptr %i.wi, align 8
  %i.wj = add nuw i64 %.0267637.2.prol, 1         ; 2 uses
  %prol.iter1067.next = add i64 %prol.iter1067, 1 ; 2 uses
  %prol.iter1067.cmp.not = icmp eq i64 %prol.iter1067.next, %xtraiter1065
  br i1 %prol.iter1067.cmp.not, label %scalar.ph952.prol.loopexit, label %scalar.ph952.prol, !llvm.loop !970

scalar.ph952.prol.loopexit:                       ; preds = %scalar.ph952.prol, %scalar.ph952.preheader
  %.0267637.2.unr = phi i64 [ %.0267637.2.ph, %scalar.ph952.preheader ], [ %i.wj, %scalar.ph952.prol ]
  %i.wk = sub i64 %.0267637.2.ph, %3
  %i.wl = icmp ugt i64 %i.wk, -4
  br i1 %i.wl, label %.loopexit591, label %scalar.ph952

scalar.ph952:                                     ; preds = %scalar.ph952.prol.loopexit, %scalar.ph952
  %.0267637.2 = phi i64 [ %i.xb, %scalar.ph952 ], [ %.0267637.2.unr, %scalar.ph952.prol.loopexit ] ; 6 uses
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
  br i1 %exitcond718.2.not.3, label %.loopexit591, label %scalar.ph952, !llvm.loop !971

.loopexit591:                                     ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.2, %scalar.ph952.prol.loopexit, %scalar.ph952, %middle.block961, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1, %.thread34.i385.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.2, %.lr.ph643
  %.7 = phi i64 [ %.0537641, %.lr.ph643 ], [ %.12.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.2 ], [ %.12.2, %middle.block961 ], [ %.6.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit398.thread.1 ], [ %.6.1, %.thread34.i385.2 ], [ %.12.2, %scalar.ph952.prol.loopexit ], [ %.12.2, %scalar.ph952 ], [ %.6.1, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.2 ] ; 3 uses
  %i.xc = add nsw i64 %.0278642, 1                ; 2 uses
  %exitcond720.not = icmp eq i64 %i.xc, %i.jn
  br i1 %exitcond720.not, label %._crit_edge644, label %.lr.ph643, !llvm.loop !972

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
  br i1 %exitcond724.not, label %bb.bt, label %bb.bu, !llvm.loop !973

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
end_hunk_2
begin_hunk_3_@_ZN5o3dgc13SC3DMCEncoderItE14EncodeIntArrayEPKlmmmRKNS_14IndexedFaceSetItEENS_25O3DGCSC3DMCPredictionModeERNS_12BinaryStreamE:bb.a
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
  br i1 %.not.i208, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !950

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
  br i1 %.not13.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit212, label %.lr.ph21.i, !llvm.loop !951

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
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3248 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 2 uses
  %i.bu = add i64 %i.b, 624
  %i.bv = shl i64 %4, 3
  %i.bw = add i64 %i.b, 624
  %i.bx = shl i64 %4, 3
  %i.by = add i64 %i.b, 624
  %i.bz = shl i64 %4, 3
  %min.iters.check670 = icmp ult i64 %3, 10
  %n.vec672 = and i64 %3, -4                      ; 3 uses
  %cmp.n679 = icmp eq i64 %3, %n.vec672
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check656 = icmp ult i64 %3, 10
  %n.vec658 = and i64 %3, -4                      ; 3 uses
  %cmp.n665 = icmp eq i64 %3, %n.vec658
  %xtraiter713 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod714.not = icmp eq i64 %xtraiter713, 0
  %min.iters.check = icmp ult i64 %3, 10
  %n.vec = and i64 %3, -4                         ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter716 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod717.not = icmp eq i64 %xtraiter716, 0
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
  %.0165437 = phi i64 [ 0, %.lr.ph438 ], [ %i.uv, %.loopexit387 ] ; 6 uses
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
  %i.dp = mul nuw i64 %.02543.i, 280
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
  br i1 %exitcond.not.i, label %.thread34.i, label %.lr.ph.i216, !llvm.loop !386

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
  br i1 %min.iters.check670, label %scalar.ph669.preheader, label %vector.memcheck667

vector.memcheck667:                               ; preds = %.lr.ph
  %i.ec = mul i64 %.1.ph.i, 280
  %i.ed = mul i64 %i.bz, %i.cx
  %i.ee = add i64 %i.by, %i.ec
  %i.ef = add i64 %i.ed, %i.a
  %i.eg = sub i64 %i.ef, %i.ee
  %diff.check668 = icmp ugt i64 %i.eg, -32
  br i1 %diff.check668, label %scalar.ph669.preheader, label %vector.body673

vector.body673:                                   ; preds = %vector.memcheck667, %vector.body673
  %index674 = phi i64 [ %index.next677, %vector.body673 ], [ 0, %vector.memcheck667 ] ; 3 uses
  %i.eh = getelementptr [8 x i8], ptr %i.dz, i64 %index674 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  %wide.load675 = load <2 x i64>, ptr %i.eh, align 8
  %wide.load676 = load <2 x i64>, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index674 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <2 x i64> %wide.load675, ptr %i.ej, align 8
  store <2 x i64> %wide.load676, ptr %i.ek, align 8
  %index.next677 = add nuw i64 %index674, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next677, %n.vec672
  br i1 %i.el, label %middle.block678, label %vector.body673, !llvm.loop !984

middle.block678:                                  ; preds = %vector.body673
  br i1 %cmp.n679, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph669.preheader

scalar.ph669.preheader:                           ; preds = %vector.memcheck667, %.lr.ph, %middle.block678
  %.0162411.ph = phi i64 [ 0, %vector.memcheck667 ], [ 0, %.lr.ph ], [ %n.vec672, %middle.block678 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph669.prol.loopexit, label %scalar.ph669.prol

scalar.ph669.prol:                                ; preds = %scalar.ph669.preheader, %scalar.ph669.prol
  %.0162411.prol = phi i64 [ %i.ep, %scalar.ph669.prol ], [ %.0162411.ph, %scalar.ph669.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph669.prol ], [ 0, %scalar.ph669.preheader ]
  %i.em = getelementptr [8 x i8], ptr %i.dz, i64 %.0162411.prol
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.0162411.prol
  store i64 %i.en, ptr %i.eo, align 8
  %i.ep = add nuw i64 %.0162411.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph669.prol.loopexit, label %scalar.ph669.prol, !llvm.loop !985

scalar.ph669.prol.loopexit:                       ; preds = %scalar.ph669.prol, %scalar.ph669.preheader
  %.0162411.unr = phi i64 [ %.0162411.ph, %scalar.ph669.preheader ], [ %i.ep, %scalar.ph669.prol ]
  %i.eq = sub i64 %.0162411.ph, %3
  %i.er = icmp ugt i64 %i.eq, -4
  br i1 %i.er, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph669

scalar.ph669:                                     ; preds = %scalar.ph669.prol.loopexit, %scalar.ph669
  %.0162411 = phi i64 [ %i.fh, %scalar.ph669 ], [ %.0162411.unr, %scalar.ph669.prol.loopexit ] ; 6 uses
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
  br i1 %exitcond.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph669, !llvm.loop !986

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, %scalar.ph669.prol.loopexit, %scalar.ph669, %middle.block678, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, %.thread34.i, %.lr.ph416
  %.2 = phi i64 [ %.4, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit ], [ %.4, %middle.block678 ], [ %.0345414, %.lr.ph416 ], [ %.0345414, %.thread34.i ], [ %.4, %scalar.ph669.prol.loopexit ], [ %.4, %scalar.ph669 ], [ %.0345414, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i ] ; 11 uses
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
  br i1 %exitcond.not.i.1, label %.thread34.i.1, label %.lr.ph.i216.1, !llvm.loop !386

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
  %i.ge = mul nuw i64 %.02543.i.1, 280
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
  br i1 %min.iters.check656, label %scalar.ph655.preheader, label %vector.memcheck653

vector.memcheck653:                               ; preds = %.lr.ph.1
  %i.gp = mul i64 %.1.ph.i.1, 280
  %i.gq = mul i64 %i.bx, %i.fk
  %i.gr = add i64 %i.bw, %i.gp
  %i.gs = add i64 %i.gq, %i.a
  %i.gt = sub i64 %i.gs, %i.gr
  %diff.check654 = icmp ugt i64 %i.gt, -32
  br i1 %diff.check654, label %scalar.ph655.preheader, label %vector.body659

vector.body659:                                   ; preds = %vector.memcheck653, %vector.body659
  %index660 = phi i64 [ %index.next663, %vector.body659 ], [ 0, %vector.memcheck653 ] ; 3 uses
  %i.gu = getelementptr [8 x i8], ptr %i.gm, i64 %index660 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 16
  %wide.load661 = load <2 x i64>, ptr %i.gu, align 8
  %wide.load662 = load <2 x i64>, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %index660 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <2 x i64> %wide.load661, ptr %i.gw, align 8
  store <2 x i64> %wide.load662, ptr %i.gx, align 8
  %index.next663 = add nuw i64 %index660, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next663, %n.vec658
  br i1 %i.gy, label %middle.block664, label %vector.body659, !llvm.loop !987

middle.block664:                                  ; preds = %vector.body659
  br i1 %cmp.n665, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %scalar.ph655.preheader

scalar.ph655.preheader:                           ; preds = %vector.memcheck653, %.lr.ph.1, %middle.block664
  %.0162411.1.ph = phi i64 [ 0, %vector.memcheck653 ], [ 0, %.lr.ph.1 ], [ %n.vec658, %middle.block664 ] ; 3 uses
  br i1 %lcmp.mod714.not, label %scalar.ph655.prol.loopexit, label %scalar.ph655.prol

scalar.ph655.prol:                                ; preds = %scalar.ph655.preheader, %scalar.ph655.prol
  %.0162411.1.prol = phi i64 [ %i.hc, %scalar.ph655.prol ], [ %.0162411.1.ph, %scalar.ph655.preheader ] ; 3 uses
  %prol.iter715 = phi i64 [ %prol.iter715.next, %scalar.ph655.prol ], [ 0, %scalar.ph655.preheader ]
  %i.gz = getelementptr [8 x i8], ptr %i.gm, i64 %.0162411.1.prol
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.0162411.1.prol
  store i64 %i.ha, ptr %i.hb, align 8
  %i.hc = add nuw i64 %.0162411.1.prol, 1         ; 2 uses
  %prol.iter715.next = add i64 %prol.iter715, 1   ; 2 uses
  %prol.iter715.cmp.not = icmp eq i64 %prol.iter715.next, %xtraiter713
  br i1 %prol.iter715.cmp.not, label %scalar.ph655.prol.loopexit, label %scalar.ph655.prol, !llvm.loop !988

scalar.ph655.prol.loopexit:                       ; preds = %scalar.ph655.prol, %scalar.ph655.preheader
  %.0162411.1.unr = phi i64 [ %.0162411.1.ph, %scalar.ph655.preheader ], [ %i.hc, %scalar.ph655.prol ]
  %i.hd = sub i64 %.0162411.1.ph, %3
  %i.he = icmp ugt i64 %i.hd, -4
  br i1 %i.he, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %scalar.ph655

scalar.ph655:                                     ; preds = %scalar.ph655.prol.loopexit, %scalar.ph655
  %.0162411.1 = phi i64 [ %i.hu, %scalar.ph655 ], [ %.0162411.1.unr, %scalar.ph655.prol.loopexit ] ; 6 uses
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
  br i1 %exitcond.1.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %scalar.ph655, !llvm.loop !989

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1, %scalar.ph655.prol.loopexit, %scalar.ph655, %middle.block664, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1, %.thread34.i.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.2.1 = phi i64 [ %.4.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1 ], [ %.4.1, %middle.block664 ], [ %.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ], [ %.2, %.thread34.i.1 ], [ %.4.1, %scalar.ph655.prol.loopexit ], [ %.4.1, %scalar.ph655 ], [ %.2, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1 ] ; 11 uses
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
  br i1 %exitcond.not.i.2, label %.thread34.i.2, label %.lr.ph.i216.2, !llvm.loop !386

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
  %i.ir = mul nuw i64 %.02543.i.2, 280
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
  %wide.load652 = load <2 x i64>, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %index ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store <2 x i64> %wide.load, ptr %i.jj, align 8
  store <2 x i64> %wide.load652, ptr %i.jk, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %middle.block, label %vector.body, !llvm.loop !990

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.2, %middle.block
  %.0162411.2.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.2 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod717.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0162411.2.prol = phi i64 [ %i.jp, %scalar.ph.prol ], [ %.0162411.2.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter718 = phi i64 [ %prol.iter718.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.jm = getelementptr [8 x i8], ptr %i.iz, i64 %.0162411.2.prol
  %i.jn = load i64, ptr %i.jm, align 8
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.0162411.2.prol
  store i64 %i.jn, ptr %i.jo, align 8
  %i.jp = add nuw i64 %.0162411.2.prol, 1         ; 2 uses
  %prol.iter718.next = add i64 %prol.iter718, 1   ; 2 uses
  %prol.iter718.cmp.not = icmp eq i64 %prol.iter718.next, %xtraiter716
  br i1 %prol.iter718.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !991

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
end_hunk_3
