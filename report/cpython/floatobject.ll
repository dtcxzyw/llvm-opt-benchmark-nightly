inline.NumInlined: 182
inline.NumDeleted: 43
begin_hunk_0_@float_fromhex:bb.a
  %i.t = getelementptr i8, ptr %.1158.i, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.2159.i = phi ptr [ %i.t, %bb.i ], [ %.1158.i, %bb.g ], [ %.1158.i, %bb.h ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.3160.i = phi ptr [ %.2159.i, %bb.j ], [ %i.z, %bb.k ] ; 6 uses
  %i.u = load i8, ptr %.3160.i, align 1, !tbaa !23 ; 2 uses
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr [4 x i8], ptr @_CHAR_TO_HEX, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  %i.y = icmp sgt i32 %i.x, -1
  %i.z = getelementptr i8, ptr %.3160.i, i64 1
  br i1 %i.y, label %bb.k, label %bb.l, !llvm.loop !243

bb.l:                                             ; preds = %bb.k
  %i.aa = icmp eq i8 %i.u, 46
  br i1 %i.aa, label %.preheader211.i, label %.loopexit212.i

.preheader211.i:                                  ; preds = %bb.l, %.preheader211.i
  %.3160.pn.i = phi ptr [ %.4.i, %.preheader211.i ], [ %.3160.i, %bb.l ] ; 2 uses
  %.4.i = getelementptr i8, ptr %.3160.pn.i, i64 1 ; 3 uses
  %i.ab = load i8, ptr %.4.i, align 1, !tbaa !23
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr [4 x i8], ptr @_CHAR_TO_HEX, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %.preheader211.i, label %.loopexit212.i, !llvm.loop !244

.loopexit212.i:                                   ; preds = %.preheader211.i, %bb.l
  %storemerge.i = phi ptr [ %.3160.i, %bb.l ], [ %.3160.pn.i, %.preheader211.i ] ; 2 uses
  %.5.i = phi ptr [ %.3160.i, %bb.l ], [ %.4.i, %.preheader211.i ] ; 4 uses
  store ptr %storemerge.i, ptr %i.a, align 8, !tbaa !49
  %i.ag = ptrtoint ptr %storemerge.i to i64       ; 2 uses
  %i.ah = ptrtoint ptr %.2159.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 5 uses
  %i.aj = ptrtoint ptr %.3160.i to i64
  %i.ak = sub i64 %i.ag, %i.aj                    ; 12 uses
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %bb.ar, label %bb.m

bb.m:                                             ; preds = %.loopexit212.i
  %i.am = icmp sgt i64 %i.ai, 1152921504606846707
  br i1 %i.am, label %bb.as, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load i8, ptr %.5.i, align 1, !tbaa !23
  switch i8 %i.an, label %bb.r [
    i8 112, label %bb.o
    i8 80, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.ao = getelementptr i8, ptr %.5.i, i64 1      ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !23  ; 2 uses
  switch i8 %i.ap, label %bb.q [
    i8 45, label %bb.p
    i8 43, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.aq = getelementptr i8, ptr %.5.i, i64 2      ; 2 uses
  %.pre.i = load i8, ptr %i.aq, align 1, !tbaa !23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ar = phi i8 [ %.pre.i, %bb.p ], [ %i.ap, %bb.o ]
  %.6.i = phi ptr [ %i.aq, %bb.p ], [ %i.ao, %bb.o ]
  %i.as = add i8 %i.ar, -48
  %or.cond199.i.a = icmp ult i8 %i.as, 10
  br i1 %or.cond199.i.a, label %.preheader210.i, label %bb.ar

.preheader210.i:                                  ; preds = %bb.q, %.preheader210.i
  %.6.pn.i = phi ptr [ %.7.i, %.preheader210.i ], [ %.6.i, %bb.q ]
  %.7.i = getelementptr i8, ptr %.6.pn.i, i64 1   ; 3 uses
  %i.at = load i8, ptr %.7.i, align 1, !tbaa !23
  %i.au = add i8 %i.at, -48
  %or.cond200.i = icmp ult i8 %i.au, 10
  br i1 %or.cond200.i, label %.preheader210.i, label %.critedge.i, !llvm.loop !245

.critedge.i:                                      ; preds = %.preheader210.i
  %i.av = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ao, ptr noundef null, i32 noundef 10) #17, !inline_history !241
  br label %bb.r

bb.r:                                             ; preds = %.critedge.i, %bb.n
  %.8.i = phi ptr [ %.7.i, %.critedge.i ], [ %.5.i, %bb.n ] ; 4 uses
  %.0150.i = phi i64 [ %i.av, %.critedge.i ], [ 0, %bb.n ] ; 3 uses
  %i.aw = icmp sgt i64 %i.ai, 0
  br i1 %i.aw, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.ax = load ptr, ptr %i.a, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i
  %.0151213.i = phi i64 [ %i.ai, %.lr.ph.i ], [ %i.bc, %bb.t ] ; 5 uses
  %.not187.i = icmp sgt i64 %.0151213.i, %i.ak
  %i.ay = sub nsw i64 1, %.0151213.i
  %.v.idx.i = sext i1 %.not187.i to i64
  %.v.i = getelementptr i8, ptr %i.ax, i64 %.v.idx.i
  %i.az = getelementptr i8, ptr %.v.i, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !23
  %i.bb = icmp eq i8 %i.ba, 48
  br i1 %i.bb, label %bb.t, label %.critedge2.i

bb.t:                                             ; preds = %bb.s
  %i.bc = add nsw i64 %.0151213.i, -1
  %i.bd = icmp sgt i64 %.0151213.i, 1
  br i1 %i.bd, label %bb.s, label %.critedge2.thread.i, !llvm.loop !246

.critedge2.i:                                     ; preds = %bb.s, %bb.r
  %.0151.lcssa.i = phi i64 [ %i.ai, %bb.r ], [ %.0151213.i, %bb.s ] ; 11 uses
  %i.be = icmp eq i64 %.0151.lcssa.i, 0
  %i.bf = icmp slt i64 %.0150.i, -4611686018427387904
  %or.cond.i = select i1 %i.be, i1 true, i1 %i.bf
  br i1 %or.cond.i, label %.critedge2.thread.i, label %bb.u

bb.u:                                             ; preds = %.critedge2.i
  %i.bg = icmp sgt i64 %.0150.i, 4611686018427387903
  br i1 %i.bg, label %bb.aq, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = shl i64 %i.ak, 2
  %i.bi = sub i64 %.0150.i, %i.bh                 ; 7 uses
  %i.bj = add i64 %.0151.lcssa.i, -1              ; 9 uses
  %i.bk = shl i64 %i.bj, 2
  %i.bl = add i64 %i.bk, %i.bi                    ; 2 uses
  %i.bm = icmp slt i64 %i.bj, %i.ak
  %i.bn = load ptr, ptr %i.a, align 8             ; 11 uses
  %i.bo = sub i64 1, %.0151.lcssa.i
  %i.bp = getelementptr i8, ptr %i.bn, i64 -1     ; 10 uses
  %.v204.i.a = select i1 %i.bm, ptr %i.bn, ptr %i.bp
  %i.bq = getelementptr i8, ptr %.v204.i.a, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !23  ; 2 uses
  %.not188216.i = icmp eq i8 %i.br, 48
  br i1 %.not188216.i, label %._crit_edge.i, label %.lr.ph219.preheader.i

.lr.ph219.preheader.i:                            ; preds = %bb.v
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr [4 x i8], ptr @_CHAR_TO_HEX, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  br label %.lr.ph219.i

.lr.ph219.i:                                      ; preds = %.lr.ph219.i, %.lr.ph219.preheader.i
  %.0155218.i = phi i32 [ %i.bw, %.lr.ph219.i ], [ %i.bu, %.lr.ph219.preheader.i ] ; 2 uses
  %.0156217.i = phi i64 [ %i.bv, %.lr.ph219.i ], [ %i.bl, %.lr.ph219.preheader.i ]
  %i.bv = add i64 %.0156217.i, 1                  ; 2 uses
  %i.bw = sdiv i32 %.0155218.i, 2
  %.0155218.off.i = add i32 %.0155218.i, 1
  %.not188.i = icmp ult i32 %.0155218.off.i, 3
  br i1 %.not188.i, label %._crit_edge.i, label %.lr.ph219.i, !llvm.loop !247

._crit_edge.i:                                    ; preds = %.lr.ph219.i, %bb.v
  %.0156.lcssa.i = phi i64 [ %i.bl, %bb.v ], [ %i.bv, %.lr.ph219.i ] ; 4 uses
  %i.bx = icmp slt i64 %.0156.lcssa.i, -1074
  br i1 %i.bx, label %.critedge2.thread.i, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i
  %i.by = icmp sgt i64 %.0156.lcssa.i, 1024
  br i1 %i.by, label %bb.aq, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = call i64 @llvm.smax.i64(i64 %.0156.lcssa.i, i64 -1021)
  %i.ca = add nsw i64 %i.bz, -53                  ; 2 uses
  %.not189.i = icmp slt i64 %i.bi, %i.ca
  br i1 %.not189.i, label %bb.y, label %.preheader.i

.preheader.i:                                     ; preds = %bb.x
  %i.cb = icmp sgt i64 %i.bj, -1
  br i1 %i.cb, label %.lr.ph223.i.preheader, label %.critedge2.thread.sink.split.i

.lr.ph223.i.preheader:                            ; preds = %.preheader.i
  %xtraiter = and i64 %.0151.lcssa.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph223.i.prol.loopexit, label %.lr.ph223.i.prol

.lr.ph223.i.prol:                                 ; preds = %.lr.ph223.i.preheader
  %i.cc = icmp slt i64 %i.bj, %i.ak
  %i.cd = sub i64 1, %.0151.lcssa.i
  %.v205.i.prol = select i1 %i.cc, ptr %i.bn, ptr %i.bp
  %i.ce = getelementptr i8, ptr %.v205.i.prol, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !23
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr [4 x i8], ptr @_CHAR_TO_HEX, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cj = sitofp i32 %i.ci to double              ; 2 uses
  %i.ck = add i64 %.0151.lcssa.i, -2
  br label %.lr.ph223.i.prol.loopexit

.lr.ph223.i.prol.loopexit:                        ; preds = %.lr.ph223.i.prol, %.lr.ph223.i.preheader
  %.lcssa39.unr = phi double [ poison, %.lr.ph223.i.preheader ], [ %i.cj, %.lr.ph223.i.prol ]
  %.0146222.i.unr = phi double [ 0.000000e+00, %.lr.ph223.i.preheader ], [ %i.cj, %.lr.ph223.i.prol ]
  %.0147221.i.unr = phi i64 [ %i.bj, %.lr.ph223.i.preheader ], [ %i.ck, %.lr.ph223.i.prol ]
  %i.cl = icmp eq i64 %i.bj, 0
  br i1 %i.cl, label %.critedge2.thread.sink.split.i, label %.lr.ph223.i

.lr.ph223.i:                                      ; preds = %.lr.ph223.i.prol.loopexit, %.lr.ph223.i
  %.0146222.i = phi double [ %i.dc, %.lr.ph223.i ], [ %.0146222.i.unr, %.lr.ph223.i.prol.loopexit ]
  %.0147221.i = phi i64 [ %i.dd, %.lr.ph223.i ], [ %.0147221.i.unr, %.lr.ph223.i.prol.loopexit ] ; 6 uses
  %i.cm = icmp slt i64 %.0147221.i, %i.ak
  %i.cn = sub nsw i64 0, %.0147221.i
  %.v205.i.a = select i1 %i.cm, ptr %i.bn, ptr %i.bp
  %i.co = getelementptr i8, ptr %.v205.i.a, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !23
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr @_CHAR_TO_HEX, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  %i.ct = sitofp i32 %i.cs to double
  %i.cu = call double @llvm.fmuladd.f64(double %.0146222.i, double 1.600000e+01, double %i.ct)
  %.not = icmp sgt i64 %.0147221.i, %i.ak
  %i.cv = sub nsw i64 1, %.0147221.i
  %.v205.i.1 = select i1 %.not, ptr %i.bp, ptr %i.bn
  %i.cw = getelementptr i8, ptr %.v205.i.1, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !23
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr [4 x i8], ptr @_CHAR_TO_HEX, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = sitofp i32 %i.da to double
  %i.dc = call double @llvm.fmuladd.f64(double %i.cu, double 1.600000e+01, double %i.db) ; 2 uses
  %i.dd = add nsw i64 %.0147221.i, -2
  %.not258.i.1 = icmp eq i64 %.0147221.i, 1
  br i1 %.not258.i.1, label %.critedge2.thread.sink.split.i, label %.lr.ph223.i, !llvm.loop !248

bb.y:                                             ; preds = %bb.x
  %i.de = xor i64 %i.bi, -1
  %i.df = add i64 %i.ca, %i.de                    ; 3 uses
  %i.dg = srem i64 %i.df, 4                       ; 2 uses
  %i.dh = trunc nsw i64 %i.dg to i32              ; 3 uses
  %i.di = shl nuw nsw i32 1, %i.dh
  %i.dj = sdiv i64 %i.df, 4                       ; 10 uses
  %i.dk = icmp sgt i64 %i.bj, %i.dj
  br i1 %i.dk, label %.lr.ph229.i.preheader, label %._crit_edge230.i

.lr.ph229.i.preheader:                            ; preds = %bb.y
  %i.dl = add i64 %.0151.lcssa.i, -2
  %i.dm = sub i64 %i.dj, %.0151.lcssa.i
  %i.dn = and i64 %i.dm, 1
  %lcmp.mod45.not.not = icmp eq i64 %i.dn, 0
  br i1 %lcmp.mod45.not.not, label %.lr.ph229.i.prol, label %.lr.ph229.i.prol.loopexit

.lr.ph229.i.prol:                                 ; preds = %.lr.ph229.i.preheader
  %i.do = icmp slt i64 %i.bj, %i.ak
  %i.dp = sub i64 1, %.0151.lcssa.i
  %.v209.i.prol = select i1 %i.do, ptr %i.bn, ptr %i.bp
  %i.dq = getelementptr i8, ptr %.v209.i.prol, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !23
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr [4 x i8], ptr @_CHAR_TO_HEX, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !7
  %i.dv = sitofp i32 %i.du to double              ; 2 uses
  %i.dw = add i64 %.0151.lcssa.i, -2
  br label %.lr.ph229.i.prol.loopexit

.lr.ph229.i.prol.loopexit:                        ; preds = %.lr.ph229.i.prol, %.lr.ph229.i.preheader
  %.1227.i.unr = phi double [ 0.000000e+00, %.lr.ph229.i.preheader ], [ %i.dv, %.lr.ph229.i.prol ]
  %.1148226.i.unr = phi i64 [ %i.bj, %.lr.ph229.i.preheader ], [ %i.dw, %.lr.ph229.i.prol ]
  %.lcssa.unr = phi double [ poison, %.lr.ph229.i.preheader ], [ %i.dv, %.lr.ph229.i.prol ]
  %i.dx = icmp eq i64 %i.dl, %i.dj
  br i1 %i.dx, label %._crit_edge230.i, label %.lr.ph229.i

.lr.ph229.i:                                      ; preds = %.lr.ph229.i.prol.loopexit, %.lr.ph229.i
  %.1227.i = phi double [ %i.eo, %.lr.ph229.i ], [ %.1227.i.unr, %.lr.ph229.i.prol.loopexit ]
  %.1148226.i = phi i64 [ %i.ep, %.lr.ph229.i ], [ %.1148226.i.unr, %.lr.ph229.i.prol.loopexit ] ; 5 uses
  %i.dy = icmp slt i64 %.1148226.i, %i.ak
  %i.dz = sub nsw i64 0, %.1148226.i
  %.v209.i = select i1 %i.dy, ptr %i.bn, ptr %i.bp
  %i.ea = getelementptr i8, ptr %.v209.i, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !23
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr [4 x i8], ptr @_CHAR_TO_HEX, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !7
  %i.ef = sitofp i32 %i.ee to double
  %i.eg = call double @llvm.fmuladd.f64(double %.1227.i, double 1.600000e+01, double %i.ef)
  %.not46 = icmp sgt i64 %.1148226.i, %i.ak
  %i.eh = sub nsw i64 1, %.1148226.i
  %.v209.i.1 = select i1 %.not46, ptr %i.bp, ptr %i.bn
  %i.ei = getelementptr i8, ptr %.v209.i.1, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !23
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr [4 x i8], ptr @_CHAR_TO_HEX, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7
  %i.en = sitofp i32 %i.em to double
  %i.eo = call double @llvm.fmuladd.f64(double %i.eg, double 1.600000e+01, double %i.en) ; 2 uses
  %i.ep = add nsw i64 %.1148226.i, -2             ; 2 uses
  %i.eq = icmp sgt i64 %i.ep, %i.dj
  br i1 %i.eq, label %.lr.ph229.i, label %._crit_edge230.i, !llvm.loop !249

._crit_edge230.i:                                 ; preds = %.lr.ph229.i.prol.loopexit, %.lr.ph229.i, %bb.y
  %.1.lcssa.i = phi double [ 0.000000e+00, %bb.y ], [ %.lcssa.unr, %.lr.ph229.i.prol.loopexit ], [ %i.eo, %.lr.ph229.i ]
  %i.er = icmp slt i64 %i.dj, %i.ak
  %i.es = sub nsw i64 0, %i.dj
  %.v206.i.a = select i1 %i.er, ptr %i.bn, ptr %i.bp
  %i.et = getelementptr i8, ptr %.v206.i.a, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !23
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr [4 x i8], ptr @_CHAR_TO_HEX, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !7  ; 3 uses
  %i.ey = shl nuw nsw i32 2, %i.dh                ; 2 uses
  %i.ez = sub nsw i32 16, %i.ey
  %i.fa = and i32 %i.ex, %i.ez
  %i.fb = sitofp i32 %i.fa to double
  %i.fc = call double @llvm.fmuladd.f64(double %.1.lcssa.i, double 1.600000e+01, double %i.fb) ; 4 uses
  %i.fd = and i32 %i.ex, %i.di
  %.not190.i = icmp eq i32 %i.fd, 0
  br i1 %.not190.i, label %.critedge202.i, label %bb.z

bb.z:                                             ; preds = %._crit_edge230.i
  %i.fe = shl nuw nsw i32 3, %i.dh
  %i.ff = add nsw i32 %i.fe, -1
  %i.fg = and i32 %i.ex, %i.ff
  %.not191.i = icmp eq i32 %i.fg, 0
  br i1 %.not191.i, label %bb.aa, label %.loopexit.i

bb.aa:                                            ; preds = %bb.z
  %i.fh = icmp eq i64 %i.dg, 3
  br i1 %i.fh, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.fi = add nsw i64 %i.dj, 1                    ; 2 uses
  %i.fj = icmp slt i64 %i.fi, %.0151.lcssa.i
  br i1 %i.fj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fk = icmp slt i64 %i.fi, %i.ak
  %i.fl = xor i64 %i.dj, -1
  %.v207.i.a = select i1 %i.fk, ptr %i.bn, ptr %i.bp
  %i.fm = getelementptr i8, ptr %.v207.i.a, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !23
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr [4 x i8], ptr @_CHAR_TO_HEX, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !7
  %i.fr = and i32 %i.fq, 1
  %.not192.i = icmp eq i32 %i.fr, 0
  br i1 %.not192.i, label %bb.ad, label %.loopexit.i

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.fs = icmp sgt i64 %i.df, 3
  br i1 %i.fs, label %.lr.ph, label %.critedge202.i

bb.ae:                                            ; preds = %.lr.ph
  %.2149.i = add nsw i64 %.2149.in.i38, -1
  %i.ft = icmp sgt i64 %.2149.in.i38, 1
  br i1 %i.ft, label %.lr.ph, label %.critedge202.i, !llvm.loop !250

.lr.ph:                                           ; preds = %bb.ad, %bb.ae
  %.2149.in.i38 = phi i64 [ %.2149.i, %bb.ae ], [ %i.dj, %bb.ad ] ; 4 uses
  %.not193.i = icmp sgt i64 %.2149.in.i38, %i.ak
  %i.fu = sub nsw i64 1, %.2149.in.i38
  %.v208.i = select i1 %.not193.i, ptr %i.bp, ptr %i.bn
  %i.fv = getelementptr i8, ptr %.v208.i, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !23
  %.not194.i = icmp eq i8 %i.fw, 48
  br i1 %.not194.i, label %bb.ae, label %.loopexit.i, !llvm.loop !250

.loopexit.i:                                      ; preds = %.lr.ph, %bb.ac, %bb.z
  %i.fx = uitofp nneg i32 %i.ey to double         ; 2 uses
  %i.fy = fadd double %i.fc, %i.fx                ; 3 uses
  %i.fz = icmp eq i64 %.0156.lcssa.i, 1024
  br i1 %i.fz, label %bb.af, label %.critedge202.i

bb.af:                                            ; preds = %.loopexit.i
  %i.ga = call double @ldexp(double noundef %i.fx, i32 noundef 53) #17, !tbaa !7, !inline_history !241
  %i.gb = fcmp oeq double %i.fy, %i.ga
  br i1 %i.gb, label %bb.aq, label %.critedge202.i

.critedge202.i:                                   ; preds = %bb.ae, %bb.ad, %bb.af, %.loopexit.i, %._crit_edge230.i
  %.2.i = phi double [ %i.fy, %bb.af ], [ %i.fy, %.loopexit.i ], [ %i.fc, %._crit_edge230.i ], [ %i.fc, %bb.ad ], [ %i.fc, %bb.ae ]
  %i.gc = shl nsw i64 %i.dj, 2
  %i.gd = add i64 %i.gc, %i.bi
  br label %.critedge2.thread.sink.split.i

.critedge2.thread.sink.split.i:                   ; preds = %.lr.ph223.i.prol.loopexit, %.lr.ph223.i, %.critedge202.i, %.preheader.i
  %.sink257.i = phi i64 [ %i.gd, %.critedge202.i ], [ %i.bi, %.preheader.i ], [ %i.bi, %.lr.ph223.i ], [ %i.bi, %.lr.ph223.i.prol.loopexit ]
  %.2.sink.i = phi double [ %.2.i, %.critedge202.i ], [ 0.000000e+00, %.preheader.i ], [ %.lcssa39.unr, %.lr.ph223.i.prol.loopexit ], [ %i.dc, %.lr.ph223.i ]
  %i.ge = trunc i64 %.sink257.i to i32
  %i.gf = call double @ldexp(double noundef %.2.sink.i, i32 noundef %i.ge) #17, !tbaa !7, !inline_history !241
  br label %.critedge2.thread.i

.critedge2.thread.i:                              ; preds = %bb.t, %.critedge2.thread.sink.split.i, %._crit_edge.i, %.critedge2.i, %bb.d
  %.9.i = phi ptr [ %.8.i, %._crit_edge.i ], [ %i.n, %bb.d ], [ %.8.i, %.critedge2.i ], [ %.8.i, %.critedge2.thread.sink.split.i ], [ %.8.i, %bb.t ]
  %.1153.i = phi i32 [ %.0152.i, %._crit_edge.i ], [ 0, %bb.d ], [ %.0152.i, %.critedge2.i ], [ %.0152.i, %.critedge2.thread.sink.split.i ], [ %.0152.i, %bb.t ]
  %.3.i = phi double [ 0.000000e+00, %._crit_edge.i ], [ %i.m, %bb.d ], [ 0.000000e+00, %.critedge2.i ], [ %i.gf, %.critedge2.thread.sink.split.i ], [ 0.000000e+00, %bb.t ] ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.critedge2.thread.i
  %.10.i = phi ptr [ %.9.i, %.critedge2.thread.i ], [ %i.gl, %bb.ag ] ; 3 uses
  %i.gg = load i8, ptr %.10.i, align 1, !tbaa !23
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !7
  %i.gk = and i32 %i.gj, 8
  %.not196.i.a = icmp eq i32 %i.gk, 0
  %i.gl = getelementptr i8, ptr %.10.i, i64 1
  br i1 %.not196.i.a, label %bb.ah, label %bb.ag, !llvm.loop !251

bb.ah:                                            ; preds = %bb.ag
  %.not197.i.a = icmp eq ptr %.10.i, %i.l
  br i1 %.not197.i.a, label %bb.ai, label %bb.ar

bb.ai:                                            ; preds = %bb.ah
  %.not198.i = icmp eq i32 %.1153.i, 0
  %i.gm = fneg double %.3.i
  %i.gn = select i1 %.not198.i, double %.3.i, double %i.gm
  %i.go = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !11 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 11168  ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i, label %bb.aj, label %_PyFreeList_Pop.exit.i.i

_PyFreeList_Pop.exit.i.i:                         ; preds = %bb.ai
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !17
  store ptr %i.gs, ptr %i.gq, align 8, !tbaa !14
  %i.gt = getelementptr i8, ptr %i.gp, i64 11176  ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !18
  %i.gv = add i64 %i.gu, -1
  store i64 %i.gv, ptr %i.gt, align 8, !tbaa !18
  br label %_PyObject_Init.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.gw = call ptr @PyObject_Malloc(i64 noundef 24) #17, !inline_history !252 ; 4 uses
  %.not.i203.i = icmp eq ptr %i.gw, null
  br i1 %.not.i203.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gx = call ptr @PyErr_NoMemory() #17, !inline_history !252
  br label %PyFloat_FromDouble.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.gy = getelementptr i8, ptr %i.gw, i64 8
  store ptr @PyFloat_Type, ptr %i.gy, align 8, !tbaa !20
  %i.gz = load i32, ptr @PyFloat_Type, align 8, !tbaa !23 ; 2 uses
  %i.ha = icmp ugt i32 %i.gz, -1073741825
  br i1 %i.ha, label %_PyObject_Init.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hb = add nuw i32 %i.gz, 1
  store i32 %i.hb, ptr @PyFloat_Type, align 8, !tbaa !23
  br label %_PyObject_Init.exit.i.i

_PyObject_Init.exit.i.i:                          ; preds = %bb.am, %bb.al, %_PyFreeList_Pop.exit.i.i
  %.sink.i.i = phi ptr [ %i.gr, %_PyFreeList_Pop.exit.i.i ], [ %i.gw, %bb.al ], [ %i.gw, %bb.am ] ; 3 uses
  call void @_Py_NewReference(ptr noundef nonnull %.sink.i.i) #17, !inline_history !252
  %i.hc = getelementptr i8, ptr %.sink.i.i, i64 16
  store double %i.gn, ptr %i.hc, align 8, !tbaa !24
  br label %PyFloat_FromDouble.exit.i

PyFloat_FromDouble.exit.i:                        ; preds = %_PyObject_Init.exit.i.i, %bb.ak
  %.07.i.i = phi ptr [ %.sink.i.i, %_PyObject_Init.exit.i.i ], [ %i.gx, %bb.ak ] ; 6 uses
  %i.hd = icmp ne ptr %0, @PyFloat_Type
  %i.he = icmp ne ptr %.07.i.i, null
  %or.cond5.i = select i1 %i.hd, i1 %i.he, i1 false
  br i1 %or.cond5.i, label %bb.an, label %float_fromhex_impl.exit

bb.an:                                            ; preds = %PyFloat_FromDouble.exit.i
  %i.hf = call ptr @PyObject_CallOneArg(ptr noundef %0, ptr noundef nonnull %.07.i.i) #17, !inline_history !241 ; 3 uses
  %i.hg = load i32, ptr %.07.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.hg, -1
  br i1 %.not.i.i, label %bb.ao, label %float_fromhex_impl.exit

bb.ao:                                            ; preds = %bb.an
  %i.hh = add nsw i32 %i.hg, -1                   ; 2 uses
  store i32 %i.hh, ptr %.07.i.i, align 8, !tbaa !23
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.ap, label %float_fromhex_impl.exit

bb.ap:                                            ; preds = %bb.ao
  call void @_Py_Dealloc(ptr noundef nonnull %.07.i.i) #17, !inline_history !241
  br label %float_fromhex_impl.exit

bb.aq:                                            ; preds = %bb.af, %bb.w, %bb.u
  %i.hj = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !44
  call void @PyErr_SetString(ptr noundef %i.hj, ptr noundef nonnull @.str.38) #17, !inline_history !241
  br label %float_fromhex_impl.exit

bb.ar:                                            ; preds = %bb.ah, %bb.q, %.loopexit212.i
  %i.hk = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !44
  call void @PyErr_SetString(ptr noundef %i.hk, ptr noundef nonnull @.str.39) #17, !inline_history !241
  br label %float_fromhex_impl.exit

bb.as:                                            ; preds = %bb.m
  %i.hl = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !44
  call void @PyErr_SetString(ptr noundef %i.hl, ptr noundef nonnull @.str.40) #17, !inline_history !241
  br label %float_fromhex_impl.exit

float_fromhex_impl.exit:                          ; preds = %bb.a, %PyFloat_FromDouble.exit.i, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as
  %.0.i = phi ptr [ null, %bb.aq ], [ null, %bb.ar ], [ null, %bb.a ], [ null, %bb.as ], [ %.07.i.i, %PyFloat_FromDouble.exit.i ], [ %i.hf, %bb.an ], [ %i.hf, %bb.ao ], [ %i.hf, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @float_hex(ptr noundef %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, @PyFloat_Type
  br i1 %.not.i.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.a
  %i.d = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef nonnull @PyFloat_Type) #17, !inline_history !253
  %.not46.i = icmp eq i32 %i.d, 0
  br i1 %.not46.i, label %bb.b, label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val28.i = load double, ptr %i.e, align 8, !tbaa !24
  br label %_Py_convert_int_to_double.exit.i

bb.b:                                             ; preds = %PyObject_TypeCheck.exit.i
  %.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.f = getelementptr i8, ptr %.val.i.i, i64 168
  %.val8.i.i = load i64, ptr %i.f, align 8, !tbaa !27
  %i.g = and i64 %.val8.i.i, 16777216
  %.not.i29.i = icmp eq i64 %i.g, 0
  br i1 %.not.i29.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call double @PyLong_AsDouble(ptr noundef nonnull %0) #17, !inline_history !253 ; 2 uses
  %i.i = fcmp oeq double %i.h, -1.000000e+00
  br i1 %i.i, label %bb.d, label %_Py_convert_int_to_double.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @PyErr_Occurred() #17, !inline_history !253
  %.not7.i.i = icmp eq ptr %i.j, null
  br i1 %.not7.i.i, label %.thread60.i, label %float_hex_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.k = load i32, ptr @_Py_NotImplementedStruct, align 8, !tbaa !23 ; 2 uses
  %i.l = icmp ugt i32 %i.k, -1073741825
  br i1 %i.l, label %float_hex_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i32 %i.k, 1
  store i32 %i.m, ptr @_Py_NotImplementedStruct, align 8, !tbaa !23
  br label %float_hex_impl.exit

_Py_convert_int_to_double.exit.i:                 ; preds = %bb.c, %PyObject_TypeCheck.exit.thread.i
  %.038.i = phi double [ %.val28.i, %PyObject_TypeCheck.exit.thread.i ], [ %i.h, %bb.c ] ; 5 uses
  %i.n = fcmp uno double %.038.i, 0.000000e+00
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_Py_convert_int_to_double.exit.i
  %i.o = tail call double @llvm.fabs.f64(double %.038.i) ; 2 uses
end_hunk_0
