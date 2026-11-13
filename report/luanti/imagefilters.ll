Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/imagefilters?download=true
inline.NumInlined: 370
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z21imageCleanTransparentPN5video6IImageEj:bb.a
  %i.eh = load ptr, ptr %i.h, align 8, !tbaa !20  ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !18
  %i.ek = zext i8 %i.ej to i32
  %i.el = and i32 %i.ee, 7
  %i.em = shl nuw nsw i32 1, %i.el
  %i.en = and i32 %i.em, %i.ek
  %.not46.i = icmp eq i32 %i.en, 0
  %i.eo = call i32 @llvm.usub.sat.i32(i32 %i.dz, i32 1)
  %i.ep = icmp ult i32 %i.eo, %.sroa.020.0.extract.trunc.i
  %or.cond.i = and i1 %i.ep, %.not46.i
  br i1 %or.cond.i, label %.lr.ph.us.i, label %._crit_edge73.thread.i

.lr.ph.us.i:                                      ; preds = %bb.ao
  %i.eq = mul i32 %i.cm, %i.dy
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %.lr.ph.us.i
  %indvars.iv96.i = phi i64 [ %i.ec, %.lr.ph.us.i ], [ %indvars.iv.next97.i, %bb.ar ] ; 3 uses
  %.159.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %.2.us.i, %bb.ar ] ; 2 uses
  %.16458.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %.265.us.i, %bb.ar ] ; 2 uses
  %.16757.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %.268.us.i, %bb.ar ] ; 2 uses
  %.17056.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %.271.us.i, %bb.ar ] ; 2 uses
  %i.er = trunc nuw i64 %indvars.iv96.i to i32    ; 2 uses
  %i.es = add i32 %i.eq, %i.er                    ; 2 uses
  %i.et = lshr i32 %i.es, 3
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !18
  %i.ex = zext i8 %i.ew to i32
  %i.ey = and i32 %i.es, 7
  %i.ez = shl nuw nsw i32 1, %i.ey
  %i.fa = and i32 %i.ez, %i.ex
  %.not47.us.i = icmp eq i32 %i.fa, 0
  br i1 %.not47.us.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fb = add i32 %i.co, %i.er
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val4, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !16 ; 4 uses
  %i.ff = lshr i32 %i.fe, 24                      ; 2 uses
  %.not89.us.i = icmp ugt i32 %i.ff, %1
  %spec.select.us.i = select i1 %.not89.us.i, i32 %i.ff, i32 255 ; 4 uses
  %i.fg = add i32 %spec.select.us.i, %.17056.us.i
  %i.fh = lshr i32 %i.fe, 16
  %i.fi = and i32 %i.fh, 255
  %i.fj = mul nuw nsw i32 %spec.select.us.i, %i.fi
  %i.fk = add i32 %i.fj, %.16757.us.i
  %i.fl = lshr i32 %i.fe, 8
  %i.fm = and i32 %i.fl, 255
  %i.fn = mul nuw nsw i32 %spec.select.us.i, %i.fm
  %i.fo = add i32 %i.fn, %.16458.us.i
  %i.fp = and i32 %i.fe, 255
  %i.fq = mul nuw nsw i32 %spec.select.us.i, %i.fp
  %i.fr = add i32 %i.fq, %.159.us.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.271.us.i = phi i32 [ %i.fg, %bb.aq ], [ %.17056.us.i, %bb.ap ] ; 3 uses
  %.268.us.i = phi i32 [ %i.fk, %bb.aq ], [ %.16757.us.i, %bb.ap ] ; 3 uses
  %.265.us.i = phi i32 [ %i.fo, %bb.aq ], [ %.16458.us.i, %bb.ap ] ; 3 uses
  %.2.us.i = phi i32 [ %i.fr, %bb.aq ], [ %.159.us.i, %bb.ap ] ; 3 uses
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %i.fs = icmp samesign ule i64 %indvars.iv96.i, %indvars.iv99.i
  %i.ft = icmp samesign ult i64 %indvars.iv.next97.i, %i.ck
  %i.fu = and i1 %i.fs, %i.ft
  br i1 %i.fu, label %bb.ap, label %._crit_edge62.us.i, !llvm.loop !34

._crit_edge62.us.i:                               ; preds = %bb.ar
  br i1 %i.cq, label %.lr.ph.us.i.1, label %._crit_edge73.i

.lr.ph.us.i.1:                                    ; preds = %._crit_edge62.us.i
  %i.fv = mul i32 %i.cp, %i.dy
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %.lr.ph.us.i.1
  %indvars.iv96.i.1 = phi i64 [ %i.ec, %.lr.ph.us.i.1 ], [ %indvars.iv.next97.i.1, %bb.au ] ; 3 uses
  %.159.us.i.1 = phi i32 [ %.2.us.i, %.lr.ph.us.i.1 ], [ %.2.us.i.1, %bb.au ] ; 2 uses
  %.16458.us.i.1 = phi i32 [ %.265.us.i, %.lr.ph.us.i.1 ], [ %.265.us.i.1, %bb.au ] ; 2 uses
  %.16757.us.i.1 = phi i32 [ %.268.us.i, %.lr.ph.us.i.1 ], [ %.268.us.i.1, %bb.au ] ; 2 uses
  %.17056.us.i.1 = phi i32 [ %.271.us.i, %.lr.ph.us.i.1 ], [ %.271.us.i.1, %bb.au ] ; 2 uses
  %i.fw = trunc nuw i64 %indvars.iv96.i.1 to i32  ; 2 uses
  %i.fx = add i32 %i.fv, %i.fw                    ; 2 uses
  %i.fy = lshr i32 %i.fx, 3
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !18
  %i.gc = zext i8 %i.gb to i32
  %i.gd = and i32 %i.fx, 7
  %i.ge = shl nuw nsw i32 1, %i.gd
  %i.gf = and i32 %i.ge, %i.gc
  %.not47.us.i.1 = icmp eq i32 %i.gf, 0
  br i1 %.not47.us.i.1, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gg = add i32 %i.cr, %i.fw
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.val4, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !16 ; 4 uses
  %i.gk = lshr i32 %i.gj, 24                      ; 2 uses
  %.not89.us.i.1 = icmp ugt i32 %i.gk, %1
  %spec.select.us.i.1 = select i1 %.not89.us.i.1, i32 %i.gk, i32 255 ; 4 uses
  %i.gl = add i32 %spec.select.us.i.1, %.17056.us.i.1
  %i.gm = lshr i32 %i.gj, 16
  %i.gn = and i32 %i.gm, 255
  %i.go = mul nuw nsw i32 %spec.select.us.i.1, %i.gn
  %i.gp = add i32 %i.go, %.16757.us.i.1
  %i.gq = lshr i32 %i.gj, 8
  %i.gr = and i32 %i.gq, 255
  %i.gs = mul nuw nsw i32 %spec.select.us.i.1, %i.gr
  %i.gt = add i32 %i.gs, %.16458.us.i.1
  %i.gu = and i32 %i.gj, 255
  %i.gv = mul nuw nsw i32 %spec.select.us.i.1, %i.gu
  %i.gw = add i32 %i.gv, %.159.us.i.1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.271.us.i.1 = phi i32 [ %i.gl, %bb.at ], [ %.17056.us.i.1, %bb.as ] ; 3 uses
  %.268.us.i.1 = phi i32 [ %i.gp, %bb.at ], [ %.16757.us.i.1, %bb.as ] ; 3 uses
  %.265.us.i.1 = phi i32 [ %i.gt, %bb.at ], [ %.16458.us.i.1, %bb.as ] ; 3 uses
  %.2.us.i.1 = phi i32 [ %i.gw, %bb.at ], [ %.159.us.i.1, %bb.as ] ; 3 uses
  %indvars.iv.next97.i.1 = add nuw nsw i64 %indvars.iv96.i.1, 1 ; 2 uses
  %i.gx = icmp samesign ule i64 %indvars.iv96.i.1, %indvars.iv99.i
  %i.gy = icmp samesign ult i64 %indvars.iv.next97.i.1, %i.ck
  %i.gz = and i1 %i.gx, %i.gy
  br i1 %i.gz, label %bb.as, label %._crit_edge62.us.i.1, !llvm.loop !34

._crit_edge62.us.i.1:                             ; preds = %bb.au
  br i1 %i.cv, label %.lr.ph.us.i.2, label %._crit_edge73.i

