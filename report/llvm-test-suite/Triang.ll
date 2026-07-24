inline.NumInlined: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@Trianglelise:bb.a
  %i.da = sub i32 %i.p, %spec.select
  %i.db = icmp ugt i32 %i.da, -4
  br i1 %i.db, label %xty.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %.lr.ph.i143.prol.loopexit, %.lr.ph.i143
  %indvars.iv.i144 = phi i64 [ %indvars.iv.next.i145.3, %.lr.ph.i143 ], [ %indvars.iv.i144.unr, %.lr.ph.i143.prol.loopexit ] ; 5 uses
  %.0911.i = phi double [ %i.dq, %.lr.ph.i143 ], [ %.0911.i.unr, %.lr.ph.i143.prol.loopexit ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i144
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !11 ; 2 uses
  %i.de = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dd, double %.0911.i)
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i144
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !11 ; 2 uses
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dh, double %i.de)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i144
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !11 ; 2 uses
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dl, double %i.di)
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i144
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load double, ptr %i.do, align 8, !tbaa !11 ; 2 uses
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.dp, double %i.dm) ; 2 uses
  %indvars.iv.next.i145.3 = add nuw nsw i64 %indvars.iv.i144, 4 ; 2 uses
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next.i145.3 to i32
  %exitcond.not.i146.3 = icmp eq i32 %i.cv, %lftr.wideiv.i.3
  br i1 %exitcond.not.i146.3, label %xty.exit, label %.lr.ph.i143, !llvm.loop !21

xty.exit:                                         ; preds = %.lr.ph.i143.prol.loopexit, %.lr.ph.i143, %House.exit
  %.09.lcssa.i = phi double [ 0.000000e+00, %House.exit ], [ %.lcssa272.unr, %.lr.ph.i143.prol.loopexit ], [ %i.dq, %.lr.ph.i143 ]
  %i.dr = fdiv double 1.000000e+00, %.09.lcssa.i  ; 3 uses
  %.not186 = icmp sgt i64 %indvars.iv, %i.bm
  br i1 %.not186, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %xty.exit
  %i.ds = add nuw nsw i32 %spec.select, 1
  %i.dt = sub i32 %spec.select, %i.m
  %xtraiter282 = and i32 %i.dt, 3                 ; 2 uses
  %lcmp.mod283.not = icmp eq i32 %xtraiter282, 0
  %i.du = sub i32 %i.n, %spec.select
  %i.dv = icmp ugt i32 %i.du, -4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %xty.exit156
  %indvars.iv211 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next212, %xty.exit156 ] ; 4 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv211
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !8  ; 5 uses
  br i1 %.not12.i.i.not, label %.lr.ph.i149.preheader, label %xty.exit156

.lr.ph.i149.preheader:                            ; preds = %bb.c
  br i1 %lcmp.mod283.not, label %.lr.ph.i149.prol.loopexit, label %.lr.ph.i149.prol

.lr.ph.i149.prol:                                 ; preds = %.lr.ph.i149.preheader, %.lr.ph.i149.prol
  %indvars.iv.i150.prol = phi i64 [ %indvars.iv.next.i152.prol, %.lr.ph.i149.prol ], [ %indvars.iv.next, %.lr.ph.i149.preheader ] ; 3 uses
  %.0911.i151.prol = phi double [ %i.ec, %.lr.ph.i149.prol ], [ 0.000000e+00, %.lr.ph.i149.preheader ]
  %prol.iter284 = phi i32 [ %prol.iter284.next, %.lr.ph.i149.prol ], [ 0, %.lr.ph.i149.preheader ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.i150.prol
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !11
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i150.prol
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !11
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.eb, double %.0911.i151.prol) ; 3 uses
  %indvars.iv.next.i152.prol = add nuw nsw i64 %indvars.iv.i150.prol, 1 ; 2 uses
  %prol.iter284.next = add i32 %prol.iter284, 1   ; 2 uses
  %prol.iter284.cmp.not = icmp eq i32 %prol.iter284.next, %xtraiter282
  br i1 %prol.iter284.cmp.not, label %.lr.ph.i149.prol.loopexit, label %.lr.ph.i149.prol, !llvm.loop !25

