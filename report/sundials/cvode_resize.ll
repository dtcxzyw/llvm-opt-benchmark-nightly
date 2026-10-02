Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvode_resize?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@CVodeResizeHistory:bb.a
  store i32 0, ptr %i.bk, align 8, !tbaa !41
  %i.bn = load ptr, ptr %2, align 8, !tbaa !11
  %i.bo = load ptr, ptr %0, align 8, !tbaa !42
  %i.bp = tail call ptr @SUNNonlinSol_Newton(ptr noundef %i.bn, ptr noundef %i.bo) #4 ; 3 uses
  %.not237 = icmp eq ptr %i.bp, null
  br i1 %.not237, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 385, ptr noundef nonnull @__func__.CVodeResizeHistory, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #4
  br label %.thread248

bb.ar:                                            ; preds = %bb.ap
  %i.bq = tail call i32 @CVodeSetNonlinearSolver(ptr noundef nonnull %0, ptr noundef nonnull %i.bp) #4
  %.not238 = icmp eq i32 %i.bq, 0
  br i1 %.not238, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.br = tail call i32 @SUNNonlinSolFree(ptr noundef nonnull %i.bp) #4 ; 0 uses
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 394, ptr noundef nonnull @__func__.CVodeResizeHistory, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #4
  br label %.thread248

bb.at:                                            ; preds = %bb.ar
  store i32 1, ptr %i.bk, align 8, !tbaa !41
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.am, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.bs = load i32, ptr %i.b, align 8, !tbaa !26  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !43
  %.245 = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 %i.bu)
  %i.bv = load i32, ptr %i.g, align 8, !tbaa !28  ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 2
  %i.bx = zext i1 %i.bw to i32
  %.0191 = add nsw i32 %.245, %i.bx               ; 3 uses
  %.not240265 = icmp sgt i32 %.0191, 0            ; 2 uses
  br i1 %.not240265, label %.lr.ph268.preheader, label %.thread251

.lr.ph268.preheader:                              ; preds = %bb.au
  %wide.trip.count294 = zext nneg i32 %.0191 to i64
  br label %.lr.ph268

.lr.ph268:                                        ; preds = %.lr.ph268.preheader, %bb.av
  %indvars.iv309 = phi i32 [ 0, %.lr.ph268.preheader ], [ %indvars.iv.next310, %bb.av ] ; 2 uses
  %indvars.iv291 = phi i64 [ 0, %.lr.ph268.preheader ], [ %indvars.iv.next292, %bb.av ] ; 3 uses
  %i.by = load ptr, ptr %2, align 8, !tbaa !11
  %i.bz = tail call ptr @N_VClone(ptr noundef %i.by) #4 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv291
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !11
  %.not239 = icmp eq ptr %i.bz, null
  br i1 %.not239, label %.preheader, label %bb.av

.preheader:                                       ; preds = %.lr.ph268
  %.not279 = icmp eq i64 %indvars.iv291, 0
  br i1 %.not279, label %._crit_edge278, label %.lr.ph277.preheader

.lr.ph277.preheader:                              ; preds = %.preheader
  %wide.trip.count312 = zext nneg i32 %indvars.iv309 to i64
  br label %.lr.ph277

