Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_erkstep?download=true
inline.NumInlined: 15
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@erkStep_TakeStep:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %scevgep243 = getelementptr i8, ptr %0, i64 928 ; 2 uses
  %scevgep288.a = getelementptr i8, ptr %0, i64 744
  %bound0292 = icmp ult ptr %i.k, %scevgep288.a
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.ae
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.ae ] ; 5 uses
  %indvars.iv218 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next219, %bb.ae ] ; 21 uses
  %i.bm = shl nuw nsw i64 %indvar, 3
  %i.bn = add nuw i64 %i.bm, 8                    ; 4 uses
  %i.bo = load double, ptr %i.at, align 8, !tbaa !67
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !35  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !70 ; 8 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv218
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !52
  %i.bu = load double, ptr %i.au, align 8, !tbaa !71
  %i.bv = call double @llvm.fmuladd.f64(double %i.bt, double %i.bu, double %i.bo)
  store double %i.bv, ptr %i.av, align 8, !tbaa !72
  %i.bw = trunc nuw nsw i64 %indvars.iv218 to i32
  store i32 %i.bw, ptr %i.n, align 8, !tbaa !66
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !73
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv218
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !74 ; 13 uses
  %i.cb = load ptr, ptr %i.aw, align 8, !tbaa !56 ; 6 uses
  %min.iters.check304 = icmp samesign ult i64 %indvars.iv218, 6
  br i1 %min.iters.check304, label %scalar.ph303.preheader, label %vector.memcheck286

vector.memcheck286:                               ; preds = %bb.m
  %i.cc = shl nuw nsw i64 %indvar, 3
  %i.cd = add nuw i64 %i.cc, 8                    ; 4 uses
  %scevgep290 = getelementptr i8, ptr %i.m, i64 %i.cd
  %scevgep287.a = getelementptr i8, ptr %i.k, i64 %i.cd ; 2 uses
  %scevgep289.a = getelementptr i8, ptr %i.ca, i64 %i.cd
  %scevgep291 = getelementptr i8, ptr %i.cb, i64 %i.cd
  %bound1293 = icmp ult ptr %i.au, %scevgep287.a
  %found.conflict294 = and i1 %bound0292, %bound1293
  %bound0295 = icmp ult ptr %i.k, %scevgep289.a
  %bound1296 = icmp ult ptr %i.ca, %scevgep287.a
  %found.conflict297 = and i1 %bound0295, %bound1296
  %conflict.rdx298 = or i1 %found.conflict294, %found.conflict297
  %bound0299 = icmp ult ptr %i.m, %scevgep291
  %bound1300 = icmp ult ptr %i.cb, %scevgep290
  %found.conflict301 = and i1 %bound0299, %bound1300
  %conflict.rdx302 = or i1 %conflict.rdx298, %found.conflict301
  br i1 %conflict.rdx302, label %scalar.ph303.preheader, label %vector.ph305

vector.ph305:                                     ; preds = %vector.memcheck286
  %n.vec306 = and i64 %indvars.iv218, 9223372036854775804 ; 4 uses
  %i.ce = load double, ptr %i.au, align 8, !tbaa !71, !alias.scope !151
  %broadcast.splatinsert311 = insertelement <2 x double> poison, double %i.ce, i64 0
  %broadcast.splat312 = shufflevector <2 x double> %broadcast.splatinsert311, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph305
  %index308 = phi i64 [ 0, %vector.ph305 ], [ %index.next315, %vector.body307 ] ; 5 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %index308 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load309 = load <2 x double>, ptr %i.cf, align 8, !tbaa !52, !alias.scope !152
  %wide.load310 = load <2 x double>, ptr %i.cg, align 8, !tbaa !52, !alias.scope !152
  %i.ch = fmul <2 x double> %broadcast.splat312, %wide.load309
  %i.ci = fmul <2 x double> %broadcast.splat312, %wide.load310
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index308 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x double> %i.ch, ptr %i.cj, align 8, !tbaa !52, !alias.scope !153, !noalias !154
  store <2 x double> %i.ci, ptr %i.ck, align 8, !tbaa !52, !alias.scope !153, !noalias !154
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %index308 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load313 = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !57, !alias.scope !155
  %wide.load314 = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !57, !alias.scope !155
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index308 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <2 x ptr> %wide.load313, ptr %i.cn, align 8, !tbaa !57, !alias.scope !156, !noalias !155
  store <2 x ptr> %wide.load314, ptr %i.co, align 8, !tbaa !57, !alias.scope !156, !noalias !155
  %index.next315 = add nuw i64 %index308, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next315, %n.vec306
  br i1 %i.cp, label %middle.block316, label %vector.body307, !llvm.loop !136

middle.block316:                                  ; preds = %vector.body307
  %ind.escape = add nsw i64 %n.vec306, -1
  %cmp.n317 = icmp eq i64 %indvars.iv218, %n.vec306
  br i1 %cmp.n317, label %.loopexit319, label %scalar.ph303.preheader

scalar.ph303.preheader:                           ; preds = %vector.memcheck286, %bb.m, %middle.block316
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck286 ], [ 0, %bb.m ], [ %n.vec306, %middle.block316 ] ; 8 uses
  %xtraiter = and i64 %indvars.iv218, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph303.prol.loopexit, label %scalar.ph303.prol

scalar.ph303.prol:                                ; preds = %scalar.ph303.preheader
  %i.cq = load double, ptr %i.au, align 8, !tbaa !71
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.ph
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !52
  %i.ct = fmul double %i.cq, %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.ph
  store double %i.ct, ptr %i.cu, align 8, !tbaa !52
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.ph
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !57
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.ph
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !57
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph303.prol.loopexit

scalar.ph303.prol.loopexit:                       ; preds = %scalar.ph303.prol, %scalar.ph303.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph303.preheader ], [ %indvars.iv.next.prol, %scalar.ph303.prol ]
  %i.cy = icmp eq i64 %indvar, %indvars.iv.ph
  br i1 %i.cy, label %.loopexit319, label %scalar.ph303

scalar.ph303:                                     ; preds = %scalar.ph303.prol.loopexit, %scalar.ph303
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph303 ], [ %indvars.iv.unr, %scalar.ph303.prol.loopexit ] ; 6 uses
  %i.cz = load double, ptr %i.au, align 8, !tbaa !71
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.db = load double, ptr %i.da, align 8, !tbaa !52
  %i.dc = fmul double %i.cz, %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double %i.dc, ptr %i.dd, align 8, !tbaa !52
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !57
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.dh = load double, ptr %i.au, align 8, !tbaa !71
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next
  %i.dj = load double, ptr %i.di, align 8, !tbaa !52
  %i.dk = fmul double %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  store double %i.dk, ptr %i.dl, align 8, !tbaa !52
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !57
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !57
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %indvars.iv218
  br i1 %exitcond.not.1, label %.loopexit319, label %scalar.ph303, !llvm.loop !137

.loopexit319:                                     ; preds = %scalar.ph303.prol.loopexit, %scalar.ph303, %middle.block316
  %indvars.iv.lcssa = phi i64 [ %ind.escape, %middle.block316 ], [ %indvars.iv.ph, %scalar.ph303.prol.loopexit ], [ %indvars.iv.next, %scalar.ph303 ] ; 2 uses
  %i.dp = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv218
  store double 1.000000e+00, ptr %i.dq, align 8, !tbaa !52
  %i.dr = load ptr, ptr %i.ax, align 8, !tbaa !68
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv218
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !57
  %i.dt = add nuw nsw i32 %i.dp, 2                ; 3 uses
  %i.du = load i32, ptr %i.ay, align 8, !tbaa !32 ; 6 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.preheader, label %bb.n

.preheader:                                       ; preds = %.loopexit319
  %i.dw = load ptr, ptr %i.az, align 8, !tbaa !49 ; 10 uses
  %i.dx = load ptr, ptr %i.ba, align 8, !tbaa !50 ; 10 uses
  %min.iters.check270 = icmp samesign ult i64 %indvars.iv218, 10
  br i1 %min.iters.check270, label %scalar.ph269.preheader, label %vector.memcheck241