.lr.ph.i149.prol.loopexit:                        ; preds = %.lr.ph.i149.prol, %.lr.ph.i149.preheader
  %.lcssa273.unr = phi double [ poison, %.lr.ph.i149.preheader ], [ %i.ec, %.lr.ph.i149.prol ]
  %indvars.iv.i150.unr = phi i64 [ %indvars.iv.next, %.lr.ph.i149.preheader ], [ %indvars.iv.next.i152.prol, %.lr.ph.i149.prol ]
  %.0911.i151.unr = phi double [ 0.000000e+00, %.lr.ph.i149.preheader ], [ %i.ec, %.lr.ph.i149.prol ]
  br i1 %i.dv, label %xty.exit156.loopexit, label %.lr.ph.i149

.lr.ph.i149:                                      ; preds = %.lr.ph.i149.prol.loopexit, %.lr.ph.i149
  %indvars.iv.i150 = phi i64 [ %indvars.iv.next.i152.3, %.lr.ph.i149 ], [ %indvars.iv.i150.unr, %.lr.ph.i149.prol.loopexit ] ; 6 uses
  %.0911.i151 = phi double [ %i.ew, %.lr.ph.i149 ], [ %.0911.i151.unr, %.lr.ph.i149.prol.loopexit ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.i150
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !11
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i150
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !11
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.eg, double %.0911.i151)
  %indvars.iv.next.i152 = add nuw nsw i64 %indvars.iv.i150, 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next.i152
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !11
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i152
  %i.el = load double, ptr %i.ek, align 8, !tbaa !11
  %i.em = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.el, double %i.eh)
  %indvars.iv.next.i152.1 = add nuw nsw i64 %indvars.iv.i150, 2 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next.i152.1
  %i.eo = load double, ptr %i.en, align 8, !tbaa !11
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i152.1
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !11
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eo, double %i.eq, double %i.em)
  %indvars.iv.next.i152.2 = add nuw nsw i64 %indvars.iv.i150, 3 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next.i152.2
  %i.et = load double, ptr %i.es, align 8, !tbaa !11
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i152.2
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !11
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.et, double %i.ev, double %i.er) ; 2 uses
  %indvars.iv.next.i152.3 = add nuw nsw i64 %indvars.iv.i150, 4 ; 2 uses
  %lftr.wideiv.i153.3 = trunc i64 %indvars.iv.next.i152.3 to i32
  %exitcond.not.i154.3 = icmp eq i32 %i.ds, %lftr.wideiv.i153.3
  br i1 %exitcond.not.i154.3, label %xty.exit156.loopexit, label %.lr.ph.i149, !llvm.loop !21

xty.exit156.loopexit:                             ; preds = %.lr.ph.i149, %.lr.ph.i149.prol.loopexit
  %.lcssa273 = phi double [ %.lcssa273.unr, %.lr.ph.i149.prol.loopexit ], [ %i.ew, %.lr.ph.i149 ]
  %i.ex = fmul double %.lcssa273, 2.000000e+00
  br label %xty.exit156

xty.exit156:                                      ; preds = %xty.exit156.loopexit, %bb.c
  %.09.lcssa.i155 = phi double [ 0.000000e+00, %bb.c ], [ %i.ex, %xty.exit156.loopexit ]
  %i.ey = fmul double %i.dr, %.09.lcssa.i155
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv211
  store double %i.ey, ptr %i.ez, align 8, !tbaa !11
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1
  %.not.not = icmp slt i64 %indvars.iv211, %i.bm
  br i1 %.not.not, label %bb.c, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %xty.exit156, %xty.exit
  br i1 %.not12.i.i.not, label %.lr.ph.preheader.i158, label %xty.exit166

.lr.ph.preheader.i158:                            ; preds = %._crit_edge
  %i.fa = add nuw nsw i32 %spec.select, 1
  %i.fb = sub i32 %spec.select, %i.k
  %xtraiter285 = and i32 %i.fb, 3                 ; 2 uses
  %lcmp.mod286.not = icmp eq i32 %xtraiter285, 0
  br i1 %lcmp.mod286.not, label %.lr.ph.i159.prol.loopexit, label %.lr.ph.i159.prol

