Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_b44?download=true
inline.NumInlined: 10
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@compress_b44_impl:bb.a
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
  %i.hd = sub nsw i32 %i.hb, %i.hc
  %i.he = shl nsw i32 %i.hd, 1                    ; 2 uses
  %i.hf = insertelement <4 x i16> poison, i16 %.sroa.45.0.i.us, i64 0
  %i.hg = insertelement <4 x i16> %i.hf, i16 %.sroa.65.0.i.us, i64 1
  %i.hh = insertelement <4 x i16> %i.hg, i16 %.sroa.10.0.i.us, i64 2
  %i.hi = insertelement <4 x i16> %i.hh, i16 %.sroa.15.0.i.us, i64 3
  %i.hj = zext <4 x i16> %i.hi to <4 x i32>
  %i.hk = zext i16 %.sroa.20.0.i.us to i32
  %i.hl = sub nsw i32 %i.hb, %i.hk
  %i.hm = shl nsw i32 %i.hl, 1                    ; 2 uses
  %i.hn = zext i16 %.sroa.25.0.i.us to i32
  %i.ho = sub nsw i32 %i.hb, %i.hn
  %i.hp = shl nsw i32 %i.ho, 1                    ; 2 uses
  %i.hq = insertelement <4 x i16> poison, i16 %.sroa.30.0.i.us, i64 0
  %i.hr = insertelement <4 x i16> %i.hq, i16 %.sroa.50.0.i.us, i64 1
  %i.hs = insertelement <4 x i16> %i.hr, i16 %.sroa.70.0.i.us, i64 2
  %i.ht = insertelement <4 x i16> %i.hs, i16 %.sroa.35.0.i.us, i64 3
  %i.hu = zext <4 x i16> %i.ht to <4 x i32>
  %i.hv = insertelement <4 x i16> poison, i16 %.sroa.35.0.i.us, i64 0
  %i.hw = insertelement <4 x i16> %i.hv, i16 %.sroa.55.0.i.us, i64 1
  %i.hx = insertelement <4 x i16> %i.hw, i16 %.sroa.75.0.i.us, i64 2
  %i.hy = insertelement <4 x i16> %i.hx, i16 %.sroa.40.0.i.us, i64 3
  %i.hz = zext <4 x i16> %i.hy to <4 x i32>
  %i.ia = insertelement <2 x i16> poison, i16 %.sroa.60.0.i.us, i64 0
  %i.ib = insertelement <2 x i16> %i.ia, i16 %.sroa.80.0.i.us, i64 1
  %i.ic = zext <2 x i16> %i.ib to <2 x i32>
  %i.id = insertelement <4 x i32> poison, i32 %i.hb, i64 0 ; 2 uses
  %i.ie = shufflevector <4 x i32> %i.id, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.if = sub nsw <4 x i32> %i.ie, %i.hu
  %i.ig = sub nsw <4 x i32> %i.ie, %i.hz
  %i.ih = shl nsw <4 x i32> %i.if, splat (i32 1)  ; 2 uses
  %i.ii = shl nsw <4 x i32> %i.ig, splat (i32 1)  ; 2 uses
  %i.ij = sub nsw <4 x i32> %i.ie, %i.hj
  %i.ik = shufflevector <4 x i32> %i.id, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.il = sub nsw <2 x i32> %i.ik, %i.ic
  %i.im = shl nsw <4 x i32> %i.ij, splat (i32 1)  ; 2 uses
  %i.in = shl nsw <2 x i32> %i.il, splat (i32 1)  ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.preheader76.preheader.i.us
  %.065.i.us = phi i32 [ %i.io, %bb.ca ], [ -1, %.preheader76.preheader.i.us ] ; 2 uses
  %i.io = add nsw i32 %.065.i.us, 1               ; 4 uses
  %notmask.i.i.us = shl nsw i32 -1, %i.io
  %i.ip = xor i32 %notmask.i.i.us, -1             ; 4 uses
  %i.iq = add nsw i32 %.065.i.us, 2               ; 7 uses
  %i.ir = lshr i32 %i.he, %i.iq
  %i.is = and i32 %i.ir, 1
  %i.it = add nsw i32 %i.he, %i.ip
  %i.iu = add nsw i32 %i.it, %i.is
  %i.iv = ashr i32 %i.iu, %i.iq                   ; 3 uses
  %i.iw = lshr i32 %i.hm, %i.iq
  %i.ix = and i32 %i.iw, 1
  %i.iy = add nsw i32 %i.hm, %i.ip
  %i.iz = add nsw i32 %i.iy, %i.ix
  %i.ja = ashr i32 %i.iz, %i.iq
  %i.jb = lshr i32 %i.hp, %i.iq
  %i.jc = and i32 %i.jb, 1
  %i.jd = add nsw i32 %i.hp, %i.ip
  %i.je = add nsw i32 %i.jd, %i.jc
  %i.jf = ashr i32 %i.je, %i.iq                   ; 3 uses
  %2 = sub nsw i32 %i.iv, %i.jf                   ; 2 uses
  %3 = add nsw i32 %2, 32                         ; 3 uses
  %i.jg = insertelement <4 x i32> poison, i32 %i.iq, i64 0 ; 2 uses
  %i.jh = shufflevector <4 x i32> %i.jg, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.ji = lshr <4 x i32> %i.ih, %i.jh
  %i.jj = lshr <4 x i32> %i.ii, %i.jh
  %i.jk = and <4 x i32> %i.ji, splat (i32 1)
  %i.jl = insertelement <4 x i32> poison, i32 %i.ip, i64 0 ; 2 uses
  %i.jm = shufflevector <4 x i32> %i.jl, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.jn = add nsw <4 x i32> %i.ih, %i.jm
  %i.jo = and <4 x i32> %i.jj, splat (i32 1)
  %i.jp = add nsw <4 x i32> %i.ii, %i.jm
  %i.jq = add nsw <4 x i32> %i.jn, %i.jk
  %i.jr = add nsw <4 x i32> %i.jp, %i.jo
  %i.js = ashr <4 x i32> %i.jq, %i.jh             ; 3 uses
  %i.jt = ashr <4 x i32> %i.jr, %i.jh             ; 2 uses
  %i.ju = extractelement <4 x i32> %i.js, i64 0
  %i.jv = sub nsw i32 %i.jf, %i.ju                ; 2 uses
  %i.jw = add nsw i32 %i.jv, 32                   ; 3 uses
  %i.jx = sub nsw <4 x i32> %i.js, %i.jt          ; 3 uses
  %i.jy = add nsw <4 x i32> %i.jx, splat (i32 32) ; 5 uses
  %i.jz = lshr <4 x i32> %i.im, %i.jh
  %i.ka = and <4 x i32> %i.jz, splat (i32 1)
  %i.kb = add nsw <4 x i32> %i.im, %i.jm
  %i.kc = add nsw <4 x i32> %i.kb, %i.ka
  %i.kd = ashr <4 x i32> %i.kc, %i.jh             ; 6 uses
  %i.ke = shufflevector <4 x i32> %i.jg, <4 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kf = lshr <2 x i32> %i.in, %i.ke
  %i.kg = and <2 x i32> %i.kf, splat (i32 1)
  %i.kh = shufflevector <4 x i32> %i.jl, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.ki = add nsw <2 x i32> %i.in, %i.kh
  %i.kj = add nsw <2 x i32> %i.ki, %i.kg
  %i.kk = ashr <2 x i32> %i.kj, %i.ke
  %i.kl = extractelement <4 x i32> %i.kd, i64 0
  %i.km = sub nsw i32 %i.jf, %i.kl                ; 2 uses
  %i.kn = add nsw i32 %i.km, 32                   ; 3 uses
  %shift = shufflevector <4 x i32> %i.kd, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = sub nsw <4 x i32> %i.kd, %shift
  %i.ko = extractelement <4 x i32> %foldExtExtBinop, i64 0
  %i.kp = add nsw i32 %i.ko, 32                   ; 3 uses
  %i.kq = extractelement <4 x i32> %i.kd, i64 2
  %i.kr = sub nsw i32 %i.iv, %i.kq
  %i.ks = add nsw i32 %i.kr, 32                   ; 3 uses
  %i.kt = shufflevector <4 x i32> %i.jt, <4 x i32> %i.jy, <4 x i32> <i32 1, i32 2, i32 4, i32 5>
  %i.ku = shufflevector <4 x i32> %i.kd, <4 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kv = shufflevector <4 x i32> %i.kd, <4 x i32> %i.kt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kw = shufflevector <4 x i32> %i.js, <4 x i32> poison, <8 x i32> <i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kx = shufflevector <8 x i32> %i.kw, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 0>, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 14, i32 15>
  %i.ky = shufflevector <8 x i32> %i.kx, <8 x i32> %i.ku, <8 x i32> <i32 0, i32 1, i32 11, i32 poison, i32 poison, i32 poison, i32 6, i32 7>
  %i.kz = insertelement <8 x i32> %i.ky, i32 %i.ja, i64 3
  %i.la = shufflevector <2 x i32> %i.kk, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lb = shufflevector <8 x i32> %i.kz, <8 x i32> %i.la, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.lc = sub nsw <8 x i32> %i.kv, %i.lb          ; 3 uses
  %i.ld = add nsw <8 x i32> %i.lc, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 0, i32 0> ; 7 uses
  %i.le = extractelement <4 x i32> %i.jy, i64 2   ; 2 uses
  %i.lf = extractelement <4 x i32> %i.jy, i64 3   ; 2 uses
  %i.lg = shufflevector <4 x i32> %i.jy, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lh = shufflevector <8 x i32> %i.ld, <8 x i32> %i.lg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.li = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.lh)
  %i.lj = tail call i32 @llvm.smin.i32(i32 %i.li, i32 %i.le)
  %i.lk = tail call i32 @llvm.smin.i32(i32 %i.lf, i32 %3)
  %i.ll = tail call i32 @llvm.smin.i32(i32 %i.kn, i32 %i.kp)
  %i.lm = tail call i32 @llvm.smin.i32(i32 %i.ks, i32 %i.jw)
  %i.ln = tail call i32 @llvm.smin.i32(i32 %i.lj, i32 %i.lk)
  %i.lo = tail call i32 @llvm.smin.i32(i32 %i.ll, i32 %i.lm)
  %i.lp = tail call i32 @llvm.smin.i32(i32 %i.ln, i32 %i.lo) ; 2 uses
  %i.lq = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.ld)
  %i.lr = tail call i32 @llvm.smax.i32(i32 %i.lq, i32 %3)
  %i.ls = tail call i32 @llvm.smax.i32(i32 %i.kn, i32 %i.kp)
  %i.lt = tail call i32 @llvm.smax.i32(i32 %i.ks, i32 %i.jw)
  %i.lu = tail call i32 @llvm.smax.i32(i32 %i.le, i32 %i.lf)
  %i.lv = tail call i32 @llvm.smax.i32(i32 %i.lr, i32 %i.ls)
  %i.lw = tail call i32 @llvm.smax.i32(i32 %i.lt, i32 %i.lu)
  %i.lx = tail call i32 @llvm.smax.i32(i32 %i.lv, i32 %i.lw) ; 2 uses
  %i.ly = icmp slt i32 %i.lp, 0
  %i.lz = icmp sgt i32 %i.lx, 63
  %i.ma = select i1 %i.ly, i1 true, i1 %i.lz
  br i1 %i.ma, label %bb.ca, label %bb.cb, !llvm.loop !37

