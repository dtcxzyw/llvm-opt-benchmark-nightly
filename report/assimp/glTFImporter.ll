Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFImporter?download=true
inline.NumInlined: 5894
inline.NumDeleted: 2006
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5o3dgc13SC3DMCDecoderItE16DecodeFloatArrayEPfmmmPKfS4_mRKNS_14IndexedFaceSetItEERNS_25O3DGCSC3DMCPredictionModeERKNS_12BinaryStreamE:bb.a
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.0226593 ; 3 uses
  %i.fe = load i64, ptr %i.fd, align 8            ; 2 uses
  %.not485 = icmp eq i64 %.0226593, 0             ; 3 uses
  br i1 %.not485, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ff = getelementptr i8, ptr %i.fd, i64 -8
  %i.fg = load i64, ptr %i.ff, align 8
  br label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit: ; preds = %bb.au, %bb.av
  %i.fh = phi i64 [ %i.fg, %bb.av ], [ 0, %bb.au ]
  %i.fi = icmp sgt i64 %i.fe, %i.fh
  br i1 %i.fi, label %bb.aw, label %.critedge298.thread

bb.aw:                                            ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit
  %i.fj = load i32, ptr %9, align 4               ; 3 uses
  %.not268 = icmp eq i32 %i.fj, 0
  br i1 %.not268, label %.critedge298.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not485, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fk = getelementptr i8, ptr %i.fd, i64 -8
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = shl i64 %i.fl, 32
  %i.fn = ashr exact i64 %i.fm, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %bb.ax, %bb.ay
  %sext = phi i64 [ %i.fn, %bb.ay ], [ 0, %bb.ax ] ; 2 uses
  %sext269 = shl i64 %i.fe, 32
  %i.fo = ashr exact i64 %sext269, 32             ; 2 uses
  %i.fp = icmp slt i64 %sext, %i.fo
  br i1 %i.fp, label %.lr.ph580, label %.critedge298.thread

.lr.ph580:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit
  %i.fq = icmp eq i32 %i.fj, 5
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph580, %.loopexit514
  %.0225579 = phi i64 [ %sext, %.lr.ph580 ], [ %i.ot, %.loopexit514 ] ; 2 uses
  %.0467578 = phi i64 [ 0, %.lr.ph580 ], [ %.7, %.loopexit514 ] ; 5 uses
  %i.fr = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %.0225579
  %i.ft = load i64, ptr %i.fs, align 8            ; 3 uses
  %i.fu = icmp sgt i64 %i.ft, -1
  br i1 %i.fu, label %bb.ba, label %.critedge298

bb.ba:                                            ; preds = %bb.az
  br i1 %i.fq, label %bb.bb, label %.critedge

bb.bb:                                            ; preds = %bb.ba
  %.idx486 = mul nuw nsw i64 %i.ft, 6
  %i.fv = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx486 ; 3 uses
  %i.fw = load i16, ptr %i.fv, align 2
  %i.fx = zext i16 %i.fw to i64                   ; 3 uses
  %i.fy = icmp eq i64 %.0226593, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.ga = load i16, ptr %i.fz, align 2
  %i.gb = zext i16 %i.ga to i64                   ; 3 uses
  br i1 %i.fy, label %.sink.split, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gc = icmp eq i64 %.0226593, %i.gb
  br i1 %i.gc, label %.sink.split, label %bb.bd