.lr.ph.i159.prol:                                 ; preds = %.lr.ph.preheader.i158, %.lr.ph.i159.prol
  %indvars.iv.i160.prol = phi i64 [ %indvars.iv.next.i162.prol, %.lr.ph.i159.prol ], [ %indvars.iv.next, %.lr.ph.preheader.i158 ] ; 3 uses
  %.0911.i161.prol = phi double [ %i.fg, %.lr.ph.i159.prol ], [ 0.000000e+00, %.lr.ph.preheader.i158 ]
  %prol.iter287 = phi i32 [ %prol.iter287.next, %.lr.ph.i159.prol ], [ 0, %.lr.ph.preheader.i158 ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i160.prol
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !11
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i160.prol
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !11
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.fd, double %i.ff, double %.0911.i161.prol) ; 3 uses
  %indvars.iv.next.i162.prol = add nuw nsw i64 %indvars.iv.i160.prol, 1 ; 2 uses
  %prol.iter287.next = add i32 %prol.iter287, 1   ; 2 uses
  %prol.iter287.cmp.not = icmp eq i32 %prol.iter287.next, %xtraiter285
  br i1 %prol.iter287.cmp.not, label %.lr.ph.i159.prol.loopexit, label %.lr.ph.i159.prol, !llvm.loop !27

.lr.ph.i159.prol.loopexit:                        ; preds = %.lr.ph.i159.prol, %.lr.ph.preheader.i158
  %.lcssa274.unr = phi double [ poison, %.lr.ph.preheader.i158 ], [ %i.fg, %.lr.ph.i159.prol ]
  %indvars.iv.i160.unr = phi i64 [ %indvars.iv.next, %.lr.ph.preheader.i158 ], [ %indvars.iv.next.i162.prol, %.lr.ph.i159.prol ]
  %.0911.i161.unr = phi double [ 0.000000e+00, %.lr.ph.preheader.i158 ], [ %i.fg, %.lr.ph.i159.prol ]
  %i.fh = sub i32 %i.l, %spec.select
  %i.fi = icmp ugt i32 %i.fh, -4
  br i1 %i.fi, label %xty.exit166, label %.lr.ph.i159

.lr.ph.i159:                                      ; preds = %.lr.ph.i159.prol.loopexit, %.lr.ph.i159
  %indvars.iv.i160 = phi i64 [ %indvars.iv.next.i162.3, %.lr.ph.i159 ], [ %indvars.iv.i160.unr, %.lr.ph.i159.prol.loopexit ] ; 6 uses
  %.0911.i161 = phi double [ %i.gc, %.lr.ph.i159 ], [ %.0911.i161.unr, %.lr.ph.i159.prol.loopexit ]
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i160
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !11
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i160
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !11
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fk, double %i.fm, double %.0911.i161)
  %indvars.iv.next.i162 = add nuw nsw i64 %indvars.iv.i160, 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i162
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !11
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i162
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !11
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.fr, double %i.fn)
  %indvars.iv.next.i162.1 = add nuw nsw i64 %indvars.iv.i160, 2 ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i162.1
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !11
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i162.1
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !11
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fu, double %i.fw, double %i.fs)
  %indvars.iv.next.i162.2 = add nuw nsw i64 %indvars.iv.i160, 3 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i162.2
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !11
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i162.2
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !11
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.fz, double %i.gb, double %i.fx) ; 2 uses
  %indvars.iv.next.i162.3 = add nuw nsw i64 %indvars.iv.i160, 4 ; 2 uses
  %lftr.wideiv.i163.3 = trunc i64 %indvars.iv.next.i162.3 to i32
  %exitcond.not.i164.3 = icmp eq i32 %i.fa, %lftr.wideiv.i163.3
  br i1 %exitcond.not.i164.3, label %xty.exit166, label %.lr.ph.i159, !llvm.loop !21

xty.exit166:                                      ; preds = %.lr.ph.i159.prol.loopexit, %.lr.ph.i159, %._crit_edge
  %.09.lcssa.i165 = phi double [ 0.000000e+00, %._crit_edge ], [ %.lcssa274.unr, %.lr.ph.i159.prol.loopexit ], [ %i.gc, %.lr.ph.i159 ]
  %.not137188.not = icmp slt i64 %indvars.iv, %i.bm ; 2 uses
  br i1 %.not137188.not, label %.lr.ph190, label %._crit_edge194