.lr.ph.us.i.2:                                    ; preds = %._crit_edge62.us.i.1
  %i.ha = mul i32 %i.cs, %i.dy
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %.lr.ph.us.i.2
  %indvars.iv96.i.2 = phi i64 [ %i.ec, %.lr.ph.us.i.2 ], [ %indvars.iv.next97.i.2, %bb.ax ] ; 3 uses
  %.159.us.i.2 = phi i32 [ %.2.us.i.1, %.lr.ph.us.i.2 ], [ %.2.us.i.2, %bb.ax ] ; 2 uses
  %.16458.us.i.2 = phi i32 [ %.265.us.i.1, %.lr.ph.us.i.2 ], [ %.265.us.i.2, %bb.ax ] ; 2 uses
  %.16757.us.i.2 = phi i32 [ %.268.us.i.1, %.lr.ph.us.i.2 ], [ %.268.us.i.2, %bb.ax ] ; 2 uses
  %.17056.us.i.2 = phi i32 [ %.271.us.i.1, %.lr.ph.us.i.2 ], [ %.271.us.i.2, %bb.ax ] ; 2 uses
  %i.hb = trunc nuw i64 %indvars.iv96.i.2 to i32  ; 2 uses
  %i.hc = add i32 %i.ha, %i.hb                    ; 2 uses
  %i.hd = lshr i32 %i.hc, 3
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !18
  %i.hh = zext i8 %i.hg to i32
  %i.hi = and i32 %i.hc, 7
  %i.hj = shl nuw nsw i32 1, %i.hi
  %i.hk = and i32 %i.hj, %i.hh
  %.not47.us.i.2 = icmp eq i32 %i.hk, 0
  br i1 %.not47.us.i.2, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hl = add i32 %i.cw, %i.hb
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.val4, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !16 ; 4 uses
  %i.hp = lshr i32 %i.ho, 24                      ; 2 uses
  %.not89.us.i.2 = icmp ugt i32 %i.hp, %1
  %spec.select.us.i.2 = select i1 %.not89.us.i.2, i32 %i.hp, i32 255 ; 4 uses
  %i.hq = add i32 %spec.select.us.i.2, %.17056.us.i.2
  %i.hr = lshr i32 %i.ho, 16
  %i.hs = and i32 %i.hr, 255
  %i.ht = mul nuw nsw i32 %spec.select.us.i.2, %i.hs
  %i.hu = add i32 %i.ht, %.16757.us.i.2
  %i.hv = lshr i32 %i.ho, 8
  %i.hw = and i32 %i.hv, 255
  %i.hx = mul nuw nsw i32 %spec.select.us.i.2, %i.hw
  %i.hy = add i32 %i.hx, %.16458.us.i.2
  %i.hz = and i32 %i.ho, 255
  %i.ia = mul nuw nsw i32 %spec.select.us.i.2, %i.hz
  %i.ib = add i32 %i.ia, %.159.us.i.2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.271.us.i.2 = phi i32 [ %i.hq, %bb.aw ], [ %.17056.us.i.2, %bb.av ] ; 2 uses
  %.268.us.i.2 = phi i32 [ %i.hu, %bb.aw ], [ %.16757.us.i.2, %bb.av ] ; 2 uses
  %.265.us.i.2 = phi i32 [ %i.hy, %bb.aw ], [ %.16458.us.i.2, %bb.av ] ; 2 uses
  %.2.us.i.2 = phi i32 [ %i.ib, %bb.aw ], [ %.159.us.i.2, %bb.av ] ; 2 uses
  %indvars.iv.next97.i.2 = add nuw nsw i64 %indvars.iv96.i.2, 1 ; 2 uses
  %i.ic = icmp samesign ule i64 %indvars.iv96.i.2, %indvars.iv99.i
  %i.id = icmp samesign ult i64 %indvars.iv.next97.i.2, %i.ck
  %i.ie = and i1 %i.ic, %i.id
  br i1 %i.ie, label %bb.av, label %._crit_edge73.i, !llvm.loop !34

._crit_edge73.i:                                  ; preds = %bb.ax, %._crit_edge62.us.i.1, %._crit_edge62.us.i
  %.271.us.i.lcssa.lcssa = phi i32 [ %.271.us.i, %._crit_edge62.us.i ], [ %.271.us.i.1, %._crit_edge62.us.i.1 ], [ %.271.us.i.2, %bb.ax ] ; 4 uses
  %.268.us.i.lcssa.lcssa = phi i32 [ %.268.us.i, %._crit_edge62.us.i ], [ %.268.us.i.1, %._crit_edge62.us.i.1 ], [ %.268.us.i.2, %bb.ax ]
  %.265.us.i.lcssa.lcssa = phi i32 [ %.265.us.i, %._crit_edge62.us.i ], [ %.265.us.i.1, %._crit_edge62.us.i.1 ], [ %.265.us.i.2, %bb.ax ]
  %.2.us.i.lcssa.lcssa = phi i32 [ %.2.us.i, %._crit_edge62.us.i ], [ %.2.us.i.1, %._crit_edge62.us.i.1 ], [ %.2.us.i.2, %bb.ax ]
  %.not.i = icmp eq i32 %.271.us.i.lcssa.lcssa, 0
  br i1 %.not.i, label %._crit_edge73.thread.i, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge73.i
  %i.if = add i32 %i.cn, %i.dz
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.val4, i64 %i.ig ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !16
  %.sroa.8.0.extract.shift.i = and i32 %i.ii, -16777216
  %i.ij = udiv i32 %.268.us.i.lcssa.lcssa, %.271.us.i.lcssa.lcssa
  %7 = udiv i32 %.265.us.i.lcssa.lcssa, %.271.us.i.lcssa.lcssa
  %8 = udiv i32 %.2.us.i.lcssa.lcssa, %.271.us.i.lcssa.lcssa
  %.sroa.7.0.insert.ext.i = shl i32 %i.ij, 16
  %.sroa.7.0.insert.shift.i = and i32 %.sroa.7.0.insert.ext.i, 16711680
  %.sroa.7.0.insert.insert.i = or disjoint i32 %.sroa.7.0.insert.shift.i, %.sroa.8.0.extract.shift.i
  %i.ik = shl i32 %7, 8
  %i.il = and i32 %i.ik, 65280
  %i.im = or disjoint i32 %.sroa.7.0.insert.insert.i, %i.il
  %i.in = and i32 %8, 255
  %i.io = or disjoint i32 %i.im, %i.in
  store i32 %i.io, ptr %i.ih, align 4, !tbaa !16
  %i.ip = load i32, ptr %6, align 8, !tbaa !50
  %i.iq = mul i32 %i.ip, %.07383.i
  %i.ir = add i32 %i.iq, %i.dz                    ; 2 uses
  %i.is = and i32 %i.ir, 7
  %i.it = shl nuw nsw i32 1, %i.is
  %i.iu = lshr i32 %i.ir, 3
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = load ptr, ptr %i.bt, align 8, !tbaa !20
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iv ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !18
  %i.iz = trunc nuw i32 %i.it to i8
  %i.ja = or i8 %i.iy, %i.iz
  store i8 %i.ja, ptr %i.ix, align 1, !tbaa !18
  %.pre109.i.a = load i32, ptr %5, align 8, !tbaa !50 ; 2 uses
  br label %._crit_edge73.thread.i

._crit_edge73.thread.i:                           ; preds = %bb.ay, %._crit_edge73.i, %bb.ao
  %.pre110112.i = phi i32 [ %.pre110113.i, %._crit_edge73.i ], [ %.pre109.i.a, %bb.ay ], [ %.pre110113.i, %bb.ao ] ; 2 uses
  %i.jb = phi i32 [ %i.dy, %._crit_edge73.i ], [ %.pre109.i.a, %bb.ay ], [ %i.dy, %bb.ao ]
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %exitcond103.not.i.a = icmp eq i64 %indvars.iv.next100.i, %i.ck
  br i1 %exitcond103.not.i.a, label %._crit_edge82.i, label %bb.ao, !llvm.loop !35

bb.az:                                            ; preds = %_ZNK6Bitmap3allEv.exit118.i
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jd = load ptr, ptr %i.bt, align 8, !tbaa !20 ; 3 uses
  %.not.i.i.i.i121.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i.i121.i, label %_ZN6BitmapD2Ev.exit123.i, label %bb.bb

_ZNK6Bitmap3allEv.exit118.i:                      ; preds = %bb.an, %.lr.ph.i106.i, %.lr.ph27.i112.i, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.am
  %i.je = load i64, ptr %6, align 8
  store i64 %i.je, ptr %5, align 8
  %i.jf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_ZN6BitmapaSERKS_.exit.i unwind label %bb.az ; 0 uses

_ZN6BitmapaSERKS_.exit.i:                         ; preds = %_ZNK6Bitmap3allEv.exit118.i
  %i.jg = add nuw nsw i32 %.07485.i, 1            ; 2 uses
  %exitcond105.not.i = icmp eq i32 %i.jg, %.sroa.speculated.i
  br i1 %exitcond105.not.i, label %_ZNK6Bitmap3allEv.exit118.thread.loopexit92.i, label %.preheader49.i, !llvm.loop !36

_ZNK6Bitmap3allEv.exit118.thread.loopexit92.i:    ; preds = %_ZN6BitmapaSERKS_.exit.i, %._crit_edge.i110.i, %bb.ab, %._crit_edge84.split.i
  %.pre111.i = load ptr, ptr %i.bt, align 8, !tbaa !20
  br label %_ZNK6Bitmap3allEv.exit118.thread.i

_ZNK6Bitmap3allEv.exit118.thread.i:               ; preds = %bb.ad, %bb.af, %bb.ah, %bb.aj, %bb.al, %bb.an, %_ZNK6Bitmap3allEv.exit118.thread.loopexit92.i
  %i.jh = phi ptr [ %.pre111.i, %_ZNK6Bitmap3allEv.exit118.thread.loopexit92.i ], [ %i.da, %bb.an ], [ %i.da, %bb.al ], [ %i.da, %bb.aj ], [ %i.da, %bb.ah ], [ %i.da, %bb.af ], [ %i.da, %bb.ad ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i.i, label %_ZN6BitmapD2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNK6Bitmap3allEv.exit118.thread.i
  %i.ji = load ptr, ptr %i.cb, align 8, !tbaa !21
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %i.jh to i64
  %i.jl = sub i64 %i.jj, %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jl) #10
  br label %_ZN6BitmapD2Ev.exit.i

