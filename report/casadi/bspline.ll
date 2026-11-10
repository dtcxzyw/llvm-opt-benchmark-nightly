Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/bspline?download=true
inline.NumInlined: 2692
inline.NumDeleted: 811
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6casadi19casadi_nd_boor_evalIdEEvPT_xPKS1_PKxS6_S6_S4_xS4_S6_PxS2_:bb.a
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %i.bj, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit

.lr.ph.i.preheader:                               ; preds = %bb.l
  %i.bv = add nuw i64 %i.m, 1                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader277, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bv, -4                      ; 4 uses
  %i.bw = shl i64 %n.vec, 3
  %i.bx = getelementptr i8, ptr %i.k, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %next.gep, align 8, !tbaa !59
  store <2 x double> splat (double 1.000000e+00), ptr %i.bz, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !301

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit, label %.lr.ph.i.preheader277

.lr.ph.i.preheader277:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.08.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.057.i.ph = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader277, %.lr.ph.i
  %.08.i = phi i64 [ %i.cc, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader277 ] ; 2 uses
  %.057.i = phi ptr [ %i.cb, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader277 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.057.i, i64 8
  store double 1.000000e+00, ptr %.057.i, align 8, !tbaa !59
  %i.cc = add nuw nsw i64 %.08.i, 1
  %exitcond.not.i181 = icmp eq i64 %.08.i, %i.m
  br i1 %exitcond.not.i181, label %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit, label %.lr.ph.i, !llvm.loop !302

bb.m:                                             ; preds = %bb.k
  %i.cd = fcmp oeq double %i.u, %i.bq
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m
  store double 1.000000e+00, ptr %i.ce, align 8, !tbaa !59
  br label %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit

bb.o:                                             ; preds = %bb.m
  %i.cf = getelementptr [8 x i8], ptr %i.p, i64 %.147.i
  %i.cg = getelementptr [8 x i8], ptr %i.cf, i64 %i.m
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !59
  %i.ci = fcmp oeq double %i.ch, %i.u
  %i.cj = getelementptr [8 x i8], ptr %i.k, i64 %i.m ; 2 uses
  br i1 %i.ci, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8
  store double 1.000000e+00, ptr %i.ck, align 8, !tbaa !59
  br label %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit

bb.q:                                             ; preds = %bb.o
  store double 1.000000e+00, ptr %i.cj, align 8, !tbaa !59
  br label %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit

_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit:         ; preds = %.lr.ph.i, %middle.block, %bb.l, %bb.p, %bb.q, %bb.n, %bb.j, %_ZN6casadi12casadi_clearIdEEvPT_x.exit
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %spec.select ; 3 uses
  %.not40.i = icmp slt i64 %i.m, 1
  br i1 %.not40.i, label %_ZN6casadi14casadi_de_boorIdEEvT_PKS1_xxPS1_.exit, label %.preheader.i182.preheader

.preheader.i182.preheader:                        ; preds = %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit
  %invariant.op = sub i64 -2, %i.w
  br label %.preheader.i182

.preheader.i182:                                  ; preds = %.preheader.i182.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ %i.w, %.preheader.i182.preheader ] ; 2 uses
  %.03641.i = phi i64 [ %i.dl, %._crit_edge.i ], [ 1, %.preheader.i182.preheader ] ; 4 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.03641.i
  %.reass.reass = add i64 %.03641.i, %invariant.op
  %i.cm = icmp slt i64 %.reass.reass, -1
  br i1 %i.cm, label %.lr.ph.i183, label %._crit_edge.i

