Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/dcraw_process?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6LibRaw13dcraw_processEv:bb.a
          to label %bb.ax unwind label %.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 768336
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !122 ; 2 uses
  %.not144 = icmp eq ptr %i.dp, null
  br i1 %.not144, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void %i.dp(ptr noundef nonnull %0)
          to label %bb.az unwind label %.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 5536
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !123
  %.not145 = icmp eq i32 %i.dr, 0
  br i1 %.not145, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN6LibRaw12scale_colorsEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bb unwind label %.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba
  %i.ds = load i32, ptr %i.b, align 8, !tbaa !78
  %i.dt = or i32 %i.ds, 512
  store i32 %i.dt, ptr %i.b, align 8, !tbaa !78
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 768344
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !124 ; 2 uses
  %.not146 = icmp eq ptr %i.dv, null
  br i1 %.not146, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void %i.dv(ptr noundef nonnull %0)
          to label %bb.be unwind label %.loopexit.split-lp

bb.be:                                            ; preds = %bb.bd, %bb.bc
  invoke void @_ZN6LibRaw15pre_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bf unwind label %.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  %i.dw = load i32, ptr %i.b, align 8, !tbaa !78
  %i.dx = or i32 %i.dw, 1024
  store i32 %i.dx, ptr %i.b, align 8, !tbaa !78
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 5512
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !125
  %spec.select170 = call i32 @llvm.smax.i32(i32 %i.dz, i32 -1)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 5516
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !126 ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, -1
  %.0102 = select i1 %i.ec, i32 %i.eb, i32 1
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 5520
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !127 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 5524
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !128
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 5528
  %i.ej = load float, ptr %i.ei, align 8, !tbaa !129
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 5532
  %i.el = load float, ptr %i.ek, align 4, !tbaa !130
  invoke void @_ZN6LibRaw7exp_befEff(ptr noundef nonnull align 8 dereferenceable(768512) %0, float noundef %i.ej, float noundef %i.el)
          to label %bb.bh unwind label %.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 768352
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !131 ; 2 uses
  %.not147 = icmp eq ptr %i.en, null
  br i1 %.not147, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void %i.en(ptr noundef nonnull %0)
          to label %bb.bj unwind label %.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.eo = load i32, ptr %i.ad, align 8, !tbaa !99 ; 46 uses
  %.not148 = icmp eq i32 %i.eo, 0
  br i1 %.not148, label %bb.ek, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 5540
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !132
  %.not149 = icmp eq i32 %i.eq, 0
  br i1 %.not149, label %bb.bl, label %bb.ek

bb.bl:                                            ; preds = %bb.bk
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 3 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !100 ; 2 uses
  %i.et = icmp ugt i32 %i.eo, 1000
  br i1 %i.et, label %.preheader189, label %bb.dn

.preheader189:                                    ; preds = %bb.bl
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 381828 ; 16 uses
  %i.ev = load i16, ptr %i.bl, align 2, !tbaa !106 ; 2 uses
  %.not8.i = icmp eq i16 %i.ev, 0                 ; 8 uses
  %i.ew = zext i16 %i.ev to i32                   ; 8 uses
  %invariant.op = add i32 7, %i.ew
  br label %.preheader

.preheader:                                       ; preds = %.preheader189, %bb.dm
  %.082205 = phi i32 [ 0, %.preheader189 ], [ %i.sq, %bb.dm ] ; 60 uses
  %.083204 = phi i32 [ 0, %.preheader189 ], [ %i.sp, %bb.dm ]
  %.084203 = phi i32 [ %i.es, %.preheader189 ], [ %i.rz, %bb.dm ] ; 2 uses
  %i.ex = lshr i32 %.082205, 1                    ; 16 uses
  %i.ey = shl nuw nsw i32 %.082205, 2             ; 16 uses
  %i.ez = shl nuw nsw i32 %.082205, 1
  %i.fa = add nuw nsw i32 %i.ez, 2                ; 8 uses
  br i1 %.not8.i, label %_ZN6LibRaw5COLOREii.exit, label %_ZN6LibRaw3FCFEii.exit.i

bb.bm:                                            ; preds = %bb.dm
  %i.fb = icmp ne i32 %i.sp, 0
  br label %bb.dn

_ZN6LibRaw3FCFEii.exit.i:                         ; preds = %.preheader
  %i.fc = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i = icmp eq i32 %i.fc, 0                ; 3 uses
  %.082205.sink = select i1 %.not.i.i, i32 %.082205, i32 %i.ex
  %.sink.i.i = select i1 %.not.i.i, i32 0, i32 %.082205
  %.sink11.i.i = select i1 %.not.i.i, i32 %.082205, i32 0
  %.reass = add i32 %.082205.sink, %invariant.op
  %i.fd = add nuw nsw i32 %.sink.i.i, 1
  %i.fe = lshr i32 %i.fd, 1
  %i.ff = add nuw nsw i32 %i.fe, %.sink11.i.i
  %i.fg = shl i32 %.reass, 1
  %i.fh = and i32 %i.fg, 14
  %i.fi = and i32 %i.ff, 1
  %i.fj = or disjoint i32 %i.fi, %i.fh
  %i.fk = shl nuw nsw i32 %i.fj, 1
  br label %_ZN6LibRaw5COLOREii.exit

_ZN6LibRaw5COLOREii.exit:                         ; preds = %.preheader, %_ZN6LibRaw3FCFEii.exit.i
  %.pn = phi i32 [ %i.fk, %_ZN6LibRaw3FCFEii.exit.i ], [ %i.ey, %.preheader ]
  %.0.i.in = lshr i32 %i.eo, %.pn
  %.0.i = and i32 %.0.i.in, 3
  %.not153 = icmp slt i32 %.0.i, %.084203
  br i1 %.not153, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZN6LibRaw5COLOREii.exit
  %i.fl = load i16, ptr %i.bl, align 2, !tbaa !106 ; 2 uses
  %.not8.i174 = icmp eq i16 %i.fl, 0
  br i1 %.not8.i174, label %_ZN6LibRaw5COLOREii.exit182, label %_ZN6LibRaw3FCFEii.exit.i176

_ZN6LibRaw3FCFEii.exit.i176:                      ; preds = %bb.bn
  %i.fm = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i175 = icmp eq i32 %i.fm, 0             ; 3 uses
  %.082205.sink252 = select i1 %.not.i.i175, i32 %.082205, i32 %i.ex
  %.sink.i.i178 = select i1 %.not.i.i175, i32 0, i32 %.082205
  %.sink11.i.i179 = select i1 %.not.i.i175, i32 %.082205, i32 0
  %i.fn = add nuw i32 %.082205.sink252, 7
  %i.fo = zext i16 %i.fl to i32
  %i.fp = add i32 %i.fn, %i.fo
  %i.fq = add nuw nsw i32 %.sink.i.i178, 1
  %i.fr = lshr i32 %i.fq, 1
  %i.fs = add nuw nsw i32 %i.fr, %.sink11.i.i179
  %i.ft = shl i32 %i.fp, 1
  %i.fu = and i32 %i.ft, 14
  %i.fv = and i32 %i.fs, 1
  %i.fw = or disjoint i32 %i.fv, %i.fu
  %i.fx = shl nuw nsw i32 %i.fw, 1
  br label %_ZN6LibRaw5COLOREii.exit182