_ZN6BitmapD2Ev.exit.i:                            ; preds = %bb.ba, %_ZNK6Bitmap3allEv.exit118.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %_ZNK6Bitmap3allEv.exit.thread.i

bb.bb:                                            ; preds = %bb.az
  %i.jm = load ptr, ptr %i.cb, align 8, !tbaa !21
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = ptrtoint ptr %i.jd to i64
  %i.jp = sub i64 %i.jn, %i.jo
  call void @_ZdlPvm(ptr noundef nonnull %i.jd, i64 noundef %i.jp) #10
  br label %_ZN6BitmapD2Ev.exit123.i

_ZNK6Bitmap3allEv.exit.thread.i:                  ; preds = %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %_ZN6BitmapD2Ev.exit.i, %._crit_edge.i.i, %bb.f, %._crit_edge55.split.i
  %i.jq = load ptr, ptr %i.h, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i.i124.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i.i124.i, label %_ZL33imageCleanTransparentWithInliningILb1EEvPN5video6IImageEj.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNK6Bitmap3allEv.exit.thread.i
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !21
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jq to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef %i.jv) #10
  br label %_ZL33imageCleanTransparentWithInliningILb1EEvPN5video6IImageEj.exit

_ZN6BitmapD2Ev.exit123.i:                         ; preds = %bb.bb, %bb.az, %bb.aa
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.cl, %bb.aa ], [ %i.jc, %bb.az ], [ %i.jc, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.jw = load ptr, ptr %i.h, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i.i127.i = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i.i127.i, label %_ZN6BitmapD2Ev.exit129.i, label %bb.bd

bb.bd:                                            ; preds = %_ZN6BitmapD2Ev.exit123.i
  %i.jx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !21
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = ptrtoint ptr %i.jw to i64
  %i.kb = sub i64 %i.jz, %i.ka
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.kb) #10
  br label %_ZN6BitmapD2Ev.exit129.i

_ZN6BitmapD2Ev.exit129.i:                         ; preds = %bb.bd, %_ZN6BitmapD2Ev.exit123.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %common.resume

_ZL33imageCleanTransparentWithInliningILb1EEvPN5video6IImageEj.exit: ; preds = %_ZNK6Bitmap3allEv.exit.thread.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.dd

bb.be:                                            ; preds = %bb.a
  %i.kc = load i32, ptr %i.f, align 4             ; 8 uses
  %.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kd = load i32, ptr %.sroa_idx.i, align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ke, i8 0, i64 24, i1 false)
  store i32 %i.kc, ptr %3, align 8, !tbaa !50
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 %i.kd, ptr %i.kf, align 4, !tbaa !51
  %i.kg = icmp ne i32 %i.kc, 0
  %i.kh = icmp ne i32 %i.kd, 0
  %or.cond.i.i.i5 = and i1 %i.kg, %i.kh           ; 2 uses
  br i1 %or.cond.i.i.i5, label %bb.bf, label %._crit_edge189.split.i

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.ki = mul i32 %i.kd, %i.kc
  %i.kj = lshr i32 %i.ki, 3
  %i.kk = add nuw nsw i32 %i.kj, 1
  %i.kl = zext nneg i32 %i.kk to i64
  invoke void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %i.ke, ptr null, i64 noundef %i.kl, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %.preheader178.preheader.i unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.km = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kn = load ptr, ptr %i.ke, align 8, !tbaa !20 ; 3 uses
  %.not.i.i.i4.i.i45 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i4.i.i45, label %common.resume, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !21
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = ptrtoint ptr %i.kn to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef %i.ks) #10
  br label %common.resume

.preheader178.preheader.i:                        ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.preheader178.i

.preheader178.i:                                  ; preds = %._crit_edge.i47, %.preheader178.preheader.i
  %.085188.i = phi i32 [ %i.lu, %._crit_edge.i47 ], [ 0, %.preheader178.preheader.i ] ; 3 uses
  br label %bb.bv

._crit_edge189.split.i.loopexit:                  ; preds = %._crit_edge.i47
  %.pre = load i32, ptr %3, align 8, !tbaa !50
  br label %._crit_edge189.split.i

._crit_edge189.split.i:                           ; preds = %._crit_edge189.split.i.loopexit, %bb.be
  %i.kt = phi i32 [ %.pre, %._crit_edge189.split.i.loopexit ], [ %i.kc, %bb.be ] ; 2 uses
  %.not.i.i6 = icmp eq i32 %i.kt, 0
  br i1 %.not.i.i6, label %_ZNK6Bitmap3allEv.exit.thread.i26, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge189.split.i
  %i.ku = load i32, ptr %i.kf, align 4, !tbaa !51 ; 2 uses
  %.not16.i.i7 = icmp eq i32 %i.ku, 0
  br i1 %.not16.i.i7, label %_ZNK6Bitmap3allEv.exit.thread.i26, label %.preheader.i.i8

.preheader.i.i8:                                  ; preds = %bb.bi
  %i.kv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !22 ; 3 uses
  %i.kx = load ptr, ptr %i.ke, align 8, !tbaa !20 ; 4 uses
  %i.ky = ptrtoint ptr %i.kw to i64               ; 3 uses
  %i.kz = ptrtoint ptr %i.kx to i64               ; 3 uses
  %i.la = xor i64 %i.kz, -1
  %i.lb = add i64 %i.la, %i.ky                    ; 2 uses
  %.not31.i.i9 = icmp eq i64 %i.lb, 0
  br i1 %.not31.i.i9, label %._crit_edge.i.i38, label %.lr.ph.i.i10

bb.bj:                                            ; preds = %.lr.ph.i.i10
  %i.lc = add i32 %.01123.i.i11, 1                ; 2 uses
  %i.ld = zext i32 %i.lc to i64                   ; 2 uses
  %i.le = icmp ugt i64 %i.lb, %i.ld
  br i1 %i.le, label %.lr.ph.i.i10, label %._crit_edge.i.i38, !llvm.loop !30

.lr.ph.i.i10:                                     ; preds = %.preheader.i.i8, %bb.bj
  %i.lf = phi i64 [ %i.ld, %bb.bj ], [ 0, %.preheader.i.i8 ]
  %.01123.i.i11 = phi i32 [ %i.lc, %bb.bj ], [ 0, %.preheader.i.i8 ]
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !18
  %.not17.i.i12 = icmp eq i8 %i.lh, -1
  br i1 %.not17.i.i12, label %bb.bj, label %_ZNK6Bitmap3allEv.exit.i13

._crit_edge.i.i38:                                ; preds = %bb.bj, %.preheader.i.i8
  %i.li = mul i32 %i.ku, %i.kt
end_hunk_0
begin_hunk_1_@_Z21imageCleanTransparentPN5video6IImageEj:bb.a

.preheader.i100.i:                                ; preds = %bb.cf
  %i.nm = load ptr, ptr %i.mw, align 8, !tbaa !22 ; 2 uses
  %i.nn = load ptr, ptr %i.mq, align 8, !tbaa !20 ; 8 uses
  %i.no = ptrtoint ptr %i.nm to i64
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = xor i64 %i.np, -1
  %i.nr = add i64 %i.nq, %i.no                    ; 2 uses
  %.not31.i101.i = icmp eq i64 %i.nr, 0
  br i1 %.not31.i101.i, label %._crit_edge.i106.i, label %.lr.ph.i102.i

bb.cg:                                            ; preds = %.lr.ph.i102.i
  %i.ns = add i32 %.01123.i103.i, 1               ; 2 uses
  %i.nt = zext i32 %i.ns to i64                   ; 2 uses
  %i.nu = icmp ugt i64 %i.nr, %i.nt
  br i1 %i.nu, label %.lr.ph.i102.i, label %._crit_edge.i106.i, !llvm.loop !30

.lr.ph.i102.i:                                    ; preds = %.preheader.i100.i, %bb.cg
  %i.nv = phi i64 [ %i.nt, %bb.cg ], [ 0, %.preheader.i100.i ]
  %.01123.i103.i = phi i32 [ %i.ns, %bb.cg ], [ 0, %.preheader.i100.i ]
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !18
  %.not17.i104.i = icmp eq i8 %i.nx, -1
  br i1 %.not17.i104.i, label %bb.cg, label %_ZNK6Bitmap3allEv.exit114.i

._crit_edge.i106.i:                               ; preds = %bb.cg, %.preheader.i100.i
  %i.ny = mul i32 %i.nl, %i.nk
  %i.nz = and i32 %i.ny, 7                        ; 7 uses
  %.not19.not24.not.i107.i = icmp eq i32 %i.nz, 0
  br i1 %.not19.not24.not.i107.i, label %_ZNK6Bitmap3allEv.exit114.thread.loopexit230.i, label %.lr.ph27.i108.i

