inline.NumInlined: 10
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@compress_b44_impl:bb.a
  %i.fq = or disjoint i16 %.sroa.19.12.extract.trunc415, -32768
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am
  %.sroa.35.0.i.us = phi i16 [ %i.fp, %bb.ao ], [ %i.fq, %bb.ap ], [ -32768, %bb.am ] ; 3 uses
  %.sroa.19.14.extract.shift422 = lshr i64 %.sroa.19.1, 48
  %.sroa.19.14.extract.trunc423 = trunc nuw i64 %.sroa.19.14.extract.shift422 to i16 ; 3 uses
  %i.fr = and i16 %.sroa.19.14.extract.trunc423, 31744
  %i.fs = icmp eq i16 %i.fr, 31744
  br i1 %i.fs, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not74.7.i.us = icmp sgt i64 %.sroa.19.1, -1
  br i1 %.not74.7.i.us, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ft = xor i16 %.sroa.19.14.extract.trunc423, -1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.fu = or disjoint i16 %.sroa.19.14.extract.trunc423, -32768
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.aq
  %.sroa.40.0.i.us = phi i16 [ %i.ft, %bb.as ], [ %i.fu, %bb.at ], [ -32768, %bb.aq ] ; 2 uses
  %.sroa.36.16.extract.trunc430 = trunc i64 %.sroa.36.1 to i16 ; 4 uses
  %i.fv = and i16 %.sroa.36.16.extract.trunc430, 31744
  %i.fw = icmp eq i16 %i.fv, 31744
  br i1 %i.fw, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not74.8.i.us = icmp sgt i16 %.sroa.36.16.extract.trunc430, -1
  br i1 %.not74.8.i.us, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fx = xor i16 %.sroa.36.16.extract.trunc430, -1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.fy = or disjoint i16 %.sroa.36.16.extract.trunc430, -32768
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.au
  %.sroa.45.0.i.us = phi i16 [ %i.fx, %bb.aw ], [ %i.fy, %bb.ax ], [ -32768, %bb.au ] ; 2 uses
  %.sroa.36.18.extract.shift436 = lshr i64 %.sroa.36.1, 16
  %.sroa.36.18.extract.trunc437 = trunc i64 %.sroa.36.18.extract.shift436 to i16 ; 4 uses
  %i.fz = and i16 %.sroa.36.18.extract.trunc437, 31744
  %i.ga = icmp eq i16 %i.fz, 31744
  br i1 %i.ga, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not74.9.i.us = icmp sgt i16 %.sroa.36.18.extract.trunc437, -1
  br i1 %.not74.9.i.us, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gb = xor i16 %.sroa.36.18.extract.trunc437, -1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.gc = or disjoint i16 %.sroa.36.18.extract.trunc437, -32768
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.ay
  %.sroa.50.0.i.us = phi i16 [ %i.gb, %bb.ba ], [ %i.gc, %bb.bb ], [ -32768, %bb.ay ] ; 2 uses
  %.sroa.36.20.extract.shift444 = lshr i64 %.sroa.36.1, 32
  %.sroa.36.20.extract.trunc445 = trunc i64 %.sroa.36.20.extract.shift444 to i16 ; 4 uses
  %i.gd = and i16 %.sroa.36.20.extract.trunc445, 31744
  %i.ge = icmp eq i16 %i.gd, 31744
  br i1 %i.ge, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not74.10.i.us = icmp sgt i16 %.sroa.36.20.extract.trunc445, -1
  br i1 %.not74.10.i.us, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gf = xor i16 %.sroa.36.20.extract.trunc445, -1
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.gg = or disjoint i16 %.sroa.36.20.extract.trunc445, -32768
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bc
  %.sroa.55.0.i.us = phi i16 [ %i.gf, %bb.be ], [ %i.gg, %bb.bf ], [ -32768, %bb.bc ] ; 2 uses
  %.sroa.36.22.extract.shift452 = lshr i64 %.sroa.36.1, 48
  %.sroa.36.22.extract.trunc453 = trunc nuw i64 %.sroa.36.22.extract.shift452 to i16 ; 3 uses
  %i.gh = and i16 %.sroa.36.22.extract.trunc453, 31744
  %i.gi = icmp eq i16 %i.gh, 31744
  br i1 %i.gi, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not74.11.i.us = icmp sgt i64 %.sroa.36.1, -1
  br i1 %.not74.11.i.us, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gj = xor i16 %.sroa.36.22.extract.trunc453, -1
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.gk = or disjoint i16 %.sroa.36.22.extract.trunc453, -32768
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bg
  %.sroa.60.0.i.us = phi i16 [ %i.gj, %bb.bi ], [ %i.gk, %bb.bj ], [ -32768, %bb.bg ] ; 2 uses
  %.sroa.53.24.extract.trunc460 = trunc i64 %.sroa.53.1 to i16 ; 4 uses
  %i.gl = and i16 %.sroa.53.24.extract.trunc460, 31744
  %i.gm = icmp eq i16 %i.gl, 31744
  br i1 %i.gm, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not74.12.i.us = icmp sgt i16 %.sroa.53.24.extract.trunc460, -1
  br i1 %.not74.12.i.us, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gn = xor i16 %.sroa.53.24.extract.trunc460, -1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.go = or disjoint i16 %.sroa.53.24.extract.trunc460, -32768
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bk
  %.sroa.65.0.i.us = phi i16 [ %i.gn, %bb.bm ], [ %i.go, %bb.bn ], [ -32768, %bb.bk ] ; 2 uses
  %.sroa.53.26.extract.shift466 = lshr i64 %.sroa.53.1, 16
  %.sroa.53.26.extract.trunc467 = trunc i64 %.sroa.53.26.extract.shift466 to i16 ; 4 uses
  %i.gp = and i16 %.sroa.53.26.extract.trunc467, 31744
  %i.gq = icmp eq i16 %i.gp, 31744
  br i1 %i.gq, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not74.13.i.us = icmp sgt i16 %.sroa.53.26.extract.trunc467, -1
  br i1 %.not74.13.i.us, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gr = xor i16 %.sroa.53.26.extract.trunc467, -1
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.gs = or disjoint i16 %.sroa.53.26.extract.trunc467, -32768
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bo
  %.sroa.70.0.i.us = phi i16 [ %i.gr, %bb.bq ], [ %i.gs, %bb.br ], [ -32768, %bb.bo ] ; 2 uses
  %.sroa.53.28.extract.shift474 = lshr i64 %.sroa.53.1, 32
  %.sroa.53.28.extract.trunc475 = trunc i64 %.sroa.53.28.extract.shift474 to i16 ; 4 uses
  %i.gt = and i16 %.sroa.53.28.extract.trunc475, 31744
  %i.gu = icmp eq i16 %i.gt, 31744
  br i1 %i.gu, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not74.14.i.us = icmp sgt i16 %.sroa.53.28.extract.trunc475, -1
  br i1 %.not74.14.i.us, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gv = xor i16 %.sroa.53.28.extract.trunc475, -1
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.gw = or disjoint i16 %.sroa.53.28.extract.trunc475, -32768
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bs
  %.sroa.75.0.i.us = phi i16 [ %i.gv, %bb.bu ], [ %i.gw, %bb.bv ], [ -32768, %bb.bs ] ; 2 uses
  %.sroa.53.30.extract.shift482 = lshr i64 %.sroa.53.1, 48
  %.sroa.53.30.extract.trunc483 = trunc nuw i64 %.sroa.53.30.extract.shift482 to i16 ; 3 uses
  %i.gx = and i16 %.sroa.53.30.extract.trunc483, 31744
  %i.gy = icmp eq i16 %i.gx, 31744
  br i1 %i.gy, label %.preheader76.preheader.i.us, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.not74.15.i.us = icmp sgt i64 %.sroa.53.1, -1
  br i1 %.not74.15.i.us, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gz = xor i16 %.sroa.53.30.extract.trunc483, -1
  br label %.preheader76.preheader.i.us

