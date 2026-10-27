Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_arkstep?download=true
inline.NumInlined: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@arkStep_StageSetup:bb.a
  %bound0203 = icmp ult ptr %i.dv, %i.ea
  %bound1204 = icmp ult ptr %i.dq, %i.dy
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %found.conflict202, %found.conflict205
  %bound0207 = icmp ult ptr %i.eb, %i.ed
  %bound1208 = icmp ult ptr %i.ds, %i.ec
  %found.conflict209 = and i1 %bound0207, %bound1208
  %conflict.rdx210 = or i1 %conflict.rdx206, %found.conflict209
  br i1 %conflict.rdx210, label %scalar.ph197.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %vector.memcheck199
  %n.vec212 = and i64 %i.do, 2147483644           ; 4 uses
  %i.ee = add nsw i64 %n.vec212, %i.dt            ; 2 uses
  %i.ef = load double, ptr %i.dj, align 8, !tbaa !100, !alias.scope !313
  %broadcast.splatinsert217 = insertelement <2 x double> poison, double %i.ef, i64 0
  %broadcast.splat218 = shufflevector <2 x double> %broadcast.splatinsert217, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph211
  %index214 = phi i64 [ 0, %vector.ph211 ], [ %index.next221, %vector.body213 ] ; 4 uses
  %i.eg = add nuw i64 %index214, %i.dt            ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %index214 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load215 = load <2 x double>, ptr %i.eh, align 8, !tbaa !58, !alias.scope !314
  %wide.load216 = load <2 x double>, ptr %i.ei, align 8, !tbaa !58, !alias.scope !314
  %i.ej = fmul <2 x double> %broadcast.splat218, %wide.load215
  %i.ek = fmul <2 x double> %broadcast.splat218, %wide.load216
  %i.el = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.eg ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <2 x double> %i.ej, ptr %i.el, align 8, !tbaa !58, !alias.scope !315, !noalias !316
  store <2 x double> %i.ek, ptr %i.em, align 8, !tbaa !58, !alias.scope !315, !noalias !316
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index214 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load219 = load <2 x ptr>, ptr %i.en, align 8, !tbaa !97, !alias.scope !317
  %wide.load220 = load <2 x ptr>, ptr %i.eo, align 8, !tbaa !97, !alias.scope !317
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.eg ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <2 x ptr> %wide.load219, ptr %i.ep, align 8, !tbaa !97, !alias.scope !318, !noalias !317
  store <2 x ptr> %wide.load220, ptr %i.eq, align 8, !tbaa !97, !alias.scope !318, !noalias !317
  %index.next221 = add nuw i64 %index214, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next221, %n.vec212
  br i1 %i.er, label %middle.block222, label %vector.body213, !llvm.loop !294

middle.block222:                                  ; preds = %vector.body213
  %cmp.n223 = icmp eq i64 %n.vec212, %i.do
  br i1 %cmp.n223, label %.loopexit.loopexit, label %scalar.ph197.preheader

scalar.ph197.preheader:                           ; preds = %vector.memcheck199, %.lr.ph125, %middle.block222
  %indvars.iv138.ph = phi i64 [ %i.dt, %vector.memcheck199 ], [ %i.dt, %.lr.ph125 ], [ %i.ee, %middle.block222 ] ; 4 uses
  %indvars.iv136.ph = phi i64 [ 0, %vector.memcheck199 ], [ 0, %.lr.ph125 ], [ %n.vec212, %middle.block222 ] ; 5 uses
  %xtraiter320.a = and i64 %i.do, 1
  %lcmp.mod321.not.a = icmp eq i64 %xtraiter320.a, 0
  br i1 %lcmp.mod321.not.a, label %scalar.ph197.prol.loopexit, label %scalar.ph197.prol

scalar.ph197.prol:                                ; preds = %scalar.ph197.preheader
  %i.es = load double, ptr %i.dj, align 8, !tbaa !100
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv136.ph
  %i.eu = load double, ptr %i.et, align 8, !tbaa !58
  %i.ev = fmul double %i.es, %i.eu
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv138.ph
  store double %i.ev, ptr %i.ew, align 8, !tbaa !58
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv136.ph
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !97
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv138.ph
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !97
  %indvars.iv.next139.prol = add nuw nsw i64 %indvars.iv138.ph, 1 ; 2 uses
  %indvars.iv.next137.prol = or disjoint i64 %indvars.iv136.ph, 1
  br label %scalar.ph197.prol.loopexit

scalar.ph197.prol.loopexit:                       ; preds = %scalar.ph197.prol, %scalar.ph197.preheader
  %indvars.iv.next139.lcssa318.unr = phi i64 [ poison, %scalar.ph197.preheader ], [ %indvars.iv.next139.prol, %scalar.ph197.prol ]
  %indvars.iv138.unr = phi i64 [ %indvars.iv138.ph, %scalar.ph197.preheader ], [ %indvars.iv.next139.prol, %scalar.ph197.prol ]
  %indvars.iv136.unr = phi i64 [ %indvars.iv136.ph, %scalar.ph197.preheader ], [ %indvars.iv.next137.prol, %scalar.ph197.prol ]
  %i.fa = add nsw i64 %i.do, -1
  %i.fb = icmp eq i64 %indvars.iv136.ph, %i.fa
  br i1 %i.fb, label %.loopexit.loopexit, label %scalar.ph197

scalar.ph197:                                     ; preds = %scalar.ph197.prol.loopexit, %scalar.ph197
  %indvars.iv138 = phi i64 [ %indvars.iv.next139.1, %scalar.ph197 ], [ %indvars.iv138.unr, %scalar.ph197.prol.loopexit ] ; 4 uses
  %indvars.iv136 = phi i64 [ %indvars.iv.next137.1, %scalar.ph197 ], [ %indvars.iv136.unr, %scalar.ph197.prol.loopexit ] ; 4 uses
  %i.fc = load double, ptr %i.dj, align 8, !tbaa !100
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv136
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !58
  %i.ff = fmul double %i.fc, %i.fe
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv138
  store double %i.ff, ptr %i.fg, align 8, !tbaa !58
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv136
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !97
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv138
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !97
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %i.fk = load double, ptr %i.dj, align 8, !tbaa !100
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next137
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !58
  %i.fn = fmul double %i.fk, %i.fm
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv.next139
  store double %i.fn, ptr %i.fo, align 8, !tbaa !58
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next137
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !97
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next139
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !97
  %indvars.iv.next139.1 = add nuw nsw i64 %indvars.iv138, 2 ; 2 uses
  %indvars.iv.next137.1 = add nuw nsw i64 %indvars.iv136, 2 ; 2 uses
  %exitcond144.not.1 = icmp eq i64 %indvars.iv.next137.1, %i.do
  br i1 %exitcond144.not.1, label %.loopexit.loopexit, label %scalar.ph197, !llvm.loop !295

.loopexit.loopexit:                               ; preds = %scalar.ph197.prol.loopexit, %scalar.ph197, %middle.block222
  %indvars.iv.next139.lcssa = phi i64 [ %i.ee, %middle.block222 ], [ %indvars.iv.next139.lcssa318.unr, %scalar.ph197.prol.loopexit ], [ %indvars.iv.next139.1, %scalar.ph197 ]
  %i.fs = trunc nsw i64 %indvars.iv.next139.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit120
  %.5 = phi i32 [ %.3, %.loopexit120 ], [ %i.fs, %.loopexit.loopexit ] ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 460
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !103
  %.not102 = icmp eq i32 %i.fu, 0                 ; 2 uses
  br i1 %.not102, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !104
  %.not103 = icmp eq i32 %i.fw, 0
  br i1 %.not103, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %.pn.in.v = phi i64 [ 120, %bb.i ], [ 112, %.loopexit ]
  %i.fx = zext i1 %.not102 to i32
  %.091 = add nsw i32 %i.e, %i.fx                 ; 4 uses
  %.pn.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pn.in.v
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !139 ; 2 uses
  %.090.in = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %.090 = load ptr, ptr %.090.in, align 8, !tbaa !119 ; 7 uses
  %i.fy = icmp sgt i32 %.091, 0                   ; 2 uses
  br i1 %i.fy, label %.lr.ph128, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !83
  %.phi.trans.insert150 = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.pre151 = load ptr, ptr %.phi.trans.insert150, align 8, !tbaa !84
  br label %._crit_edge

.lr.ph128:                                        ; preds = %bb.j
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !112
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 9 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !83 ; 12 uses
  %i.gd = sext i32 %i.e to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %.0, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !113 ; 7 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !84 ; 12 uses
  %wide.trip.count148 = zext nneg i32 %.091 to i64 ; 6 uses
  %min.iters.check259 = icmp ult i32 %.091, 20
  br i1 %min.iters.check259, label %scalar.ph258.preheader, label %vector.memcheck260

vector.memcheck260:                               ; preds = %.lr.ph128
  %i.gi = shl nuw nsw i64 %wide.trip.count148, 3  ; 4 uses
  %i.gj = getelementptr i8, ptr %i.gc, i64 %i.gi  ; 4 uses
  %i.gk = getelementptr i8, ptr %i.gh, i64 %i.gi  ; 4 uses
  %i.gl = getelementptr i8, ptr %0, i64 928       ; 2 uses
  %i.gm = getelementptr i8, ptr %.090, i64 %i.gi  ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gf, i64 %i.gi  ; 2 uses
  %bound0261 = icmp ult ptr %i.gc, %i.gk
  %bound1262 = icmp ult ptr %i.gh, %i.gj
  %found.conflict263 = and i1 %bound0261, %bound1262
  %bound0264 = icmp ult ptr %i.gc, %i.gl
  %bound1265 = icmp ult ptr %i.ga, %i.gj
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %found.conflict263, %found.conflict266
  %bound0268 = icmp ult ptr %i.gc, %i.gm
  %bound1269 = icmp ult ptr %.090, %i.gj
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %conflict.rdx267, %found.conflict270
  %bound0272 = icmp ult ptr %i.gc, %i.gn
  %bound1273 = icmp ult ptr %i.gf, %i.gj
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %conflict.rdx271, %found.conflict274
  %bound0276 = icmp ult ptr %i.gh, %i.gl
  %bound1277 = icmp ult ptr %i.ga, %i.gk
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx279 = or i1 %conflict.rdx275, %found.conflict278
  %bound0280 = icmp ult ptr %i.gh, %i.gm
  %bound1281 = icmp ult ptr %.090, %i.gk
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx283 = or i1 %conflict.rdx279, %found.conflict282
  %bound0284 = icmp ult ptr %i.gh, %i.gn
  %bound1285 = icmp ult ptr %i.gf, %i.gk
  %found.conflict286 = and i1 %bound0284, %bound1285
  %conflict.rdx287 = or i1 %conflict.rdx283, %found.conflict286
  br i1 %conflict.rdx287, label %scalar.ph258.preheader, label %vector.ph288

vector.ph288:                                     ; preds = %vector.memcheck260
  %n.vec289 = and i64 %wide.trip.count148, 2147483646 ; 3 uses
  %i.go = load double, ptr %i.fz, align 8, !tbaa !117, !alias.scope !319
  %broadcast.splatinsert295 = insertelement <2 x double> poison, double %i.go, i64 0
  %broadcast.splat296 = shufflevector <2 x double> %broadcast.splatinsert295, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = load double, ptr %i.ga, align 8, !tbaa !100, !alias.scope !319
  %broadcast.splatinsert298 = insertelement <2 x double> poison, double %i.gp, i64 0
  %broadcast.splat299 = shufflevector <2 x double> %broadcast.splatinsert298, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph288
  %index291 = phi i64 [ 0, %vector.ph288 ], [ %index.next300, %vector.body290 ] ; 5 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.090, i64 %index291
  %wide.load292 = load <2 x double>, ptr %i.gq, align 8, !tbaa !58, !alias.scope !320
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load292, <2 x double> %broadcast.splat299, <2 x double> %broadcast.splat296)
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %index291
  store <2 x double> %i.gr, ptr %i.gs, align 8, !tbaa !58, !alias.scope !321, !noalias !322
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %index291
  %wide.load297 = load <2 x double>, ptr %i.gt, align 8, !tbaa !58, !alias.scope !323
  %i.gu = fmul <2 x double> %broadcast.splat299, %wide.load297
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %index291
  store <2 x double> %i.gu, ptr %i.gv, align 8, !tbaa !58, !alias.scope !324, !noalias !325
  %index.next300 = add nuw i64 %index291, 2       ; 2 uses
  %i.gw = icmp eq i64 %index.next300, %n.vec289
  br i1 %i.gw, label %middle.block301, label %vector.body290, !llvm.loop !302

middle.block301:                                  ; preds = %vector.body290
  %cmp.n302 = icmp eq i64 %n.vec289, %wide.trip.count148
  br i1 %cmp.n302, label %._crit_edge, label %scalar.ph258.preheader

scalar.ph258.preheader:                           ; preds = %vector.memcheck260, %.lr.ph128, %middle.block301
  %indvars.iv145.ph = phi i64 [ 0, %vector.memcheck260 ], [ 0, %.lr.ph128 ], [ %n.vec289, %middle.block301 ] ; 7 uses
  %xtraiter322.a = and i64 %wide.trip.count148, 1
  %lcmp.mod323.not.a = icmp eq i64 %xtraiter322.a, 0
  br i1 %lcmp.mod323.not.a, label %scalar.ph258.prol.loopexit, label %scalar.ph258.prol

scalar.ph258.prol:                                ; preds = %scalar.ph258.preheader
  %i.gx = load double, ptr %i.fz, align 8, !tbaa !117
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.090, i64 %indvars.iv145.ph
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !58
  %i.ha = load double, ptr %i.ga, align 8, !tbaa !100
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.ha, double %i.gx)
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv145.ph
  store double %i.hb, ptr %i.hc, align 8, !tbaa !58
  %i.hd = load double, ptr %i.ga, align 8, !tbaa !100
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv145.ph
  %i.hf = load double, ptr %i.he, align 8, !tbaa !58
  %i.hg = fmul double %i.hd, %i.hf
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv145.ph
  store double %i.hg, ptr %i.hh, align 8, !tbaa !58
  %indvars.iv.next146.prol = or disjoint i64 %indvars.iv145.ph, 1
  br label %scalar.ph258.prol.loopexit