_ZN6LibRaw5COLOREii.exit182:                      ; preds = %bb.bn, %_ZN6LibRaw3FCFEii.exit.i176
  %.pn249 = phi i32 [ %i.fx, %_ZN6LibRaw3FCFEii.exit.i176 ], [ %i.ey, %bb.bn ]
  %.0.i180.in = lshr i32 %i.eo, %.pn249
  %.0.i180 = and i32 %.0.i180.in, 3
  %i.fy = add nuw nsw i32 %.0.i180, 1
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN6LibRaw5COLOREii.exit, %_ZN6LibRaw5COLOREii.exit182
  %i.fz = phi i32 [ %i.fy, %_ZN6LibRaw5COLOREii.exit182 ], [ %.084203, %_ZN6LibRaw5COLOREii.exit ] ; 2 uses
  %i.ga = shl nuw nsw i32 %.082205, 2             ; 2 uses
  %i.gb = lshr i32 %i.eo, %i.ga
  %i.gc = and i32 %i.gb, 3                        ; 2 uses
  %i.gd = shl nuw nsw i32 %i.fa, 1
  %i.ge = lshr i32 %i.eo, %i.gd
  %i.gf = and i32 %i.ge, 3
  %i.gg = icmp eq i32 %i.gc, %i.gf
  %i.gh = zext i1 %i.gg to i32
  %i.gi = add nsw i32 %.083204, %i.gh
  %i.gj = or disjoint i32 %i.ga, 2
  %i.gk = lshr i32 %i.eo, %i.gj
  %i.gl = and i32 %i.gk, 3
  %i.gm = icmp eq i32 %i.gc, %i.gl
  %i.gn = zext i1 %i.gm to i32
  %i.go = add nsw i32 %i.gi, %i.gn
  br i1 %.not8.i, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gp = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i.1 = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i.1, label %bb.bq, label %_ZN6LibRaw3FCFEii.exit.i.1

bb.bq:                                            ; preds = %bb.bp
  br label %_ZN6LibRaw3FCFEii.exit.i.1

_ZN6LibRaw3FCFEii.exit.i.1:                       ; preds = %bb.bq, %bb.bp
  %i.gq = phi i32 [ -1, %bb.bq ], [ -2, %bb.bp ]
  %.082205.sink.1 = phi i32 [ %.082205, %bb.bq ], [ %i.ex, %bb.bp ]
  %.sink.i.i.1 = phi i32 [ 1, %bb.bq ], [ %.082205, %bb.bp ]
  %.sink11.i.i.1 = phi i32 [ %.082205, %bb.bq ], [ 1, %bb.bp ]
  %i.gr = add nsw i32 %.082205.sink.1, %i.gq
  %i.gs = add nsw i32 %i.gr, %i.ew
  %i.gt = add nuw nsw i32 %.sink.i.i.1, 1
  %i.gu = lshr i32 %i.gt, 1
  %i.gv = add nuw nsw i32 %i.gu, %.sink11.i.i.1
  %i.gw = shl i32 %i.gs, 1
  %i.gx = and i32 %i.gw, 14
  %i.gy = and i32 %i.gv, 1
  %i.gz = or disjoint i32 %i.gy, %i.gx
  %i.ha = shl nuw nsw i32 %i.gz, 1
  br label %_ZN6LibRaw5COLOREii.exit.1

bb.br:                                            ; preds = %bb.bo
  %i.hb = or disjoint i32 %i.ey, 2
  br label %_ZN6LibRaw5COLOREii.exit.1

_ZN6LibRaw5COLOREii.exit.1:                       ; preds = %bb.br, %_ZN6LibRaw3FCFEii.exit.i.1
  %.pn.1 = phi i32 [ %i.hb, %bb.br ], [ %i.ha, %_ZN6LibRaw3FCFEii.exit.i.1 ]
  %.0.i.in.1 = lshr i32 %i.eo, %.pn.1
  %.0.i.1 = and i32 %.0.i.in.1, 3
  %.not153.1 = icmp slt i32 %.0.i.1, %i.fz
  br i1 %.not153.1, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.1
  %i.hc = load i16, ptr %i.bl, align 2, !tbaa !106 ; 2 uses
  %.not8.i174.1 = icmp eq i16 %i.hc, 0
  br i1 %.not8.i174.1, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hd = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i175.1 = icmp eq i32 %i.hd, 0
  br i1 %.not.i.i175.1, label %bb.bu, label %_ZN6LibRaw3FCFEii.exit.i176.1

bb.bu:                                            ; preds = %bb.bt
  br label %_ZN6LibRaw3FCFEii.exit.i176.1

_ZN6LibRaw3FCFEii.exit.i176.1:                    ; preds = %bb.bu, %bb.bt
  %i.he = phi i32 [ -1, %bb.bu ], [ -2, %bb.bt ]
  %.082205.sink252.1 = phi i32 [ %.082205, %bb.bu ], [ %i.ex, %bb.bt ]
  %.sink.i.i178.1 = phi i32 [ 1, %bb.bu ], [ %.082205, %bb.bt ]
  %.sink11.i.i179.1 = phi i32 [ %.082205, %bb.bu ], [ 1, %bb.bt ]
  %i.hf = add nsw i32 %.082205.sink252.1, %i.he
  %i.hg = zext i16 %i.hc to i32
  %i.hh = add nsw i32 %i.hf, %i.hg
  %i.hi = add nuw nsw i32 %.sink.i.i178.1, 1
  %i.hj = lshr i32 %i.hi, 1
  %i.hk = add nuw nsw i32 %i.hj, %.sink11.i.i179.1
  %i.hl = shl i32 %i.hh, 1
  %i.hm = and i32 %i.hl, 14
  %i.hn = and i32 %i.hk, 1
  %i.ho = or disjoint i32 %i.hn, %i.hm
  %i.hp = shl nuw nsw i32 %i.ho, 1
  br label %_ZN6LibRaw5COLOREii.exit182.1

bb.bv:                                            ; preds = %bb.bs
  %i.hq = or disjoint i32 %i.ey, 2
  br label %_ZN6LibRaw5COLOREii.exit182.1

_ZN6LibRaw5COLOREii.exit182.1:                    ; preds = %bb.bv, %_ZN6LibRaw3FCFEii.exit.i176.1
  %.pn249.1 = phi i32 [ %i.hq, %bb.bv ], [ %i.hp, %_ZN6LibRaw3FCFEii.exit.i176.1 ]
  %.0.i180.in.1 = lshr i32 %i.eo, %.pn249.1
  %.0.i180.1 = and i32 %.0.i180.in.1, 3
  %i.hr = add nuw nsw i32 %.0.i180.1, 1
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN6LibRaw5COLOREii.exit182.1, %_ZN6LibRaw5COLOREii.exit.1
  %i.hs = phi i32 [ %i.hr, %_ZN6LibRaw5COLOREii.exit182.1 ], [ %i.fz, %_ZN6LibRaw5COLOREii.exit.1 ] ; 2 uses
  %i.ht = shl i32 %.082205, 2                     ; 2 uses
  %i.hu = or disjoint i32 %i.ht, 2
  %i.hv = lshr i32 %i.eo, %i.hu
  %i.hw = and i32 %i.hv, 3                        ; 2 uses
  %i.hx = shl nuw i32 %i.fa, 1
  %i.hy = or disjoint i32 %i.hx, 2
  %i.hz = lshr i32 %i.eo, %i.hy
  %i.ia = and i32 %i.hz, 3
  %i.ib = icmp eq i32 %i.hw, %i.ia
  %i.ic = zext i1 %i.ib to i32
  %i.id = add nsw i32 %i.go, %i.ic
  %i.ie = lshr i32 %i.eo, %i.ht
  %i.if = and i32 %i.ie, 3
  %i.ig = icmp eq i32 %i.hw, %i.if
  %i.ih = zext i1 %i.ig to i32
  %i.ii = add nsw i32 %i.id, %i.ih
  br i1 %.not8.i, label %_ZN6LibRaw5COLOREii.exit.2, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ij = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i.2 = icmp eq i32 %i.ij, 0
  br i1 %.not.i.i.2, label %bb.by, label %_ZN6LibRaw3FCFEii.exit.i.2