bb.cb:                                            ; preds = %bb.ca
  %i.mb = icmp eq i32 %i.lp, 32
  %i.mc = icmp eq i32 %i.lx, 32
  %or.cond.i.us = select i1 %i.mb, i1 %i.mc, i1 false
  %or.cond3.i.us = and i1 %i.u, %or.cond.i.us
  br i1 %or.cond3.i.us, label %pack.exit.us, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.md = shl i32 %i.iv, %i.io
  %i.me = trunc i32 %i.md to i16
  %i.mf = sub i16 %spec.select.15.i.us, %i.me
  %.sroa.0.1.i.us = select i1 %.not219.not.us, i16 %i.mf, i16 %.sroa.0.0.i.us
  %i.mg = shl i32 %i.io, 2
  %i.mh = lshr i32 %3, 4
  %i.mi = or i32 %i.mh, %i.mg
  %i.mj = trunc i32 %i.mi to i8
  %i.mk = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 2
  store i8 %i.mj, ptr %i.mk, align 1, !tbaa !38
  %i.ml = shl i32 %2, 4
  %i.mm = lshr i32 %i.kn, 2
  %i.mn = or i32 %i.mm, %i.ml
  %i.mo = trunc i32 %i.mn to i8
  %i.mp = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 3
  store i8 %i.mo, ptr %i.mp, align 1, !tbaa !38
  %i.mq = shl i32 %i.km, 6
  %i.mr = or i32 %i.kp, %i.mq
  %i.ms = trunc i32 %i.mr to i8
  %i.mt = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 4
  store i8 %i.ms, ptr %i.mt, align 1, !tbaa !38
  %i.mu = shl i32 %i.ks, 2
  %i.mv = lshr i32 %i.jw, 4
  %i.mw = or i32 %i.mv, %i.mu
  %i.mx = trunc i32 %i.mw to i8
  %i.my = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 5
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !38
  %i.mz = shl i32 %i.jv, 4
  %i.na = extractelement <8 x i32> %i.ld, i64 0
  %i.nb = lshr i32 %i.na, 2
  %i.nc = or i32 %i.nb, %i.mz
  %i.nd = trunc i32 %i.nc to i8
  %i.ne = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 6
  store i8 %i.nd, ptr %i.ne, align 1, !tbaa !38
  %i.nf = extractelement <8 x i32> %i.lc, i64 0
  %i.ng = shl i32 %i.nf, 6
  %i.nh = extractelement <8 x i32> %i.ld, i64 1
  %i.ni = or i32 %i.nh, %i.ng
  %i.nj = trunc i32 %i.ni to i8
  %i.nk = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 7
  store i8 %i.nj, ptr %i.nk, align 1, !tbaa !38
  %i.nl = shufflevector <4 x i32> %i.jx, <4 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nm = shufflevector <8 x i32> %i.nl, <8 x i32> %i.ld, <4 x i32> <i32 10, i32 1, i32 2, i32 11>
  %i.nn = shl <4 x i32> %i.nm, <i32 2, i32 4, i32 6, i32 2>
  %i.no = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 8
  %i.np = lshr <4 x i32> %i.jy, <i32 4, i32 2, i32 0, i32 4>
  %i.nq = or <4 x i32> %i.np, %i.nn
  %i.nr = trunc <4 x i32> %i.nq to <4 x i8>
  store <4 x i8> %i.nr, ptr %i.no, align 1, !tbaa !38
  %i.ns = extractelement <4 x i32> %i.jx, i64 3
  %i.nt = shl i32 %i.ns, 4
  %i.nu = extractelement <8 x i32> %i.ld, i64 4
  %i.nv = lshr i32 %i.nu, 2
  %i.nw = or i32 %i.nv, %i.nt
  %i.nx = trunc i32 %i.nw to i8
  %i.ny = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 12
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !38
  %i.nz = extractelement <8 x i32> %i.lc, i64 4
  %i.oa = shl i32 %i.nz, 6
  %i.ob = extractelement <8 x i32> %i.ld, i64 5
  %i.oc = or i32 %i.ob, %i.oa
  %i.od = trunc i32 %i.oc to i8
  br label %pack.exit.us

