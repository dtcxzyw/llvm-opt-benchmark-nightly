inline.NumInlined: 10
inline.NumDeleted: 9
begin_hunk_0_@compress_b44_impl:bb.a
  %i.fr = or disjoint i16 %.sroa.19.12.extract.trunc415, -32768
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am
  %.sroa.35.0.i.us = phi i16 [ %i.fq, %bb.ao ], [ %i.fr, %bb.ap ], [ -32768, %bb.am ] ; 2 uses
  %.sroa.19.14.extract.shift422 = lshr i64 %.sroa.19.4, 48
  %.sroa.19.14.extract.trunc423 = trunc nuw i64 %.sroa.19.14.extract.shift422 to i16 ; 3 uses
  %i.fs = and i16 %.sroa.19.14.extract.trunc423, 31744
  %i.ft = icmp eq i16 %i.fs, 31744
  br i1 %i.ft, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not74.7.i.us = icmp sgt i64 %.sroa.19.4, -1
  br i1 %.not74.7.i.us, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fu = xor i16 %.sroa.19.14.extract.trunc423, -1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.fv = or disjoint i16 %.sroa.19.14.extract.trunc423, -32768
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.aq
  %.sroa.40.0.i.us = phi i16 [ %i.fu, %bb.as ], [ %i.fv, %bb.at ], [ -32768, %bb.aq ] ; 2 uses
  %.sroa.36.16.extract.trunc430 = trunc i64 %.sroa.36.4 to i16 ; 4 uses
  %i.fw = and i16 %.sroa.36.16.extract.trunc430, 31744
  %i.fx = icmp eq i16 %i.fw, 31744
  br i1 %i.fx, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not74.8.i.us = icmp sgt i16 %.sroa.36.16.extract.trunc430, -1
  br i1 %.not74.8.i.us, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fy = xor i16 %.sroa.36.16.extract.trunc430, -1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.fz = or disjoint i16 %.sroa.36.16.extract.trunc430, -32768
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.au
  %.sroa.45.0.i.us = phi i16 [ %i.fy, %bb.aw ], [ %i.fz, %bb.ax ], [ -32768, %bb.au ] ; 2 uses
  %.sroa.36.18.extract.shift436 = lshr i64 %.sroa.36.4, 16
  %.sroa.36.18.extract.trunc437 = trunc i64 %.sroa.36.18.extract.shift436 to i16 ; 4 uses
  %i.ga = and i16 %.sroa.36.18.extract.trunc437, 31744
  %i.gb = icmp eq i16 %i.ga, 31744
  br i1 %i.gb, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not74.9.i.us = icmp sgt i16 %.sroa.36.18.extract.trunc437, -1
  br i1 %.not74.9.i.us, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gc = xor i16 %.sroa.36.18.extract.trunc437, -1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.gd = or disjoint i16 %.sroa.36.18.extract.trunc437, -32768
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.ay
  %.sroa.50.0.i.us = phi i16 [ %i.gc, %bb.ba ], [ %i.gd, %bb.bb ], [ -32768, %bb.ay ] ; 2 uses
  %.sroa.36.20.extract.shift444 = lshr i64 %.sroa.36.4, 32
  %.sroa.36.20.extract.trunc445 = trunc i64 %.sroa.36.20.extract.shift444 to i16 ; 4 uses
  %i.ge = and i16 %.sroa.36.20.extract.trunc445, 31744
  %i.gf = icmp eq i16 %i.ge, 31744
  br i1 %i.gf, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not74.10.i.us = icmp sgt i16 %.sroa.36.20.extract.trunc445, -1
  br i1 %.not74.10.i.us, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gg = xor i16 %.sroa.36.20.extract.trunc445, -1
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.gh = or disjoint i16 %.sroa.36.20.extract.trunc445, -32768
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bc
  %.sroa.55.0.i.us = phi i16 [ %i.gg, %bb.be ], [ %i.gh, %bb.bf ], [ -32768, %bb.bc ] ; 2 uses
  %.sroa.36.22.extract.shift452 = lshr i64 %.sroa.36.4, 48
  %.sroa.36.22.extract.trunc453 = trunc nuw i64 %.sroa.36.22.extract.shift452 to i16 ; 3 uses
  %i.gi = and i16 %.sroa.36.22.extract.trunc453, 31744
  %i.gj = icmp eq i16 %i.gi, 31744
  br i1 %i.gj, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not74.11.i.us = icmp sgt i64 %.sroa.36.4, -1
  br i1 %.not74.11.i.us, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gk = xor i16 %.sroa.36.22.extract.trunc453, -1
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.gl = or disjoint i16 %.sroa.36.22.extract.trunc453, -32768
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bg
  %.sroa.60.0.i.us = phi i16 [ %i.gk, %bb.bi ], [ %i.gl, %bb.bj ], [ -32768, %bb.bg ] ; 2 uses
  %.sroa.53.24.extract.trunc460 = trunc i64 %.sroa.53.4 to i16 ; 4 uses
  %i.gm = and i16 %.sroa.53.24.extract.trunc460, 31744
  %i.gn = icmp eq i16 %i.gm, 31744
  br i1 %i.gn, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not74.12.i.us = icmp sgt i16 %.sroa.53.24.extract.trunc460, -1
  br i1 %.not74.12.i.us, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.go = xor i16 %.sroa.53.24.extract.trunc460, -1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.gp = or disjoint i16 %.sroa.53.24.extract.trunc460, -32768
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bk
  %.sroa.65.0.i.us = phi i16 [ %i.go, %bb.bm ], [ %i.gp, %bb.bn ], [ -32768, %bb.bk ] ; 2 uses
  %.sroa.53.26.extract.shift466 = lshr i64 %.sroa.53.4, 16
  %.sroa.53.26.extract.trunc467 = trunc i64 %.sroa.53.26.extract.shift466 to i16 ; 4 uses
  %i.gq = and i16 %.sroa.53.26.extract.trunc467, 31744
  %i.gr = icmp eq i16 %i.gq, 31744
  br i1 %i.gr, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not74.13.i.us = icmp sgt i16 %.sroa.53.26.extract.trunc467, -1
  br i1 %.not74.13.i.us, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gs = xor i16 %.sroa.53.26.extract.trunc467, -1
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.gt = or disjoint i16 %.sroa.53.26.extract.trunc467, -32768
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bo
  %.sroa.70.0.i.us = phi i16 [ %i.gs, %bb.bq ], [ %i.gt, %bb.br ], [ -32768, %bb.bo ] ; 2 uses
  %.sroa.53.28.extract.shift474 = lshr i64 %.sroa.53.4, 32
  %.sroa.53.28.extract.trunc475 = trunc i64 %.sroa.53.28.extract.shift474 to i16 ; 4 uses
  %i.gu = and i16 %.sroa.53.28.extract.trunc475, 31744
  %i.gv = icmp eq i16 %i.gu, 31744
  br i1 %i.gv, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not74.14.i.us = icmp sgt i16 %.sroa.53.28.extract.trunc475, -1
  br i1 %.not74.14.i.us, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gw = xor i16 %.sroa.53.28.extract.trunc475, -1
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.gx = or disjoint i16 %.sroa.53.28.extract.trunc475, -32768
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bs
  %.sroa.75.0.i.us = phi i16 [ %i.gw, %bb.bu ], [ %i.gx, %bb.bv ], [ -32768, %bb.bs ] ; 2 uses
  %.sroa.53.30.extract.shift482 = lshr i64 %.sroa.53.4, 48
  %.sroa.53.30.extract.trunc483 = trunc nuw i64 %.sroa.53.30.extract.shift482 to i16 ; 3 uses
  %i.gy = and i16 %.sroa.53.30.extract.trunc483, 31744
  %i.gz = icmp eq i16 %i.gy, 31744
  br i1 %i.gz, label %.preheader76.preheader.i.us, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.not74.15.i.us = icmp sgt i64 %.sroa.53.4, -1
  br i1 %.not74.15.i.us, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ha = xor i16 %.sroa.53.30.extract.trunc483, -1
  br label %.preheader76.preheader.i.us