bb.by:                                            ; preds = %bb.bx
  br label %_ZN6LibRaw3FCFEii.exit.i.2

_ZN6LibRaw3FCFEii.exit.i.2:                       ; preds = %bb.by, %bb.bx
  %i.ik = phi i32 [ -2, %bb.by ], [ -3, %bb.bx ]
  %.082205.sink.2 = phi i32 [ %.082205, %bb.by ], [ %i.ex, %bb.bx ]
  %.sink.i.i.2 = phi i32 [ 2, %bb.by ], [ %.082205, %bb.bx ]
  %.sink11.i.i.2 = phi i32 [ %.082205, %bb.by ], [ 2, %bb.bx ]
  %i.il = add nsw i32 %.082205.sink.2, %i.ik
  %i.im = add nsw i32 %i.il, %i.ew
  %i.in = add nuw nsw i32 %.sink.i.i.2, 1
  %i.io = lshr i32 %i.in, 1
  %i.ip = add nuw nsw i32 %i.io, %.sink11.i.i.2
  %i.iq = shl i32 %i.im, 1
  %i.ir = and i32 %i.iq, 14
  %i.is = and i32 %i.ip, 1
  %i.it = or disjoint i32 %i.is, %i.ir
  %i.iu = shl nuw nsw i32 %i.it, 1
  br label %_ZN6LibRaw5COLOREii.exit.2

_ZN6LibRaw5COLOREii.exit.2:                       ; preds = %bb.bw, %_ZN6LibRaw3FCFEii.exit.i.2
  %.pn.2 = phi i32 [ %i.iu, %_ZN6LibRaw3FCFEii.exit.i.2 ], [ %i.ey, %bb.bw ]
  %.0.i.in.2 = lshr i32 %i.eo, %.pn.2
  %.0.i.2 = and i32 %.0.i.in.2, 3
  %.not153.2 = icmp slt i32 %.0.i.2, %i.hs
  br i1 %.not153.2, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.2
  %i.iv = load i16, ptr %i.bl, align 2, !tbaa !106 ; 2 uses
  %.not8.i174.2 = icmp eq i16 %i.iv, 0
  br i1 %.not8.i174.2, label %_ZN6LibRaw5COLOREii.exit182.2, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iw = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i175.2 = icmp eq i32 %i.iw, 0
  br i1 %.not.i.i175.2, label %bb.cb, label %_ZN6LibRaw3FCFEii.exit.i176.2

bb.cb:                                            ; preds = %bb.ca
  br label %_ZN6LibRaw3FCFEii.exit.i176.2

_ZN6LibRaw3FCFEii.exit.i176.2:                    ; preds = %bb.cb, %bb.ca
  %i.ix = phi i32 [ -2, %bb.cb ], [ -3, %bb.ca ]
  %.082205.sink252.2 = phi i32 [ %.082205, %bb.cb ], [ %i.ex, %bb.ca ]
  %.sink.i.i178.2 = phi i32 [ 2, %bb.cb ], [ %.082205, %bb.ca ]
  %.sink11.i.i179.2 = phi i32 [ %.082205, %bb.cb ], [ 2, %bb.ca ]
  %i.iy = add nsw i32 %.082205.sink252.2, %i.ix
  %i.iz = zext i16 %i.iv to i32
  %i.ja = add nsw i32 %i.iy, %i.iz
  %i.jb = add nuw nsw i32 %.sink.i.i178.2, 1
  %i.jc = lshr i32 %i.jb, 1
  %i.jd = add nuw nsw i32 %i.jc, %.sink11.i.i179.2
  %i.je = shl i32 %i.ja, 1
  %i.jf = and i32 %i.je, 14
  %i.jg = and i32 %i.jd, 1
  %i.jh = or disjoint i32 %i.jg, %i.jf
  %i.ji = shl nuw nsw i32 %i.jh, 1
  br label %_ZN6LibRaw5COLOREii.exit182.2

_ZN6LibRaw5COLOREii.exit182.2:                    ; preds = %bb.bz, %_ZN6LibRaw3FCFEii.exit.i176.2
  %.pn249.2 = phi i32 [ %i.ji, %_ZN6LibRaw3FCFEii.exit.i176.2 ], [ %i.ey, %bb.bz ]
  %.0.i180.in.2 = lshr i32 %i.eo, %.pn249.2
  %.0.i180.2 = and i32 %.0.i180.in.2, 3
  %i.jj = add nuw nsw i32 %.0.i180.2, 1
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN6LibRaw5COLOREii.exit182.2, %_ZN6LibRaw5COLOREii.exit.2
  %i.jk = phi i32 [ %i.jj, %_ZN6LibRaw5COLOREii.exit182.2 ], [ %i.hs, %_ZN6LibRaw5COLOREii.exit.2 ] ; 2 uses
  %i.jl = shl nuw nsw i32 %.082205, 2             ; 2 uses
  %i.jm = lshr i32 %i.eo, %i.jl
  %i.jn = and i32 %i.jm, 3                        ; 2 uses
  %i.jo = shl nuw nsw i32 %i.fa, 1
  %i.jp = lshr i32 %i.eo, %i.jo
  %i.jq = and i32 %i.jp, 3
  %i.jr = icmp eq i32 %i.jn, %i.jq
  %i.js = zext i1 %i.jr to i32
  %i.jt = add nsw i32 %i.ii, %i.js
  %i.ju = or disjoint i32 %i.jl, 2
  %i.jv = lshr i32 %i.eo, %i.ju
  %i.jw = and i32 %i.jv, 3
  %i.jx = icmp eq i32 %i.jn, %i.jw
  %i.jy = zext i1 %i.jx to i32
  %i.jz = add nsw i32 %i.jt, %i.jy
  br i1 %.not8.i, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ka = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i.3 = icmp eq i32 %i.ka, 0
  br i1 %.not.i.i.3, label %bb.ce, label %_ZN6LibRaw3FCFEii.exit.i.3

bb.ce:                                            ; preds = %bb.cd
  br label %_ZN6LibRaw3FCFEii.exit.i.3

_ZN6LibRaw3FCFEii.exit.i.3:                       ; preds = %bb.ce, %bb.cd
  %i.kb = phi i32 [ -2, %bb.ce ], [ -4, %bb.cd ]
  %.082205.sink.3 = phi i32 [ %.082205, %bb.ce ], [ %i.ex, %bb.cd ]
  %.sink.i.i.3 = phi i32 [ 3, %bb.ce ], [ %.082205, %bb.cd ]
  %.sink11.i.i.3 = phi i32 [ %.082205, %bb.ce ], [ 3, %bb.cd ]
  %i.kc = add nsw i32 %.082205.sink.3, %i.kb
  %i.kd = add nsw i32 %i.kc, %i.ew
  %i.ke = add nuw nsw i32 %.sink.i.i.3, 1
  %i.kf = lshr i32 %i.ke, 1
  %i.kg = add nuw nsw i32 %i.kf, %.sink11.i.i.3
  %i.kh = shl i32 %i.kd, 1
  %i.ki = and i32 %i.kh, 14
  %i.kj = and i32 %i.kg, 1
  %i.kk = or disjoint i32 %i.kj, %i.ki
  %i.kl = shl nuw nsw i32 %i.kk, 1
  br label %_ZN6LibRaw5COLOREii.exit.3