.lr.ph190:                                        ; preds = %xty.exit166
  %i.gd = fneg double %i.dr
  %i.ge = fmul double %.09.lcssa.i165, %i.gd      ; 2 uses
  %i.gf = sub i64 %i.bm, %indvars.iv              ; 3 uses
  %min.iters.check256 = icmp ult i64 %i.gf, 4
  br i1 %min.iters.check256, label %scalar.ph255.preheader, label %vector.ph257

vector.ph257:                                     ; preds = %.lr.ph190
  %n.vec259 = and i64 %i.gf, -4                   ; 3 uses
  %i.gg = add i64 %indvars.iv214, %n.vec259
  %broadcast.splatinsert260 = insertelement <2 x double> poison, double %i.ge, i64 0
  %broadcast.splat261 = shufflevector <2 x double> %broadcast.splatinsert260, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph257
  %index263 = phi i64 [ 0, %vector.ph257 ], [ %index.next268, %vector.body262 ] ; 2 uses
  %i.gh = add nuw i64 %indvars.iv214, %index263   ; 3 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load264 = load <2 x double>, ptr %i.gi, align 8, !tbaa !11
  %wide.load265 = load <2 x double>, ptr %i.gj, align 8, !tbaa !11
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gh ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %wide.load266 = load <2 x double>, ptr %i.gk, align 8, !tbaa !11
  %wide.load267 = load <2 x double>, ptr %i.gl, align 8, !tbaa !11
  %i.gm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat261, <2 x double> %wide.load266, <2 x double> %wide.load264)
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat261, <2 x double> %wide.load267, <2 x double> %wide.load265)
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.gh ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store <2 x double> %i.gm, ptr %i.go, align 8, !tbaa !11
  store <2 x double> %i.gn, ptr %i.gp, align 8, !tbaa !11
  %index.next268 = add nuw i64 %index263, 4       ; 2 uses
  %i.gq = icmp eq i64 %index.next268, %n.vec259
  br i1 %i.gq, label %middle.block269, label %vector.body262, !llvm.loop !28

middle.block269:                                  ; preds = %vector.body262
  %cmp.n270 = icmp eq i64 %i.gf, %n.vec259
  br i1 %cmp.n270, label %.preheader177.preheader, label %scalar.ph255.preheader

scalar.ph255.preheader:                           ; preds = %.lr.ph190, %middle.block269
  %indvars.iv216.ph = phi i64 [ %indvars.iv214, %.lr.ph190 ], [ %i.gg, %middle.block269 ]
  br label %scalar.ph255

scalar.ph255:                                     ; preds = %scalar.ph255.preheader, %scalar.ph255
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %scalar.ph255 ], [ %indvars.iv216.ph, %scalar.ph255.preheader ] ; 5 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv216
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !11
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv216
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !11
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gu, double %i.gs)
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv216
  store double %i.gv, ptr %i.gw, align 8, !tbaa !11
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1
  %.not137.not = icmp slt i64 %indvars.iv216, %i.bm
  br i1 %.not137.not, label %scalar.ph255, label %.preheader177.preheader, !llvm.loop !31

.preheader177.preheader:                          ; preds = %scalar.ph255, %middle.block269
  br label %.preheader177

.preheader177:                                    ; preds = %.preheader177.preheader, %.unr-lcssa
  %indvar = phi i64 [ 0, %.preheader177.preheader ], [ %indvar.next, %.unr-lcssa ] ; 3 uses
  %indvars.iv219 = phi i64 [ %indvars.iv214, %.preheader177.preheader ], [ %indvars.iv.next220, %.unr-lcssa ] ; 15 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.bm, i64 %indvars.iv219) ; 2 uses
  %i.gx = add i64 %indvars.iv, %indvar
  %i.gy = sub i64 %smax, %i.gx
  %.neg = add i64 %.neg300, %indvar
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv219
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !11 ; 3 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv219
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !11 ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv219
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !8  ; 3 uses
  %xtraiter290 = and i64 %i.gy, 1
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  br i1 %lcmp.mod291.not, label %.prol.loopexit289, label %.prol.loopexit289.unr-lcssa