.lr.ph.i183:                                      ; preds = %.preheader.i182, %bb.u
  %.03539.i = phi i64 [ %i.cz, %bb.u ], [ 0, %.preheader.i182 ] ; 5 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %.03539.i ; 2 uses
  %i.cn = load double, ptr %gep.i, align 8, !tbaa !59
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.03539.i
  %i.cp = load double, ptr %i.co, align 8, !tbaa !59 ; 2 uses
  %i.cq = fsub double %i.cn, %i.cp                ; 2 uses
  %i.cr = fcmp une double %i.cq, 0.000000e+00
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i183
  %i.cs = fsub double %i.u, %i.cp
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.03539.i
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !59
  %i.cv = fmul double %i.cs, %i.cu
  %i.cw = fdiv double %i.cv, %i.cq
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i183
  %.0.i184 = phi double [ %i.cw, %bb.r ], [ 0.000000e+00, %.lr.ph.i183 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !59 ; 2 uses
  %i.cz = add nuw nsw i64 %.03539.i, 1            ; 4 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !59
  %i.dc = fsub double %i.cy, %i.db                ; 2 uses
  %i.dd = fcmp une double %i.dc, 0.000000e+00
  br i1 %i.dd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.de = fsub double %i.cy, %i.u
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cz
  %i.dg = load double, ptr %i.df, align 8, !tbaa !59
  %i.dh = fmul double %i.de, %i.dg
  %i.di = fdiv double %i.dh, %i.dc
  %i.dj = fadd double %.0.i184, %i.di
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.i185 = phi double [ %i.dj, %bb.t ], [ %.0.i184, %bb.s ]
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.03539.i
  store double %.1.i185, ptr %i.dk, align 8, !tbaa !59
  %exitcond.not.i186 = icmp eq i64 %i.cz, %indvars.iv.i
  br i1 %exitcond.not.i186, label %._crit_edge.i, label %.lr.ph.i183, !llvm.loop !6

._crit_edge.i:                                    ; preds = %bb.u, %.preheader.i182
  %i.dl = add nuw i64 %.03641.i, 1
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %exitcond43.not.i = icmp eq i64 %.03641.i, %i.m
  br i1 %exitcond43.not.i, label %_ZN6casadi14casadi_de_boorIdEEvT_PKS1_xxPS1_.exit, label %.preheader.i182, !llvm.loop !7

_ZN6casadi14casadi_de_boorIdEEvT_PKS1_xxPS1_.exit: ; preds = %._crit_edge.i, %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit
  %i.dm = add i64 %i.m, 1                         ; 2 uses
  %i.dn = mul nsw i64 %i.dm, %.0172195            ; 3 uses
  %i.do = load i64, ptr %i.j, align 8, !tbaa !67
  %i.dp = add i64 %i.dm, %i.do                    ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.q
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !67
  %exitcond.not = icmp eq i64 %i.q, %1
  br i1 %exitcond.not, label %.lr.ph198.preheader, label %.lr.ph, !llvm.loop !303

_ZN6casadi23casadi_clear_casadi_intEPxx.exit.thread: ; preds = %bb.a
  %i.dr = add i64 %1, -1
  br label %.preheader192

.lr.ph198.preheader:                              ; preds = %_ZN6casadi14casadi_de_boorIdEEvT_PKS1_xxPS1_.exit
  %i.ds = shl nuw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.c, i8 0, i64 %i.ds, i1 false), !tbaa !67
  %i.dt = add nsw i64 %1, -1                      ; 9 uses
  %.pre = load double, ptr %i.f, align 8, !tbaa !59 ; 2 uses
  %.pre221 = load i64, ptr %i.g, align 8, !tbaa !67 ; 2 uses
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph198.prol.loopexit, label %.lr.ph198.prol

.lr.ph198.prol:                                   ; preds = %.lr.ph198.preheader
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !67
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !59
  %i.dy = fmul double %i.dx, %.pre                ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.dt
  store double %i.dy, ptr %i.dz, align 8, !tbaa !59
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dt
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !67
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.dt
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !67
  %i.ee = mul nsw i64 %i.ed, %i.eb
  %i.ef = add nsw i64 %i.ee, %.pre221             ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dt
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !67
  %i.eh = add nsw i64 %1, -2
  br label %.lr.ph198.prol.loopexit

.lr.ph198.prol.loopexit:                          ; preds = %.lr.ph198.prol, %.lr.ph198.preheader
  %.unr = phi i64 [ %.pre221, %.lr.ph198.preheader ], [ %i.ef, %.lr.ph198.prol ]
  %.unr286 = phi double [ %.pre, %.lr.ph198.preheader ], [ %i.dy, %.lr.ph198.prol ]
  %.0168197.unr = phi i64 [ %i.dt, %.lr.ph198.preheader ], [ %i.eh, %.lr.ph198.prol ]
  %i.ei = icmp eq i64 %i.dt, 0
  br i1 %i.ei, label %.preheader192, label %.lr.ph198

.preheader192:                                    ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198, %_ZN6casadi23casadi_clear_casadi_intEPxx.exit.thread
  %i.ej = phi i64 [ %i.dr, %_ZN6casadi23casadi_clear_casadi_intEPxx.exit.thread ], [ %i.dt, %.lr.ph198 ], [ %i.dt, %.lr.ph198.prol.loopexit ] ; 2 uses
  %.0172.lcssa237239 = phi i64 [ 1, %_ZN6casadi23casadi_clear_casadi_intEPxx.exit.thread ], [ %i.dn, %.lr.ph198 ], [ %i.dn, %.lr.ph198.prol.loopexit ] ; 2 uses
  %i.ek = icmp sgt i64 %.0172.lcssa237239, 0
  br i1 %i.ek, label %.preheader.lr.ph, label %._crit_edge214

