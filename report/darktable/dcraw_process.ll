Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/dcraw_process?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6LibRaw13dcraw_processEv:bb.a
bb.al:                                            ; preds = %bb.ak
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 768416
  %.unpack = load i64, ptr %i.ce, align 8, !tbaa !114
  %.elt140 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  %.unpack141 = load i64, ptr %.elt140, align 8, !tbaa !114
  %i.cf = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw12x3f_load_rawEv to i64)
  %i.cg = icmp eq i64 %.unpack141, 0
  %i.ch = and i1 %i.cf, %i.cg
  br i1 %i.ch, label %.preheader191, label %.loopexit192

.preheader191:                                    ; preds = %bb.al
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.ck = load i16, ptr %i.ci, align 4, !tbaa !115
  %i.cl = zext i16 %i.ck to i32
  %i.cm = load i16, ptr %i.cj, align 2, !tbaa !116
  %i.cn = zext i16 %i.cm to i32
  %i.co = mul nuw nsw i32 %i.cn, %i.cl
  %.not207 = icmp eq i32 %i.co, 0
  br i1 %.not207, label %.loopexit192, label %.preheader190.lr.ph

.preheader190.lr.ph:                              ; preds = %.preheader191
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !117
  br label %.preheader190

.preheader190:                                    ; preds = %.preheader190.lr.ph, %bb.at
  %indvars.iv = phi i64 [ 0, %.preheader190.lr.ph ], [ %indvars.iv.next, %bb.at ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv ; 5 uses
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !118
  %i.cs = icmp slt i16 %i.cr, 0
  br i1 %i.cs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.preheader190
  store i16 0, ptr %i.cq, align 2, !tbaa !118
  br label %bb.an

bb.an:                                            ; preds = %.preheader190, %bb.am
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 2 ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !118
  %i.cv = icmp slt i16 %i.cu, 0
  br i1 %i.cv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i16 0, ptr %i.ct, align 2, !tbaa !118
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !118
  %i.cy = icmp slt i16 %i.cx, 0
  br i1 %i.cy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i16 0, ptr %i.cw, align 2, !tbaa !118
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 6 ; 2 uses
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !118
  %i.db = icmp slt i16 %i.da, 0
  br i1 %i.db, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i16 0, ptr %i.cz, align 2, !tbaa !118
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dc = load i16, ptr %i.ci, align 4, !tbaa !115
  %i.dd = zext i16 %i.dc to i64
  %i.de = load i16, ptr %i.cj, align 2, !tbaa !116
  %i.df = zext i16 %i.de to i64
  %i.dg = mul nuw nsw i64 %i.df, %i.dd
  %i.dh = icmp samesign ult i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %.preheader190, label %.loopexit192, !llvm.loop !13

.loopexit192:                                     ; preds = %bb.at, %.preheader191, %bb.al
  %i.di = load i32, ptr %i.b, align 8, !tbaa !78
  %i.dj = or i32 %i.di, 256
  store i32 %i.dj, ptr %i.b, align 8, !tbaa !78
  br label %bb.au

bb.au:                                            ; preds = %.loopexit192, %bb.ak
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 5508
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !120
  %.not142 = icmp eq i32 %i.dl, 0
  br i1 %.not142, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 5376
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !121
  %.not143 = icmp eq i32 %i.dn, 0
  br i1 %.not143, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN6LibRaw14green_matchingEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
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
  %.082205 = phi i32 [ 0, %.preheader189 ], [ %i.sm, %bb.dm ] ; 64 uses
  %.083204 = phi i32 [ 0, %.preheader189 ], [ %i.sl, %bb.dm ]
  %.084203 = phi i32 [ %i.es, %.preheader189 ], [ %i.rw, %bb.dm ] ; 2 uses
  %i.ex = lshr i32 %.082205, 1                    ; 16 uses
  %i.ey = shl nuw nsw i32 %.082205, 2             ; 16 uses
  %i.ez = shl nuw nsw i32 %.082205, 1
  %i.fa = add nuw nsw i32 %i.ez, 2                ; 4 uses
  br i1 %.not8.i, label %_ZN6LibRaw5COLOREii.exit, label %_ZN6LibRaw3FCFEii.exit.i

bb.bm:                                            ; preds = %bb.dm
  %i.fb = icmp ne i32 %i.sl, 0
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
  %i.hx = shl i32 %.082205, 2
  %2 = add i32 %i.hx, 6
  %i.hy = lshr i32 %i.eo, %2
  %i.hz = and i32 %i.hy, 3
  %i.ia = icmp eq i32 %i.hw, %i.hz
  %i.ib = zext i1 %i.ia to i32
  %i.ic = add nsw i32 %i.go, %i.ib
  %i.id = lshr i32 %i.eo, %i.ht
  %i.ie = and i32 %i.id, 3
  %i.if = icmp eq i32 %i.hw, %i.ie
  %i.ig = zext i1 %i.if to i32
  %i.ih = add nsw i32 %i.ic, %i.ig
  br i1 %.not8.i, label %_ZN6LibRaw5COLOREii.exit.2, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ii = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i.2 = icmp eq i32 %i.ii, 0
  br i1 %.not.i.i.2, label %bb.by, label %_ZN6LibRaw3FCFEii.exit.i.2

bb.by:                                            ; preds = %bb.bx
  br label %_ZN6LibRaw3FCFEii.exit.i.2

_ZN6LibRaw3FCFEii.exit.i.2:                       ; preds = %bb.by, %bb.bx
  %i.ij = phi i32 [ -2, %bb.by ], [ -3, %bb.bx ]
  %.082205.sink.2 = phi i32 [ %.082205, %bb.by ], [ %i.ex, %bb.bx ]
  %.sink.i.i.2 = phi i32 [ 2, %bb.by ], [ %.082205, %bb.bx ]
  %.sink11.i.i.2 = phi i32 [ %.082205, %bb.by ], [ 2, %bb.bx ]
  %i.ik = add nsw i32 %.082205.sink.2, %i.ij
  %i.il = add nsw i32 %i.ik, %i.ew
  %i.im = add nuw nsw i32 %.sink.i.i.2, 1
  %i.in = lshr i32 %i.im, 1
  %i.io = add nuw nsw i32 %i.in, %.sink11.i.i.2
  %i.ip = shl i32 %i.il, 1
  %i.iq = and i32 %i.ip, 14
  %i.ir = and i32 %i.io, 1
  %i.is = or disjoint i32 %i.ir, %i.iq
  %i.it = shl nuw nsw i32 %i.is, 1
  br label %_ZN6LibRaw5COLOREii.exit.2

_ZN6LibRaw5COLOREii.exit.2:                       ; preds = %bb.bw, %_ZN6LibRaw3FCFEii.exit.i.2
  %.pn.2 = phi i32 [ %i.it, %_ZN6LibRaw3FCFEii.exit.i.2 ], [ %i.ey, %bb.bw ]
  %.0.i.in.2 = lshr i32 %i.eo, %.pn.2
  %.0.i.2 = and i32 %.0.i.in.2, 3
  %.not153.2 = icmp slt i32 %.0.i.2, %i.hs
  br i1 %.not153.2, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.2
  %i.iu = load i16, ptr %i.bl, align 2, !tbaa !106 ; 2 uses
  %.not8.i174.2 = icmp eq i16 %i.iu, 0
  br i1 %.not8.i174.2, label %_ZN6LibRaw5COLOREii.exit182.2, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iv = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i175.2 = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i175.2, label %bb.cb, label %_ZN6LibRaw3FCFEii.exit.i176.2

bb.cb:                                            ; preds = %bb.ca
  br label %_ZN6LibRaw3FCFEii.exit.i176.2

_ZN6LibRaw3FCFEii.exit.i176.2:                    ; preds = %bb.cb, %bb.ca
  %i.iw = phi i32 [ -2, %bb.cb ], [ -3, %bb.ca ]
  %.082205.sink252.2 = phi i32 [ %.082205, %bb.cb ], [ %i.ex, %bb.ca ]
  %.sink.i.i178.2 = phi i32 [ 2, %bb.cb ], [ %.082205, %bb.ca ]
  %.sink11.i.i179.2 = phi i32 [ %.082205, %bb.cb ], [ 2, %bb.ca ]
  %i.ix = add nsw i32 %.082205.sink252.2, %i.iw
  %i.iy = zext i16 %i.iu to i32
  %i.iz = add nsw i32 %i.ix, %i.iy
  %i.ja = add nuw nsw i32 %.sink.i.i178.2, 1
  %i.jb = lshr i32 %i.ja, 1
  %i.jc = add nuw nsw i32 %i.jb, %.sink11.i.i179.2
  %i.jd = shl i32 %i.iz, 1
  %i.je = and i32 %i.jd, 14
  %i.jf = and i32 %i.jc, 1
  %i.jg = or disjoint i32 %i.jf, %i.je
  %i.jh = shl nuw nsw i32 %i.jg, 1
  br label %_ZN6LibRaw5COLOREii.exit182.2

_ZN6LibRaw5COLOREii.exit182.2:                    ; preds = %bb.bz, %_ZN6LibRaw3FCFEii.exit.i176.2
  %.pn249.2 = phi i32 [ %i.jh, %_ZN6LibRaw3FCFEii.exit.i176.2 ], [ %i.ey, %bb.bz ]
  %.0.i180.in.2 = lshr i32 %i.eo, %.pn249.2
  %.0.i180.2 = and i32 %.0.i180.in.2, 3
  %i.ji = add nuw nsw i32 %.0.i180.2, 1
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN6LibRaw5COLOREii.exit182.2, %_ZN6LibRaw5COLOREii.exit.2
  %i.jj = phi i32 [ %i.ji, %_ZN6LibRaw5COLOREii.exit182.2 ], [ %i.hs, %_ZN6LibRaw5COLOREii.exit.2 ] ; 2 uses
  %i.jk = shl nuw nsw i32 %.082205, 2             ; 2 uses
  %i.jl = lshr i32 %i.eo, %i.jk
  %i.jm = and i32 %i.jl, 3                        ; 2 uses
  %i.jn = shl nuw nsw i32 %i.fa, 1
  %i.jo = lshr i32 %i.eo, %i.jn
  %i.jp = and i32 %i.jo, 3
  %i.jq = icmp eq i32 %i.jm, %i.jp
  %i.jr = zext i1 %i.jq to i32
  %i.js = add nsw i32 %i.ih, %i.jr
  %i.jt = or disjoint i32 %i.jk, 2
  %i.ju = lshr i32 %i.eo, %i.jt
  %i.jv = and i32 %i.ju, 3
  %i.jw = icmp eq i32 %i.jm, %i.jv
  %i.jx = zext i1 %i.jw to i32
  %i.jy = add nsw i32 %i.js, %i.jx
  br i1 %.not8.i, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jz = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i.3 = icmp eq i32 %i.jz, 0
  br i1 %.not.i.i.3, label %bb.ce, label %_ZN6LibRaw3FCFEii.exit.i.3

bb.ce:                                            ; preds = %bb.cd
  br label %_ZN6LibRaw3FCFEii.exit.i.3

_ZN6LibRaw3FCFEii.exit.i.3:                       ; preds = %bb.ce, %bb.cd
  %i.ka = phi i32 [ -2, %bb.ce ], [ -4, %bb.cd ]
  %.082205.sink.3 = phi i32 [ %.082205, %bb.ce ], [ %i.ex, %bb.cd ]
  %.sink.i.i.3 = phi i32 [ 3, %bb.ce ], [ %.082205, %bb.cd ]
  %.sink11.i.i.3 = phi i32 [ %.082205, %bb.ce ], [ 3, %bb.cd ]
  %i.kb = add nsw i32 %.082205.sink.3, %i.ka
  %i.kc = add nsw i32 %i.kb, %i.ew
  %i.kd = add nuw nsw i32 %.sink.i.i.3, 1
  %i.ke = lshr i32 %i.kd, 1
  %i.kf = add nuw nsw i32 %i.ke, %.sink11.i.i.3
  %i.kg = shl i32 %i.kc, 1
  %i.kh = and i32 %i.kg, 14
  %i.ki = and i32 %i.kf, 1
  %i.kj = or disjoint i32 %i.ki, %i.kh
  %i.kk = shl nuw nsw i32 %i.kj, 1
  br label %_ZN6LibRaw5COLOREii.exit.3

bb.cf:                                            ; preds = %bb.cc
  %i.kl = or disjoint i32 %i.ey, 2
  br label %_ZN6LibRaw5COLOREii.exit.3

_ZN6LibRaw5COLOREii.exit.3:                       ; preds = %bb.cf, %_ZN6LibRaw3FCFEii.exit.i.3
  %.pn.3 = phi i32 [ %i.kl, %bb.cf ], [ %i.kk, %_ZN6LibRaw3FCFEii.exit.i.3 ]
  %.0.i.in.3 = lshr i32 %i.eo, %.pn.3
  %.0.i.3 = and i32 %.0.i.in.3, 3
  %.not153.3 = icmp slt i32 %.0.i.3, %i.jj
  br i1 %.not153.3, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.3
  %i.km = load i16, ptr %i.bl, align 2, !tbaa !106 ; 2 uses
  %.not8.i174.3 = icmp eq i16 %i.km, 0
  br i1 %.not8.i174.3, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kn = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i175.3 = icmp eq i32 %i.kn, 0
  br i1 %.not.i.i175.3, label %bb.ci, label %_ZN6LibRaw3FCFEii.exit.i176.3

bb.ci:                                            ; preds = %bb.ch
  br label %_ZN6LibRaw3FCFEii.exit.i176.3

_ZN6LibRaw3FCFEii.exit.i176.3:                    ; preds = %bb.ci, %bb.ch
  %i.ko = phi i32 [ -2, %bb.ci ], [ -4, %bb.ch ]
  %.082205.sink252.3 = phi i32 [ %.082205, %bb.ci ], [ %i.ex, %bb.ch ]
  %.sink.i.i178.3 = phi i32 [ 3, %bb.ci ], [ %.082205, %bb.ch ]
  %.sink11.i.i179.3 = phi i32 [ %.082205, %bb.ci ], [ 3, %bb.ch ]
  %i.kp = add nsw i32 %.082205.sink252.3, %i.ko
  %i.kq = zext i16 %i.km to i32
  %i.kr = add nsw i32 %i.kp, %i.kq
  %i.ks = add nuw nsw i32 %.sink.i.i178.3, 1
  %i.kt = lshr i32 %i.ks, 1
  %i.ku = add nuw nsw i32 %i.kt, %.sink11.i.i179.3
  %i.kv = shl i32 %i.kr, 1
  %i.kw = and i32 %i.kv, 14
  %i.kx = and i32 %i.ku, 1
  %i.ky = or disjoint i32 %i.kx, %i.kw
  %i.kz = shl nuw nsw i32 %i.ky, 1
  br label %_ZN6LibRaw5COLOREii.exit182.3

bb.cj:                                            ; preds = %bb.cg
  %i.la = or disjoint i32 %i.ey, 2
  br label %_ZN6LibRaw5COLOREii.exit182.3

_ZN6LibRaw5COLOREii.exit182.3:                    ; preds = %bb.cj, %_ZN6LibRaw3FCFEii.exit.i176.3
  %.pn249.3 = phi i32 [ %i.la, %bb.cj ], [ %i.kz, %_ZN6LibRaw3FCFEii.exit.i176.3 ]
  %.0.i180.in.3 = lshr i32 %i.eo, %.pn249.3
  %.0.i180.3 = and i32 %.0.i180.in.3, 3
  %i.lb = add nuw nsw i32 %.0.i180.3, 1
  br label %bb.ck

bb.ck:                                            ; preds = %_ZN6LibRaw5COLOREii.exit182.3, %_ZN6LibRaw5COLOREii.exit.3
  %i.lc = phi i32 [ %i.lb, %_ZN6LibRaw5COLOREii.exit182.3 ], [ %i.jj, %_ZN6LibRaw5COLOREii.exit.3 ] ; 2 uses
  %i.ld = shl i32 %.082205, 2                     ; 2 uses
  %i.le = or disjoint i32 %i.ld, 2
  %i.lf = lshr i32 %i.eo, %i.le
  %i.lg = and i32 %i.lf, 3                        ; 2 uses
  %i.lh = shl i32 %.082205, 2
  %3 = add i32 %i.lh, 6
  %i.li = lshr i32 %i.eo, %3
  %i.lj = and i32 %i.li, 3
  %i.lk = icmp eq i32 %i.lg, %i.lj
  %i.ll = zext i1 %i.lk to i32
  %i.lm = add nsw i32 %i.jy, %i.ll
  %i.ln = lshr i32 %i.eo, %i.ld
  %i.lo = and i32 %i.ln, 3
  %i.lp = icmp eq i32 %i.lg, %i.lo
  %i.lq = zext i1 %i.lp to i32
  %i.lr = add nsw i32 %i.lm, %i.lq
  br i1 %.not8.i, label %_ZN6LibRaw5COLOREii.exit.4, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ls = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i.4 = icmp eq i32 %i.ls, 0
  br i1 %.not.i.i.4, label %bb.cm, label %_ZN6LibRaw3FCFEii.exit.i.4

bb.cm:                                            ; preds = %bb.cl
  br label %_ZN6LibRaw3FCFEii.exit.i.4

_ZN6LibRaw3FCFEii.exit.i.4:                       ; preds = %bb.cm, %bb.cl
  %i.lt = phi i32 [ -3, %bb.cm ], [ -5, %bb.cl ]
  %.082205.sink.4 = phi i32 [ %.082205, %bb.cm ], [ %i.ex, %bb.cl ]
  %.sink.i.i.4 = phi i32 [ 4, %bb.cm ], [ %.082205, %bb.cl ]
  %.sink11.i.i.4 = phi i32 [ %.082205, %bb.cm ], [ 4, %bb.cl ]
  %i.lu = add nsw i32 %.082205.sink.4, %i.lt
  %i.lv = add nsw i32 %i.lu, %i.ew
  %i.lw = add nuw nsw i32 %.sink.i.i.4, 1
  %i.lx = lshr i32 %i.lw, 1
  %i.ly = add nuw nsw i32 %i.lx, %.sink11.i.i.4
  %i.lz = shl i32 %i.lv, 1
  %i.ma = and i32 %i.lz, 14
  %i.mb = and i32 %i.ly, 1
  %i.mc = or disjoint i32 %i.mb, %i.ma
  %i.md = shl nuw nsw i32 %i.mc, 1
  br label %_ZN6LibRaw5COLOREii.exit.4

_ZN6LibRaw5COLOREii.exit.4:                       ; preds = %bb.ck, %_ZN6LibRaw3FCFEii.exit.i.4
  %.pn.4 = phi i32 [ %i.md, %_ZN6LibRaw3FCFEii.exit.i.4 ], [ %i.ey, %bb.ck ]
  %.0.i.in.4 = lshr i32 %i.eo, %.pn.4
  %.0.i.4 = and i32 %.0.i.in.4, 3
  %.not153.4 = icmp slt i32 %.0.i.4, %i.lc
  br i1 %.not153.4, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.4
  %i.me = load i16, ptr %i.bl, align 2, !tbaa !106 ; 2 uses
  %.not8.i174.4 = icmp eq i16 %i.me, 0
  br i1 %.not8.i174.4, label %_ZN6LibRaw5COLOREii.exit182.4, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mf = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i175.4 = icmp eq i32 %i.mf, 0
  br i1 %.not.i.i175.4, label %bb.cp, label %_ZN6LibRaw3FCFEii.exit.i176.4

bb.cp:                                            ; preds = %bb.co
  br label %_ZN6LibRaw3FCFEii.exit.i176.4

_ZN6LibRaw3FCFEii.exit.i176.4:                    ; preds = %bb.cp, %bb.co
  %i.mg = phi i32 [ -3, %bb.cp ], [ -5, %bb.co ]
  %.082205.sink252.4 = phi i32 [ %.082205, %bb.cp ], [ %i.ex, %bb.co ]
  %.sink.i.i178.4 = phi i32 [ 4, %bb.cp ], [ %.082205, %bb.co ]
  %.sink11.i.i179.4 = phi i32 [ %.082205, %bb.cp ], [ 4, %bb.co ]
  %i.mh = add nsw i32 %.082205.sink252.4, %i.mg
  %i.mi = zext i16 %i.me to i32
  %i.mj = add nsw i32 %i.mh, %i.mi
  %i.mk = add nuw nsw i32 %.sink.i.i178.4, 1
  %i.ml = lshr i32 %i.mk, 1
  %i.mm = add nuw nsw i32 %i.ml, %.sink11.i.i179.4
  %i.mn = shl i32 %i.mj, 1
  %i.mo = and i32 %i.mn, 14
  %i.mp = and i32 %i.mm, 1
  %i.mq = or disjoint i32 %i.mp, %i.mo
  %i.mr = shl nuw nsw i32 %i.mq, 1
  br label %_ZN6LibRaw5COLOREii.exit182.4

_ZN6LibRaw5COLOREii.exit182.4:                    ; preds = %bb.cn, %_ZN6LibRaw3FCFEii.exit.i176.4
  %.pn249.4 = phi i32 [ %i.mr, %_ZN6LibRaw3FCFEii.exit.i176.4 ], [ %i.ey, %bb.cn ]
  %.0.i180.in.4 = lshr i32 %i.eo, %.pn249.4
  %.0.i180.4 = and i32 %.0.i180.in.4, 3
  %i.ms = add nuw nsw i32 %.0.i180.4, 1
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN6LibRaw5COLOREii.exit182.4, %_ZN6LibRaw5COLOREii.exit.4
  %i.mt = phi i32 [ %i.ms, %_ZN6LibRaw5COLOREii.exit182.4 ], [ %i.lc, %_ZN6LibRaw5COLOREii.exit.4 ] ; 2 uses
  %i.mu = shl nuw nsw i32 %.082205, 2             ; 2 uses
  %i.mv = lshr i32 %i.eo, %i.mu
  %i.mw = and i32 %i.mv, 3                        ; 2 uses
  %i.mx = shl nuw nsw i32 %i.fa, 1
  %i.my = lshr i32 %i.eo, %i.mx
  %i.mz = and i32 %i.my, 3
  %i.na = icmp eq i32 %i.mw, %i.mz
  %i.nb = zext i1 %i.na to i32
  %i.nc = add nsw i32 %i.lr, %i.nb
  %i.nd = or disjoint i32 %i.mu, 2
  %i.ne = lshr i32 %i.eo, %i.nd
  %i.nf = and i32 %i.ne, 3
  %i.ng = icmp eq i32 %i.mw, %i.nf
  %i.nh = zext i1 %i.ng to i32
  %i.ni = add nsw i32 %i.nc, %i.nh
  br i1 %.not8.i, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nj = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i.5 = icmp eq i32 %i.nj, 0
  br i1 %.not.i.i.5, label %bb.cs, label %_ZN6LibRaw3FCFEii.exit.i.5

bb.cs:                                            ; preds = %bb.cr
  br label %_ZN6LibRaw3FCFEii.exit.i.5

_ZN6LibRaw3FCFEii.exit.i.5:                       ; preds = %bb.cs, %bb.cr
  %i.nk = phi i32 [ -3, %bb.cs ], [ -6, %bb.cr ]
  %.082205.sink.5 = phi i32 [ %.082205, %bb.cs ], [ %i.ex, %bb.cr ]
  %.sink.i.i.5 = phi i32 [ 5, %bb.cs ], [ %.082205, %bb.cr ]
  %.sink11.i.i.5 = phi i32 [ %.082205, %bb.cs ], [ 5, %bb.cr ]
  %i.nl = add nsw i32 %.082205.sink.5, %i.nk
  %i.nm = add nsw i32 %i.nl, %i.ew
  %i.nn = add nuw nsw i32 %.sink.i.i.5, 1
  %i.no = lshr i32 %i.nn, 1
  %i.np = add nuw nsw i32 %i.no, %.sink11.i.i.5
  %i.nq = shl i32 %i.nm, 1
  %i.nr = and i32 %i.nq, 14
  %i.ns = and i32 %i.np, 1
  %i.nt = or disjoint i32 %i.ns, %i.nr
  %i.nu = shl nuw nsw i32 %i.nt, 1
  br label %_ZN6LibRaw5COLOREii.exit.5

bb.ct:                                            ; preds = %bb.cq
  %i.nv = or disjoint i32 %i.ey, 2
  br label %_ZN6LibRaw5COLOREii.exit.5

_ZN6LibRaw5COLOREii.exit.5:                       ; preds = %bb.ct, %_ZN6LibRaw3FCFEii.exit.i.5
  %.pn.5 = phi i32 [ %i.nv, %bb.ct ], [ %i.nu, %_ZN6LibRaw3FCFEii.exit.i.5 ]
  %.0.i.in.5 = lshr i32 %i.eo, %.pn.5
  %.0.i.5 = and i32 %.0.i.in.5, 3
  %.not153.5 = icmp slt i32 %.0.i.5, %i.mt
  br i1 %.not153.5, label %bb.cy, label %bb.cu

bb.cu:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.5
  %i.nw = load i16, ptr %i.bl, align 2, !tbaa !106 ; 2 uses
  %.not8.i174.5 = icmp eq i16 %i.nw, 0
  br i1 %.not8.i174.5, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.nx = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i175.5 = icmp eq i32 %i.nx, 0
  br i1 %.not.i.i175.5, label %bb.cw, label %_ZN6LibRaw3FCFEii.exit.i176.5

bb.cw:                                            ; preds = %bb.cv
  br label %_ZN6LibRaw3FCFEii.exit.i176.5

_ZN6LibRaw3FCFEii.exit.i176.5:                    ; preds = %bb.cw, %bb.cv
  %i.ny = phi i32 [ -3, %bb.cw ], [ -6, %bb.cv ]
  %.082205.sink252.5 = phi i32 [ %.082205, %bb.cw ], [ %i.ex, %bb.cv ]
  %.sink.i.i178.5 = phi i32 [ 5, %bb.cw ], [ %.082205, %bb.cv ]
  %.sink11.i.i179.5 = phi i32 [ %.082205, %bb.cw ], [ 5, %bb.cv ]
  %i.nz = add nsw i32 %.082205.sink252.5, %i.ny
  %i.oa = zext i16 %i.nw to i32
  %i.ob = add nsw i32 %i.nz, %i.oa
  %i.oc = add nuw nsw i32 %.sink.i.i178.5, 1
  %i.od = lshr i32 %i.oc, 1
  %i.oe = add nuw nsw i32 %i.od, %.sink11.i.i179.5
  %i.of = shl i32 %i.ob, 1
  %i.og = and i32 %i.of, 14
  %i.oh = and i32 %i.oe, 1
  %i.oi = or disjoint i32 %i.oh, %i.og
  %i.oj = shl nuw nsw i32 %i.oi, 1
  br label %_ZN6LibRaw5COLOREii.exit182.5

bb.cx:                                            ; preds = %bb.cu
  %i.ok = or disjoint i32 %i.ey, 2
  br label %_ZN6LibRaw5COLOREii.exit182.5

_ZN6LibRaw5COLOREii.exit182.5:                    ; preds = %bb.cx, %_ZN6LibRaw3FCFEii.exit.i176.5
  %.pn249.5 = phi i32 [ %i.ok, %bb.cx ], [ %i.oj, %_ZN6LibRaw3FCFEii.exit.i176.5 ]
  %.0.i180.in.5 = lshr i32 %i.eo, %.pn249.5
  %.0.i180.5 = and i32 %.0.i180.in.5, 3
  %i.ol = add nuw nsw i32 %.0.i180.5, 1
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN6LibRaw5COLOREii.exit182.5, %_ZN6LibRaw5COLOREii.exit.5
  %i.om = phi i32 [ %i.ol, %_ZN6LibRaw5COLOREii.exit182.5 ], [ %i.mt, %_ZN6LibRaw5COLOREii.exit.5 ] ; 2 uses
  %i.on = shl i32 %.082205, 2                     ; 2 uses
  %i.oo = or disjoint i32 %i.on, 2
  %i.op = lshr i32 %i.eo, %i.oo
  %i.oq = and i32 %i.op, 3                        ; 2 uses
  %i.or = shl i32 %.082205, 2
  %4 = add i32 %i.or, 6
  %i.os = lshr i32 %i.eo, %4
  %i.ot = and i32 %i.os, 3
  %i.ou = icmp eq i32 %i.oq, %i.ot
  %i.ov = zext i1 %i.ou to i32
  %i.ow = add nsw i32 %i.ni, %i.ov
  %i.ox = lshr i32 %i.eo, %i.on
  %i.oy = and i32 %i.ox, 3
  %i.oz = icmp eq i32 %i.oq, %i.oy
  %i.pa = zext i1 %i.oz to i32
  %i.pb = add nsw i32 %i.ow, %i.pa
  br i1 %.not8.i, label %_ZN6LibRaw5COLOREii.exit.6, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pc = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i.6 = icmp eq i32 %i.pc, 0
  br i1 %.not.i.i.6, label %bb.da, label %_ZN6LibRaw3FCFEii.exit.i.6

bb.da:                                            ; preds = %bb.cz
  br label %_ZN6LibRaw3FCFEii.exit.i.6

_ZN6LibRaw3FCFEii.exit.i.6:                       ; preds = %bb.da, %bb.cz
  %i.pd = phi i32 [ -4, %bb.da ], [ -7, %bb.cz ]
  %.082205.sink.6 = phi i32 [ %.082205, %bb.da ], [ %i.ex, %bb.cz ]
  %.sink.i.i.6 = phi i32 [ 6, %bb.da ], [ %.082205, %bb.cz ]
  %.sink11.i.i.6 = phi i32 [ %.082205, %bb.da ], [ 6, %bb.cz ]
  %i.pe = add nsw i32 %.082205.sink.6, %i.pd
  %i.pf = add nsw i32 %i.pe, %i.ew
  %i.pg = add nuw nsw i32 %.sink.i.i.6, 1
  %i.ph = lshr i32 %i.pg, 1
  %i.pi = add nuw nsw i32 %i.ph, %.sink11.i.i.6
  %i.pj = shl i32 %i.pf, 1
  %i.pk = and i32 %i.pj, 14
  %i.pl = and i32 %i.pi, 1
  %i.pm = or disjoint i32 %i.pl, %i.pk
  %i.pn = shl nuw nsw i32 %i.pm, 1
  br label %_ZN6LibRaw5COLOREii.exit.6

_ZN6LibRaw5COLOREii.exit.6:                       ; preds = %bb.cy, %_ZN6LibRaw3FCFEii.exit.i.6
  %.pn.6 = phi i32 [ %i.pn, %_ZN6LibRaw3FCFEii.exit.i.6 ], [ %i.ey, %bb.cy ]
  %.0.i.in.6 = lshr i32 %i.eo, %.pn.6
  %.0.i.6 = and i32 %.0.i.in.6, 3
  %.not153.6 = icmp slt i32 %.0.i.6, %i.om
  br i1 %.not153.6, label %bb.de, label %bb.db

bb.db:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.6
  %i.po = load i16, ptr %i.bl, align 2, !tbaa !106 ; 2 uses
  %.not8.i174.6 = icmp eq i16 %i.po, 0
  br i1 %.not8.i174.6, label %_ZN6LibRaw5COLOREii.exit182.6, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.pp = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i175.6 = icmp eq i32 %i.pp, 0
  br i1 %.not.i.i175.6, label %bb.dd, label %_ZN6LibRaw3FCFEii.exit.i176.6

bb.dd:                                            ; preds = %bb.dc
  br label %_ZN6LibRaw3FCFEii.exit.i176.6

_ZN6LibRaw3FCFEii.exit.i176.6:                    ; preds = %bb.dd, %bb.dc
  %i.pq = phi i32 [ -4, %bb.dd ], [ -7, %bb.dc ]
  %.082205.sink252.6 = phi i32 [ %.082205, %bb.dd ], [ %i.ex, %bb.dc ]
  %.sink.i.i178.6 = phi i32 [ 6, %bb.dd ], [ %.082205, %bb.dc ]
  %.sink11.i.i179.6 = phi i32 [ %.082205, %bb.dd ], [ 6, %bb.dc ]
  %i.pr = add nsw i32 %.082205.sink252.6, %i.pq
  %i.ps = zext i16 %i.po to i32
  %i.pt = add nsw i32 %i.pr, %i.ps
  %i.pu = add nuw nsw i32 %.sink.i.i178.6, 1
  %i.pv = lshr i32 %i.pu, 1
  %i.pw = add nuw nsw i32 %i.pv, %.sink11.i.i179.6
  %i.px = shl i32 %i.pt, 1
  %i.py = and i32 %i.px, 14
  %i.pz = and i32 %i.pw, 1
  %i.qa = or disjoint i32 %i.pz, %i.py
  %i.qb = shl nuw nsw i32 %i.qa, 1
  br label %_ZN6LibRaw5COLOREii.exit182.6

_ZN6LibRaw5COLOREii.exit182.6:                    ; preds = %bb.db, %_ZN6LibRaw3FCFEii.exit.i176.6
  %.pn249.6 = phi i32 [ %i.qb, %_ZN6LibRaw3FCFEii.exit.i176.6 ], [ %i.ey, %bb.db ]
  %.0.i180.in.6 = lshr i32 %i.eo, %.pn249.6
  %.0.i180.6 = and i32 %.0.i180.in.6, 3
  %i.qc = add nuw nsw i32 %.0.i180.6, 1
  br label %bb.de

bb.de:                                            ; preds = %_ZN6LibRaw5COLOREii.exit182.6, %_ZN6LibRaw5COLOREii.exit.6
  %i.qd = phi i32 [ %i.qc, %_ZN6LibRaw5COLOREii.exit182.6 ], [ %i.om, %_ZN6LibRaw5COLOREii.exit.6 ] ; 2 uses
  %i.qe = shl nuw nsw i32 %.082205, 2             ; 2 uses
  %i.qf = lshr i32 %i.eo, %i.qe
  %i.qg = and i32 %i.qf, 3                        ; 2 uses
  %i.qh = shl nuw nsw i32 %i.fa, 1
  %i.qi = lshr i32 %i.eo, %i.qh
  %i.qj = and i32 %i.qi, 3
  %i.qk = icmp eq i32 %i.qg, %i.qj
  %i.ql = zext i1 %i.qk to i32
  %i.qm = add nsw i32 %i.pb, %i.ql
  %i.qn = or disjoint i32 %i.qe, 2
  %i.qo = lshr i32 %i.eo, %i.qn
  %i.qp = and i32 %i.qo, 3
  %i.qq = icmp eq i32 %i.qg, %i.qp
  %i.qr = zext i1 %i.qq to i32
  %i.qs = add nsw i32 %i.qm, %i.qr
  br i1 %.not8.i, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.qt = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i.7 = icmp eq i32 %i.qt, 0
  br i1 %.not.i.i.7, label %bb.dg, label %_ZN6LibRaw3FCFEii.exit.i.7

bb.dg:                                            ; preds = %bb.df
  br label %_ZN6LibRaw3FCFEii.exit.i.7

_ZN6LibRaw3FCFEii.exit.i.7:                       ; preds = %bb.dg, %bb.df
  %i.qu = phi i32 [ -4, %bb.dg ], [ -8, %bb.df ]
  %.082205.sink.7 = phi i32 [ %.082205, %bb.dg ], [ %i.ex, %bb.df ]
  %.sink.i.i.7 = phi i32 [ 7, %bb.dg ], [ %.082205, %bb.df ]
  %.sink11.i.i.7 = phi i32 [ %.082205, %bb.dg ], [ 7, %bb.df ]
  %i.qv = add nsw i32 %.082205.sink.7, %i.qu
  %i.qw = add nsw i32 %i.qv, %i.ew
  %i.qx = add nuw nsw i32 %.sink.i.i.7, 1
  %i.qy = lshr i32 %i.qx, 1
  %i.qz = add nuw nsw i32 %i.qy, %.sink11.i.i.7
  %i.ra = shl i32 %i.qw, 1
  %i.rb = and i32 %i.ra, 14
  %i.rc = and i32 %i.qz, 1
  %i.rd = or disjoint i32 %i.rc, %i.rb
  %i.re = shl nuw nsw i32 %i.rd, 1
  br label %_ZN6LibRaw5COLOREii.exit.7

bb.dh:                                            ; preds = %bb.de
  %i.rf = or disjoint i32 %i.ey, 2
  br label %_ZN6LibRaw5COLOREii.exit.7

_ZN6LibRaw5COLOREii.exit.7:                       ; preds = %bb.dh, %_ZN6LibRaw3FCFEii.exit.i.7
  %.pn.7 = phi i32 [ %i.rf, %bb.dh ], [ %i.re, %_ZN6LibRaw3FCFEii.exit.i.7 ]
  %.0.i.in.7 = lshr i32 %i.eo, %.pn.7
  %.0.i.7 = and i32 %.0.i.in.7, 3
  %.not153.7 = icmp slt i32 %.0.i.7, %i.qd
  br i1 %.not153.7, label %bb.dm, label %bb.di

bb.di:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.7
  %i.rg = load i16, ptr %i.bl, align 2, !tbaa !106 ; 2 uses
  %.not8.i174.7 = icmp eq i16 %i.rg, 0
  br i1 %.not8.i174.7, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.rh = load i32, ptr %i.eu, align 4, !tbaa !133
  %.not.i.i175.7 = icmp eq i32 %i.rh, 0
  br i1 %.not.i.i175.7, label %bb.dk, label %_ZN6LibRaw3FCFEii.exit.i176.7

bb.dk:                                            ; preds = %bb.dj
  br label %_ZN6LibRaw3FCFEii.exit.i176.7

_ZN6LibRaw3FCFEii.exit.i176.7:                    ; preds = %bb.dk, %bb.dj
  %i.ri = phi i32 [ -4, %bb.dk ], [ -8, %bb.dj ]
  %.082205.sink252.7 = phi i32 [ %.082205, %bb.dk ], [ %i.ex, %bb.dj ]
  %.sink.i.i178.7 = phi i32 [ 7, %bb.dk ], [ %.082205, %bb.dj ]
  %.sink11.i.i179.7 = phi i32 [ %.082205, %bb.dk ], [ 7, %bb.dj ]
  %i.rj = add nsw i32 %.082205.sink252.7, %i.ri
  %i.rk = zext i16 %i.rg to i32
  %i.rl = add nsw i32 %i.rj, %i.rk
  %i.rm = add nuw nsw i32 %.sink.i.i178.7, 1
  %i.rn = lshr i32 %i.rm, 1
  %i.ro = add nuw nsw i32 %i.rn, %.sink11.i.i179.7
  %i.rp = shl i32 %i.rl, 1
  %i.rq = and i32 %i.rp, 14
  %i.rr = and i32 %i.ro, 1
  %i.rs = or disjoint i32 %i.rr, %i.rq
  %i.rt = shl nuw nsw i32 %i.rs, 1
  br label %_ZN6LibRaw5COLOREii.exit182.7

bb.dl:                                            ; preds = %bb.di
  %i.ru = or disjoint i32 %i.ey, 2
  br label %_ZN6LibRaw5COLOREii.exit182.7

_ZN6LibRaw5COLOREii.exit182.7:                    ; preds = %bb.dl, %_ZN6LibRaw3FCFEii.exit.i176.7
  %.pn249.7 = phi i32 [ %i.ru, %bb.dl ], [ %i.rt, %_ZN6LibRaw3FCFEii.exit.i176.7 ]
  %.0.i180.in.7 = lshr i32 %i.eo, %.pn249.7
  %.0.i180.7 = and i32 %.0.i180.in.7, 3
  %i.rv = add nuw nsw i32 %.0.i180.7, 1
  br label %bb.dm

bb.dm:                                            ; preds = %_ZN6LibRaw5COLOREii.exit182.7, %_ZN6LibRaw5COLOREii.exit.7
  %i.rw = phi i32 [ %i.rv, %_ZN6LibRaw5COLOREii.exit182.7 ], [ %i.qd, %_ZN6LibRaw5COLOREii.exit.7 ] ; 2 uses
  %i.rx = shl i32 %.082205, 2                     ; 2 uses
  %i.ry = or disjoint i32 %i.rx, 2
  %i.rz = lshr i32 %i.eo, %i.ry
  %i.sa = and i32 %i.rz, 3                        ; 2 uses
  %i.sb = shl i32 %.082205, 2
  %5 = add i32 %i.sb, 6
  %i.sc = lshr i32 %i.eo, %5
  %i.sd = and i32 %i.sc, 3
  %i.se = icmp eq i32 %i.sa, %i.sd
  %i.sf = zext i1 %i.se to i32
  %i.sg = add nsw i32 %i.qs, %i.sf
  %i.sh = lshr i32 %i.eo, %i.rx
  %i.si = and i32 %i.sh, 3
  %i.sj = icmp eq i32 %i.sa, %i.si
  %i.sk = zext i1 %i.sj to i32
  %i.sl = add nsw i32 %i.sg, %i.sk                ; 2 uses
  %i.sm = add nuw nsw i32 %.082205, 1             ; 2 uses
  %exitcond213.not = icmp eq i32 %i.sm, 4
  br i1 %exitcond213.not, label %bb.bm, label %.preheader, !llvm.loop !14

bb.dn:                                            ; preds = %bb.bm, %bb.bl
  %.286 = phi i32 [ %i.rw, %bb.bm ], [ %i.es, %bb.bl ] ; 2 uses
  %.3 = phi i1 [ %i.fb, %bb.bm ], [ false, %bb.bl ]
  %.not188 = icmp slt i32 %i.ee, 1
  br i1 %.not188, label %bb.dr, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.sn = load i32, ptr %i.er, align 4, !tbaa !100
  %i.so = icmp eq i32 %i.sn, 3
  %i.sp = icmp eq i32 %.286, 3
  %or.cond7 = select i1 %i.so, i1 %i.sp, i1 false
  br i1 %or.cond7, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %bb.do
  %i.sq = icmp ugt i32 %i.eo, 1000
  br i1 %i.sq, label %bb.dq, label %.thread

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
  %i.sr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #8
  %i.ss = icmp eq i32 %.392, %i.sr
  br i1 %i.ss, label %bb.fq, label %bb.fs

bb.dr:                                            ; preds = %._crit_edge218, %bb.do, %bb.dn
  %.pr = phi i32 [ %.pr.pre, %._crit_edge218 ], [ %i.eo, %bb.do ], [ %i.eo, %bb.dn ] ; 3 uses
  %i.st = icmp ugt i32 %.pr, 1000
  br i1 %i.st, label %bb.ds, label %.thread

bb.ds:                                            ; preds = %bb.dr
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 768360
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !134 ; 2 uses
  %.not150 = icmp eq ptr %i.sv, null
  br i1 %.not150, label %.thread183, label %.invoke

.invoke:                                          ; preds = %bb.dt, %bb.ds
  %i.sw = phi ptr [ %i.sv, %bb.ds ], [ %i.ta, %bb.dt ]
  invoke void %i.sw(ptr noundef nonnull %0)
          to label %bb.ej unwind label %.loopexit.split-lp

.thread:                                          ; preds = %bb.dp, %bb.dr
  %i.sx = phi i32 [ %.pr, %bb.dr ], [ %i.eo, %bb.dp ] ; 2 uses
  %i.sy = icmp eq i32 %i.sx, 9
  br i1 %i.sy, label %bb.dt, label %.thread183

bb.dt:                                            ; preds = %.thread
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 768368
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !135 ; 2 uses
  %.not151 = icmp eq ptr %i.ta, null
  br i1 %.not151, label %.thread183, label %.invoke

.thread183:                                       ; preds = %bb.ds, %bb.dt, %.thread
  %i.tb = phi i1 [ false, %.thread ], [ true, %bb.dt ], [ false, %bb.ds ]
  %i.tc = phi i32 [ %i.sx, %.thread ], [ 9, %bb.dt ], [ %.pr, %bb.ds ] ; 2 uses
  %.not186 = phi i1 [ true, %.thread ], [ true, %bb.dt ], [ false, %bb.ds ]
  switch i32 %spec.select, label %bb.dv [
    i32 0, label %bb.du
    i32 1, label %bb.dx
  ]

bb.du:                                            ; preds = %.thread183
  invoke void @_ZN6LibRaw15lin_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ej unwind label %.loopexit.split-lp

bb.dv:                                            ; preds = %.thread183
  %i.td = load i32, ptr %i.er, align 4, !tbaa !100
  %i.te = icmp sgt i32 %i.td, 3
  %i.tf = icmp sgt i32 %.286, 3
  %or.cond9 = select i1 %i.te, i1 true, i1 %i.tf
  %or.cond11 = select i1 %or.cond9, i1 true, i1 %.3
  br i1 %or.cond11, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.not152 = icmp ne i32 %i.tc, 9
  %i.tg = icmp ult i32 %i.tc, 1001
  %or.cond171 = and i1 %.not152, %i.tg
  br i1 %or.cond171, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw, %.thread183, %bb.dv
  invoke void @_ZN6LibRaw15vng_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ej unwind label %.loopexit.split-lp

bb.dy:                                            ; preds = %bb.dw
  %i.th = icmp ne i32 %spec.select, 2
  %brmerge = or i1 %i.th, %.not186
  br i1 %brmerge, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN6LibRaw15ppg_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ej unwind label %.loopexit.split-lp

bb.ea:                                            ; preds = %bb.dy
  br i1 %i.tb, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %.inv = icmp slt i32 %spec.select, 3
  %i.ti = select i1 %.inv, i32 1, i32 3
  invoke void @_ZN6LibRaw18xtrans_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ti)
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
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 5596 ; 2 uses
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !136
  %i.tl = or i32 %i.tk, 32768
  store i32 %i.tl, ptr %i.tj, align 4, !tbaa !136
  br label %bb.ej