bb.cf:                                            ; preds = %bb.cc
  %i.km = or disjoint i32 %i.ey, 2
  br label %_ZN6LibRaw5COLOREii.exit.3

_ZN6LibRaw5COLOREii.exit.3:                       ; preds = %bb.cf, %_ZN6LibRaw3FCFEii.exit.i.3
  %.pn.3 = phi i32 [ %i.km, %bb.cf ], [ %i.kl, %_ZN6LibRaw3FCFEii.exit.i.3 ]
  %.0.i.in.3 = lshr i32 %i.eo, %.pn.3
  %.0.i.3 = and i32 %.0.i.in.3, 3
  %.not153.3 = icmp slt i32 %.0.i.3, %i.jk
  br i1 %.not153.3, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.3
  %i.kn = load i16, ptr %i.bl, align 2, !tbaa !106 ; 2 uses
  %.not8.i174.3 = icmp eq i16 %i.kn, 0
  br i1 %.not8.i174.3, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ko = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i175.3 = icmp eq i32 %i.ko, 0
  br i1 %.not.i.i175.3, label %bb.ci, label %_ZN6LibRaw3FCFEii.exit.i176.3

bb.ci:                                            ; preds = %bb.ch
  br label %_ZN6LibRaw3FCFEii.exit.i176.3

_ZN6LibRaw3FCFEii.exit.i176.3:                    ; preds = %bb.ci, %bb.ch
  %i.kp = phi i32 [ -2, %bb.ci ], [ -4, %bb.ch ]
  %.082205.sink252.3 = phi i32 [ %.082205, %bb.ci ], [ %i.ex, %bb.ch ]
  %.sink.i.i178.3 = phi i32 [ 3, %bb.ci ], [ %.082205, %bb.ch ]
  %.sink11.i.i179.3 = phi i32 [ %.082205, %bb.ci ], [ 3, %bb.ch ]
  %i.kq = add nsw i32 %.082205.sink252.3, %i.kp
  %i.kr = zext i16 %i.kn to i32
  %i.ks = add nsw i32 %i.kq, %i.kr
  %i.kt = add nuw nsw i32 %.sink.i.i178.3, 1
  %i.ku = lshr i32 %i.kt, 1
  %i.kv = add nuw nsw i32 %i.ku, %.sink11.i.i179.3
  %i.kw = shl i32 %i.ks, 1
  %i.kx = and i32 %i.kw, 14
  %i.ky = and i32 %i.kv, 1
  %i.kz = or disjoint i32 %i.ky, %i.kx
  %i.la = shl nuw nsw i32 %i.kz, 1
  br label %_ZN6LibRaw5COLOREii.exit182.3

bb.cj:                                            ; preds = %bb.cg
  %i.lb = or disjoint i32 %i.ey, 2
  br label %_ZN6LibRaw5COLOREii.exit182.3

_ZN6LibRaw5COLOREii.exit182.3:                    ; preds = %bb.cj, %_ZN6LibRaw3FCFEii.exit.i176.3
  %.pn249.3 = phi i32 [ %i.lb, %bb.cj ], [ %i.la, %_ZN6LibRaw3FCFEii.exit.i176.3 ]
  %.0.i180.in.3 = lshr i32 %i.eo, %.pn249.3
  %.0.i180.3 = and i32 %.0.i180.in.3, 3
  %i.lc = add nuw nsw i32 %.0.i180.3, 1
  br label %bb.ck

bb.ck:                                            ; preds = %_ZN6LibRaw5COLOREii.exit182.3, %_ZN6LibRaw5COLOREii.exit.3
  %i.ld = phi i32 [ %i.lc, %_ZN6LibRaw5COLOREii.exit182.3 ], [ %i.jk, %_ZN6LibRaw5COLOREii.exit.3 ] ; 2 uses
  %i.le = shl i32 %.082205, 2                     ; 2 uses
  %i.lf = or disjoint i32 %i.le, 2
  %i.lg = lshr i32 %i.eo, %i.lf
  %i.lh = and i32 %i.lg, 3                        ; 2 uses
  %i.li = shl nuw i32 %i.fa, 1
  %i.lj = or disjoint i32 %i.li, 2
  %i.lk = lshr i32 %i.eo, %i.lj
  %i.ll = and i32 %i.lk, 3
  %i.lm = icmp eq i32 %i.lh, %i.ll
  %i.ln = zext i1 %i.lm to i32
  %i.lo = add nsw i32 %i.jz, %i.ln
  %i.lp = lshr i32 %i.eo, %i.le
  %i.lq = and i32 %i.lp, 3
  %i.lr = icmp eq i32 %i.lh, %i.lq
  %i.ls = zext i1 %i.lr to i32
  %i.lt = add nsw i32 %i.lo, %i.ls
  br i1 %.not8.i, label %_ZN6LibRaw5COLOREii.exit.4, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lu = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i.4 = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i.4, label %bb.cm, label %_ZN6LibRaw3FCFEii.exit.i.4

bb.cm:                                            ; preds = %bb.cl
  br label %_ZN6LibRaw3FCFEii.exit.i.4

_ZN6LibRaw3FCFEii.exit.i.4:                       ; preds = %bb.cm, %bb.cl
  %i.lv = phi i32 [ -3, %bb.cm ], [ -5, %bb.cl ]
  %.082205.sink.4 = phi i32 [ %.082205, %bb.cm ], [ %i.ex, %bb.cl ]
  %.sink.i.i.4 = phi i32 [ 4, %bb.cm ], [ %.082205, %bb.cl ]
  %.sink11.i.i.4 = phi i32 [ %.082205, %bb.cm ], [ 4, %bb.cl ]
  %i.lw = add nsw i32 %.082205.sink.4, %i.lv
  %i.lx = add nsw i32 %i.lw, %i.ew
  %i.ly = add nuw nsw i32 %.sink.i.i.4, 1
  %i.lz = lshr i32 %i.ly, 1
  %i.ma = add nuw nsw i32 %i.lz, %.sink11.i.i.4
  %i.mb = shl i32 %i.lx, 1
  %i.mc = and i32 %i.mb, 14
  %i.md = and i32 %i.ma, 1
  %i.me = or disjoint i32 %i.md, %i.mc
  %i.mf = shl nuw nsw i32 %i.me, 1
  br label %_ZN6LibRaw5COLOREii.exit.4

_ZN6LibRaw5COLOREii.exit.4:                       ; preds = %bb.ck, %_ZN6LibRaw3FCFEii.exit.i.4
  %.pn.4 = phi i32 [ %i.mf, %_ZN6LibRaw3FCFEii.exit.i.4 ], [ %i.ey, %bb.ck ]
  %.0.i.in.4 = lshr i32 %i.eo, %.pn.4
  %.0.i.4 = and i32 %.0.i.in.4, 3
  %.not153.4 = icmp slt i32 %.0.i.4, %i.ld
  br i1 %.not153.4, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.4
  %i.mg = load i16, ptr %i.bl, align 2, !tbaa !106 ; 2 uses
  %.not8.i174.4 = icmp eq i16 %i.mg, 0
  br i1 %.not8.i174.4, label %_ZN6LibRaw5COLOREii.exit182.4, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mh = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i175.4 = icmp eq i32 %i.mh, 0
  br i1 %.not.i.i175.4, label %bb.cp, label %_ZN6LibRaw3FCFEii.exit.i176.4