vector.memcheck241:                               ; preds = %.preheader
  %scevgep = getelementptr i8, ptr %i.dw, i64 %i.bn ; 4 uses
  %scevgep242 = getelementptr i8, ptr %i.dx, i64 %i.bn ; 4 uses
  %scevgep244 = getelementptr i8, ptr %i.br, i64 %i.bn ; 2 uses
  %scevgep245 = getelementptr i8, ptr %i.ca, i64 %i.bn ; 2 uses
  %bound0 = icmp ult ptr %i.dw, %scevgep242
  %bound1 = icmp ult ptr %i.dx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0246 = icmp ult ptr %i.dw, %scevgep243
  %bound1247 = icmp ult ptr %i.au, %scevgep
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx = or i1 %found.conflict, %found.conflict248
  %bound0249 = icmp ult ptr %i.dw, %scevgep244
  %bound1250 = icmp ult ptr %i.br, %scevgep
  %found.conflict251 = and i1 %bound0249, %bound1250
  %conflict.rdx252 = or i1 %conflict.rdx, %found.conflict251
  %bound0253 = icmp ult ptr %i.dw, %scevgep245
  %bound1254 = icmp ult ptr %i.ca, %scevgep
  %found.conflict255 = and i1 %bound0253, %bound1254
  %conflict.rdx256 = or i1 %conflict.rdx252, %found.conflict255
  %bound0257 = icmp ult ptr %i.dx, %scevgep243
  %bound1258 = icmp ult ptr %i.au, %scevgep242
  %found.conflict259 = and i1 %bound0257, %bound1258
  %conflict.rdx260 = or i1 %conflict.rdx256, %found.conflict259
  %bound0261 = icmp ult ptr %i.dx, %scevgep244
  %bound1262 = icmp ult ptr %i.br, %scevgep242
  %found.conflict263 = and i1 %bound0261, %bound1262
  %conflict.rdx264 = or i1 %conflict.rdx260, %found.conflict263
  %bound0265 = icmp ult ptr %i.dx, %scevgep245
  %bound1266 = icmp ult ptr %i.ca, %scevgep242
  %found.conflict267 = and i1 %bound0265, %bound1266
  %conflict.rdx268 = or i1 %conflict.rdx264, %found.conflict267
  br i1 %conflict.rdx268, label %scalar.ph269.preheader, label %vector.ph271

vector.ph271:                                     ; preds = %vector.memcheck241
  %n.vec272 = and i64 %indvars.iv218, 9223372036854775806 ; 3 uses
  %i.dy = load double, ptr %i.at, align 8, !tbaa !67, !alias.scope !157
  %broadcast.splatinsert276 = insertelement <2 x double> poison, double %i.dy, i64 0
  %broadcast.splat277 = shufflevector <2 x double> %broadcast.splatinsert276, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = load double, ptr %i.au, align 8, !tbaa !71, !alias.scope !157
  %broadcast.splatinsert279 = insertelement <2 x double> poison, double %i.dz, i64 0
  %broadcast.splat280 = shufflevector <2 x double> %broadcast.splatinsert279, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph271
  %index274 = phi i64 [ 0, %vector.ph271 ], [ %index.next281, %vector.body273 ] ; 5 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index274
  %wide.load275 = load <2 x double>, ptr %i.ea, align 8, !tbaa !52, !alias.scope !158
  %i.eb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load275, <2 x double> %broadcast.splat280, <2 x double> %broadcast.splat277)
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %index274
  store <2 x double> %i.eb, ptr %i.ec, align 8, !tbaa !52, !alias.scope !159, !noalias !160
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %index274
  %wide.load278 = load <2 x double>, ptr %i.ed, align 8, !tbaa !52, !alias.scope !161
  %i.ee = fmul <2 x double> %broadcast.splat280, %wide.load278
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %index274
  store <2 x double> %i.ee, ptr %i.ef, align 8, !tbaa !52, !alias.scope !162, !noalias !163
  %index.next281 = add nuw i64 %index274, 2       ; 2 uses
  %i.eg = icmp eq i64 %index.next281, %n.vec272
  br i1 %i.eg, label %middle.block282, label %vector.body273, !llvm.loop !144

middle.block282:                                  ; preds = %vector.body273
  %cmp.n283 = icmp eq i64 %indvars.iv218, %n.vec272
  br i1 %cmp.n283, label %.lr.ph.preheader.i, label %scalar.ph269.preheader

scalar.ph269.preheader:                           ; preds = %vector.memcheck241, %.preheader, %middle.block282
  %indvars.iv213.ph = phi i64 [ 0, %vector.memcheck241 ], [ 0, %.preheader ], [ %n.vec272, %middle.block282 ] ; 7 uses
  %xtraiter324.a = and i64 %indvars.iv218, 1
  %lcmp.mod325.not.a = icmp eq i64 %xtraiter324.a, 0
  br i1 %lcmp.mod325.not.a, label %scalar.ph269.prol.loopexit, label %scalar.ph269.prol

scalar.ph269.prol:                                ; preds = %scalar.ph269.preheader
  %i.eh = load double, ptr %i.at, align 8, !tbaa !67
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv213.ph
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !52
  %i.ek = load double, ptr %i.au, align 8, !tbaa !71
  %i.el = call double @llvm.fmuladd.f64(double %i.ej, double %i.ek, double %i.eh)
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv213.ph
  store double %i.el, ptr %i.em, align 8, !tbaa !52
  %i.en = load double, ptr %i.au, align 8, !tbaa !71
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv213.ph
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !52
  %i.eq = fmul double %i.en, %i.ep
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv213.ph
  store double %i.eq, ptr %i.er, align 8, !tbaa !52
  %indvars.iv.next214.prol = or disjoint i64 %indvars.iv213.ph, 1
  br label %scalar.ph269.prol.loopexit

scalar.ph269.prol.loopexit:                       ; preds = %scalar.ph269.prol, %scalar.ph269.preheader
  %indvars.iv213.unr = phi i64 [ %indvars.iv213.ph, %scalar.ph269.preheader ], [ %indvars.iv.next214.prol, %scalar.ph269.prol ]
  %i.es = icmp eq i64 %indvar, %indvars.iv213.ph
  br i1 %i.es, label %.lr.ph.preheader.i, label %scalar.ph269

scalar.ph269:                                     ; preds = %scalar.ph269.prol.loopexit, %scalar.ph269
  %indvars.iv213 = phi i64 [ %indvars.iv.next214.1, %scalar.ph269 ], [ %indvars.iv213.unr, %scalar.ph269.prol.loopexit ] ; 6 uses
  %i.et = load double, ptr %i.at, align 8, !tbaa !67
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv213
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !52
  %i.ew = load double, ptr %i.au, align 8, !tbaa !71
  %i.ex = call double @llvm.fmuladd.f64(double %i.ev, double %i.ew, double %i.et)
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv213
  store double %i.ex, ptr %i.ey, align 8, !tbaa !52
  %i.ez = load double, ptr %i.au, align 8, !tbaa !71
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv213
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !52
  %i.fc = fmul double %i.ez, %i.fb
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv213
  store double %i.fc, ptr %i.fd, align 8, !tbaa !52
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 4 uses
  %i.fe = load double, ptr %i.at, align 8, !tbaa !67
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next214
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !52
  %i.fh = load double, ptr %i.au, align 8, !tbaa !71
  %i.fi = call double @llvm.fmuladd.f64(double %i.fg, double %i.fh, double %i.fe)
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next214
  store double %i.fi, ptr %i.fj, align 8, !tbaa !52
  %i.fk = load double, ptr %i.au, align 8, !tbaa !71
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next214
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !52
  %i.fn = fmul double %i.fk, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next214
  store double %i.fn, ptr %i.fo, align 8, !tbaa !52
  %indvars.iv.next214.1 = add nuw nsw i64 %indvars.iv213, 2 ; 2 uses
  %exitcond217.not.1 = icmp eq i64 %indvars.iv.next214.1, %indvars.iv218
  br i1 %exitcond217.not.1, label %.lr.ph.preheader.i, label %scalar.ph269, !llvm.loop !145