.lr.ph277:                                        ; preds = %.lr.ph277.preheader, %.lr.ph277
  %indvars.iv306 = phi i64 [ 0, %.lr.ph277.preheader ], [ %indvars.iv.next307, %.lr.ph277 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv306
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !11
  tail call void @N_VDestroy(ptr noundef %i.cc) #4
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1 ; 2 uses
  %exitcond313.not = icmp eq i64 %indvars.iv.next307, %wide.trip.count312
  br i1 %exitcond313.not, label %._crit_edge278, label %.lr.ph277

bb.av:                                            ; preds = %.lr.ph268
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count294
  %indvars.iv.next310 = add nuw nsw i32 %indvars.iv309, 1
  br i1 %exitcond295.not, label %.thread251.loopexit, label %.lr.ph268

._crit_edge278:                                   ; preds = %.lr.ph277, %.preheader
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %0, i32 noundef -20, i32 noundef 416, ptr noundef nonnull @__func__.CVodeResizeHistory, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #4
  br label %.loopexit

.thread251.loopexit:                              ; preds = %bb.av
  %.pre = load i32, ptr %i.b, align 8, !tbaa !26
  %.pre315.pre = load i32, ptr %i.g, align 8, !tbaa !28
  br label %.thread251

.thread251:                                       ; preds = %.thread251.loopexit, %bb.au
  %.pre315 = phi i32 [ %.pre315.pre, %.thread251.loopexit ], [ %i.bv, %bb.au ] ; 2 uses
  %i.cd = phi i32 [ %.pre, %.thread251.loopexit ], [ %i.bs, %bb.au ] ; 3 uses
  %i.ce = load i32, ptr %i.e, align 8, !tbaa !27
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %.thread251
  %i.cg = icmp eq i32 %.pre315, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !44 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %i.cg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = call fastcc i32 @cvBuildNordsieckArrayAdams(ptr noundef %i.ch, ptr noundef %i.cm, ptr noundef %i.cn, ptr noundef %i.a, i32 noundef %i.cd, double noundef %i.ck, ptr noundef %i.cl)
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !11
  %i.cr = call fastcc i32 @cvBuildNordsieckArrayBDF(ptr noundef %i.ch, ptr noundef %i.ci, ptr noundef %i.cq, ptr noundef %i.a, i32 noundef %i.cd, double noundef %i.ck, ptr noundef %i.cl)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0196 = phi i32 [ %i.co, %bb.ax ], [ %i.cr, %bb.ay ] ; 3 uses
  %.not241 = icmp eq i32 %.0196, 0
  br i1 %.not241, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef %.0196, i32 noundef 445, ptr noundef nonnull @__func__.CVodeResizeHistory, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #4
  br label %.loopexit

bb.bb:                                            ; preds = %bb.az
  %i.cs = load i32, ptr %i.b, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cu = load ptr, ptr %i.af, align 8, !tbaa !33
  tail call fastcc void @cvPredictY(i32 noundef %i.cs, ptr noundef %i.ct, ptr noundef %i.cu)
  %i.cv = load ptr, ptr %2, align 8, !tbaa !11
  %i.cw = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.cx = load i32, ptr %i.e, align 8, !tbaa !27
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !11
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.cv, double noundef -1.000000e+00, ptr noundef %i.cw, ptr noundef %i.da) #4
  %.pre314 = load i32, ptr %i.g, align 8, !tbaa !28
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.thread251
  %i.db = phi i32 [ %.pre314, %bb.bb ], [ %.pre315, %.thread251 ]
  %i.dc = icmp eq i32 %i.db, 1
  %i.dd = load i32, ptr %i.bt, align 4, !tbaa !43 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.df = load double, ptr %i.de, align 8, !tbaa !44 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %i.dc, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.dh = load ptr, ptr %2, align 8, !tbaa !11
  %i.di = call fastcc i32 @cvBuildNordsieckArrayAdams(ptr noundef %1, ptr noundef %i.dh, ptr noundef %3, ptr noundef %i.a, i32 noundef %i.dd, double noundef %i.df, ptr noundef %i.dg)
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.dj = load ptr, ptr %3, align 8, !tbaa !11
  %i.dk = call fastcc i32 @cvBuildNordsieckArrayBDF(ptr noundef %1, ptr noundef %2, ptr noundef %i.dj, ptr noundef %i.a, i32 noundef %i.dd, double noundef %i.df, ptr noundef %i.dg)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.1197 = phi i32 [ %i.di, %bb.bd ], [ %i.dk, %bb.be ] ; 3 uses
  %.not242 = icmp eq i32 %.1197, 0
  br i1 %.not242, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef %.1197, i32 noundef 484, ptr noundef nonnull @__func__.CVodeResizeHistory, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #4
  br label %.loopexit

bb.bh:                                            ; preds = %bb.bf
  %i.dl = load double, ptr %1, align 8, !tbaa !12
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 344
  store double %i.dl, ptr %i.dm, align 8, !tbaa !45
  %i.dn = icmp sgt i32 %., 1
  br i1 %i.dn, label %.lr.ph271, label %._crit_edge272