bb.bz:                                            ; preds = %bb.bx
  %i.ha = or disjoint i16 %.sroa.53.30.extract.trunc483, -32768
  br label %.preheader76.preheader.i.us

.preheader76.preheader.i.us:                      ; preds = %bb.bz, %bb.by, %bb.bw
  %.sroa.80.0.i.us = phi i16 [ %i.gz, %bb.by ], [ %i.ha, %bb.bz ], [ -32768, %bb.bw ] ; 2 uses
  %spec.select.1.i.us = tail call i16 @llvm.umax.i16(i16 %.sroa.0.0.i.us, i16 %.sroa.10.0.i.us)
  %spec.select.2.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.1.i.us, i16 %.sroa.15.0.i.us)
  %spec.select.3.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.2.i.us, i16 %.sroa.20.0.i.us)
  %spec.select.4.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.3.i.us, i16 %.sroa.25.0.i.us)
  %spec.select.5.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.4.i.us, i16 %.sroa.30.0.i.us)
  %spec.select.6.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.5.i.us, i16 %.sroa.35.0.i.us)
  %spec.select.7.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.6.i.us, i16 %.sroa.40.0.i.us)
  %spec.select.8.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.7.i.us, i16 %.sroa.45.0.i.us)
  %spec.select.9.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.8.i.us, i16 %.sroa.50.0.i.us)
  %spec.select.10.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.9.i.us, i16 %.sroa.55.0.i.us)
  %spec.select.11.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.10.i.us, i16 %.sroa.60.0.i.us)
  %spec.select.12.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.11.i.us, i16 %.sroa.65.0.i.us)
  %spec.select.13.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.12.i.us, i16 %.sroa.70.0.i.us)
  %spec.select.14.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.13.i.us, i16 %.sroa.75.0.i.us)
  %spec.select.15.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.14.i.us, i16 %.sroa.80.0.i.us) ; 2 uses
  %i.hb = zext i16 %spec.select.15.i.us to i32    ; 4 uses
  %i.hc = zext i16 %.sroa.0.0.i.us to i32
  %i.hd = insertelement <4 x i16> poison, i16 %.sroa.45.0.i.us, i64 0
  %i.he = insertelement <4 x i16> %i.hd, i16 %.sroa.65.0.i.us, i64 1
  %i.hf = insertelement <4 x i16> %i.he, i16 %.sroa.10.0.i.us, i64 2
  %i.hg = insertelement <4 x i16> %i.hf, i16 %.sroa.15.0.i.us, i64 3
  %i.hh = zext <4 x i16> %i.hg to <4 x i32>
  %i.hi = zext i16 %.sroa.20.0.i.us to i32
  %i.hj = sub nsw i32 %i.hb, %i.hi
  %i.hk = shl nsw i32 %i.hj, 1                    ; 2 uses
  %i.hl = zext i16 %.sroa.25.0.i.us to i32
  %2 = sub nsw i32 %i.hb, %i.hl
  %i.hm = sub nsw i32 %i.hb, %i.hc
  %3 = shl nsw i32 %i.hm, 1                       ; 2 uses
  %i.hn = shl nsw i32 %2, 1                       ; 2 uses
  %i.ho = insertelement <4 x i16> poison, i16 %.sroa.30.0.i.us, i64 0
  %i.hp = insertelement <4 x i16> %i.ho, i16 %.sroa.50.0.i.us, i64 1
  %i.hq = insertelement <4 x i16> %i.hp, i16 %.sroa.70.0.i.us, i64 2
  %i.hr = insertelement <4 x i16> %i.hq, i16 %.sroa.35.0.i.us, i64 3
  %i.hs = zext <4 x i16> %i.hr to <4 x i32>
  %i.ht = insertelement <4 x i16> poison, i16 %.sroa.35.0.i.us, i64 0
  %i.hu = insertelement <4 x i16> %i.ht, i16 %.sroa.55.0.i.us, i64 1
  %i.hv = insertelement <4 x i16> %i.hu, i16 %.sroa.75.0.i.us, i64 2
  %i.hw = insertelement <4 x i16> %i.hv, i16 %.sroa.40.0.i.us, i64 3
  %i.hx = zext <4 x i16> %i.hw to <4 x i32>
  %i.hy = insertelement <2 x i16> poison, i16 %.sroa.60.0.i.us, i64 0
  %i.hz = insertelement <2 x i16> %i.hy, i16 %.sroa.80.0.i.us, i64 1
  %i.ia = zext <2 x i16> %i.hz to <2 x i32>
  %i.ib = insertelement <4 x i32> poison, i32 %i.hb, i64 0 ; 2 uses
  %i.ic = shufflevector <4 x i32> %i.ib, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.id = sub nsw <4 x i32> %i.ic, %i.hs
  %i.ie = sub nsw <4 x i32> %i.ic, %i.hx
  %i.if = shl nsw <4 x i32> %i.id, splat (i32 1)  ; 2 uses
  %i.ig = shl nsw <4 x i32> %i.ie, splat (i32 1)  ; 2 uses
  %i.ih = sub nsw <4 x i32> %i.ic, %i.hh
  %i.ii = shufflevector <4 x i32> %i.ib, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.ij = sub nsw <2 x i32> %i.ii, %i.ia
  %i.ik = shl nsw <4 x i32> %i.ih, splat (i32 1)  ; 2 uses
  %i.il = shl nsw <2 x i32> %i.ij, splat (i32 1)  ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.preheader76.preheader.i.us
  %.065.i.us = phi i32 [ %i.im, %bb.ca ], [ -1, %.preheader76.preheader.i.us ] ; 2 uses
  %i.im = add nsw i32 %.065.i.us, 1               ; 4 uses
  %notmask.i.i.us = shl nsw i32 -1, %i.im
  %i.in = xor i32 %notmask.i.i.us, -1             ; 4 uses
  %i.io = add nsw i32 %.065.i.us, 2               ; 7 uses
  %i.ip = lshr i32 %i.hk, %i.io
  %i.iq = and i32 %i.ip, 1
  %i.ir = add nsw i32 %i.hk, %i.in
  %i.is = add nsw i32 %i.ir, %i.iq
  %i.it = ashr i32 %i.is, %i.io
  %i.iu = insertelement <4 x i32> poison, i32 %i.io, i64 0 ; 2 uses
  %i.iv = shufflevector <4 x i32> %i.iu, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.iw = lshr <4 x i32> %i.if, %i.iv
  %i.ix = lshr <4 x i32> %i.ig, %i.iv
  %i.iy = and <4 x i32> %i.iw, splat (i32 1)
  %i.iz = insertelement <4 x i32> poison, i32 %i.in, i64 0 ; 2 uses
  %i.ja = shufflevector <4 x i32> %i.iz, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.jb = add nsw <4 x i32> %i.if, %i.ja
  %i.jc = and <4 x i32> %i.ix, splat (i32 1)
  %i.jd = add nsw <4 x i32> %i.ig, %i.ja
  %i.je = add nsw <4 x i32> %i.jb, %i.iy
  %i.jf = add nsw <4 x i32> %i.jd, %i.jc
  %i.jg = ashr <4 x i32> %i.je, %i.iv             ; 3 uses
  %i.jh = ashr <4 x i32> %i.jf, %i.iv             ; 2 uses
  %i.ji = extractelement <4 x i32> %i.jg, i64 0
  %i.jj = sub nsw <4 x i32> %i.jg, %i.jh          ; 3 uses
  %i.jk = add nsw <4 x i32> %i.jj, splat (i32 32) ; 6 uses
  %i.jl = lshr <4 x i32> %i.ik, %i.iv
  %i.jm = and <4 x i32> %i.jl, splat (i32 1)
  %i.jn = add nsw <4 x i32> %i.ik, %i.ja
  %i.jo = add nsw <4 x i32> %i.jn, %i.jm
  %i.jp = ashr <4 x i32> %i.jo, %i.iv             ; 5 uses
  %i.jq = shufflevector <4 x i32> %i.iu, <4 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jr = lshr <2 x i32> %i.il, %i.jq
  %i.js = and <2 x i32> %i.jr, splat (i32 1)
  %i.jt = shufflevector <4 x i32> %i.iz, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.ju = add nsw <2 x i32> %i.il, %i.jt
  %i.jv = add nsw <2 x i32> %i.ju, %i.js
  %i.jw = ashr <2 x i32> %i.jv, %i.jq
  %i.jx = extractelement <4 x i32> %i.jp, i64 0
  %4 = lshr i32 %i.hn, %i.io
  %5 = lshr i32 %3, %i.io
  %6 = and i32 %4, 1
  %7 = and i32 %5, 1
  %8 = add nsw i32 %i.hn, %i.in
  %9 = add nsw i32 %3, %i.in
  %10 = add nsw i32 %8, %6
  %11 = add nsw i32 %9, %7
  %12 = ashr i32 %10, %i.io                       ; 3 uses
  %13 = ashr i32 %11, %i.io                       ; 3 uses
  %14 = sub nsw i32 %12, %i.ji                    ; 2 uses
  %15 = add nsw i32 %14, 32                       ; 3 uses
  %16 = sub nsw i32 %12, %i.jx                    ; 2 uses
  %i.jy = sub nsw i32 %13, %12                    ; 2 uses
  %17 = add nsw i32 %16, 32                       ; 3 uses
  %i.jz = add nsw i32 %i.jy, 32                   ; 3 uses
  %shift = shufflevector <4 x i32> %i.jp, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = sub nsw <4 x i32> %i.jp, %shift
  %i.ka = extractelement <4 x i32> %foldExtExtBinop, i64 0
  %i.kb = add nsw i32 %i.ka, 32                   ; 3 uses
  %i.kc = extractelement <4 x i32> %i.jp, i64 2
  %i.kd = sub nsw i32 %13, %i.kc
  %i.ke = add nsw i32 %i.kd, 32                   ; 3 uses
  %18 = shufflevector <4 x i32> %i.jp, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %19 = shufflevector <4 x i32> %i.jh, <4 x i32> %i.jk, <8 x i32> <i32 1, i32 2, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <8 x i32> %18, <8 x i32> %19, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kf = shufflevector <4 x i32> %i.jg, <4 x i32> poison, <8 x i32> <i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kg = shufflevector <8 x i32> %i.kf, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 0>, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 14, i32 15>
  %i.kh = shufflevector <8 x i32> %i.kg, <8 x i32> %18, <8 x i32> <i32 0, i32 1, i32 11, i32 poison, i32 poison, i32 poison, i32 6, i32 7>
  %i.ki = insertelement <8 x i32> %i.kh, i32 %i.it, i64 3
  %i.kj = shufflevector <2 x i32> %i.jw, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kk = shufflevector <8 x i32> %i.ki, <8 x i32> %i.kj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.kl = sub nsw <8 x i32> %20, %i.kk            ; 3 uses
  %i.km = add nsw <8 x i32> %i.kl, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 0, i32 0> ; 7 uses
  %i.kn = extractelement <4 x i32> %i.jk, i64 2
  %i.ko = extractelement <4 x i32> %i.jk, i64 3
  %i.kp = shufflevector <4 x i32> %i.jk, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <8 x i32> %i.km, <8 x i32> %i.kp, <10 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9, i32 poison, i32 poison>
  %22 = shufflevector <4 x i32> %i.jk, <4 x i32> poison, <10 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = insertelement <12 x i32> poison, i32 %i.jz, i64 0
  %24 = insertelement <12 x i32> %23, i32 %17, i64 1
  %25 = shufflevector <10 x i32> %21, <10 x i32> %22, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 poison, i32 poison>
  %26 = shufflevector <12 x i32> %25, <12 x i32> %24, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 12, i32 13>
  %27 = tail call i32 @llvm.vector.reduce.smin.v12i32(<12 x i32> %26)
  %i.kq = tail call i32 @llvm.smin.i32(i32 %27, i32 %i.kb)
  %i.kr = tail call i32 @llvm.smin.i32(i32 %i.ke, i32 %15)
  %i.ks = tail call i32 @llvm.smin.i32(i32 %i.kq, i32 %i.kr) ; 2 uses
  %i.kt = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.km)
  %i.ku = tail call i32 @llvm.smax.i32(i32 %i.kt, i32 %i.jz)
  %i.kv = tail call i32 @llvm.smax.i32(i32 %17, i32 %i.kb)
  %i.kw = tail call i32 @llvm.smax.i32(i32 %i.ke, i32 %15)
  %i.kx = tail call i32 @llvm.smax.i32(i32 %i.kn, i32 %i.ko)
  %i.ky = tail call i32 @llvm.smax.i32(i32 %i.ku, i32 %i.kv)
  %i.kz = tail call i32 @llvm.smax.i32(i32 %i.kw, i32 %i.kx)
  %i.la = tail call i32 @llvm.smax.i32(i32 %i.ky, i32 %i.kz) ; 2 uses
  %i.lb = icmp slt i32 %i.ks, 0
  %i.lc = icmp sgt i32 %i.la, 63
  %i.ld = select i1 %i.lb, i1 true, i1 %i.lc
  br i1 %i.ld, label %bb.ca, label %bb.cb, !llvm.loop !37