.lr.ph.preheader.i:                               ; preds = %scalar.ph269.prol.loopexit, %scalar.ph269, %middle.block282
  %i.fp = load ptr, ptr %i.j, align 8, !tbaa !45  ; 5 uses
  %i.fq = load ptr, ptr %i.l, align 8, !tbaa !47  ; 5 uses
  %i.fr = load double, ptr %i.bb, align 8, !tbaa !59
  %i.fs = load double, ptr %i.bc, align 8, !tbaa !60
  %i.ft = load ptr, ptr %i.bd, align 8, !tbaa !31 ; 5 uses
  %i.fu = zext nneg i32 %i.dt to i64              ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.du to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.du, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.fv = ptrtoaddr ptr %i.ft to i64
  %i.fw = ptrtoaddr ptr %i.fq to i64
  %i.fx = sub i64 %i.fw, %i.fv
  %i.fy = shl nuw nsw i64 %indvars.iv.lcssa, 3
  %op.rdx = add i64 %i.fx, 15
  %op.rdx320 = add i64 %op.rdx, %i.fy
  %diff.check = icmp ult i64 %op.rdx320, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fz = add nuw nsw i64 %index, %i.fu           ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store <2 x double> zeroinitializer, ptr %i.ga, align 8, !tbaa !52
  store <2 x double> zeroinitializer, ptr %i.gb, align 8, !tbaa !52
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %index ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load = load <2 x ptr>, ptr %i.gc, align 8, !tbaa !57
  %wide.load240 = load <2 x ptr>, ptr %i.gd, align 8, !tbaa !57
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fz ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store <2 x ptr> %wide.load, ptr %i.ge, align 8, !tbaa !57
  store <2 x ptr> %wide.load240, ptr %i.gf, align 8, !tbaa !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gg = icmp eq i64 %index.next, %n.vec
  br i1 %i.gg, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter326.a = and i64 %wide.trip.count.i, 1
  %lcmp.mod327.not.a = icmp eq i64 %xtraiter326.a, 0
  br i1 %lcmp.mod327.not.a, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.gh = add nuw nsw i64 %indvars.iv.i.ph, %i.fu ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gh
  store double 0.000000e+00, ptr %i.gi, align 8, !tbaa !52
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.i.ph
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !57
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.gh
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !57
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.gm = add nsw i64 %wide.trip.count.i, -1
  %i.gn = icmp eq i64 %indvars.iv.i.ph, %i.gm
  br i1 %i.gn, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.fp, i64 %i.fu ; 3 uses
  %xtraiter328 = and i64 %wide.trip.count.i, 1
  %i.go = icmp eq i32 %i.du, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  %lcmp.mod330 = trunc i32 %i.du to i1
  br label %.lr.ph43.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.gp = add nuw nsw i64 %indvars.iv.i, %i.fu    ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gp
  store double 0.000000e+00, ptr %i.gq, align 8, !tbaa !52
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.i
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !57
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.gp
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !57
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gu = add nuw nsw i64 %indvars.iv.next.i, %i.fu ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gu
  store double 0.000000e+00, ptr %i.gv, align 8, !tbaa !52
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.next.i
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !57
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.gu
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !57
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.preheader.i, label %.lr.ph.i, !llvm.loop !147

.lr.ph43.i:                                       ; preds = %._crit_edge.i, %.preheader.i
  %indvars.iv53.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next54.i, %._crit_edge.i ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv53.i
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !52
  %i.hb = fsub double %i.ha, %i.fr
  %i.hc = fdiv double %i.hb, %i.fs                ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv53.i ; 3 uses
  br i1 %i.go, label %.epil.preheader, label %.lr.ph43.i.new

.lr.ph43.i.new:                                   ; preds = %.lr.ph43.i, %.lr.ph43.i.new
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i.1, %.lr.ph43.i.new ], [ 0, %.lr.ph43.i ] ; 3 uses
  %.03841.i = phi double [ %i.hm, %.lr.ph43.i.new ], [ 1.000000e+00, %.lr.ph43.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph43.i.new ], [ 0, %.lr.ph43.i ]
  %i.he = load double, ptr %i.hd, align 8, !tbaa !52
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv48.i ; 2 uses
  %i.hf = load double, ptr %gep.i, align 8, !tbaa !52
  %i.hg = call double @llvm.fmuladd.f64(double %i.he, double %.03841.i, double %i.hf)
  store double %i.hg, ptr %gep.i, align 8, !tbaa !52
  %i.hh = fmul double %i.hc, %.03841.i            ; 2 uses
  %i.hi = load double, ptr %i.hd, align 8, !tbaa !52
  %i.hj = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv48.i
  %gep.i.1 = getelementptr i8, ptr %i.hj, i64 8   ; 2 uses
  %i.hk = load double, ptr %gep.i.1, align 8, !tbaa !52
end_hunk_0
begin_hunk_1_@erkStep_ComputeSolutions:bb.a
  %wide.trip.count = zext nneg i32 %i.p to i64    ; 11 uses
  %min.iters.check = icmp ult i32 %i.p, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.x = shl nuw nsw i64 %wide.trip.count, 3      ; 4 uses
  %i.y = getelementptr i8, ptr %i.i, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 744
  %i.aa = getelementptr i8, ptr %i.u, i64 %i.x
  %i.ab = getelementptr i8, ptr %i.k, i64 %i.x
  %i.ac = getelementptr i8, ptr %i.w, i64 %i.x
  %bound0 = icmp ult ptr %i.i, %i.z
  %bound1 = icmp ult ptr %i.r, %i.y
  %found.conflict = and i1 %bound0, %bound1
  %bound0209 = icmp ult ptr %i.i, %i.aa
  %bound1210 = icmp ult ptr %i.u, %i.y
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx = or i1 %found.conflict, %found.conflict211
  %bound0212 = icmp ult ptr %i.k, %i.ac
  %bound1213 = icmp ult ptr %i.w, %i.ab
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %conflict.rdx, %found.conflict214
  br i1 %conflict.rdx215, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.ad = load double, ptr %i.r, align 8, !tbaa !71, !alias.scope !215
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ad, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !52, !alias.scope !216
  %wide.load216 = load <2 x double>, ptr %i.af, align 8, !tbaa !52, !alias.scope !216
  %i.ag = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ah = fmul <2 x double> %broadcast.splat, %wide.load216
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x double> %i.ag, ptr %i.ai, align 8, !tbaa !52, !alias.scope !217, !noalias !218
  store <2 x double> %i.ah, ptr %i.aj, align 8, !tbaa !52, !alias.scope !217, !noalias !218
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load217 = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !57, !alias.scope !219
  %wide.load218 = load <2 x ptr>, ptr %i.al, align 8, !tbaa !57, !alias.scope !219
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x ptr> %wide.load217, ptr %i.am, align 8, !tbaa !57, !alias.scope !220, !noalias !219
  store <2 x ptr> %wide.load218, ptr %i.an, align 8, !tbaa !57, !alias.scope !220, !noalias !219
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ap = load double, ptr %i.r, align 8, !tbaa !71
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.ph
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !52
  %i.as = fmul double %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.ph
  store double %i.as, ptr %i.at, align 8, !tbaa !52
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.ph
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.ph
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !57
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ax = add nsw i64 %wide.trip.count, -1
  %i.ay = icmp eq i64 %indvars.iv.ph, %i.ax
  br i1 %i.ay, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.az = load double, ptr %i.r, align 8, !tbaa !71
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !52
  %i.bc = fmul double %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %i.bc, ptr %i.bd, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !57
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.bh = load double, ptr %i.r, align 8, !tbaa !71
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !52
  %i.bk = fmul double %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  store double %i.bk, ptr %i.bl, align 8, !tbaa !52
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !57
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !57
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !183

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bp = zext nneg i32 %i.p to i64               ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bp
  store double 1.000000e+00, ptr %i.bq, align 8, !tbaa !52
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !68
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bp
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !57
  %i.bu = add nuw nsw i32 %i.p, 1                 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !32 ; 4 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph148, label %bb.d

._crit_edge.thread:                               ; preds = %.preheader142
  store double 1.000000e+00, ptr %i.i, align 8, !tbaa !52
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !68
  store ptr %i.bz, ptr %i.k, align 8, !tbaa !57
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !32 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.preheader141..lr.ph.preheader.i_crit_edge, label %bb.d

.preheader141..lr.ph.preheader.i_crit_edge:       ; preds = %._crit_edge.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !49
  %.phi.trans.insert179 = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.pre180 = load ptr, ptr %.phi.trans.insert179, align 8, !tbaa !50
  br label %.lr.ph.preheader.i