.lr.ph271:                                        ; preds = %bb.bh
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 6 uses
  %wide.trip.count299 = zext nneg i32 %. to i64   ; 5 uses
  %i.dp = add nsw i64 %wide.trip.count299, -1     ; 2 uses
  %min.iters.check = icmp ult i32 %., 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph271
  %i.dq = getelementptr i8, ptr %0, i64 368
  %i.dr = shl nuw nsw i64 %wide.trip.count299, 3  ; 2 uses
  %i.ds = getelementptr i8, ptr %0, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 360
  %i.du = getelementptr i8, ptr %1, i64 %i.dr
  %bound0 = icmp ult ptr %i.dq, %i.du
  %bound1 = icmp ult ptr %1, %i.dt
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dp, -4                      ; 3 uses
  %i.dv = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dw = or disjoint i64 %index, 1               ; 2 uses
  %i.dx = getelementptr [8 x i8], ptr %1, i64 %i.dw ; 4 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 -8
  %i.dz = getelementptr i8, ptr %i.dx, i64 8
  %wide.load = load <2 x double>, ptr %i.dy, align 8, !tbaa !12, !alias.scope !46
  %wide.load332 = load <2 x double>, ptr %i.dz, align 8, !tbaa !12, !alias.scope !46
  %i.ea = getelementptr i8, ptr %i.dx, i64 16
  %wide.load333 = load <2 x double>, ptr %i.dx, align 8, !tbaa !12, !alias.scope !46
  %wide.load334 = load <2 x double>, ptr %i.ea, align 8, !tbaa !12, !alias.scope !46
  %i.eb = fsub <2 x double> %wide.load, %wide.load333
  %i.ec = fsub <2 x double> %wide.load332, %wide.load334
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dw ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <2 x double> %i.eb, ptr %i.ed, align 8, !tbaa !12, !alias.scope !47, !noalias !46
  store <2 x double> %i.ec, ptr %i.ee, align 8, !tbaa !12, !alias.scope !47, !noalias !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %._crit_edge272, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph271, %middle.block
  %indvars.iv296.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph271 ], [ %i.dv, %middle.block ] ; 4 uses
  %i.eg = sub nsw i64 %wide.trip.count299, %indvars.iv296.ph
  %xtraiter = and i64 %i.eg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv296.prol = phi i64 [ %indvars.iv.next297.prol, %scalar.ph.prol ], [ %indvars.iv296.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.eh = getelementptr [8 x i8], ptr %1, i64 %indvars.iv296.prol ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 -8
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !12
  %i.ek = load double, ptr %i.eh, align 8, !tbaa !12
  %i.el = fsub double %i.ej, %i.ek
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv296.prol
  store double %i.el, ptr %i.em, align 8, !tbaa !12
  %indvars.iv.next297.prol = add nuw nsw i64 %indvars.iv296.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !17

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv296.unr = phi i64 [ %indvars.iv296.ph, %scalar.ph.preheader ], [ %indvars.iv.next297.prol, %scalar.ph.prol ]
  %i.en = sub nsw i64 %indvars.iv296.ph, %wide.trip.count299
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %._crit_edge272, label %scalar.ph

._crit_edge272:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.bh
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1852
  store i32 1, ptr %i.ep, align 4, !tbaa !51
  br i1 %.not240265, label %.lr.ph275.preheader, label %.loopexit

.lr.ph275.preheader:                              ; preds = %._crit_edge272
  %wide.trip.count304 = zext nneg i32 %.0191 to i64
  br label %.lr.ph275

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv296 = phi i64 [ %indvars.iv.next297.3, %scalar.ph ], [ %indvars.iv296.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.eq = getelementptr [8 x i8], ptr %1, i64 %indvars.iv296 ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 -8
  %i.es = load double, ptr %i.er, align 8, !tbaa !12
  %i.et = load double, ptr %i.eq, align 8, !tbaa !12
  %i.eu = fsub double %i.es, %i.et
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv296
  store double %i.eu, ptr %i.ev, align 8, !tbaa !12
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %i.ew = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next297 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 -8
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !12
  %i.ez = load double, ptr %i.ew, align 8, !tbaa !12
  %i.fa = fsub double %i.ey, %i.ez
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next297
  store double %i.fa, ptr %i.fb, align 8, !tbaa !12
  %indvars.iv.next297.1 = add nuw nsw i64 %indvars.iv296, 2 ; 2 uses
  %i.fc = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next297.1 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 -8
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !12
  %i.ff = load double, ptr %i.fc, align 8, !tbaa !12
  %i.fg = fsub double %i.fe, %i.ff
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next297.1
  store double %i.fg, ptr %i.fh, align 8, !tbaa !12
  %indvars.iv.next297.2 = add nuw nsw i64 %indvars.iv296, 3 ; 2 uses
  %i.fi = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next297.2 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 -8
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !12
  %i.fl = load double, ptr %i.fi, align 8, !tbaa !12
  %i.fm = fsub double %i.fk, %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next297.2
  store double %i.fm, ptr %i.fn, align 8, !tbaa !12
  %indvars.iv.next297.3 = add nuw nsw i64 %indvars.iv296, 4 ; 2 uses
  %exitcond300.not.3 = icmp eq i64 %indvars.iv.next297.3, %wide.trip.count299
  br i1 %exitcond300.not.3, label %._crit_edge272, label %scalar.ph, !llvm.loop !18

.lr.ph275:                                        ; preds = %.lr.ph275.preheader, %.lr.ph275
  %indvars.iv301 = phi i64 [ 0, %.lr.ph275.preheader ], [ %indvars.iv.next302, %.lr.ph275 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv301
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !11
  tail call void @N_VDestroy(ptr noundef %i.fp) #4
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count304
  br i1 %exitcond305.not, label %.loopexit, label %.lr.ph275

.loopexit:                                        ; preds = %.lr.ph275, %._crit_edge272, %._crit_edge278, %bb.bg, %bb.ba
  %.7 = phi i32 [ %.0196, %bb.ba ], [ -20, %._crit_edge278 ], [ %.1197, %bb.bg ], [ 0, %._crit_edge272 ], [ 0, %.lr.ph275 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.thread248

.thread248:                                       ; preds = %bb.aq, %bb.as, %bb.al, %bb.q, %bb.m, %bb.d, %bb.f, %bb.h, %.loopexit, %bb.ao, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.o, %bb.k, %bb.b
  %.10 = phi i32 [ -21, %bb.b ], [ -22, %bb.d ], [ -22, %bb.h ], [ -22, %bb.f ], [ -22, %bb.k ], [ -20, %bb.ao ], [ %.7, %.loopexit ], [ -22, %bb.q ], [ -20, %bb.al ], [ -20, %bb.ad ], [ -20, %bb.ab ], [ -20, %bb.z ], [ -20, %bb.x ], [ -20, %bb.v ], [ -20, %bb.t ], [ -20, %bb.r ], [ -22, %bb.m ], [ -22, %bb.o ], [ -20, %bb.as ], [ -20, %bb.aq ]
  ret i32 %.10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cvProcessError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

declare i32 @SUNNonlinSolFree(ptr noundef) local_unnamed_addr #2

declare ptr @SUNNonlinSol_Newton(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetNonlinearSolver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -22, 1) i32 @cvBuildNordsieckArrayAdams(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4, double noundef %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %.not = icmp ne ptr %1, null
  %i.a = icmp sgt i32 %4, 0
  %or.cond7.not110 = and i1 %.not, %i.a
  br i1 %or.cond7.not110, label %.preheader120.preheader, label %.thread

.preheader120.preheader:                          ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  br label %.preheader120

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %.preheader120

.preheader120:                                    ; preds = %.preheader120.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader120.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %.not111 = icmp eq ptr %i.c, null
  br i1 %.not111, label %.thread, label %bb.c

bb.c:                                             ; preds = %.preheader120
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %.not112 = icmp eq ptr %i.e, null
  br i1 %.not112, label %.thread, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %4, 1
  br i1 %i.f, label %.preheader119, label %.lr.ph138.preheader

.preheader117.preheader:                          ; preds = %.preheader119
  %i.g = zext nneg i32 %4 to i64
  br label %.preheader117

.preheader119:                                    ; preds = %bb.d, %.preheader119
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %.preheader119 ], [ 0, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv142
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv142
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.i, ptr noundef %i.k) #4
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count
  br i1 %exitcond146.not, label %.preheader117.preheader, label %.preheader119

.preheader117:                                    ; preds = %.preheader117.preheader, %bb.e
  %indvars.iv150 = phi i64 [ 1, %.preheader117.preheader ], [ %indvars.iv.next151, %bb.e ] ; 3 uses
  br label %bb.f

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.l = add nsw i32 %4, -1
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.o, ptr noundef %i.q) #4
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 2)
  %i.r = add nuw i32 %smax, 1
  %wide.trip.count158 = zext i32 %i.r to i64
  br label %.lr.ph

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count
  br i1 %exitcond154.not, label %.lr.ph.preheader, label %.preheader117

bb.f:                                             ; preds = %.preheader117, %bb.f
  %indvars.iv147 = phi i64 [ %i.g, %.preheader117 ], [ %indvars.iv.next148, %bb.f ] ; 2 uses
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, -1 ; 5 uses
  %i.s = sub nuw nsw i64 %indvars.iv.next148, %indvars.iv150
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !12
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next148
  %i.w = load double, ptr %i.v, align 8, !tbaa !12
  %i.x = fsub double %i.u, %i.w
  %i.y = fdiv double 1.000000e+00, %i.x           ; 2 uses
end_hunk_0
begin_hunk_1_@cvBuildNordsieckArrayBDF:bb.a

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %.lr.ph154
  %indvars.iv185 = phi i64 [ 1, %.lr.ph154.preheader ], [ %indvars.iv.next186, %.lr.ph154 ] ; 3 uses
  %i.q = getelementptr [8 x i8], ptr %1, i64 %indvars.iv185
  %i.r = getelementptr i8, ptr %i.q, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv185
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.s, ptr noundef %i.u) #4
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next186, %wide.trip.count188
  br i1 %exitcond189.not, label %.preheader141.lr.ph, label %.lr.ph154

.preheader141:                                    ; preds = %.preheader141.lr.ph, %bb.d
  %indvars.iv193 = phi i64 [ 1, %.preheader141.lr.ph ], [ %indvars.iv.next194, %bb.d ] ; 3 uses
  br label %bb.e

.lr.ph162.preheader:                              ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %wide.trip.count
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.x = load ptr, ptr %6, align 8, !tbaa !11
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.w, ptr noundef %i.x) #4
  %i.y = add nuw i32 %4, 1
  %wide.trip.count202 = zext i32 %i.y to i64
  br label %.lr.ph162