.lr.ph27.i108.i:                                  ; preds = %._crit_edge.i106.i
  %i.oa = getelementptr inbounds i8, ptr %i.nm, i64 -1
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !18
  %i.oc = zext i8 %i.ob to i32                    ; 7 uses
  %i.od = and i32 %i.oc, 1
  %.not18.not.i111.i = icmp eq i32 %i.od, 0
  br i1 %.not18.not.i111.i, label %_ZNK6Bitmap3allEv.exit114.i, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph27.i108.i
  %exitcond.not.i113.i = icmp eq i32 %i.nz, 1
  br i1 %exitcond.not.i113.i, label %_ZNK6Bitmap3allEv.exit114.thread.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.oe = and i32 %i.oc, 2
  %.not18.not.i111.i.1 = icmp eq i32 %i.oe, 0
  br i1 %.not18.not.i111.i.1, label %_ZNK6Bitmap3allEv.exit114.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %exitcond.not.i113.i.1 = icmp eq i32 %i.nz, 2
  br i1 %exitcond.not.i113.i.1, label %_ZNK6Bitmap3allEv.exit114.thread.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.of = and i32 %i.oc, 4
  %.not18.not.i111.i.2 = icmp eq i32 %i.of, 0
  br i1 %.not18.not.i111.i.2, label %_ZNK6Bitmap3allEv.exit114.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %exitcond.not.i113.i.2 = icmp eq i32 %i.nz, 3
  br i1 %exitcond.not.i113.i.2, label %_ZNK6Bitmap3allEv.exit114.thread.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.og = and i32 %i.oc, 8
  %.not18.not.i111.i.3 = icmp eq i32 %i.og, 0
  br i1 %.not18.not.i111.i.3, label %_ZNK6Bitmap3allEv.exit114.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %exitcond.not.i113.i.3 = icmp eq i32 %i.nz, 4
  br i1 %exitcond.not.i113.i.3, label %_ZNK6Bitmap3allEv.exit114.thread.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.oh = and i32 %i.oc, 16
  %.not18.not.i111.i.4 = icmp eq i32 %i.oh, 0
  br i1 %.not18.not.i111.i.4, label %_ZNK6Bitmap3allEv.exit114.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %exitcond.not.i113.i.4 = icmp eq i32 %i.nz, 5
  br i1 %exitcond.not.i113.i.4, label %_ZNK6Bitmap3allEv.exit114.thread.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.oi = and i32 %i.oc, 32
  %.not18.not.i111.i.5 = icmp eq i32 %i.oi, 0
  br i1 %.not18.not.i111.i.5, label %_ZNK6Bitmap3allEv.exit114.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %exitcond.not.i113.i.5 = icmp ne i32 %i.nz, 6
  %i.oj = and i32 %i.oc, 64
  %.not18.not.i111.i.6 = icmp eq i32 %i.oj, 0
  %or.cond160 = and i1 %exitcond.not.i113.i.5, %.not18.not.i111.i.6
  br i1 %or.cond160, label %_ZNK6Bitmap3allEv.exit114.i, label %_ZNK6Bitmap3allEv.exit114.thread.i

._crit_edge217.i.split:                           ; preds = %._crit_edge207.thread.i
  %exitcond234.not.i = icmp eq i32 %i.nj, %i.kd
  br i1 %exitcond234.not.i, label %._crit_edge219.split.i, label %.preheader.i27, !llvm.loop !40

bb.cs:                                            ; preds = %._crit_edge207.thread.i, %.preheader.i27
  %.072216.i = phi i32 [ 0, %.preheader.i27 ], [ %i.rh, %._crit_edge207.thread.i ] ; 7 uses
  %i.ok = load i32, ptr %3, align 8, !tbaa !50
  %i.ol = mul i32 %i.ok, %.073218.i
  %i.om = add i32 %i.ol, %.072216.i               ; 2 uses
  %i.on = lshr i32 %i.om, 3
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = load ptr, ptr %i.ke, align 8, !tbaa !20
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.oo
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !18
  %i.os = zext i8 %i.or to i32
  %i.ot = and i32 %i.om, 7
  %i.ou = shl nuw nsw i32 1, %i.ot
  %i.ov = and i32 %i.ou, %i.os
  %.not169.i.not = icmp eq i32 %i.ov, 0
  br i1 %.not169.i.not, label %.lr.ph206.i, label %._crit_edge207.thread.i

.lr.ph206.i:                                      ; preds = %bb.cs
  %i.ow = call i32 @llvm.usub.sat.i32(i32 %.072216.i, i32 1)
  br label %.lr.ph.us.i28

.lr.ph.us.i28:                                    ; preds = %.lr.ph206.i, %._crit_edge196.us.i
  %.061204.us.i = phi i32 [ %i.qe, %._crit_edge196.us.i ], [ %i.ni, %.lr.ph206.i ] ; 4 uses
  %.062203.us.i = phi i32 [ %.2.us.i34, %._crit_edge196.us.i ], [ 0, %.lr.ph206.i ]
  %.063202.us.i = phi i32 [ %.265.us.i33, %._crit_edge196.us.i ], [ 0, %.lr.ph206.i ]
  %.066201.us.i = phi i32 [ %.268.us.i32, %._crit_edge196.us.i ], [ 0, %.lr.ph206.i ]
  %.069200.us.i = phi i32 [ %.271.us.i31, %._crit_edge196.us.i ], [ 0, %.lr.ph206.i ]
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cv, %.lr.ph.us.i28
  %.0194.us.i = phi i32 [ %i.ow, %.lr.ph.us.i28 ], [ %i.qa, %bb.cv ] ; 4 uses
  %.1193.us.i = phi i32 [ %.062203.us.i, %.lr.ph.us.i28 ], [ %.2.us.i34, %bb.cv ] ; 2 uses
  %.164192.us.i = phi i32 [ %.063202.us.i, %.lr.ph.us.i28 ], [ %.265.us.i33, %bb.cv ] ; 2 uses
  %.167191.us.i = phi i32 [ %.066201.us.i, %.lr.ph.us.i28 ], [ %.268.us.i32, %bb.cv ] ; 2 uses
  %.170190.us.i = phi i32 [ %.069200.us.i, %.lr.ph.us.i28 ], [ %.271.us.i31, %bb.cv ] ; 2 uses
  %i.ox = load i32, ptr %3, align 8, !tbaa !50
  %i.oy = mul i32 %i.ox, %.061204.us.i
  %i.oz = add i32 %i.oy, %.0194.us.i              ; 2 uses
  %i.pa = lshr i32 %i.oz, 3
  %i.pb = zext nneg i32 %i.pa to i64
  %i.pc = load ptr, ptr %i.ke, align 8, !tbaa !20
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pb
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !18
  %i.pf = zext i8 %i.pe to i32
  %i.pg = and i32 %i.oz, 7
  %i.ph = shl nuw nsw i32 1, %i.pg
  %i.pi = and i32 %i.ph, %i.pf
  %.not170.us.i = icmp eq i32 %i.pi, 0
  br i1 %.not170.us.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pj = load ptr, ptr %0, align 8, !tbaa !27
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8
  %i.pm = invoke i32 %i.pl(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.0194.us.i, i32 noundef %.061204.us.i)
          to label %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit116.us.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !38 ; 4 uses

_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit116.us.i: ; preds = %bb.cu
  %i.pn = lshr i32 %i.pm, 24                      ; 2 uses
  %.not89.us.i29 = icmp ugt i32 %i.pn, %1
  %spec.select.us.i30 = select i1 %.not89.us.i29, i32 %i.pn, i32 255 ; 4 uses
  %i.po = add i32 %spec.select.us.i30, %.170190.us.i
  %i.pp = lshr i32 %i.pm, 16
  %i.pq = and i32 %i.pp, 255
  %i.pr = mul nuw nsw i32 %spec.select.us.i30, %i.pq
  %i.ps = add i32 %i.pr, %.167191.us.i
  %i.pt = lshr i32 %i.pm, 8
  %i.pu = and i32 %i.pt, 255
  %i.pv = mul nuw nsw i32 %spec.select.us.i30, %i.pu
  %i.pw = add i32 %i.pv, %.164192.us.i
  %i.px = and i32 %i.pm, 255
  %i.py = mul nuw nsw i32 %spec.select.us.i30, %i.px
  %i.pz = add i32 %i.py, %.1193.us.i
  br label %bb.cv

bb.cv:                                            ; preds = %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit116.us.i, %bb.ct
  %.271.us.i31 = phi i32 [ %i.po, %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit116.us.i ], [ %.170190.us.i, %bb.ct ] ; 6 uses
  %.268.us.i32 = phi i32 [ %i.ps, %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit116.us.i ], [ %.167191.us.i, %bb.ct ] ; 3 uses
  %.265.us.i33 = phi i32 [ %i.pw, %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit116.us.i ], [ %.164192.us.i, %bb.ct ] ; 3 uses
  %.2.us.i34 = phi i32 [ %i.pz, %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit116.us.i ], [ %.1193.us.i, %bb.ct ] ; 3 uses
  %i.qa = add nuw i32 %.0194.us.i, 1              ; 2 uses
  %i.qb = icmp ule i32 %.0194.us.i, %.072216.i
  %i.qc = icmp ult i32 %i.qa, %i.kc
  %i.qd = and i1 %i.qb, %i.qc
  br i1 %i.qd, label %bb.ct, label %._crit_edge196.us.i, !llvm.loop !41