.lr.ph148:                                        ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 4 uses
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !35  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !70 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !49 ; 12 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !85 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !50 ; 12 uses
  %wide.trip.count165 = zext nneg i32 %i.p to i64
  %min.iters.check252 = icmp ult i32 %i.p, 20
  br i1 %min.iters.check252, label %scalar.ph251.preheader, label %vector.memcheck253

vector.memcheck253:                               ; preds = %.lr.ph148
  %i.co = shl nuw nsw i64 %wide.trip.count, 3     ; 4 uses
  %i.cp = getelementptr i8, ptr %i.cj, i64 %i.co  ; 4 uses
  %i.cq = getelementptr i8, ptr %i.cn, i64 %i.co  ; 4 uses
  %i.cr = getelementptr i8, ptr %0, i64 928       ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cg, i64 %i.co  ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cl, i64 %i.co  ; 2 uses
  %bound0254 = icmp ult ptr %i.cj, %i.cq
  %bound1255 = icmp ult ptr %i.cn, %i.cp
  %found.conflict256 = and i1 %bound0254, %bound1255
  %bound0257 = icmp ult ptr %i.cj, %i.cr
  %bound1258 = icmp ult ptr %i.r, %i.cp
  %found.conflict259 = and i1 %bound0257, %bound1258
  %conflict.rdx260 = or i1 %found.conflict256, %found.conflict259
  %bound0261 = icmp ult ptr %i.cj, %i.cs
  %bound1262 = icmp ult ptr %i.cg, %i.cp
  %found.conflict263 = and i1 %bound0261, %bound1262
  %conflict.rdx264 = or i1 %conflict.rdx260, %found.conflict263
  %bound0265 = icmp ult ptr %i.cj, %i.ct
  %bound1266 = icmp ult ptr %i.cl, %i.cp
  %found.conflict267 = and i1 %bound0265, %bound1266
  %conflict.rdx268 = or i1 %conflict.rdx264, %found.conflict267
  %bound0269 = icmp ult ptr %i.cn, %i.cr
  %bound1270 = icmp ult ptr %i.r, %i.cq
  %found.conflict271 = and i1 %bound0269, %bound1270
  %conflict.rdx272 = or i1 %conflict.rdx268, %found.conflict271
  %bound0273 = icmp ult ptr %i.cn, %i.cs
  %bound1274 = icmp ult ptr %i.cg, %i.cq
  %found.conflict275 = and i1 %bound0273, %bound1274
  %conflict.rdx276 = or i1 %conflict.rdx272, %found.conflict275
  %bound0277 = icmp ult ptr %i.cn, %i.ct
  %bound1278 = icmp ult ptr %i.cl, %i.cq
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx280 = or i1 %conflict.rdx276, %found.conflict279
  br i1 %conflict.rdx280, label %scalar.ph251.preheader, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck253
  %n.vec282 = and i64 %wide.trip.count, 2147483646 ; 3 uses
  %i.cu = load double, ptr %i.cd, align 8, !tbaa !67, !alias.scope !221
  %broadcast.splatinsert288 = insertelement <2 x double> poison, double %i.cu, i64 0
  %broadcast.splat289 = shufflevector <2 x double> %broadcast.splatinsert288, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = load double, ptr %i.ch, align 8, !tbaa !71, !alias.scope !221
  %broadcast.splatinsert291 = insertelement <2 x double> poison, double %i.cv, i64 0
  %broadcast.splat292 = shufflevector <2 x double> %broadcast.splatinsert291, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph281
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next293, %vector.body283 ] ; 5 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index284
  %wide.load285 = load <2 x double>, ptr %i.cw, align 8, !tbaa !52, !alias.scope !222
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load285, <2 x double> %broadcast.splat292, <2 x double> %broadcast.splat289)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %index284
  store <2 x double> %i.cx, ptr %i.cy, align 8, !tbaa !52, !alias.scope !223, !noalias !224
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %index284
  %wide.load290 = load <2 x double>, ptr %i.cz, align 8, !tbaa !52, !alias.scope !225
  %i.da = fmul <2 x double> %broadcast.splat292, %wide.load290
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index284
  store <2 x double> %i.da, ptr %i.db, align 8, !tbaa !52, !alias.scope !226, !noalias !227
  %index.next293 = add nuw i64 %index284, 2       ; 2 uses
  %i.dc = icmp eq i64 %index.next293, %n.vec282
  br i1 %i.dc, label %middle.block294, label %vector.body283, !llvm.loop !190

middle.block294:                                  ; preds = %vector.body283
  %cmp.n295 = icmp eq i64 %n.vec282, %wide.trip.count
  br i1 %cmp.n295, label %.lr.ph.preheader.i, label %scalar.ph251.preheader

scalar.ph251.preheader:                           ; preds = %vector.memcheck253, %.lr.ph148, %middle.block294
  %indvars.iv162.ph = phi i64 [ 0, %vector.memcheck253 ], [ 0, %.lr.ph148 ], [ %n.vec282, %middle.block294 ] ; 7 uses
  %xtraiter475.a = and i64 %wide.trip.count, 1
  %lcmp.mod476.not.a = icmp eq i64 %xtraiter475.a, 0
  br i1 %lcmp.mod476.not.a, label %scalar.ph251.prol.loopexit, label %scalar.ph251.prol

scalar.ph251.prol:                                ; preds = %scalar.ph251.preheader
  %i.dd = load double, ptr %i.cd, align 8, !tbaa !67
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv162.ph
  %i.df = load double, ptr %i.de, align 8, !tbaa !52
  %i.dg = load double, ptr %i.ch, align 8, !tbaa !71
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.df, double %i.dg, double %i.dd)
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv162.ph
  store double %i.dh, ptr %i.di, align 8, !tbaa !52
  %i.dj = load double, ptr %i.ch, align 8, !tbaa !71
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv162.ph
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !52
  %i.dm = fmul double %i.dj, %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv162.ph
  store double %i.dm, ptr %i.dn, align 8, !tbaa !52
  %indvars.iv.next163.prol = or disjoint i64 %indvars.iv162.ph, 1
  br label %scalar.ph251.prol.loopexit

scalar.ph251.prol.loopexit:                       ; preds = %scalar.ph251.prol, %scalar.ph251.preheader
  %indvars.iv162.unr = phi i64 [ %indvars.iv162.ph, %scalar.ph251.preheader ], [ %indvars.iv.next163.prol, %scalar.ph251.prol ]
  %i.do = add nsw i64 %wide.trip.count, -1
  %i.dp = icmp eq i64 %indvars.iv162.ph, %i.do
  br i1 %i.dp, label %.lr.ph.preheader.i, label %scalar.ph251

scalar.ph251:                                     ; preds = %scalar.ph251.prol.loopexit, %scalar.ph251
  %indvars.iv162 = phi i64 [ %indvars.iv.next163.1, %scalar.ph251 ], [ %indvars.iv162.unr, %scalar.ph251.prol.loopexit ] ; 6 uses
  %i.dq = load double, ptr %i.cd, align 8, !tbaa !67
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv162
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !52
  %i.dt = load double, ptr %i.ch, align 8, !tbaa !71
  %i.du = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.dt, double %i.dq)
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv162
  store double %i.du, ptr %i.dv, align 8, !tbaa !52
  %i.dw = load double, ptr %i.ch, align 8, !tbaa !71
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv162
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !52
  %i.dz = fmul double %i.dw, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv162
  store double %i.dz, ptr %i.ea, align 8, !tbaa !52
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 4 uses
  %i.eb = load double, ptr %i.cd, align 8, !tbaa !67
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next163
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !52
  %i.ee = load double, ptr %i.ch, align 8, !tbaa !71
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ee, double %i.eb)
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv.next163
  store double %i.ef, ptr %i.eg, align 8, !tbaa !52
  %i.eh = load double, ptr %i.ch, align 8, !tbaa !71
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next163
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !52
  %i.ek = fmul double %i.eh, %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.next163
  store double %i.ek, ptr %i.el, align 8, !tbaa !52
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 2 uses
  %exitcond166.not.1 = icmp eq i64 %indvars.iv.next163.1, %wide.trip.count165
  br i1 %exitcond166.not.1, label %.lr.ph.preheader.i, label %scalar.ph251, !llvm.loop !191