bb.d:                                             ; preds = %bb.h
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count196
  br i1 %exitcond197.not, label %.lr.ph162.preheader, label %.preheader141

bb.e:                                             ; preds = %.preheader141, %bb.h
  %indvars.iv190 = phi i64 [ %i.o, %.preheader141 ], [ %indvars.iv.next191, %bb.h ] ; 6 uses
  %i.z = icmp eq i64 %indvars.iv190, 1
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !11
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %2, ptr noundef %i.aa) #4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = sub nuw nsw i64 %indvars.iv190, %indvars.iv193
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !12
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv190
  %i.af = load double, ptr %i.ae, align 8, !tbaa !12
  %i.ag = fsub double %i.ad, %i.af
  %i.ah = fdiv double 1.000000e+00, %i.ag         ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %3, i64 %indvars.iv190 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !11
  %i.al = fneg double %i.ah
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ah, ptr noundef %i.ak, double noundef %i.al, ptr noundef %i.am, ptr noundef %i.am) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next191 = add nsw i64 %indvars.iv190, -1
  %.not136.not = icmp sgt i64 %indvars.iv190, %indvars.iv193
  br i1 %.not136.not, label %bb.e, label %bb.d

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %.lr.ph162
  %indvars.iv198 = phi i64 [ 1, %.lr.ph162.preheader ], [ %indvars.iv.next199, %.lr.ph162 ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv198
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !11
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.ao) #4
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count202
  br i1 %exitcond203.not, label %.lr.ph164, label %.lr.ph162