scalar.ph258.prol.loopexit:                       ; preds = %scalar.ph258.prol, %scalar.ph258.preheader
  %indvars.iv145.unr = phi i64 [ %indvars.iv145.ph, %scalar.ph258.preheader ], [ %indvars.iv.next146.prol, %scalar.ph258.prol ]
  %i.hi = add nsw i64 %wide.trip.count148, -1
  %i.hj = icmp eq i64 %indvars.iv145.ph, %i.hi
  br i1 %i.hj, label %._crit_edge, label %scalar.ph258

scalar.ph258:                                     ; preds = %scalar.ph258.prol.loopexit, %scalar.ph258
  %indvars.iv145 = phi i64 [ %indvars.iv.next146.1, %scalar.ph258 ], [ %indvars.iv145.unr, %scalar.ph258.prol.loopexit ] ; 6 uses
  %i.hk = load double, ptr %i.fz, align 8, !tbaa !117
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.090, i64 %indvars.iv145
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !58
  %i.hn = load double, ptr %i.ga, align 8, !tbaa !100
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.hn, double %i.hk)
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv145
  store double %i.ho, ptr %i.hp, align 8, !tbaa !58
  %i.hq = load double, ptr %i.ga, align 8, !tbaa !100
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv145
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !58
  %i.ht = fmul double %i.hq, %i.hs
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv145
  store double %i.ht, ptr %i.hu, align 8, !tbaa !58
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 4 uses
  %i.hv = load double, ptr %i.fz, align 8, !tbaa !117
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.090, i64 %indvars.iv.next146
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !58
  %i.hy = load double, ptr %i.ga, align 8, !tbaa !100
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.hy, double %i.hv)
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.next146
  store double %i.hz, ptr %i.ia, align 8, !tbaa !58
  %i.ib = load double, ptr %i.ga, align 8, !tbaa !100
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next146
  %i.id = load double, ptr %i.ic, align 8, !tbaa !58
  %i.ie = fmul double %i.ib, %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next146
  store double %i.ie, ptr %i.if, align 8, !tbaa !58
  %indvars.iv.next146.1 = add nuw nsw i64 %indvars.iv145, 2 ; 2 uses
  %exitcond149.not.1 = icmp eq i64 %indvars.iv.next146.1, %wide.trip.count148
  br i1 %exitcond149.not.1, label %._crit_edge, label %scalar.ph258, !llvm.loop !303

._crit_edge:                                      ; preds = %scalar.ph258.prol.loopexit, %scalar.ph258, %middle.block301, %.._crit_edge_crit_edge
  %i.ig = phi ptr [ %.pre151, %.._crit_edge_crit_edge ], [ %i.gh, %middle.block301 ], [ %i.gh, %scalar.ph258 ], [ %i.gh, %scalar.ph258.prol.loopexit ]
  %i.ih = phi ptr [ %.pre, %.._crit_edge_crit_edge ], [ %i.gc, %middle.block301 ], [ %i.gc, %scalar.ph258 ], [ %i.gc, %scalar.ph258.prol.loopexit ]
  %i.ii = load ptr, ptr %i.f, align 8, !tbaa !79  ; 5 uses
  %i.ij = load ptr, ptr %i.h, align 8, !tbaa !81  ; 5 uses
  %i.ik = ptrtoaddr ptr %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.im = load double, ptr %i.il, align 8, !tbaa !105
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.io = load double, ptr %i.in, align 8, !tbaa !106
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !43 ; 6 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !42 ; 5 uses
  %i.it = ptrtoaddr ptr %i.is to i64
  %i.iu = icmp sgt i32 %i.iq, 0
  br i1 %i.iu, label %.lr.ph.preheader.i, label %arkStep_ApplyForcing.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.iv = sext i32 %.5 to i64                     ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.iq to i64 ; 7 uses
  %min.iters.check306 = icmp ult i32 %i.iq, 8
  br i1 %min.iters.check306, label %.lr.ph.i.preheader, label %vector.memcheck307

vector.memcheck307:                               ; preds = %.lr.ph.preheader.i
  %i.iw = shl nsw i64 %i.iv, 3
  %i.ix = add i64 %i.iw, %i.ik
  %i.iy = sub i64 %i.it, %i.ix
  %diff.check = icmp ugt i64 %i.iy, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph308

vector.ph308:                                     ; preds = %vector.memcheck307
  %n.vec309 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph308
  %index311 = phi i64 [ 0, %vector.ph308 ], [ %index.next314, %vector.body310 ] ; 3 uses
  %i.iz = add nsw i64 %index311, %i.iv            ; 2 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.iz ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store <2 x double> zeroinitializer, ptr %i.ja, align 8, !tbaa !58
  store <2 x double> zeroinitializer, ptr %i.jb, align 8, !tbaa !58
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %index311 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load312 = load <2 x ptr>, ptr %i.jc, align 8, !tbaa !97
  %wide.load313 = load <2 x ptr>, ptr %i.jd, align 8, !tbaa !97
  %i.je = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.iz ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <2 x ptr> %wide.load312, ptr %i.je, align 8, !tbaa !97
  store <2 x ptr> %wide.load313, ptr %i.jf, align 8, !tbaa !97
  %index.next314 = add nuw i64 %index311, 4       ; 2 uses
  %i.jg = icmp eq i64 %index.next314, %n.vec309
  br i1 %i.jg, label %middle.block315, label %vector.body310, !llvm.loop !304

middle.block315:                                  ; preds = %vector.body310
  %cmp.n316 = icmp eq i64 %n.vec309, %wide.trip.count.i
  br i1 %cmp.n316, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck307, %.lr.ph.preheader.i, %middle.block315
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck307 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec309, %middle.block315 ] ; 5 uses
  %xtraiter324.a = and i64 %wide.trip.count.i, 1
  %lcmp.mod325.not.a = icmp eq i64 %xtraiter324.a, 0
  br i1 %lcmp.mod325.not.a, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.jh = add nsw i64 %indvars.iv.i.ph, %i.iv     ; 2 uses
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.jh
  store double 0.000000e+00, ptr %i.ji, align 8, !tbaa !58
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.i.ph
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !97
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.jh
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !97
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.jm = add nsw i64 %wide.trip.count.i, -1
  %i.jn = icmp eq i64 %indvars.iv.i.ph, %i.jm
  br i1 %i.jn, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block315
  br i1 %i.fy, label %.lr.ph43.preheader.i, label %arkStep_ApplyForcing.exit

.lr.ph43.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count56.i = zext nneg i32 %.091 to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ii, i64 %i.iv ; 3 uses
  %xtraiter326 = and i64 %wide.trip.count.i, 1
  %i.jo = icmp eq i32 %i.iq, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod327.not = icmp eq i64 %xtraiter326, 0
  %lcmp.mod328 = trunc i32 %i.iq to i1
  br label %.lr.ph43.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.jp = add nsw i64 %indvars.iv.i, %i.iv        ; 2 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.jp
  store double 0.000000e+00, ptr %i.jq, align 8, !tbaa !58
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.i
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !97
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.jp
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !97
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ju = add nsw i64 %indvars.iv.next.i, %i.iv   ; 2 uses
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.ju
  store double 0.000000e+00, ptr %i.jv, align 8, !tbaa !58
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.next.i
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !97
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.ju
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !97
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.preheader.i, label %.lr.ph.i, !llvm.loop !305

.lr.ph43.i:                                       ; preds = %._crit_edge.i, %.lr.ph43.preheader.i
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph43.preheader.i ], [ %indvars.iv.next54.i, %._crit_edge.i ] ; 3 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv53.i
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !58
  %i.kb = fsub double %i.ka, %i.im
  %i.kc = fdiv double %i.kb, %i.io                ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv53.i ; 3 uses
  br i1 %i.jo, label %.epil.preheader, label %.lr.ph43.i.new

.lr.ph43.i.new:                                   ; preds = %.lr.ph43.i, %.lr.ph43.i.new
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i.1, %.lr.ph43.i.new ], [ 0, %.lr.ph43.i ] ; 3 uses
  %.03841.i = phi double [ %i.km, %.lr.ph43.i.new ], [ 1.000000e+00, %.lr.ph43.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph43.i.new ], [ 0, %.lr.ph43.i ]
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !58
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv48.i ; 2 uses
  %i.kf = load double, ptr %gep.i, align 8, !tbaa !58
  %i.kg = tail call double @llvm.fmuladd.f64(double %i.ke, double %.03841.i, double %i.kf)
  store double %i.kg, ptr %gep.i, align 8, !tbaa !58
  %i.kh = fmul double %i.kc, %.03841.i            ; 2 uses
  %i.ki = load double, ptr %i.kd, align 8, !tbaa !58
  %i.kj = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv48.i
  %gep.i.1 = getelementptr i8, ptr %i.kj, i64 8   ; 2 uses
  %i.kk = load double, ptr %gep.i.1, align 8, !tbaa !58
  %i.kl = tail call double @llvm.fmuladd.f64(double %i.ki, double %i.kh, double %i.kk)
  store double %i.kl, ptr %gep.i.1, align 8, !tbaa !58
  %i.km = fmul double %i.kc, %i.kh                ; 2 uses
  %indvars.iv.next49.i.1 = add nuw nsw i64 %indvars.iv48.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph43.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph43.i.new
  br i1 %lcmp.mod327.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph43.i
  %indvars.iv48.i.epil.init = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next49.i.1, %._crit_edge.i.unr-lcssa ]
  %.03841.i.epil.init = phi double [ 1.000000e+00, %.lr.ph43.i ], [ %i.km, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod328)
  %i.kn = load double, ptr %i.kd, align 8, !tbaa !58
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv48.i.epil.init ; 2 uses
  %i.ko = load double, ptr %gep.i.epil, align 8, !tbaa !58
  %i.kp = tail call double @llvm.fmuladd.f64(double %i.kn, double %.03841.i.epil.init, double %i.ko)
  store double %i.kp, ptr %gep.i.epil, align 8, !tbaa !58
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count56.i
  br i1 %exitcond57.not.i, label %arkStep_ApplyForcing.exit, label %.lr.ph43.i

arkStep_ApplyForcing.exit:                        ; preds = %._crit_edge.i, %._crit_edge, %.preheader.i
  %i.kq = add nsw i32 %i.iq, %.5
  br label %bb.k

bb.k:                                             ; preds = %arkStep_ApplyForcing.exit, %bb.i
  %.6 = phi i32 [ %.5, %bb.i ], [ %i.kq, %arkStep_ApplyForcing.exit ]
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !110
  %i.kt = tail call i32 @N_VLinearCombination(i32 noundef %.6, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.ks) #13
  %.not106 = icmp eq i32 %i.kt, 0
  %. = select i1 %.not106, i32 0, i32 -28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.b
  %.093 = phi i32 [ -21, %bb.b ], [ -18, %bb.h ], [ %., %bb.k ]
  ret i32 %.093
}