bb.cb:                                            ; preds = %bb.ca
  %i.le = icmp eq i32 %i.ks, 32
  %i.lf = icmp eq i32 %i.la, 32
  %or.cond.i.us = select i1 %i.le, i1 %i.lf, i1 false
  %or.cond3.i.us = and i1 %i.u, %or.cond.i.us
  br i1 %or.cond3.i.us, label %pack.exit.us, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lg = shl i32 %13, %i.im
  %i.lh = trunc i32 %i.lg to i16
  %i.li = sub i16 %spec.select.15.i.us, %i.lh
  %.sroa.0.1.i.us = select i1 %.not219.not.us, i16 %i.li, i16 %.sroa.0.0.i.us
  %i.lj = shl i32 %i.im, 2
  %i.lk = lshr i32 %i.jz, 4
  %i.ll = or i32 %i.lk, %i.lj
  %i.lm = trunc i32 %i.ll to i8
  %i.ln = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 2
  store i8 %i.lm, ptr %i.ln, align 1, !tbaa !38
  %i.lo = shl i32 %i.jy, 4
  %i.lp = lshr i32 %17, 2
  %i.lq = or i32 %i.lp, %i.lo
  %i.lr = trunc i32 %i.lq to i8
  %i.ls = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 3
  store i8 %i.lr, ptr %i.ls, align 1, !tbaa !38
  %i.lt = shl i32 %16, 6
  %i.lu = or i32 %i.kb, %i.lt
  %i.lv = trunc i32 %i.lu to i8
  %i.lw = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 4
  store i8 %i.lv, ptr %i.lw, align 1, !tbaa !38
  %i.lx = shl i32 %i.ke, 2
  %i.ly = lshr i32 %15, 4
  %i.lz = or i32 %i.ly, %i.lx
  %i.ma = trunc i32 %i.lz to i8
  %i.mb = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 5
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !38
  %i.mc = shl i32 %14, 4
  %i.md = extractelement <8 x i32> %i.km, i64 0
  %i.me = lshr i32 %i.md, 2
  %i.mf = or i32 %i.me, %i.mc
  %i.mg = trunc i32 %i.mf to i8
  %i.mh = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 6
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !38
  %i.mi = extractelement <8 x i32> %i.kl, i64 0
  %i.mj = shl i32 %i.mi, 6
  %i.mk = extractelement <8 x i32> %i.km, i64 1
  %i.ml = or i32 %i.mk, %i.mj
  %i.mm = trunc i32 %i.ml to i8
  %i.mn = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 7
  store i8 %i.mm, ptr %i.mn, align 1, !tbaa !38
  %i.mo = shufflevector <4 x i32> %i.jj, <4 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mp = shufflevector <8 x i32> %i.mo, <8 x i32> %i.km, <4 x i32> <i32 10, i32 1, i32 2, i32 11>
  %i.mq = shl <4 x i32> %i.mp, <i32 2, i32 4, i32 6, i32 2>
  %i.mr = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 8
  %i.ms = lshr <4 x i32> %i.jk, <i32 4, i32 2, i32 0, i32 4>
  %i.mt = or <4 x i32> %i.ms, %i.mq
  %i.mu = trunc <4 x i32> %i.mt to <4 x i8>
  store <4 x i8> %i.mu, ptr %i.mr, align 1, !tbaa !38
  %i.mv = extractelement <4 x i32> %i.jj, i64 3
  %i.mw = shl i32 %i.mv, 4
  %i.mx = extractelement <8 x i32> %i.km, i64 4
  %i.my = lshr i32 %i.mx, 2
  %i.mz = or i32 %i.my, %i.mw
  %i.na = trunc i32 %i.mz to i8
  %i.nb = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 12
  store i8 %i.na, ptr %i.nb, align 1, !tbaa !38
  %i.nc = extractelement <8 x i32> %i.kl, i64 4
  %i.nd = shl i32 %i.nc, 6
  %i.ne = extractelement <8 x i32> %i.km, i64 5
  %i.nf = or i32 %i.ne, %i.nd
  %i.ng = trunc i32 %i.nf to i8
  br label %pack.exit.us

