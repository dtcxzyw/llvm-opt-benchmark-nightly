Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_arkstep?download=true
inline.NumInlined: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@arkStep_Predict:bb.a
bb.m:                                             ; preds = %bb.l, %._crit_edge166
  %.0 = phi i32 [ 1, %bb.l ], [ 0, %._crit_edge166 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !73
  %.not143 = icmp eq i32 %i.cd, 0
  br i1 %.not143, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = zext nneg i32 %.0 to i64                ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ce
  store double 1.000000e+00, ptr %i.cf, align 8, !tbaa !58
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !101
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.bs
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !97
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ce
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !97
  %i.cl = add nuw nsw i32 %.0, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi i32 [ %i.cl, %bb.n ], [ %.0, %bb.m ]
  %i.cm = tail call i32 @arkPredict_Bootstrap(ptr noundef nonnull %0, double noundef %i.bv, double noundef %i.aa, i32 noundef %.1, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %2) #13 ; 2 uses
  %.not144 = icmp eq i32 %i.cm, -22
  br i1 %.not144, label %._crit_edge.thread, label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !73
  %.not139 = icmp ne i32 %i.co, 0
  %i.cp = icmp sgt i32 %1, 0                      ; 2 uses
  %or.cond168 = and i1 %.not139, %i.cp
  br i1 %or.cond168, label %.lr.ph, label %.loopexit152

.lr.ph:                                           ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !112
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.v
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !113 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !101 ; 6 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cy = shl nuw nsw i64 %wide.trip.count, 3     ; 4 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.cy ; 2 uses
  %scevgep204 = getelementptr i8, ptr %0, i64 744
  %scevgep205 = getelementptr i8, ptr %i.cv, i64 %i.cy
  %scevgep206 = getelementptr i8, ptr %i.m, i64 %i.cy
  %scevgep207 = getelementptr i8, ptr %i.cx, i64 %i.cy
  %bound0 = icmp ult ptr %i.k, %scevgep204
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0208 = icmp ult ptr %i.k, %scevgep205
  %bound1209 = icmp ult ptr %i.cv, %scevgep
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx = or i1 %found.conflict, %found.conflict210
  %bound0211 = icmp ult ptr %i.m, %scevgep207
  %bound1212 = icmp ult ptr %i.cx, %scevgep206
  %found.conflict213 = and i1 %bound0211, %bound1212
  %conflict.rdx214 = or i1 %conflict.rdx, %found.conflict213
  br i1 %conflict.rdx214, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.cz = load double, ptr %i.y, align 8, !tbaa !100, !alias.scope !268
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cz, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %index ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load = load <2 x double>, ptr %i.da, align 8, !tbaa !58, !alias.scope !269
  %wide.load215 = load <2 x double>, ptr %i.db, align 8, !tbaa !58, !alias.scope !269
  %i.dc = fmul <2 x double> %broadcast.splat, %wide.load
  %i.dd = fmul <2 x double> %broadcast.splat, %wide.load215
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <2 x double> %i.dc, ptr %i.de, align 8, !tbaa !58, !alias.scope !270, !noalias !271
  store <2 x double> %i.dd, ptr %i.df, align 8, !tbaa !58, !alias.scope !270, !noalias !271
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load216 = load <2 x ptr>, ptr %i.dg, align 8, !tbaa !97, !alias.scope !272
  %wide.load217 = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !97, !alias.scope !272
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <2 x ptr> %wide.load216, ptr %i.di, align 8, !tbaa !97, !alias.scope !273, !noalias !272
  store <2 x ptr> %wide.load217, ptr %i.dj, align 8, !tbaa !97, !alias.scope !273, !noalias !272
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !256

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit152, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dl = load double, ptr %i.y, align 8, !tbaa !100
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.ph
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !58
  %i.do = fmul double %i.dl, %i.dn
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.ph
  store double %i.do, ptr %i.dp, align 8, !tbaa !58
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.ph
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !97
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.ph
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !97
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.dt = add nsw i64 %wide.trip.count, -1
  %i.du = icmp eq i64 %indvars.iv.ph, %i.dt
  br i1 %i.du, label %.loopexit152, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dv = load double, ptr %i.y, align 8, !tbaa !100
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !58
  %i.dy = fmul double %i.dv, %i.dx
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double %i.dy, ptr %i.dz, align 8, !tbaa !58
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !97
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ed = load double, ptr %i.y, align 8, !tbaa !100
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !58
  %i.eg = fmul double %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  store double %i.eg, ptr %i.eh, align 8, !tbaa !58
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !97
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !97
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit152, label %scalar.ph, !llvm.loop !257

.loopexit152:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.p
  %.3 = phi i32 [ 0, %bb.p ], [ %1, %middle.block ], [ %1, %scalar.ph ], [ %1, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.em = load i32, ptr %i.el, align 8, !tbaa !36
  %.not140 = icmp ne i32 %i.em, 0
  %or.cond169 = and i1 %.not140, %i.cp
  br i1 %or.cond169, label %.lr.ph157, label %.loopexit

.lr.ph157:                                        ; preds = %.loopexit152
  %i.en = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !112
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.v
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !113 ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !96 ; 6 uses
  %i.et = zext nneg i32 %.3 to i64                ; 5 uses
  %wide.trip.count182 = zext nneg i32 %1 to i64   ; 6 uses
  %min.iters.check238 = icmp ult i32 %1, 14
  br i1 %min.iters.check238, label %scalar.ph237.preheader, label %vector.memcheck218

vector.memcheck218:                               ; preds = %.lr.ph157
  %i.eu = shl nuw nsw i64 %i.et, 3                ; 3 uses
  %scevgep219 = getelementptr i8, ptr %i.k, i64 %i.eu ; 2 uses
  %i.ev = shl nuw nsw i64 %wide.trip.count182, 3  ; 3 uses
  %i.ew = add nuw nsw i64 %i.ev, %i.eu            ; 2 uses
  %scevgep220 = getelementptr i8, ptr %i.k, i64 %i.ew ; 2 uses
  %scevgep221 = getelementptr i8, ptr %0, i64 744
  %scevgep222 = getelementptr i8, ptr %i.eq, i64 %i.ev
  %scevgep223 = getelementptr i8, ptr %i.m, i64 %i.eu
  %scevgep224 = getelementptr i8, ptr %i.m, i64 %i.ew
  %scevgep225 = getelementptr i8, ptr %i.es, i64 %i.ev
  %bound0226 = icmp ult ptr %scevgep219, %scevgep221
  %bound1227 = icmp ult ptr %i.y, %scevgep220
  %found.conflict228 = and i1 %bound0226, %bound1227
  %bound0229 = icmp ult ptr %scevgep219, %scevgep222
  %bound1230 = icmp ult ptr %i.eq, %scevgep220
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %found.conflict228, %found.conflict231
  %bound0233 = icmp ult ptr %scevgep223, %scevgep225
  %bound1234 = icmp ult ptr %i.es, %scevgep224
  %found.conflict235 = and i1 %bound0233, %bound1234
  %conflict.rdx236 = or i1 %conflict.rdx232, %found.conflict235
  br i1 %conflict.rdx236, label %scalar.ph237.preheader, label %vector.ph239

vector.ph239:                                     ; preds = %vector.memcheck218
  %n.vec240 = and i64 %wide.trip.count182, 2147483644 ; 4 uses
  %i.ex = add nuw nsw i64 %n.vec240, %i.et        ; 2 uses
  %i.ey = load double, ptr %i.y, align 8, !tbaa !100, !alias.scope !274
  %broadcast.splatinsert244 = insertelement <2 x double> poison, double %i.ey, i64 0
  %broadcast.splat245 = shufflevector <2 x double> %broadcast.splatinsert244, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph239
  %index242 = phi i64 [ 0, %vector.ph239 ], [ %index.next247, %vector.body241 ] ; 4 uses
  %i.ez = add nuw i64 %index242, %i.et            ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %index242 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load243 = load <2 x double>, ptr %i.fa, align 8, !tbaa !58, !alias.scope !275
  %wide.load243.a = load <2 x double>, ptr %3, align 8, !tbaa !58, !alias.scope !275
  %4 = fmul <2 x double> %broadcast.splat245, %wide.load243
  %i.fb = fmul <2 x double> %broadcast.splat245, %wide.load243.a
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ez ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <2 x double> %4, ptr %i.fc, align 8, !tbaa !58, !alias.scope !276, !noalias !277
  store <2 x double> %i.fb, ptr %5, align 8, !tbaa !58, !alias.scope !276, !noalias !277
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %index242 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load247 = load <2 x ptr>, ptr %i.fd, align 8, !tbaa !97, !alias.scope !278
  %wide.load246 = load <2 x ptr>, ptr %6, align 8, !tbaa !97, !alias.scope !278
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ez ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <2 x ptr> %wide.load247, ptr %i.fe, align 8, !tbaa !97, !alias.scope !279, !noalias !278
  store <2 x ptr> %wide.load246, ptr %7, align 8, !tbaa !97, !alias.scope !279, !noalias !278
  %index.next247 = add nuw i64 %index242, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next247, %n.vec240
  br i1 %i.ff, label %middle.block248, label %vector.body241, !llvm.loop !264

middle.block248:                                  ; preds = %vector.body241
  %cmp.n249 = icmp eq i64 %n.vec240, %wide.trip.count182
  br i1 %cmp.n249, label %.loopexit.loopexit, label %scalar.ph237.preheader

scalar.ph237.preheader:                           ; preds = %vector.memcheck218, %.lr.ph157, %middle.block248
  %indvars.iv177.ph = phi i64 [ 0, %vector.memcheck218 ], [ 0, %.lr.ph157 ], [ %n.vec240, %middle.block248 ] ; 5 uses
  %indvars.iv175.ph = phi i64 [ %i.et, %vector.memcheck218 ], [ %i.et, %.lr.ph157 ], [ %i.ex, %middle.block248 ] ; 4 uses
  %xtraiter271 = and i64 %wide.trip.count182, 1
  %lcmp.mod272.not = icmp eq i64 %xtraiter271, 0
  br i1 %lcmp.mod272.not, label %scalar.ph237.prol.loopexit, label %scalar.ph237.prol

scalar.ph237.prol:                                ; preds = %scalar.ph237.preheader
  %i.fg = load double, ptr %i.y, align 8, !tbaa !100
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv177.ph
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !58
  %i.fj = fmul double %i.fg, %i.fi
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv175.ph
  store double %i.fj, ptr %i.fk, align 8, !tbaa !58
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv177.ph
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !97
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv175.ph
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !97
  %indvars.iv.next176.prol = add nuw nsw i64 %indvars.iv175.ph, 1 ; 2 uses
  %indvars.iv.next178.prol = or disjoint i64 %indvars.iv177.ph, 1
  br label %scalar.ph237.prol.loopexit

scalar.ph237.prol.loopexit:                       ; preds = %scalar.ph237.prol, %scalar.ph237.preheader
  %indvars.iv.next176.lcssa270.unr = phi i64 [ poison, %scalar.ph237.preheader ], [ %indvars.iv.next176.prol, %scalar.ph237.prol ]
  %indvars.iv177.unr = phi i64 [ %indvars.iv177.ph, %scalar.ph237.preheader ], [ %indvars.iv.next178.prol, %scalar.ph237.prol ]
  %indvars.iv175.unr = phi i64 [ %indvars.iv175.ph, %scalar.ph237.preheader ], [ %indvars.iv.next176.prol, %scalar.ph237.prol ]
  %i.fo = add nsw i64 %wide.trip.count182, -1
  %i.fp = icmp eq i64 %indvars.iv177.ph, %i.fo
  br i1 %i.fp, label %.loopexit.loopexit, label %scalar.ph237

scalar.ph237:                                     ; preds = %scalar.ph237.prol.loopexit, %scalar.ph237
  %indvars.iv177 = phi i64 [ %indvars.iv.next178.1, %scalar.ph237 ], [ %indvars.iv177.unr, %scalar.ph237.prol.loopexit ] ; 4 uses
  %indvars.iv175 = phi i64 [ %indvars.iv.next176.1, %scalar.ph237 ], [ %indvars.iv175.unr, %scalar.ph237.prol.loopexit ] ; 4 uses
  %i.fq = load double, ptr %i.y, align 8, !tbaa !100
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv177
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !58
  %i.ft = fmul double %i.fq, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv175
  store double %i.ft, ptr %i.fu, align 8, !tbaa !58
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv177
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !97
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv175
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !97
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.fy = load double, ptr %i.y, align 8, !tbaa !100
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next178
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !58
  %i.gb = fmul double %i.fy, %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next176
  store double %i.gb, ptr %i.gc, align 8, !tbaa !58
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next178
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !97
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next176
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !97
  %indvars.iv.next176.1 = add nuw nsw i64 %indvars.iv175, 2 ; 2 uses
  %indvars.iv.next178.1 = add nuw nsw i64 %indvars.iv177, 2 ; 2 uses
  %exitcond183.not.1 = icmp eq i64 %indvars.iv.next178.1, %wide.trip.count182
  br i1 %exitcond183.not.1, label %.loopexit.loopexit, label %scalar.ph237, !llvm.loop !265

.loopexit.loopexit:                               ; preds = %scalar.ph237.prol.loopexit, %scalar.ph237, %middle.block248
  %indvars.iv.next176.lcssa = phi i64 [ %i.ex, %middle.block248 ], [ %indvars.iv.next176.lcssa270.unr, %scalar.ph237.prol.loopexit ], [ %indvars.iv.next176.1, %scalar.ph237 ]
  %i.gg = trunc nuw i64 %indvars.iv.next176.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit152
  %.5 = phi i32 [ %.3, %.loopexit152 ], [ %i.gg, %.loopexit.loopexit ] ; 2 uses
  %i.gh = sext i32 %.5 to i64                     ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.gh
  store double 1.000000e+00, ptr %i.gi, align 8, !tbaa !58
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !114
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.gh
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !97
  %i.gm = add nsw i32 %.5, 1
  %i.gn = tail call i32 @N_VLinearCombination(i32 noundef %i.gm, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %2) #13
  %.not141 = icmp eq i32 %i.gn, 0
  %. = select i1 %.not141, i32 0, i32 -28
  br label %bb.q

._crit_edge.thread:                               ; preds = %.preheader149, %bb.o, %._crit_edge, %bb.k, %bb.j, %bb.i, %bb.h
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !114
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.gp, ptr noundef %2) #13
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %bb.o, %bb.k, %bb.j, %bb.i, %._crit_edge.thread, %bb.g, %bb.e, %bb.b
  %.0130 = phi i32 [ -21, %bb.b ], [ -21, %bb.e ], [ 0, %bb.g ], [ 0, %._crit_edge.thread ], [ %i.cm, %bb.o ], [ %i.aq, %bb.i ], [ %i.ar, %bb.j ], [ %i.as, %bb.k ], [ %., %.loopexit ]
  ret i32 %.0130
}