declare i32 @arkStep_Nls(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -37, 5) i32 @arkStep_ComputeSolutions_MassFixed(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 21 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3421, ptr noundef nonnull @__func__.arkStep_ComputeSolutions_MassFixed, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79   ; 48 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81   ; 38 uses
  store double 0.000000e+00, ptr %1, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !73
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.p = tail call i32 @ARKodeButcherTable_IsStifflyAccurate(ptr noundef %i.o) #13
  %.not110.not = icmp eq i32 %i.p, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ %.not110.not, %bb.d ], [ false, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !36
  %.not111 = icmp eq i32 %i.r, 0
  br i1 %.not111, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63
  %i.u = tail call i32 @ARKodeButcherTable_IsStifflyAccurate(ptr noundef %i.t) #13
  %.not112 = icmp eq i32 %i.u, 0
  %or.cond = select i1 %.not112, i1 true, i1 %.0
  br i1 %or.cond, label %.preheader125, label %bb.k

select.unfold:                                    ; preds = %bb.e
  br i1 %.0, label %.preheader125, label %bb.k

.preheader125:                                    ; preds = %bb.f, %select.unfold
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.w = load i32, ptr %i.v, align 4, !tbaa !74   ; 13 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader125
  %i.y = load i32, ptr %i.l, align 4, !tbaa !73
  %.not117 = icmp eq i32 %i.y, 0
  %i.z = getelementptr i8, ptr %0, i64 736        ; 14 uses
  %i.aa = load i32, ptr %i.q, align 8, !tbaa !36
  %.not118 = icmp eq i32 %i.aa, 0                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  br i1 %.not117, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not118, label %._crit_edge, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !133 ; 6 uses
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !96 ; 6 uses
  %wide.trip.count174 = zext nneg i32 %i.w to i64 ; 6 uses
  %min.iters.check314 = icmp ult i32 %i.w, 14
  br i1 %min.iters.check314, label %scalar.ph313.preheader, label %vector.memcheck315

vector.memcheck315:                               ; preds = %.lr.ph.split.us.split
  %i.ah = shl nuw nsw i64 %wide.trip.count174, 3  ; 4 uses
  %i.ai = getelementptr i8, ptr %i.i, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 744
  %i.ak = getelementptr i8, ptr %i.af, i64 %i.ah
  %i.al = getelementptr i8, ptr %i.k, i64 %i.ah
  %i.am = getelementptr i8, ptr %i.ag, i64 %i.ah
  %bound0316 = icmp ult ptr %i.i, %i.aj
  %bound1317 = icmp ult ptr %i.z, %i.ai
  %found.conflict318 = and i1 %bound0316, %bound1317
  %bound0319 = icmp ult ptr %i.i, %i.ak
  %bound1320 = icmp ult ptr %i.af, %i.ai
  %found.conflict321 = and i1 %bound0319, %bound1320
  %conflict.rdx322 = or i1 %found.conflict318, %found.conflict321
  %bound0323 = icmp ult ptr %i.k, %i.am
  %bound1324 = icmp ult ptr %i.ag, %i.al
  %found.conflict325 = and i1 %bound0323, %bound1324
  %conflict.rdx326 = or i1 %conflict.rdx322, %found.conflict325
  br i1 %conflict.rdx326, label %scalar.ph313.preheader, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck315
  %n.vec328 = and i64 %wide.trip.count174, 2147483644 ; 3 uses
  %i.an = load double, ptr %i.z, align 8, !tbaa !100, !alias.scope !382
  %broadcast.splatinsert333 = insertelement <2 x double> poison, double %i.an, i64 0
  %broadcast.splat334 = shufflevector <2 x double> %broadcast.splatinsert333, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next337, %vector.body329 ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index330 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load331 = load <2 x double>, ptr %i.ao, align 8, !tbaa !58, !alias.scope !383
  %wide.load332 = load <2 x double>, ptr %i.ap, align 8, !tbaa !58, !alias.scope !383
  %i.aq = fmul <2 x double> %broadcast.splat334, %wide.load331
  %i.ar = fmul <2 x double> %broadcast.splat334, %wide.load332
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index330 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <2 x double> %i.aq, ptr %i.as, align 8, !tbaa !58, !alias.scope !384, !noalias !385
  store <2 x double> %i.ar, ptr %i.at, align 8, !tbaa !58, !alias.scope !384, !noalias !385
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index330 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load335 = load <2 x ptr>, ptr %i.au, align 8, !tbaa !97, !alias.scope !386
  %wide.load336 = load <2 x ptr>, ptr %i.av, align 8, !tbaa !97, !alias.scope !386
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index330 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x ptr> %wide.load335, ptr %i.aw, align 8, !tbaa !97, !alias.scope !387, !noalias !386
  store <2 x ptr> %wide.load336, ptr %i.ax, align 8, !tbaa !97, !alias.scope !387, !noalias !386
  %index.next337 = add nuw i64 %index330, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next337, %n.vec328
  br i1 %i.ay, label %middle.block338, label %vector.body329, !llvm.loop !332

middle.block338:                                  ; preds = %vector.body329
  %cmp.n339 = icmp eq i64 %n.vec328, %wide.trip.count174
  br i1 %cmp.n339, label %._crit_edge, label %scalar.ph313.preheader

scalar.ph313.preheader:                           ; preds = %vector.memcheck315, %.lr.ph.split.us.split, %middle.block338
  %indvars.iv169.ph = phi i64 [ 0, %vector.memcheck315 ], [ 0, %.lr.ph.split.us.split ], [ %n.vec328, %middle.block338 ] ; 7 uses
  %xtraiter538.a = and i64 %wide.trip.count174, 1
  %lcmp.mod539.not.a = icmp eq i64 %xtraiter538.a, 0
  br i1 %lcmp.mod539.not.a, label %scalar.ph313.prol.loopexit, label %scalar.ph313.prol

scalar.ph313.prol:                                ; preds = %scalar.ph313.preheader
  %i.az = load double, ptr %i.z, align 8, !tbaa !100
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv169.ph
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !58
  %i.bc = fmul double %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv169.ph
  store double %i.bc, ptr %i.bd, align 8, !tbaa !58
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv169.ph
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !97
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv169.ph
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !97
  %indvars.iv.next170.prol = or disjoint i64 %indvars.iv169.ph, 1
  br label %scalar.ph313.prol.loopexit

scalar.ph313.prol.loopexit:                       ; preds = %scalar.ph313.prol, %scalar.ph313.preheader
  %indvars.iv169.unr = phi i64 [ %indvars.iv169.ph, %scalar.ph313.preheader ], [ %indvars.iv.next170.prol, %scalar.ph313.prol ]
  %i.bh = add nsw i64 %wide.trip.count174, -1
  %i.bi = icmp eq i64 %indvars.iv169.ph, %i.bh
  br i1 %i.bi, label %._crit_edge, label %scalar.ph313

scalar.ph313:                                     ; preds = %scalar.ph313.prol.loopexit, %scalar.ph313
  %indvars.iv169 = phi i64 [ %indvars.iv.next170.1, %scalar.ph313 ], [ %indvars.iv169.unr, %scalar.ph313.prol.loopexit ] ; 6 uses
  %i.bj = load double, ptr %i.z, align 8, !tbaa !100
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv169
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !58
  %i.bm = fmul double %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv169
  store double %i.bm, ptr %i.bn, align 8, !tbaa !58
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv169
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !97
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv169
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !97
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 4 uses
  %i.br = load double, ptr %i.z, align 8, !tbaa !100
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next170
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !58
  %i.bu = fmul double %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next170
  store double %i.bu, ptr %i.bv, align 8, !tbaa !58
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next170
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !97
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next170
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !97
  %indvars.iv.next170.1 = add nuw nsw i64 %indvars.iv169, 2 ; 2 uses
  %exitcond175.not.1 = icmp eq i64 %indvars.iv.next170.1, %wide.trip.count174
  br i1 %exitcond175.not.1, label %._crit_edge, label %scalar.ph313, !llvm.loop !333

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !133 ; 10 uses
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !101 ; 10 uses
  br i1 %.not118, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %wide.trip.count167 = zext nneg i32 %i.w to i64 ; 6 uses
  %min.iters.check270 = icmp ult i32 %i.w, 14
  br i1 %min.iters.check270, label %.lr.ph.split.split.us.preheader535, label %vector.memcheck271

vector.memcheck271:                               ; preds = %.lr.ph.split.split.us.preheader
  %i.cf = shl nuw nsw i64 %wide.trip.count167, 3  ; 4 uses
  %i.cg = getelementptr i8, ptr %i.i, i64 %i.cf   ; 2 uses
  %i.ch = getelementptr i8, ptr %0, i64 744
  %i.ci = getelementptr i8, ptr %i.cd, i64 %i.cf
  %i.cj = getelementptr i8, ptr %i.k, i64 %i.cf
  %i.ck = getelementptr i8, ptr %i.ce, i64 %i.cf
  %bound0272 = icmp ult ptr %i.i, %i.ch
  %bound1273 = icmp ult ptr %i.z, %i.cg
  %found.conflict274 = and i1 %bound0272, %bound1273
  %bound0275 = icmp ult ptr %i.i, %i.ci
  %bound1276 = icmp ult ptr %i.cd, %i.cg
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %found.conflict274, %found.conflict277
  %bound0279 = icmp ult ptr %i.k, %i.ck
  %bound1280 = icmp ult ptr %i.ce, %i.cj
  %found.conflict281 = and i1 %bound0279, %bound1280
  %conflict.rdx282 = or i1 %conflict.rdx278, %found.conflict281
  br i1 %conflict.rdx282, label %.lr.ph.split.split.us.preheader535, label %vector.ph283

vector.ph283:                                     ; preds = %vector.memcheck271
  %n.vec284 = and i64 %wide.trip.count167, 2147483644 ; 3 uses
  %i.cl = load double, ptr %i.z, align 8, !tbaa !100, !alias.scope !388
  %broadcast.splatinsert289 = insertelement <2 x double> poison, double %i.cl, i64 0
  %broadcast.splat290 = shufflevector <2 x double> %broadcast.splatinsert289, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph283
  %index286 = phi i64 [ 0, %vector.ph283 ], [ %index.next293, %vector.body285 ] ; 5 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index286 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load287 = load <2 x double>, ptr %i.cm, align 8, !tbaa !58, !alias.scope !389
  %wide.load288 = load <2 x double>, ptr %i.cn, align 8, !tbaa !58, !alias.scope !389
  %i.co = fmul <2 x double> %broadcast.splat290, %wide.load287
  %i.cp = fmul <2 x double> %broadcast.splat290, %wide.load288
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index286 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <2 x double> %i.co, ptr %i.cq, align 8, !tbaa !58, !alias.scope !390, !noalias !391
  store <2 x double> %i.cp, ptr %i.cr, align 8, !tbaa !58, !alias.scope !390, !noalias !391
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index286 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load291 = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !97, !alias.scope !392
  %wide.load292 = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !97, !alias.scope !392
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index286 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <2 x ptr> %wide.load291, ptr %i.cu, align 8, !tbaa !97, !alias.scope !393, !noalias !392
  store <2 x ptr> %wide.load292, ptr %i.cv, align 8, !tbaa !97, !alias.scope !393, !noalias !392
  %index.next293 = add nuw i64 %index286, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next293, %n.vec284
  br i1 %i.cw, label %middle.block294, label %vector.body285, !llvm.loop !340

middle.block294:                                  ; preds = %vector.body285
  %cmp.n295 = icmp eq i64 %n.vec284, %wide.trip.count167
  br i1 %cmp.n295, label %._crit_edge, label %.lr.ph.split.split.us.preheader535

.lr.ph.split.split.us.preheader535:               ; preds = %vector.memcheck271, %.lr.ph.split.split.us.preheader, %middle.block294
  %indvars.iv162.ph = phi i64 [ 0, %vector.memcheck271 ], [ 0, %.lr.ph.split.split.us.preheader ], [ %n.vec284, %middle.block294 ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count167, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.prol.loopexit, label %.lr.ph.split.split.us.prol

.lr.ph.split.split.us.prol:                       ; preds = %.lr.ph.split.split.us.preheader535
  %i.cx = load double, ptr %i.z, align 8, !tbaa !100
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv162.ph
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !58
  %i.da = fmul double %i.cx, %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv162.ph
  store double %i.da, ptr %i.db, align 8, !tbaa !58
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv162.ph
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !97
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv162.ph
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !97
  %indvars.iv.next163.prol = or disjoint i64 %indvars.iv162.ph, 1
  br label %.lr.ph.split.split.us.prol.loopexit

.lr.ph.split.split.us.prol.loopexit:              ; preds = %.lr.ph.split.split.us.prol, %.lr.ph.split.split.us.preheader535
  %indvars.iv162.unr = phi i64 [ %indvars.iv162.ph, %.lr.ph.split.split.us.preheader535 ], [ %indvars.iv.next163.prol, %.lr.ph.split.split.us.prol ]
  %i.df = add nsw i64 %wide.trip.count167, -1
  %i.dg = icmp eq i64 %indvars.iv162.ph, %i.df
  br i1 %i.dg, label %._crit_edge, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.prol.loopexit, %.lr.ph.split.split.us
  %indvars.iv162 = phi i64 [ %indvars.iv.next163.1, %.lr.ph.split.split.us ], [ %indvars.iv162.unr, %.lr.ph.split.split.us.prol.loopexit ] ; 6 uses
  %i.dh = load double, ptr %i.z, align 8, !tbaa !100
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv162
  %i.dj = load double, ptr %i.di, align 8, !tbaa !58
  %i.dk = fmul double %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv162
  store double %i.dk, ptr %i.dl, align 8, !tbaa !58
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv162
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !97
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv162
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !97
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 4 uses
  %i.dp = load double, ptr %i.z, align 8, !tbaa !100
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next163
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !58
  %i.ds = fmul double %i.dp, %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next163
  store double %i.ds, ptr %i.dt, align 8, !tbaa !58
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next163
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !97
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next163
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !97
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 2 uses
  %exitcond168.not.1 = icmp eq i64 %indvars.iv.next163.1, %wide.trip.count167
  br i1 %exitcond168.not.1, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !341

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.dx = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !133 ; 4 uses
  %i.ea = load ptr, ptr %i.ac, align 8, !tbaa !96 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.w to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.w, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.split
  %i.eb = shl nuw nsw i64 %wide.trip.count, 4     ; 2 uses
  %i.ec = getelementptr i8, ptr %i.i, i64 %i.eb   ; 3 uses
  %i.ed = getelementptr i8, ptr %0, i64 744
  %i.ee = shl nuw nsw i64 %wide.trip.count, 3     ; 4 uses
  %i.ef = getelementptr i8, ptr %i.cd, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.dz, i64 %i.ee
  %i.eh = getelementptr i8, ptr %i.k, i64 %i.eb   ; 2 uses
  %i.ei = getelementptr i8, ptr %i.ce, i64 %i.ee
  %i.ej = getelementptr i8, ptr %i.ea, i64 %i.ee
  %bound0 = icmp ult ptr %i.i, %i.ed
  %bound1 = icmp ult ptr %i.z, %i.ec
  %found.conflict = and i1 %bound0, %bound1
  %bound0231 = icmp ult ptr %i.i, %i.ef
  %bound1232 = icmp ult ptr %i.cd, %i.ec
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx = or i1 %found.conflict, %found.conflict233
  %bound0234 = icmp ult ptr %i.i, %i.eg
  %bound1235 = icmp ult ptr %i.dz, %i.ec
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %conflict.rdx, %found.conflict236
  %bound0238 = icmp ult ptr %i.k, %i.ei
  %bound1239 = icmp ult ptr %i.ce, %i.eh
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %conflict.rdx237, %found.conflict240
  %bound0242 = icmp ult ptr %i.k, %i.ej
  %bound1243 = icmp ult ptr %i.ea, %i.eh
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %conflict.rdx241, %found.conflict244
  br i1 %conflict.rdx245, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 4 uses
  %i.ek = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.el = load double, ptr %i.z, align 8, !tbaa !100, !alias.scope !394
  %broadcast.splatinsert248 = insertelement <2 x double> poison, double %i.el, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert248, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.em = shl nuw i64 %index, 1                   ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index
  %wide.load = load <2 x double>, ptr %i.en, align 8, !tbaa !58, !alias.scope !395
  %2 = fmul <2 x double> %broadcast.splat, %wide.load
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.em
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index
  %wide.load246 = load <2 x ptr>, ptr %i.ep, align 8, !tbaa !97, !alias.scope !396
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.em
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index
  %wide.load247 = load <2 x double>, ptr %i.er, align 8, !tbaa !58, !alias.scope !397
  %3 = fmul <2 x double> %broadcast.splat, %wide.load247
  %interleaved.vec = shufflevector <2 x double> %2, <2 x double> %3, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.eo, align 8, !tbaa !58, !alias.scope !398, !noalias !399
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %index
  %wide.load250 = load <2 x ptr>, ptr %i.es, align 8, !tbaa !97, !alias.scope !400
  %interleaved.vec251 = shufflevector <2 x ptr> %wide.load246, <2 x ptr> %wide.load250, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x ptr> %interleaved.vec251, ptr %i.eq, align 8, !tbaa !97, !alias.scope !401, !noalias !402
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !350

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit151, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.split, %middle.block
  %indvars.iv157.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.split ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.split ], [ %i.ek, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %scalar.ph ], [ %indvars.iv157.ph, %scalar.ph.preheader ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.eu = load double, ptr %i.z, align 8, !tbaa !100
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv157
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !58
  %i.ex = fmul double %i.eu, %i.ew
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %i.ex, ptr %i.ey, align 8, !tbaa !58
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv157
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !97
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !97
  %i.fc = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.fd = load double, ptr %i.z, align 8, !tbaa !100
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv157
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !58
  %i.fg = fmul double %i.fd, %i.ff
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.fc
  store double %i.fg, ptr %i.fh, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv157
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !97
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fc
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit151, label %scalar.ph, !llvm.loop !351

._crit_edge.loopexit151:                          ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ek, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %i.fl = trunc nuw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.split.us.prol.loopexit, %.lr.ph.split.split.us, %scalar.ph313.prol.loopexit, %scalar.ph313, %middle.block294, %middle.block338, %.lr.ph.split.us, %._crit_edge.loopexit151, %.preheader125
  %.0103.lcssa = phi i32 [ 0, %.preheader125 ], [ %i.fl, %._crit_edge.loopexit151 ], [ %i.w, %middle.block338 ], [ 0, %.lr.ph.split.us ], [ %i.w, %middle.block294 ], [ %i.w, %scalar.ph313.prol.loopexit ], [ %i.w, %scalar.ph313 ], [ %i.w, %.lr.ph.split.split.us ], [ %i.w, %.lr.ph.split.split.us.prol.loopexit ]
  %i.fm = tail call i32 @N_VLinearCombination(i32 noundef %.0103.lcssa, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.e) #13
  %.not114 = icmp eq i32 %i.fm, 0
  br i1 %.not114, label %bb.g, label %bb.o

bb.g:                                             ; preds = %._crit_edge
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !54
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !99
  %i.fr = tail call i32 %i.fo(ptr noundef nonnull %0, ptr noundef %i.e, double noundef %i.fq) #13
  %i.fs = icmp slt i32 %i.fr, 0
  br i1 %i.fs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double 2.000000e+00, ptr %1, align 8, !tbaa !58
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !114
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.fu, ptr noundef %i.e) #13
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !114
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.fw, double noundef 1.000000e+00, ptr noundef %i.e, ptr noundef %i.e) #13
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !122 ; 2 uses
  %.not115 = icmp eq ptr %i.fy, null
  br i1 %.not115, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !88
  %i.gb = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !95
  %i.ge = tail call i32 %i.fy(double noundef %i.ga, ptr noundef %i.gb, ptr noundef %i.gd) #13
  %.not116 = icmp eq i32 %i.ge, 0
  br i1 %.not116, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.f, %bb.i, %bb.j, %select.unfold
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !61
  %.not119 = icmp eq i32 %i.gg, 0
  br i1 %.not119, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.k
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !74 ; 13 uses
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph136, label %._crit_edge137