pack.exit.us:                                     ; preds = %bb.cb, %bb.cc
  %.sink489.in.in = phi i16 [ %.sroa.0.1.i.us, %bb.cc ], [ %.sroa.0.0.i.us, %bb.cb ] ; 2 uses
  %.sink216.i.us = phi i64 [ 13, %bb.cc ], [ 2, %bb.cb ]
  %.sink.i.us = phi i8 [ %i.ng, %bb.cc ], [ -4, %bb.cb ]
  %.071.i.us = phi i64 [ 14, %bb.cc ], [ 3, %bb.cb ] ; 2 uses
  %.sink = trunc i16 %.sink489.in.in to i8
  %.sink489.in = lshr i16 %.sink489.in.in, 8
  %.sink489 = trunc nuw i16 %.sink489.in to i8
  store i8 %.sink489, ptr %.2192303.us, align 1, !tbaa !38
  %i.nh = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 1
  store i8 %.sink, ptr %i.nh, align 1, !tbaa !38
  %i.ni = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 %.sink216.i.us
  store i8 %.sink.i.us, ptr %i.ni, align 1, !tbaa !38
  %i.nj = add i64 %.071.i.us, %.2187304.us        ; 4 uses
  %i.nk = add i64 %i.nj, 14
  %i.nl = load i64, ptr %i.t, align 8, !tbaa !39
  %.not221.us = icmp ugt i64 %i.nk, %i.nl
  br i1 %.not221.us, label %.thread247, label %bb.cd