; Function Attrs: nounwind uwtable
define range(i32 -28, 1) i32 @arkStep_StageSetup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 30 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3113, ptr noundef nonnull @__func__.arkStep_StageSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !111  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 440 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79   ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81   ; 14 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.critedge108, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.k = load double, ptr %i.j, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !112
  %i.p = sext i32 %i.e to i64                     ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !113
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.p
  %i.t = load double, ptr %i.s, align 8, !tbaa !58
  %i.u = fmul double %i.k, %i.t                   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store double %i.u, ptr %i.v, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.x = load i32, ptr %i.w, align 4, !tbaa !306
  %.not97 = icmp eq i32 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  br i1 %.not97, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store double %i.u, ptr %i.y, align 8, !tbaa !129
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = load double, ptr %i.y, align 8, !tbaa !129
  %i.aa = fdiv double %i.u, %i.z
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = phi double [ %i.aa, %bb.f ], [ 1.000000e+00, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store double %i.ab, ptr %i.ac, align 8, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !120
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !110
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ae, double noundef -1.000000e+00, ptr noundef %i.ag, ptr noundef %i.ai) #13
  store double 1.000000e+00, ptr %i.g, align 8, !tbaa !58
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !110 ; 2 uses
  store ptr %i.aj, ptr %i.i, align 8, !tbaa !97
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !56
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.h, label %.critedge108

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !89
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.aj, ptr noundef %i.ao) #13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !53
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !89
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !110
  %i.at = tail call i32 %i.aq(ptr noundef nonnull %0, ptr noundef %i.ar, ptr noundef %i.as) #13
  %.not99 = icmp eq i32 %i.at, 0
  br i1 %.not99, label %.critedge108, label %bb.l