._crit_edge196.us.i:                              ; preds = %bb.cv
  %i.qe = add nuw i32 %.061204.us.i, 1            ; 2 uses
  %i.qf = icmp ule i32 %.061204.us.i, %.073218.i
  %i.qg = icmp ult i32 %i.qe, %i.kd
  %i.qh = and i1 %i.qf, %i.qg
  br i1 %i.qh, label %.lr.ph.us.i28, label %._crit_edge207.i, !llvm.loop !42

._crit_edge207.i:                                 ; preds = %._crit_edge196.us.i
  %.not.i35 = icmp eq i32 %.271.us.i31, 0
  br i1 %.not.i35, label %._crit_edge207.thread.i, label %bb.cw

bb.cw:                                            ; preds = %._crit_edge207.i
  %i.qi = load ptr, ptr %0, align 8, !tbaa !27
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qk = load ptr, ptr %i.qj, align 8
  %i.ql = invoke i32 %i.qk(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.072216.i, i32 noundef %.073218.i)
          to label %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit118.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !38

_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit118.i: ; preds = %bb.cw
  %.sroa.8.0.extract.shift.i36 = and i32 %i.ql, -16777216
  %i.qm = udiv i32 %.268.us.i32, %.271.us.i31
  %9 = udiv i32 %.265.us.i33, %.271.us.i31
  %10 = udiv i32 %.2.us.i34, %.271.us.i31
  %.sroa.7.0.insert.ext.i37 = shl i32 %i.qm, 16
  %.sroa.7.0.insert.shift.i38 = and i32 %.sroa.7.0.insert.ext.i37, 16711680
  %.sroa.7.0.insert.insert.i39 = or disjoint i32 %.sroa.7.0.insert.shift.i38, %.sroa.8.0.extract.shift.i36
  %i.qn = shl i32 %9, 8
  %i.qo = and i32 %i.qn, 65280
  %i.qp = or disjoint i32 %.sroa.7.0.insert.insert.i39, %i.qo
  %i.qq = and i32 %10, 255
  %i.qr = or disjoint i32 %i.qp, %i.qq
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 %i.qr, ptr %2, align 4
  %i.qs = load ptr, ptr %0, align 8, !tbaa !27
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %i.qu = load ptr, ptr %i.qt, align 8
  invoke void %i.qu(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.072216.i, i32 noundef %.073218.i, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext false)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !43

bb.cx:                                            ; preds = %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit118.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.qv = load i32, ptr %4, align 8, !tbaa !50
  %i.qw = mul i32 %i.qv, %.073218.i
  %i.qx = add i32 %i.qw, %.072216.i               ; 2 uses
  %i.qy = and i32 %i.qx, 7
  %i.qz = shl nuw nsw i32 1, %i.qy
  %i.ra = lshr i32 %i.qx, 3
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = load ptr, ptr %i.mq, align 8, !tbaa !20
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.rb ; 2 uses
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !18
  %i.rf = trunc nuw i32 %i.qz to i8
  %i.rg = or i8 %i.re, %i.rf
  store i8 %i.rg, ptr %i.rd, align 1, !tbaa !18
  br label %._crit_edge207.thread.i

._crit_edge207.thread.i:                          ; preds = %bb.cx, %._crit_edge207.i, %bb.cs
  %i.rh = add nuw i32 %.072216.i, 1               ; 2 uses
  %exitcond233.not.i = icmp eq i32 %i.rh, %i.kc
  br i1 %exitcond233.not.i, label %._crit_edge217.i.split, label %bb.cs, !llvm.loop !44

_ZNK6Bitmap3allEv.exit114.i:                      ; preds = %bb.cr, %.lr.ph.i102.i, %.lr.ph27.i108.i, %bb.ci, %bb.ck, %bb.cm, %bb.co, %bb.cq
  %i.ri = load i64, ptr %4, align 8
  store i64 %i.ri, ptr %3, align 8
  %i.rj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ke, ptr noundef nonnull align 8 dereferenceable(24) %i.mq)
          to label %_ZN6BitmapaSERKS_.exit.i23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6BitmapaSERKS_.exit.i23:                       ; preds = %_ZNK6Bitmap3allEv.exit114.i
  %i.rk = add nuw nsw i32 %.074220.i, 1           ; 2 uses
  %exitcond235.not.i = icmp eq i32 %i.rk, %.sroa.speculated.i21
  br i1 %exitcond235.not.i, label %_ZNK6Bitmap3allEv.exit114.thread.loopexit230.i, label %.preheader175.i, !llvm.loop !45

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cu, %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit118.i, %bb.cw, %_ZNK6Bitmap3allEv.exit114.i
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rl = load ptr, ptr %i.mq, align 8, !tbaa !20 ; 3 uses
  %.not.i.i.i.i122.i = icmp eq ptr %i.rl, null
  br i1 %.not.i.i.i.i122.i, label %_ZN6BitmapD2Ev.exit124.i, label %bb.cz

_ZNK6Bitmap3allEv.exit114.thread.loopexit230.i:   ; preds = %_ZN6BitmapaSERKS_.exit.i23, %._crit_edge.i106.i, %bb.cf, %._crit_edge219.split.i
  %.pre239.i = load ptr, ptr %i.mq, align 8, !tbaa !20
  br label %_ZNK6Bitmap3allEv.exit114.thread.i

_ZNK6Bitmap3allEv.exit114.thread.i:               ; preds = %bb.ch, %bb.cj, %bb.cl, %bb.cn, %bb.cp, %bb.cr, %_ZNK6Bitmap3allEv.exit114.thread.loopexit230.i
  %i.rm = phi ptr [ %.pre239.i, %_ZNK6Bitmap3allEv.exit114.thread.loopexit230.i ], [ %i.nn, %bb.cr ], [ %i.nn, %bb.cp ], [ %i.nn, %bb.cn ], [ %i.nn, %bb.cl ], [ %i.nn, %bb.cj ], [ %i.nn, %bb.ch ] ; 3 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.rm, null
  br i1 %.not.i.i.i.i.i24, label %_ZN6BitmapD2Ev.exit.i25, label %bb.cy

bb.cy:                                            ; preds = %_ZNK6Bitmap3allEv.exit114.thread.i
  %i.rn = load ptr, ptr %i.my, align 8, !tbaa !21
  %i.ro = ptrtoint ptr %i.rn to i64
  %i.rp = ptrtoint ptr %i.rm to i64
  %i.rq = sub i64 %i.ro, %i.rp
  call void @_ZdlPvm(ptr noundef nonnull %i.rm, i64 noundef %i.rq) #10
  br label %_ZN6BitmapD2Ev.exit.i25

_ZN6BitmapD2Ev.exit.i25:                          ; preds = %bb.cy, %_ZNK6Bitmap3allEv.exit114.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %_ZNK6Bitmap3allEv.exit.thread.i26

bb.cz:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.rr = load ptr, ptr %i.my, align 8, !tbaa !21
  %i.rs = ptrtoint ptr %i.rr to i64
  %i.rt = ptrtoint ptr %i.rl to i64
  %i.ru = sub i64 %i.rs, %i.rt
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef %i.ru) #10
  br label %_ZN6BitmapD2Ev.exit124.i

_ZNK6Bitmap3allEv.exit.thread.i26:                ; preds = %bb.bk, %bb.bm, %bb.bo, %bb.bq, %bb.bs, %bb.bu, %_ZN6BitmapD2Ev.exit.i25, %._crit_edge.i.i38, %bb.bi, %._crit_edge189.split.i
  %i.rv = load ptr, ptr %i.ke, align 8, !tbaa !20 ; 3 uses
  %.not.i.i.i.i125.i = icmp eq ptr %i.rv, null
  br i1 %.not.i.i.i.i125.i, label %_ZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEj.exit, label %bb.da

bb.da:                                            ; preds = %_ZNK6Bitmap3allEv.exit.thread.i26
  %i.rw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !21
  %i.ry = ptrtoint ptr %i.rx to i64
  %i.rz = ptrtoint ptr %i.rv to i64
  %i.sa = sub i64 %i.ry, %i.rz
  call void @_ZdlPvm(ptr noundef nonnull %i.rv, i64 noundef %i.sa) #10
  br label %_ZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEj.exit

_ZN6BitmapD2Ev.exit124.i:                         ; preds = %bb.cz, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ce
  %.pn.pn.pn.i16 = phi { ptr, i32 } [ %i.nh, %bb.ce ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp141, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.db

bb.db:                                            ; preds = %_ZN6BitmapD2Ev.exit124.i, %bb.bx
  %.pn90.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i16, %_ZN6BitmapD2Ev.exit124.i ], [ %i.mn, %bb.bx ]
  %i.sb = load ptr, ptr %i.ke, align 8, !tbaa !20 ; 3 uses
  %.not.i.i.i.i128.i = icmp eq ptr %i.sb, null
  br i1 %.not.i.i.i.i128.i, label %_ZN6BitmapD2Ev.exit130.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.sc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !21
  %i.se = ptrtoint ptr %i.sd to i64
  %i.sf = ptrtoint ptr %i.sb to i64
  %i.sg = sub i64 %i.se, %i.sf
  call void @_ZdlPvm(ptr noundef nonnull %i.sb, i64 noundef %i.sg) #10
  br label %_ZN6BitmapD2Ev.exit130.i

_ZN6BitmapD2Ev.exit130.i:                         ; preds = %bb.dc, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %common.resume

_ZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEj.exit: ; preds = %_ZNK6Bitmap3allEv.exit.thread.i26, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.dd

bb.dd:                                            ; preds = %_ZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEj.exit, %_ZL33imageCleanTransparentWithInliningILb1EEvPN5video6IImageEj.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 -16777216, 0) i32 @_Z17imageAverageColorPKN5video6IImageE(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.017.0.copyload.i = load i32, ptr %i.f, align 4, !tbaa !16 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16 ; 3 uses
  %i.g = lshr i32 %.sroa.017.0.copyload.i, 4
  %.sroa.speculated35.i = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1)
  %i.h = lshr i32 %.sroa.6.0.copyload.i, 4
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1)
  %.not77.i = icmp eq i32 %.sroa.6.0.copyload.i, 0
  %.not78.i = icmp eq i32 %.sroa.017.0.copyload.i, 0
  %or.cond.i = select i1 %.not77.i, i1 true, i1 %.not78.i
  br i1 %or.cond.i, label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.b, %._crit_edge.us.i
  %.070.us.i = phi i32 [ %.2.us.i, %._crit_edge.us.i ], [ 0, %bb.b ]
  %.02569.us.i = phi i32 [ %i.ai, %._crit_edge.us.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.13.068.us.i = phi float [ %.sroa.13.2.us.i, %._crit_edge.us.i ], [ 0.000000e+00, %bb.b ]
  %.sroa.040.067.us.i = phi <2 x float> [ %.sroa.040.2.us.i, %._crit_edge.us.i ], [ zeroinitializer, %bb.b ]
  %i.i = mul i32 %.02569.us.i, %.sroa.017.0.copyload.i
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.preheader.us.i
  %.164.us.i = phi i32 [ %.070.us.i, %.preheader.us.i ], [ %.2.us.i, %bb.e ] ; 2 uses
  %.02663.us.i = phi i32 [ 0, %.preheader.us.i ], [ %i.ag, %bb.e ] ; 2 uses
  %.sroa.13.162.us.i = phi float [ %.sroa.13.068.us.i, %.preheader.us.i ], [ %.sroa.13.2.us.i, %bb.e ] ; 2 uses
  %.sroa.040.161.us.i = phi <2 x float> [ %.sroa.040.067.us.i, %.preheader.us.i ], [ %.sroa.040.2.us.i, %bb.e ] ; 2 uses
  %i.j = add i32 %.02663.us.i, %i.i
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16   ; 4 uses
  %.not27.us.i = icmp ult i32 %i.m, 16777216
  br i1 %.not27.us.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %.164.us.i, 1
  %i.o = lshr i32 %i.m, 16
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !29
  %i.t = lshr i32 %i.m, 8
  %i.u = and i32 %i.t, 255
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !29
  %i.y = and i32 %i.m, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !29
  %i.ac = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.x, i64 1
  %i.ae = fadd nsz <2 x float> %.sroa.040.161.us.i, %i.ad
  %i.af = fadd nsz float %.sroa.13.162.us.i, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.040.2.us.i = phi nsz <2 x float> [ %.sroa.040.161.us.i, %bb.c ], [ %i.ae, %bb.d ] ; 4 uses
  %.sroa.13.2.us.i = phi nsz float [ %.sroa.13.162.us.i, %bb.c ], [ %i.af, %bb.d ] ; 3 uses
  %.2.us.i = phi i32 [ %.164.us.i, %bb.c ], [ %i.n, %bb.d ] ; 4 uses
  %i.ag = add i32 %.02663.us.i, %.sroa.speculated35.i ; 2 uses
  %i.ah = icmp ult i32 %i.ag, %.sroa.017.0.copyload.i
  br i1 %i.ah, label %bb.c, label %._crit_edge.us.i, !llvm.loop !53

._crit_edge.us.i:                                 ; preds = %bb.e
  %i.ai = add i32 %.02569.us.i, %.sroa.speculated.i ; 2 uses
end_hunk_1
begin_hunk_2_@_Z17imageAverageColorPKN5video6IImageE:bb.a

_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i: ; preds = %bb.j, %bb.i
  %.0.i2.i.i = phi nsz float [ %i.au, %bb.i ], [ %i.av, %bb.j ]
  %i.aw = fcmp nsz ogt float %i.an, 3.130800e-03
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i
  %i.ax = tail call nsz float @llvm.pow.f32(float %i.an, float f0x3ED55555)
  %i.ay = tail call nnan nsz float @llvm.fmuladd.f32(float %i.ax, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i
  %i.az = fmul nsz float %i.an, 1.292000e+01
  br label %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i

_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i: ; preds = %bb.l, %bb.k
  %.0.i4.i.i = phi nsz float [ %i.ay, %bb.k ], [ %i.az, %bb.l ]
  %i.ba = insertelement <2 x float> poison, float %.0.i4.i.i, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %.0.i.i.i, i64 1
  %i.bc = fmul nsz <2 x float> %i.bb, splat (float 2.550000e+02) ; 2 uses
  %i.bd = fmul nsz float %.0.i2.i.i, 2.550000e+02 ; 2 uses
  %i.be = fcmp nsz olt float %i.bd, 0.000000e+00
  %i.bf = select i1 %i.be, float 0.000000e+00, float %i.bd ; 2 uses
  %i.bg = fcmp nsz olt float %i.bf, 2.550000e+02
  %i.bh = select i1 %i.bg, float %i.bf, float 2.550000e+02
  %i.bi = fadd nsz float %i.bh, 5.000000e-01
  %i.bj = fptosi float %i.bi to i32
  %i.bk = shl i32 %i.bj, 8
  %i.bl = and i32 %i.bk, 65280
  %i.bm = fcmp nsz olt <2 x float> %i.bc, zeroinitializer
  %i.bn = select <2 x i1> %i.bm, <2 x float> zeroinitializer, <2 x float> %i.bc ; 2 uses
  %i.bo = fcmp nsz olt <2 x float> %i.bn, splat (float 2.550000e+02)
  %i.bp = select <2 x i1> %i.bo, <2 x float> %i.bn, <2 x float> splat (float 2.550000e+02)
  %i.bq = fadd nsz <2 x float> %i.bp, splat (float 5.000000e-01)
  %i.br = fptosi <2 x float> %i.bq to <2 x i32>   ; 2 uses
  %i.bs = extractelement <2 x i32> %i.br, i64 1
  %i.bt = shl i32 %i.bs, 16
  %.masked.i = or disjoint i32 %i.bl, %i.bt
  %i.bu = extractelement <2 x i32> %i.br, i64 0
  %i.bv = and i32 %i.bu, 255
  %i.bw = or disjoint i32 %i.bv, %.masked.i
  %i.bx = or i32 %i.bw, -16777216
  br label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit

bb.m:                                             ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.017.0.copyload.i3 = load i32, ptr %i.by, align 4, !tbaa !16 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !16 ; 3 uses
  %i.bz = lshr i32 %.sroa.017.0.copyload.i3, 4
  %.sroa.speculated31.i = tail call i32 @llvm.umax.i32(i32 %i.bz, i32 1)
  %i.ca = lshr i32 %.sroa.5.0.copyload.i, 4
  %.sroa.speculated.i4 = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 1)
  %.not73.i = icmp eq i32 %.sroa.5.0.copyload.i, 0
  %.not74.i = icmp eq i32 %.sroa.017.0.copyload.i3, 0
  %or.cond.i5 = select i1 %.not73.i, i1 true, i1 %.not74.i
  br i1 %or.cond.i5, label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit, label %.preheader.us.i6

.preheader.us.i6:                                 ; preds = %bb.m, %._crit_edge.us.i9
  %.066.us.i = phi i32 [ %.2.us.i8, %._crit_edge.us.i9 ], [ 0, %bb.m ]
  %.02265.us.i = phi i32 [ %i.da, %._crit_edge.us.i9 ], [ 0, %bb.m ] ; 2 uses
  %.sroa.13.064.us.i = phi float [ %.sroa.13.2.us.i7, %._crit_edge.us.i9 ], [ 0.000000e+00, %bb.m ]
  %.sroa.036.063.us.i = phi <2 x float> [ %.sroa.036.2.us.i, %._crit_edge.us.i9 ], [ zeroinitializer, %bb.m ]
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.preheader.us.i6
  %.160.us.i = phi i32 [ %.066.us.i, %.preheader.us.i6 ], [ %.2.us.i8, %bb.p ] ; 2 uses
  %.02359.us.i = phi i32 [ 0, %.preheader.us.i6 ], [ %i.cy, %bb.p ] ; 2 uses
  %.sroa.13.158.us.i = phi float [ %.sroa.13.064.us.i, %.preheader.us.i6 ], [ %.sroa.13.2.us.i7, %bb.p ] ; 2 uses
  %.sroa.036.157.us.i = phi <2 x float> [ %.sroa.036.063.us.i, %.preheader.us.i6 ], [ %.sroa.036.2.us.i, %bb.p ] ; 2 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call i32 %i.cd(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.02359.us.i, i32 noundef %.02265.us.i), !inline_history !55 ; 4 uses
  %.not24.us.i = icmp ult i32 %i.ce, 16777216
  br i1 %.not24.us.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = add i32 %.160.us.i, 1
  %i.cg = lshr i32 %i.ce, 16
  %i.ch = and i32 %i.cg, 255
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !29
  %i.cl = lshr i32 %i.ce, 8
  %i.cm = and i32 %i.cl, 255
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !29
  %i.cq = and i32 %i.ce, 255
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !29
  %i.cu = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.cp, i64 1
  %i.cw = fadd nsz <2 x float> %.sroa.036.157.us.i, %i.cv
  %i.cx = fadd nsz float %.sroa.13.158.us.i, %i.ct
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.036.2.us.i = phi nsz <2 x float> [ %.sroa.036.157.us.i, %bb.n ], [ %i.cw, %bb.o ] ; 4 uses
  %.sroa.13.2.us.i7 = phi nsz float [ %.sroa.13.158.us.i, %bb.n ], [ %i.cx, %bb.o ] ; 3 uses
  %.2.us.i8 = phi i32 [ %.160.us.i, %bb.n ], [ %i.cf, %bb.o ] ; 4 uses
  %i.cy = add i32 %.02359.us.i, %.sroa.speculated31.i ; 2 uses
  %i.cz = icmp ult i32 %i.cy, %.sroa.017.0.copyload.i3
  br i1 %i.cz, label %bb.n, label %._crit_edge.us.i9, !llvm.loop !56

._crit_edge.us.i9:                                ; preds = %bb.p
  %i.da = add i32 %.02265.us.i, %.sroa.speculated.i4 ; 2 uses
  %i.db = icmp ult i32 %i.da, %.sroa.5.0.copyload.i
  br i1 %i.db, label %.preheader.us.i6, label %._crit_edge67.i, !llvm.loop !57

._crit_edge67.i:                                  ; preds = %._crit_edge.us.i9
  %.not.i10 = icmp eq i32 %.2.us.i8, 0
  br i1 %.not.i10, label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge67.i
  %i.dc = uitofp nsz i32 %.2.us.i8 to float       ; 3 uses
  %.sroa.036.0.vec.extract42.i = extractelement <2 x float> %.sroa.036.2.us.i, i64 0
  %i.dd = fdiv nsz float %.sroa.036.0.vec.extract42.i, %i.dc ; 3 uses
  %.sroa.036.4.vec.extract49.i = extractelement <2 x float> %.sroa.036.2.us.i, i64 1
  %i.de = fdiv nsz float %.sroa.036.4.vec.extract49.i, %i.dc ; 3 uses
  %i.df = fdiv nsz float %.sroa.13.2.us.i7, %i.dc ; 3 uses
  %i.dg = fcmp nsz ogt float %i.dd, 3.130800e-03
  br i1 %i.dg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dh = tail call nsz float @llvm.pow.f32(float %i.dd, float f0x3ED55555)
  %i.di = tail call nnan nsz float @llvm.fmuladd.f32(float %i.dh, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11

bb.s:                                             ; preds = %bb.q
  %i.dj = fmul nsz float %i.dd, 1.292000e+01
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11

_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11: ; preds = %bb.s, %bb.r
  %.0.i.i.i12 = phi nsz float [ %i.di, %bb.r ], [ %i.dj, %bb.s ]
  %i.dk = fcmp nsz ogt float %i.de, 3.130800e-03
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11
  %i.dl = tail call nsz float @llvm.pow.f32(float %i.de, float f0x3ED55555)
  %i.dm = tail call nnan nsz float @llvm.fmuladd.f32(float %i.dl, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11
  %i.dn = fmul nsz float %i.de, 1.292000e+01
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13

_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13: ; preds = %bb.u, %bb.t
  %.0.i2.i.i14 = phi nsz float [ %i.dm, %bb.t ], [ %i.dn, %bb.u ]
  %i.do = fcmp nsz ogt float %i.df, 3.130800e-03
  br i1 %i.do, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13
  %i.dp = tail call nsz float @llvm.pow.f32(float %i.df, float f0x3ED55555)
  %i.dq = tail call nnan nsz float @llvm.fmuladd.f32(float %i.dp, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15

bb.w:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13
  %i.dr = fmul nsz float %i.df, 1.292000e+01
  br label %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15

_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15: ; preds = %bb.w, %bb.v
  %.0.i4.i.i16 = phi nsz float [ %i.dq, %bb.v ], [ %i.dr, %bb.w ]
  %i.ds = insertelement <2 x float> poison, float %.0.i4.i.i16, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %.0.i.i.i12, i64 1
  %i.du = fmul nsz <2 x float> %i.dt, splat (float 2.550000e+02) ; 2 uses
  %i.dv = fmul nsz float %.0.i2.i.i14, 2.550000e+02 ; 2 uses
  %i.dw = fcmp nsz olt float %i.dv, 0.000000e+00
  %i.dx = select i1 %i.dw, float 0.000000e+00, float %i.dv ; 2 uses
  %i.dy = fcmp nsz olt float %i.dx, 2.550000e+02
  %i.dz = select i1 %i.dy, float %i.dx, float 2.550000e+02
  %i.ea = fadd nsz float %i.dz, 5.000000e-01
  %i.eb = fptosi float %i.ea to i32
  %i.ec = shl i32 %i.eb, 8
  %i.ed = and i32 %i.ec, 65280
  %i.ee = fcmp nsz olt <2 x float> %i.du, zeroinitializer
  %i.ef = select <2 x i1> %i.ee, <2 x float> zeroinitializer, <2 x float> %i.du ; 2 uses
  %i.eg = fcmp nsz olt <2 x float> %i.ef, splat (float 2.550000e+02)
  %i.eh = select <2 x i1> %i.eg, <2 x float> %i.ef, <2 x float> splat (float 2.550000e+02)
  %i.ei = fadd nsz <2 x float> %i.eh, splat (float 5.000000e-01)
  %i.ej = fptosi <2 x float> %i.ei to <2 x i32>   ; 2 uses
  %i.ek = extractelement <2 x i32> %i.ej, i64 1
  %i.el = shl i32 %i.ek, 16
  %.masked.i17 = or disjoint i32 %i.ed, %i.el
  %i.em = extractelement <2 x i32> %i.ej, i64 0
  %i.en = and i32 %i.em, 255
  %i.eo = or disjoint i32 %i.en, %.masked.i17
  %i.ep = or i32 %i.eo, -16777216
  br label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit

_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit: ; preds = %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15, %._crit_edge67.i, %bb.m, %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i, %._crit_edge71.i, %bb.b
  %.sroa.0.0 = phi i32 [ -16777216, %bb.b ], [ -16777216, %._crit_edge71.i ], [ %i.bx, %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i ], [ -16777216, %._crit_edge67.i ], [ %i.ep, %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15 ], [ -16777216, %bb.m ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z14imageScaleNNAAPN5video6IImageERKN4core4rectIiEES1_(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.video::SColor", align 4     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !16 ; 3 uses
  %i.c = extractelement <2 x i32> %i.b, i64 0
  %i.d = sitofp nsz i32 %i.c to float             ; 2 uses
  %i.e = extractelement <2 x i32> %i.b, i64 1
  %i.f = sitofp nsz i32 %i.e to float             ; 2 uses
  %i.g = load <2 x i32>, ptr %i.a, align 4, !tbaa !16 ; 3 uses
  %i.h = extractelement <2 x i32> %i.g, i64 1     ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge159.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load <2 x i32>, ptr %i.i, align 4, !tbaa !16
  %i.k = sub nsw <2 x i32> %i.j, %i.b
  %i.l = sitofp nsz <2 x i32> %i.k to <2 x float> ; 3 uses
  %i.m = extractelement <2 x i32> %i.g, i64 0     ; 2 uses
  %.not160 = icmp eq i32 %i.m, 0
  %i.n = uitofp nsz <2 x i32> %i.g to <2 x float> ; 3 uses
  %i.o = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.p = fadd nsz float %i.o, %i.d                ; 4 uses
  %i.q = extractelement <2 x float> %i.l, i64 1   ; 2 uses
  %i.r = fadd nsz float %i.q, %i.f                ; 4 uses
  %i.s = fdiv nsz <2 x float> %i.l, %i.n          ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  br i1 %.not160, label %._crit_edge159.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.t = extractelement <2 x float> %i.n, i64 1
  %i.u = extractelement <2 x float> %i.s, i64 1
  %i.v = extractelement <2 x float> %i.s, i64 0
  %i.w = extractelement <2 x float> %i.n, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.073158 = phi i32 [ %i.cl, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.x = uitofp nsz i32 %.073158 to float
  %i.y = fmul nnan nsz float %i.q, %i.x
  %i.z = fdiv nsz float %i.y, %i.t
  %i.aa = fadd nsz float %i.z, %i.f               ; 3 uses
  %i.ab = fcmp nsz olt float %i.aa, 0.000000e+00
  %i.ac = fcmp nsz ogt float %i.aa, %i.r
  %..i95 = select nsz i1 %i.ac, float %i.r, float %i.aa
  %.0.i96 = select nsz i1 %i.ab, float 0.000000e+00, float %..i95 ; 4 uses
  %i.ad = fadd nsz float %i.u, %.0.i96            ; 3 uses
  %i.ae = fcmp nsz olt float %i.ad, 0.000000e+00
  %i.af = fcmp nsz ogt float %i.ad, %i.r
  %..i98 = select nsz i1 %i.af, float %i.r, float %i.ad
  %.0.i99 = select nsz i1 %i.ae, float 0.000000e+00, float %..i98 ; 3 uses
  %i.ag = fcmp nsz ogt float %.0.i96, %.0.i99     ; 2 uses
  %.0126 = select nsz i1 %i.ag, float %.0.i99, float %.0.i96 ; 3 uses
  %.0125 = select nsz i1 %i.ag, float %.0.i96, float %.0.i99 ; 4 uses
  %i.ah = call nsz noundef float @llvm.floor.f32(float %.0126) ; 2 uses
  %i.ai = fcmp nsz olt float %i.ah, %.0125
  br label %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit

_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit:           ; preds = %.preheader, %._crit_edge147.thread
  %.072157 = phi i32 [ 0, %.preheader ], [ %i.ck, %._crit_edge147.thread ] ; 3 uses
  %i.aj = uitofp nsz i32 %.072157 to float
  %i.ak = fmul nnan nsz float %i.o, %i.aj
  %i.al = fdiv nsz float %i.ak, %i.w
  %i.am = fadd nsz float %i.al, %i.d              ; 3 uses
  %i.an = fcmp nsz olt float %i.am, 0.000000e+00
  %i.ao = fcmp nsz ogt float %i.am, %i.p
  %..i = select nsz i1 %i.ao, float %i.p, float %i.am
  %.0.i = select nsz i1 %i.an, float 0.000000e+00, float %..i ; 4 uses
  %i.ap = fadd nsz float %i.v, %.0.i              ; 3 uses
  %i.aq = fcmp nsz olt float %i.ap, 0.000000e+00
  %i.ar = fcmp nsz ogt float %i.ap, %i.p
  %..i92 = select nsz i1 %i.ar, float %i.p, float %i.ap
  %.0.i93 = select nsz i1 %i.aq, float 0.000000e+00, float %..i92 ; 3 uses
  %i.as = fcmp nsz ogt float %.0.i, %.0.i93       ; 2 uses
  %.0128 = select nsz i1 %i.as, float %.0.i93, float %.0.i ; 3 uses
  %.0127 = select nsz i1 %i.as, float %.0.i, float %.0.i93 ; 4 uses
  br i1 %i.ai, label %.lr.ph146, label %._crit_edge146.thread

.lr.ph146:                                        ; preds = %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit
  %i.at = call nsz noundef float @llvm.floor.f32(float %.0128) ; 2 uses
  %i.au = fcmp nsz olt float %i.at, %.0127
  br i1 %i.au, label %.lr.ph.us, label %._crit_edge146.thread

.lr.ph.us:                                        ; preds = %.lr.ph146, %._crit_edge.us
  %.085141.us = phi float [ %i.bu, %._crit_edge.us ], [ 0.000000e+00, %.lr.ph146 ]
  %.087140.us = phi float [ %i.az, %._crit_edge.us ], [ %i.ah, %.lr.ph146 ] ; 5 uses
  %i.av = phi <4 x float> [ %i.bz, %._crit_edge.us ], [ zeroinitializer, %.lr.ph146 ]
  %i.aw = fcmp nsz ogt float %.0126, %.087140.us
  %i.ax = fsub nsz float %.087140.us, %.0126
  %i.ay = fadd nsz float %i.ax, 1.000000e+00
  %.074.us = select nsz i1 %i.aw, float %i.ay, float 1.000000e+00 ; 2 uses
  %i.az = fadd nsz float %.087140.us, 1.000000e+00 ; 3 uses
  %i.ba = fcmp nsz olt float %.0125, %i.az
  %i.bb = fsub nsz float %.0125, %.087140.us
  %i.bc = fadd nsz float %i.bb, -1.000000e+00
  %i.bd = fadd nsz float %i.bc, %.074.us
  %.1.us = select nsz i1 %i.ba, float %i.bd, float %.074.us
  %i.be = fptoui float %.087140.us to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %.0135.us = phi float [ %i.at, %.lr.ph.us ], [ %i.bj, %bb.b ] ; 5 uses
  %.186130.us = phi float [ %.085141.us, %.lr.ph.us ], [ %i.bu, %bb.b ]
  %i.bf = phi <4 x float> [ %i.av, %.lr.ph.us ], [ %i.bz, %bb.b ]
  %i.bg = fcmp nsz ogt float %.0128, %.0135.us
  %i.bh = fsub nsz float %.0135.us, %.0128
  %i.bi = fadd nsz float %i.bh, 1.000000e+00
  %.075.us = select nsz i1 %i.bg, float %i.bi, float 1.000000e+00 ; 2 uses
  %i.bj = fadd nsz float %.0135.us, 1.000000e+00  ; 3 uses
  %i.bk = fcmp nsz olt float %.0127, %i.bj
  %i.bl = fsub nsz float %.0127, %.0135.us
  %i.bm = fadd nsz float %i.bl, -1.000000e+00
  %i.bn = fadd nsz float %i.bm, %.075.us
  %.176.us = select nsz i1 %i.bk, float %i.bn, float %.075.us
  %i.bo = fmul nsz float %.1.us, %.176.us         ; 2 uses
  %i.bp = fptoui float %.0135.us to i32
  %i.bq = load ptr, ptr %0, align 8, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %i.bp, i32 noundef %i.be) ; 2 uses
  store i32 %i.bt, ptr %3, align 4, !tbaa !16
  %i.bu = fadd nsz float %.186130.us, %i.bo       ; 4 uses
  %i.bv = bitcast i32 %i.bt to <4 x i8>
  %6 = shufflevector <4 x i8> %i.bv, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.bw = uitofp <4 x i8> %6 to <4 x float>
  %i.bx = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> %i.bw, <4 x float> %i.bf) ; 3 uses
  %i.ca = fcmp nsz olt float %i.bj, %.0127
  br i1 %i.ca, label %bb.b, label %._crit_edge.us, !llvm.loop !58

._crit_edge.us:                                   ; preds = %bb.b
  %i.cb = fcmp nsz olt float %i.az, %.0125
  br i1 %i.cb, label %.lr.ph.us, label %._crit_edge147, !llvm.loop !59

._crit_edge147:                                   ; preds = %._crit_edge.us
  %i.cc = fcmp nsz ogt float %i.bu, 0.000000e+00
  br i1 %i.cc, label %bb.c, label %._crit_edge146.thread

bb.c:                                             ; preds = %._crit_edge147
  %i.cd = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = fdiv nsz <4 x float> %i.bz, %i.ce
  %i.cg = fadd nsz <4 x float> %i.cf, splat (float 5.000000e-01) ; 4 uses
  %7 = extractelement <4 x float> %i.cg, i64 0
  %8 = fptoui float %7 to i32
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %4, align 2, !tbaa !63
  %10 = extractelement <4 x float> %i.cg, i64 1
  %11 = fptoui float %10 to i32
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %5, align 1, !tbaa !63
  %13 = extractelement <4 x float> %i.cg, i64 2
  %14 = fptoui float %13 to i32
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr %3, align 4, !tbaa !63
  %16 = extractelement <4 x float> %i.cg, i64 3
  %17 = fptoui float %16 to i32
  %18 = shl i32 %17, 24
  %19 = load i32, ptr %3, align 4, !tbaa !63
  %20 = and i32 %19, 16777215
  %21 = or disjoint i32 %20, %18
  br label %._crit_edge147.thread

._crit_edge146.thread:                            ; preds = %.lr.ph146, %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit, %._crit_edge147
  store i8 0, ptr %4, align 2, !tbaa !63
  store i8 0, ptr %5, align 1, !tbaa !63
  store i8 0, ptr %3, align 4, !tbaa !63
  %22 = load i32, ptr %3, align 4, !tbaa !63
  %23 = and i32 %22, 16777215
  br label %._crit_edge147.thread

._crit_edge147.thread:                            ; preds = %._crit_edge146.thread, %bb.c
  %storemerge = phi i32 [ %23, %._crit_edge146.thread ], [ %21, %bb.c ]
  store i32 %storemerge, ptr %3, align 4, !tbaa !63
  %i.ch = load ptr, ptr %2, align 8, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(41) %2, i32 noundef %.072157, i32 noundef %.073158, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext false)
  %i.ck = add nuw i32 %.072157, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ck, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit, !llvm.loop !60

._crit_edge:                                      ; preds = %._crit_edge147.thread
  %i.cl = add nuw i32 %.073158, 1                 ; 2 uses
  %exitcond166.not = icmp eq i32 %i.cl, %i.h
  br i1 %exitcond166.not, label %._crit_edge159.split, label %.preheader, !llvm.loop !61

._crit_edge159.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not65 = icmp ult i64 %i.g, %2
  br i1 %.not65, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !18      ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !25

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1, !tbaa !18
  store i8 %i.q, ptr %i.d, align 1, !tbaa !18
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !22
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !25

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.z, ptr %i.y, align 1, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.l:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ac, %bb.m ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !22
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !25

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.p, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !18
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !22
  %.not.i.i.i70 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i70, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.r:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !20    ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.au = phi ptr [ %i.at, %bb.t ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.v, label %bb.w, !prof !25

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.u
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.x, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.x:                                             ; preds = %bb.w
  %i.az = load i8, ptr %i.ai, align 1, !tbaa !18
  store i8 %i.az, ptr %i.au, align 1, !tbaa !18
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.x, %bb.w, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
end_hunk_2