bb.cd:                                            ; preds = %pack.exit.us
  %i.nm = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 %.071.i.us ; 3 uses
  %i.nn = add nuw nsw i32 %.0162309.us, 4         ; 2 uses
  %.not222.us = icmp slt i32 %i.nn, %i.bk
  br i1 %.not222.us, label %bb.l, label %..thread_crit_edge.us, !llvm.loop !40

.preheader.us:                                    ; preds = %bb.l
  %i.no = xor i32 %.0162309.us, -1
  %i.np = add nsw i32 %i.bk, %i.no                ; 4 uses
  %spec.select226.us = tail call i32 @llvm.smin.i32(i32 %i.np, i32 0)
  %i.nq = sext i32 %spec.select226.us to i64      ; 4 uses
  %i.nr = getelementptr inbounds [2 x i8], ptr %.0169305.us, i64 %i.nq
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !36
  %.sroa.0.0.insert.ext372 = zext i16 %i.ns to i64
  %i.nt = getelementptr inbounds [2 x i8], ptr %.2168306.us, i64 %i.nq
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !36
  %.sroa.19.8.insert.ext402 = zext i16 %i.nu to i64
  %i.nv = getelementptr inbounds [2 x i8], ptr %.2307.us, i64 %i.nq
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !36
  %.sroa.36.16.insert.ext432 = zext i16 %i.nw to i64
  %i.nx = getelementptr inbounds [2 x i8], ptr %.1308.us, i64 %i.nq
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !36
  %.sroa.53.24.insert.ext462 = zext i16 %i.ny to i64
  %spec.select226.us.1 = tail call i32 @llvm.smin.i32(i32 %i.np, i32 1)
  %i.nz = sext i32 %spec.select226.us.1 to i64    ; 4 uses
  %i.oa = getelementptr inbounds [2 x i8], ptr %.0169305.us, i64 %i.nz
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !36
  %.sroa.0.2.insert.ext379 = zext i16 %i.ob to i64
  %.sroa.0.2.insert.shift380 = shl nuw nsw i64 %.sroa.0.2.insert.ext379, 16
  %.sroa.0.2.insert.insert382 = or disjoint i64 %.sroa.0.2.insert.shift380, %.sroa.0.0.insert.ext372
  %i.oc = getelementptr inbounds [2 x i8], ptr %.2168306.us, i64 %i.nz
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !36
  %.sroa.19.10.insert.ext409 = zext i16 %i.od to i64
  %.sroa.19.10.insert.shift410 = shl nuw nsw i64 %.sroa.19.10.insert.ext409, 16
  %.sroa.19.10.insert.insert412 = or disjoint i64 %.sroa.19.10.insert.shift410, %.sroa.19.8.insert.ext402
  %i.oe = getelementptr inbounds [2 x i8], ptr %.2307.us, i64 %i.nz
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !36
  %.sroa.36.18.insert.ext439 = zext i16 %i.of to i64
  %.sroa.36.18.insert.shift440 = shl nuw nsw i64 %.sroa.36.18.insert.ext439, 16
  %.sroa.36.18.insert.insert442 = or disjoint i64 %.sroa.36.18.insert.shift440, %.sroa.36.16.insert.ext432
  %i.og = getelementptr inbounds [2 x i8], ptr %.1308.us, i64 %i.nz
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !36
  %.sroa.53.26.insert.ext469 = zext i16 %i.oh to i64
  %.sroa.53.26.insert.shift470 = shl nuw nsw i64 %.sroa.53.26.insert.ext469, 16
  %.sroa.53.26.insert.insert472 = or disjoint i64 %.sroa.53.26.insert.shift470, %.sroa.53.24.insert.ext462
  %spec.select226.us.2 = tail call i32 @llvm.smin.i32(i32 %i.np, i32 2)
  %i.oi = sext i32 %spec.select226.us.2 to i64    ; 4 uses
  %i.oj = getelementptr inbounds [2 x i8], ptr %.0169305.us, i64 %i.oi
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !36
  %.sroa.0.4.insert.ext387 = zext i16 %i.ok to i64
  %.sroa.0.4.insert.shift388 = shl nuw nsw i64 %.sroa.0.4.insert.ext387, 32
  %.sroa.0.4.insert.insert390 = or disjoint i64 %.sroa.0.2.insert.insert382, %.sroa.0.4.insert.shift388
  %i.ol = getelementptr inbounds [2 x i8], ptr %.2168306.us, i64 %i.oi
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !36
  %.sroa.19.12.insert.ext417 = zext i16 %i.om to i64
  %.sroa.19.12.insert.shift418 = shl nuw nsw i64 %.sroa.19.12.insert.ext417, 32
  %.sroa.19.12.insert.insert420 = or disjoint i64 %.sroa.19.10.insert.insert412, %.sroa.19.12.insert.shift418
  %i.on = getelementptr inbounds [2 x i8], ptr %.2307.us, i64 %i.oi
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !36
  %.sroa.36.20.insert.ext447 = zext i16 %i.oo to i64
  %.sroa.36.20.insert.shift448 = shl nuw nsw i64 %.sroa.36.20.insert.ext447, 32
  %.sroa.36.20.insert.insert450 = or disjoint i64 %.sroa.36.18.insert.insert442, %.sroa.36.20.insert.shift448
  %i.op = getelementptr inbounds [2 x i8], ptr %.1308.us, i64 %i.oi
  %i.oq = load i16, ptr %i.op, align 2, !tbaa !36
  %.sroa.53.28.insert.ext477 = zext i16 %i.oq to i64
  %.sroa.53.28.insert.shift478 = shl nuw nsw i64 %.sroa.53.28.insert.ext477, 32
  %.sroa.53.28.insert.insert480 = or disjoint i64 %.sroa.53.26.insert.insert472, %.sroa.53.28.insert.shift478
  %spec.select226.us.3 = tail call i32 @llvm.smin.i32(i32 %i.np, i32 3)
  %i.or = sext i32 %spec.select226.us.3 to i64    ; 4 uses
  %i.os = getelementptr inbounds [2 x i8], ptr %.0169305.us, i64 %i.or
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !36
  %.sroa.0.6.insert.ext395 = zext i16 %i.ot to i64
  %.sroa.0.6.insert.shift396 = shl nuw i64 %.sroa.0.6.insert.ext395, 48
  %.sroa.0.6.insert.insert398 = or disjoint i64 %.sroa.0.4.insert.insert390, %.sroa.0.6.insert.shift396
  %i.ou = getelementptr inbounds [2 x i8], ptr %.2168306.us, i64 %i.or
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !36
  %.sroa.19.14.insert.ext425 = zext i16 %i.ov to i64
  %.sroa.19.14.insert.shift426 = shl nuw i64 %.sroa.19.14.insert.ext425, 48
  %.sroa.19.14.insert.insert428 = or disjoint i64 %.sroa.19.12.insert.insert420, %.sroa.19.14.insert.shift426
  %i.ow = getelementptr inbounds [2 x i8], ptr %.2307.us, i64 %i.or
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !36
  %.sroa.36.22.insert.ext455 = zext i16 %i.ox to i64
  %.sroa.36.22.insert.shift456 = shl nuw i64 %.sroa.36.22.insert.ext455, 48
  %.sroa.36.22.insert.insert458 = or disjoint i64 %.sroa.36.20.insert.insert450, %.sroa.36.22.insert.shift456
  %i.oy = getelementptr inbounds [2 x i8], ptr %.1308.us, i64 %i.or
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !36
  %.sroa.53.30.insert.ext485 = zext i16 %i.oz to i64
  %.sroa.53.30.insert.shift486 = shl nuw i64 %.sroa.53.30.insert.ext485, 48
  %.sroa.53.30.insert.insert488 = or disjoint i64 %.sroa.53.28.insert.insert480, %.sroa.53.30.insert.shift486
  br label %.loopexit.us