.lr.ph136:                                        ; preds = %.preheader
  %i.gk = load i32, ptr %i.l, align 4, !tbaa !73
  %.not121 = icmp eq i32 %i.gk, 0
  %i.gl = getelementptr i8, ptr %0, i64 736       ; 14 uses
  %i.gm = load i32, ptr %i.q, align 8, !tbaa !36
  %.not122 = icmp eq i32 %i.gm, 0                 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  br i1 %.not121, label %.lr.ph136.split.us, label %.lr.ph136.split

.lr.ph136.split.us:                               ; preds = %.lr.ph136
  br i1 %.not122, label %._crit_edge137, label %.lr.ph136.split.us.split

.lr.ph136.split.us.split:                         ; preds = %.lr.ph136.split.us
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !63 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !133 ; 6 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !132 ; 6 uses
  %i.gu = load ptr, ptr %i.go, align 8, !tbaa !96 ; 6 uses
  %wide.trip.count197 = zext nneg i32 %i.gi to i64 ; 6 uses
  %min.iters.check502 = icmp ult i32 %i.gi, 14
  br i1 %min.iters.check502, label %scalar.ph501.preheader, label %vector.memcheck503

vector.memcheck503:                               ; preds = %.lr.ph136.split.us.split
  %i.gv = shl nuw nsw i64 %wide.trip.count197, 3  ; 5 uses
  %i.gw = getelementptr i8, ptr %i.i, i64 %i.gv   ; 3 uses
  %i.gx = getelementptr i8, ptr %0, i64 744
  %i.gy = getelementptr i8, ptr %i.gr, i64 %i.gv
  %i.gz = getelementptr i8, ptr %i.gt, i64 %i.gv
  %i.ha = getelementptr i8, ptr %i.k, i64 %i.gv
  %i.hb = getelementptr i8, ptr %i.gu, i64 %i.gv
  %bound0504 = icmp ult ptr %i.i, %i.gx
  %bound1505 = icmp ult ptr %i.gl, %i.gw
  %found.conflict506 = and i1 %bound0504, %bound1505
  %bound0507.a = icmp ult ptr %i.i, %i.gy
  %bound1508.a = icmp ult ptr %i.gr, %i.gw
  %found.conflict509.a = and i1 %bound0507.a, %bound1508.a
  %conflict.rdx510.a = or i1 %found.conflict506, %found.conflict509.a
  %bound0511.a = icmp ult ptr %i.i, %i.gz
  %bound1512.a = icmp ult ptr %i.gt, %i.gw
  %found.conflict513.a = and i1 %bound0511.a, %bound1512.a
  %conflict.rdx514.a = or i1 %conflict.rdx510.a, %found.conflict513.a
  %bound0515 = icmp ult ptr %i.k, %i.hb
  %bound1516 = icmp ult ptr %i.gu, %i.ha
  %found.conflict517 = and i1 %bound0515, %bound1516
  %conflict.rdx518 = or i1 %conflict.rdx514.a, %found.conflict517
  br i1 %conflict.rdx518, label %scalar.ph501.preheader, label %vector.ph519

vector.ph519:                                     ; preds = %vector.memcheck503
  %n.vec520 = and i64 %wide.trip.count197, 2147483646 ; 3 uses
  %i.hc = load double, ptr %i.gl, align 8, !tbaa !100, !alias.scope !403
  %broadcast.splatinsert525 = insertelement <2 x double> poison, double %i.hc, i64 0
  %broadcast.splat526 = shufflevector <2 x double> %broadcast.splatinsert525, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body521

vector.body521:                                   ; preds = %vector.body521, %vector.ph519
  %index522 = phi i64 [ 0, %vector.ph519 ], [ %index.next528, %vector.body521 ] ; 6 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %index522
  %wide.load523.a = load <2 x double>, ptr %i.hd, align 8, !tbaa !58, !alias.scope !404
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %index522
  %wide.load524 = load <2 x double>, ptr %i.he, align 8, !tbaa !58, !alias.scope !405
  %i.hf = fsub <2 x double> %wide.load523.a, %wide.load524
  %i.hg = fmul <2 x double> %broadcast.splat526, %i.hf
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index522
  store <2 x double> %i.hg, ptr %i.hh, align 8, !tbaa !58, !alias.scope !406, !noalias !407
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %index522
  %wide.load527 = load <2 x ptr>, ptr %i.hi, align 8, !tbaa !97, !alias.scope !408
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index522
  store <2 x ptr> %wide.load527, ptr %i.hj, align 8, !tbaa !97, !alias.scope !409, !noalias !408
  %index.next528 = add nuw i64 %index522, 2       ; 2 uses
  %i.hk = icmp eq i64 %index.next528, %n.vec520
  br i1 %i.hk, label %middle.block529, label %vector.body521, !llvm.loop !359

middle.block529:                                  ; preds = %vector.body521
  %cmp.n530 = icmp eq i64 %n.vec520, %wide.trip.count197
  br i1 %cmp.n530, label %._crit_edge137, label %scalar.ph501.preheader

scalar.ph501.preheader:                           ; preds = %vector.memcheck503, %.lr.ph136.split.us.split, %middle.block529
  %indvars.iv192.ph = phi i64 [ 0, %vector.memcheck503 ], [ 0, %.lr.ph136.split.us.split ], [ %n.vec520, %middle.block529 ] ; 8 uses
  %xtraiter542 = and i64 %wide.trip.count197, 1
  %lcmp.mod543.not = icmp eq i64 %xtraiter542, 0
  br i1 %lcmp.mod543.not, label %scalar.ph501.prol.loopexit, label %scalar.ph501.prol

scalar.ph501.prol:                                ; preds = %scalar.ph501.preheader
  %i.hl = load double, ptr %i.gl, align 8, !tbaa !100
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv192.ph
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !58
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv192.ph
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !58
  %i.hq = fsub double %i.hn, %i.hp
  %i.hr = fmul double %i.hl, %i.hq
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv192.ph
  store double %i.hr, ptr %i.hs, align 8, !tbaa !58
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv192.ph
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !97
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv192.ph
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !97
  %indvars.iv.next193.prol = or disjoint i64 %indvars.iv192.ph, 1
  br label %scalar.ph501.prol.loopexit

scalar.ph501.prol.loopexit:                       ; preds = %scalar.ph501.prol, %scalar.ph501.preheader
  %indvars.iv192.unr = phi i64 [ %indvars.iv192.ph, %scalar.ph501.preheader ], [ %indvars.iv.next193.prol, %scalar.ph501.prol ]
  %i.hw = add nsw i64 %wide.trip.count197, -1
  %i.hx = icmp eq i64 %indvars.iv192.ph, %i.hw
  br i1 %i.hx, label %._crit_edge137, label %scalar.ph501

scalar.ph501:                                     ; preds = %scalar.ph501.prol.loopexit, %scalar.ph501
  %indvars.iv192 = phi i64 [ %indvars.iv.next193.1, %scalar.ph501 ], [ %indvars.iv192.unr, %scalar.ph501.prol.loopexit ] ; 7 uses
  %i.hy = load double, ptr %i.gl, align 8, !tbaa !100
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv192
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !58
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv192
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !58
  %i.id = fsub double %i.ia, %i.ic
  %i.ie = fmul double %i.hy, %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv192
  store double %i.ie, ptr %i.if, align 8, !tbaa !58
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv192
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !97
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv192
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !97
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 5 uses
  %i.ij = load double, ptr %i.gl, align 8, !tbaa !100
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next193
  %i.il = load double, ptr %i.ik, align 8, !tbaa !58
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv.next193
  %i.in = load double, ptr %i.im, align 8, !tbaa !58
  %i.io = fsub double %i.il, %i.in
  %i.ip = fmul double %i.ij, %i.io
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next193
  store double %i.ip, ptr %i.iq, align 8, !tbaa !58
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next193
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !97
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next193
  store ptr %i.is, ptr %i.it, align 8, !tbaa !97
  %indvars.iv.next193.1 = add nuw nsw i64 %indvars.iv192, 2 ; 2 uses
  %exitcond198.not.1 = icmp eq i64 %indvars.iv.next193.1, %wide.trip.count197
  br i1 %exitcond198.not.1, label %._crit_edge137, label %scalar.ph501, !llvm.loop !360

.lr.ph136.split:                                  ; preds = %.lr.ph136
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !64 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !133 ; 10 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !132 ; 10 uses
  %i.jb = load ptr, ptr %i.iu, align 8, !tbaa !101 ; 10 uses
  br i1 %.not122, label %.lr.ph136.split.split.us.preheader, label %.lr.ph136.split.split

.lr.ph136.split.split.us.preheader:               ; preds = %.lr.ph136.split
  %wide.trip.count190 = zext nneg i32 %i.gi to i64 ; 6 uses
  %min.iters.check450 = icmp ult i32 %i.gi, 14
  br i1 %min.iters.check450, label %.lr.ph136.split.split.us.preheader532, label %vector.memcheck451

vector.memcheck451:                               ; preds = %.lr.ph136.split.split.us.preheader
  %i.jc = shl nuw nsw i64 %wide.trip.count190, 3  ; 5 uses
  %i.jd = getelementptr i8, ptr %i.i, i64 %i.jc   ; 3 uses
  %i.je = getelementptr i8, ptr %0, i64 744
  %i.jf = getelementptr i8, ptr %i.iy, i64 %i.jc
  %i.jg = getelementptr i8, ptr %i.ja, i64 %i.jc
  %i.jh = getelementptr i8, ptr %i.k, i64 %i.jc
  %i.ji = getelementptr i8, ptr %i.jb, i64 %i.jc
  %bound0452 = icmp ult ptr %i.i, %i.je
  %bound1453 = icmp ult ptr %i.gl, %i.jd
  %found.conflict454 = and i1 %bound0452, %bound1453
  %bound0455.a = icmp ult ptr %i.i, %i.jf
  %bound1456.a = icmp ult ptr %i.iy, %i.jd
  %found.conflict457.a = and i1 %bound0455.a, %bound1456.a
  %conflict.rdx458.a = or i1 %found.conflict454, %found.conflict457.a
  %bound0459.a = icmp ult ptr %i.i, %i.jg
  %bound1460.a = icmp ult ptr %i.ja, %i.jd
  %found.conflict461.a = and i1 %bound0459.a, %bound1460.a
  %conflict.rdx462.a = or i1 %conflict.rdx458.a, %found.conflict461.a
  %bound0463 = icmp ult ptr %i.k, %i.ji
  %bound1464 = icmp ult ptr %i.jb, %i.jh
  %found.conflict465 = and i1 %bound0463, %bound1464
  %conflict.rdx466 = or i1 %conflict.rdx462.a, %found.conflict465
  br i1 %conflict.rdx466, label %.lr.ph136.split.split.us.preheader532, label %vector.ph467