.prol.loopexit289.unr-lcssa:                      ; preds = %.preheader177
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv219
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !11
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv219
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !11
  %i.hj = fmul double %i.hc, %i.hi
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.ha, double %i.hg, double %i.hj)
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv219 ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !11
  %i.hn = fsub double %i.hm, %i.hk                ; 2 uses
  store double %i.hn, ptr %i.hl, align 8, !tbaa !11
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv219
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !8
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv219
  store double %i.hn, ptr %i.hq, align 8, !tbaa !11
  %indvars.iv.next222.prol = add nuw nsw i64 %indvars.iv219, 1
  br label %.prol.loopexit289

.prol.loopexit289:                                ; preds = %.prol.loopexit289.unr-lcssa, %.preheader177
  %indvars.iv221.unr = phi i64 [ %indvars.iv219, %.preheader177 ], [ %indvars.iv.next222.prol, %.prol.loopexit289.unr-lcssa ]
  %i.hr = icmp eq i64 %smax, %.neg
  br i1 %i.hr, label %.unr-lcssa, label %.preheader177.new

.preheader177.new:                                ; preds = %.prol.loopexit289, %.preheader177.new
  %indvars.iv221 = phi i64 [ %indvars.iv.next222.1, %.preheader177.new ], [ %indvars.iv221.unr, %.prol.loopexit289 ] ; 6 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv221
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !11
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv221
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !11
  %i.hw = fmul double %i.hc, %i.hv
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.ha, double %i.ht, double %i.hw)
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv221 ; 2 uses
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !11
  %i.ia = fsub double %i.hz, %i.hx                ; 2 uses
  store double %i.ia, ptr %i.hy, align 8, !tbaa !11
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv221
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !8
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv219
  store double %i.ia, ptr %i.id, align 8, !tbaa !11
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 5 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next222
  %i.if = load double, ptr %i.ie, align 8, !tbaa !11
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next222
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !11
  %i.ii = fmul double %i.hc, %i.ih
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.ha, double %i.if, double %i.ii)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.next222 ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !11
  %i.im = fsub double %i.il, %i.ij                ; 2 uses
  store double %i.im, ptr %i.ik, align 8, !tbaa !11
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next222
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !8
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv219
  store double %i.im, ptr %i.ip, align 8, !tbaa !11
  %indvars.iv.next222.1 = add nuw nsw i64 %indvars.iv221, 2
  %.not141.not.1 = icmp slt i64 %indvars.iv.next222, %i.bm
  br i1 %.not141.not.1, label %.preheader177.new, label %.unr-lcssa, !llvm.loop !32

.unr-lcssa:                                       ; preds = %.preheader177.new, %.prol.loopexit289
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1
  %.not138.not = icmp slt i64 %indvars.iv219, %i.bm
  %indvar.next = add i64 %indvar, 1
  br i1 %.not138.not, label %.preheader177, label %._crit_edge194, !llvm.loop !33

._crit_edge194:                                   ; preds = %.unr-lcssa, %xty.exit166
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !8  ; 6 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next ; 2 uses
  %i.it = load double, ptr %i.is, align 8, !tbaa !11
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !11
  %i.iw = fsub double %i.it, %i.iv                ; 2 uses
  store double %i.iw, ptr %i.is, align 8, !tbaa !11
  %i.ix = load ptr, ptr %i.be, align 8, !tbaa !8
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv
  store double %i.iw, ptr %i.iy, align 8, !tbaa !11
  %i.iz = add nuw nsw i64 %indvars.iv, 2
  %.not139195 = icmp sgt i64 %i.iz, %i.bm
  br i1 %.not139195, label %.preheader179, label %.lr.ph198.preheader

.lr.ph198.preheader:                              ; preds = %._crit_edge194
  %smax293 = tail call i64 @llvm.smax.i64(i64 %i.bm, i64 %indvars.iv225) ; 2 uses
  %i.ja = add nsw i64 %smax293, %i.j
  %reass.sub301 = sub nsw i64 %smax293, %indvars.iv
  %i.jb = add nsw i64 %reass.sub301, -2
  %xtraiter294 = and i64 %i.ja, 3                 ; 2 uses
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  br i1 %lcmp.mod295.not, label %.lr.ph198.prol.loopexit, label %.lr.ph198.prol