bb.cp:                                            ; preds = %bb.co
  br label %_ZN6LibRaw3FCFEii.exit.i176.4

_ZN6LibRaw3FCFEii.exit.i176.4:                    ; preds = %bb.cp, %bb.co
  %i.mi = phi i32 [ -3, %bb.cp ], [ -5, %bb.co ]
  %.082205.sink252.4 = phi i32 [ %.082205, %bb.cp ], [ %i.ex, %bb.co ]
  %.sink.i.i178.4 = phi i32 [ 4, %bb.cp ], [ %.082205, %bb.co ]
  %.sink11.i.i179.4 = phi i32 [ %.082205, %bb.cp ], [ 4, %bb.co ]
  %i.mj = add nsw i32 %.082205.sink252.4, %i.mi
  %i.mk = zext i16 %i.mg to i32
  %i.ml = add nsw i32 %i.mj, %i.mk
  %i.mm = add nuw nsw i32 %.sink.i.i178.4, 1
  %i.mn = lshr i32 %i.mm, 1
  %i.mo = add nuw nsw i32 %i.mn, %.sink11.i.i179.4
  %i.mp = shl i32 %i.ml, 1
  %i.mq = and i32 %i.mp, 14
  %i.mr = and i32 %i.mo, 1
  %i.ms = or disjoint i32 %i.mr, %i.mq
  %i.mt = shl nuw nsw i32 %i.ms, 1
  br label %_ZN6LibRaw5COLOREii.exit182.4

_ZN6LibRaw5COLOREii.exit182.4:                    ; preds = %bb.cn, %_ZN6LibRaw3FCFEii.exit.i176.4
  %.pn249.4 = phi i32 [ %i.mt, %_ZN6LibRaw3FCFEii.exit.i176.4 ], [ %i.ey, %bb.cn ]
  %.0.i180.in.4 = lshr i32 %i.eo, %.pn249.4
  %.0.i180.4 = and i32 %.0.i180.in.4, 3
  %i.mu = add nuw nsw i32 %.0.i180.4, 1
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN6LibRaw5COLOREii.exit182.4, %_ZN6LibRaw5COLOREii.exit.4
  %i.mv = phi i32 [ %i.mu, %_ZN6LibRaw5COLOREii.exit182.4 ], [ %i.ld, %_ZN6LibRaw5COLOREii.exit.4 ] ; 2 uses
  %i.mw = shl nuw nsw i32 %.082205, 2             ; 2 uses
  %i.mx = lshr i32 %i.eo, %i.mw
  %i.my = and i32 %i.mx, 3                        ; 2 uses
  %i.mz = shl nuw nsw i32 %i.fa, 1
  %i.na = lshr i32 %i.eo, %i.mz
  %i.nb = and i32 %i.na, 3
  %i.nc = icmp eq i32 %i.my, %i.nb
  %i.nd = zext i1 %i.nc to i32
  %i.ne = add nsw i32 %i.lt, %i.nd
  %i.nf = or disjoint i32 %i.mw, 2
  %i.ng = lshr i32 %i.eo, %i.nf
  %i.nh = and i32 %i.ng, 3
  %i.ni = icmp eq i32 %i.my, %i.nh
  %i.nj = zext i1 %i.ni to i32
  %i.nk = add nsw i32 %i.ne, %i.nj
  br i1 %.not8.i, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nl = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i.5 = icmp eq i32 %i.nl, 0
  br i1 %.not.i.i.5, label %bb.cs, label %_ZN6LibRaw3FCFEii.exit.i.5

bb.cs:                                            ; preds = %bb.cr
  br label %_ZN6LibRaw3FCFEii.exit.i.5

_ZN6LibRaw3FCFEii.exit.i.5:                       ; preds = %bb.cs, %bb.cr
  %i.nm = phi i32 [ -3, %bb.cs ], [ -6, %bb.cr ]
  %.082205.sink.5 = phi i32 [ %.082205, %bb.cs ], [ %i.ex, %bb.cr ]
  %.sink.i.i.5 = phi i32 [ 5, %bb.cs ], [ %.082205, %bb.cr ]
  %.sink11.i.i.5 = phi i32 [ %.082205, %bb.cs ], [ 5, %bb.cr ]
  %i.nn = add nsw i32 %.082205.sink.5, %i.nm
  %i.no = add nsw i32 %i.nn, %i.ew
  %i.np = add nuw nsw i32 %.sink.i.i.5, 1
  %i.nq = lshr i32 %i.np, 1
  %i.nr = add nuw nsw i32 %i.nq, %.sink11.i.i.5
  %i.ns = shl i32 %i.no, 1
  %i.nt = and i32 %i.ns, 14
  %i.nu = and i32 %i.nr, 1
  %i.nv = or disjoint i32 %i.nu, %i.nt
  %i.nw = shl nuw nsw i32 %i.nv, 1
  br label %_ZN6LibRaw5COLOREii.exit.5

bb.ct:                                            ; preds = %bb.cq
  %i.nx = or disjoint i32 %i.ey, 2
  br label %_ZN6LibRaw5COLOREii.exit.5

_ZN6LibRaw5COLOREii.exit.5:                       ; preds = %bb.ct, %_ZN6LibRaw3FCFEii.exit.i.5
  %.pn.5 = phi i32 [ %i.nx, %bb.ct ], [ %i.nw, %_ZN6LibRaw3FCFEii.exit.i.5 ]
  %.0.i.in.5 = lshr i32 %i.eo, %.pn.5
  %.0.i.5 = and i32 %.0.i.in.5, 3
  %.not153.5 = icmp slt i32 %.0.i.5, %i.mv
  br i1 %.not153.5, label %bb.cy, label %bb.cu

bb.cu:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.5
  %i.ny = load i16, ptr %i.bl, align 2, !tbaa !106 ; 2 uses
  %.not8.i174.5 = icmp eq i16 %i.ny, 0
  br i1 %.not8.i174.5, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.nz = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i175.5 = icmp eq i32 %i.nz, 0
  br i1 %.not.i.i175.5, label %bb.cw, label %_ZN6LibRaw3FCFEii.exit.i176.5

bb.cw:                                            ; preds = %bb.cv
  br label %_ZN6LibRaw3FCFEii.exit.i176.5

_ZN6LibRaw3FCFEii.exit.i176.5:                    ; preds = %bb.cw, %bb.cv
  %i.oa = phi i32 [ -3, %bb.cw ], [ -6, %bb.cv ]
  %.082205.sink252.5 = phi i32 [ %.082205, %bb.cw ], [ %i.ex, %bb.cv ]
  %.sink.i.i178.5 = phi i32 [ 5, %bb.cw ], [ %.082205, %bb.cv ]
  %.sink11.i.i179.5 = phi i32 [ %.082205, %bb.cw ], [ 5, %bb.cv ]
  %i.ob = add nsw i32 %.082205.sink252.5, %i.oa
  %i.oc = zext i16 %i.ny to i32
  %i.od = add nsw i32 %i.ob, %i.oc
  %i.oe = add nuw nsw i32 %.sink.i.i178.5, 1
  %i.of = lshr i32 %i.oe, 1
  %i.og = add nuw nsw i32 %i.of, %.sink11.i.i179.5
  %i.oh = shl i32 %i.od, 1
  %i.oi = and i32 %i.oh, 14
  %i.oj = and i32 %i.og, 1
  %i.ok = or disjoint i32 %i.oj, %i.oi
  %i.ol = shl nuw nsw i32 %i.ok, 1
  br label %_ZN6LibRaw5COLOREii.exit182.5