.lr.ph.preheader.i:                               ; preds = %scalar.ph251.prol.loopexit, %scalar.ph251, %middle.block294, %.preheader141..lr.ph.preheader.i_crit_edge
  %i.em = phi i32 [ 1, %.preheader141..lr.ph.preheader.i_crit_edge ], [ %i.bu, %middle.block294 ], [ %i.bu, %scalar.ph251 ], [ %i.bu, %scalar.ph251.prol.loopexit ] ; 2 uses
  %i.en = phi i32 [ %i.cb, %.preheader141..lr.ph.preheader.i_crit_edge ], [ %i.bw, %middle.block294 ], [ %i.bw, %scalar.ph251 ], [ %i.bw, %scalar.ph251.prol.loopexit ] ; 5 uses
  %i.eo = phi ptr [ %.pre180, %.preheader141..lr.ph.preheader.i_crit_edge ], [ %i.cn, %middle.block294 ], [ %i.cn, %scalar.ph251 ], [ %i.cn, %scalar.ph251.prol.loopexit ]
  %i.ep = phi ptr [ %.pre, %.preheader141..lr.ph.preheader.i_crit_edge ], [ %i.cj, %middle.block294 ], [ %i.cj, %scalar.ph251 ], [ %i.cj, %scalar.ph251.prol.loopexit ]
  %i.eq = load ptr, ptr %i.h, align 8, !tbaa !45  ; 5 uses
  %i.er = load ptr, ptr %i.j, align 8, !tbaa !47  ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.et = load double, ptr %i.es, align 8, !tbaa !59
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !60
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !31 ; 5 uses
  %i.ey = zext nneg i32 %i.em to i64              ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.en to i64 ; 7 uses
  %min.iters.check299 = icmp ult i32 %i.en, 10
  br i1 %min.iters.check299, label %.lr.ph.i.preheader, label %vector.memcheck300

vector.memcheck300:                               ; preds = %.lr.ph.preheader.i
  %i.ez = ptrtoaddr ptr %i.ex to i64
  %i.fa = ptrtoaddr ptr %i.er to i64
  %i.fb = tail call i32 @llvm.smax.i32(i32 %i.p, i32 0)
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = shl nuw nsw i64 %i.fc, 3
  %i.fe = add i64 %i.fd, %i.fa
  %i.ff = sub i64 %i.fe, %i.ez
  %i.fg = add i64 %i.ff, 7
  %diff.check = icmp ult i64 %i.fg, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph301

vector.ph301:                                     ; preds = %vector.memcheck300
  %n.vec302 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next307, %vector.body303 ] ; 3 uses
  %i.fh = add nuw nsw i64 %index304, %i.ey        ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.fh ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <2 x double> zeroinitializer, ptr %i.fi, align 8, !tbaa !52
  store <2 x double> zeroinitializer, ptr %i.fj, align 8, !tbaa !52
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %index304 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load305 = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !57
  %wide.load306 = load <2 x ptr>, ptr %i.fl, align 8, !tbaa !57
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.fh ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <2 x ptr> %wide.load305, ptr %i.fm, align 8, !tbaa !57
  store <2 x ptr> %wide.load306, ptr %i.fn, align 8, !tbaa !57
  %index.next307 = add nuw i64 %index304, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next307, %n.vec302
  br i1 %i.fo, label %middle.block308, label %vector.body303, !llvm.loop !192

middle.block308:                                  ; preds = %vector.body303
  %cmp.n309 = icmp eq i64 %n.vec302, %wide.trip.count.i
  br i1 %cmp.n309, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck300, %.lr.ph.preheader.i, %middle.block308
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck300 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec302, %middle.block308 ] ; 5 uses
  %xtraiter477 = and i64 %wide.trip.count.i, 1
  %lcmp.mod478.not = icmp eq i64 %xtraiter477, 0
  br i1 %lcmp.mod478.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.fp = add nuw nsw i64 %indvars.iv.i.ph, %i.ey ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.fp
  store double 0.000000e+00, ptr %i.fq, align 8, !tbaa !52
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i.ph
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !57
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.fp
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !57
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fu = add nsw i64 %wide.trip.count.i, -1
  %i.fv = icmp eq i64 %indvars.iv.i.ph, %i.fu
  br i1 %i.fv, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block308
  br i1 %i.q, label %.lr.ph43.preheader.i, label %erkStep_ApplyForcing.exit

.lr.ph43.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count56.i = zext nneg i32 %i.p to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.eq, i64 %i.ey ; 3 uses
  %xtraiter479 = and i64 %wide.trip.count.i, 1
  %i.fw = icmp eq i32 %i.en, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod480.not = icmp eq i64 %xtraiter479, 0
  %lcmp.mod481 = trunc i32 %i.en to i1
  br label %.lr.ph43.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.fx = add nuw nsw i64 %indvars.iv.i, %i.ey    ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.fx
  store double 0.000000e+00, ptr %i.fy, align 8, !tbaa !52
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !57
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.fx
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !57
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gc = add nuw nsw i64 %indvars.iv.next.i, %i.ey ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.gc
  store double 0.000000e+00, ptr %i.gd, align 8, !tbaa !52
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.next.i
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !57
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.gc
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !57
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.preheader.i, label %.lr.ph.i, !llvm.loop !193