vector.ph467:                                     ; preds = %vector.memcheck451
  %n.vec468 = and i64 %wide.trip.count190, 2147483646 ; 3 uses
  %i.jj = load double, ptr %i.gl, align 8, !tbaa !100, !alias.scope !410
  %broadcast.splatinsert473 = insertelement <2 x double> poison, double %i.jj, i64 0
  %broadcast.splat474 = shufflevector <2 x double> %broadcast.splatinsert473, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body469

vector.body469:                                   ; preds = %vector.body469, %vector.ph467
  %index470 = phi i64 [ 0, %vector.ph467 ], [ %index.next476, %vector.body469 ] ; 6 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %index470
  %wide.load471.a = load <2 x double>, ptr %i.jk, align 8, !tbaa !58, !alias.scope !411
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %index470
  %wide.load472 = load <2 x double>, ptr %i.jl, align 8, !tbaa !58, !alias.scope !412
  %i.jm = fsub <2 x double> %wide.load471.a, %wide.load472
  %i.jn = fmul <2 x double> %broadcast.splat474, %i.jm
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index470
  store <2 x double> %i.jn, ptr %i.jo, align 8, !tbaa !58, !alias.scope !413, !noalias !414
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %index470
  %wide.load475 = load <2 x ptr>, ptr %i.jp, align 8, !tbaa !97, !alias.scope !415
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index470
  store <2 x ptr> %wide.load475, ptr %i.jq, align 8, !tbaa !97, !alias.scope !416, !noalias !415
  %index.next476 = add nuw i64 %index470, 2       ; 2 uses
  %i.jr = icmp eq i64 %index.next476, %n.vec468
  br i1 %i.jr, label %middle.block477, label %vector.body469, !llvm.loop !368

middle.block477:                                  ; preds = %vector.body469
  %cmp.n478 = icmp eq i64 %n.vec468, %wide.trip.count190
  br i1 %cmp.n478, label %._crit_edge137, label %.lr.ph136.split.split.us.preheader532

.lr.ph136.split.split.us.preheader532:            ; preds = %vector.memcheck451, %.lr.ph136.split.split.us.preheader, %middle.block477
  %indvars.iv185.ph = phi i64 [ 0, %vector.memcheck451 ], [ 0, %.lr.ph136.split.split.us.preheader ], [ %n.vec468, %middle.block477 ] ; 8 uses
  %xtraiter540 = and i64 %wide.trip.count190, 1
  %lcmp.mod541.not = icmp eq i64 %xtraiter540, 0
  br i1 %lcmp.mod541.not, label %.lr.ph136.split.split.us.prol.loopexit, label %.lr.ph136.split.split.us.prol

.lr.ph136.split.split.us.prol:                    ; preds = %.lr.ph136.split.split.us.preheader532
  %i.js = load double, ptr %i.gl, align 8, !tbaa !100
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv185.ph
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !58
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv185.ph
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !58
  %i.jx = fsub double %i.ju, %i.jw
  %i.jy = fmul double %i.js, %i.jx
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv185.ph
  store double %i.jy, ptr %i.jz, align 8, !tbaa !58
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv185.ph
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !97
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv185.ph
  store ptr %i.kb, ptr %i.kc, align 8, !tbaa !97
  %indvars.iv.next186.prol = or disjoint i64 %indvars.iv185.ph, 1
  br label %.lr.ph136.split.split.us.prol.loopexit

.lr.ph136.split.split.us.prol.loopexit:           ; preds = %.lr.ph136.split.split.us.prol, %.lr.ph136.split.split.us.preheader532
  %indvars.iv185.unr = phi i64 [ %indvars.iv185.ph, %.lr.ph136.split.split.us.preheader532 ], [ %indvars.iv.next186.prol, %.lr.ph136.split.split.us.prol ]
  %i.kd = add nsw i64 %wide.trip.count190, -1
  %i.ke = icmp eq i64 %indvars.iv185.ph, %i.kd
  br i1 %i.ke, label %._crit_edge137, label %.lr.ph136.split.split.us

.lr.ph136.split.split.us:                         ; preds = %.lr.ph136.split.split.us.prol.loopexit, %.lr.ph136.split.split.us
  %indvars.iv185 = phi i64 [ %indvars.iv.next186.1, %.lr.ph136.split.split.us ], [ %indvars.iv185.unr, %.lr.ph136.split.split.us.prol.loopexit ] ; 7 uses
  %i.kf = load double, ptr %i.gl, align 8, !tbaa !100
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv185
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !58
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv185
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !58
  %i.kk = fsub double %i.kh, %i.kj
  %i.kl = fmul double %i.kf, %i.kk
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv185
  store double %i.kl, ptr %i.km, align 8, !tbaa !58
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv185
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !97
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv185
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !97
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 5 uses
  %i.kq = load double, ptr %i.gl, align 8, !tbaa !100
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv.next186
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !58
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next186
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !58
  %i.kv = fsub double %i.ks, %i.ku
  %i.kw = fmul double %i.kq, %i.kv
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next186
  store double %i.kw, ptr %i.kx, align 8, !tbaa !58
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv.next186
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !97
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next186
  store ptr %i.kz, ptr %i.la, align 8, !tbaa !97
  %indvars.iv.next186.1 = add nuw nsw i64 %indvars.iv185, 2 ; 2 uses
  %exitcond191.not.1 = icmp eq i64 %indvars.iv.next186.1, %wide.trip.count190
  br i1 %exitcond191.not.1, label %._crit_edge137, label %.lr.ph136.split.split.us, !llvm.loop !369

.lr.ph136.split.split:                            ; preds = %.lr.ph136.split
  %i.lb = load ptr, ptr %i.gn, align 8, !tbaa !63 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !133 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 40
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !132 ; 4 uses
  %i.lg = load ptr, ptr %i.go, align 8, !tbaa !96 ; 4 uses
  %wide.trip.count183 = zext nneg i32 %i.gi to i64 ; 5 uses
  %min.iters.check378 = icmp ult i32 %i.gi, 14
  br i1 %min.iters.check378, label %scalar.ph377.preheader, label %vector.memcheck379

vector.memcheck379:                               ; preds = %.lr.ph136.split.split
  %i.lh = shl nuw nsw i64 %wide.trip.count183, 4  ; 2 uses
  %i.li = getelementptr i8, ptr %i.i, i64 %i.lh   ; 5 uses
  %i.lj = getelementptr i8, ptr %0, i64 744
  %i.lk = shl nuw nsw i64 %wide.trip.count183, 3  ; 6 uses
  %i.ll = getelementptr i8, ptr %i.iy, i64 %i.lk
  %i.lm = getelementptr i8, ptr %i.ja, i64 %i.lk
  %i.ln = getelementptr i8, ptr %i.ld, i64 %i.lk
  %i.lo = getelementptr i8, ptr %i.lf, i64 %i.lk
  %i.lp = getelementptr i8, ptr %i.k, i64 %i.lh   ; 2 uses
  %i.lq = getelementptr i8, ptr %i.jb, i64 %i.lk
  %i.lr = getelementptr i8, ptr %i.lg, i64 %i.lk
  %bound0380 = icmp ult ptr %i.i, %i.lj
  %bound1381 = icmp ult ptr %i.gl, %i.li
  %found.conflict382 = and i1 %bound0380, %bound1381
  %bound0383 = icmp ult ptr %i.i, %i.ll
  %bound1384 = icmp ult ptr %i.iy, %i.li
  %found.conflict385 = and i1 %bound0383, %bound1384
  %conflict.rdx386 = or i1 %found.conflict382, %found.conflict385
  %bound0387 = icmp ult ptr %i.i, %i.lm
  %bound1388 = icmp ult ptr %i.ja, %i.li
  %found.conflict389 = and i1 %bound0387, %bound1388
  %conflict.rdx390 = or i1 %conflict.rdx386, %found.conflict389
  %bound0391 = icmp ult ptr %i.i, %i.ln
  %bound1392 = icmp ult ptr %i.ld, %i.li
  %found.conflict393 = and i1 %bound0391, %bound1392
  %conflict.rdx394 = or i1 %conflict.rdx390, %found.conflict393
  %bound0395 = icmp ult ptr %i.i, %i.lo
  %bound1396 = icmp ult ptr %i.lf, %i.li
  %found.conflict397 = and i1 %bound0395, %bound1396
  %conflict.rdx398 = or i1 %conflict.rdx394, %found.conflict397
  %bound0399 = icmp ult ptr %i.k, %i.lq
  %bound1400 = icmp ult ptr %i.jb, %i.lp
  %found.conflict401 = and i1 %bound0399, %bound1400
  %conflict.rdx402 = or i1 %conflict.rdx398, %found.conflict401
  %bound0403 = icmp ult ptr %i.k, %i.lr
  %bound1404 = icmp ult ptr %i.lg, %i.lp
  %found.conflict405 = and i1 %bound0403, %bound1404
  %conflict.rdx406 = or i1 %conflict.rdx402, %found.conflict405
  br i1 %conflict.rdx406, label %scalar.ph377.preheader, label %vector.ph407

vector.ph407:                                     ; preds = %vector.memcheck379
  %n.vec408 = and i64 %wide.trip.count183, 2147483646 ; 4 uses
  %i.ls = shl nuw nsw i64 %n.vec408, 1            ; 2 uses
  %i.lt = load double, ptr %i.gl, align 8, !tbaa !100, !alias.scope !417
  %broadcast.splatinsert418 = insertelement <2 x double> poison, double %i.lt, i64 0
  %broadcast.splat412 = shufflevector <2 x double> %broadcast.splatinsert418, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body409

vector.body409:                                   ; preds = %vector.body409, %vector.ph407
  %index410 = phi i64 [ 0, %vector.ph407 ], [ %index.next423, %vector.body409 ] ; 8 uses
  %i.lu = shl nuw i64 %index410, 1                ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %index410
  %wide.load411 = load <2 x double>, ptr %i.lv, align 8, !tbaa !58, !alias.scope !418
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %index410
  %wide.load412 = load <2 x double>, ptr %i.lw, align 8, !tbaa !58, !alias.scope !419
  %i.lx = fsub <2 x double> %wide.load411, %wide.load412
  %4 = fmul <2 x double> %broadcast.splat412, %i.lx
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.lu
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %index410
  %wide.load415.a = load <2 x ptr>, ptr %i.lz, align 8, !tbaa !97, !alias.scope !420
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.lu
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %index410
  %wide.load416 = load <2 x double>, ptr %i.mb, align 8, !tbaa !58, !alias.scope !421
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %index410
  %wide.load417.a = load <2 x double>, ptr %i.mc, align 8, !tbaa !58, !alias.scope !422
  %i.md = fsub <2 x double> %wide.load416, %wide.load417.a
  %5 = fmul <2 x double> %broadcast.splat412, %i.md
  %interleaved.vec416 = shufflevector <2 x double> %4, <2 x double> %5, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec416, ptr %i.ly, align 8, !tbaa !58, !alias.scope !423, !noalias !424
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %index410
  %wide.load421 = load <2 x ptr>, ptr %i.me, align 8, !tbaa !97, !alias.scope !425
  %interleaved.vec422 = shufflevector <2 x ptr> %wide.load415.a, <2 x ptr> %wide.load421, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x ptr> %interleaved.vec422, ptr %i.ma, align 8, !tbaa !97, !alias.scope !426, !noalias !427
  %index.next423 = add nuw i64 %index410, 2       ; 2 uses
  %i.mf = icmp eq i64 %index.next423, %n.vec408
  br i1 %i.mf, label %middle.block424, label %vector.body409, !llvm.loop !380

middle.block424:                                  ; preds = %vector.body409
  %cmp.n425 = icmp eq i64 %n.vec408, %wide.trip.count183
  br i1 %cmp.n425, label %._crit_edge137.loopexit148, label %scalar.ph377.preheader

scalar.ph377.preheader:                           ; preds = %vector.memcheck379, %.lr.ph136.split.split, %middle.block424
  %indvars.iv178.ph = phi i64 [ 0, %vector.memcheck379 ], [ 0, %.lr.ph136.split.split ], [ %n.vec408, %middle.block424 ]
  %indvars.iv176.ph = phi i64 [ 0, %vector.memcheck379 ], [ 0, %.lr.ph136.split.split ], [ %i.ls, %middle.block424 ]
  br label %scalar.ph377

scalar.ph377:                                     ; preds = %scalar.ph377.preheader, %scalar.ph377
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %scalar.ph377 ], [ %indvars.iv178.ph, %scalar.ph377.preheader ] ; 7 uses
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %scalar.ph377 ], [ %indvars.iv176.ph, %scalar.ph377.preheader ] ; 4 uses
  %i.mg = load double, ptr %i.gl, align 8, !tbaa !100
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv178
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !58
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv178
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !58
  %i.ml = fsub double %i.mi, %i.mk
  %i.mm = fmul double %i.mg, %i.ml
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv176
  store double %i.mm, ptr %i.mn, align 8, !tbaa !58
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv178
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !97
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv176
  store ptr %i.mp, ptr %i.mq, align 8, !tbaa !97
  %i.mr = or disjoint i64 %indvars.iv176, 1       ; 2 uses
  %i.ms = load double, ptr %i.gl, align 8, !tbaa !100
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %indvars.iv178
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !58
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv178
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !58
  %i.mx = fsub double %i.mu, %i.mw
  %i.my = fmul double %i.ms, %i.mx
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.mr
  store double %i.my, ptr %i.mz, align 8, !tbaa !58
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv178
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !97
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.mr
  store ptr %i.nb, ptr %i.nc, align 8, !tbaa !97
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count183
  br i1 %exitcond184.not, label %._crit_edge137.loopexit148, label %scalar.ph377, !llvm.loop !381

