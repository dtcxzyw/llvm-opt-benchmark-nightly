Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/imagefilters?download=true
inline.NumInlined: 370
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z21imageCleanTransparentPN5video6IImageEj:bb.a
  %.pre106.i = load ptr, ptr %i.z, align 8, !tbaa !52
  %.pre115.i = ptrtoint ptr %.pre106.i to i64
  %.pre116.i = ptrtoint ptr %.pre.i to i64
  br label %.noexc100.i

.noexc100.i:                                      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc100_crit_edge.i, %_ZNK6Bitmap3allEv.exit.i
  %.pre-phi117.i = phi i64 [ %.pre116.i, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc100_crit_edge.i ], [ %i.ad, %_ZNK6Bitmap3allEv.exit.i ]
  %.pre-phi.i = phi i64 [ %.pre115.i, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc100_crit_edge.i ], [ %i.ac, %_ZNK6Bitmap3allEv.exit.i ]
  %i.bx = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc100_crit_edge.i ], [ %i.ab, %_ZNK6Bitmap3allEv.exit.i ] ; 2 uses
  %i.by = phi ptr [ %i.bw, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc100_crit_edge.i ], [ null, %_ZNK6Bitmap3allEv.exit.i ] ; 5 uses
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !21
  %i.cc = sub i64 %.pre-phi.i, %.pre-phi117.i     ; 4 uses
  %i.cd = icmp sgt i64 %i.cc, 1
  br i1 %i.cd, label %bb.w, label %bb.x, !prof !25

bb.w:                                             ; preds = %.noexc100.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.bx, i64 %i.cc, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %.noexc100.i
  %i.ce = icmp eq i64 %i.cc, 1
  br i1 %i.ce, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cf = load i8, ptr %i.bx, align 1, !tbaa !18
  store i8 %i.cf, ptr %i.by, align 1, !tbaa !18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.cg = getelementptr inbounds i8, ptr %i.by, i64 %i.cc
  store ptr %i.cg, ptr %i.bz, align 8, !tbaa !22
  %.sroa.speculated31.i = call i32 @llvm.umax.i32(i32 %.sroa.020.0.extract.trunc.i, i32 %.sroa.11.0.extract.trunc.i)
  %i.ch = lshr i32 %.sroa.speculated31.i, 4
  %i.ci = sub nsw i32 11, %i.ch
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.ci, i32 2)
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ck = and i64 %.val, 4294967295               ; 4 uses
  br label %.preheader49.i

.preheader49.i:                                   ; preds = %_ZN6BitmapaSERKS_.exit.i, %bb.z
  %.07485.i = phi i32 [ 0, %bb.z ], [ %i.jm, %_ZN6BitmapaSERKS_.exit.i ]
  br i1 %or.cond.i.i.i, label %.preheader.preheader.i, label %._crit_edge84.split.i

.preheader.preheader.i:                           ; preds = %.preheader49.i
  %.pre110.pre.i = load i32, ptr %5, align 8, !tbaa !50
  br label %.preheader.i

bb.aa:                                            ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6BitmapD2Ev.exit123.i

.preheader.i:                                     ; preds = %._crit_edge82.i, %.preheader.preheader.i
  %.pre110.i = phi i32 [ %.pre110112.i, %._crit_edge82.i ], [ %.pre110.pre.i, %.preheader.preheader.i ] ; 2 uses
  %.07383.i = phi i32 [ %i.dx, %._crit_edge82.i ], [ 0, %.preheader.preheader.i ] ; 6 uses
  %i.cm = call i32 @llvm.usub.sat.i32(i32 %.07383.i, i32 1) ; 4 uses
  %i.cn = mul i32 %.07383.i, %.sroa.020.0.extract.trunc.i
  %i.co = mul i32 %i.cm, %.sroa.020.0.extract.trunc.i
  %i.cp = add nuw i32 %i.cm, 1                    ; 3 uses
  %i.cq = icmp ult i32 %i.cp, %.sroa.11.0.extract.trunc.i
  %i.cr = mul i32 %i.cp, %.sroa.020.0.extract.trunc.i
  %i.cs = add nuw i32 %i.cm, 2                    ; 3 uses
  %i.ct = icmp ne i32 %.07383.i, 0
  %i.cu = icmp ult i32 %i.cs, %.sroa.11.0.extract.trunc.i
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  %i.cw = mul i32 %i.cs, %.sroa.020.0.extract.trunc.i
  br label %bb.ao