.sink.split:                                      ; preds = %bb.bc, %bb.bb
  %.0465.ph = phi i64 [ %i.gb, %bb.bb ], [ %i.fx, %bb.bc ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.ge = load i16, ptr %i.gd, align 2
  %i.gf = zext i16 %i.ge to i64
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split, %bb.bc
  %.0465 = phi i64 [ %i.fx, %bb.bc ], [ %.0465.ph, %.sink.split ] ; 11 uses
  %.0464 = phi i64 [ %i.gb, %bb.bc ], [ %i.gf, %.sink.split ] ; 8 uses
  %i.gg = icmp samesign ult i64 %.0465, %.0226593
  %i.gh = icmp samesign ult i64 %.0464, %.0226593
  %or.cond294 = select i1 %i.gg, i1 %i.gh, i1 false
  br i1 %or.cond294, label %bb.be, label %.critedge.thread

bb.be:                                            ; preds = %bb.bd
  %.not487 = icmp eq i64 %.0465, 0
  br i1 %.not487, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gi = getelementptr [8 x i8], ptr %i.fc, i64 %.0465
  %i.gj = getelementptr i8, ptr %i.gi, i64 -8
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = shl i64 %i.gk, 32
  %i.gm = ashr exact i64 %i.gl, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330:        ; preds = %bb.be, %bb.bf
  %sext270 = phi i64 [ %i.gm, %bb.bf ], [ 0, %bb.be ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.0465
  %i.go = load i64, ptr %i.gn, align 8
  %sext271 = shl i64 %i.go, 32
  %i.gp = ashr exact i64 %sext271, 32             ; 2 uses
  %i.gq = icmp slt i64 %sext270, %i.gp
  br i1 %i.gq, label %.lr.ph571, label %.critedge.thread

.lr.ph571:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330
  %i.gr = call i64 @llvm.umin.i64(i64 %.0464, i64 %.0465) ; 3 uses
  %i.gs = call i64 @llvm.umax.i64(i64 %.0464, i64 %.0465) ; 3 uses
  %i.gt = mul i64 %.0465, %4
  %i.gu = mul i64 %.0464, %4
  %i.gv = mul i64 %i.ex, %.0464
  %i.gw = mul i64 %i.ez, %.0465
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph571, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.0224570 = phi i64 [ %sext270, %.lr.ph571 ], [ %i.la, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 2 uses
  %.1468569 = phi i64 [ %.0467578, %.lr.ph571 ], [ %.2469, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 12 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %.0224570
  %i.gy = load i64, ptr %i.gx, align 8            ; 2 uses
  %i.gz = icmp sgt i64 %i.gy, -1
  br i1 %i.gz, label %.preheader493, label %.critedge

.preheader493:                                    ; preds = %bb.bg
  %.idx = mul nuw nsw i64 %i.gy, 6
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 3 uses
  %i.hb = load i16, ptr %i.ha, align 2
  %i.hc = zext i16 %i.hb to i64                   ; 4 uses
  %i.hd = icmp eq i64 %.0464, %i.hc               ; 2 uses
  %i.he = icmp samesign ule i64 %.0226593, %i.hc
  %.not273 = icmp eq i64 %.0465, %i.hc
  %or.cond295 = or i1 %i.he, %.not273
  %or.cond296 = select i1 %or.cond295, i1 true, i1 %i.hd
  %.1223 = select i1 %or.cond296, i64 -1, i64 %i.hc
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %i.hg = load i16, ptr %i.hf, align 2
  %i.hh = zext i16 %i.hg to i64                   ; 4 uses
  %i.hi = icmp eq i64 %.0464, %i.hh               ; 2 uses
  %i.hj = icmp samesign ule i64 %.0226593, %i.hh
  %.not273.1 = icmp eq i64 %.0465, %i.hh
  %or.cond295.1 = or i1 %i.hj, %.not273.1
  %or.cond296.1 = select i1 %or.cond295.1, i1 true, i1 %i.hi
  %.1223.1 = select i1 %or.cond296.1, i64 %.1223, i64 %i.hh
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hl = load i16, ptr %i.hk, align 2
  %i.hm = zext i16 %i.hl to i64                   ; 4 uses
  %i.hn = icmp eq i64 %.0464, %i.hm               ; 2 uses
  %i.ho = select i1 %i.hn, i1 true, i1 %i.hi
  %spec.select.2 = select i1 %i.ho, i1 true, i1 %i.hd
  %i.hp = icmp samesign ule i64 %.0226593, %i.hm
  %.not273.2 = icmp eq i64 %.0465, %i.hm
  %or.cond295.2 = or i1 %i.hp, %.not273.2
  %or.cond296.2 = select i1 %or.cond295.2, i1 true, i1 %i.hn
  %.1223.2 = select i1 %or.cond296.2, i64 %.1223.1, i64 %i.hm ; 4 uses
  %i.hq = icmp ne i64 %.1223.2, -1
  %or.cond = select i1 %i.hq, i1 %spec.select.2, i1 false
  br i1 %or.cond, label %bb.bh, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

bb.bh:                                            ; preds = %.preheader493
  %i.hr = xor i64 %.1223.2, -1                    ; 3 uses
  %.not.i332 = icmp eq i64 %.1468569, 0
  br i1 %.not.i332, label %.thread34.thread.i, label %.lr.ph.i333

.lr.ph.i333:                                      ; preds = %bb.bh, %bb.bk
  %.02543.i = phi i64 [ %i.il, %bb.bk ], [ 0, %bb.bh ] ; 7 uses
  %i.hs = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.02543.i ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load i64, ptr %i.ht, align 8            ; 2 uses
  %i.hv = icmp eq i64 %i.hu, %i.hr
  br i1 %i.hv, label %bb.bi, label %.split.i

bb.bi:                                            ; preds = %.lr.ph.i333
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hx = load i64, ptr %i.hw, align 8            ; 2 uses
  %i.hy = icmp eq i64 %i.gs, %i.hx
  br i1 %i.hy, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.bi
  %i.hz = load i64, ptr %i.hs, align 8            ; 2 uses
  %i.ia = icmp eq i64 %i.gr, %i.hz
  br i1 %i.ia, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.split31.i

.split.i:                                         ; preds = %.lr.ph.i333
  %i.ib = icmp sgt i64 %i.hu, %i.hr
  br i1 %i.ib, label %bb.bj, label %bb.bk

.split31.i:                                       ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i
  %i.ic = icmp slt i64 %i.gr, %i.hz
  br i1 %i.ic, label %bb.bj, label %bb.bk

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.bi
  %i.id = icmp slt i64 %i.gs, %i.hx
  br i1 %i.id, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.ie = icmp eq i64 %.1468569, 1
  %spec.select480 = select i1 %i.ie, i64 2, i64 %.1468569 ; 4 uses
  %.044.i = add i64 %spec.select480, -1
  %i.if = icmp ugt i64 %.044.i, %.02543.i
  br i1 %i.if, label %.lr.ph47.preheader.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

.lr.ph47.preheader.i:                             ; preds = %bb.bj
  %i.ig = mul i64 %.02543.i, 280
  %i.ih = getelementptr i8, ptr %11, i64 %i.ig    ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.ih, i64 280
  %i.ii = xor i64 %.02543.i, -1
  %i.ij = add i64 %spec.select480, %i.ii
  %i.ik = mul nuw i64 %i.ij, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %i.ih, i64 %i.ik, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

bb.bk:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.il = add nuw i64 %.02543.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.il, %.1468569
  br i1 %exitcond.not.i, label %.thread34.i, label %.lr.ph.i333, !llvm.loop !812

.thread34.i:                                      ; preds = %bb.bk
  %i.im = icmp eq i64 %.1468569, 1
  br i1 %i.im, label %.thread34.thread.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

.thread34.thread.i:                               ; preds = %.thread34.i, %bb.bh
  %i.in = add nuw nsw i64 %.1468569, 1
  %i.io = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.1468569
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit: ; preds = %bb.bj, %.lr.ph47.preheader.i, %.thread34.thread.i
  %.9 = phi i64 [ %i.in, %.thread34.thread.i ], [ %spec.select480, %.lr.ph47.preheader.i ], [ %spec.select480, %bb.bj ] ; 4 uses
  %.lcssa.sink.i = phi ptr [ %i.io, %.thread34.thread.i ], [ %i.hs, %.lr.ph47.preheader.i ], [ %i.hs, %bb.bj ] ; 3 uses
  %.1.ph.i = phi i64 [ %.1468569, %.thread34.thread.i ], [ %.02543.i, %.lr.ph47.preheader.i ], [ %.02543.i, %bb.bj ] ; 3 uses
  store i64 %i.gr, ptr %.lcssa.sink.i, align 8
  %.sroa.5.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 8
  store i64 %i.gs, ptr %.sroa.5.0..lcssa.sink.i.sroa_idx, align 8
  %.sroa.7.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 16
  store i64 %i.hr, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx, align 8
  %.not272 = icmp eq i64 %.1.ph.i, 4294967295
  %brmerge = or i1 %.not272, %.not608
  br i1 %brmerge, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.lr.ph568

.lr.ph568:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit
  %i.ip = load ptr, ptr %i.er, align 8            ; 4 uses
  %i.iq = getelementptr [8 x i8], ptr %i.ip, i64 %i.gt ; 4 uses
  %i.ir = getelementptr [8 x i8], ptr %i.ip, i64 %i.gu ; 4 uses
  %i.is = mul i64 %.1223.2, %4
  %i.it = getelementptr [8 x i8], ptr %i.ip, i64 %i.is ; 4 uses
  %i.iu = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.1.ph.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph568
  %i.iw = ptrtoaddr ptr %i.ip to i64              ; 3 uses
  %i.ix = mul i64 %.1.ph.i, 280                   ; 3 uses
  %i.iy = add i64 %i.eu, %i.ix
  %i.iz = mul i64 %i.ev, %.1223.2
  %i.ja = add i64 %i.iz, %i.iw
  %i.jb = sub i64 %i.ja, %i.iy
  %diff.check = icmp ugt i64 %i.jb, -32
  %i.jc = add i64 %i.ew, %i.ix
  %i.jd = add i64 %i.gv, %i.iw
  %i.je = sub i64 %i.jd, %i.jc
  %diff.check767 = icmp ugt i64 %i.je, -32
  %conflict.rdx = or i1 %diff.check, %diff.check767
  %i.jf = add i64 %i.ey, %i.ix
  %i.jg = add i64 %i.gw, %i.iw
  %i.jh = sub i64 %i.jg, %i.jf
  %diff.check768 = icmp ugt i64 %i.jh, -32
  %conflict.rdx769 = or i1 %conflict.rdx, %diff.check768
  br i1 %conflict.rdx769, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.ji = getelementptr [8 x i8], ptr %i.iq, i64 %index ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 16
  %wide.load = load <2 x i64>, ptr %i.ji, align 8
  %wide.load770 = load <2 x i64>, ptr %i.jj, align 8
  %i.jk = getelementptr [8 x i8], ptr %i.ir, i64 %index ; 2 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 16
  %wide.load771 = load <2 x i64>, ptr %i.jk, align 8
  %wide.load772 = load <2 x i64>, ptr %i.jl, align 8
  %i.jm = add nsw <2 x i64> %wide.load771, %wide.load
  %i.jn = add nsw <2 x i64> %wide.load772, %wide.load770
  %i.jo = getelementptr [8 x i8], ptr %i.it, i64 %index ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 16
  %wide.load773 = load <2 x i64>, ptr %i.jo, align 8
  %wide.load774 = load <2 x i64>, ptr %i.jp, align 8
  %i.jq = sub <2 x i64> %i.jm, %wide.load773
  %i.jr = sub <2 x i64> %i.jn, %wide.load774
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %index ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store <2 x i64> %i.jq, ptr %i.js, align 8
  store <2 x i64> %i.jr, ptr %i.jt, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ju = icmp eq i64 %index.next, %n.vec
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !813

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph568, %middle.block
  %.0219567.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph568 ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg836 = or disjoint i64 %.0219567.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jv = getelementptr [8 x i8], ptr %i.iq, i64 %.0219567.ph
  %i.jw = load i64, ptr %i.jv, align 8
  %i.jx = getelementptr [8 x i8], ptr %i.ir, i64 %.0219567.ph
  %i.jy = load i64, ptr %i.jx, align 8
  %i.jz = add nsw i64 %i.jy, %i.jw
  %i.ka = getelementptr [8 x i8], ptr %i.it, i64 %.0219567.ph
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = sub i64 %i.jz, %i.kb
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.0219567.ph
  store i64 %i.kc, ptr %i.kd, align 8
  %i.ke = or disjoint i64 %.0219567.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0219567.unr = phi i64 [ %.0219567.ph, %scalar.ph.preheader ], [ %i.ke, %scalar.ph.prol ]
  %i.kf = icmp eq i64 %.0251, %.neg836
  br i1 %i.kf, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0219567 = phi i64 [ %i.kz, %scalar.ph ], [ %.0219567.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.kg = getelementptr [8 x i8], ptr %i.iq, i64 %.0219567
  %i.kh = load i64, ptr %i.kg, align 8
  %i.ki = getelementptr [8 x i8], ptr %i.ir, i64 %.0219567
  %i.kj = load i64, ptr %i.ki, align 8
  %i.kk = add nsw i64 %i.kj, %i.kh
  %i.kl = getelementptr [8 x i8], ptr %i.it, i64 %.0219567
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = sub i64 %i.kk, %i.km
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.0219567
  store i64 %i.kn, ptr %i.ko, align 8
  %i.kp = add nuw i64 %.0219567, 1                ; 4 uses
  %i.kq = getelementptr [8 x i8], ptr %i.iq, i64 %i.kp
  %i.kr = load i64, ptr %i.kq, align 8
  %i.ks = getelementptr [8 x i8], ptr %i.ir, i64 %i.kp
  %i.kt = load i64, ptr %i.ks, align 8
  %i.ku = add nsw i64 %i.kt, %i.kr
  %i.kv = getelementptr [8 x i8], ptr %i.it, i64 %i.kp
  %i.kw = load i64, ptr %i.kv, align 8
  %i.kx = sub i64 %i.ku, %i.kw
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.kp
  store i64 %i.kx, ptr %i.ky, align 8
  %i.kz = add nuw i64 %.0219567, 2                ; 2 uses
  %exitcond632.not.1 = icmp eq i64 %i.kz, %.0251
  br i1 %exitcond632.not.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph, !llvm.loop !814

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, %.preheader493, %.thread34.i
  %.2469 = phi i64 [ %.9, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit ], [ %.9, %middle.block ], [ %.1468569, %.preheader493 ], [ %.1468569, %.thread34.i ], [ %.9, %scalar.ph.prol.loopexit ], [ %.9, %scalar.ph ], [ %.1468569, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i ] ; 2 uses
  %i.la = add nsw i64 %.0224570, 1                ; 2 uses
  %exitcond633.not = icmp eq i64 %i.la, %i.gp
  br i1 %exitcond633.not, label %.critedge, label %bb.bg, !llvm.loop !815

.critedge:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, %bb.bg, %bb.ba
  %.4 = phi i64 [ %.0467578, %bb.ba ], [ %.1468569, %bb.bg ], [ %.2469, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 4 uses
  switch i32 %i.fj, label %.loopexit514 [
    i32 6, label %.critedge.thread
    i32 5, label %.critedge.thread
    i32 1, label %.critedge.thread
  ]

.critedge.thread:                                 ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330, %bb.bd, %.critedge, %.critedge, %.critedge
  %.4475 = phi i64 [ %.4, %.critedge ], [ %.4, %.critedge ], [ %.4, %.critedge ], [ %.0467578, %bb.bd ], [ %.0467578, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330 ] ; 11 uses
  %.idx275 = mul nuw nsw i64 %i.ft, 6
  %i.lb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx275 ; 3 uses
  %i.lc = load i16, ptr %i.lb, align 2
  %i.ld = zext i16 %i.lc to i64                   ; 5 uses
  %i.le = icmp samesign ugt i64 %.0226593, %i.ld
  br i1 %i.le, label %bb.bl, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread

bb.bl:                                            ; preds = %.critedge.thread
  %.not.i335 = icmp eq i64 %.4475, 0
  br i1 %.not.i335, label %.thread34.thread.i342, label %.lr.ph.i336

.lr.ph.i336:                                      ; preds = %bb.bl, %bb.bo
  %.02543.i337 = phi i64 [ %i.ly, %bb.bo ], [ 0, %bb.bl ] ; 7 uses
  %i.lf = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.02543.i337 ; 5 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load i64, ptr %i.lg, align 8            ; 2 uses
  %i.li = icmp eq i64 %i.lh, %i.ld
  br i1 %i.li, label %bb.bm, label %.split.i338

bb.bm:                                            ; preds = %.lr.ph.i336
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lk = load i64, ptr %i.lj, align 8            ; 2 uses
  %i.ll = icmp eq i64 %i.lk, -1
  br i1 %i.ll, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351:   ; preds = %bb.bm
  %i.lm = load i64, ptr %i.lf, align 8            ; 2 uses
  %i.ln = icmp eq i64 %i.lm, -1
  br i1 %i.ln, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread, label %.split31.i352

.split.i338:                                      ; preds = %.lr.ph.i336
  %i.lo = icmp sgt i64 %i.lh, %i.ld
  br i1 %i.lo, label %bb.bn, label %bb.bo

.split31.i352:                                    ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351
  %i.lp = icmp sgt i64 %i.lm, -1
  br i1 %i.lp, label %bb.bn, label %bb.bo

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350:   ; preds = %bb.bm
  %i.lq = icmp sgt i64 %i.lk, -1
  br i1 %i.lq, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350, %.split31.i352, %.split.i338
  %i.lr = icmp eq i64 %.4475, 1
  %spec.select482 = select i1 %i.lr, i64 2, i64 %.4475 ; 4 uses
  %.044.i346 = add i64 %spec.select482, -1
  %i.ls = icmp ugt i64 %.044.i346, %.02543.i337
  br i1 %i.ls, label %.lr.ph47.preheader.i347, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353

.lr.ph47.preheader.i347:                          ; preds = %bb.bn
  %i.lt = mul i64 %.02543.i337, 280
  %i.lu = getelementptr i8, ptr %11, i64 %i.lt    ; 2 uses
  %scevgep.i348 = getelementptr i8, ptr %i.lu, i64 280
  %i.lv = xor i64 %.02543.i337, -1
  %i.lw = add i64 %spec.select482, %i.lv
  %i.lx = mul nuw i64 %i.lw, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i348, ptr align 8 %i.lu, i64 %i.lx, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353

bb.bo:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350, %.split31.i352, %.split.i338
  %i.ly = add nuw i64 %.02543.i337, 1             ; 2 uses
  %exitcond.not.i339 = icmp eq i64 %i.ly, %.4475
  br i1 %exitcond.not.i339, label %.thread34.i340, label %.lr.ph.i336, !llvm.loop !812

.thread34.i340:                                   ; preds = %bb.bo
  %i.lz = icmp eq i64 %.4475, 1
  br i1 %i.lz, label %.thread34.thread.i342, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread

.thread34.thread.i342:                            ; preds = %.thread34.i340, %bb.bl
  %i.ma = add nuw nsw i64 %.4475, 1
  %i.mb = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.4475
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353: ; preds = %bb.bn, %.lr.ph47.preheader.i347, %.thread34.thread.i342
  %.12 = phi i64 [ %i.ma, %.thread34.thread.i342 ], [ %spec.select482, %.lr.ph47.preheader.i347 ], [ %spec.select482, %bb.bn ] ; 2 uses
  %.lcssa.sink.i344 = phi ptr [ %i.mb, %.thread34.thread.i342 ], [ %i.lf, %.lr.ph47.preheader.i347 ], [ %i.lf, %bb.bn ] ; 2 uses
  %.1.ph.i345 = phi i64 [ %.4475, %.thread34.thread.i342 ], [ %.02543.i337, %.lr.ph47.preheader.i347 ], [ %.02543.i337, %bb.bn ] ; 2 uses
  %.sroa.7463.0..lcssa.sink.i344.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i344, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i344, i8 -1, i64 16, i1 false)
  store i64 %i.ld, ptr %.sroa.7463.0..lcssa.sink.i344.sroa_idx, align 8
  %.not278 = icmp eq i64 %.1.ph.i345, 4294967295
  %brmerge605 = or i1 %.not278, %.not608
  br i1 %brmerge605, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread, label %.lr.ph575

.lr.ph575:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353
  %i.mc = load ptr, ptr %i.er, align 8
  %i.md = mul i64 %4, %i.ld
  %i.me = getelementptr [8 x i8], ptr %i.mc, i64 %i.md
  %i.mf = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.1.ph.i345
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mg, ptr align 8 %i.me, i64 %i.et, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351, %.lr.ph575, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353, %.thread34.i340, %.critedge.thread
  %.6 = phi i64 [ %.12, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353 ], [ %.12, %.lr.ph575 ], [ %.4475, %.critedge.thread ], [ %.4475, %.thread34.i340 ], [ %.4475, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351 ] ; 11 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lb, i64 2
  %i.mi = load i16, ptr %i.mh, align 2
  %i.mj = zext i16 %i.mi to i64                   ; 5 uses
  %i.mk = icmp samesign ugt i64 %.0226593, %i.mj
  br i1 %i.mk, label %bb.bp, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1

bb.bp:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread
  %.not.i335.1 = icmp eq i64 %.6, 0
  br i1 %.not.i335.1, label %.thread34.thread.i342.1, label %.lr.ph.i336.1

.lr.ph.i336.1:                                    ; preds = %bb.bp, %bb.br
  %.02543.i337.1 = phi i64 [ %i.mx, %bb.br ], [ 0, %bb.bp ] ; 7 uses
  %i.ml = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.02543.i337.1 ; 5 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.mn = load i64, ptr %i.mm, align 8            ; 2 uses
  %i.mo = icmp eq i64 %i.mn, %i.mj
  br i1 %i.mo, label %bb.bq, label %.split.i338.1

.split.i338.1:                                    ; preds = %.lr.ph.i336.1
  %i.mp = icmp sgt i64 %i.mn, %i.mj
  br i1 %i.mp, label %bb.bs, label %bb.br

bb.bq:                                            ; preds = %.lr.ph.i336.1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mr = load i64, ptr %i.mq, align 8            ; 2 uses
  %i.ms = icmp eq i64 %i.mr, -1
  br i1 %i.ms, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.1, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.1

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.1: ; preds = %bb.bq
  %i.mt = icmp sgt i64 %i.mr, -1
  br i1 %i.mt, label %bb.bs, label %bb.br

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.1: ; preds = %bb.bq
  %i.mu = load i64, ptr %i.ml, align 8            ; 2 uses
  %i.mv = icmp eq i64 %i.mu, -1
  br i1 %i.mv, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1, label %.split31.i352.1

.split31.i352.1:                                  ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.1
  %i.mw = icmp sgt i64 %i.mu, -1
  br i1 %i.mw, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.split31.i352.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.1, %.split.i338.1
  %i.mx = add nuw i64 %.02543.i337.1, 1           ; 2 uses
  %exitcond.not.i339.1 = icmp eq i64 %i.mx, %.6
  br i1 %exitcond.not.i339.1, label %.thread34.i340.1, label %.lr.ph.i336.1, !llvm.loop !812

.thread34.i340.1:                                 ; preds = %bb.br
  %i.my = icmp eq i64 %.6, 1
  br i1 %i.my, label %.thread34.thread.i342.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1

bb.bs:                                            ; preds = %.split31.i352.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.1, %.split.i338.1
  %i.mz = icmp eq i64 %.6, 1
  %spec.select482.1 = select i1 %i.mz, i64 2, i64 %.6 ; 4 uses
  %.044.i346.1 = add i64 %spec.select482.1, -1
  %i.na = icmp ugt i64 %.044.i346.1, %.02543.i337.1
  br i1 %i.na, label %.lr.ph47.preheader.i347.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.1

.lr.ph47.preheader.i347.1:                        ; preds = %bb.bs
  %i.nb = mul i64 %.02543.i337.1, 280
  %i.nc = getelementptr i8, ptr %11, i64 %i.nb    ; 2 uses
  %scevgep.i348.1 = getelementptr i8, ptr %i.nc, i64 280
  %i.nd = xor i64 %.02543.i337.1, -1
  %i.ne = add i64 %spec.select482.1, %i.nd
  %i.nf = mul nuw i64 %i.ne, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i348.1, ptr align 8 %i.nc, i64 %i.nf, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.1

.thread34.thread.i342.1:                          ; preds = %.thread34.i340.1, %bb.bp
  %i.ng = add nuw nsw i64 %.6, 1
  %i.nh = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.6
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.1

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.1: ; preds = %.thread34.thread.i342.1, %.lr.ph47.preheader.i347.1, %bb.bs
  %.12.1 = phi i64 [ %i.ng, %.thread34.thread.i342.1 ], [ %spec.select482.1, %.lr.ph47.preheader.i347.1 ], [ %spec.select482.1, %bb.bs ] ; 2 uses
  %.lcssa.sink.i344.1 = phi ptr [ %i.nh, %.thread34.thread.i342.1 ], [ %i.ml, %.lr.ph47.preheader.i347.1 ], [ %i.ml, %bb.bs ] ; 2 uses
  %.1.ph.i345.1 = phi i64 [ %.6, %.thread34.thread.i342.1 ], [ %.02543.i337.1, %.lr.ph47.preheader.i347.1 ], [ %.02543.i337.1, %bb.bs ] ; 2 uses
  %.sroa.7463.0..lcssa.sink.i344.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i344.1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i344.1, i8 -1, i64 16, i1 false)
  store i64 %i.mj, ptr %.sroa.7463.0..lcssa.sink.i344.sroa_idx.1, align 8
  %.not278.1 = icmp eq i64 %.1.ph.i345.1, 4294967295
  %brmerge605.1 = or i1 %.not278.1, %.not608
  br i1 %brmerge605.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1, label %.lr.ph575.1

.lr.ph575.1:                                      ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.1
  %i.ni = load ptr, ptr %i.er, align 8
  %i.nj = mul i64 %4, %i.mj
  %i.nk = getelementptr [8 x i8], ptr %i.ni, i64 %i.nj
  %i.nl = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.1.ph.i345.1
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.nm, ptr align 8 %i.nk, i64 %i.et, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.1, %.lr.ph575.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.1, %.thread34.i340.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread
  %.6.1 = phi i64 [ %.12.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.1 ], [ %.12.1, %.lr.ph575.1 ], [ %.6, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread ], [ %.6, %.thread34.i340.1 ], [ %.6, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.1 ] ; 11 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.no = load i16, ptr %i.nn, align 2
  %i.np = zext i16 %i.no to i64                   ; 5 uses
  %i.nq = icmp samesign ugt i64 %.0226593, %i.np
  br i1 %i.nq, label %bb.bt, label %.loopexit514

bb.bt:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1
  %.not.i335.2 = icmp eq i64 %.6.1, 0
  br i1 %.not.i335.2, label %.thread34.thread.i342.2, label %.lr.ph.i336.2

.lr.ph.i336.2:                                    ; preds = %bb.bt, %bb.bv
  %.02543.i337.2 = phi i64 [ %i.od, %bb.bv ], [ 0, %bb.bt ] ; 7 uses
  %i.nr = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.02543.i337.2 ; 5 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nt = load i64, ptr %i.ns, align 8            ; 2 uses
  %i.nu = icmp eq i64 %i.nt, %i.np
  br i1 %i.nu, label %bb.bu, label %.split.i338.2

.split.i338.2:                                    ; preds = %.lr.ph.i336.2
  %i.nv = icmp sgt i64 %i.nt, %i.np
  br i1 %i.nv, label %bb.bw, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph.i336.2
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nx = load i64, ptr %i.nw, align 8            ; 2 uses
  %i.ny = icmp eq i64 %i.nx, -1
  br i1 %i.ny, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.2, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.2

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.2: ; preds = %bb.bu
  %i.nz = icmp sgt i64 %i.nx, -1
  br i1 %i.nz, label %bb.bw, label %bb.bv

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.2: ; preds = %bb.bu
  %i.oa = load i64, ptr %i.nr, align 8            ; 2 uses
  %i.ob = icmp eq i64 %i.oa, -1
  br i1 %i.ob, label %.loopexit514, label %.split31.i352.2

.split31.i352.2:                                  ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.2
  %i.oc = icmp sgt i64 %i.oa, -1
  br i1 %i.oc, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.split31.i352.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.2, %.split.i338.2
  %i.od = add nuw i64 %.02543.i337.2, 1           ; 2 uses
  %exitcond.not.i339.2 = icmp eq i64 %i.od, %.6.1
  br i1 %exitcond.not.i339.2, label %.thread34.i340.2, label %.lr.ph.i336.2, !llvm.loop !812

.thread34.i340.2:                                 ; preds = %bb.bv
  %i.oe = icmp eq i64 %.6.1, 1
  br i1 %i.oe, label %.thread34.thread.i342.2, label %.loopexit514

bb.bw:                                            ; preds = %.split31.i352.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i350.2, %.split.i338.2
  %i.of = icmp eq i64 %.6.1, 1
  %spec.select482.2 = select i1 %i.of, i64 2, i64 %.6.1 ; 4 uses
  %.044.i346.2 = add i64 %spec.select482.2, -1
  %i.og = icmp ugt i64 %.044.i346.2, %.02543.i337.2
  br i1 %i.og, label %.lr.ph47.preheader.i347.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.2

.lr.ph47.preheader.i347.2:                        ; preds = %bb.bw
  %i.oh = mul i64 %.02543.i337.2, 280
  %i.oi = getelementptr i8, ptr %11, i64 %i.oh    ; 2 uses
  %scevgep.i348.2 = getelementptr i8, ptr %i.oi, i64 280
  %i.oj = xor i64 %.02543.i337.2, -1
  %i.ok = add i64 %spec.select482.2, %i.oj
  %i.ol = mul nuw i64 %i.ok, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i348.2, ptr align 8 %i.oi, i64 %i.ol, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.2

.thread34.thread.i342.2:                          ; preds = %.thread34.i340.2, %bb.bt
  %i.om = add nuw nsw i64 %.6.1, 1
  %i.on = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.6.1
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.2

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.2: ; preds = %.thread34.thread.i342.2, %.lr.ph47.preheader.i347.2, %bb.bw
  %.12.2 = phi i64 [ %i.om, %.thread34.thread.i342.2 ], [ %spec.select482.2, %.lr.ph47.preheader.i347.2 ], [ %spec.select482.2, %bb.bw ] ; 2 uses
  %.lcssa.sink.i344.2 = phi ptr [ %i.on, %.thread34.thread.i342.2 ], [ %i.nr, %.lr.ph47.preheader.i347.2 ], [ %i.nr, %bb.bw ] ; 2 uses
  %.1.ph.i345.2 = phi i64 [ %.6.1, %.thread34.thread.i342.2 ], [ %.02543.i337.2, %.lr.ph47.preheader.i347.2 ], [ %.02543.i337.2, %bb.bw ] ; 2 uses
  %.sroa.7463.0..lcssa.sink.i344.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i344.2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i344.2, i8 -1, i64 16, i1 false)
  store i64 %i.np, ptr %.sroa.7463.0..lcssa.sink.i344.sroa_idx.2, align 8
  %.not278.2 = icmp eq i64 %.1.ph.i345.2, 4294967295
  %brmerge605.2 = or i1 %.not278.2, %.not608
  br i1 %brmerge605.2, label %.loopexit514, label %.lr.ph575.2

.lr.ph575.2:                                      ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.2
  %i.oo = load ptr, ptr %i.er, align 8
  %i.op = mul i64 %4, %i.np
  %i.oq = getelementptr [8 x i8], ptr %i.oo, i64 %i.op
  %i.or = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.1.ph.i345.2
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.os, ptr align 8 %i.oq, i64 %i.et, i1 false)
  br label %.loopexit514

.loopexit514:                                     ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1, %.thread34.i340.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.2, %.lr.ph575.2, %.critedge
  %.7 = phi i64 [ %.4, %.critedge ], [ %.12.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.2 ], [ %.12.2, %.lr.ph575.2 ], [ %.6.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread.1 ], [ %.6.1, %.thread34.i340.2 ], [ %.6.1, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i351.2 ] ; 2 uses
  %i.ot = add nsw i64 %.0225579, 1                ; 2 uses
  %exitcond635.not = icmp eq i64 %i.ot, %i.fo
  br i1 %exitcond635.not, label %.critedge298, label %bb.az, !llvm.loop !816

.critedge298:                                     ; preds = %bb.az, %.loopexit514
  %.0467.lcssa.ph = phi i64 [ %.0467578, %bb.az ], [ %.7, %.loopexit514 ]
  %i.ou = icmp ugt i64 %.0467.lcssa.ph, 1
  br i1 %i.ou, label %bb.bx, label %.critedge298.thread

bb.bx:                                            ; preds = %.critedge298
  %i.ov = load i32, ptr %i.j, align 8
  %i.ow = icmp eq i32 %i.ov, 1
  br i1 %i.ow, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ox = add i64 %.1592, 1
  %i.oy = load ptr, ptr %10, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.1592
  %i.pa = load i8, ptr %i.oz, align 1
  %i.pb = zext i8 %i.pa to i64
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bx
  %i.pc = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 8 dereferenceable(52) %15)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.pd = zext i32 %i.pc to i64
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp507

bb.cc:                                            ; preds = %bb.ca, %bb.by
  %.2 = phi i64 [ %i.ox, %bb.by ], [ %.1592, %bb.ca ] ; 2 uses
  %.0216 = phi i64 [ %i.pb, %bb.by ], [ %i.pd, %bb.ca ]
  br i1 %.not608, label %.loopexit515, label %.lr.ph586

.lr.ph586:                                        ; preds = %bb.cc
  %i.pf = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.0216
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  %i.ph = mul i64 %.0226593, %4
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph586, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360
  %.0215584 = phi i64 [ 0, %.lr.ph586 ], [ %i.re, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360 ] ; 3 uses
  %i.pi = load i32, ptr %i.j, align 8
  %i.pj = icmp eq i32 %i.pi, 1
  br i1 %i.pj, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.pk = load i64, ptr %0, align 8               ; 2 uses
  %i.pl = add i64 %i.pk, 1                        ; 2 uses
  store i64 %i.pl, ptr %0, align 8
  %i.pm = load ptr, ptr %10, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.pk
  %i.po = load i8, ptr %i.pn, align 1             ; 2 uses
  %i.pp = zext i8 %i.po to i64
  %i.pq = icmp eq i8 %i.po, 127
  br i1 %i.pq, label %.preheader.i.i356, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360

.preheader.i.i356:                                ; preds = %bb.ce, %.preheader.i.i356
  %i.pr = phi i64 [ %i.ps, %.preheader.i.i356 ], [ %i.pl, %bb.ce ] ; 2 uses
  %.09.i.i357 = phi i64 [ %i.pz, %.preheader.i.i356 ], [ 127, %bb.ce ]
  %.0.i.i358 = phi i64 [ %i.qa, %.preheader.i.i356 ], [ 0, %bb.ce ] ; 2 uses
  %i.ps = add i64 %i.pr, 1                        ; 2 uses
  store i64 %i.ps, ptr %0, align 8
  %i.pt = load ptr, ptr %10, align 8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.pr
  %i.pv = load i8, ptr %i.pu, align 1
  %i.pw = zext i8 %i.pv to i64                    ; 2 uses
  %i.px = lshr i64 %i.pw, 1
  %i.py = shl i64 %i.px, %.0.i.i358
  %i.pz = add i64 %i.py, %.09.i.i357              ; 2 uses
  %i.qa = add i64 %.0.i.i358, 6
  %i.qb = and i64 %i.pw, 1
  %.not.i.i359 = icmp eq i64 %i.qb, 0
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
  %i.qc = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 8 dereferenceable(52) %16)
          to label %.noexc365 unwind label %.loopexit.split-lp507.loopexit.split-lp ; 2 uses