.lr.ph198.prol:                                   ; preds = %.lr.ph198.preheader, %.lr.ph198.prol
  %indvars.iv227.prol = phi i64 [ %indvars.iv.next228.prol, %.lr.ph198.prol ], [ %indvars.iv225, %.lr.ph198.preheader ] ; 3 uses
  %prol.iter296 = phi i64 [ %prol.iter296.next, %.lr.ph198.prol ], [ 0, %.lr.ph198.preheader ]
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv227.prol
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !8
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.je, align 8, !tbaa !11
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv227.prol
  store double 0.000000e+00, ptr %i.jf, align 8, !tbaa !11
  %indvars.iv.next228.prol = add nuw nsw i64 %indvars.iv227.prol, 1 ; 2 uses
  %prol.iter296.next = add i64 %prol.iter296, 1   ; 2 uses
  %prol.iter296.cmp.not = icmp eq i64 %prol.iter296.next, %xtraiter294
  br i1 %prol.iter296.cmp.not, label %.lr.ph198.prol.loopexit, label %.lr.ph198.prol, !llvm.loop !34

.lr.ph198.prol.loopexit:                          ; preds = %.lr.ph198.prol, %.lr.ph198.preheader
  %indvars.iv227.unr = phi i64 [ %indvars.iv225, %.lr.ph198.preheader ], [ %indvars.iv.next228.prol, %.lr.ph198.prol ]
  %i.jg = icmp ult i64 %i.jb, 3
  br i1 %i.jg, label %.preheader179, label %.lr.ph198

.preheader179:                                    ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198, %._crit_edge194
  %i.jh = fmul double %i.dr, 2.000000e+00
  %i.ji = add nuw nsw i32 %spec.select, 1
  %i.jj = sub i32 %spec.select, %i.h
  %xtraiter297 = and i32 %i.jj, 3                 ; 2 uses
  %lcmp.mod298.not = icmp eq i32 %xtraiter297, 0
  %i.jk = sub i32 %i.i, %spec.select
  %i.jl = icmp ugt i32 %i.jk, -4
  br label %bb.d

.lr.ph198:                                        ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198
  %indvars.iv227 = phi i64 [ %indvars.iv.next228.3, %.lr.ph198 ], [ %indvars.iv227.unr, %.lr.ph198.prol.loopexit ] ; 6 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv227
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !8
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.jo, align 8, !tbaa !11
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv227
  store double 0.000000e+00, ptr %i.jp, align 8, !tbaa !11
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next228
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !8
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.js, align 8, !tbaa !11
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next228
  store double 0.000000e+00, ptr %i.jt, align 8, !tbaa !11
  %indvars.iv.next228.1 = add nuw nsw i64 %indvars.iv227, 2 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next228.1
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !8
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.jw, align 8, !tbaa !11
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next228.1
  store double 0.000000e+00, ptr %i.jx, align 8, !tbaa !11
  %indvars.iv.next228.2 = add nuw nsw i64 %indvars.iv227, 3 ; 3 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next228.2
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !8
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.ka, align 8, !tbaa !11
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next228.2
  store double 0.000000e+00, ptr %i.kb, align 8, !tbaa !11
  %indvars.iv.next228.3 = add nuw nsw i64 %indvars.iv227, 4
  %.not139.not.3 = icmp slt i64 %indvars.iv.next228.2, %i.bm
  br i1 %.not139.not.3, label %.lr.ph198, label %.preheader179, !llvm.loop !35

.preheader178:                                    ; preds = %xty.exit176
  br i1 %.not137188.not, label %.preheader.preheader, label %.split

.preheader.preheader:                             ; preds = %.preheader178
  %i.kc = sub i64 %i.bm, %indvars.iv              ; 3 uses
  %min.iters.check = icmp ult i64 %i.kc, 4
  %n.vec = and i64 %i.kc, -4                      ; 3 uses
  %i.kd = add i64 %indvars.iv214, %n.vec
  %cmp.n = icmp eq i64 %i.kc, %n.vec
  br label %.preheader