..thread_crit_edge.us:                            ; preds = %bb.cd
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 4 ; 2 uses
  %i.pa = trunc nuw i64 %indvars.iv.next364 to i32
  %i.pb = icmp sgt i32 %i.bm, %i.pa
  br i1 %i.pb, label %.lr.ph317.split.us, label %select.unfold, !llvm.loop !41

bb.ce:                                            ; preds = %bb.k
  %i.pc = add i64 %i.bt, %.0185323                ; 2 uses
  %i.pd = load i64, ptr %i.t, align 8, !tbaa !39
  %i.pe = icmp ugt i64 %i.pc, %i.pd
  br i1 %i.pe, label %.thread247, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0190322, ptr align 1 %.2183324, i64 %i.bt, i1 false)
  %i.pf = getelementptr inbounds nuw i8, ptr %.0190322, i64 %i.bt
  %i.pg = getelementptr inbounds nuw i8, ptr %.2183324, i64 %i.bt
  br label %.thread234

select.unfold:                                    ; preds = %..thread_crit_edge.us, %.lr.ph317, %.preheader261
  %.1191.lcssa = phi ptr [ %.0190322, %.preheader261 ], [ %.0190322, %.lr.ph317 ], [ %i.nm, %..thread_crit_edge.us ]
  %.1186.lcssa = phi i64 [ %.0185323, %.preheader261 ], [ %.0185323, %.lr.ph317 ], [ %i.nj, %..thread_crit_edge.us ]
  %i.ph = getelementptr inbounds nuw i8, ptr %.2183324, i64 %i.bt
  br label %.thread234

.thread234:                                       ; preds = %select.unfold, %bb.cf, %bb.j
  %.3184241 = phi ptr [ %.2183324, %bb.j ], [ %i.pg, %bb.cf ], [ %i.ph, %select.unfold ]
  %.5240 = phi i64 [ %.0185323, %bb.j ], [ %i.pc, %bb.cf ], [ %.1186.lcssa, %select.unfold ] ; 3 uses
  %.5195239 = phi ptr [ %.0190322, %bb.j ], [ %i.pf, %bb.cf ], [ %.1191.lcssa, %select.unfold ]
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %i.pi = load i16, ptr %i.q, align 8, !tbaa !18
  %i.pj = sext i16 %i.pi to i64
  %.not223 = icmp slt i64 %indvars.iv.next367, %i.pj
  br i1 %.not223, label %bb.j, label %.thread249, !llvm.loop !42

.thread249:                                       ; preds = %.thread234
  %i.pk = load i64, ptr %i.e, align 8, !tbaa !16  ; 2 uses
  %i.pl = icmp ugt i64 %.5240, %i.pk
  br i1 %i.pl, label %bb.cg, label %.thread249.thread