.critedge108:                                     ; preds = %bb.c, %bb.h, %bb.g
  %.0114118 = phi i32 [ 1, %bb.g ], [ 1, %bb.h ], [ 0, %bb.c ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !73
  %.not100 = icmp ne i32 %i.av, 0
  %i.aw = icmp sgt i32 %i.e, 0                    ; 2 uses
  %or.cond = select i1 %.not100, i1 %i.aw, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit120

.lr.ph:                                           ; preds = %.critedge108
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !112
  %i.bc = zext nneg i32 %i.e to i64               ; 7 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !113 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !101 ; 6 uses
  %i.bh = zext nneg i32 %.0114118 to i64          ; 5 uses
  %min.iters.check = icmp ult i32 %i.e, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bi = shl nuw nsw i64 %i.bh, 3                ; 3 uses
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.bi ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bc, 3                ; 3 uses
  %i.bk = add nuw nsw i64 %i.bj, %i.bi            ; 2 uses
  %scevgep155 = getelementptr i8, ptr %i.g, i64 %i.bk ; 2 uses
  %scevgep156 = getelementptr i8, ptr %0, i64 744
  %scevgep157 = getelementptr i8, ptr %i.be, i64 %i.bj
  %scevgep158 = getelementptr i8, ptr %i.i, i64 %i.bi
  %scevgep159 = getelementptr i8, ptr %i.i, i64 %i.bk
  %scevgep160 = getelementptr i8, ptr %i.bg, i64 %i.bj
  %bound0 = icmp ult ptr %scevgep, %scevgep156
  %bound1 = icmp ult ptr %i.ax, %scevgep155
  %found.conflict = and i1 %bound0, %bound1
  %bound0161 = icmp ult ptr %scevgep, %scevgep157
  %bound1162 = icmp ult ptr %i.be, %scevgep155
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx = or i1 %found.conflict, %found.conflict163
  %bound0164 = icmp ult ptr %scevgep158, %scevgep160
  %bound1165 = icmp ult ptr %i.bg, %scevgep159
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx, %found.conflict166
  br i1 %conflict.rdx167, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 2147483644              ; 4 uses
  %i.bl = or disjoint i64 %n.vec, %i.bh           ; 2 uses
  %i.bm = load double, ptr %i.ax, align 8, !tbaa !100, !alias.scope !307
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bn = or disjoint i64 %index, %i.bh           ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <2 x double>, ptr %i.bo, align 8, !tbaa !58, !alias.scope !308
  %wide.load.a = load <2 x double>, ptr %2, align 8, !tbaa !58, !alias.scope !308
  %3 = fmul <2 x double> %broadcast.splat, %wide.load
  %i.bp = fmul <2 x double> %broadcast.splat, %wide.load.a
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bn ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <2 x double> %3, ptr %i.bq, align 8, !tbaa !58, !alias.scope !309, !noalias !310
  store <2 x double> %i.bp, ptr %4, align 8, !tbaa !58, !alias.scope !309, !noalias !310
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load169 = load <2 x ptr>, ptr %i.br, align 8, !tbaa !97, !alias.scope !311
  %wide.load168 = load <2 x ptr>, ptr %5, align 8, !tbaa !97, !alias.scope !311
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bn ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <2 x ptr> %wide.load169, ptr %i.bs, align 8, !tbaa !97, !alias.scope !312, !noalias !311
  store <2 x ptr> %wide.load168, ptr %6, align 8, !tbaa !97, !alias.scope !312, !noalias !311
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !286

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bc
  br i1 %cmp.n, label %.loopexit120.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv131.ph = phi i64 [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph ], [ %i.bl, %middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %i.bc, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bu = load double, ptr %i.ax, align 8, !tbaa !100
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.ph
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !58
  %i.bx = fmul double %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv131.ph
  store double %i.bx, ptr %i.by, align 8, !tbaa !58
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.ph
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !97
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv131.ph
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !97
  %indvars.iv.next132.prol = add nuw nsw i64 %indvars.iv131.ph, 1 ; 2 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next132.lcssa269.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next132.prol, %scalar.ph.prol ]
  %indvars.iv131.unr = phi i64 [ %indvars.iv131.ph, %scalar.ph.preheader ], [ %indvars.iv.next132.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cc = add nsw i64 %i.bc, -1
  %i.cd = icmp eq i64 %indvars.iv.ph, %i.cc
  br i1 %i.cd, label %.loopexit120.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv131 = phi i64 [ %indvars.iv.next132.1, %scalar.ph ], [ %indvars.iv131.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ce = load double, ptr %i.ax, align 8, !tbaa !100
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !58
  %i.ch = fmul double %i.ce, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv131
  store double %i.ch, ptr %i.ci, align 8, !tbaa !58
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !97
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv131
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !97
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load double, ptr %i.ax, align 8, !tbaa !100
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next
  %i.co = load double, ptr %i.cn, align 8, !tbaa !58
  %i.cp = fmul double %i.cm, %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next132
  store double %i.cp, ptr %i.cq, align 8, !tbaa !58
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !97
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next132
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !97
  %indvars.iv.next132.1 = add nuw nsw i64 %indvars.iv131, 2 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.bc
  br i1 %exitcond.not.1, label %.loopexit120.loopexit, label %scalar.ph, !llvm.loop !287

.loopexit120.loopexit:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next132.lcssa = phi i64 [ %i.bl, %middle.block ], [ %indvars.iv.next132.lcssa269.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next132.1, %scalar.ph ]
  %i.cu = trunc nuw i64 %indvars.iv.next132.lcssa to i32
  br label %.loopexit120

.loopexit120:                                     ; preds = %.loopexit120.loopexit, %.critedge108
  %.3 = phi i32 [ %.0114118, %.critedge108 ], [ %i.cu, %.loopexit120.loopexit ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !36
  %.not101 = icmp ne i32 %i.cw, 0
  %or.cond129 = select i1 %.not101, i1 %i.aw, i1 false
  br i1 %or.cond129, label %.lr.ph125, label %.loopexit

.lr.ph125:                                        ; preds = %.loopexit120
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !63
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !112
  %i.dc = zext nneg i32 %i.e to i64               ; 7 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !113 ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !96 ; 6 uses
  %i.dh = sext i32 %.3 to i64                     ; 5 uses
  %min.iters.check190 = icmp ult i32 %i.e, 14
  br i1 %min.iters.check190, label %scalar.ph189.preheader, label %vector.memcheck170

vector.memcheck170:                               ; preds = %.lr.ph125
  %i.di = shl nsw i64 %i.dh, 3                    ; 3 uses
  %scevgep171 = getelementptr i8, ptr %i.g, i64 %i.di ; 2 uses
  %i.dj = shl nuw nsw i64 %i.dc, 3                ; 3 uses
  %i.dk = add nsw i64 %i.di, %i.dj                ; 2 uses
  %scevgep172 = getelementptr i8, ptr %i.g, i64 %i.dk ; 2 uses
  %scevgep173 = getelementptr i8, ptr %0, i64 744
  %scevgep174 = getelementptr i8, ptr %i.de, i64 %i.dj
  %scevgep175 = getelementptr i8, ptr %i.i, i64 %i.di
  %scevgep176 = getelementptr i8, ptr %i.i, i64 %i.dk
  %scevgep177 = getelementptr i8, ptr %i.dg, i64 %i.dj
  %bound0178 = icmp ult ptr %scevgep171, %scevgep173
  %bound1179 = icmp ult ptr %i.cx, %scevgep172
  %found.conflict180 = and i1 %bound0178, %bound1179
  %bound0181 = icmp ult ptr %scevgep171, %scevgep174
  %bound1182 = icmp ult ptr %i.de, %scevgep172
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %found.conflict180, %found.conflict183
  %bound0185 = icmp ult ptr %scevgep175, %scevgep177
  %bound1186 = icmp ult ptr %i.dg, %scevgep176
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict187
  br i1 %conflict.rdx188, label %scalar.ph189.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %vector.memcheck170
  %n.vec192 = and i64 %i.dc, 2147483644           ; 4 uses
  %i.dl = add nsw i64 %n.vec192, %i.dh            ; 2 uses
  %i.dm = load double, ptr %i.cx, align 8, !tbaa !100, !alias.scope !313
  %broadcast.splatinsert196 = insertelement <2 x double> poison, double %i.dm, i64 0
  %broadcast.splat197 = shufflevector <2 x double> %broadcast.splatinsert196, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next199, %vector.body193 ] ; 4 uses
  %i.dn = add nuw i64 %index194, %i.dh            ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %index194 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load197 = load <2 x double>, ptr %i.do, align 8, !tbaa !58, !alias.scope !314
  %wide.load195 = load <2 x double>, ptr %7, align 8, !tbaa !58, !alias.scope !314
  %8 = fmul <2 x double> %broadcast.splat197, %wide.load197
  %i.dp = fmul <2 x double> %broadcast.splat197, %wide.load195
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.dn ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <2 x double> %8, ptr %i.dq, align 8, !tbaa !58, !alias.scope !315, !noalias !316
  store <2 x double> %i.dp, ptr %9, align 8, !tbaa !58, !alias.scope !315, !noalias !316
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %index194 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load201 = load <2 x ptr>, ptr %i.dr, align 8, !tbaa !97, !alias.scope !317
  %wide.load198 = load <2 x ptr>, ptr %10, align 8, !tbaa !97, !alias.scope !317
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.dn ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <2 x ptr> %wide.load201, ptr %i.ds, align 8, !tbaa !97, !alias.scope !318, !noalias !317
  store <2 x ptr> %wide.load198, ptr %11, align 8, !tbaa !97, !alias.scope !318, !noalias !317
  %index.next199 = add nuw i64 %index194, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next199, %n.vec192
  br i1 %i.dt, label %middle.block200, label %vector.body193, !llvm.loop !294

middle.block200:                                  ; preds = %vector.body193
  %cmp.n201 = icmp eq i64 %n.vec192, %i.dc
  br i1 %cmp.n201, label %.loopexit.loopexit, label %scalar.ph189.preheader

scalar.ph189.preheader:                           ; preds = %vector.memcheck170, %.lr.ph125, %middle.block200
  %indvars.iv138.ph = phi i64 [ %i.dh, %vector.memcheck170 ], [ %i.dh, %.lr.ph125 ], [ %i.dl, %middle.block200 ] ; 4 uses
  %indvars.iv136.ph = phi i64 [ 0, %vector.memcheck170 ], [ 0, %.lr.ph125 ], [ %n.vec192, %middle.block200 ] ; 5 uses
  %xtraiter270 = and i64 %i.dc, 1
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  br i1 %lcmp.mod271.not, label %scalar.ph189.prol.loopexit, label %scalar.ph189.prol

scalar.ph189.prol:                                ; preds = %scalar.ph189.preheader
  %i.du = load double, ptr %i.cx, align 8, !tbaa !100
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv136.ph
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !58
  %i.dx = fmul double %i.du, %i.dw
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv138.ph
  store double %i.dx, ptr %i.dy, align 8, !tbaa !58
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv136.ph
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !97
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv138.ph
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !97
  %indvars.iv.next139.prol = add nuw nsw i64 %indvars.iv138.ph, 1 ; 2 uses
  %indvars.iv.next137.prol = or disjoint i64 %indvars.iv136.ph, 1
  br label %scalar.ph189.prol.loopexit

scalar.ph189.prol.loopexit:                       ; preds = %scalar.ph189.prol, %scalar.ph189.preheader
  %indvars.iv.next139.lcssa268.unr = phi i64 [ poison, %scalar.ph189.preheader ], [ %indvars.iv.next139.prol, %scalar.ph189.prol ]
  %indvars.iv138.unr = phi i64 [ %indvars.iv138.ph, %scalar.ph189.preheader ], [ %indvars.iv.next139.prol, %scalar.ph189.prol ]
  %indvars.iv136.unr = phi i64 [ %indvars.iv136.ph, %scalar.ph189.preheader ], [ %indvars.iv.next137.prol, %scalar.ph189.prol ]
  %i.ec = add nsw i64 %i.dc, -1
  %i.ed = icmp eq i64 %indvars.iv136.ph, %i.ec
  br i1 %i.ed, label %.loopexit.loopexit, label %scalar.ph189

scalar.ph189:                                     ; preds = %scalar.ph189.prol.loopexit, %scalar.ph189
  %indvars.iv138 = phi i64 [ %indvars.iv.next139.1, %scalar.ph189 ], [ %indvars.iv138.unr, %scalar.ph189.prol.loopexit ] ; 4 uses
  %indvars.iv136 = phi i64 [ %indvars.iv.next137.1, %scalar.ph189 ], [ %indvars.iv136.unr, %scalar.ph189.prol.loopexit ] ; 4 uses
  %i.ee = load double, ptr %i.cx, align 8, !tbaa !100
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv136
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !58
  %i.eh = fmul double %i.ee, %i.eg
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv138
  store double %i.eh, ptr %i.ei, align 8, !tbaa !58
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv136
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !97
  %i.el = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv138
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !97
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %i.em = load double, ptr %i.cx, align 8, !tbaa !100
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.next137
  %i.eo = load double, ptr %i.en, align 8, !tbaa !58
  %i.ep = fmul double %i.em, %i.eo
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv.next139
  store double %i.ep, ptr %i.eq, align 8, !tbaa !58
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv.next137
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !97
  %i.et = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next139
  store ptr %i.es, ptr %i.et, align 8, !tbaa !97
  %indvars.iv.next139.1 = add nuw nsw i64 %indvars.iv138, 2 ; 2 uses
  %indvars.iv.next137.1 = add nuw nsw i64 %indvars.iv136, 2 ; 2 uses
  %exitcond144.not.1 = icmp eq i64 %indvars.iv.next137.1, %i.dc
  br i1 %exitcond144.not.1, label %.loopexit.loopexit, label %scalar.ph189, !llvm.loop !295

.loopexit.loopexit:                               ; preds = %scalar.ph189.prol.loopexit, %scalar.ph189, %middle.block200
  %indvars.iv.next139.lcssa = phi i64 [ %i.dl, %middle.block200 ], [ %indvars.iv.next139.lcssa268.unr, %scalar.ph189.prol.loopexit ], [ %indvars.iv.next139.1, %scalar.ph189 ]
  %i.eu = trunc nsw i64 %indvars.iv.next139.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit120
  %.5 = phi i32 [ %.3, %.loopexit120 ], [ %i.eu, %.loopexit.loopexit ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 460
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !103
  %.not102 = icmp eq i32 %i.ew, 0                 ; 2 uses
  br i1 %.not102, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !104
  %.not103 = icmp eq i32 %i.ey, 0
  br i1 %.not103, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %.pn.in.v = phi i64 [ 120, %bb.i ], [ 112, %.loopexit ]
  %i.ez = zext i1 %.not102 to i32
  %.091 = add nsw i32 %i.e, %i.ez                 ; 4 uses
  %.pn.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pn.in.v
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !139 ; 2 uses
  %.090.in = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %.090 = load ptr, ptr %.090.in, align 8, !tbaa !119 ; 7 uses
  %i.fa = icmp sgt i32 %.091, 0                   ; 2 uses
  br i1 %i.fa, label %.lr.ph128, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !83
  %.phi.trans.insert150 = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.pre151 = load ptr, ptr %.phi.trans.insert150, align 8, !tbaa !84
  br label %._crit_edge

.lr.ph128:                                        ; preds = %bb.j
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !112
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 9 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !83 ; 12 uses
  %i.ff = sext i32 %i.e to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %.0, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !113 ; 7 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !84 ; 12 uses
  %wide.trip.count148 = zext nneg i32 %.091 to i64 ; 6 uses
  %min.iters.check238 = icmp ult i32 %.091, 20
  br i1 %min.iters.check238, label %scalar.ph237.preheader, label %vector.memcheck204

vector.memcheck204:                               ; preds = %.lr.ph128
  %i.fk = shl nuw nsw i64 %wide.trip.count148, 3  ; 4 uses
  %scevgep205 = getelementptr i8, ptr %i.fe, i64 %i.fk ; 4 uses
  %scevgep206 = getelementptr i8, ptr %i.fj, i64 %i.fk ; 4 uses
  %scevgep207 = getelementptr i8, ptr %0, i64 928 ; 2 uses
  %scevgep208 = getelementptr i8, ptr %.090, i64 %i.fk ; 2 uses
  %scevgep209 = getelementptr i8, ptr %i.fh, i64 %i.fk ; 2 uses
  %bound0210 = icmp ult ptr %i.fe, %scevgep206
  %bound1211 = icmp ult ptr %i.fj, %scevgep205
  %found.conflict212 = and i1 %bound0210, %bound1211
  %bound0213 = icmp ult ptr %i.fe, %scevgep207
  %bound1214 = icmp ult ptr %i.fc, %scevgep205
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx216 = or i1 %found.conflict212, %found.conflict215
  %bound0217 = icmp ult ptr %i.fe, %scevgep208
  %bound1218 = icmp ult ptr %.090, %scevgep205
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %conflict.rdx216, %found.conflict219
  %bound0221 = icmp ult ptr %i.fe, %scevgep209
  %bound1222 = icmp ult ptr %i.fh, %scevgep205
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx224 = or i1 %conflict.rdx220, %found.conflict223
  %bound0225 = icmp ult ptr %i.fj, %scevgep207
  %bound1226 = icmp ult ptr %i.fc, %scevgep206
  %found.conflict227 = and i1 %bound0225, %bound1226
  %conflict.rdx228 = or i1 %conflict.rdx224, %found.conflict227
  %bound0229 = icmp ult ptr %i.fj, %scevgep208
  %bound1230 = icmp ult ptr %.090, %scevgep206
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %conflict.rdx228, %found.conflict231
  %bound0233 = icmp ult ptr %i.fj, %scevgep209
  %bound1234 = icmp ult ptr %i.fh, %scevgep206
  %found.conflict235 = and i1 %bound0233, %bound1234
  %conflict.rdx236 = or i1 %conflict.rdx232, %found.conflict235
  br i1 %conflict.rdx236, label %scalar.ph237.preheader, label %vector.ph239

vector.ph239:                                     ; preds = %vector.memcheck204
  %n.vec240 = and i64 %wide.trip.count148, 2147483646 ; 3 uses
  %i.fl = load double, ptr %i.fb, align 8, !tbaa !117, !alias.scope !319
  %broadcast.splatinsert246 = insertelement <2 x double> poison, double %i.fl, i64 0
  %broadcast.splat247 = shufflevector <2 x double> %broadcast.splatinsert246, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = load double, ptr %i.fc, align 8, !tbaa !100, !alias.scope !319 ; 2 uses
  %broadcast.splatinsert244 = insertelement <2 x double> poison, double %i.fm, i64 0
  %broadcast.splat245 = shufflevector <2 x double> %broadcast.splatinsert244, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert249 = insertelement <2 x double> poison, double %i.fm, i64 0
  %broadcast.splat250 = shufflevector <2 x double> %broadcast.splatinsert249, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph239
  %index242 = phi i64 [ 0, %vector.ph239 ], [ %index.next251, %vector.body241 ] ; 5 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.090, i64 %index242
  %wide.load243 = load <2 x double>, ptr %i.fn, align 8, !tbaa !58, !alias.scope !320
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load243, <2 x double> %broadcast.splat245, <2 x double> %broadcast.splat247)
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %index242
  store <2 x double> %i.fo, ptr %i.fp, align 8, !tbaa !58, !alias.scope !321, !noalias !322
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %index242
  %wide.load248 = load <2 x double>, ptr %i.fq, align 8, !tbaa !58, !alias.scope !323
  %i.fr = fmul <2 x double> %broadcast.splat250, %wide.load248
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %index242
  store <2 x double> %i.fr, ptr %i.fs, align 8, !tbaa !58, !alias.scope !324, !noalias !325
  %index.next251 = add nuw i64 %index242, 2       ; 2 uses
  %i.ft = icmp eq i64 %index.next251, %n.vec240
  br i1 %i.ft, label %middle.block252, label %vector.body241, !llvm.loop !302

middle.block252:                                  ; preds = %vector.body241
  %cmp.n253 = icmp eq i64 %n.vec240, %wide.trip.count148
  br i1 %cmp.n253, label %._crit_edge, label %scalar.ph237.preheader

scalar.ph237.preheader:                           ; preds = %vector.memcheck204, %.lr.ph128, %middle.block252
  %indvars.iv145.ph = phi i64 [ 0, %vector.memcheck204 ], [ 0, %.lr.ph128 ], [ %n.vec240, %middle.block252 ] ; 7 uses
  %xtraiter272 = and i64 %wide.trip.count148, 1
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %scalar.ph237.prol.loopexit, label %scalar.ph237.prol

scalar.ph237.prol:                                ; preds = %scalar.ph237.preheader
  %i.fu = load double, ptr %i.fb, align 8, !tbaa !117
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.090, i64 %indvars.iv145.ph
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !58
  %i.fx = load double, ptr %i.fc, align 8, !tbaa !100
  %i.fy = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.fx, double %i.fu)
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv145.ph
end_hunk_0
begin_hunk_1_@arkStep_ComputeSolutions_MassFixed:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x double> %i.al, ptr %i.an, align 8, !tbaa !58, !alias.scope !384, !noalias !385
  store <2 x double> %i.am, ptr %i.ao, align 8, !tbaa !58, !alias.scope !384, !noalias !385
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index293 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load298 = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !97, !alias.scope !386
  %wide.load299 = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !97, !alias.scope !386
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index293 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x ptr> %wide.load298, ptr %i.ar, align 8, !tbaa !97, !alias.scope !387, !noalias !386
  store <2 x ptr> %wide.load299, ptr %i.as, align 8, !tbaa !97, !alias.scope !387, !noalias !386
  %index.next300 = add nuw i64 %index293, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next300, %n.vec291
  br i1 %i.at, label %middle.block301, label %vector.body292, !llvm.loop !332

middle.block301:                                  ; preds = %vector.body292
  %cmp.n302 = icmp eq i64 %n.vec291, %wide.trip.count174
  br i1 %cmp.n302, label %._crit_edge, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %vector.memcheck271, %.lr.ph.split.us.split, %middle.block301
  %indvars.iv169.ph = phi i64 [ 0, %vector.memcheck271 ], [ 0, %.lr.ph.split.us.split ], [ %n.vec291, %middle.block301 ] ; 7 uses
  %xtraiter444 = and i64 %wide.trip.count174, 1
  %lcmp.mod445.not = icmp eq i64 %xtraiter444, 0
  br i1 %lcmp.mod445.not, label %scalar.ph288.prol.loopexit, label %scalar.ph288.prol

scalar.ph288.prol:                                ; preds = %scalar.ph288.preheader
  %i.au = load double, ptr %i.z, align 8, !tbaa !100
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv169.ph
  %i.aw = load double, ptr %i.av, align 8, !tbaa !58
  %i.ax = fmul double %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv169.ph
  store double %i.ax, ptr %i.ay, align 8, !tbaa !58
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv169.ph
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !97
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv169.ph
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !97
  %indvars.iv.next170.prol = or disjoint i64 %indvars.iv169.ph, 1
  br label %scalar.ph288.prol.loopexit

scalar.ph288.prol.loopexit:                       ; preds = %scalar.ph288.prol, %scalar.ph288.preheader
  %indvars.iv169.unr = phi i64 [ %indvars.iv169.ph, %scalar.ph288.preheader ], [ %indvars.iv.next170.prol, %scalar.ph288.prol ]
  %i.bc = add nsw i64 %wide.trip.count174, -1
  %i.bd = icmp eq i64 %indvars.iv169.ph, %i.bc
  br i1 %i.bd, label %._crit_edge, label %scalar.ph288

scalar.ph288:                                     ; preds = %scalar.ph288.prol.loopexit, %scalar.ph288
  %indvars.iv169 = phi i64 [ %indvars.iv.next170.1, %scalar.ph288 ], [ %indvars.iv169.unr, %scalar.ph288.prol.loopexit ] ; 6 uses
  %i.be = load double, ptr %i.z, align 8, !tbaa !100
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv169
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !58
  %i.bh = fmul double %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv169
  store double %i.bh, ptr %i.bi, align 8, !tbaa !58
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv169
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !97
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv169
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !97
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 4 uses
  %i.bm = load double, ptr %i.z, align 8, !tbaa !100
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next170
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !58
  %i.bp = fmul double %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next170
  store double %i.bp, ptr %i.bq, align 8, !tbaa !58
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next170
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !97
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next170
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !97
  %indvars.iv.next170.1 = add nuw nsw i64 %indvars.iv169, 2 ; 2 uses
  %exitcond175.not.1 = icmp eq i64 %indvars.iv.next170.1, %wide.trip.count174
  br i1 %exitcond175.not.1, label %._crit_edge, label %scalar.ph288, !llvm.loop !333

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !133 ; 10 uses
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !101 ; 10 uses
  br i1 %.not118, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %wide.trip.count167 = zext nneg i32 %i.w to i64 ; 6 uses
  %min.iters.check256 = icmp ult i32 %i.w, 14
  br i1 %min.iters.check256, label %.lr.ph.split.split.us.preheader441, label %vector.memcheck238

vector.memcheck238:                               ; preds = %.lr.ph.split.split.us.preheader
  %i.ca = shl nuw nsw i64 %wide.trip.count167, 3  ; 4 uses
  %scevgep239 = getelementptr i8, ptr %i.i, i64 %i.ca ; 2 uses
  %scevgep240 = getelementptr i8, ptr %0, i64 744
  %scevgep241 = getelementptr i8, ptr %i.by, i64 %i.ca
  %scevgep242 = getelementptr i8, ptr %i.k, i64 %i.ca
  %scevgep243 = getelementptr i8, ptr %i.bz, i64 %i.ca
  %bound0244 = icmp ult ptr %i.i, %scevgep240
  %bound1245 = icmp ult ptr %i.z, %scevgep239
  %found.conflict246 = and i1 %bound0244, %bound1245
  %bound0247 = icmp ult ptr %i.i, %scevgep241
  %bound1248 = icmp ult ptr %i.by, %scevgep239
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx250 = or i1 %found.conflict246, %found.conflict249
  %bound0251 = icmp ult ptr %i.k, %scevgep243
  %bound1252 = icmp ult ptr %i.bz, %scevgep242
  %found.conflict253 = and i1 %bound0251, %bound1252
  %conflict.rdx254 = or i1 %conflict.rdx250, %found.conflict253
  br i1 %conflict.rdx254, label %.lr.ph.split.split.us.preheader441, label %vector.ph257

vector.ph257:                                     ; preds = %vector.memcheck238
  %n.vec258 = and i64 %wide.trip.count167, 2147483644 ; 3 uses
  %i.cb = load double, ptr %i.z, align 8, !tbaa !100, !alias.scope !388
  %broadcast.splatinsert263 = insertelement <2 x double> poison, double %i.cb, i64 0
  %broadcast.splat264 = shufflevector <2 x double> %broadcast.splatinsert263, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next267, %vector.body259 ] ; 5 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index260 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load261 = load <2 x double>, ptr %i.cc, align 8, !tbaa !58, !alias.scope !389
  %wide.load262 = load <2 x double>, ptr %i.cd, align 8, !tbaa !58, !alias.scope !389
  %i.ce = fmul <2 x double> %broadcast.splat264, %wide.load261
  %i.cf = fmul <2 x double> %broadcast.splat264, %wide.load262
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index260 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x double> %i.ce, ptr %i.cg, align 8, !tbaa !58, !alias.scope !390, !noalias !391
  store <2 x double> %i.cf, ptr %i.ch, align 8, !tbaa !58, !alias.scope !390, !noalias !391
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index260 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load265 = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !97, !alias.scope !392
  %wide.load266 = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !97, !alias.scope !392
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index260 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x ptr> %wide.load265, ptr %i.ck, align 8, !tbaa !97, !alias.scope !393, !noalias !392
  store <2 x ptr> %wide.load266, ptr %i.cl, align 8, !tbaa !97, !alias.scope !393, !noalias !392
  %index.next267 = add nuw i64 %index260, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next267, %n.vec258
  br i1 %i.cm, label %middle.block268, label %vector.body259, !llvm.loop !340

middle.block268:                                  ; preds = %vector.body259
  %cmp.n269 = icmp eq i64 %n.vec258, %wide.trip.count167
  br i1 %cmp.n269, label %._crit_edge, label %.lr.ph.split.split.us.preheader441

.lr.ph.split.split.us.preheader441:               ; preds = %vector.memcheck238, %.lr.ph.split.split.us.preheader, %middle.block268
  %indvars.iv162.ph = phi i64 [ 0, %vector.memcheck238 ], [ 0, %.lr.ph.split.split.us.preheader ], [ %n.vec258, %middle.block268 ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count167, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.prol.loopexit, label %.lr.ph.split.split.us.prol

.lr.ph.split.split.us.prol:                       ; preds = %.lr.ph.split.split.us.preheader441
  %i.cn = load double, ptr %i.z, align 8, !tbaa !100
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv162.ph
  %i.cp = load double, ptr %i.co, align 8, !tbaa !58
  %i.cq = fmul double %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv162.ph
  store double %i.cq, ptr %i.cr, align 8, !tbaa !58
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv162.ph
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !97
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv162.ph
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !97
  %indvars.iv.next163.prol = or disjoint i64 %indvars.iv162.ph, 1
  br label %.lr.ph.split.split.us.prol.loopexit

.lr.ph.split.split.us.prol.loopexit:              ; preds = %.lr.ph.split.split.us.prol, %.lr.ph.split.split.us.preheader441
  %indvars.iv162.unr = phi i64 [ %indvars.iv162.ph, %.lr.ph.split.split.us.preheader441 ], [ %indvars.iv.next163.prol, %.lr.ph.split.split.us.prol ]
  %i.cv = add nsw i64 %wide.trip.count167, -1
  %i.cw = icmp eq i64 %indvars.iv162.ph, %i.cv
  br i1 %i.cw, label %._crit_edge, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.prol.loopexit, %.lr.ph.split.split.us
  %indvars.iv162 = phi i64 [ %indvars.iv.next163.1, %.lr.ph.split.split.us ], [ %indvars.iv162.unr, %.lr.ph.split.split.us.prol.loopexit ] ; 6 uses
  %i.cx = load double, ptr %i.z, align 8, !tbaa !100
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv162
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !58
  %i.da = fmul double %i.cx, %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv162
  store double %i.da, ptr %i.db, align 8, !tbaa !58
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv162
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !97
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv162
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !97
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 4 uses
  %i.df = load double, ptr %i.z, align 8, !tbaa !100
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next163
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !58
  %i.di = fmul double %i.df, %i.dh
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next163
  store double %i.di, ptr %i.dj, align 8, !tbaa !58
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next163
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !97
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next163
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !97
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 2 uses
  %exitcond168.not.1 = icmp eq i64 %indvars.iv.next163.1, %wide.trip.count167
  br i1 %exitcond168.not.1, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !341

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.dn = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !133 ; 4 uses
  %i.dq = load ptr, ptr %i.ac, align 8, !tbaa !96 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.w to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.w, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.split
  %i.dr = shl nuw nsw i64 %wide.trip.count, 4     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.dr ; 3 uses
  %scevgep210 = getelementptr i8, ptr %0, i64 744
  %i.ds = shl nuw nsw i64 %wide.trip.count, 3     ; 4 uses
  %scevgep211 = getelementptr i8, ptr %i.by, i64 %i.ds
  %scevgep212 = getelementptr i8, ptr %i.dp, i64 %i.ds
  %scevgep213 = getelementptr i8, ptr %i.k, i64 %i.dr ; 2 uses
  %scevgep214 = getelementptr i8, ptr %i.bz, i64 %i.ds
  %scevgep215 = getelementptr i8, ptr %i.dq, i64 %i.ds
  %bound0 = icmp ult ptr %i.i, %scevgep210
  %bound1 = icmp ult ptr %i.z, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0216 = icmp ult ptr %i.i, %scevgep211
  %bound1217 = icmp ult ptr %i.by, %scevgep
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx = or i1 %found.conflict, %found.conflict218
  %bound0219 = icmp ult ptr %i.i, %scevgep212
  %bound1220 = icmp ult ptr %i.dp, %scevgep
  %found.conflict221 = and i1 %bound0219, %bound1220
  %conflict.rdx222 = or i1 %conflict.rdx, %found.conflict221
  %bound0223 = icmp ult ptr %i.k, %scevgep214
  %bound1224 = icmp ult ptr %i.bz, %scevgep213
  %found.conflict225 = and i1 %bound0223, %bound1224
  %conflict.rdx226 = or i1 %conflict.rdx222, %found.conflict225
  %bound0227 = icmp ult ptr %i.k, %scevgep215
  %bound1228 = icmp ult ptr %i.dq, %scevgep213
  %found.conflict229 = and i1 %bound0227, %bound1228
  %conflict.rdx230 = or i1 %conflict.rdx226, %found.conflict229
  br i1 %conflict.rdx230, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 4 uses
  %i.dt = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.du = load double, ptr %i.z, align 8, !tbaa !100, !alias.scope !394
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.du, i64 0
  %i.dv = load double, ptr %i.z, align 8, !tbaa !100, !alias.scope !394
  %broadcast.splatinsert233 = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dw = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> %broadcast.splatinsert233, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.dx = shl nuw i64 %index, 1                   ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index
  %wide.load = load <2 x double>, ptr %i.dy, align 8, !tbaa !58, !alias.scope !395
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.dx
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index
  %wide.load231 = load <2 x ptr>, ptr %i.ea, align 8, !tbaa !97, !alias.scope !396
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dx
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %index
  %wide.load232 = load <2 x double>, ptr %i.ec, align 8, !tbaa !58, !alias.scope !397
  %i.ed = shufflevector <2 x double> %wide.load, <2 x double> %wide.load232, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = fmul <4 x double> %i.dw, %i.ed
  store <4 x double> %interleaved.vec, ptr %i.dz, align 8, !tbaa !58, !alias.scope !398, !noalias !399
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %index
  %wide.load235 = load <2 x ptr>, ptr %i.ee, align 8, !tbaa !97, !alias.scope !400
  %interleaved.vec236 = shufflevector <2 x ptr> %wide.load231, <2 x ptr> %wide.load235, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x ptr> %interleaved.vec236, ptr %i.eb, align 8, !tbaa !97, !alias.scope !401, !noalias !402
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !350

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit151, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.split, %middle.block
  %indvars.iv157.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.split ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.split ], [ %i.dt, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %scalar.ph ], [ %indvars.iv157.ph, %scalar.ph.preheader ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.eg = load double, ptr %i.z, align 8, !tbaa !100
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv157
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !58
  %i.ej = fmul double %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %i.ej, ptr %i.ek, align 8, !tbaa !58
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv157
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !97
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr %i.em, ptr %i.en, align 8, !tbaa !97
  %i.eo = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.ep = load double, ptr %i.z, align 8, !tbaa !100
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv157
  %i.er = load double, ptr %i.eq, align 8, !tbaa !58
  %i.es = fmul double %i.ep, %i.er
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.eo
  store double %i.es, ptr %i.et, align 8, !tbaa !58
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv157
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !97
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.eo
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit151, label %scalar.ph, !llvm.loop !351

._crit_edge.loopexit151:                          ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.dt, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %i.ex = trunc nuw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.split.us.prol.loopexit, %.lr.ph.split.split.us, %scalar.ph288.prol.loopexit, %scalar.ph288, %middle.block268, %middle.block301, %.lr.ph.split.us, %._crit_edge.loopexit151, %.preheader125
  %.0103.lcssa = phi i32 [ 0, %.preheader125 ], [ %i.ex, %._crit_edge.loopexit151 ], [ %i.w, %middle.block301 ], [ 0, %.lr.ph.split.us ], [ %i.w, %middle.block268 ], [ %i.w, %scalar.ph288.prol.loopexit ], [ %i.w, %scalar.ph288 ], [ %i.w, %.lr.ph.split.split.us ], [ %i.w, %.lr.ph.split.split.us.prol.loopexit ]
  %i.ey = tail call i32 @N_VLinearCombination(i32 noundef %.0103.lcssa, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.e) #13
  %.not114 = icmp eq i32 %i.ey, 0
  br i1 %.not114, label %bb.g, label %bb.o

bb.g:                                             ; preds = %._crit_edge
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !54
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !99
  %i.fd = tail call i32 %i.fa(ptr noundef nonnull %0, ptr noundef %i.e, double noundef %i.fc) #13
  %i.fe = icmp slt i32 %i.fd, 0
  br i1 %i.fe, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double 2.000000e+00, ptr %1, align 8, !tbaa !58
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !114
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.fg, ptr noundef %i.e) #13
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !114
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.fi, double noundef 1.000000e+00, ptr noundef %i.e, ptr noundef %i.e) #13
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !122 ; 2 uses
  %.not115 = icmp eq ptr %i.fk, null
  br i1 %.not115, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !88
  %i.fn = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !95
  %i.fq = tail call i32 %i.fk(double noundef %i.fm, ptr noundef %i.fn, ptr noundef %i.fp) #13
  %.not116 = icmp eq i32 %i.fq, 0
  br i1 %.not116, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.f, %bb.i, %bb.j, %select.unfold
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !61
  %.not119 = icmp eq i32 %i.fs, 0
  br i1 %.not119, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.k
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !74 ; 13 uses
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph136, label %._crit_edge137