bb.d:                                             ; preds = %.preheader179, %xty.exit176
  %indvars.iv230 = phi i64 [ 0, %.preheader179 ], [ %indvars.iv.next231, %xty.exit176 ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv230
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !8  ; 5 uses
  br i1 %.not12.i.i.not, label %.lr.ph.i169.preheader, label %xty.exit176

.lr.ph.i169.preheader:                            ; preds = %bb.d
  br i1 %lcmp.mod298.not, label %.lr.ph.i169.prol.loopexit, label %.lr.ph.i169.prol

.lr.ph.i169.prol:                                 ; preds = %.lr.ph.i169.preheader, %.lr.ph.i169.prol
  %indvars.iv.i170.prol = phi i64 [ %indvars.iv.next.i172.prol, %.lr.ph.i169.prol ], [ %indvars.iv.next, %.lr.ph.i169.preheader ] ; 3 uses
  %.0911.i171.prol = phi double [ %i.kk, %.lr.ph.i169.prol ], [ 0.000000e+00, %.lr.ph.i169.preheader ]
  %prol.iter299 = phi i32 [ %prol.iter299.next, %.lr.ph.i169.prol ], [ 0, %.lr.ph.i169.preheader ]
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv.i170.prol
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !11
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i170.prol
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !11
  %i.kk = tail call double @llvm.fmuladd.f64(double %i.kh, double %i.kj, double %.0911.i171.prol) ; 3 uses
  %indvars.iv.next.i172.prol = add nuw nsw i64 %indvars.iv.i170.prol, 1 ; 2 uses
  %prol.iter299.next = add i32 %prol.iter299, 1   ; 2 uses
  %prol.iter299.cmp.not = icmp eq i32 %prol.iter299.next, %xtraiter297
  br i1 %prol.iter299.cmp.not, label %.lr.ph.i169.prol.loopexit, label %.lr.ph.i169.prol, !llvm.loop !36

.lr.ph.i169.prol.loopexit:                        ; preds = %.lr.ph.i169.prol, %.lr.ph.i169.preheader
  %.lcssa275.unr = phi double [ poison, %.lr.ph.i169.preheader ], [ %i.kk, %.lr.ph.i169.prol ]
  %indvars.iv.i170.unr = phi i64 [ %indvars.iv.next, %.lr.ph.i169.preheader ], [ %indvars.iv.next.i172.prol, %.lr.ph.i169.prol ]
  %.0911.i171.unr = phi double [ 0.000000e+00, %.lr.ph.i169.preheader ], [ %i.kk, %.lr.ph.i169.prol ]
  br i1 %i.jl, label %xty.exit176, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %.lr.ph.i169.prol.loopexit, %.lr.ph.i169
  %indvars.iv.i170 = phi i64 [ %indvars.iv.next.i172.3, %.lr.ph.i169 ], [ %indvars.iv.i170.unr, %.lr.ph.i169.prol.loopexit ] ; 6 uses
  %.0911.i171 = phi double [ %i.le, %.lr.ph.i169 ], [ %.0911.i171.unr, %.lr.ph.i169.prol.loopexit ]
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv.i170
  %i.km = load double, ptr %i.kl, align 8, !tbaa !11
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i170
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !11
  %i.kp = tail call double @llvm.fmuladd.f64(double %i.km, double %i.ko, double %.0911.i171)
  %indvars.iv.next.i172 = add nuw nsw i64 %indvars.iv.i170, 1 ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv.next.i172
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !11
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i172
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !11
  %i.ku = tail call double @llvm.fmuladd.f64(double %i.kr, double %i.kt, double %i.kp)
  %indvars.iv.next.i172.1 = add nuw nsw i64 %indvars.iv.i170, 2 ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv.next.i172.1
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !11
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i172.1
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !11
  %i.kz = tail call double @llvm.fmuladd.f64(double %i.kw, double %i.ky, double %i.ku)
  %indvars.iv.next.i172.2 = add nuw nsw i64 %indvars.iv.i170, 3 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv.next.i172.2
  %i.lb = load double, ptr %i.la, align 8, !tbaa !11
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i172.2
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !11
  %i.le = tail call double @llvm.fmuladd.f64(double %i.lb, double %i.ld, double %i.kz) ; 2 uses
  %indvars.iv.next.i172.3 = add nuw nsw i64 %indvars.iv.i170, 4 ; 2 uses
  %lftr.wideiv.i173.3 = trunc i64 %indvars.iv.next.i172.3 to i32
  %exitcond.not.i174.3 = icmp eq i32 %i.ji, %lftr.wideiv.i173.3
  br i1 %exitcond.not.i174.3, label %xty.exit176, label %.lr.ph.i169, !llvm.loop !21

xty.exit176:                                      ; preds = %.lr.ph.i169.prol.loopexit, %.lr.ph.i169, %bb.d
  %.09.lcssa.i175 = phi double [ 0.000000e+00, %bb.d ], [ %.lcssa275.unr, %.lr.ph.i169.prol.loopexit ], [ %i.le, %.lr.ph.i169 ]
  %i.lf = fmul double %i.jh, %.09.lcssa.i175
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv230
  store double %i.lf, ptr %i.lg, align 8, !tbaa !11
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next231, 51
  br i1 %exitcond.not, label %.preheader178, label %bb.d, !llvm.loop !37

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge203
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %._crit_edge203 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv236
  %i.li = load double, ptr %i.lh, align 8, !tbaa !11
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv236
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !8  ; 2 uses
  %i.ll = fneg double %i.li                       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ll, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lm = add nuw i64 %indvars.iv214, %index      ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %wide.load = load <2 x double>, ptr %i.ln, align 8, !tbaa !11
  %wide.load252 = load <2 x double>, ptr %i.lo, align 8, !tbaa !11
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.lm ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16 ; 2 uses
  %wide.load253 = load <2 x double>, ptr %i.lp, align 8, !tbaa !11
  %wide.load254 = load <2 x double>, ptr %i.lq, align 8, !tbaa !11
  %i.lr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load253)
  %i.ls = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load252, <2 x double> %wide.load254)
  store <2 x double> %i.lr, ptr %i.lp, align 8, !tbaa !11
  store <2 x double> %i.ls, ptr %i.lq, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lt = icmp eq i64 %index.next, %n.vec
  br i1 %i.lt, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge203, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv233.ph = phi i64 [ %indvars.iv214, %.preheader ], [ %i.kd, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %scalar.ph ], [ %indvars.iv233.ph, %scalar.ph.preheader ] ; 4 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv233
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !11
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %indvars.iv233 ; 2 uses
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !11
  %i.ly = tail call double @llvm.fmuladd.f64(double %i.ll, double %i.lv, double %i.lx)
  store double %i.ly, ptr %i.lw, align 8, !tbaa !11
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1
  %.not140.not = icmp slt i64 %indvars.iv233, %i.bm
  br i1 %.not140.not, label %scalar.ph, label %._crit_edge203, !llvm.loop !39