.preheader.lr.ph:                                 ; preds = %.preheader192
  %i.el = icmp sgt i64 %7, 0
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.en = getelementptr i8, ptr %11, i64 8        ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ep = shl i64 %7, 3                           ; 2 uses
  %scevgep = getelementptr i8, ptr %6, i64 %i.ep
  %scevgep.a = getelementptr i8, ptr %0, i64 %i.ep ; 2 uses
  %min.iters.check261 = icmp ult i64 %7, 4
  %bound0262 = icmp ult ptr %0, %i.en
  %bound1263 = icmp ult ptr %11, %scevgep.a
  %found.conflict264 = and i1 %bound0262, %bound1263
  %n.vec266 = and i64 %7, 9223372036854775804     ; 3 uses
  %cmp.n274 = icmp eq i64 %7, %n.vec266
  %xtraiter287 = and i64 %7, 1
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  %exitcond219250 = icmp eq i64 %1, 1
  br label %.preheader

.lr.ph198:                                        ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198
  %i.eq = phi i64 [ %i.fr, %.lr.ph198 ], [ %.unr, %.lr.ph198.prol.loopexit ]
  %i.er = phi double [ %i.fk, %.lr.ph198 ], [ %.unr286, %.lr.ph198.prol.loopexit ]
  %.0168197 = phi i64 [ %i.ft, %.lr.ph198 ], [ %.0168197.unr, %.lr.ph198.prol.loopexit ] ; 7 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.0168197
  %i.et = load i64, ptr %i.es, align 8, !tbaa !67
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !59
  %i.ew = fmul double %i.ev, %i.er                ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %.0168197
  store double %i.ew, ptr %i.ex, align 8, !tbaa !59
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0168197
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !67
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.0168197
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !67
  %i.fc = mul nsw i64 %i.fb, %i.ez
  %i.fd = add nsw i64 %i.fc, %i.eq                ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0168197
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !67
  %i.ff = add nsw i64 %.0168197, -1               ; 6 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !67
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !59
  %i.fk = fmul double %i.fj, %i.ew                ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ff
  store double %i.fk, ptr %i.fl, align 8, !tbaa !59
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ff
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !67
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ff
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !67
  %i.fq = mul nsw i64 %i.fp, %i.fn
  %i.fr = add nsw i64 %i.fq, %i.fd                ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ff
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !67
  %i.ft = add nsw i64 %.0168197, -2
  %.not.1 = icmp eq i64 %i.ff, 0
  br i1 %.not.1, label %.preheader192, label %.lr.ph198, !llvm.loop !304

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge212
  %.1171213 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.jc, %._crit_edge212 ]
  br i1 %i.el, label %.lr.ph200, label %._crit_edge201

.lr.ph200:                                        ; preds = %.preheader
  %i.fu = load i64, ptr %i.d, align 8, !tbaa !67  ; 2 uses
  %i.fv = getelementptr [8 x i8], ptr %6, i64 %i.fu ; 5 uses
  br i1 %min.iters.check261, label %scalar.ph260.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph200
  %i.fw = shl i64 %i.fu, 3
  %i.fx = getelementptr i8, ptr %scevgep, i64 %i.fw
  %bound0 = icmp ult ptr %0, %i.fx
  %bound1 = icmp ult ptr %i.fv, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict264
  br i1 %conflict.rdx, label %scalar.ph260.preheader, label %vector.ph265

vector.ph265:                                     ; preds = %vector.memcheck
  %i.fy = load double, ptr %11, align 8, !tbaa !59, !alias.scope !314
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fy, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body267

vector.body267:                                   ; preds = %vector.body267, %vector.ph265
  %index268 = phi i64 [ 0, %vector.ph265 ], [ %index.next272, %vector.body267 ] ; 3 uses
  %i.fz = getelementptr [8 x i8], ptr %i.fv, i64 %index268 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 16
  %wide.load = load <2 x double>, ptr %i.fz, align 8, !tbaa !59, !alias.scope !315
  %wide.load269 = load <2 x double>, ptr %i.ga, align 8, !tbaa !59, !alias.scope !315
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index268 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %wide.load270 = load <2 x double>, ptr %i.gb, align 8, !tbaa !59, !alias.scope !316, !noalias !317
  %wide.load271 = load <2 x double>, ptr %i.gc, align 8, !tbaa !59, !alias.scope !316, !noalias !317
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat, <2 x double> %wide.load270)
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load269, <2 x double> %broadcast.splat, <2 x double> %wide.load271)
  store <2 x double> %i.gd, ptr %i.gb, align 8, !tbaa !59, !alias.scope !316, !noalias !317
  store <2 x double> %i.ge, ptr %i.gc, align 8, !tbaa !59, !alias.scope !316, !noalias !317
  %index.next272 = add nuw i64 %index268, 4       ; 2 uses
  %i.gf = icmp eq i64 %index.next272, %n.vec266
  br i1 %i.gf, label %middle.block273, label %vector.body267, !llvm.loop !309