.lr.ph43.i:                                       ; preds = %._crit_edge.i, %.lr.ph43.preheader.i
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph43.preheader.i ], [ %indvars.iv.next54.i, %._crit_edge.i ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv53.i
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !52
  %i.gj = fsub double %i.gi, %i.et
  %i.gk = fdiv double %i.gj, %i.ev                ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv53.i ; 3 uses
  br i1 %i.fw, label %.epil.preheader, label %.lr.ph43.i.new

end_hunk_1
begin_hunk_2_@erkStep_ComputeSolutions:bb.a
  %i.hz = getelementptr i8, ptr %0, i64 744
  %i.ia = getelementptr i8, ptr %i.hs, i64 %i.hx
  %i.ib = getelementptr i8, ptr %i.hu, i64 %i.hx
  %i.ic = getelementptr i8, ptr %i.k, i64 %i.hx
  %i.id = getelementptr i8, ptr %i.hw, i64 %i.hx
  %bound0335 = icmp ult ptr %i.i, %i.hz
  %bound1336 = icmp ult ptr %i.hp, %i.hy
  %found.conflict337 = and i1 %bound0335, %bound1336
  %bound0338 = icmp ult ptr %i.i, %i.ia
  %bound1339 = icmp ult ptr %i.hs, %i.hy
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %found.conflict337, %found.conflict340
  %bound0342 = icmp ult ptr %i.i, %i.ib
  %bound1343 = icmp ult ptr %i.hu, %i.hy
  %found.conflict344 = and i1 %bound0342, %bound1343
  %conflict.rdx345 = or i1 %conflict.rdx341, %found.conflict344
  %bound0346 = icmp ult ptr %i.k, %i.id
  %bound1347 = icmp ult ptr %i.hw, %i.ic
  %found.conflict348 = and i1 %bound0346, %bound1347
  %conflict.rdx349 = or i1 %conflict.rdx345, %found.conflict348
  br i1 %conflict.rdx349, label %scalar.ph332.preheader, label %vector.ph350

vector.ph350:                                     ; preds = %vector.memcheck334
  %n.vec351 = and i64 %wide.trip.count172, 2147483646 ; 3 uses
  %i.ie = load double, ptr %i.hp, align 8, !tbaa !71, !alias.scope !228
  %broadcast.splatinsert356 = insertelement <2 x double> poison, double %i.ie, i64 0
  %broadcast.splat357 = shufflevector <2 x double> %broadcast.splatinsert356, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body352

vector.body352:                                   ; preds = %vector.body352, %vector.ph350
  %index353 = phi i64 [ 0, %vector.ph350 ], [ %index.next359, %vector.body352 ] ; 6 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index353
  %wide.load354 = load <2 x double>, ptr %i.if, align 8, !tbaa !52, !alias.scope !229
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %index353
  %wide.load355 = load <2 x double>, ptr %i.ig, align 8, !tbaa !52, !alias.scope !230
  %i.ih = fsub <2 x double> %wide.load354, %wide.load355
  %i.ii = fmul <2 x double> %broadcast.splat357, %i.ih
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index353
  store <2 x double> %i.ii, ptr %i.ij, align 8, !tbaa !52, !alias.scope !231, !noalias !232
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %index353
  %wide.load358 = load <2 x ptr>, ptr %i.ik, align 8, !tbaa !57, !alias.scope !233
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index353
  store <2 x ptr> %wide.load358, ptr %i.il, align 8, !tbaa !57, !alias.scope !234, !noalias !233
  %index.next359 = add nuw i64 %index353, 2       ; 2 uses
  %i.im = icmp eq i64 %index.next359, %n.vec351
  br i1 %i.im, label %middle.block360, label %vector.body352, !llvm.loop !201

middle.block360:                                  ; preds = %vector.body352
  %cmp.n361 = icmp eq i64 %n.vec351, %wide.trip.count172
  br i1 %cmp.n361, label %._crit_edge153, label %scalar.ph332.preheader

scalar.ph332.preheader:                           ; preds = %vector.memcheck334, %.lr.ph152, %middle.block360
  %indvars.iv167.ph = phi i64 [ 0, %vector.memcheck334 ], [ 0, %.lr.ph152 ], [ %n.vec351, %middle.block360 ] ; 8 uses
  %xtraiter482 = and i64 %wide.trip.count172, 1
  %lcmp.mod483.not = icmp eq i64 %xtraiter482, 0
  br i1 %lcmp.mod483.not, label %scalar.ph332.prol.loopexit, label %scalar.ph332.prol

scalar.ph332.prol:                                ; preds = %scalar.ph332.preheader
  %i.in = load double, ptr %i.hp, align 8, !tbaa !71
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv167.ph
  %i.ip = load double, ptr %i.io, align 8, !tbaa !52
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv167.ph
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !52
  %i.is = fsub double %i.ip, %i.ir
  %i.it = fmul double %i.in, %i.is
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv167.ph
  store double %i.it, ptr %i.iu, align 8, !tbaa !52
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv167.ph
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !57
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv167.ph
  store ptr %i.iw, ptr %i.ix, align 8, !tbaa !57
  %indvars.iv.next168.prol = or disjoint i64 %indvars.iv167.ph, 1
  br label %scalar.ph332.prol.loopexit

scalar.ph332.prol.loopexit:                       ; preds = %scalar.ph332.prol, %scalar.ph332.preheader
  %indvars.iv167.unr = phi i64 [ %indvars.iv167.ph, %scalar.ph332.preheader ], [ %indvars.iv.next168.prol, %scalar.ph332.prol ]
  %i.iy = add nsw i64 %wide.trip.count172, -1
  %i.iz = icmp eq i64 %indvars.iv167.ph, %i.iy
  br i1 %i.iz, label %._crit_edge153, label %scalar.ph332

scalar.ph332:                                     ; preds = %scalar.ph332.prol.loopexit, %scalar.ph332
  %indvars.iv167 = phi i64 [ %indvars.iv.next168.1, %scalar.ph332 ], [ %indvars.iv167.unr, %scalar.ph332.prol.loopexit ] ; 7 uses
  %i.ja = load double, ptr %i.hp, align 8, !tbaa !71
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv167
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !52
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv167
  %i.je = load double, ptr %i.jd, align 8, !tbaa !52
  %i.jf = fsub double %i.jc, %i.je
  %i.jg = fmul double %i.ja, %i.jf
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv167
  store double %i.jg, ptr %i.jh, align 8, !tbaa !52
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv167
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !57
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv167
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !57
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 5 uses
  %i.jl = load double, ptr %i.hp, align 8, !tbaa !71
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next168
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !52
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv.next168
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !52
  %i.jq = fsub double %i.jn, %i.jp
  %i.jr = fmul double %i.jl, %i.jq
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next168
  store double %i.jr, ptr %i.js, align 8, !tbaa !52
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next168
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !57
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next168
  store ptr %i.ju, ptr %i.jv, align 8, !tbaa !57
  %indvars.iv.next168.1 = add nuw nsw i64 %indvars.iv167, 2 ; 2 uses
  %exitcond173.not.1 = icmp eq i64 %indvars.iv.next168.1, %wide.trip.count172
  br i1 %exitcond173.not.1, label %._crit_edge153, label %scalar.ph332, !llvm.loop !202

._crit_edge153:                                   ; preds = %scalar.ph332.prol.loopexit, %scalar.ph332, %middle.block360
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !32 ; 3 uses
  %i.jy = icmp sgt i32 %i.jx, 0
  br i1 %i.jy, label %.lr.ph157, label %bb.j

._crit_edge153.thread:                            ; preds = %bb.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !32 ; 2 uses
  %i.kb = icmp sgt i32 %i.ka, 0
  br i1 %i.kb, label %.preheader..lr.ph.preheader.i106_crit_edge, label %bb.j

.preheader..lr.ph.preheader.i106_crit_edge:       ; preds = %._crit_edge153.thread
  %.phi.trans.insert181 = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.pre182 = load ptr, ptr %.phi.trans.insert181, align 8, !tbaa !49
  %.phi.trans.insert183 = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.pre184 = load ptr, ptr %.phi.trans.insert183, align 8, !tbaa !50
  br label %.lr.ph.preheader.i106

.lr.ph157:                                        ; preds = %._crit_edge153
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.kd = load ptr, ptr %i.l, align 8, !tbaa !35  ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !70 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !49 ; 10 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !85 ; 5 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kd, i64 40
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !84 ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !50 ; 10 uses
  %wide.trip.count177 = zext nneg i32 %i.hn to i64
  %min.iters.check405 = icmp ult i32 %i.hn, 20
  br i1 %min.iters.check405, label %scalar.ph404.preheader, label %vector.memcheck406

vector.memcheck406:                               ; preds = %.lr.ph157
  %i.kp = shl nuw nsw i64 %wide.trip.count172, 3  ; 5 uses
  %i.kq = getelementptr i8, ptr %i.ki, i64 %i.kp  ; 5 uses
  %i.kr = getelementptr i8, ptr %i.ko, i64 %i.kp  ; 5 uses
  %i.ks = getelementptr i8, ptr %0, i64 928       ; 2 uses
  %i.kt = getelementptr i8, ptr %i.kf, i64 %i.kp  ; 2 uses
  %i.ku = getelementptr i8, ptr %i.kk, i64 %i.kp  ; 2 uses
  %i.kv = getelementptr i8, ptr %i.km, i64 %i.kp  ; 2 uses
  %bound0407 = icmp ult ptr %i.ki, %i.kr
  %bound1408 = icmp ult ptr %i.ko, %i.kq
  %found.conflict409 = and i1 %bound0407, %bound1408
  %bound0410 = icmp ult ptr %i.ki, %i.ks
  %bound1411 = icmp ult ptr %i.hp, %i.kq
  %found.conflict412 = and i1 %bound0410, %bound1411
  %conflict.rdx413 = or i1 %found.conflict409, %found.conflict412
  %bound0414 = icmp ult ptr %i.ki, %i.kt
  %bound1415 = icmp ult ptr %i.kf, %i.kq
  %found.conflict416 = and i1 %bound0414, %bound1415
  %conflict.rdx417 = or i1 %conflict.rdx413, %found.conflict416
  %bound0418 = icmp ult ptr %i.ki, %i.ku
  %bound1419 = icmp ult ptr %i.kk, %i.kq
  %found.conflict420 = and i1 %bound0418, %bound1419
  %conflict.rdx421 = or i1 %conflict.rdx417, %found.conflict420
  %bound0422 = icmp ult ptr %i.ki, %i.kv
  %bound1423 = icmp ult ptr %i.km, %i.kq
  %found.conflict424 = and i1 %bound0422, %bound1423
  %conflict.rdx425 = or i1 %conflict.rdx421, %found.conflict424
  %bound0426 = icmp ult ptr %i.ko, %i.ks
  %bound1427 = icmp ult ptr %i.hp, %i.kr
  %found.conflict428 = and i1 %bound0426, %bound1427
  %conflict.rdx429 = or i1 %conflict.rdx425, %found.conflict428
  %bound0430 = icmp ult ptr %i.ko, %i.kt
  %bound1431 = icmp ult ptr %i.kf, %i.kr
  %found.conflict432 = and i1 %bound0430, %bound1431
  %conflict.rdx433 = or i1 %conflict.rdx429, %found.conflict432
  %bound0434 = icmp ult ptr %i.ko, %i.ku
  %bound1435 = icmp ult ptr %i.kk, %i.kr
  %found.conflict436 = and i1 %bound0434, %bound1435
  %conflict.rdx437 = or i1 %conflict.rdx433, %found.conflict436
  %bound0438 = icmp ult ptr %i.ko, %i.kv
  %bound1439 = icmp ult ptr %i.km, %i.kr
  %found.conflict440 = and i1 %bound0438, %bound1439
  %conflict.rdx441 = or i1 %conflict.rdx437, %found.conflict440
  br i1 %conflict.rdx441, label %scalar.ph404.preheader, label %vector.ph442

vector.ph442:                                     ; preds = %vector.memcheck406
  %n.vec443 = and i64 %wide.trip.count172, 2147483646 ; 3 uses
  %i.kw = load double, ptr %i.kc, align 8, !tbaa !67, !alias.scope !235
  %broadcast.splatinsert449 = insertelement <2 x double> poison, double %i.kw, i64 0
  %broadcast.splat450 = shufflevector <2 x double> %broadcast.splatinsert449, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kx = load double, ptr %i.kg, align 8, !tbaa !71, !alias.scope !235
  %broadcast.splatinsert453 = insertelement <2 x double> poison, double %i.kx, i64 0
  %broadcast.splat454 = shufflevector <2 x double> %broadcast.splatinsert453, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph442
  %index445 = phi i64 [ 0, %vector.ph442 ], [ %index.next455, %vector.body444 ] ; 6 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %index445
  %wide.load446 = load <2 x double>, ptr %i.ky, align 8, !tbaa !52, !alias.scope !236
  %i.kz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load446, <2 x double> %broadcast.splat454, <2 x double> %broadcast.splat450)
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %index445
  store <2 x double> %i.kz, ptr %i.la, align 8, !tbaa !52, !alias.scope !237, !noalias !238
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %index445
  %wide.load451 = load <2 x double>, ptr %i.lb, align 8, !tbaa !52, !alias.scope !239
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %index445
  %wide.load452 = load <2 x double>, ptr %i.lc, align 8, !tbaa !52, !alias.scope !240
  %i.ld = fsub <2 x double> %wide.load451, %wide.load452
  %i.le = fmul <2 x double> %broadcast.splat454, %i.ld
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %index445
  store <2 x double> %i.le, ptr %i.lf, align 8, !tbaa !52, !alias.scope !241, !noalias !242
  %index.next455 = add nuw i64 %index445, 2       ; 2 uses
  %i.lg = icmp eq i64 %index.next455, %n.vec443
  br i1 %i.lg, label %middle.block456, label %vector.body444, !llvm.loop !210