bb.bz:                                            ; preds = %bb.bx
  %i.hb = or disjoint i16 %.sroa.53.30.extract.trunc483, -32768
  br label %.preheader76.preheader.i.us

.preheader76.preheader.i.us:                      ; preds = %bb.bz, %bb.by, %bb.bw
  %.sroa.80.0.i.us = phi i16 [ %i.ha, %bb.by ], [ %i.hb, %bb.bz ], [ -32768, %bb.bw ] ; 2 uses
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
  %i.hc = zext i16 %spec.select.15.i.us to i32    ; 6 uses
  %i.hd = zext i16 %.sroa.0.0.i.us to i32
  %2 = sub nsw i32 %i.hc, %i.hd
  %3 = shl nsw i32 %2, 1                          ; 2 uses
  %i.he = zext i16 %.sroa.10.0.i.us to i32
  %i.hf = sub nsw i32 %i.hc, %i.he
  %i.hg = shl nsw i32 %i.hf, 1                    ; 2 uses
  %4 = zext i16 %.sroa.15.0.i.us to i32
  %i.hh = sub nsw i32 %i.hc, %4
  %i.hi = shl nsw i32 %i.hh, 1                    ; 2 uses
  %i.hj = zext i16 %.sroa.20.0.i.us to i32
  %i.hk = sub nsw i32 %i.hc, %i.hj
  %i.hl = shl nsw i32 %i.hk, 1                    ; 2 uses
  %i.hm = insertelement <8 x i16> poison, i16 %.sroa.25.0.i.us, i64 0
  %i.hn = insertelement <8 x i16> %i.hm, i16 %.sroa.45.0.i.us, i64 1
  %i.ho = insertelement <8 x i16> %i.hn, i16 %.sroa.65.0.i.us, i64 2
  %i.hp = insertelement <8 x i16> %i.ho, i16 %.sroa.30.0.i.us, i64 3
  %i.hq = insertelement <8 x i16> %i.hp, i16 %.sroa.50.0.i.us, i64 4
  %i.hr = insertelement <8 x i16> %i.hq, i16 %.sroa.70.0.i.us, i64 5
  %i.hs = insertelement <8 x i16> %i.hr, i16 %.sroa.35.0.i.us, i64 6
  %i.ht = insertelement <8 x i16> %i.hs, i16 %.sroa.55.0.i.us, i64 7 ; 2 uses
  %i.hu = zext <8 x i16> %i.ht to <8 x i32>
  %i.hv = insertelement <8 x i16> %i.ht, i16 %.sroa.75.0.i.us, i64 0
  %i.hw = insertelement <8 x i16> %i.hv, i16 %.sroa.40.0.i.us, i64 1
  %i.hx = insertelement <8 x i16> %i.hw, i16 %.sroa.60.0.i.us, i64 2
  %i.hy = zext <8 x i16> %i.hx to <8 x i32>
  %i.hz = insertelement <8 x i32> poison, i32 %i.hc, i64 0
  %i.ia = shufflevector <8 x i32> %i.hz, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ib = sub nsw <8 x i32> %i.ia, %i.hu
  %i.ic = sub nsw <8 x i32> %i.ia, %i.hy
  %i.id = shl nsw <8 x i32> %i.ib, splat (i32 1)  ; 3 uses
  %i.ie = shl nsw <8 x i32> %i.ic, splat (i32 1)  ; 2 uses
  %i.if = shufflevector <8 x i32> %i.ie, <8 x i32> poison, <8 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2>
  %i.ig = zext i16 %.sroa.80.0.i.us to i32
  %i.ih = sub nsw i32 %i.hc, %i.ig
  %i.ii = shl nsw i32 %i.ih, 1                    ; 2 uses
  %i.ij = shufflevector <8 x i32> %i.id, <8 x i32> %i.ie, <8 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10>
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.preheader76.preheader.i.us
  %.066.i.us = phi i32 [ %i.ik, %bb.ca ], [ -1, %.preheader76.preheader.i.us ] ; 2 uses
  %i.ik = add nsw i32 %.066.i.us, 1               ; 4 uses
  %notmask.i.i.us = shl nsw i32 -1, %i.ik
  %i.il = xor i32 %notmask.i.i.us, -1             ; 6 uses
  %5 = add nsw i32 %.066.i.us, 2                  ; 11 uses
  %6 = lshr i32 %3, %5
  %7 = and i32 %6, 1
  %8 = add nsw i32 %3, %i.il
  %9 = add nsw i32 %8, %7
  %10 = ashr i32 %9, %5                           ; 3 uses
  %11 = lshr i32 %i.hg, %5
  %12 = and i32 %11, 1
  %13 = add nsw i32 %i.hg, %i.il
  %14 = add nsw i32 %13, %12
  %15 = ashr i32 %14, %5                          ; 2 uses
  %16 = lshr i32 %i.hi, %5
  %17 = and i32 %16, 1
  %18 = add nsw i32 %i.hi, %i.il
  %i.im = add nsw i32 %18, %17
  %19 = ashr i32 %i.im, %5                        ; 2 uses
  %i.in = lshr i32 %i.hl, %5
  %i.io = and i32 %i.in, 1
  %i.ip = add nsw i32 %i.hl, %i.il
  %i.iq = add nsw i32 %i.ip, %i.io
  %i.ir = ashr i32 %i.iq, %5
  %i.is = lshr i32 %i.ii, %5
  %i.it = and i32 %i.is, 1
  %i.iu = add nsw i32 %i.ii, %i.il
  %i.iv = add nsw i32 %i.iu, %i.it
  %i.iw = ashr i32 %i.iv, %5
  %20 = sub nsw i32 %10, %15
  %21 = add nsw i32 %20, 32                       ; 3 uses
  %22 = sub nsw i32 %15, %19
  %23 = add nsw i32 %22, 32                       ; 3 uses
  %24 = sub nsw i32 %19, %i.ir
  %25 = add nsw i32 %24, 32                       ; 3 uses
  %i.ix = insertelement <8 x i32> poison, i32 %5, i64 0
  %i.iy = shufflevector <8 x i32> %i.ix, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.iz = lshr <8 x i32> %i.id, %i.iy
  %i.ja = lshr <8 x i32> %i.ij, %i.iy
  %i.jb = and <8 x i32> %i.iz, splat (i32 1)
  %i.jc = insertelement <8 x i32> poison, i32 %i.il, i64 0
  %i.jd = shufflevector <8 x i32> %i.jc, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.je = add nsw <8 x i32> %i.id, %i.jd
  %i.jf = and <8 x i32> %i.ja, splat (i32 1)
  %i.jg = add nsw <8 x i32> %i.if, %i.jd
  %i.jh = add nsw <8 x i32> %i.je, %i.jb
  %i.ji = add nsw <8 x i32> %i.jg, %i.jf
  %i.jj = ashr <8 x i32> %i.jh, %i.iy             ; 4 uses
  %i.jk = ashr <8 x i32> %i.ji, %i.iy             ; 2 uses
  %26 = extractelement <8 x i32> %i.jj, i64 0     ; 2 uses
  %27 = sub nsw i32 %10, %26                      ; 2 uses
  %28 = add nsw i32 %27, 32                       ; 3 uses
  %29 = extractelement <8 x i32> %i.jj, i64 1     ; 2 uses
  %30 = sub nsw i32 %26, %29                      ; 2 uses
  %31 = add nsw i32 %30, 32                       ; 3 uses
  %32 = extractelement <8 x i32> %i.jj, i64 2
  %33 = sub nsw i32 %29, %32
  %i.jl = add nsw i32 %33, 32                     ; 3 uses
  %34 = sub nsw <8 x i32> %i.jj, %i.jk            ; 3 uses
  %35 = add nsw <8 x i32> %34, splat (i32 32)     ; 9 uses
  %36 = extractelement <8 x i32> %i.jk, i64 5
  %37 = sub nsw i32 %36, %i.iw
  %i.jm = add nsw i32 %37, 32                     ; 3 uses
  %spec.select75.i.us = tail call i32 @llvm.smin.i32(i32 %28, i32 %31)
  %.169.i.us = tail call i32 @llvm.smax.i32(i32 %28, i32 %31)
  %spec.select75.1.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select75.i.us, i32 %i.jl)
  %.169.1.i.us = tail call i32 @llvm.smax.i32(i32 %.169.i.us, i32 %i.jl)
  %spec.select75.2.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select75.1.i.us, i32 %21)
  %.169.2.i.us = tail call i32 @llvm.smax.i32(i32 %.169.1.i.us, i32 %21)
  %38 = extractelement <8 x i32> %35, i64 0       ; 2 uses
  %spec.select75.3.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select75.2.i.us, i32 %38)
  %.169.3.i.us = tail call i32 @llvm.smax.i32(i32 %.169.2.i.us, i32 %38)
  %39 = extractelement <8 x i32> %35, i64 1       ; 2 uses
  %spec.select75.4.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select75.3.i.us, i32 %39)
  %.169.4.i.us = tail call i32 @llvm.smax.i32(i32 %.169.3.i.us, i32 %39)
  %40 = extractelement <8 x i32> %35, i64 2       ; 2 uses
  %spec.select75.5.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select75.4.i.us, i32 %40)
  %.169.5.i.us = tail call i32 @llvm.smax.i32(i32 %.169.4.i.us, i32 %40)
  %spec.select75.6.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select75.5.i.us, i32 %23)
  %.169.6.i.us = tail call i32 @llvm.smax.i32(i32 %.169.5.i.us, i32 %23)
  %i.jn = extractelement <8 x i32> %35, i64 3     ; 2 uses
  %spec.select75.7.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select75.6.i.us, i32 %i.jn)
  %.169.7.i.us = tail call i32 @llvm.smax.i32(i32 %.169.6.i.us, i32 %i.jn)
  %i.jo = extractelement <8 x i32> %35, i64 4     ; 2 uses
  %spec.select75.8.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select75.7.i.us, i32 %i.jo)
  %.169.8.i.us = tail call i32 @llvm.smax.i32(i32 %.169.7.i.us, i32 %i.jo)
  %41 = extractelement <8 x i32> %35, i64 5       ; 2 uses
  %spec.select75.9.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select75.8.i.us, i32 %41)
  %.169.9.i.us = tail call i32 @llvm.smax.i32(i32 %.169.8.i.us, i32 %41)
  %spec.select75.10.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select75.9.i.us, i32 %25)
  %.169.10.i.us = tail call i32 @llvm.smax.i32(i32 %.169.9.i.us, i32 %25)
  %42 = extractelement <8 x i32> %35, i64 6       ; 2 uses
  %spec.select75.11.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select75.10.i.us, i32 %42)
  %.169.11.i.us = tail call i32 @llvm.smax.i32(i32 %.169.10.i.us, i32 %42)
  %43 = extractelement <8 x i32> %35, i64 7       ; 2 uses
  %spec.select75.12.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select75.11.i.us, i32 %43)
  %.169.12.i.us = tail call i32 @llvm.smax.i32(i32 %.169.11.i.us, i32 %43)
  %spec.select75.13.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select75.12.i.us, i32 %i.jm) ; 2 uses
  %.169.13.i.us = tail call i32 @llvm.smax.i32(i32 %.169.12.i.us, i32 %i.jm) ; 2 uses
  %i.jp = icmp slt i32 %spec.select75.13.i.us, 0
  %i.jq = icmp sgt i32 %.169.13.i.us, 63
  %i.jr = select i1 %i.jp, i1 true, i1 %i.jq
  br i1 %i.jr, label %bb.ca, label %bb.cb, !llvm.loop !36