middle.block273:                                  ; preds = %vector.body267
  br i1 %cmp.n274, label %._crit_edge201, label %scalar.ph260.preheader

scalar.ph260.preheader:                           ; preds = %vector.memcheck, %.lr.ph200, %middle.block273
  %.0169199.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph200 ], [ %n.vec266, %middle.block273 ] ; 5 uses
  %.neg = or disjoint i64 %.0169199.ph, 1
  br i1 %lcmp.mod288.not, label %scalar.ph260.prol.loopexit, label %scalar.ph260.prol

scalar.ph260.prol:                                ; preds = %scalar.ph260.preheader
  %i.gg = getelementptr [8 x i8], ptr %i.fv, i64 %.0169199.ph
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !59
  %i.gi = load double, ptr %11, align 8, !tbaa !59
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0169199.ph ; 2 uses
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !59
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.gi, double %i.gk)
  store double %i.gl, ptr %i.gj, align 8, !tbaa !59
  %i.gm = or disjoint i64 %.0169199.ph, 1
  br label %scalar.ph260.prol.loopexit

scalar.ph260.prol.loopexit:                       ; preds = %scalar.ph260.prol, %scalar.ph260.preheader
  %.0169199.unr = phi i64 [ %.0169199.ph, %scalar.ph260.preheader ], [ %i.gm, %scalar.ph260.prol ]
  %i.gn = icmp eq i64 %7, %.neg
  br i1 %i.gn, label %._crit_edge201, label %scalar.ph260

scalar.ph260:                                     ; preds = %scalar.ph260.prol.loopexit, %scalar.ph260
  %.0169199 = phi i64 [ %i.hb, %scalar.ph260 ], [ %.0169199.unr, %scalar.ph260.prol.loopexit ] ; 4 uses
  %i.go = getelementptr [8 x i8], ptr %i.fv, i64 %.0169199
  %i.gp = load double, ptr %i.go, align 8, !tbaa !59
  %i.gq = load double, ptr %11, align 8, !tbaa !59
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0169199 ; 2 uses
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !59
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gp, double %i.gq, double %i.gs)
  store double %i.gt, ptr %i.gr, align 8, !tbaa !59
  %i.gu = add nuw nsw i64 %.0169199, 1            ; 2 uses
  %i.gv = getelementptr [8 x i8], ptr %i.fv, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !59
  %i.gx = load double, ptr %11, align 8, !tbaa !59
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gu ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !59
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.gx, double %i.gz)
  store double %i.ha, ptr %i.gy, align 8, !tbaa !59
  %i.hb = add nuw nsw i64 %.0169199, 2            ; 2 uses
  %exitcond218.not.1 = icmp eq i64 %i.hb, %7
  br i1 %exitcond218.not.1, label %._crit_edge201, label %scalar.ph260, !llvm.loop !310

._crit_edge201:                                   ; preds = %scalar.ph260.prol.loopexit, %scalar.ph260, %middle.block273, %.preheader
  %i.hc = load i64, ptr %i.c, align 8, !tbaa !67
  %i.hd = add nsw i64 %i.hc, 1                    ; 2 uses
  store i64 %i.hd, ptr %i.c, align 8, !tbaa !67
  %i.he = load i64, ptr %i.em, align 8, !tbaa !67
  %i.hf = load i64, ptr %10, align 8, !tbaa !67
  %i.hg = sub nsw i64 %i.he, %i.hf
  %i.hh = icmp eq i64 %i.hd, %i.hg
  br i1 %i.hh, label %.lr.ph204.preheader, label %._crit_edge212

.lr.ph204.preheader:                              ; preds = %._crit_edge201
  store i64 0, ptr %i.c, align 8, !tbaa !67
  br i1 %exitcond219250, label %._crit_edge205, label %.lr.ph251