._crit_edge137.loopexit148:                       ; preds = %scalar.ph377, %middle.block424
  %indvars.iv.next177.lcssa = phi i64 [ %i.ls, %middle.block424 ], [ %indvars.iv.next177, %scalar.ph377 ]
  %i.nd = trunc nuw i64 %indvars.iv.next177.lcssa to i32
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %.lr.ph136.split.split.us.prol.loopexit, %.lr.ph136.split.split.us, %scalar.ph501.prol.loopexit, %scalar.ph501, %middle.block477, %middle.block529, %.lr.ph136.split.us, %._crit_edge137.loopexit148, %.preheader
  %.3.lcssa = phi i32 [ 0, %.preheader ], [ %i.nd, %._crit_edge137.loopexit148 ], [ %i.gi, %middle.block529 ], [ 0, %.lr.ph136.split.us ], [ %i.gi, %middle.block477 ], [ %i.gi, %scalar.ph501.prol.loopexit ], [ %i.gi, %scalar.ph501 ], [ %i.gi, %.lr.ph136.split.split.us ], [ %i.gi, %.lr.ph136.split.split.us.prol.loopexit ]
  %i.ne = tail call i32 @N_VLinearCombination(i32 noundef %.3.lcssa, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.g) #13
  %.not120 = icmp eq i32 %i.ne, 0
  br i1 %.not120, label %bb.l, label %bb.o

bb.l:                                             ; preds = %._crit_edge137
  %i.nf = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !54
  %i.nh = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !99
  %i.nj = tail call i32 %i.ng(ptr noundef nonnull %0, ptr noundef %i.g, double noundef %i.ni) #13
  %i.nk = icmp slt i32 %i.nj, 0
  br i1 %i.nk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double 2.000000e+00, ptr %1, align 8, !tbaa !58
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !75
  %i.nn = tail call double @N_VWrmsNorm(ptr noundef %i.g, ptr noundef %i.nm) #13
  store double %i.nn, ptr %1, align 8, !tbaa !58
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n, %._crit_edge137, %bb.j, %._crit_edge, %bb.m, %bb.h, %bb.b
  %.0107 = phi i32 [ -21, %bb.b ], [ -28, %._crit_edge137 ], [ -37, %bb.j ], [ 4, %bb.m ], [ -28, %._crit_edge ], [ 4, %bb.h ], [ 0, %bb.n ], [ 0, %bb.k ]
  ret i32 %.0107
}

; Function Attrs: nounwind uwtable
define range(i32 -37, 1) i32 @arkStep_ComputeSolutions(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 40 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3240, ptr noundef nonnull @__func__.arkStep_ComputeSolutions, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 440 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81   ; 7 uses
  store double 0.000000e+00, ptr %1, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !73
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.thread255, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.p = tail call i32 @ARKodeButcherTable_IsStifflyAccurate(ptr noundef %i.o) #13
  %.not142.not = icmp eq i32 %i.p, 0              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !36
  %.not143 = icmp eq i32 %i.r, 0
  br i1 %.not143, label %bb.f, label %bb.e

.thread255:                                       ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !36
  %.not143257 = icmp eq i32 %i.t, 0
  br i1 %.not143257, label %.thread260, label %bb.e

bb.e:                                             ; preds = %.thread255, %bb.d
  %i.u = phi ptr [ %i.s, %.thread255 ], [ %i.q, %bb.d ] ; 2 uses
  %.0259 = phi i1 [ false, %.thread255 ], [ %.not142.not, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.x = tail call i32 @ARKodeButcherTable_IsStifflyAccurate(ptr noundef %i.w) #13
  %.not144 = icmp eq i32 %i.x, 0
  %or.cond = select i1 %.not144, i1 true, i1 %.0259
  br i1 %or.cond, label %.thread, label %.thread260

bb.f:                                             ; preds = %bb.d
  br i1 %.not142.not, label %.thread, label %.thread260

.thread:                                          ; preds = %bb.e, %bb.f
  %i.y = phi ptr [ %i.u, %bb.e ], [ %i.q, %bb.f ] ; 3 uses
  store double 1.000000e+00, ptr %i.i, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !114
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !97
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !74 ; 5 uses
  %i.ad = icmp sgt i32 %i.ac, 0                   ; 3 uses
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.ae = load i32, ptr %i.l, align 4, !tbaa !73
  %.not153 = icmp eq i32 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !36
  %.not154 = icmp eq i32 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %wide.trip.count = zext nneg i32 %i.ac to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %.0200207 = phi i32 [ 1, %.lr.ph ], [ %.2202, %bb.k ] ; 3 uses
  br i1 %.not153, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load double, ptr %i.af, align 8, !tbaa !100
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !133
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !58
  %i.ar = fmul double %i.al, %i.aq
  %i.as = sext i32 %.0200207 to i64               ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.as
  store double %i.ar, ptr %i.at, align 8, !tbaa !58
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !101
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !97
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.as
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !97
  %i.ay = add nsw i32 %.0200207, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1201 = phi i32 [ %.0200207, %bb.g ], [ %i.ay, %bb.h ] ; 3 uses
  br i1 %.not154, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = load double, ptr %i.af, align 8, !tbaa !100
  %i.ba = load ptr, ptr %i.aj, align 8, !tbaa !63
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !133
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load double, ptr %i.bd, align 8, !tbaa !58
  %i.bf = fmul double %i.az, %i.be
  %i.bg = sext i32 %.1201 to i64                  ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bg
  store double %i.bf, ptr %i.bh, align 8, !tbaa !58
  %i.bi = load ptr, ptr %i.ak, align 8, !tbaa !96
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !97
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bg
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !97
  %i.bm = add nsw i32 %.1201, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.2202 = phi i32 [ %.1201, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.k, %.thread
  %.0200.lcssa = phi i32 [ 1, %.thread ], [ %.2202, %bb.k ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 460
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !103
  %.not146 = icmp eq i32 %i.bo, 0
  br i1 %.not146, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !104
  %.not147 = icmp eq i32 %i.bq, 0
  br i1 %.not147, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.pn.in.v = phi i64 [ 120, %bb.l ], [ 112, %._crit_edge ]
  %.pn.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pn.in.v
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !139 ; 2 uses
  %.0131.in = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  %.0131 = load ptr, ptr %.0131.in, align 8, !tbaa !133 ; 7 uses
  %.0133.in = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %.0133 = load ptr, ptr %.0133.in, align 8, !tbaa !119 ; 7 uses
  br i1 %i.ad, label %.lr.ph212, label %.._crit_edge213_crit_edge

.._crit_edge213_crit_edge:                        ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !83
  %.phi.trans.insert241 = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.pre242 = load ptr, ptr %.phi.trans.insert241, align 8, !tbaa !84
  br label %._crit_edge213

.lr.ph212:                                        ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !83 ; 12 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !84 ; 12 uses
  %wide.trip.count229 = zext nneg i32 %i.ac to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ac, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph212
  %i.bx = shl nuw nsw i64 %wide.trip.count229, 3  ; 4 uses
  %i.by = getelementptr i8, ptr %i.bu, i64 %i.bx  ; 4 uses
  %i.bz = getelementptr i8, ptr %i.bw, i64 %i.bx  ; 4 uses
  %i.ca = getelementptr i8, ptr %0, i64 928       ; 2 uses
  %i.cb = getelementptr i8, ptr %.0133, i64 %i.bx ; 2 uses
  %i.cc = getelementptr i8, ptr %.0131, i64 %i.bx ; 2 uses
  %bound0 = icmp ult ptr %i.bu, %i.bz
  %bound1 = icmp ult ptr %i.bw, %i.by
  %found.conflict = and i1 %bound0, %bound1
  %bound0289 = icmp ult ptr %i.bu, %i.ca
  %bound1290 = icmp ult ptr %i.bs, %i.by
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx = or i1 %found.conflict, %found.conflict291
  %bound0292 = icmp ult ptr %i.bu, %i.cb
  %bound1293 = icmp ult ptr %.0133, %i.by
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx295 = or i1 %conflict.rdx, %found.conflict294
  %bound0296 = icmp ult ptr %i.bu, %i.cc
  %bound1297 = icmp ult ptr %.0131, %i.by
  %found.conflict298 = and i1 %bound0296, %bound1297
  %conflict.rdx299 = or i1 %conflict.rdx295, %found.conflict298
  %bound0300 = icmp ult ptr %i.bw, %i.ca
  %bound1301 = icmp ult ptr %i.bs, %i.bz
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %conflict.rdx299, %found.conflict302
  %bound0304 = icmp ult ptr %i.bw, %i.cb
  %bound1305 = icmp ult ptr %.0133, %i.bz
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %conflict.rdx303, %found.conflict306
  %bound0308 = icmp ult ptr %i.bw, %i.cc
  %bound1309 = icmp ult ptr %.0131, %i.bz
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %conflict.rdx307, %found.conflict310
  br i1 %conflict.rdx311, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count229, 2147483646 ; 3 uses
  %i.cd = load double, ptr %i.br, align 8, !tbaa !117, !alias.scope !449
  %broadcast.splatinsert312 = insertelement <2 x double> poison, double %i.cd, i64 0
  %broadcast.splat313 = shufflevector <2 x double> %broadcast.splatinsert312, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = load double, ptr %i.bs, align 8, !tbaa !100, !alias.scope !449
  %broadcast.splatinsert315 = insertelement <2 x double> poison, double %i.ce, i64 0
  %broadcast.splat316 = shufflevector <2 x double> %broadcast.splatinsert315, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.0133, i64 %index
  %wide.load = load <2 x double>, ptr %i.cf, align 8, !tbaa !58, !alias.scope !450
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat316, <2 x double> %broadcast.splat313)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %index
  store <2 x double> %i.cg, ptr %i.ch, align 8, !tbaa !58, !alias.scope !451, !noalias !452
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.0131, i64 %index
  %wide.load314 = load <2 x double>, ptr %i.ci, align 8, !tbaa !58, !alias.scope !453
  %i.cj = fmul <2 x double> %broadcast.splat316, %wide.load314
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %index
  store <2 x double> %i.cj, ptr %i.ck, align 8, !tbaa !58, !alias.scope !454, !noalias !455
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !434

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count229
  br i1 %cmp.n, label %._crit_edge213, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph212, %middle.block
  %indvars.iv226.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph212 ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count229, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cm = load double, ptr %i.br, align 8, !tbaa !117
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.0133, i64 %indvars.iv226.ph
  %i.co = load double, ptr %i.cn, align 8, !tbaa !58
  %i.cp = load double, ptr %i.bs, align 8, !tbaa !100
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cp, double %i.cm)
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv226.ph
  store double %i.cq, ptr %i.cr, align 8, !tbaa !58
  %i.cs = load double, ptr %i.bs, align 8, !tbaa !100
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.0131, i64 %indvars.iv226.ph
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !58
  %i.cv = fmul double %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv226.ph
  store double %i.cv, ptr %i.cw, align 8, !tbaa !58
  %indvars.iv.next227.prol = or disjoint i64 %indvars.iv226.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv226.unr = phi i64 [ %indvars.iv226.ph, %scalar.ph.preheader ], [ %indvars.iv.next227.prol, %scalar.ph.prol ]
  %i.cx = add nsw i64 %wide.trip.count229, -1
  %i.cy = icmp eq i64 %indvars.iv226.ph, %i.cx
  br i1 %i.cy, label %._crit_edge213, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv226 = phi i64 [ %indvars.iv.next227.1, %scalar.ph ], [ %indvars.iv226.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cz = load double, ptr %i.br, align 8, !tbaa !117
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.0133, i64 %indvars.iv226
  %i.db = load double, ptr %i.da, align 8, !tbaa !58
  %i.dc = load double, ptr %i.bs, align 8, !tbaa !100
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dc, double %i.cz)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv226
  store double %i.dd, ptr %i.de, align 8, !tbaa !58
  %i.df = load double, ptr %i.bs, align 8, !tbaa !100
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.0131, i64 %indvars.iv226
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !58
  %i.di = fmul double %i.df, %i.dh
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv226
  store double %i.di, ptr %i.dj, align 8, !tbaa !58
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 4 uses
  %i.dk = load double, ptr %i.br, align 8, !tbaa !117
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.0133, i64 %indvars.iv.next227
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !58
  %i.dn = load double, ptr %i.bs, align 8, !tbaa !100
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dn, double %i.dk)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.next227
  store double %i.do, ptr %i.dp, align 8, !tbaa !58
  %i.dq = load double, ptr %i.bs, align 8, !tbaa !100
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.0131, i64 %indvars.iv.next227
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !58
  %i.dt = fmul double %i.dq, %i.ds
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next227
  store double %i.dt, ptr %i.du, align 8, !tbaa !58
  %indvars.iv.next227.1 = add nuw nsw i64 %indvars.iv226, 2 ; 2 uses
  %exitcond230.not.1 = icmp eq i64 %indvars.iv.next227.1, %wide.trip.count229
  br i1 %exitcond230.not.1, label %._crit_edge213, label %scalar.ph, !llvm.loop !435

._crit_edge213:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.._crit_edge213_crit_edge
  %i.dv = phi ptr [ %.pre242, %.._crit_edge213_crit_edge ], [ %i.bw, %middle.block ], [ %i.bw, %scalar.ph ], [ %i.bw, %scalar.ph.prol.loopexit ]
  %i.dw = phi ptr [ %.pre, %.._crit_edge213_crit_edge ], [ %i.bu, %middle.block ], [ %i.bu, %scalar.ph ], [ %i.bu, %scalar.ph.prol.loopexit ]
  %i.dx = load ptr, ptr %i.h, align 8, !tbaa !79  ; 5 uses
  %i.dy = load ptr, ptr %i.j, align 8, !tbaa !81  ; 5 uses
  %i.dz = ptrtoaddr ptr %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !105
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !106
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !43 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !42 ; 5 uses
  %i.ei = ptrtoaddr ptr %i.eh to i64
  %i.ej = icmp sgt i32 %i.ef, 0
  br i1 %i.ej, label %.lr.ph.preheader.i, label %arkStep_ApplyForcing.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge213
  %i.ek = sext i32 %.0200.lcssa to i64            ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.ef to i64 ; 7 uses
  %min.iters.check319 = icmp ult i32 %i.ef, 8
  br i1 %min.iters.check319, label %.lr.ph.i.preheader, label %vector.memcheck320

vector.memcheck320:                               ; preds = %.lr.ph.preheader.i
  %i.el = shl nsw i64 %i.ek, 3
  %i.em = add i64 %i.el, %i.dz
  %i.en = sub i64 %i.ei, %i.em
  %diff.check = icmp ugt i64 %i.en, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph321

vector.ph321:                                     ; preds = %vector.memcheck320
  %n.vec322 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph321
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next327, %vector.body323 ] ; 3 uses
  %i.eo = add nsw i64 %index324, %i.ek            ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <2 x double> zeroinitializer, ptr %i.ep, align 8, !tbaa !58
  store <2 x double> zeroinitializer, ptr %i.eq, align 8, !tbaa !58
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %index324 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load325 = load <2 x ptr>, ptr %i.er, align 8, !tbaa !97
  %wide.load326 = load <2 x ptr>, ptr %i.es, align 8, !tbaa !97
  %i.et = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.eo ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <2 x ptr> %wide.load325, ptr %i.et, align 8, !tbaa !97
  store <2 x ptr> %wide.load326, ptr %i.eu, align 8, !tbaa !97
  %index.next327 = add nuw i64 %index324, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next327, %n.vec322
  br i1 %i.ev, label %middle.block328, label %vector.body323, !llvm.loop !436