middle.block456:                                  ; preds = %vector.body444
  %cmp.n457 = icmp eq i64 %n.vec443, %wide.trip.count172
  br i1 %cmp.n457, label %.lr.ph.preheader.i106, label %scalar.ph404.preheader

scalar.ph404.preheader:                           ; preds = %vector.memcheck406, %.lr.ph157, %middle.block456
  %indvars.iv174.ph = phi i64 [ 0, %vector.memcheck406 ], [ 0, %.lr.ph157 ], [ %n.vec443, %middle.block456 ]
  br label %scalar.ph404

scalar.ph404:                                     ; preds = %scalar.ph404.preheader, %scalar.ph404
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %scalar.ph404 ], [ %indvars.iv174.ph, %scalar.ph404.preheader ] ; 6 uses
  %i.lh = load double, ptr %i.kc, align 8, !tbaa !67
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv174
  %i.lj = load double, ptr %i.li, align 8, !tbaa !52
  %i.lk = load double, ptr %i.kg, align 8, !tbaa !71
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.lj, double %i.lk, double %i.lh)
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv174
  store double %i.ll, ptr %i.lm, align 8, !tbaa !52
  %i.ln = load double, ptr %i.kg, align 8, !tbaa !71
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv174
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !52
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv174
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !52
  %i.ls = fsub double %i.lp, %i.lr
  %i.lt = fmul double %i.ln, %i.ls
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %indvars.iv174
  store double %i.lt, ptr %i.lu, align 8, !tbaa !52
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %.lr.ph.preheader.i106, label %scalar.ph404, !llvm.loop !211

.lr.ph.preheader.i106:                            ; preds = %scalar.ph404, %middle.block456, %.preheader..lr.ph.preheader.i106_crit_edge
  %.2139.lcssa194196 = phi i32 [ 0, %.preheader..lr.ph.preheader.i106_crit_edge ], [ %i.hn, %middle.block456 ], [ %i.hn, %scalar.ph404 ] ; 2 uses
  %i.lv = phi i32 [ %i.ka, %.preheader..lr.ph.preheader.i106_crit_edge ], [ %i.jx, %middle.block456 ], [ %i.jx, %scalar.ph404 ] ; 5 uses
  %i.lw = phi ptr [ %.pre184, %.preheader..lr.ph.preheader.i106_crit_edge ], [ %i.ko, %middle.block456 ], [ %i.ko, %scalar.ph404 ]
  %i.lx = phi ptr [ %.pre182, %.preheader..lr.ph.preheader.i106_crit_edge ], [ %i.ki, %middle.block456 ], [ %i.ki, %scalar.ph404 ]
  %i.ly = load ptr, ptr %i.h, align 8, !tbaa !45  ; 5 uses
  %i.lz = load ptr, ptr %i.j, align 8, !tbaa !47  ; 5 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !59
  %i.mc = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.md = load double, ptr %i.mc, align 8, !tbaa !60
  %i.me = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !31 ; 5 uses
  %i.mg = zext nneg i32 %.2139.lcssa194196 to i64 ; 6 uses
  %wide.trip.count.i107 = zext nneg i32 %i.lv to i64 ; 7 uses
  %min.iters.check462 = icmp ult i32 %i.lv, 8
  br i1 %min.iters.check462, label %.lr.ph.i108.preheader, label %vector.memcheck463

vector.memcheck463:                               ; preds = %.lr.ph.preheader.i106
  %i.mh = ptrtoaddr ptr %i.mf to i64
  %i.mi = ptrtoaddr ptr %i.lz to i64
  %i.mj = shl nuw nsw i64 %i.mg, 3
  %i.mk = add i64 %i.mj, %i.mi
  %i.ml = sub i64 %i.mh, %i.mk
  %diff.check464 = icmp ugt i64 %i.ml, -32
  br i1 %diff.check464, label %.lr.ph.i108.preheader, label %vector.ph465

vector.ph465:                                     ; preds = %vector.memcheck463
  %n.vec466 = and i64 %wide.trip.count.i107, 2147483644 ; 3 uses
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph465
  %index468 = phi i64 [ 0, %vector.ph465 ], [ %index.next471, %vector.body467 ] ; 3 uses
  %i.mm = add nuw nsw i64 %index468, %i.mg        ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.mm ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store <2 x double> zeroinitializer, ptr %i.mn, align 8, !tbaa !52
  store <2 x double> zeroinitializer, ptr %i.mo, align 8, !tbaa !52
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %index468 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %wide.load469 = load <2 x ptr>, ptr %i.mp, align 8, !tbaa !57
  %wide.load470 = load <2 x ptr>, ptr %i.mq, align 8, !tbaa !57
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.mm ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store <2 x ptr> %wide.load469, ptr %i.mr, align 8, !tbaa !57
  store <2 x ptr> %wide.load470, ptr %i.ms, align 8, !tbaa !57
  %index.next471 = add nuw i64 %index468, 4       ; 2 uses
  %i.mt = icmp eq i64 %index.next471, %n.vec466
  br i1 %i.mt, label %middle.block472, label %vector.body467, !llvm.loop !212

middle.block472:                                  ; preds = %vector.body467
  %cmp.n473 = icmp eq i64 %n.vec466, %wide.trip.count.i107
  br i1 %cmp.n473, label %.preheader.i112, label %.lr.ph.i108.preheader