bb.cx:                                            ; preds = %bb.cu
  %i.om = or disjoint i32 %i.ey, 2
  br label %_ZN6LibRaw5COLOREii.exit182.5

_ZN6LibRaw5COLOREii.exit182.5:                    ; preds = %bb.cx, %_ZN6LibRaw3FCFEii.exit.i176.5
  %.pn249.5 = phi i32 [ %i.om, %bb.cx ], [ %i.ol, %_ZN6LibRaw3FCFEii.exit.i176.5 ]
  %.0.i180.in.5 = lshr i32 %i.eo, %.pn249.5
  %.0.i180.5 = and i32 %.0.i180.in.5, 3
  %i.on = add nuw nsw i32 %.0.i180.5, 1
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN6LibRaw5COLOREii.exit182.5, %_ZN6LibRaw5COLOREii.exit.5
  %i.oo = phi i32 [ %i.on, %_ZN6LibRaw5COLOREii.exit182.5 ], [ %i.mv, %_ZN6LibRaw5COLOREii.exit.5 ] ; 2 uses
  %i.op = shl i32 %.082205, 2                     ; 2 uses
  %i.oq = or disjoint i32 %i.op, 2
  %i.or = lshr i32 %i.eo, %i.oq
  %i.os = and i32 %i.or, 3                        ; 2 uses
  %i.ot = shl nuw i32 %i.fa, 1
  %i.ou = or disjoint i32 %i.ot, 2
  %i.ov = lshr i32 %i.eo, %i.ou
  %i.ow = and i32 %i.ov, 3
  %i.ox = icmp eq i32 %i.os, %i.ow
  %i.oy = zext i1 %i.ox to i32
  %i.oz = add nsw i32 %i.nk, %i.oy
  %i.pa = lshr i32 %i.eo, %i.op
  %i.pb = and i32 %i.pa, 3
  %i.pc = icmp eq i32 %i.os, %i.pb
  %i.pd = zext i1 %i.pc to i32
  %i.pe = add nsw i32 %i.oz, %i.pd
  br i1 %.not8.i, label %_ZN6LibRaw5COLOREii.exit.6, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pf = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i.6 = icmp eq i32 %i.pf, 0
  br i1 %.not.i.i.6, label %bb.da, label %_ZN6LibRaw3FCFEii.exit.i.6

bb.da:                                            ; preds = %bb.cz
  br label %_ZN6LibRaw3FCFEii.exit.i.6

_ZN6LibRaw3FCFEii.exit.i.6:                       ; preds = %bb.da, %bb.cz
  %i.pg = phi i32 [ -4, %bb.da ], [ -7, %bb.cz ]
  %.082205.sink.6 = phi i32 [ %.082205, %bb.da ], [ %i.ex, %bb.cz ]
  %.sink.i.i.6 = phi i32 [ 6, %bb.da ], [ %.082205, %bb.cz ]
  %.sink11.i.i.6 = phi i32 [ %.082205, %bb.da ], [ 6, %bb.cz ]
  %i.ph = add nsw i32 %.082205.sink.6, %i.pg
  %i.pi = add nsw i32 %i.ph, %i.ew
  %i.pj = add nuw nsw i32 %.sink.i.i.6, 1
  %i.pk = lshr i32 %i.pj, 1
  %i.pl = add nuw nsw i32 %i.pk, %.sink11.i.i.6
  %i.pm = shl i32 %i.pi, 1
  %i.pn = and i32 %i.pm, 14
  %i.po = and i32 %i.pl, 1
  %i.pp = or disjoint i32 %i.po, %i.pn
  %i.pq = shl nuw nsw i32 %i.pp, 1
  br label %_ZN6LibRaw5COLOREii.exit.6

_ZN6LibRaw5COLOREii.exit.6:                       ; preds = %bb.cy, %_ZN6LibRaw3FCFEii.exit.i.6
  %.pn.6 = phi i32 [ %i.pq, %_ZN6LibRaw3FCFEii.exit.i.6 ], [ %i.ey, %bb.cy ]
  %.0.i.in.6 = lshr i32 %i.eo, %.pn.6
  %.0.i.6 = and i32 %.0.i.in.6, 3
  %.not153.6 = icmp slt i32 %.0.i.6, %i.oo
  br i1 %.not153.6, label %bb.de, label %bb.db

bb.db:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.6
  %i.pr = load i16, ptr %i.bl, align 2, !tbaa !106 ; 2 uses
  %.not8.i174.6 = icmp eq i16 %i.pr, 0
  br i1 %.not8.i174.6, label %_ZN6LibRaw5COLOREii.exit182.6, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ps = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i175.6 = icmp eq i32 %i.ps, 0
  br i1 %.not.i.i175.6, label %bb.dd, label %_ZN6LibRaw3FCFEii.exit.i176.6

bb.dd:                                            ; preds = %bb.dc
  br label %_ZN6LibRaw3FCFEii.exit.i176.6

_ZN6LibRaw3FCFEii.exit.i176.6:                    ; preds = %bb.dd, %bb.dc
  %i.pt = phi i32 [ -4, %bb.dd ], [ -7, %bb.dc ]
  %.082205.sink252.6 = phi i32 [ %.082205, %bb.dd ], [ %i.ex, %bb.dc ]
  %.sink.i.i178.6 = phi i32 [ 6, %bb.dd ], [ %.082205, %bb.dc ]
  %.sink11.i.i179.6 = phi i32 [ %.082205, %bb.dd ], [ 6, %bb.dc ]
  %i.pu = add nsw i32 %.082205.sink252.6, %i.pt
  %i.pv = zext i16 %i.pr to i32
  %i.pw = add nsw i32 %i.pu, %i.pv
  %i.px = add nuw nsw i32 %.sink.i.i178.6, 1
  %i.py = lshr i32 %i.px, 1
  %i.pz = add nuw nsw i32 %i.py, %.sink11.i.i179.6
  %i.qa = shl i32 %i.pw, 1
  %i.qb = and i32 %i.qa, 14
  %i.qc = and i32 %i.pz, 1
  %i.qd = or disjoint i32 %i.qc, %i.qb
  %i.qe = shl nuw nsw i32 %i.qd, 1
  br label %_ZN6LibRaw5COLOREii.exit182.6

_ZN6LibRaw5COLOREii.exit182.6:                    ; preds = %bb.db, %_ZN6LibRaw3FCFEii.exit.i176.6
  %.pn249.6 = phi i32 [ %i.qe, %_ZN6LibRaw3FCFEii.exit.i176.6 ], [ %i.ey, %bb.db ]
  %.0.i180.in.6 = lshr i32 %i.eo, %.pn249.6
  %.0.i180.6 = and i32 %.0.i180.in.6, 3
  %i.qf = add nuw nsw i32 %.0.i180.6, 1
  br label %bb.de