bb.cg:                                            ; preds = %.thread249
  %i.pm = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.pn = load ptr, ptr %i.h, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pm, ptr align 1 %i.pn, i64 %i.pk, i1 false)
  %i.po = load i64, ptr %i.e, align 8, !tbaa !16
  br label %.thread249.thread

.thread249.thread:                                ; preds = %._crit_edge300, %bb.cg, %.thread249
  %.7 = phi i64 [ %i.po, %bb.cg ], [ %.5240, %.thread249 ], [ 0, %._crit_edge300 ]
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.7, ptr %i.pp, align 8, !tbaa !43
  br label %.thread247

.thread247:                                       ; preds = %bb.ce, %pack.exit.us, %bb.a, %.thread249.thread
  %.8 = phi i32 [ 1, %pack.exit.us ], [ 0, %.thread249.thread ], [ %i.g, %bb.a ], [ 1, %bb.ce ]
end_hunk_0
begin_hunk_1_@uncompress_b44_impl:bb.a
  %.5176303 = phi ptr [ %.0171356, %bb.b ], [ %i.kx, %bb.s ], [ %.1172.lcssa, %select.unfold ]
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %i.la = load i16, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.lb = sext i16 %i.la to i64
  %.not199 = icmp slt i64 %indvars.iv.next380, %i.lb
  br i1 %.not199, label %bb.b, label %.critedge.preheader, !llvm.loop !53

bb.t:                                             ; preds = %.lr.ph371, %.critedge
  %i.lc = phi i32 [ %i.i, %.lr.ph371 ], [ %i.ml, %.critedge ]
  %i.ld = phi i16 [ %i.g, %.lr.ph371 ], [ %i.mm, %.critedge ] ; 2 uses
  %i.le = phi i16 [ %i.g, %.lr.ph371 ], [ %i.mn, %.critedge ] ; 2 uses
  %.0146370 = phi i32 [ 0, %.lr.ph371 ], [ %i.mo, %.critedge ] ; 4 uses
  %.6157369 = phi i64 [ 0, %.lr.ph371 ], [ %.7.lcssa, %.critedge ] ; 2 uses
  %.0167368 = phi ptr [ %3, %.lr.ph371 ], [ %.1168.lcssa, %.critedge ] ; 2 uses
  %i.lf = load i32, ptr %i.j, align 8, !tbaa !54
  %i.lg = add nsw i32 %i.lf, %.0146370
  %i.lh = icmp sgt i16 %i.le, 0
  br i1 %i.lh, label %.lr.ph365.preheader, label %.critedge

.lr.ph365.preheader:                              ; preds = %bb.t
  %i.li = load ptr, ptr %i.b, align 8, !tbaa !49
  br label %.lr.ph365

.lr.ph365:                                        ; preds = %.lr.ph365.preheader, %bb.aa
  %i.lj = phi i16 [ %i.ld, %.lr.ph365.preheader ], [ %i.mi, %bb.aa ] ; 2 uses
  %indvars.iv382 = phi i64 [ 0, %.lr.ph365.preheader ], [ %indvars.iv.next383, %bb.aa ] ; 2 uses
  %.7363 = phi i64 [ %.6157369, %.lr.ph365.preheader ], [ %.8.ph, %bb.aa ] ; 3 uses
  %.2165362 = phi ptr [ %i.li, %.lr.ph365.preheader ], [ %.3166.ph, %bb.aa ] ; 4 uses
  %.1168361 = phi ptr [ %.0167368, %.lr.ph365.preheader ], [ %.2169.ph, %bb.aa ] ; 4 uses
  %i.lk = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.ll = getelementptr inbounds nuw [48 x i8], ptr %i.lk, i64 %indvars.iv382 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 12
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !25
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !28
  %i.lq = sext i32 %i.ln to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 25
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !29
  %i.lt = sext i8 %i.ls to i64
  %i.lu = mul nsw i64 %i.lt, %i.lq                ; 5 uses
  %i.lv = sext i32 %i.lp to i64
  %i.lw = mul i64 %i.lu, %i.lv                    ; 3 uses
  %i.lx = icmp eq i64 %i.lw, 0
  br i1 %i.lx, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %.lr.ph365
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ll, i64 20
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !30 ; 3 uses
  %i.ma = icmp sgt i32 %i.lz, 1
  br i1 %i.ma, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.mb = srem i32 %i.lg, %i.lz
  %.not200 = icmp eq i32 %i.mb, 0
  br i1 %.not200, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.mc = getelementptr inbounds nuw i8, ptr %.2165362, i64 %i.lw
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.md = udiv i32 %.0146370, %i.lz
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x
  %.pn201.in = phi i32 [ %i.md, %bb.x ], [ %.0146370, %bb.u ]
  %i.me = add i64 %i.lu, %.7363                   ; 2 uses
  %i.mf = icmp ugt i64 %i.me, %4
  br i1 %i.mf, label %.thread306, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.pn201 = zext i32 %.pn201.in to i64
  %.pn = mul i64 %i.lu, %.pn201
  %.0162 = getelementptr inbounds nuw i8, ptr %.2165362, i64 %.pn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1168361, ptr align 1 %.0162, i64 %i.lu, i1 false)
  %i.mg = getelementptr inbounds nuw i8, ptr %.1168361, i64 %i.lu
  %i.mh = getelementptr inbounds nuw i8, ptr %.2165362, i64 %i.lw
  %.pre = load i16, ptr %i.d, align 8, !tbaa !44
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w, %.lr.ph365
  %i.mi = phi i16 [ %i.lj, %.lr.ph365 ], [ %i.lj, %bb.w ], [ %.pre, %bb.z ] ; 4 uses
  %.2169.ph = phi ptr [ %.1168361, %.lr.ph365 ], [ %.1168361, %bb.w ], [ %i.mg, %bb.z ] ; 2 uses
  %.3166.ph = phi ptr [ %.2165362, %.lr.ph365 ], [ %i.mc, %bb.w ], [ %i.mh, %bb.z ]
  %.8.ph = phi i64 [ %.7363, %.lr.ph365 ], [ %.7363, %bb.w ], [ %i.me, %bb.z ] ; 2 uses
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 2 uses
  %i.mj = sext i16 %i.mi to i64
  %i.mk = icmp slt i64 %indvars.iv.next383, %i.mj
  br i1 %i.mk, label %.lr.ph365, label %.critedge.loopexit, !llvm.loop !55