.lr.ph136:                                        ; preds = %.preheader
  %i.fw = load i32, ptr %i.l, align 4, !tbaa !73
  %.not121 = icmp eq i32 %i.fw, 0
  %i.fx = getelementptr i8, ptr %0, i64 736       ; 15 uses
  %i.fy = load i32, ptr %i.q, align 8, !tbaa !36
  %.not122 = icmp eq i32 %i.fy, 0                 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  br i1 %.not121, label %.lr.ph136.split.us, label %.lr.ph136.split

.lr.ph136.split.us:                               ; preds = %.lr.ph136
  br i1 %.not122, label %._crit_edge137, label %.lr.ph136.split.us.split

.lr.ph136.split.us.split:                         ; preds = %.lr.ph136.split.us
  %i.gb = load ptr, ptr %i.fz, align 8, !tbaa !63 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !133 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !132 ; 6 uses
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !96 ; 6 uses
  %wide.trip.count197 = zext nneg i32 %i.fu to i64 ; 6 uses
  %min.iters.check424 = icmp ult i32 %i.fu, 14
  br i1 %min.iters.check424, label %scalar.ph423.preheader, label %vector.memcheck401

vector.memcheck401:                               ; preds = %.lr.ph136.split.us.split
  %i.gh = shl nuw nsw i64 %wide.trip.count197, 3  ; 5 uses
  %scevgep402 = getelementptr i8, ptr %i.i, i64 %i.gh ; 3 uses
  %scevgep403 = getelementptr i8, ptr %0, i64 744
  %scevgep404 = getelementptr i8, ptr %i.gd, i64 %i.gh
  %scevgep405 = getelementptr i8, ptr %i.gf, i64 %i.gh
  %scevgep406 = getelementptr i8, ptr %i.k, i64 %i.gh
  %scevgep407 = getelementptr i8, ptr %i.gg, i64 %i.gh
  %bound0408 = icmp ult ptr %i.i, %scevgep403
  %bound1409 = icmp ult ptr %i.fx, %scevgep402
  %found.conflict410 = and i1 %bound0408, %bound1409
  %bound0411 = icmp ult ptr %i.i, %scevgep404
  %bound1412 = icmp ult ptr %i.gd, %scevgep402
  %found.conflict413 = and i1 %bound0411, %bound1412
  %conflict.rdx414 = or i1 %found.conflict410, %found.conflict413