.lr.ph164:                                        ; preds = %.lr.ph162, %._crit_edge165
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %._crit_edge165 ], [ %wide.trip.count, %.lr.ph162 ] ; 2 uses
  %indvars.iv.next208 = add nsw i64 %indvars.iv207, -1 ; 2 uses
  %i.ap = and i64 %indvars.iv.next208, 4294967295 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !12
  %i.as = fsub double %i.i, %i.ar                 ; 2 uses
  br label %bb.i

._crit_edge168:                                   ; preds = %._crit_edge165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.lr.ph173.preheader

._crit_edge165:                                   ; preds = %bb.i
  %.phi.trans.insert218 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ap
  %.pre219 = load ptr, ptr %.phi.trans.insert218, align 8, !tbaa !11
  %i.at = load ptr, ptr %6, align 8, !tbaa !11    ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.as, ptr noundef %i.at, double noundef 1.000000e+00, ptr noundef %.pre219, ptr noundef %i.at) #4
  %i.au = trunc nuw i64 %indvars.iv207 to i32
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %.lr.ph164, label %._crit_edge168

bb.i:                                             ; preds = %.lr.ph164, %bb.i
  %indvars.iv204 = phi i64 [ %wide.trip.count, %.lr.ph164 ], [ %indvars.iv.next205, %bb.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv204 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !11 ; 2 uses
  %i.ay = trunc nuw i64 %indvars.iv204 to i32     ; 2 uses
  %i.az = uitofp nneg i32 %i.ay to double
  %i.ba = getelementptr i8, ptr %i.aw, i64 -8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !11
  tail call void @N_VLinearSum(double noundef %i.as, ptr noundef %i.ax, double noundef %i.az, ptr noundef %i.bb, ptr noundef %i.ax) #4
  %indvars.iv.next205 = add nsw i64 %indvars.iv204, -1
  %i.bc = icmp sgt i32 %i.ay, 1
  br i1 %i.bc, label %bb.i, label %._crit_edge165

.lr.ph173.preheader:                              ; preds = %._crit_edge, %._crit_edge168
  %i.bd = load ptr, ptr %1, align 8, !tbaa !11
  %i.be = load ptr, ptr %6, align 8, !tbaa !11
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bd, ptr noundef %i.be) #4
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !11
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %2, ptr noundef %i.bg) #4
  %i.bh = add nuw i32 %4, 1
  %wide.trip.count215 = zext i32 %i.bh to i64
  br label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.preheader, %.lr.ph173
  %indvars.iv210 = phi i64 [ 1, %.lr.ph173.preheader ], [ %indvars.iv.next211, %.lr.ph173 ] ; 3 uses
  %.0111170 = phi double [ 1.000000e+00, %.lr.ph173.preheader ], [ %i.bl, %.lr.ph173 ]
  %i.bi = trunc nuw nsw i64 %indvars.iv210 to i32
  %i.bj = uitofp nneg i32 %i.bi to double
  %i.bk = fdiv double %5, %i.bj
  %i.bl = fmul double %.0111170, %i.bk            ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv210
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !11 ; 2 uses
  tail call void @N_VScale(double noundef %i.bl, ptr noundef %i.bn, ptr noundef %i.bn) #4
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count215
  br i1 %exitcond216.not, label %.thread, label %.lr.ph173