._crit_edge84.split.i:                            ; preds = %._crit_edge82.i, %.preheader49.i
  %i.cx = load i32, ptr %6, align 8, !tbaa !50    ; 2 uses
  %.not.i102.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i102.i, label %_ZNK6Bitmap3allEv.exit118.thread.loopexit92.i, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge84.split.i
  %i.cy = load i32, ptr %i.cj, align 4, !tbaa !51 ; 2 uses
  %.not16.i103.i = icmp eq i32 %i.cy, 0
  br i1 %.not16.i103.i, label %_ZNK6Bitmap3allEv.exit118.thread.loopexit92.i, label %.preheader.i104.i

.preheader.i104.i:                                ; preds = %bb.ab
  %i.cz = load ptr, ptr %i.bz, align 8, !tbaa !22 ; 2 uses
  %i.da = load ptr, ptr %i.bt, align 8, !tbaa !20 ; 8 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = xor i64 %i.dc, -1
  %i.de = add i64 %i.dd, %i.db                    ; 2 uses
  %.not31.i105.i = icmp eq i64 %i.de, 0
  br i1 %.not31.i105.i, label %._crit_edge.i110.i, label %.lr.ph.i106.i

bb.ac:                                            ; preds = %.lr.ph.i106.i
  %i.df = add i32 %.01123.i107.i, 1               ; 2 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = icmp ugt i64 %i.de, %i.dg
  br i1 %i.dh, label %.lr.ph.i106.i, label %._crit_edge.i110.i, !llvm.loop !30