pack.exit.us:                                     ; preds = %bb.cb, %bb.cc
  %.sink489.in.in = phi i16 [ %.sroa.0.1.i.us, %bb.cc ], [ %.sroa.0.0.i.us, %bb.cb ] ; 2 uses
  %.sink216.i.us = phi i64 [ 13, %bb.cc ], [ 2, %bb.cb ]
  %.sink.i.us = phi i8 [ %i.od, %bb.cc ], [ -4, %bb.cb ]
  %.071.i.us = phi i64 [ 14, %bb.cc ], [ 3, %bb.cb ] ; 2 uses
  %.sink = trunc i16 %.sink489.in.in to i8
  %.sink489.in = lshr i16 %.sink489.in.in, 8
  %.sink489 = trunc nuw i16 %.sink489.in to i8
  store i8 %.sink489, ptr %.2192303.us, align 1, !tbaa !38
  %i.oe = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 1
  store i8 %.sink, ptr %i.oe, align 1, !tbaa !38
  %i.of = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 %.sink216.i.us
  store i8 %.sink.i.us, ptr %i.of, align 1, !tbaa !38
  %i.og = add i64 %.071.i.us, %.2187304.us        ; 4 uses
  %i.oh = add i64 %i.og, 14
  %i.oi = load i64, ptr %i.t, align 8, !tbaa !39
  %.not221.us = icmp ugt i64 %i.oh, %i.oi
  br i1 %.not221.us, label %.thread247, label %bb.cd