bb.ej:                                            ; preds = %.invoke, %bb.du, %bb.dz, %bb.ed, %bb.ef, %bb.eg, %bb.ei, %bb.ee, %bb.eb, %bb.dx
  %i.tm = load i32, ptr %i.b, align 8, !tbaa !78
  %i.tn = or i32 %i.tm, 2048
  store i32 %i.tn, ptr %i.b, align 8, !tbaa !78
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.bk, %bb.bj
  %i.to = load i32, ptr %i.av, align 8, !tbaa !137
  %.not155 = icmp eq i32 %i.to, 0
  br i1 %.not155, label %bb.en, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 3, ptr %i.tp, align 4, !tbaa !100
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.ts = load i16, ptr %i.tq, align 4, !tbaa !115
  %i.tt = zext i16 %i.ts to i32
  %i.tu = load i16, ptr %i.tr, align 2, !tbaa !116
  %i.tv = zext i16 %i.tu to i32
  %i.tw = mul nuw nsw i32 %i.tv, %i.tt
  %.not208 = icmp eq i32 %i.tw, 0
  br i1 %.not208, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.el
  %i.tx = load ptr, ptr %i.a, align 8, !tbaa !117
  br label %bb.em

bb.em:                                            ; preds = %.lr.ph, %bb.em
  %indvars.iv214 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next215, %bb.em ] ; 2 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv214 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 2 ; 2 uses
  %i.ua = load i16, ptr %i.tz, align 2, !tbaa !118
  %i.ub = zext i16 %i.ua to i32
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ty, i64 6
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !118
  %i.ue = zext i16 %i.ud to i32
  %i.uf = add nuw nsw i32 %i.ue, %i.ub
end_hunk_0