middle.block328:                                  ; preds = %vector.body323
  %cmp.n329 = icmp eq i64 %n.vec322, %wide.trip.count.i
  br i1 %cmp.n329, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck320, %.lr.ph.preheader.i, %middle.block328
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck320 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec322, %middle.block328 ] ; 5 uses
  %xtraiter443 = and i64 %wide.trip.count.i, 1
  %lcmp.mod444.not = icmp eq i64 %xtraiter443, 0
  br i1 %lcmp.mod444.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ew = add nsw i64 %indvars.iv.i.ph, %i.ek     ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.ew
  store double 0.000000e+00, ptr %i.ex, align 8, !tbaa !58
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.i.ph
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !97
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.ew
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !97
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fb = add nsw i64 %wide.trip.count.i, -1
  %i.fc = icmp eq i64 %indvars.iv.i.ph, %i.fb
  br i1 %i.fc, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block328
  br i1 %i.ad, label %.lr.ph43.preheader.i, label %arkStep_ApplyForcing.exit

.lr.ph43.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count56.i = zext nneg i32 %i.ac to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.dx, i64 %i.ek ; 3 uses
  %xtraiter445 = and i64 %wide.trip.count.i, 1
  %i.fd = icmp eq i32 %i.ef, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod446.not = icmp eq i64 %xtraiter445, 0
  %lcmp.mod447 = trunc i32 %i.ef to i1
  br label %.lr.ph43.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.fe = add nsw i64 %indvars.iv.i, %i.ek        ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fe
  store double 0.000000e+00, ptr %i.ff, align 8, !tbaa !58
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.i
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !97
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.fe
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !97
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fj = add nsw i64 %indvars.iv.next.i, %i.ek   ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fj
  store double 0.000000e+00, ptr %i.fk, align 8, !tbaa !58
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next.i
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !97
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.fj
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !97
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.preheader.i, label %.lr.ph.i, !llvm.loop !437