.critedge.loopexit:                               ; preds = %bb.aa
  %.pre465 = load i32, ptr %i.h, align 4, !tbaa !50
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.t
  %i.ml = phi i32 [ %i.lc, %bb.t ], [ %.pre465, %.critedge.loopexit ] ; 2 uses
  %i.mm = phi i16 [ %i.ld, %bb.t ], [ %i.mi, %.critedge.loopexit ]
  %i.mn = phi i16 [ %i.le, %bb.t ], [ %i.mi, %.critedge.loopexit ]
  %.1168.lcssa = phi ptr [ %.0167368, %bb.t ], [ %.2169.ph, %.critedge.loopexit ]
  %.7.lcssa = phi i64 [ %.6157369, %bb.t ], [ %.8.ph, %.critedge.loopexit ]
  %i.mo = add nuw nsw i32 %.0146370, 1            ; 2 uses
  %.not202 = icmp slt i32 %i.mo, %i.ml
  br i1 %.not202, label %bb.t, label %.critedge206, !llvm.loop !56

.critedge206:                                     ; preds = %.critedge, %.critedge.preheader
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %4, ptr %i.mp, align 8, !tbaa !57
  br label %.thread306

.thread306:                                       ; preds = %bb.r, %bb.f, %bb.d, %bb.y, %.critedge206
  %.11 = phi i32 [ 0, %.critedge206 ], [ 1, %bb.y ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_undo_b44a(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %compute_scratch_buffer_size.exit

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  br label %bb.b

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %4)
  br label %compute_scratch_buffer_size.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.02131.i = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %bb.b ]
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load <2 x i32>, ptr %i.j, align 8, !tbaa !47 ; 3 uses
  %i.l = srem <2 x i32> %i.k, splat (i32 4)       ; 2 uses
  %i.m = icmp eq <2 x i32> %i.l, zeroinitializer
  %i.n = add <2 x i32> %i.k, splat (i32 4)
  %i.o = sub <2 x i32> %i.n, %i.l
  %i.p = select <2 x i1> %i.m, <2 x i32> %i.k, <2 x i32> %i.o ; 2 uses
  %i.q = extractelement <2 x i32> %i.p, i64 0
  %i.r = sext i32 %i.q to i64
  %i.s = extractelement <2 x i32> %i.p, i64 1
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  %i.v = load i8, ptr %i.u, align 1, !tbaa !29
  %i.w = sext i8 %i.v to i64
  %i.x = mul nsw i64 %i.t, %i.w
  %i.y = mul i64 %i.x, %i.r
  %i.z = add i64 %i.y, %.02131.i                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !48

compute_scratch_buffer_size.exit:                 ; preds = %bb.a, %._crit_edge.loopexit.i
  %.021.lcssa.i = phi i64 [ %4, %bb.a ], [ %i.h, %._crit_edge.loopexit.i ]
  %i.aa = tail call i32 @internal_decode_alloc_buffer(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.021.lcssa.i) #5 ; 2 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %compute_scratch_buffer_size.exit
  tail call void (...) @exrcore_ensure_b44_tables() #5
  %i.ab = tail call fastcc i32 @uncompress_b44_impl(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %compute_scratch_buffer_size.exit, %bb.c
  %.0 = phi i32 [ %i.ab, %bb.c ], [ %i.aa, %compute_scratch_buffer_size.exit ]
  ret i32 %.0
}

declare i32 @internal_encode_alloc_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v8i32(<8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v12i32(<12 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 168}
!9 = !{!"_exr_encode_pipeline", !10, i64 0, !11, i64 8, !12, i64 16, !12, i64 18, !5, i64 20, !13, i64 24, !14, i64 32, !11, i64 96, !11, i64 104, !10, i64 112, !10, i64 120, !15, i64 128, !10, i64 136, !11, i64 144, !10, i64 152, !10, i64 160, !11, i64 168, !10, i64 176, !10, i64 184, !11, i64 192, !10, i64 200, !11, i64 208, !10, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !6, i64 272}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!"p1 _ZTS19_priv_exr_context_t", !11, i64 0}
!14 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !6, i64 21, !6, i64 22, !6, i64 23, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!15 = !{!"p1 int", !11, i64 0}
!16 = !{!9, !10, i64 112}
!17 = !{!9, !5, i64 44}
!18 = !{!9, !12, i64 16}
!19 = !{!9, !11, i64 104}
!20 = !{!9, !11, i64 192}
!21 = !{!9, !5, i64 40}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!9, !11, i64 8}
!25 = !{!26, !5, i64 12}
!26 = !{!"", !27, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 25, !12, i64 26, !12, i64 28, !12, i64 30, !5, i64 32, !5, i64 36, !6, i64 40}
!27 = !{!"p1 omnipotent char", !11, i64 0}
!28 = !{!26, !5, i64 8}
!29 = !{!26, !6, i64 25}
!30 = !{!26, !5, i64 20}
!31 = distinct !{!31, !23}
!32 = !{!26, !12, i64 26}
!33 = !{!26, !6, i64 24}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 short", !11, i64 0}
!36 = !{!12, !12, i64 0}
!37 = distinct !{!37, !23}
!38 = !{!6, !6, i64 0}
!39 = !{!9, !10, i64 184}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23}
!43 = !{!9, !10, i64 176}
!44 = !{!45, !12, i64 16}
!45 = !{!"_exr_decode_pipeline", !10, i64 0, !11, i64 8, !12, i64 16, !12, i64 18, !5, i64 20, !13, i64 24, !14, i64 32, !5, i64 96, !5, i64 100, !10, i64 104, !11, i64 112, !11, i64 120, !10, i64 128, !11, i64 136, !10, i64 144, !11, i64 152, !10, i64 160, !15, i64 168, !10, i64 176, !11, i64 184, !10, i64 192, !11, i64 200, !10, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !6, i64 264}
!46 = !{!45, !11, i64 8}
!47 = !{!5, !5, i64 0}
!48 = distinct !{!48, !23}
!49 = !{!45, !11, i64 184}
!50 = !{!45, !5, i64 44}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !23}
!53 = distinct !{!53, !23}
!54 = !{!45, !5, i64 40}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23}
!57 = !{!45, !10, i64 104}
end_hunk_1