.lr.ph.i108.preheader:                            ; preds = %vector.memcheck463, %.lr.ph.preheader.i106, %middle.block472
  %indvars.iv.i109.ph = phi i64 [ 0, %vector.memcheck463 ], [ 0, %.lr.ph.preheader.i106 ], [ %n.vec466, %middle.block472 ] ; 5 uses
  %xtraiter484 = and i64 %wide.trip.count.i107, 1
  %lcmp.mod485.not = icmp eq i64 %xtraiter484, 0
  br i1 %lcmp.mod485.not, label %.lr.ph.i108.prol.loopexit, label %.lr.ph.i108.prol

.lr.ph.i108.prol:                                 ; preds = %.lr.ph.i108.preheader
  %i.mu = add nuw nsw i64 %indvars.iv.i109.ph, %i.mg ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.mu
  store double 0.000000e+00, ptr %i.mv, align 8, !tbaa !52
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.i109.ph
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !57
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.mu
  store ptr %i.mx, ptr %i.my, align 8, !tbaa !57
  %indvars.iv.next.i110.prol = or disjoint i64 %indvars.iv.i109.ph, 1
  br label %.lr.ph.i108.prol.loopexit

.lr.ph.i108.prol.loopexit:                        ; preds = %.lr.ph.i108.prol, %.lr.ph.i108.preheader
  %indvars.iv.i109.unr = phi i64 [ %indvars.iv.i109.ph, %.lr.ph.i108.preheader ], [ %indvars.iv.next.i110.prol, %.lr.ph.i108.prol ]
  %i.mz = add nsw i64 %wide.trip.count.i107, -1
  %i.na = icmp eq i64 %indvars.iv.i109.ph, %i.mz
  br i1 %i.na, label %.preheader.i112, label %.lr.ph.i108

.preheader.i112:                                  ; preds = %.lr.ph.i108.prol.loopexit, %.lr.ph.i108, %middle.block472
  br i1 %i.ho, label %.lr.ph43.preheader.i113, label %erkStep_ApplyForcing.exit127

.lr.ph43.preheader.i113:                          ; preds = %.preheader.i112
  %wide.trip.count56.i114 = zext nneg i32 %i.hn to i64
  %invariant.gep.i116 = getelementptr [8 x i8], ptr %i.ly, i64 %i.mg ; 3 uses
  %xtraiter487 = and i64 %wide.trip.count.i107, 1
  %i.nb = icmp eq i32 %i.lv, 1
  %unroll_iter490 = and i64 %wide.trip.count.i107, 2147483646
  %lcmp.mod488.not = icmp eq i64 %xtraiter487, 0
  %lcmp.mod489 = trunc i32 %i.lv to i1
  br label %.lr.ph43.i117

.lr.ph.i108:                                      ; preds = %.lr.ph.i108.prol.loopexit, %.lr.ph.i108
  %indvars.iv.i109 = phi i64 [ %indvars.iv.next.i110.1, %.lr.ph.i108 ], [ %indvars.iv.i109.unr, %.lr.ph.i108.prol.loopexit ] ; 4 uses
  %i.nc = add nuw nsw i64 %indvars.iv.i109, %i.mg ; 2 uses
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.nc
  store double 0.000000e+00, ptr %i.nd, align 8, !tbaa !52
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.i109
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !57
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.nc
  store ptr %i.nf, ptr %i.ng, align 8, !tbaa !57
  %indvars.iv.next.i110 = add nuw nsw i64 %indvars.iv.i109, 1 ; 2 uses
  %i.nh = add nuw nsw i64 %indvars.iv.next.i110, %i.mg ; 2 uses
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.nh
  store double 0.000000e+00, ptr %i.ni, align 8, !tbaa !52
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.next.i110
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !57
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.nh
  store ptr %i.nk, ptr %i.nl, align 8, !tbaa !57
  %indvars.iv.next.i110.1 = add nuw nsw i64 %indvars.iv.i109, 2 ; 2 uses
  %exitcond.not.i111.1 = icmp eq i64 %indvars.iv.next.i110.1, %wide.trip.count.i107
  br i1 %exitcond.not.i111.1, label %.preheader.i112, label %.lr.ph.i108, !llvm.loop !213

.lr.ph43.i117:                                    ; preds = %._crit_edge.i124, %.lr.ph43.preheader.i113
  %indvars.iv53.i118 = phi i64 [ 0, %.lr.ph43.preheader.i113 ], [ %indvars.iv.next54.i125, %._crit_edge.i124 ] ; 3 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv53.i118
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !52
  %i.no = fsub double %i.nn, %i.mb
  %i.np = fdiv double %i.no, %i.md                ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %indvars.iv53.i118 ; 3 uses
  br i1 %i.nb, label %.epil.preheader486, label %.lr.ph43.i117.new

.lr.ph43.i117.new:                                ; preds = %.lr.ph43.i117, %.lr.ph43.i117.new
  %indvars.iv48.i119 = phi i64 [ %indvars.iv.next49.i122.1, %.lr.ph43.i117.new ], [ 0, %.lr.ph43.i117 ] ; 3 uses
  %.03841.i120 = phi double [ %i.nz, %.lr.ph43.i117.new ], [ 1.000000e+00, %.lr.ph43.i117 ] ; 2 uses
  %niter491 = phi i64 [ %niter491.next.1, %.lr.ph43.i117.new ], [ 0, %.lr.ph43.i117 ]
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !52
  %gep.i121 = getelementptr [8 x i8], ptr %invariant.gep.i116, i64 %indvars.iv48.i119 ; 2 uses
  %i.ns = load double, ptr %gep.i121, align 8, !tbaa !52
  %i.nt = tail call double @llvm.fmuladd.f64(double %i.nr, double %.03841.i120, double %i.ns)
  store double %i.nt, ptr %gep.i121, align 8, !tbaa !52
  %i.nu = fmul double %i.np, %.03841.i120         ; 2 uses
  %i.nv = load double, ptr %i.nq, align 8, !tbaa !52
  %i.nw = getelementptr [8 x i8], ptr %invariant.gep.i116, i64 %indvars.iv48.i119
  %gep.i121.1 = getelementptr i8, ptr %i.nw, i64 8 ; 2 uses
  %i.nx = load double, ptr %gep.i121.1, align 8, !tbaa !52
  %i.ny = tail call double @llvm.fmuladd.f64(double %i.nv, double %i.nu, double %i.nx)
  store double %i.ny, ptr %gep.i121.1, align 8, !tbaa !52
  %i.nz = fmul double %i.np, %i.nu                ; 2 uses
  %indvars.iv.next49.i122.1 = add nuw nsw i64 %indvars.iv48.i119, 2 ; 2 uses
  %niter491.next.1 = add i64 %niter491, 2         ; 2 uses
  %niter491.ncmp.1 = icmp eq i64 %niter491.next.1, %unroll_iter490
  br i1 %niter491.ncmp.1, label %._crit_edge.i124.unr-lcssa, label %.lr.ph43.i117.new

._crit_edge.i124.unr-lcssa:                       ; preds = %.lr.ph43.i117.new
  br i1 %lcmp.mod488.not, label %._crit_edge.i124, label %.epil.preheader486

.epil.preheader486:                               ; preds = %._crit_edge.i124.unr-lcssa, %.lr.ph43.i117
  %indvars.iv48.i119.epil.init = phi i64 [ 0, %.lr.ph43.i117 ], [ %indvars.iv.next49.i122.1, %._crit_edge.i124.unr-lcssa ]
  %.03841.i120.epil.init = phi double [ 1.000000e+00, %.lr.ph43.i117 ], [ %i.nz, %._crit_edge.i124.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod489)
  %i.oa = load double, ptr %i.nq, align 8, !tbaa !52
  %gep.i121.epil = getelementptr [8 x i8], ptr %invariant.gep.i116, i64 %indvars.iv48.i119.epil.init ; 2 uses
  %i.ob = load double, ptr %gep.i121.epil, align 8, !tbaa !52
  %i.oc = tail call double @llvm.fmuladd.f64(double %i.oa, double %.03841.i120.epil.init, double %i.ob)
  store double %i.oc, ptr %gep.i121.epil, align 8, !tbaa !52
  br label %._crit_edge.i124

end_hunk_2