.noexc365:                                        ; preds = %bb.cf
  %i.qd = zext i32 %i.qc to i64
  %i.qe = icmp eq i32 %.0231, %i.qc
  br i1 %i.qe, label %.preheader510, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360

.preheader510:                                    ; preds = %.noexc365, %.noexc366
  %.014.i.i = phi i32 [ %.115.i.i, %.noexc366 ], [ %.0232, %.noexc365 ] ; 2 uses
  %.012.i.i = phi i32 [ %.113.i.i, %.noexc366 ], [ 0, %.noexc365 ]
  %i.qf = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(20) %14)
          to label %.noexc366 unwind label %.loopexit.split-lp507.loopexit ; 2 uses

.noexc366:                                        ; preds = %.preheader510
  %i.qg = icmp eq i32 %i.qf, 1                    ; 2 uses
  %i.qh = shl nuw i32 1, %.014.i.i
  %i.qi = zext i1 %i.qg to i32
  %.115.i.i = add nsw i32 %.014.i.i, %i.qi        ; 3 uses
  %i.qj = select i1 %i.qg, i32 %i.qh, i32 0
  %.113.i.i = add nsw i32 %i.qj, %.012.i.i        ; 2 uses
  %.not.i.i362 = icmp eq i32 %i.qf, 0
  br i1 %.not.i.i362, label %.preheader.i.i363, label %.preheader510, !llvm.loop !807