bb.cb:                                            ; preds = %bb.ca
  %i.js = icmp eq i32 %spec.select75.13.i.us, 32
  %i.jt = icmp eq i32 %.169.13.i.us, 32
  %or.cond.i.us = select i1 %i.js, i1 %i.jt, i1 false
  %or.cond3.i.us = and i1 %i.u, %or.cond.i.us
  br i1 %or.cond3.i.us, label %pack.exit.us, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ju = shl i32 %10, %i.ik
  %i.jv = trunc i32 %i.ju to i16
  %i.jw = sub i16 %spec.select.15.i.us, %i.jv
  %.sroa.0.1.i.us = select i1 %.not219.not.us, i16 %i.jw, i16 %.sroa.0.0.i.us
  %i.jx = shl i32 %i.ik, 2
  %i.jy = lshr i32 %28, 4
  %i.jz = or i32 %i.jy, %i.jx
  %i.ka = trunc i32 %i.jz to i8
  %i.kb = getelementptr inbounds nuw i8, ptr %.2176304.us, i64 2
  store i8 %i.ka, ptr %i.kb, align 1, !tbaa !37
  %i.kc = shl i32 %27, 4
  %i.kd = lshr i32 %31, 2
  %i.ke = or i32 %i.kd, %i.kc
  %i.kf = trunc i32 %i.ke to i8
  %i.kg = getelementptr inbounds nuw i8, ptr %.2176304.us, i64 3
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !37
  %i.kh = shl i32 %30, 6
  %i.ki = or i32 %i.jl, %i.kh
  %i.kj = trunc i32 %i.ki to i8
  %i.kk = getelementptr inbounds nuw i8, ptr %.2176304.us, i64 4
  store i8 %i.kj, ptr %i.kk, align 1, !tbaa !37
  %i.kl = shufflevector <8 x i32> %34, <8 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 3, i32 4, i32 poison, i32 6>
  %44 = insertelement <8 x i32> %i.kl, i32 %21, i64 0
  %i.km = insertelement <8 x i32> %44, i32 %23, i64 3
  %i.kn = insertelement <8 x i32> %i.km, i32 %25, i64 6
  %i.ko = shl <8 x i32> %i.kn, <i32 2, i32 4, i32 6, i32 2, i32 4, i32 6, i32 2, i32 4>
  %i.kp = getelementptr inbounds nuw i8, ptr %.2176304.us, i64 5
  %i.kq = lshr <8 x i32> %35, <i32 4, i32 2, i32 0, i32 4, i32 2, i32 0, i32 4, i32 2>
  %i.kr = or <8 x i32> %i.kq, %i.ko
  %i.ks = trunc <8 x i32> %i.kr to <8 x i8>
  store <8 x i8> %i.ks, ptr %i.kp, align 1, !tbaa !37
  %i.kt = extractelement <8 x i32> %34, i64 7
  %i.ku = shl i32 %i.kt, 6
  %i.kv = or i32 %i.jm, %i.ku
  %i.kw = trunc i32 %i.kv to i8
  br label %pack.exit.us