bb.de:                                            ; preds = %_ZN6LibRaw5COLOREii.exit182.6, %_ZN6LibRaw5COLOREii.exit.6
  %i.qg = phi i32 [ %i.qf, %_ZN6LibRaw5COLOREii.exit182.6 ], [ %i.oo, %_ZN6LibRaw5COLOREii.exit.6 ] ; 2 uses
  %i.qh = shl nuw nsw i32 %.082205, 2             ; 2 uses
  %i.qi = lshr i32 %i.eo, %i.qh
  %i.qj = and i32 %i.qi, 3                        ; 2 uses
  %i.qk = shl nuw nsw i32 %i.fa, 1
  %i.ql = lshr i32 %i.eo, %i.qk
  %i.qm = and i32 %i.ql, 3
  %i.qn = icmp eq i32 %i.qj, %i.qm
  %i.qo = zext i1 %i.qn to i32
  %i.qp = add nsw i32 %i.pe, %i.qo
  %i.qq = or disjoint i32 %i.qh, 2
  %i.qr = lshr i32 %i.eo, %i.qq
  %i.qs = and i32 %i.qr, 3
  %i.qt = icmp eq i32 %i.qj, %i.qs
  %i.qu = zext i1 %i.qt to i32
  %i.qv = add nsw i32 %i.qp, %i.qu
  br i1 %.not8.i, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.qw = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i.7 = icmp eq i32 %i.qw, 0
  br i1 %.not.i.i.7, label %bb.dg, label %_ZN6LibRaw3FCFEii.exit.i.7

bb.dg:                                            ; preds = %bb.df
  br label %_ZN6LibRaw3FCFEii.exit.i.7

_ZN6LibRaw3FCFEii.exit.i.7:                       ; preds = %bb.dg, %bb.df
  %i.qx = phi i32 [ -4, %bb.dg ], [ -8, %bb.df ]
  %.082205.sink.7 = phi i32 [ %.082205, %bb.dg ], [ %i.ex, %bb.df ]
  %.sink.i.i.7 = phi i32 [ 7, %bb.dg ], [ %.082205, %bb.df ]
  %.sink11.i.i.7 = phi i32 [ %.082205, %bb.dg ], [ 7, %bb.df ]
  %i.qy = add nsw i32 %.082205.sink.7, %i.qx
  %i.qz = add nsw i32 %i.qy, %i.ew
  %i.ra = add nuw nsw i32 %.sink.i.i.7, 1
  %i.rb = lshr i32 %i.ra, 1
  %i.rc = add nuw nsw i32 %i.rb, %.sink11.i.i.7
  %i.rd = shl i32 %i.qz, 1
  %i.re = and i32 %i.rd, 14
  %i.rf = and i32 %i.rc, 1
  %i.rg = or disjoint i32 %i.rf, %i.re
  %i.rh = shl nuw nsw i32 %i.rg, 1
  br label %_ZN6LibRaw5COLOREii.exit.7

bb.dh:                                            ; preds = %bb.de
  %i.ri = or disjoint i32 %i.ey, 2
  br label %_ZN6LibRaw5COLOREii.exit.7

_ZN6LibRaw5COLOREii.exit.7:                       ; preds = %bb.dh, %_ZN6LibRaw3FCFEii.exit.i.7
  %.pn.7 = phi i32 [ %i.ri, %bb.dh ], [ %i.rh, %_ZN6LibRaw3FCFEii.exit.i.7 ]
  %.0.i.in.7 = lshr i32 %i.eo, %.pn.7
  %.0.i.7 = and i32 %.0.i.in.7, 3
  %.not153.7 = icmp slt i32 %.0.i.7, %i.qg
  br i1 %.not153.7, label %bb.dm, label %bb.di

bb.di:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.7
  %i.rj = load i16, ptr %i.bl, align 2, !tbaa !106 ; 2 uses
  %.not8.i174.7 = icmp eq i16 %i.rj, 0
  br i1 %.not8.i174.7, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.rk = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i175.7 = icmp eq i32 %i.rk, 0
  br i1 %.not.i.i175.7, label %bb.dk, label %_ZN6LibRaw3FCFEii.exit.i176.7

bb.dk:                                            ; preds = %bb.dj
  br label %_ZN6LibRaw3FCFEii.exit.i176.7

_ZN6LibRaw3FCFEii.exit.i176.7:                    ; preds = %bb.dk, %bb.dj
  %i.rl = phi i32 [ -4, %bb.dk ], [ -8, %bb.dj ]
  %.082205.sink252.7 = phi i32 [ %.082205, %bb.dk ], [ %i.ex, %bb.dj ]
  %.sink.i.i178.7 = phi i32 [ 7, %bb.dk ], [ %.082205, %bb.dj ]
  %.sink11.i.i179.7 = phi i32 [ %.082205, %bb.dk ], [ 7, %bb.dj ]
  %i.rm = add nsw i32 %.082205.sink252.7, %i.rl
  %i.rn = zext i16 %i.rj to i32
  %i.ro = add nsw i32 %i.rm, %i.rn
  %i.rp = add nuw nsw i32 %.sink.i.i178.7, 1
  %i.rq = lshr i32 %i.rp, 1
  %i.rr = add nuw nsw i32 %i.rq, %.sink11.i.i179.7
  %i.rs = shl i32 %i.ro, 1
  %i.rt = and i32 %i.rs, 14
  %i.ru = and i32 %i.rr, 1
  %i.rv = or disjoint i32 %i.ru, %i.rt
  %i.rw = shl nuw nsw i32 %i.rv, 1
  br label %_ZN6LibRaw5COLOREii.exit182.7

bb.dl:                                            ; preds = %bb.di
  %i.rx = or disjoint i32 %i.ey, 2
  br label %_ZN6LibRaw5COLOREii.exit182.7

_ZN6LibRaw5COLOREii.exit182.7:                    ; preds = %bb.dl, %_ZN6LibRaw3FCFEii.exit.i176.7
  %.pn249.7 = phi i32 [ %i.rx, %bb.dl ], [ %i.rw, %_ZN6LibRaw3FCFEii.exit.i176.7 ]
  %.0.i180.in.7 = lshr i32 %i.eo, %.pn249.7
  %.0.i180.7 = and i32 %.0.i180.in.7, 3
  %i.ry = add nuw nsw i32 %.0.i180.7, 1
  br label %bb.dm

bb.dm:                                            ; preds = %_ZN6LibRaw5COLOREii.exit182.7, %_ZN6LibRaw5COLOREii.exit.7
  %i.rz = phi i32 [ %i.ry, %_ZN6LibRaw5COLOREii.exit182.7 ], [ %i.qg, %_ZN6LibRaw5COLOREii.exit.7 ] ; 2 uses
  %i.sa = shl i32 %.082205, 2                     ; 2 uses
  %i.sb = or disjoint i32 %i.sa, 2
  %i.sc = lshr i32 %i.eo, %i.sb
  %i.sd = and i32 %i.sc, 3                        ; 2 uses
  %i.se = shl nuw i32 %i.fa, 1
  %i.sf = or disjoint i32 %i.se, 2
  %i.sg = lshr i32 %i.eo, %i.sf
  %i.sh = and i32 %i.sg, 3
  %i.si = icmp eq i32 %i.sd, %i.sh
  %i.sj = zext i1 %i.si to i32
  %i.sk = add nsw i32 %i.qv, %i.sj
  %i.sl = lshr i32 %i.eo, %i.sa
  %i.sm = and i32 %i.sl, 3
  %i.sn = icmp eq i32 %i.sd, %i.sm
  %i.so = zext i1 %i.sn to i32
  %i.sp = add nsw i32 %i.sk, %i.so                ; 2 uses
  %i.sq = add nuw nsw i32 %.082205, 1             ; 2 uses
  %exitcond213.not = icmp eq i32 %i.sq, 4
  br i1 %exitcond213.not, label %bb.bm, label %.preheader, !llvm.loop !14