.lr.ph43.i:                                       ; preds = %._crit_edge.i, %.lr.ph43.preheader.i
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph43.preheader.i ], [ %indvars.iv.next54.i, %._crit_edge.i ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv53.i
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !58
  %i.fq = fsub double %i.fp, %i.eb
  %i.fr = fdiv double %i.fq, %i.ed                ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv53.i ; 3 uses
  br i1 %i.fd, label %.epil.preheader, label %.lr.ph43.i.new
end_hunk_0
begin_hunk_1_@arkStep_ComputeSolutions:bb.a
  br i1 %.not151, label %.thread260, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !88
  %i.gl = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !95
  %i.go = tail call i32 %i.gi(double noundef %i.gk, ptr noundef %i.gl, ptr noundef %i.gn) #13
  %.not152 = icmp eq i32 %i.go, 0
  br i1 %.not152, label %.thread260, label %bb.ab

.thread260:                                       ; preds = %.thread255, %bb.e, %bb.o, %bb.p, %bb.f
  %i.gp = phi ptr [ %i.u, %bb.e ], [ %i.y, %bb.o ], [ %i.y, %bb.p ], [ %i.q, %bb.f ], [ %i.s, %.thread255 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !61
  %.not155 = icmp eq i32 %i.gr, 0
  br i1 %.not155, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread260
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !62
  %.not156 = icmp eq i32 %i.gt, 0
  br i1 %.not156, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread260
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !74 ; 5 uses
  %i.gw = icmp sgt i32 %i.gv, 0                   ; 3 uses
  br i1 %i.gw, label %.lr.ph217, label %._crit_edge218

.lr.ph217:                                        ; preds = %bb.r
  %i.gx = load i32, ptr %i.l, align 4, !tbaa !73
  %.not164 = icmp eq i32 %i.gx, 0
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.hb = load i32, ptr %i.gp, align 8, !tbaa !36
  %.not165 = icmp eq i32 %i.hb, 0
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %wide.trip.count234 = zext nneg i32 %i.gv to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph217, %bb.w
  %indvars.iv231 = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next232, %bb.w ] ; 7 uses
  %.4214 = phi i32 [ 0, %.lr.ph217 ], [ %.6, %bb.w ] ; 3 uses
  br i1 %.not164, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.he = load double, ptr %i.gy, align 8, !tbaa !100
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !64 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !133
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv231
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !58
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !132
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv231
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !58
  %i.ho = fsub double %i.hj, %i.hn
  %i.hp = fmul double %i.he, %i.ho
  %i.hq = sext i32 %.4214 to i64                  ; 2 uses
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.hq
  store double %i.hp, ptr %i.hr, align 8, !tbaa !58
  %i.hs = load ptr, ptr %i.ha, align 8, !tbaa !101
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv231
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !97
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.hq
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !97
  %i.hw = add nsw i32 %.4214, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.5 = phi i32 [ %.4214, %bb.s ], [ %i.hw, %bb.t ] ; 3 uses
  br i1 %.not165, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hx = load double, ptr %i.gy, align 8, !tbaa !100
  %i.hy = load ptr, ptr %i.hc, align 8, !tbaa !63 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !133
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv231
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !58
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !132
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv231
  %i.ig = load double, ptr %i.if, align 8, !tbaa !58
  %i.ih = fsub double %i.ic, %i.ig
  %i.ii = fmul double %i.hx, %i.ih
  %i.ij = sext i32 %.5 to i64                     ; 2 uses
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ij
  store double %i.ii, ptr %i.ik, align 8, !tbaa !58
  %i.il = load ptr, ptr %i.hd, align 8, !tbaa !96
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv231
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !97
  %i.io = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ij
  store ptr %i.in, ptr %i.io, align 8, !tbaa !97
  %i.ip = add nsw i32 %.5, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.6 = phi i32 [ %.5, %bb.u ], [ %i.ip, %bb.v ]  ; 2 uses
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count234
  br i1 %exitcond235.not, label %._crit_edge218, label %bb.s

._crit_edge218:                                   ; preds = %bb.w, %bb.r
  %.4.lcssa = phi i32 [ 0, %bb.r ], [ %.6, %bb.w ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 460
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !103
  %.not157 = icmp eq i32 %i.ir, 0
  br i1 %.not157, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge218
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.it = load i32, ptr %i.is, align 8, !tbaa !104
  %.not158 = icmp eq i32 %i.it, 0
  br i1 %.not158, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge218
  %.pn160.in.v = phi i64 [ 120, %bb.x ], [ 112, %._crit_edge218 ]
  %.pn160.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pn160.in.v
  %.pn160 = load ptr, ptr %.pn160.in, align 8, !tbaa !139 ; 3 uses
  %.0130.in = getelementptr inbounds nuw i8, ptr %.pn160, i64 40
  %.0130 = load ptr, ptr %.0130.in, align 8, !tbaa !132 ; 5 uses
  %.1132.in = getelementptr inbounds nuw i8, ptr %.pn160, i64 32
  %.1132 = load ptr, ptr %.1132.in, align 8, !tbaa !133 ; 5 uses
  %.1134.in = getelementptr inbounds nuw i8, ptr %.pn160, i64 24
  %.1134 = load ptr, ptr %.1134.in, align 8, !tbaa !119 ; 5 uses
  br i1 %i.gw, label %.lr.ph223, label %.._crit_edge224_crit_edge

.._crit_edge224_crit_edge:                        ; preds = %bb.y
  %.phi.trans.insert243 = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %.pre244 = load ptr, ptr %.phi.trans.insert243, align 8, !tbaa !83
  %.phi.trans.insert245 = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.pre246 = load ptr, ptr %.phi.trans.insert245, align 8, !tbaa !84
  br label %._crit_edge224

.lr.ph223:                                        ; preds = %bb.y
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !83 ; 10 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !84 ; 10 uses
  %wide.trip.count239 = zext nneg i32 %i.gv to i64 ; 4 uses
  %min.iters.check373 = icmp ult i32 %i.gv, 20
  br i1 %min.iters.check373, label %scalar.ph372.preheader, label %vector.memcheck374

vector.memcheck374:                               ; preds = %.lr.ph223
  %i.ja = shl nuw nsw i64 %wide.trip.count239, 3  ; 5 uses
  %i.jb = getelementptr i8, ptr %i.ix, i64 %i.ja  ; 5 uses
  %i.jc = getelementptr i8, ptr %i.iz, i64 %i.ja  ; 5 uses
  %i.jd = getelementptr i8, ptr %0, i64 928       ; 2 uses
  %i.je = getelementptr i8, ptr %.1134, i64 %i.ja ; 2 uses
  %i.jf = getelementptr i8, ptr %.1132, i64 %i.ja ; 2 uses
  %i.jg = getelementptr i8, ptr %.0130, i64 %i.ja ; 2 uses
  %bound0375 = icmp ult ptr %i.ix, %i.jc
  %bound1376 = icmp ult ptr %i.iz, %i.jb
  %found.conflict377 = and i1 %bound0375, %bound1376
  %bound0378 = icmp ult ptr %i.ix, %i.jd
  %bound1379 = icmp ult ptr %i.iv, %i.jb
  %found.conflict380 = and i1 %bound0378, %bound1379
  %conflict.rdx381 = or i1 %found.conflict377, %found.conflict380
  %bound0382 = icmp ult ptr %i.ix, %i.je
  %bound1383 = icmp ult ptr %.1134, %i.jb
  %found.conflict384 = and i1 %bound0382, %bound1383
  %conflict.rdx385 = or i1 %conflict.rdx381, %found.conflict384
  %bound0386 = icmp ult ptr %i.ix, %i.jf
  %bound1387 = icmp ult ptr %.1132, %i.jb
  %found.conflict388 = and i1 %bound0386, %bound1387
  %conflict.rdx389 = or i1 %conflict.rdx385, %found.conflict388
  %bound0390 = icmp ult ptr %i.ix, %i.jg
  %bound1391 = icmp ult ptr %.0130, %i.jb
  %found.conflict392 = and i1 %bound0390, %bound1391
  %conflict.rdx393 = or i1 %conflict.rdx389, %found.conflict392
  %bound0394 = icmp ult ptr %i.iz, %i.jd
  %bound1395 = icmp ult ptr %i.iv, %i.jc
  %found.conflict396 = and i1 %bound0394, %bound1395
  %conflict.rdx397 = or i1 %conflict.rdx393, %found.conflict396
  %bound0398 = icmp ult ptr %i.iz, %i.je
  %bound1399 = icmp ult ptr %.1134, %i.jc
  %found.conflict400 = and i1 %bound0398, %bound1399
  %conflict.rdx401 = or i1 %conflict.rdx397, %found.conflict400
  %bound0402 = icmp ult ptr %i.iz, %i.jf
  %bound1403 = icmp ult ptr %.1132, %i.jc
  %found.conflict404 = and i1 %bound0402, %bound1403
  %conflict.rdx405 = or i1 %conflict.rdx401, %found.conflict404
  %bound0406 = icmp ult ptr %i.iz, %i.jg
  %bound1407 = icmp ult ptr %.0130, %i.jc
  %found.conflict408 = and i1 %bound0406, %bound1407
  %conflict.rdx409 = or i1 %conflict.rdx405, %found.conflict408
  br i1 %conflict.rdx409, label %scalar.ph372.preheader, label %vector.ph410

vector.ph410:                                     ; preds = %vector.memcheck374
  %n.vec411 = and i64 %wide.trip.count239, 2147483646 ; 3 uses
  %i.jh = load double, ptr %i.iu, align 8, !tbaa !117, !alias.scope !456
  %broadcast.splatinsert417 = insertelement <2 x double> poison, double %i.jh, i64 0
  %broadcast.splat418 = shufflevector <2 x double> %broadcast.splatinsert417, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = load double, ptr %i.iv, align 8, !tbaa !100, !alias.scope !456
  %broadcast.splatinsert421 = insertelement <2 x double> poison, double %i.ji, i64 0
  %broadcast.splat422 = shufflevector <2 x double> %broadcast.splatinsert421, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body412

vector.body412:                                   ; preds = %vector.body412, %vector.ph410
  %index413 = phi i64 [ 0, %vector.ph410 ], [ %index.next423, %vector.body412 ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.1134, i64 %index413
  %wide.load414 = load <2 x double>, ptr %i.jj, align 8, !tbaa !58, !alias.scope !457
  %i.jk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load414, <2 x double> %broadcast.splat422, <2 x double> %broadcast.splat418)
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %index413
  store <2 x double> %i.jk, ptr %i.jl, align 8, !tbaa !58, !alias.scope !458, !noalias !459
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %.1132, i64 %index413
  %wide.load419 = load <2 x double>, ptr %i.jm, align 8, !tbaa !58, !alias.scope !460
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.0130, i64 %index413
  %wide.load420 = load <2 x double>, ptr %i.jn, align 8, !tbaa !58, !alias.scope !461
  %i.jo = fsub <2 x double> %wide.load419, %wide.load420
  %i.jp = fmul <2 x double> %broadcast.splat422, %i.jo
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %index413
  store <2 x double> %i.jp, ptr %i.jq, align 8, !tbaa !58, !alias.scope !462, !noalias !463
  %index.next423 = add nuw i64 %index413, 2       ; 2 uses
  %i.jr = icmp eq i64 %index.next423, %n.vec411
  br i1 %i.jr, label %middle.block424, label %vector.body412, !llvm.loop !445

middle.block424:                                  ; preds = %vector.body412
  %cmp.n425 = icmp eq i64 %n.vec411, %wide.trip.count239
  br i1 %cmp.n425, label %._crit_edge224, label %scalar.ph372.preheader

scalar.ph372.preheader:                           ; preds = %vector.memcheck374, %.lr.ph223, %middle.block424
  %indvars.iv236.ph = phi i64 [ 0, %vector.memcheck374 ], [ 0, %.lr.ph223 ], [ %n.vec411, %middle.block424 ]
  br label %scalar.ph372

scalar.ph372:                                     ; preds = %scalar.ph372.preheader, %scalar.ph372
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %scalar.ph372 ], [ %indvars.iv236.ph, %scalar.ph372.preheader ] ; 6 uses
  %i.js = load double, ptr %i.iu, align 8, !tbaa !117
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.1134, i64 %indvars.iv236
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !58
  %i.jv = load double, ptr %i.iv, align 8, !tbaa !100
  %i.jw = tail call double @llvm.fmuladd.f64(double %i.ju, double %i.jv, double %i.js)
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv236
  store double %i.jw, ptr %i.jx, align 8, !tbaa !58
  %i.jy = load double, ptr %i.iv, align 8, !tbaa !100
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.1132, i64 %indvars.iv236
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !58
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.0130, i64 %indvars.iv236
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !58
  %i.kd = fsub double %i.ka, %i.kc
  %i.ke = fmul double %i.jy, %i.kd
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv236
  store double %i.ke, ptr %i.kf, align 8, !tbaa !58
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count239
  br i1 %exitcond240.not, label %._crit_edge224, label %scalar.ph372, !llvm.loop !446

._crit_edge224:                                   ; preds = %scalar.ph372, %middle.block424, %.._crit_edge224_crit_edge
  %i.kg = phi ptr [ %.pre246, %.._crit_edge224_crit_edge ], [ %i.iz, %middle.block424 ], [ %i.iz, %scalar.ph372 ]
  %i.kh = phi ptr [ %.pre244, %.._crit_edge224_crit_edge ], [ %i.ix, %middle.block424 ], [ %i.ix, %scalar.ph372 ]
  %i.ki = load ptr, ptr %i.h, align 8, !tbaa !79  ; 5 uses
  %i.kj = load ptr, ptr %i.j, align 8, !tbaa !81  ; 5 uses
  %i.kk = ptrtoaddr ptr %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.km = load double, ptr %i.kl, align 8, !tbaa !105
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !106
  %i.kp = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !43 ; 6 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !42 ; 5 uses
  %i.kt = ptrtoaddr ptr %i.ks to i64
  %i.ku = icmp sgt i32 %i.kq, 0
  br i1 %i.ku, label %.lr.ph.preheader.i167, label %arkStep_ApplyForcing.exit188

.lr.ph.preheader.i167:                            ; preds = %._crit_edge224
  %i.kv = sext i32 %.4.lcssa to i64               ; 6 uses
  %wide.trip.count.i168 = zext nneg i32 %i.kq to i64 ; 7 uses
  %min.iters.check430 = icmp ult i32 %i.kq, 8
  br i1 %min.iters.check430, label %.lr.ph.i169.preheader, label %vector.memcheck431

vector.memcheck431:                               ; preds = %.lr.ph.preheader.i167
  %i.kw = shl nsw i64 %i.kv, 3
  %i.kx = add i64 %i.kw, %i.kk
  %i.ky = sub i64 %i.kt, %i.kx
  %diff.check432 = icmp ugt i64 %i.ky, -32
  br i1 %diff.check432, label %.lr.ph.i169.preheader, label %vector.ph433

vector.ph433:                                     ; preds = %vector.memcheck431
  %n.vec434 = and i64 %wide.trip.count.i168, 2147483644 ; 3 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph433
  %index436 = phi i64 [ 0, %vector.ph433 ], [ %index.next439, %vector.body435 ] ; 3 uses
  %i.kz = add nsw i64 %index436, %i.kv            ; 2 uses
  %i.la = getelementptr inbounds [8 x i8], ptr %i.ki, i64 %i.kz ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store <2 x double> zeroinitializer, ptr %i.la, align 8, !tbaa !58
  store <2 x double> zeroinitializer, ptr %i.lb, align 8, !tbaa !58
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %index436 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %wide.load437 = load <2 x ptr>, ptr %i.lc, align 8, !tbaa !97
  %wide.load438 = load <2 x ptr>, ptr %i.ld, align 8, !tbaa !97
  %i.le = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.kz ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store <2 x ptr> %wide.load437, ptr %i.le, align 8, !tbaa !97
  store <2 x ptr> %wide.load438, ptr %i.lf, align 8, !tbaa !97
  %index.next439 = add nuw i64 %index436, 4       ; 2 uses
  %i.lg = icmp eq i64 %index.next439, %n.vec434
  br i1 %i.lg, label %middle.block440, label %vector.body435, !llvm.loop !447

middle.block440:                                  ; preds = %vector.body435
  %cmp.n441 = icmp eq i64 %n.vec434, %wide.trip.count.i168
  br i1 %cmp.n441, label %.preheader.i173, label %.lr.ph.i169.preheader

.lr.ph.i169.preheader:                            ; preds = %vector.memcheck431, %.lr.ph.preheader.i167, %middle.block440
  %indvars.iv.i170.ph = phi i64 [ 0, %vector.memcheck431 ], [ 0, %.lr.ph.preheader.i167 ], [ %n.vec434, %middle.block440 ] ; 5 uses
  %xtraiter448 = and i64 %wide.trip.count.i168, 1
  %lcmp.mod449.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %.lr.ph.i169.prol.loopexit, label %.lr.ph.i169.prol

.lr.ph.i169.prol:                                 ; preds = %.lr.ph.i169.preheader
  %i.lh = add nsw i64 %indvars.iv.i170.ph, %i.kv  ; 2 uses
  %i.li = getelementptr inbounds [8 x i8], ptr %i.ki, i64 %i.lh
  store double 0.000000e+00, ptr %i.li, align 8, !tbaa !58
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv.i170.ph
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !97
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.lh
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !97
  %indvars.iv.next.i171.prol = or disjoint i64 %indvars.iv.i170.ph, 1
  br label %.lr.ph.i169.prol.loopexit

.lr.ph.i169.prol.loopexit:                        ; preds = %.lr.ph.i169.prol, %.lr.ph.i169.preheader
  %indvars.iv.i170.unr = phi i64 [ %indvars.iv.i170.ph, %.lr.ph.i169.preheader ], [ %indvars.iv.next.i171.prol, %.lr.ph.i169.prol ]
  %i.lm = add nsw i64 %wide.trip.count.i168, -1
  %i.ln = icmp eq i64 %indvars.iv.i170.ph, %i.lm
  br i1 %i.ln, label %.preheader.i173, label %.lr.ph.i169

.preheader.i173:                                  ; preds = %.lr.ph.i169.prol.loopexit, %.lr.ph.i169, %middle.block440
  br i1 %i.gw, label %.lr.ph43.preheader.i174, label %arkStep_ApplyForcing.exit188

.lr.ph43.preheader.i174:                          ; preds = %.preheader.i173
  %wide.trip.count56.i175 = zext nneg i32 %i.gv to i64
  %invariant.gep.i177 = getelementptr [8 x i8], ptr %i.ki, i64 %i.kv ; 3 uses
  %xtraiter451 = and i64 %wide.trip.count.i168, 1
  %i.lo = icmp eq i32 %i.kq, 1
  %unroll_iter454 = and i64 %wide.trip.count.i168, 2147483646
  %lcmp.mod452.not = icmp eq i64 %xtraiter451, 0
  %lcmp.mod453 = trunc i32 %i.kq to i1
  br label %.lr.ph43.i178

.lr.ph.i169:                                      ; preds = %.lr.ph.i169.prol.loopexit, %.lr.ph.i169
  %indvars.iv.i170 = phi i64 [ %indvars.iv.next.i171.1, %.lr.ph.i169 ], [ %indvars.iv.i170.unr, %.lr.ph.i169.prol.loopexit ] ; 4 uses
  %i.lp = add nsw i64 %indvars.iv.i170, %i.kv     ; 2 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.ki, i64 %i.lp
  store double 0.000000e+00, ptr %i.lq, align 8, !tbaa !58
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv.i170
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !97
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.lp
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !97
  %indvars.iv.next.i171 = add nuw nsw i64 %indvars.iv.i170, 1 ; 2 uses
  %i.lu = add nsw i64 %indvars.iv.next.i171, %i.kv ; 2 uses
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.ki, i64 %i.lu
  store double 0.000000e+00, ptr %i.lv, align 8, !tbaa !58
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv.next.i171
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !97
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.lu
  store ptr %i.lx, ptr %i.ly, align 8, !tbaa !97
  %indvars.iv.next.i171.1 = add nuw nsw i64 %indvars.iv.i170, 2 ; 2 uses
  %exitcond.not.i172.1 = icmp eq i64 %indvars.iv.next.i171.1, %wide.trip.count.i168
  br i1 %exitcond.not.i172.1, label %.preheader.i173, label %.lr.ph.i169, !llvm.loop !448

.lr.ph43.i178:                                    ; preds = %._crit_edge.i185, %.lr.ph43.preheader.i174
  %indvars.iv53.i179 = phi i64 [ 0, %.lr.ph43.preheader.i174 ], [ %indvars.iv.next54.i186, %._crit_edge.i185 ] ; 3 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv53.i179
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !58
  %i.mb = fsub double %i.ma, %i.km
  %i.mc = fdiv double %i.mb, %i.ko                ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv53.i179 ; 3 uses
  br i1 %i.lo, label %.epil.preheader450, label %.lr.ph43.i178.new

.lr.ph43.i178.new:                                ; preds = %.lr.ph43.i178, %.lr.ph43.i178.new
  %indvars.iv48.i180 = phi i64 [ %indvars.iv.next49.i183.1, %.lr.ph43.i178.new ], [ 0, %.lr.ph43.i178 ] ; 3 uses
  %.03841.i181 = phi double [ %i.mm, %.lr.ph43.i178.new ], [ 1.000000e+00, %.lr.ph43.i178 ] ; 2 uses
  %niter455 = phi i64 [ %niter455.next.1, %.lr.ph43.i178.new ], [ 0, %.lr.ph43.i178 ]
  %i.me = load double, ptr %i.md, align 8, !tbaa !58
  %gep.i182 = getelementptr [8 x i8], ptr %invariant.gep.i177, i64 %indvars.iv48.i180 ; 2 uses
  %i.mf = load double, ptr %gep.i182, align 8, !tbaa !58
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.me, double %.03841.i181, double %i.mf)
  store double %i.mg, ptr %gep.i182, align 8, !tbaa !58
  %i.mh = fmul double %i.mc, %.03841.i181         ; 2 uses
  %i.mi = load double, ptr %i.md, align 8, !tbaa !58
  %i.mj = getelementptr [8 x i8], ptr %invariant.gep.i177, i64 %indvars.iv48.i180
  %gep.i182.1 = getelementptr i8, ptr %i.mj, i64 8 ; 2 uses
  %i.mk = load double, ptr %gep.i182.1, align 8, !tbaa !58
  %i.ml = tail call double @llvm.fmuladd.f64(double %i.mi, double %i.mh, double %i.mk)
  store double %i.ml, ptr %gep.i182.1, align 8, !tbaa !58
  %i.mm = fmul double %i.mc, %i.mh                ; 2 uses
  %indvars.iv.next49.i183.1 = add nuw nsw i64 %indvars.iv48.i180, 2 ; 2 uses
  %niter455.next.1 = add i64 %niter455, 2         ; 2 uses
  %niter455.ncmp.1 = icmp eq i64 %niter455.next.1, %unroll_iter454
  br i1 %niter455.ncmp.1, label %._crit_edge.i185.unr-lcssa, label %.lr.ph43.i178.new

._crit_edge.i185.unr-lcssa:                       ; preds = %.lr.ph43.i178.new
  br i1 %lcmp.mod452.not, label %._crit_edge.i185, label %.epil.preheader450

.epil.preheader450:                               ; preds = %._crit_edge.i185.unr-lcssa, %.lr.ph43.i178
  %indvars.iv48.i180.epil.init = phi i64 [ 0, %.lr.ph43.i178 ], [ %indvars.iv.next49.i183.1, %._crit_edge.i185.unr-lcssa ]
  %.03841.i181.epil.init = phi double [ 1.000000e+00, %.lr.ph43.i178 ], [ %i.mm, %._crit_edge.i185.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod453)
  %i.mn = load double, ptr %i.md, align 8, !tbaa !58
  %gep.i182.epil = getelementptr [8 x i8], ptr %invariant.gep.i177, i64 %indvars.iv48.i180.epil.init ; 2 uses
  %i.mo = load double, ptr %gep.i182.epil, align 8, !tbaa !58
end_hunk_1