pack.exit.us:                                     ; preds = %bb.cb, %bb.cc
  %.sink489.in.in = phi i16 [ %.sroa.0.1.i.us, %bb.cc ], [ %.sroa.0.0.i.us, %bb.cb ] ; 2 uses
  %.sink216.i.us = phi i64 [ 13, %bb.cc ], [ 2, %bb.cb ]
  %.sink.i.us = phi i8 [ %i.kw, %bb.cc ], [ -4, %bb.cb ]
  %.065.i.us = phi i64 [ 14, %bb.cc ], [ 3, %bb.cb ] ; 2 uses
  %.sink = trunc i16 %.sink489.in.in to i8
  %.sink489.in = lshr i16 %.sink489.in.in, 8
  %.sink489 = trunc nuw i16 %.sink489.in to i8
  store i8 %.sink489, ptr %.2176304.us, align 1, !tbaa !37
  %i.kx = getelementptr inbounds nuw i8, ptr %.2176304.us, i64 1
  store i8 %.sink, ptr %i.kx, align 1, !tbaa !37
  %i.ky = getelementptr inbounds nuw i8, ptr %.2176304.us, i64 %.sink216.i.us
  store i8 %.sink.i.us, ptr %i.ky, align 1, !tbaa !37
  %i.kz = add i64 %.065.i.us, %.2183303.us        ; 4 uses
  %i.la = add i64 %i.kz, 14
  %i.lb = load i64, ptr %i.t, align 8, !tbaa !38
  %.not221.us = icmp ugt i64 %i.la, %i.lb
  br i1 %.not221.us, label %.thread247, label %bb.cd