bb.dn:                                            ; preds = %bb.bm, %bb.bl
  %.286 = phi i32 [ %i.rz, %bb.bm ], [ %i.es, %bb.bl ] ; 2 uses
  %.3 = phi i1 [ %i.fb, %bb.bm ], [ false, %bb.bl ]
  %.not188 = icmp slt i32 %i.ee, 1
  br i1 %.not188, label %bb.dr, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.sr = load i32, ptr %i.er, align 4, !tbaa !100
  %i.ss = icmp eq i32 %i.sr, 3
  %i.st = icmp eq i32 %.286, 3
  %or.cond7 = select i1 %i.ss, i1 %i.st, i1 false
  br i1 %or.cond7, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %bb.do
  %i.su = icmp ugt i32 %i.eo, 1000
  br i1 %i.su, label %bb.dq, label %.thread

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN6LibRaw4fbddEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ee)
          to label %._crit_edge218 unwind label %.loopexit.split-lp

._crit_edge218:                                   ; preds = %bb.dq
  %.pr.pre = load i32, ptr %i.ad, align 8, !tbaa !99
  br label %bb.dr

.loopexit.split-lp:                               ; preds = %.invoke, %bb.dq, %bb.du, %bb.dx, %bb.dz, %bb.eb, %bb.ed, %bb.ee, %bb.ef, %bb.eg, %bb.eh, %bb.j, %bb.p, %bb.fm, %bb.fk, %bb.fi, %bb.fh, %bb.fe, %bb.fb, %bb.ey, %bb.ev, %bb.es, %bb.eo, %bb.bi, %bb.bg, %bb.be, %bb.bd, %bb.ba, %bb.ay, %bb.aw, %bb.ah, %bb.af, %bb.ae, %bb.ab, %bb.y, %bb.v, %bb.s
  %lpad.loopexit.split-lp209 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions      ; 3 uses
  %.392 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp209, 1 ; 2 uses
  %.396 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp209, 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.sv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #8
  %i.sw = icmp eq i32 %.392, %i.sv
  br i1 %i.sw, label %bb.fq, label %bb.fs

bb.dr:                                            ; preds = %._crit_edge218, %bb.do, %bb.dn
  %.pr = phi i32 [ %.pr.pre, %._crit_edge218 ], [ %i.eo, %bb.do ], [ %i.eo, %bb.dn ] ; 3 uses
  %i.sx = icmp ugt i32 %.pr, 1000
  br i1 %i.sx, label %bb.ds, label %.thread

bb.ds:                                            ; preds = %bb.dr
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 768360
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !134 ; 2 uses
  %.not150 = icmp eq ptr %i.sz, null
  br i1 %.not150, label %.thread183, label %.invoke

.invoke:                                          ; preds = %bb.dt, %bb.ds
  %i.ta = phi ptr [ %i.sz, %bb.ds ], [ %i.te, %bb.dt ]
  invoke void %i.ta(ptr noundef nonnull %0)
          to label %bb.ej unwind label %.loopexit.split-lp

.thread:                                          ; preds = %bb.dp, %bb.dr
  %i.tb = phi i32 [ %.pr, %bb.dr ], [ %i.eo, %bb.dp ] ; 2 uses
  %i.tc = icmp eq i32 %i.tb, 9
  br i1 %i.tc, label %bb.dt, label %.thread183

bb.dt:                                            ; preds = %.thread
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 768368
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !135 ; 2 uses
  %.not151 = icmp eq ptr %i.te, null
  br i1 %.not151, label %.thread183, label %.invoke

.thread183:                                       ; preds = %bb.ds, %bb.dt, %.thread
  %i.tf = phi i1 [ false, %.thread ], [ true, %bb.dt ], [ false, %bb.ds ]
  %i.tg = phi i32 [ %i.tb, %.thread ], [ 9, %bb.dt ], [ %.pr, %bb.ds ] ; 2 uses
  %.not186 = phi i1 [ true, %.thread ], [ true, %bb.dt ], [ false, %bb.ds ]
  switch i32 %spec.select, label %bb.dv [
    i32 0, label %bb.du
    i32 1, label %bb.dx
  ]

bb.du:                                            ; preds = %.thread183
  invoke void @_ZN6LibRaw15lin_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ej unwind label %.loopexit.split-lp

bb.dv:                                            ; preds = %.thread183
  %i.th = load i32, ptr %i.er, align 4, !tbaa !100
  %i.ti = icmp sgt i32 %i.th, 3
  %i.tj = icmp sgt i32 %.286, 3
  %or.cond9 = select i1 %i.ti, i1 true, i1 %i.tj
  %or.cond11 = select i1 %or.cond9, i1 true, i1 %.3
  br i1 %or.cond11, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.not152 = icmp ne i32 %i.tg, 9
  %i.tk = icmp ult i32 %i.tg, 1001
  %or.cond171 = and i1 %.not152, %i.tk
  br i1 %or.cond171, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw, %.thread183, %bb.dv
  invoke void @_ZN6LibRaw15vng_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ej unwind label %.loopexit.split-lp

bb.dy:                                            ; preds = %bb.dw
  %i.tl = icmp ne i32 %spec.select, 2
  %brmerge = or i1 %i.tl, %.not186
  br i1 %brmerge, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN6LibRaw15ppg_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ej unwind label %.loopexit.split-lp

bb.ea:                                            ; preds = %bb.dy
  br i1 %i.tf, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %.inv = icmp slt i32 %spec.select, 3
  %i.tm = select i1 %.inv, i32 1, i32 3
  invoke void @_ZN6LibRaw18xtrans_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.tm)
          to label %bb.ej unwind label %.loopexit.split-lp

bb.ec:                                            ; preds = %bb.ea
  switch i32 %spec.select, label %bb.eh [
    i32 3, label %bb.ed
    i32 4, label %bb.ee
    i32 11, label %bb.ef
    i32 12, label %bb.eg
  ]

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZN6LibRaw15ahd_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ej unwind label %.loopexit.split-lp

bb.ee:                                            ; preds = %bb.ec
  invoke void @_ZN6LibRaw3dcbEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %spec.select170, i32 noundef %.0102)
          to label %bb.ej unwind label %.loopexit.split-lp

bb.ef:                                            ; preds = %bb.ec
  invoke void @_ZN6LibRaw15dht_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ej unwind label %.loopexit.split-lp

bb.eg:                                            ; preds = %bb.ec
  invoke void @_ZN6LibRaw16aahd_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ej unwind label %.loopexit.split-lp

bb.eh:                                            ; preds = %bb.ec
  invoke void @_ZN6LibRaw15ahd_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ei unwind label %.loopexit.split-lp

bb.ei:                                            ; preds = %bb.eh
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 5596 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !136
  %i.tp = or i32 %i.to, 32768
  store i32 %i.tp, ptr %i.tn, align 4, !tbaa !136
  br label %bb.ej

bb.ej:                                            ; preds = %.invoke, %bb.du, %bb.dz, %bb.ed, %bb.ef, %bb.eg, %bb.ei, %bb.ee, %bb.eb, %bb.dx
  %i.tq = load i32, ptr %i.b, align 8, !tbaa !78
  %i.tr = or i32 %i.tq, 2048
  store i32 %i.tr, ptr %i.b, align 8, !tbaa !78
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.bk, %bb.bj
  %i.ts = load i32, ptr %i.av, align 8, !tbaa !137
  %.not155 = icmp eq i32 %i.ts, 0
  br i1 %.not155, label %bb.en, label %bb.el

bb.el:                                            ; preds = %bb.ek
end_hunk_0