.preheader.i.i363:                                ; preds = %.noexc366
  %.not1617.i.i = icmp eq i32 %.115.i.i, 0
  br i1 %.not1617.i.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i363, %.noexc367
  %.019.i.i = phi i32 [ %.1.i.i364, %.noexc367 ], [ 0, %.preheader.i.i363 ]
  %.218.i.i = phi i32 [ %i.ql, %.noexc367 ], [ %.115.i.i, %.preheader.i.i363 ]
  %i.qk = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc367 unwind label %.loopexit506

.noexc367:                                        ; preds = %.lr.ph.i.i
  %i.ql = add nsw i32 %.218.i.i, -1               ; 3 uses
  %i.qm = icmp eq i32 %i.qk, 1
  %i.qn = shl nuw i32 1, %i.ql
  %i.qo = select i1 %i.qm, i32 %i.qn, i32 0
  %.1.i.i364 = or i32 %i.qo, %.019.i.i            ; 2 uses
  %.not16.i.i = icmp eq i32 %i.ql, 0
  br i1 %.not16.i.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i, label %.lr.ph.i.i, !llvm.loop !808

_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i: ; preds = %.noexc367, %.preheader.i.i363
  %.0.lcssa.i.i = phi i32 [ 0, %.preheader.i.i363 ], [ %.1.i.i364, %.noexc367 ]
  %i.qp = add nsw i32 %.0.lcssa.i.i, %.113.i.i
  %i.qq = zext i32 %i.qp to i64
  %i.qr = add nuw nsw i64 %i.qq, %i.es
  br label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360