bb.cd:                                            ; preds = %pack.exit.us
  %i.lc = getelementptr inbounds nuw i8, ptr %.2176304.us, i64 %.065.i.us ; 3 uses
  %i.ld = add nuw nsw i32 %.0163309.us, 4         ; 2 uses
  %.not222.us = icmp slt i32 %i.ld, %i.bk
  br i1 %.not222.us, label %bb.l, label %..thread_crit_edge.us, !llvm.loop !39

.preheader.us:                                    ; preds = %bb.l
  %i.le = xor i32 %.0163309.us, -1
  %i.lf = add nsw i32 %i.bk, %i.le                ; 4 uses
  %spec.select226.us = tail call i32 @llvm.smin.i32(i32 %i.lf, i32 0)
  %i.lg = sext i32 %spec.select226.us to i64      ; 4 uses
  %i.lh = getelementptr inbounds [2 x i8], ptr %.0172305.us, i64 %i.lg
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !35
  %.sroa.0.0.insert.ext372 = zext i16 %i.li to i64
  %i.lj = getelementptr inbounds [2 x i8], ptr %.2171306.us, i64 %i.lg
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !35
  %.sroa.19.8.insert.ext402 = zext i16 %i.lk to i64
  %i.ll = getelementptr inbounds [2 x i8], ptr %.2168307.us, i64 %i.lg
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !35
  %.sroa.36.16.insert.ext432 = zext i16 %i.lm to i64
  %i.ln = getelementptr inbounds [2 x i8], ptr %.1165308.us, i64 %i.lg
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !35
  %.sroa.53.24.insert.ext462 = zext i16 %i.lo to i64
  %spec.select226.us.1 = tail call i32 @llvm.smin.i32(i32 %i.lf, i32 1)
  %i.lp = sext i32 %spec.select226.us.1 to i64    ; 4 uses
  %i.lq = getelementptr inbounds [2 x i8], ptr %.0172305.us, i64 %i.lp
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !35
  %.sroa.0.2.insert.ext379 = zext i16 %i.lr to i64
  %.sroa.0.2.insert.shift380 = shl nuw nsw i64 %.sroa.0.2.insert.ext379, 16
  %.sroa.0.2.insert.insert382 = or disjoint i64 %.sroa.0.2.insert.shift380, %.sroa.0.0.insert.ext372
  %i.ls = getelementptr inbounds [2 x i8], ptr %.2171306.us, i64 %i.lp
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !35
  %.sroa.19.10.insert.ext409 = zext i16 %i.lt to i64
  %.sroa.19.10.insert.shift410 = shl nuw nsw i64 %.sroa.19.10.insert.ext409, 16
  %.sroa.19.10.insert.insert412 = or disjoint i64 %.sroa.19.10.insert.shift410, %.sroa.19.8.insert.ext402
  %i.lu = getelementptr inbounds [2 x i8], ptr %.2168307.us, i64 %i.lp
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !35
  %.sroa.36.18.insert.ext439 = zext i16 %i.lv to i64
  %.sroa.36.18.insert.shift440 = shl nuw nsw i64 %.sroa.36.18.insert.ext439, 16
  %.sroa.36.18.insert.insert442 = or disjoint i64 %.sroa.36.18.insert.shift440, %.sroa.36.16.insert.ext432
  %i.lw = getelementptr inbounds [2 x i8], ptr %.1165308.us, i64 %i.lp
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !35
  %.sroa.53.26.insert.ext469 = zext i16 %i.lx to i64
  %.sroa.53.26.insert.shift470 = shl nuw nsw i64 %.sroa.53.26.insert.ext469, 16
  %.sroa.53.26.insert.insert472 = or disjoint i64 %.sroa.53.26.insert.shift470, %.sroa.53.24.insert.ext462
  %spec.select226.us.2 = tail call i32 @llvm.smin.i32(i32 %i.lf, i32 2)
  %i.ly = sext i32 %spec.select226.us.2 to i64    ; 4 uses
  %i.lz = getelementptr inbounds [2 x i8], ptr %.0172305.us, i64 %i.ly
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !35
  %.sroa.0.4.insert.ext387 = zext i16 %i.ma to i64
  %.sroa.0.4.insert.shift388 = shl nuw nsw i64 %.sroa.0.4.insert.ext387, 32
  %.sroa.0.4.insert.insert390 = or disjoint i64 %.sroa.0.2.insert.insert382, %.sroa.0.4.insert.shift388
  %i.mb = getelementptr inbounds [2 x i8], ptr %.2171306.us, i64 %i.ly
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !35
  %.sroa.19.12.insert.ext417 = zext i16 %i.mc to i64
  %.sroa.19.12.insert.shift418 = shl nuw nsw i64 %.sroa.19.12.insert.ext417, 32
  %.sroa.19.12.insert.insert420 = or disjoint i64 %.sroa.19.10.insert.insert412, %.sroa.19.12.insert.shift418
  %i.md = getelementptr inbounds [2 x i8], ptr %.2168307.us, i64 %i.ly
  %i.me = load i16, ptr %i.md, align 2, !tbaa !35
  %.sroa.36.20.insert.ext447 = zext i16 %i.me to i64
  %.sroa.36.20.insert.shift448 = shl nuw nsw i64 %.sroa.36.20.insert.ext447, 32
  %.sroa.36.20.insert.insert450 = or disjoint i64 %.sroa.36.18.insert.insert442, %.sroa.36.20.insert.shift448
  %i.mf = getelementptr inbounds [2 x i8], ptr %.1165308.us, i64 %i.ly
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !35
  %.sroa.53.28.insert.ext477 = zext i16 %i.mg to i64
  %.sroa.53.28.insert.shift478 = shl nuw nsw i64 %.sroa.53.28.insert.ext477, 32
  %.sroa.53.28.insert.insert480 = or disjoint i64 %.sroa.53.26.insert.insert472, %.sroa.53.28.insert.shift478
  %spec.select226.us.3 = tail call i32 @llvm.smin.i32(i32 %i.lf, i32 3)
  %i.mh = sext i32 %spec.select226.us.3 to i64    ; 4 uses
  %i.mi = getelementptr inbounds [2 x i8], ptr %.0172305.us, i64 %i.mh
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !35
  %.sroa.0.6.insert.ext395 = zext i16 %i.mj to i64
  %.sroa.0.6.insert.shift396 = shl nuw i64 %.sroa.0.6.insert.ext395, 48
  %.sroa.0.6.insert.insert398 = or disjoint i64 %.sroa.0.4.insert.insert390, %.sroa.0.6.insert.shift396
  %i.mk = getelementptr inbounds [2 x i8], ptr %.2171306.us, i64 %i.mh
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !35
  %.sroa.19.14.insert.ext425 = zext i16 %i.ml to i64
  %.sroa.19.14.insert.shift426 = shl nuw i64 %.sroa.19.14.insert.ext425, 48
  %.sroa.19.14.insert.insert428 = or disjoint i64 %.sroa.19.12.insert.insert420, %.sroa.19.14.insert.shift426
  %i.mm = getelementptr inbounds [2 x i8], ptr %.2168307.us, i64 %i.mh
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !35
  %.sroa.36.22.insert.ext455 = zext i16 %i.mn to i64
  %.sroa.36.22.insert.shift456 = shl nuw i64 %.sroa.36.22.insert.ext455, 48
  %.sroa.36.22.insert.insert458 = or disjoint i64 %.sroa.36.20.insert.insert450, %.sroa.36.22.insert.shift456
  %i.mo = getelementptr inbounds [2 x i8], ptr %.1165308.us, i64 %i.mh
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !35
  %.sroa.53.30.insert.ext485 = zext i16 %i.mp to i64
  %.sroa.53.30.insert.shift486 = shl nuw i64 %.sroa.53.30.insert.ext485, 48
  %.sroa.53.30.insert.insert488 = or disjoint i64 %.sroa.53.28.insert.insert480, %.sroa.53.30.insert.shift486
  br label %.loopexit.us