bb.cd:                                            ; preds = %pack.exit.us
  %i.oj = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 %.071.i.us ; 3 uses
  %i.ok = add nuw nsw i32 %.0162309.us, 4         ; 2 uses
  %.not222.us = icmp slt i32 %i.ok, %i.bk
  br i1 %.not222.us, label %bb.l, label %..thread_crit_edge.us, !llvm.loop !40

.preheader.us:                                    ; preds = %bb.l
  %i.ol = xor i32 %.0162309.us, -1
  %i.om = add nsw i32 %i.bk, %i.ol                ; 4 uses
  %spec.select226.us = tail call i32 @llvm.smin.i32(i32 %i.om, i32 0)
  %i.on = sext i32 %spec.select226.us to i64      ; 4 uses
  %i.oo = getelementptr inbounds [2 x i8], ptr %.0169305.us, i64 %i.on
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !36
  %.sroa.0.0.insert.ext372 = zext i16 %i.op to i64
  %i.oq = getelementptr inbounds [2 x i8], ptr %.2168306.us, i64 %i.on
  %i.or = load i16, ptr %i.oq, align 2, !tbaa !36
  %.sroa.19.8.insert.ext402 = zext i16 %i.or to i64
  %i.os = getelementptr inbounds [2 x i8], ptr %.2307.us, i64 %i.on
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !36
  %.sroa.36.16.insert.ext432 = zext i16 %i.ot to i64
  %i.ou = getelementptr inbounds [2 x i8], ptr %.1308.us, i64 %i.on
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !36
  %.sroa.53.24.insert.ext462 = zext i16 %i.ov to i64
  %spec.select226.us.1 = tail call i32 @llvm.smin.i32(i32 %i.om, i32 1)
  %i.ow = sext i32 %spec.select226.us.1 to i64    ; 4 uses
  %i.ox = getelementptr inbounds [2 x i8], ptr %.0169305.us, i64 %i.ow
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !36
  %.sroa.0.2.insert.ext379 = zext i16 %i.oy to i64
  %.sroa.0.2.insert.shift380 = shl nuw nsw i64 %.sroa.0.2.insert.ext379, 16
  %.sroa.0.2.insert.insert382 = or disjoint i64 %.sroa.0.2.insert.shift380, %.sroa.0.0.insert.ext372
  %i.oz = getelementptr inbounds [2 x i8], ptr %.2168306.us, i64 %i.ow
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !36
  %.sroa.19.10.insert.ext409 = zext i16 %i.pa to i64
  %.sroa.19.10.insert.shift410 = shl nuw nsw i64 %.sroa.19.10.insert.ext409, 16
  %.sroa.19.10.insert.insert412 = or disjoint i64 %.sroa.19.10.insert.shift410, %.sroa.19.8.insert.ext402
  %i.pb = getelementptr inbounds [2 x i8], ptr %.2307.us, i64 %i.ow
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !36
  %.sroa.36.18.insert.ext439 = zext i16 %i.pc to i64
  %.sroa.36.18.insert.shift440 = shl nuw nsw i64 %.sroa.36.18.insert.ext439, 16
  %.sroa.36.18.insert.insert442 = or disjoint i64 %.sroa.36.18.insert.shift440, %.sroa.36.16.insert.ext432
  %i.pd = getelementptr inbounds [2 x i8], ptr %.1308.us, i64 %i.ow
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !36
  %.sroa.53.26.insert.ext469 = zext i16 %i.pe to i64
  %.sroa.53.26.insert.shift470 = shl nuw nsw i64 %.sroa.53.26.insert.ext469, 16
  %.sroa.53.26.insert.insert472 = or disjoint i64 %.sroa.53.26.insert.shift470, %.sroa.53.24.insert.ext462
  %spec.select226.us.2 = tail call i32 @llvm.smin.i32(i32 %i.om, i32 2)
end_hunk_0