.thread:                                          ; preds = %.preheader145, %.lr.ph, %.lr.ph173, %bb.a
  %.2 = phi i32 [ -22, %bb.a ], [ -22, %.lr.ph ], [ 0, %.lr.ph173 ], [ -22, %.preheader145 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cvPredictY(i32 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.a, ptr noundef %2) #4
  %.not8 = icmp slt i32 %0, 1
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nuw i32 %0, 1
  %wide.trip.count = zext i32 %i.b to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.d, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %2) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!"p1 _ZTS17_generic_N_Vector", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!9, !9, i64 0}
!13 = distinct !{!13, i1 false, !"LVerDomain"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !48, !49}
!17 = distinct !{!17, !50}
!18 = distinct !{!18, !48}
!19 = !{!"p1 _ZTS11SUNContext_", !8, i64 0}
!20 = !{!"long", !4, i64 0}
!21 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !8, i64 0}
!22 = !{!"p1 int", !8, i64 0}
!23 = !{!"p1 double", !8, i64 0}
!24 = !{!"p1 _ZTS15CVodeProjMemRec", !8, i64 0}
!25 = !{!"CVodeMemRec", !19, i64 0, !9, i64 8, !8, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !9, i64 40, !9, i64 48, !10, i64 56, !5, i64 64, !5, i64 68, !8, i64 72, !8, i64 80, !4, i64 88, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !5, i64 256, !5, i64 260, !9, i64 264, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !9, i64 296, !9, i64 304, !9, i64 312, !9, i64 320, !9, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !4, i64 360, !4, i64 472, !4, i64 520, !9, i64 624, !9, i64 632, !9, i64 640, !9, i64 648, !9, i64 656, !9, i64 664, !9, i64 672, !9, i64 680, !5, i64 688, !9, i64 696, !5, i64 704, !20, i64 712, !5, i64 720, !5, i64 724, !5, i64 728, !9, i64 736, !9, i64 744, !9, i64 752, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !9, i64 792, !9, i64 800, !9, i64 808, !9, i64 816, !9, i64 824, !20, i64 832, !5, i64 840, !20, i64 848, !20, i64 856, !20, i64 864, !20, i64 872, !20, i64 880, !20, i64 888, !20, i64 896, !5, i64 904, !9, i64 912, !9, i64 920, !9, i64 928, !20, i64 936, !20, i64 944, !20, i64 952, !20, i64 960, !21, i64 968, !5, i64 976, !8, i64 984, !5, i64 992, !8, i64 1000, !8, i64 1008, !8, i64 1016, !8, i64 1024, !8, i64 1032, !8, i64 1040, !20, i64 1048, !9, i64 1056, !5, i64 1064, !20, i64 1072, !9, i64 1080, !9, i64 1088, !9, i64 1096, !5, i64 1104, !9, i64 1112, !5, i64 1120, !5, i64 1124, !5, i64 1128, !5, i64 1132, !8, i64 1136, !20, i64 1144, !5, i64 1152, !4, i64 1160, !5, i64 1352, !20, i64 1360, !8, i64 1368, !5, i64 1376, !22, i64 1384, !22, i64 1392, !9, i64 1400, !9, i64 1408, !9, i64 1416, !23, i64 1424, !23, i64 1432, !23, i64 1440, !9, i64 1448, !5, i64 1456, !20, i64 1464, !22, i64 1472, !5, i64 1480, !10, i64 1488, !20, i64 1496, !20, i64 1504, !5, i64 1512, !24, i64 1520, !5, i64 1528, !5, i64 1532, !4, i64 1536, !4, i64 1640, !4, i64 1744, !5, i64 1848, !5, i64 1852}
!26 = !{!25, !5, i64 272}
!27 = !{!25, !5, i64 704}
!28 = !{!25, !5, i64 32}
!29 = !{!25, !10, i64 192}
!30 = !{!25, !10, i64 208}
!31 = !{!25, !10, i64 216}
!32 = !{!25, !10, i64 224}
!33 = !{!25, !10, i64 232}
!34 = !{!25, !10, i64 240}
!35 = !{!25, !10, i64 248}
!36 = !{!25, !5, i64 1128}
!37 = !{!25, !10, i64 56}
!38 = !{!25, !10, i64 1488}
!39 = !{!25, !5, i64 1120}
!40 = !{!25, !21, i64 968}
!41 = !{!25, !5, i64 976}
!42 = !{!25, !19, i64 0}
!43 = !{!25, !5, i64 276}
!44 = !{!25, !9, i64 336}
!45 = !{!25, !9, i64 344}
!46 = !{!14}
!47 = !{!15}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!25, !5, i64 1852}
end_hunk_1