.lr.ph204:                                        ; preds = %.lr.ph251
  store i64 0, ptr %i.hj, align 8, !tbaa !67
  %exitcond219 = icmp eq i64 %i.hm, %1
  br i1 %exitcond219, label %._crit_edge205, label %.lr.ph251, !llvm.loop !311

.lr.ph251:                                        ; preds = %.lr.ph204.preheader, %.lr.ph204
  %i.hi = phi i64 [ %i.hm, %.lr.ph204 ], [ 1, %.lr.ph204.preheader ] ; 4 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hi ; 3 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !67
  %i.hl = add nsw i64 %i.hk, 1                    ; 2 uses
  store i64 %i.hl, ptr %i.hj, align 8, !tbaa !67
  %i.hm = add nuw i64 %i.hi, 1                    ; 3 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.hm
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !67
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.hi
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !67
  %i.hr = sub nsw i64 %i.ho, %i.hq
  %i.hs = icmp eq i64 %i.hl, %i.hr
  br i1 %i.hs, label %.lr.ph204, label %.._crit_edge205_crit_edge, !llvm.loop !311

.._crit_edge205_crit_edge:                        ; preds = %.lr.ph251
  br label %._crit_edge205, !llvm.loop !311

._crit_edge205:                                   ; preds = %.lr.ph204, %.._crit_edge205_crit_edge, %.lr.ph204.preheader
  %.0.lcssa = phi i64 [ %i.ej, %.lr.ph204.preheader ], [ %i.hi, %.._crit_edge205_crit_edge ], [ %i.ej, %.lr.ph204 ] ; 2 uses
  %i.ht = icmp sgt i64 %.0.lcssa, 0
  br i1 %i.ht, label %.lr.ph211, label %._crit_edge212

.lr.ph211:                                        ; preds = %._crit_edge205, %.lr.ph211
  %.1209 = phi i64 [ %i.iq, %.lr.ph211 ], [ %.0.lcssa, %._crit_edge205 ] ; 9 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.1209
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !67
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.hv
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.1209
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !67 ; 2 uses
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !59
  %i.ib = add nuw nsw i64 %.1209, 1               ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ib
  %i.id = load double, ptr %i.ic, align 8, !tbaa !59
  %i.ie = fmul double %i.ia, %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %.1209
  store double %i.ie, ptr %i.if, align 8, !tbaa !59
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.1209
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !67
  %i.ii = add nsw i64 %i.ih, %i.hy
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.1209
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !67
  %i.il = mul nsw i64 %i.ii, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ib
  %i.in = load i64, ptr %i.im, align 8, !tbaa !67
  %i.io = add nsw i64 %i.il, %i.in
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.1209
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !67
  %i.iq = add nsw i64 %.1209, -1
  %i.ir = icmp samesign ugt i64 %.1209, 1
  br i1 %i.ir, label %.lr.ph211, label %._crit_edge212, !llvm.loop !312

._crit_edge212:                                   ; preds = %.lr.ph211, %._crit_edge201, %._crit_edge205
  %i.is = load i64, ptr %i.c, align 8, !tbaa !67  ; 2 uses
  %i.it = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.is
  %i.iu = load double, ptr %i.it, align 8, !tbaa !59
  %i.iv = load double, ptr %i.en, align 8, !tbaa !59
  %i.iw = fmul double %i.iu, %i.iv
  store double %i.iw, ptr %11, align 8, !tbaa !59
  %i.ix = load i64, ptr %i.b, align 8, !tbaa !67
  %i.iy = add nsw i64 %i.ix, %i.is
  %i.iz = mul nsw i64 %i.iy, %7
  %i.ja = load i64, ptr %i.eo, align 8, !tbaa !67
  %i.jb = add nsw i64 %i.iz, %i.ja
  store i64 %i.jb, ptr %i.d, align 8, !tbaa !67
  %i.jc = add nuw nsw i64 %.1171213, 1            ; 2 uses
  %exitcond220.not = icmp eq i64 %i.jc, %.0172.lcssa237239
  br i1 %exitcond220.not, label %._crit_edge214, label %.preheader, !llvm.loop !313

._crit_edge214:                                   ; preds = %._crit_edge212, %.preheader192
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi17BSplineParametric4evalEPPKdPPdPxS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !56     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89   ; 3 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = shl nuw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.a, i8 0, i64 %i.e, i1 false), !tbaa !59
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

_ZN6casadi12casadi_clearIdEEvPT_x.exit:           ; preds = %bb.b, %.lr.ph.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62   ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !63   ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.r = icmp eq ptr %i.o, %i.q
end_hunk_0