end_hunk_1
begin_hunk_2_@ARKStepCreateAdjointStepper:bb.a

bb.aj:                                            ; preds = %bb.ah
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !468
  %i.aw = call i32 @SUNStepper_SetReInitFn(ptr noundef %i.av, ptr noundef nonnull @arkStep_SUNStepperReInit) #13
  %.not89 = icmp eq i32 %i.aw, 0
  br i1 %.not89, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -54, i32 noundef 3812, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str, ptr noundef nonnull @.str.100) #13
  br label %bb.at

bb.al:                                            ; preds = %bb.aj
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !468
  %i.ay = call i32 @SUNStepper_SetDestroyFn(ptr noundef %i.ax, ptr noundef nonnull @arkSUNStepperSelfDestruct) #13
  %.not90 = icmp eq i32 %i.ay, 0
  br i1 %.not90, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -54, i32 noundef 3823, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str, ptr noundef nonnull @.str.101) #13
  br label %bb.at

bb.an:                                            ; preds = %bb.al
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !468
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !468
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !34
  %i.bc = add nsw i64 %i.bb, -1
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !116
  %i.be = call i32 @SUNAdjointStepper_Create(ptr noundef %i.az, i32 noundef 1, ptr noundef %i.ba, i32 noundef 1, i64 noundef %i.bc, double noundef %3, ptr noundef %4, ptr noundef %i.bd, ptr noundef %5, ptr noundef %6) #13
  %.not91 = icmp eq i32 %i.be, 0
  br i1 %.not91, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -58, i32 noundef 3835, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str, ptr noundef nonnull @.str.102) #13
  br label %bb.at