.lr.ph.i106.i:                                    ; preds = %.preheader.i104.i, %bb.ac
  %i.di = phi i64 [ %i.dg, %bb.ac ], [ 0, %.preheader.i104.i ]
  %.01123.i107.i = phi i32 [ %i.df, %bb.ac ], [ 0, %.preheader.i104.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !18
  %.not17.i108.i = icmp eq i8 %i.dk, -1
  br i1 %.not17.i108.i, label %bb.ac, label %_ZNK6Bitmap3allEv.exit118.i

._crit_edge.i110.i:                               ; preds = %bb.ac, %.preheader.i104.i
  %i.dl = mul i32 %i.cy, %i.cx
  %i.dm = and i32 %i.dl, 7                        ; 7 uses
  %.not19.not24.not.i111.i = icmp eq i32 %i.dm, 0
  br i1 %.not19.not24.not.i111.i, label %_ZNK6Bitmap3allEv.exit118.thread.loopexit92.i, label %.lr.ph27.i112.i

.lr.ph27.i112.i:                                  ; preds = %._crit_edge.i110.i
  %i.dn = getelementptr inbounds i8, ptr %i.cz, i64 -1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !18
  %i.dp = zext i8 %i.do to i32                    ; 7 uses
  %i.dq = and i32 %i.dp, 1
  %.not18.not.i115.i = icmp eq i32 %i.dq, 0
  br i1 %.not18.not.i115.i, label %_ZNK6Bitmap3allEv.exit118.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph27.i112.i
  %exitcond.not.i117.i = icmp eq i32 %i.dm, 1
  br i1 %exitcond.not.i117.i, label %_ZNK6Bitmap3allEv.exit118.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = and i32 %i.dp, 2
  %.not18.not.i115.i.1 = icmp eq i32 %i.dr, 0
  br i1 %.not18.not.i115.i.1, label %_ZNK6Bitmap3allEv.exit118.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %exitcond.not.i117.i.1 = icmp eq i32 %i.dm, 2
  br i1 %exitcond.not.i117.i.1, label %_ZNK6Bitmap3allEv.exit118.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ds = and i32 %i.dp, 4
  %.not18.not.i115.i.2 = icmp eq i32 %i.ds, 0
  br i1 %.not18.not.i115.i.2, label %_ZNK6Bitmap3allEv.exit118.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %exitcond.not.i117.i.2 = icmp eq i32 %i.dm, 3
  br i1 %exitcond.not.i117.i.2, label %_ZNK6Bitmap3allEv.exit118.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dt = and i32 %i.dp, 8
  %.not18.not.i115.i.3 = icmp eq i32 %i.dt, 0
  br i1 %.not18.not.i115.i.3, label %_ZNK6Bitmap3allEv.exit118.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %exitcond.not.i117.i.3 = icmp eq i32 %i.dm, 4
  br i1 %exitcond.not.i117.i.3, label %_ZNK6Bitmap3allEv.exit118.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = and i32 %i.dp, 16
  %.not18.not.i115.i.4 = icmp eq i32 %i.du, 0
  br i1 %.not18.not.i115.i.4, label %_ZNK6Bitmap3allEv.exit118.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %exitcond.not.i117.i.4 = icmp eq i32 %i.dm, 5
  br i1 %exitcond.not.i117.i.4, label %_ZNK6Bitmap3allEv.exit118.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dv = and i32 %i.dp, 32
  %.not18.not.i115.i.5 = icmp eq i32 %i.dv, 0
  br i1 %.not18.not.i115.i.5, label %_ZNK6Bitmap3allEv.exit118.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %exitcond.not.i117.i.5 = icmp ne i32 %i.dm, 6
  %i.dw = and i32 %i.dp, 64
  %.not18.not.i115.i.6 = icmp eq i32 %i.dw, 0
  %or.cond146 = and i1 %exitcond.not.i117.i.5, %.not18.not.i115.i.6
  br i1 %or.cond146, label %_ZNK6Bitmap3allEv.exit118.i, label %_ZNK6Bitmap3allEv.exit118.thread.i

._crit_edge82.i:                                  ; preds = %._crit_edge73.thread.i
  %i.dx = add nuw i32 %.07383.i, 1                ; 2 uses
  %exitcond104.not.i = icmp eq i32 %i.dx, %.sroa.11.0.extract.trunc.i
  br i1 %exitcond104.not.i, label %._crit_edge84.split.i, label %.preheader.i, !llvm.loop !33

bb.ao:                                            ; preds = %._crit_edge73.thread.i, %.preheader.i
  %.pre110113.i = phi i32 [ %.pre110.i, %.preheader.i ], [ %.pre110112.i, %._crit_edge73.thread.i ] ; 2 uses
  %i.dy = phi i32 [ %.pre110.i, %.preheader.i ], [ %i.jh, %._crit_edge73.thread.i ] ; 6 uses
  %indvars.iv99.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next100.i, %._crit_edge73.thread.i ] ; 7 uses
  %i.dz = trunc nuw i64 %indvars.iv99.i to i32    ; 4 uses
  %i.ea = icmp ne i64 %indvars.iv99.i, 0
  %umin.neg.i = sext i1 %i.ea to i64
  %i.eb = add nsw i64 %indvars.iv99.i, %umin.neg.i
  %i.ec = and i64 %i.eb, 4294967295               ; 3 uses
  %i.ed = mul i32 %i.dy, %.07383.i
  %i.ee = add i32 %i.ed, %i.dz                    ; 2 uses
  %i.ef = lshr i32 %i.ee, 3
  %i.eg = zext nneg i32 %i.ef to i64
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
  %or.cond.i = and i1 %.not46.i, %i.ep
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
  %i.ij = udiv i32 %.268.us.i.lcssa.lcssa, %.271.us.i.lcssa.lcssa
  %i.ik = shl i32 %i.ij, 16
  %i.il = and i32 %i.ik, 16711680
  %i.im = and i32 %i.ii, -16777216
  %i.in = or disjoint i32 %i.il, %i.im
  %i.io = udiv i32 %.265.us.i.lcssa.lcssa, %.271.us.i.lcssa.lcssa
  %i.ip = shl i32 %i.io, 8
  %i.iq = and i32 %i.ip, 65280
  %i.ir = or disjoint i32 %i.in, %i.iq
  %i.is = udiv i32 %.2.us.i.lcssa.lcssa, %.271.us.i.lcssa.lcssa
  %i.it = and i32 %i.is, 255
end_hunk_0