..thread_crit_edge.us:                            ; preds = %bb.cd
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 4 ; 2 uses
  %i.mq = trunc nuw i64 %indvars.iv.next364 to i32
  %i.mr = icmp sgt i32 %i.bm, %i.mq
  br i1 %i.mr, label %.lr.ph317.split.us, label %select.unfold, !llvm.loop !40

bb.ce:                                            ; preds = %bb.k
  %i.ms = add i64 %i.bt, %.0181324                ; 2 uses
  %i.mt = load i64, ptr %i.t, align 8, !tbaa !38
  %i.mu = icmp ugt i64 %i.ms, %i.mt
  br i1 %i.mu, label %.thread247, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0174326, ptr align 1 %.2192322, i64 %i.bt, i1 false)
  %i.mv = getelementptr inbounds nuw i8, ptr %.0174326, i64 %i.bt
  %i.mw = getelementptr inbounds nuw i8, ptr %.2192322, i64 %i.bt
  br label %.thread234

select.unfold:                                    ; preds = %..thread_crit_edge.us, %.lr.ph317, %.preheader261
  %.1182.lcssa = phi i64 [ %.0181324, %.preheader261 ], [ %.0181324, %.lr.ph317 ], [ %i.kz, %..thread_crit_edge.us ]
  %.1175.lcssa = phi ptr [ %.0174326, %.preheader261 ], [ %.0174326, %.lr.ph317 ], [ %i.lc, %..thread_crit_edge.us ]
  %i.mx = getelementptr inbounds nuw i8, ptr %.2192322, i64 %i.bt
  br label %.thread234

.thread234:                                       ; preds = %select.unfold, %bb.cf, %bb.j
  %.5179241 = phi ptr [ %.0174326, %bb.j ], [ %i.mv, %bb.cf ], [ %.1175.lcssa, %select.unfold ]
  %.5186240 = phi i64 [ %.0181324, %bb.j ], [ %i.ms, %bb.cf ], [ %.1182.lcssa, %select.unfold ] ; 3 uses
  %.3193239 = phi ptr [ %.2192322, %bb.j ], [ %i.mw, %bb.cf ], [ %i.mx, %select.unfold ]
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %i.my = load i16, ptr %i.q, align 8, !tbaa !17
  %i.mz = sext i16 %i.my to i64
  %.not223 = icmp slt i64 %indvars.iv.next367, %i.mz
  br i1 %.not223, label %bb.j, label %.thread249, !llvm.loop !41

.thread249:                                       ; preds = %.thread234
  %i.na = load i64, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.nb = icmp ugt i64 %.5186240, %i.na
  br i1 %i.nb, label %bb.cg, label %.thread249.thread

bb.cg:                                            ; preds = %.thread249
  %i.nc = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.nd = load ptr, ptr %i.h, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nc, ptr align 1 %i.nd, i64 %i.na, i1 false)
  %i.ne = load i64, ptr %i.e, align 8, !tbaa !15
  br label %.thread249.thread

.thread249.thread:                                ; preds = %._crit_edge300, %bb.cg, %.thread249
  %.7188 = phi i64 [ %i.ne, %bb.cg ], [ %.5186240, %.thread249 ], [ 0, %._crit_edge300 ]
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.7188, ptr %i.nf, align 8, !tbaa !42
  br label %.thread247