bb.ap:                                            ; preds = %bb.an
  %i.bf = load ptr, ptr %6, align 8, !tbaa !470
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95
  %i.bi = call i32 @SUNAdjointStepper_SetUserData(ptr noundef %i.bf, ptr noundef %i.bh) #13
  %.not92 = icmp eq i32 %i.bi, 0
  br i1 %.not92, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -58, i32 noundef 3844, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str, ptr noundef nonnull @.str.103) #13
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.bj = load ptr, ptr %6, align 8, !tbaa !470
  %i.bk = call i32 @ARKodeSetUserData(ptr noundef nonnull %i.v, ptr noundef %i.bj) #13 ; 3 uses
  %.not93 = icmp eq i32 %i.bk, 0
  br i1 %.not93, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.bk, i32 noundef 3854, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str, ptr noundef nonnull @.str.104) #13
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai
  %.0 = phi i32 [ %i.au, %bb.ai ], [ -54, %bb.ak ], [ -54, %bb.am ], [ -58, %bb.ao ], [ -58, %bb.aq ], [ %i.bk, %bb.as ], [ 0, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ag, %bb.ae
  %.1 = phi i32 [ %i.ar, %bb.ae ], [ -54, %bb.ag ], [ %.0, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.av

bb.av:                                            ; preds = %bb.u, %bb.au, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.s
  %.4 = phi i32 [ %i.t, %bb.s ], [ -21, %bb.u ], [ %i.ad, %bb.w ], [ %i.al, %bb.y ], [ %i.an, %bb.aa ], [ %i.aq, %bb.ac ], [ %.1, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.q, %bb.o, %bb.m, %bb.k, %bb.e
  %.5 = phi i32 [ -22, %bb.e ], [ -22, %bb.k ], [ -22, %bb.m ], [ -22, %bb.q ], [ %.4, %bb.av ], [ -22, %bb.o ]
  ret i32 %.5
}

declare i32 @N_VGetVectorID(ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetFixedStep(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @ARKStepSetTables(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetMaxNumSteps(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ARKodeSetAdjointCheckpointScheme(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeCreateSUNStepper(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNStepper_SetReInitFn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -9990, 1) i32 @arkStep_SUNStepperReInit(ptr noundef %0, double noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call i32 @SUNStepper_GetContent(ptr noundef %0, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !471  ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 2508, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #13
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %arkStep_AccessARKODEStepMem.exit

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.c, i32 noundef -21, i32 noundef 2517, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -22, i32 noundef 3654, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str, ptr noundef nonnull @.str.88) #13
  br label %bb.g

arkStep_AccessARKODEStepMem.exit:                 ; preds = %bb.c
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = call i32 @ARKStepReInit(ptr noundef nonnull %i.c, ptr noundef %i.h, ptr noundef %i.j, double noundef %1, ptr noundef %2) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.k, ptr %i.l, align 8, !tbaa !472
  %.not9 = icmp eq i32 %i.k, 0
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %arkStep_AccessARKODEStepMem.exit
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.c, i32 noundef %i.k, i32 noundef 3663, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str, ptr noundef nonnull @.str.106) #13
  br label %bb.g

bb.g:                                             ; preds = %arkStep_AccessARKODEStepMem.exit, %bb.f, %bb.e
  %.0 = phi i32 [ -22, %bb.e ], [ -9990, %bb.f ], [ 0, %arkStep_AccessARKODEStepMem.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

declare i32 @SUNStepper_SetDestroyFn(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @arkSUNStepperSelfDestruct(ptr noundef) #2

declare i32 @SUNAdjointStepper_Create(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNAdjointStepper_SetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -49, 3) i32 @arkStep_RelaxDeltaE(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 14 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 4059, ptr noundef nonnull @__func__.arkStep_RelaxDeltaE, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90
  store double 0.000000e+00, ptr %3, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81   ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 108 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !74
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph126, label %._crit_edge127

.lr.ph126:                                        ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 392 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.q = getelementptr i8, ptr %0, i64 736        ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %scevgep = getelementptr i8, ptr %i.h, i64 8    ; 2 uses
  %scevgep142 = getelementptr i8, ptr %0, i64 744
  %scevgep144 = getelementptr i8, ptr %i.j, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep142
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph126, %bb.y
  %indvars.iv134 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next135, %bb.y ] ; 19 uses
  %.0100124 = phi ptr [ %i.f, %.lr.ph126 ], [ %.1101, %bb.y ] ; 2 uses
  %i.ab = shl nuw nsw i64 %indvars.iv134, 3       ; 3 uses
  %i.ac = add nuw i64 %i.ab, 8                    ; 2 uses
  %scevgep141 = getelementptr i8, ptr %i.h, i64 %i.ac ; 2 uses
  %scevgep145 = getelementptr i8, ptr %i.j, i64 %i.ac
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !36
  %.not111 = icmp eq i32 %i.ad, 0
  br i1 %.not111, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !56
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !115
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv134
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !97
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !58
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !114
  store ptr %i.aj, ptr %i.j, align 8, !tbaa !97
  %.not128 = icmp eq i64 %indvars.iv134, 0
  br i1 %.not128, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !112
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv134
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !113 ; 6 uses
  %i.ap = load ptr, ptr %i.s, align 8, !tbaa !101 ; 6 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv134, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep143 = getelementptr i8, ptr %i.ao, i64 %i.ab
  %scevgep146 = getelementptr i8, ptr %i.ap, i64 %i.ab
  %bound1 = icmp ult ptr %i.q, %scevgep141
  %found.conflict = and i1 %bound0, %bound1
  %bound0147 = icmp ult ptr %scevgep, %scevgep143
  %bound1148 = icmp ult ptr %i.ao, %scevgep141
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx = or i1 %found.conflict, %found.conflict149
  %bound0150 = icmp ult ptr %scevgep144, %scevgep146
  %bound1151 = icmp ult ptr %i.ap, %scevgep145
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx153 = or i1 %conflict.rdx, %found.conflict152
  br i1 %conflict.rdx153, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv134, 9223372036854775804 ; 4 uses
  %i.aq = or disjoint i64 %n.vec, 1               ; 2 uses
  %i.ar = load double, ptr %i.q, align 8, !tbaa !100, !alias.scope !481
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ar, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.as = or disjoint i64 %index, 1               ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <2 x double>, ptr %i.at, align 8, !tbaa !58, !alias.scope !482
  %wide.load.a = load <2 x double>, ptr %4, align 8, !tbaa !58, !alias.scope !482
  %5 = fmul <2 x double> %broadcast.splat, %wide.load
  %i.au = fmul <2 x double> %broadcast.splat, %wide.load.a
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <2 x double> %5, ptr %i.av, align 8, !tbaa !58, !alias.scope !483, !noalias !484
  store <2 x double> %i.au, ptr %6, align 8, !tbaa !58, !alias.scope !483, !noalias !484
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %index ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load155 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !97, !alias.scope !485
  %wide.load154 = load <2 x ptr>, ptr %7, align 8, !tbaa !97, !alias.scope !485
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.as ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x ptr> %wide.load155, ptr %i.ax, align 8, !tbaa !97, !alias.scope !486, !noalias !485
  store <2 x ptr> %wide.load154, ptr %8, align 8, !tbaa !97, !alias.scope !486, !noalias !485
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !479

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv134, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv129.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.aq, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %indvars.iv129.ph, 1
  %xtraiter = and i64 %indvars.iv134, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.az = load double, ptr %i.q, align 8, !tbaa !100
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv129.ph
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !58
  %i.bc = fmul double %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.ph
  store double %i.bc, ptr %i.bd, align 8, !tbaa !58
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv129.ph
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !97
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.ph
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !97
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1 ; 2 uses
  %indvars.iv.next130.prol = or disjoint i64 %indvars.iv129.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.lcssa156.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv129.unr = phi i64 [ %indvars.iv129.ph, %scalar.ph.preheader ], [ %indvars.iv.next130.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bh = icmp eq i64 %indvars.iv134, %.neg
  br i1 %i.bh, label %._crit_edge.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.1, %scalar.ph ], [ %indvars.iv129.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bi = load double, ptr %i.q, align 8, !tbaa !100
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv129
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !58
  %i.bl = fmul double %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store double %i.bl, ptr %i.bm, align 8, !tbaa !58
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv129
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !97
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %i.bq = load double, ptr %i.q, align 8, !tbaa !100
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next130
  %i.bs = load double, ptr %i.br, align 8, !tbaa !58
  %i.bt = fmul double %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next
  store double %i.bt, ptr %i.bu, align 8, !tbaa !58
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next130
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !97
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !97
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next130.1 = add nuw nsw i64 %indvars.iv129, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next130.1, %indvars.iv134
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !480

._crit_edge.loopexit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.aq, %middle.block ], [ %indvars.iv.next.lcssa156.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.1, %scalar.ph ]
  %i.by = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.0102.lcssa = phi i32 [ 1, %bb.g ], [ %i.by, %._crit_edge.loopexit ]
  %i.bz = tail call i32 @N_VLinearCombination(i32 noundef %.0102.lcssa, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, ptr noundef %.0100124) #13
  %.not112 = icmp eq i32 %i.bz, 0
  br i1 %.not112, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %.1101 = phi ptr [ %i.ai, %bb.f ], [ %.0100124, %._crit_edge ] ; 8 uses
  %i.ca = load ptr, ptr %i.u, align 8, !tbaa !95
  %i.cb = tail call i32 %1(ptr noundef %.1101, ptr noundef %i.b, ptr noundef %i.ca) #13 ; 2 uses
  %i.cc = load i64, ptr %2, align 8, !tbaa !34
  %i.cd = add nsw i64 %i.cc, 1
  store i64 %i.cd, ptr %2, align 8, !tbaa !34
  %i.ce = icmp slt i32 %i.cb, 0
  br i1 %i.ce, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not113 = icmp eq i32 %i.cb, 0
  br i1 %.not113, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.cf = load i32, ptr %i.v, align 4, !tbaa !73
  %.not114 = icmp eq i32 %i.cf, 0
  br i1 %.not114, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = load i32, ptr %i.n, align 8, !tbaa !36
  %.not115 = icmp eq i32 %i.cg, 0
  br i1 %.not115, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !133
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv134
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !58
  %i.cm = load ptr, ptr %i.s, align 8, !tbaa !101
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv134
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !97
  %i.cp = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !133
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv134
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !58
  %i.cu = load ptr, ptr %i.x, align 8, !tbaa !96
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv134
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !97
  tail call void @N_VLinearSum(double noundef %i.cl, ptr noundef %i.co, double noundef %i.ct, ptr noundef %i.cw, ptr noundef %.1101) #13
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.cx = load i32, ptr %i.o, align 8, !tbaa !56
  %i.cy = icmp eq i32 %i.cx, 1
  %i.cz = load ptr, ptr %i.s, align 8, !tbaa !101
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv134
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !97 ; 2 uses
  br i1 %i.cy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.db, ptr noundef %.1101) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.099 = phi ptr [ %.1101, %bb.n ], [ %i.db, %bb.m ]
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !133
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv134
  %i.dg = load double, ptr %i.df, align 8, !tbaa !58
  br label %bb.s

bb.p:                                             ; preds = %bb.j
  %i.dh = load i32, ptr %i.o, align 8, !tbaa !56
  %i.di = icmp eq i32 %i.dh, 1
  %i.dj = load ptr, ptr %i.x, align 8, !tbaa !96
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv134
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !97 ; 2 uses
  br i1 %i.di, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dl, ptr noundef %.1101) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1 = phi ptr [ %.1101, %bb.q ], [ %i.dl, %bb.p ]
  %i.dm = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !133
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv134
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !58
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.l
  %.2 = phi ptr [ %.1101, %bb.l ], [ %.099, %bb.o ], [ %.1, %bb.r ] ; 3 uses
  %.0 = phi double [ 1.000000e+00, %bb.l ], [ %i.dg, %bb.o ], [ %i.dq, %bb.r ]
  %i.dr = load i32, ptr %i.o, align 8, !tbaa !56
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dt = load ptr, ptr %i.y, align 8, !tbaa !54
  %i.du = load double, ptr %i.z, align 8, !tbaa !99
  %i.dv = tail call i32 %i.dt(ptr noundef nonnull %0, ptr noundef %.2, double noundef %i.du) #13
  %.not117 = icmp eq i32 %i.dv, 0
  br i1 %.not117, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dw = load ptr, ptr %i.aa, align 8, !tbaa !127 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 320
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !487
  %.not118 = icmp eq ptr %i.dy, null
  br i1 %.not118, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 400
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !488
  %.not119 = icmp eq ptr %i.ea, null
  br i1 %.not119, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = tail call double @N_VDotProdLocal(ptr noundef nonnull %i.b, ptr noundef %.2) #13
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.ec = tail call double @N_VDotProd(ptr noundef nonnull %i.b, ptr noundef %.2) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
end_hunk_2