._crit_edge203:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next237, 51
  br i1 %exitcond239.not, label %.split, label %.preheader, !llvm.loop !40

.split:                                           ; preds = %._crit_edge203, %.preheader178
  %i.lz = add nsw i32 %i.s, %i.g
  %i.ma = icmp slt i32 %i.lz, 50
  %i.mb = add nuw nsw i32 %.0128206, %i.g
  %i.mc = trunc i64 %indvars.iv to i32
  %i.md = sub i32 49, %i.mc
  %.1129 = select i1 %i.ma, i32 %i.mb, i32 %i.md
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1
  %exitcond241.not = icmp eq i64 %indvars.iv.next, 49
  br i1 %exitcond241.not, label %bb.e, label %bb.b, !llvm.loop !41

bb.e:                                             ; preds = %.split
  tail call void @free(ptr noundef %i.c) #8
  tail call void @free(ptr noundef nonnull %i.d) #8
  tail call void @free(ptr noundef %i.e) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi ptr [ %i.b, %bb.e ], [ %0, %bb.a ]
  ret ptr %.0
}

declare ptr @newMatrix() local_unnamed_addr #4

declare ptr @newIdMatrix() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 double", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !16, !29, !30}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !16, !30, !29}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16, !29, !30}
!39 = distinct !{!39, !16, !30, !29}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
end_hunk_0
