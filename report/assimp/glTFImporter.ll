Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFImporter?download=true
inline.NumInlined: 5894
inline.NumDeleted: 2006
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 38
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
  br i1 %exitcond.not.i, label %.thread34.i, label %.lr.ph.i333, !llvm.loop !812

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
  br i1 %i.js, label %middle.block, label %vector.body, !llvm.loop !813

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
  br i1 %exitcond632.not.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph, !llvm.loop !814

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, %.preheader493, %.thread34.i
  %.2469 = phi i64 [ %.9, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit ], [ %.9, %middle.block ], [ %.1468569, %.preheader493 ], [ %.1468569, %.thread34.i ], [ %.9, %scalar.ph.prol.loopexit ], [ %.9, %scalar.ph ], [ %.1468569, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i ] ; 2 uses
  %i.ky = add nsw i64 %.0224570, 1                ; 2 uses
  %exitcond633.not = icmp eq i64 %i.ky, %i.gn
  br i1 %exitcond633.not, label %.critedge, label %bb.bg, !llvm.loop !815

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
  br i1 %exitcond.not.i339, label %.thread34.i340, label %.lr.ph.i336, !llvm.loop !812

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
  br i1 %exitcond.not.i339.1, label %.thread34.i340.1, label %.lr.ph.i336.1, !llvm.loop !812

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
  br i1 %exitcond.not.i339.2, label %.thread34.i340.2, label %.lr.ph.i336.2, !llvm.loop !812

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
  br i1 %exitcond635.not, label %.critedge298, label %bb.az, !llvm.loop !816

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
  br i1 %.not.i.i359, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360, label %.preheader.i.i356, !llvm.loop !809

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
  br i1 %.not.i.i362, label %.preheader.i.i363, label %.preheader510, !llvm.loop !807

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
  br i1 %.not16.i.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i, label %.lr.ph.i.i, !llvm.loop !808

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
  br i1 %.not.i147, label %.preheader.i148, label %bb.m, !llvm.loop !807

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
  br i1 %.not16.i154, label %.loopexit267, label %.lr.ph.i150, !llvm.loop !808

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
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
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
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
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
  br i1 %exitcond.not.i, label %.thread34.i, label %.lr.ph.i161, !llvm.loop !812

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
  br i1 %exitcond.not.i.1, label %.thread34.i.1, label %.lr.ph.i161.1, !llvm.loop !812

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
  br i1 %exitcond.not.i.2, label %.thread34.i.2, label %.lr.ph.i161.2, !llvm.loop !812

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
  br i1 %exitcond.not, label %.critedge, label %.lr.ph300, !llvm.loop !828

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
  br i1 %.not.i.i, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit, label %.preheader.i.i, !llvm.loop !809

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
  br i1 %.not.i.i164, label %.preheader.i.i165, label %.preheader253, !llvm.loop !807

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
  br i1 %.not16.i.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i, label %.lr.ph.i.i, !llvm.loop !808

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
  br i1 %exitcond329.not, label %.loopexit258, label %bb.ao, !llvm.loop !829

end_hunk_1