.thread247:                                       ; preds = %bb.ce, %pack.exit.us, %bb.a, %.thread249.thread
  %.8 = phi i32 [ 1, %pack.exit.us ], [ 0, %.thread249.thread ], [ %i.g, %bb.a ], [ 1, %bb.ce ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_apply_b44a(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @compress_b44_impl(ptr noundef %0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_undo_b44(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %compute_scratch_buffer_size.exit

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  br label %bb.b

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %4)
  br label %compute_scratch_buffer_size.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.02131.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.b ]
end_hunk_0
begin_hunk_1_@uncompress_b44_impl:bb.a
  %.1176300 = phi ptr [ %.0175353, %bb.b ], [ %i.kz, %bb.s ], [ %i.la, %select.unfold ]
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %i.lb = load i16, ptr %i.d, align 8, !tbaa !43  ; 2 uses
  %i.lc = sext i16 %i.lb to i64
  %.not196 = icmp slt i64 %indvars.iv.next377, %i.lc
  br i1 %.not196, label %bb.b, label %.critedge.preheader, !llvm.loop !51

bb.t:                                             ; preds = %.lr.ph368, %.critedge
  %i.ld = phi i32 [ %i.i, %.lr.ph368 ], [ %i.mm, %.critedge ]
  %i.le = phi i16 [ %i.g, %.lr.ph368 ], [ %i.mn, %.critedge ] ; 2 uses
  %i.lf = phi i16 [ %i.g, %.lr.ph368 ], [ %i.mo, %.critedge ] ; 2 uses
  %.0150367 = phi i32 [ 0, %.lr.ph368 ], [ %i.mp, %.critedge ] ; 4 uses
  %.0153366 = phi ptr [ %3, %.lr.ph368 ], [ %.1154.lcssa, %.critedge ] ; 2 uses
  %.6171365 = phi i64 [ 0, %.lr.ph368 ], [ %.7172.lcssa, %.critedge ] ; 2 uses
  %i.lg = load i32, ptr %i.j, align 8, !tbaa !52
  %i.lh = add nsw i32 %i.lg, %.0150367
  %i.li = icmp sgt i16 %i.lf, 0
  br i1 %i.li, label %.lr.ph362.preheader, label %.critedge

.lr.ph362.preheader:                              ; preds = %bb.t
  %i.lj = load ptr, ptr %i.b, align 8, !tbaa !47
  br label %.lr.ph362

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %bb.aa
  %i.lk = phi i16 [ %i.le, %.lr.ph362.preheader ], [ %i.mj, %bb.aa ] ; 2 uses
  %indvars.iv379 = phi i64 [ 0, %.lr.ph362.preheader ], [ %indvars.iv.next380, %bb.aa ] ; 2 uses
  %.1154360 = phi ptr [ %.0153366, %.lr.ph362.preheader ], [ %.2155.ph, %bb.aa ] ; 4 uses
  %.7172359 = phi i64 [ %.6171365, %.lr.ph362.preheader ], [ %.8173.ph, %bb.aa ] ; 3 uses
  %.2177358 = phi ptr [ %i.lj, %.lr.ph362.preheader ], [ %.3178.ph, %bb.aa ] ; 4 uses
  %i.ll = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.lm = getelementptr inbounds nuw [48 x i8], ptr %i.ll, i64 %indvars.iv379 ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 12
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !24
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !27
  %i.lr = sext i32 %i.lo to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lm, i64 25
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !28
  %i.lu = sext i8 %i.lt to i64
  %i.lv = mul nsw i64 %i.lu, %i.lr                ; 5 uses
  %i.lw = sext i32 %i.lq to i64
  %i.lx = mul i64 %i.lv, %i.lw                    ; 3 uses
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %.lr.ph362
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lm, i64 20
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !29 ; 3 uses
  %i.mb = icmp sgt i32 %i.ma, 1
  br i1 %i.mb, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.mc = srem i32 %i.lh, %i.ma
  %.not197 = icmp eq i32 %i.mc, 0
  br i1 %.not197, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.md = getelementptr inbounds nuw i8, ptr %.2177358, i64 %i.lx
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.me = udiv i32 %.0150367, %i.ma
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x
  %.pn198.in = phi i32 [ %i.me, %bb.x ], [ %.0150367, %bb.u ]
  %i.mf = add i64 %i.lv, %.7172359                ; 2 uses
  %i.mg = icmp ugt i64 %i.mf, %4
  br i1 %i.mg, label %.thread303, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.pn198 = zext i32 %.pn198.in to i64
  %.pn = mul i64 %i.lv, %.pn198
  %.0183 = getelementptr inbounds nuw i8, ptr %.2177358, i64 %.pn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1154360, ptr align 1 %.0183, i64 %i.lv, i1 false)
  %i.mh = getelementptr inbounds nuw i8, ptr %.1154360, i64 %i.lv
  %i.mi = getelementptr inbounds nuw i8, ptr %.2177358, i64 %i.lx
  %.pre = load i16, ptr %i.d, align 8, !tbaa !43
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w, %.lr.ph362
  %i.mj = phi i16 [ %i.lk, %.lr.ph362 ], [ %i.lk, %bb.w ], [ %.pre, %bb.z ] ; 4 uses
  %.3178.ph = phi ptr [ %.2177358, %.lr.ph362 ], [ %i.md, %bb.w ], [ %i.mi, %bb.z ]
  %.8173.ph = phi i64 [ %.7172359, %.lr.ph362 ], [ %.7172359, %bb.w ], [ %i.mf, %bb.z ] ; 2 uses
  %.2155.ph = phi ptr [ %.1154360, %.lr.ph362 ], [ %.1154360, %bb.w ], [ %i.mh, %bb.z ] ; 2 uses
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %i.mk = sext i16 %i.mj to i64
  %i.ml = icmp slt i64 %indvars.iv.next380, %i.mk
  br i1 %i.ml, label %.lr.ph362, label %.critedge.loopexit, !llvm.loop !53

.critedge.loopexit:                               ; preds = %bb.aa
  %.pre462 = load i32, ptr %i.h, align 4, !tbaa !48
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.t
  %i.mm = phi i32 [ %i.ld, %bb.t ], [ %.pre462, %.critedge.loopexit ] ; 2 uses
  %i.mn = phi i16 [ %i.le, %bb.t ], [ %i.mj, %.critedge.loopexit ]
  %i.mo = phi i16 [ %i.lf, %bb.t ], [ %i.mj, %.critedge.loopexit ]
  %.7172.lcssa = phi i64 [ %.6171365, %bb.t ], [ %.8173.ph, %.critedge.loopexit ]
  %.1154.lcssa = phi ptr [ %.0153366, %bb.t ], [ %.2155.ph, %.critedge.loopexit ]
  %i.mp = add nuw nsw i32 %.0150367, 1            ; 2 uses
  %.not199 = icmp slt i32 %i.mp, %i.mm
  br i1 %.not199, label %bb.t, label %.critedge203, !llvm.loop !54

.critedge203:                                     ; preds = %.critedge, %.critedge.preheader
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %4, ptr %i.mq, align 8, !tbaa !55
  br label %.thread303

.thread303:                                       ; preds = %bb.r, %bb.f, %bb.d, %bb.y, %.critedge203
  %.11 = phi i32 [ 0, %.critedge203 ], [ 1, %bb.y ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_undo_b44a(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %compute_scratch_buffer_size.exit

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  br label %bb.b

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %4)
  br label %compute_scratch_buffer_size.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.02131.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.b ]
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv.i ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !27   ; 3 uses
  %i.n = srem i32 %i.k, 4                         ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  %reass.sub.i = add i32 %i.k, 4
  %i.o = sub i32 %reass.sub.i, %i.n
  %.024.i = select i1 %.not.i, i32 %i.k, i32 %i.o
  %i.p = srem i32 %i.m, 4                         ; 2 uses
  %.not28.i = icmp eq i32 %i.p, 0
  %reass.sub29.i = add i32 %i.m, 4
  %i.q = sub i32 %reass.sub29.i, %i.p
  %.023.i = select i1 %.not28.i, i32 %i.m, i32 %i.q
  %i.r = sext i32 %.023.i to i64
  %i.s = sext i32 %.024.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  %i.u = load i8, ptr %i.t, align 1, !tbaa !28
  %i.v = sext i8 %i.u to i64
  %i.w = mul nsw i64 %i.s, %i.v
  %i.x = mul i64 %i.w, %i.r
  %i.y = add i64 %i.x, %.02131.i                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !46

compute_scratch_buffer_size.exit:                 ; preds = %bb.a, %._crit_edge.loopexit.i
  %.021.lcssa.i = phi i64 [ %4, %bb.a ], [ %i.h, %._crit_edge.loopexit.i ]
  %i.z = tail call i32 @internal_decode_alloc_buffer(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.021.lcssa.i) #5 ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %compute_scratch_buffer_size.exit
  %i.aa = tail call fastcc i32 @uncompress_b44_impl(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %compute_scratch_buffer_size.exit, %bb.c
  %.0 = phi i32 [ %i.aa, %bb.c ], [ %i.z, %compute_scratch_buffer_size.exit ]
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
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !10, i64 168}
!8 = !{!"_exr_encode_pipeline", !9, i64 0, !10, i64 8, !11, i64 16, !11, i64 18, !4, i64 20, !12, i64 24, !13, i64 32, !10, i64 96, !10, i64 104, !9, i64 112, !9, i64 120, !14, i64 128, !9, i64 136, !10, i64 144, !9, i64 152, !9, i64 160, !10, i64 168, !9, i64 176, !9, i64 184, !10, i64 192, !9, i64 200, !10, i64 208, !9, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !5, i64 272}
!9 = !{!"long", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = !{!"p1 _ZTS19_priv_exr_context_t", !10, i64 0}
!13 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!14 = !{!"p1 int", !10, i64 0}
!15 = !{!8, !9, i64 112}
!16 = !{!8, !4, i64 44}
!17 = !{!8, !11, i64 16}
!18 = !{!8, !10, i64 104}
!19 = !{!8, !10, i64 192}
!20 = !{!8, !4, i64 40}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!8, !10, i64 8}
!24 = !{!25, !4, i64 12}
!25 = !{!"", !26, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !5, i64 24, !5, i64 25, !11, i64 26, !11, i64 28, !11, i64 30, !4, i64 32, !4, i64 36, !5, i64 40}
!26 = !{!"p1 omnipotent char", !10, i64 0}
!27 = !{!25, !4, i64 8}
!28 = !{!25, !5, i64 25}
!29 = !{!25, !4, i64 20}
!30 = distinct !{!30, !22}
!31 = !{!25, !11, i64 26}
!32 = !{!25, !5, i64 24}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 short", !10, i64 0}
!35 = !{!11, !11, i64 0}
!36 = distinct !{!36, !22}
!37 = !{!5, !5, i64 0}
!38 = !{!8, !9, i64 184}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = !{!8, !9, i64 176}
!43 = !{!44, !11, i64 16}
!44 = !{!"_exr_decode_pipeline", !9, i64 0, !10, i64 8, !11, i64 16, !11, i64 18, !4, i64 20, !12, i64 24, !13, i64 32, !4, i64 96, !4, i64 100, !9, i64 104, !10, i64 112, !10, i64 120, !9, i64 128, !10, i64 136, !9, i64 144, !10, i64 152, !9, i64 160, !14, i64 168, !9, i64 176, !10, i64 184, !9, i64 192, !10, i64 200, !9, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !5, i64 264}
!45 = !{!44, !10, i64 8}
!46 = distinct !{!46, !22}
!47 = !{!44, !10, i64 184}
!48 = !{!44, !4, i64 44}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = distinct !{!51, !22}
!52 = !{!44, !4, i64 40}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = !{!44, !9, i64 104}
end_hunk_1