_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360: ; preds = %.preheader.i.i356, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i, %.noexc365, %bb.ce
  %.0.i361.sink736 = phi i64 [ %i.qd, %.noexc365 ], [ %i.pp, %bb.ce ], [ %i.qr, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i ], [ %i.pz, %.preheader.i.i356 ] ; 3 uses
  %i.qs = and i64 %.0.i361.sink736, 1
  %.not.i10.i = icmp eq i64 %i.qs, 0
  %i.qt = add i64 %.0.i361.sink736, 1
  %i.qu = lshr exact i64 %i.qt, 1
  %i.qv = sub nsw i64 0, %i.qu
  %i.qw = lshr exact i64 %.0.i361.sink736, 1
  %i.qx = select i1 %.not.i10.i, i64 %i.qw, i64 %i.qv
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %.0215584
  %i.qz = load i64, ptr %i.qy, align 8
  %i.ra = add nsw i64 %i.qz, %i.qx
  %i.rb = load ptr, ptr %i.er, align 8
  %i.rc = getelementptr [8 x i8], ptr %i.rb, i64 %i.ph
  %i.rd = getelementptr [8 x i8], ptr %i.rc, i64 %.0215584
  store i64 %i.ra, ptr %i.rd, align 8
  %i.re = add nuw i64 %.0215584, 1                ; 2 uses
  %exitcond636.not = icmp eq i64 %i.re, %.0251
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
  %i.cm = mul i64 %.02543.i, 280
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
  %i.dt = mul i64 %.02543.i.1, 280
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
  %i.ey = mul i64 %.02543.i.2, 280
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
