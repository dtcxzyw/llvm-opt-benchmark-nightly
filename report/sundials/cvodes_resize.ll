Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes_resize?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@CVodeResizeHistory:bb.a
  %i.ds = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = or disjoint i64 %index, 1               ; 2 uses
  %i.du = getelementptr [8 x i8], ptr %1, i64 %i.dt ; 4 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 -8
  %i.dw = getelementptr i8, ptr %i.du, i64 8
  %wide.load = load <2 x double>, ptr %i.dv, align 8, !tbaa !12, !alias.scope !50
  %wide.load332 = load <2 x double>, ptr %i.dw, align 8, !tbaa !12, !alias.scope !50
  %i.dx = getelementptr i8, ptr %i.du, i64 16
  %wide.load333 = load <2 x double>, ptr %i.du, align 8, !tbaa !12, !alias.scope !50
  %wide.load334 = load <2 x double>, ptr %i.dx, align 8, !tbaa !12, !alias.scope !50
  %i.dy = fsub <2 x double> %wide.load, %wide.load333
  %i.dz = fsub <2 x double> %wide.load332, %wide.load334
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dt ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <2 x double> %i.dy, ptr %i.ea, align 8, !tbaa !12, !alias.scope !51, !noalias !50
  store <2 x double> %i.dz, ptr %i.eb, align 8, !tbaa !12, !alias.scope !51, !noalias !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %._crit_edge272, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph271, %middle.block
  %indvars.iv296.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph271 ], [ %i.ds, %middle.block ] ; 4 uses
  %i.ed = sub nsw i64 %wide.trip.count299, %indvars.iv296.ph
  %xtraiter = and i64 %i.ed, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv296.prol = phi i64 [ %indvars.iv.next297.prol, %scalar.ph.prol ], [ %indvars.iv296.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ee = getelementptr [8 x i8], ptr %1, i64 %indvars.iv296.prol ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 -8
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !12
  %i.eh = load double, ptr %i.ee, align 8, !tbaa !12
  %i.ei = fsub double %i.eg, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv296.prol
  store double %i.ei, ptr %i.ej, align 8, !tbaa !12
  %indvars.iv.next297.prol = add nuw nsw i64 %indvars.iv296.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !17

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv296.unr = phi i64 [ %indvars.iv296.ph, %scalar.ph.preheader ], [ %indvars.iv.next297.prol, %scalar.ph.prol ]
  %i.ek = sub nsw i64 %indvars.iv296.ph, %wide.trip.count299
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %._crit_edge272, label %scalar.ph

._crit_edge272:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.bh
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 2712
  store i32 1, ptr %i.em, align 8, !tbaa !55
  br i1 %.not240265, label %.lr.ph275.preheader, label %.loopexit

.lr.ph275.preheader:                              ; preds = %._crit_edge272
  %wide.trip.count304 = zext nneg i32 %.0191 to i64
  br label %.lr.ph275

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv296 = phi i64 [ %indvars.iv.next297.3, %scalar.ph ], [ %indvars.iv296.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.en = getelementptr [8 x i8], ptr %1, i64 %indvars.iv296 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 -8
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !12
  %i.eq = load double, ptr %i.en, align 8, !tbaa !12
  %i.er = fsub double %i.ep, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv296
  store double %i.er, ptr %i.es, align 8, !tbaa !12
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %i.et = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next297 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 -8
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !12
  %i.ew = load double, ptr %i.et, align 8, !tbaa !12
  %i.ex = fsub double %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next297
  store double %i.ex, ptr %i.ey, align 8, !tbaa !12
  %indvars.iv.next297.1 = add nuw nsw i64 %indvars.iv296, 2 ; 2 uses
  %i.ez = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next297.1 ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 -8
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !12
  %i.fc = load double, ptr %i.ez, align 8, !tbaa !12
  %i.fd = fsub double %i.fb, %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next297.1
  store double %i.fd, ptr %i.fe, align 8, !tbaa !12
  %indvars.iv.next297.2 = add nuw nsw i64 %indvars.iv296, 3 ; 2 uses
  %i.ff = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next297.2 ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 -8
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !12
  %i.fi = load double, ptr %i.ff, align 8, !tbaa !12
  %i.fj = fsub double %i.fh, %i.fi
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next297.2
  store double %i.fj, ptr %i.fk, align 8, !tbaa !12
  %indvars.iv.next297.3 = add nuw nsw i64 %indvars.iv296, 4 ; 2 uses
  %exitcond300.not.3 = icmp eq i64 %indvars.iv.next297.3, %wide.trip.count299
  br i1 %exitcond300.not.3, label %._crit_edge272, label %scalar.ph, !llvm.loop !18

.lr.ph275:                                        ; preds = %.lr.ph275.preheader, %.lr.ph275
  %indvars.iv301 = phi i64 [ 0, %.lr.ph275.preheader ], [ %indvars.iv.next302, %.lr.ph275 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv301
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !11
  tail call void @N_VDestroy(ptr noundef %i.fm) #4
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
  %i.r = add nuw i32 %4, 1
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
  %i.z = getelementptr [8 x i8], ptr %3, i64 %indvars.iv147
  %i.aa = getelementptr i8, ptr %i.z, i64 -16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !11
  %i.ac = fneg double %i.y
  %i.ad = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next148
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.y, ptr noundef %i.ab, double noundef %i.ac, ptr noundef %i.ae, ptr noundef %i.ae) #4
  %.not115.not = icmp sgt i64 %indvars.iv.next148, %indvars.iv150
  br i1 %.not115.not, label %bb.f, label %bb.e

.preheader.us.preheader:                          ; preds = %.lr.ph
  %i.af = add nsw i32 %4, -2
  %i.ag = zext nneg i32 %i.af to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge132.us
  %indvars.iv163 = phi i64 [ %i.ag, %.preheader.us.preheader ], [ %indvars.iv.next164, %._crit_edge132.us ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv163 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader.us, %bb.g
  %indvars.iv160 = phi i64 [ %i.m, %.preheader.us ], [ %indvars.iv.next161, %bb.g ] ; 3 uses
  %i.ai = load double, ptr %0, align 8, !tbaa !12
  %i.aj = load double, ptr %i.ah, align 8, !tbaa !12
  %i.ak = fsub double %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv160 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %i.ao = trunc nuw i64 %indvars.iv160 to i32     ; 2 uses
  %i.ap = uitofp nneg i32 %i.ao to double
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !11
  tail call void @N_VLinearSum(double noundef %i.ak, ptr noundef %i.an, double noundef %i.ap, ptr noundef %i.aq, ptr noundef %i.an) #4
  %indvars.iv.next161 = add nsw i64 %indvars.iv160, -1
  %i.ar = icmp sgt i32 %i.ao, 1
  br i1 %i.ar, label %bb.g, label %._crit_edge132.us

._crit_edge132.us:                                ; preds = %bb.g
  %i.as = load double, ptr %0, align 8, !tbaa !12
  %i.at = load double, ptr %i.ah, align 8, !tbaa !12
  %i.au = fsub double %i.as, %i.at
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !11  ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv163
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !11
  tail call void @N_VLinearSum(double noundef %i.au, ptr noundef %i.av, double noundef 1.000000e+00, ptr noundef %i.ax, ptr noundef %i.av) #4
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, -1
  %i.ay = trunc nuw i64 %indvars.iv163 to i32
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader.us, label %.lr.ph138.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv155 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next156, %.lr.ph ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv155
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !11
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.bb) #4
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count158
  br i1 %exitcond159.not, label %.preheader.us.preheader, label %.lr.ph

.lr.ph138.preheader:                              ; preds = %._crit_edge132.us, %bb.d
  %i.bc = load ptr, ptr %6, align 8, !tbaa !11
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %1, ptr noundef %i.bc) #4
  %i.bd = load ptr, ptr %2, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !11
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bd, ptr noundef %i.bf) #4
  %i.bg = add nuw i32 %4, 1
  %wide.trip.count170 = zext i32 %i.bg to i64
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader, %.lr.ph138
  %indvars.iv166 = phi i64 [ 1, %.lr.ph138.preheader ], [ %indvars.iv.next167, %.lr.ph138 ] ; 3 uses
  %.097135 = phi double [ 1.000000e+00, %.lr.ph138.preheader ], [ %i.bk, %.lr.ph138 ]
  %i.bh = trunc nuw nsw i64 %indvars.iv166 to i32
  %i.bi = uitofp nneg i32 %i.bh to double
  %i.bj = fdiv double %5, %i.bi
  %i.bk = fmul double %.097135, %i.bj             ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv166
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !11 ; 2 uses
  tail call void @N_VScale(double noundef %i.bk, ptr noundef %i.bm, ptr noundef %i.bm) #4
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count170
  br i1 %exitcond171.not, label %.thread, label %.lr.ph138

.thread:                                          ; preds = %bb.c, %.preheader120, %.lr.ph138, %bb.a
  %.1 = phi i32 [ -22, %bb.a ], [ 0, %.lr.ph138 ], [ -22, %.preheader120 ], [ -22, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -22, 1) i32 @cvBuildNordsieckArrayBDF(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4, double noundef %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 7 uses
  %.not = icmp ne ptr %2, null
  %i.b = icmp sgt i32 %4, 0
  %or.cond7.not127 = and i1 %.not, %i.b
  br i1 %or.cond7.not127, label %.preheader145.preheader, label %.thread

.preheader145.preheader:                          ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 5 uses
  br label %.preheader145

bb.b:                                             ; preds = %.preheader145
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.preheader, label %.preheader145

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.c = add nuw i32 %4, 1
  %wide.trip.count180 = zext i32 %i.c to i64
  br label %.lr.ph

.preheader145:                                    ; preds = %.preheader145.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader145.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %.not128 = icmp eq ptr %i.e, null
  br i1 %.not128, label %.thread, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count180
  br i1 %exitcond181.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv177 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next178, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv177
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %.not130 = icmp eq ptr %i.g, null
  br i1 %.not130, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %i.h = icmp sgt i32 %4, 1
  br i1 %i.h, label %.lr.ph154.preheader, label %.lr.ph173.preheader

.lr.ph154.preheader:                              ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.i = load double, ptr %0, align 8, !tbaa !12  ; 2 uses
  store double %i.i, ptr %i.a, align 16, !tbaa !12
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = shl nuw nsw i64 %wide.trip.count, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr nonnull align 8 %0, i64 %i.j, i1 false), !tbaa !12
  %i.k = load ptr, ptr %1, align 8, !tbaa !11
  %i.l = load ptr, ptr %3, align 8, !tbaa !11
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.k, ptr noundef %i.l) #4
  %i.m = add nuw i32 %4, 1
  %wide.trip.count188 = zext i32 %i.m to i64
  br label %.lr.ph154

.preheader141.lr.ph:                              ; preds = %.lr.ph154
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = zext nneg i32 %4 to i64
  %i.p = add nuw i32 %4, 1
  %wide.trip.count196 = zext i32 %i.p to i64
  br label %.preheader141

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

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
!13 = distinct !{!13, !"LVerDomain"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !52, !53}
!17 = distinct !{!17, !54}
!18 = distinct !{!18, !52}
!19 = !{!"p1 _ZTS11SUNContext_", !8, i64 0}
!20 = !{!"p1 double", !8, i64 0}
!21 = !{!"p1 int", !8, i64 0}
!22 = !{!"any p2 pointer", !8, i64 0}
!23 = !{!"p2 _ZTS17_generic_N_Vector", !22, i64 0}
!24 = !{!"long", !4, i64 0}
!25 = !{!"p1 long", !8, i64 0}
!26 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !8, i64 0}
!27 = !{!"p1 _ZTS15CVodeProjMemRec", !8, i64 0}
!28 = !{!"p1 _ZTS11CVadjMemRec", !8, i64 0}
!29 = !{!"CVodeMemRec", !19, i64 0, !8, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !5, i64 44, !9, i64 48, !9, i64 56, !10, i64 64, !5, i64 72, !5, i64 76, !8, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !5, i64 112, !5, i64 116, !9, i64 120, !9, i64 128, !10, i64 136, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !8, i64 160, !8, i64 168, !8, i64 176, !5, i64 184, !5, i64 188, !20, i64 192, !20, i64 200, !21, i64 208, !5, i64 216, !9, i64 224, !5, i64 232, !5, i64 236, !9, i64 240, !20, i64 248, !23, i64 256, !21, i64 264, !5, i64 272, !8, i64 280, !8, i64 288, !5, i64 296, !5, i64 300, !5, i64 304, !9, i64 312, !20, i64 320, !23, i64 328, !21, i64 336, !4, i64 344, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !10, i64 480, !10, i64 488, !10, i64 496, !10, i64 504, !4, i64 512, !10, i64 616, !10, i64 624, !10, i64 632, !10, i64 640, !4, i64 648, !23, i64 752, !23, i64 760, !23, i64 768, !23, i64 776, !23, i64 784, !5, i64 792, !4, i64 800, !23, i64 904, !23, i64 912, !23, i64 920, !23, i64 928, !10, i64 936, !5, i64 944, !5, i64 948, !9, i64 952, !5, i64 960, !5, i64 964, !5, i64 968, !5, i64 972, !5, i64 976, !9, i64 984, !9, i64 992, !9, i64 1000, !9, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !9, i64 1040, !4, i64 1048, !4, i64 1160, !4, i64 1208, !9, i64 1312, !9, i64 1320, !9, i64 1328, !9, i64 1336, !9, i64 1344, !9, i64 1352, !9, i64 1360, !9, i64 1368, !9, i64 1376, !9, i64 1384, !5, i64 1392, !9, i64 1400, !9, i64 1408, !5, i64 1416, !9, i64 1424, !9, i64 1432, !21, i64 1440, !5, i64 1448, !24, i64 1456, !5, i64 1464, !5, i64 1468, !5, i64 1472, !9, i64 1480, !9, i64 1488, !9, i64 1496, !9, i64 1504, !9, i64 1512, !9, i64 1520, !9, i64 1528, !9, i64 1536, !9, i64 1544, !9, i64 1552, !9, i64 1560, !9, i64 1568, !24, i64 1576, !5, i64 1584, !24, i64 1592, !24, i64 1600, !24, i64 1608, !24, i64 1616, !24, i64 1624, !24, i64 1632, !24, i64 1640, !24, i64 1648, !24, i64 1656, !25, i64 1664, !24, i64 1672, !24, i64 1680, !25, i64 1688, !24, i64 1696, !24, i64 1704, !25, i64 1712, !24, i64 1720, !24, i64 1728, !24, i64 1736, !24, i64 1744, !24, i64 1752, !24, i64 1760, !5, i64 1768, !9, i64 1776, !9, i64 1784, !9, i64 1792, !24, i64 1800, !24, i64 1808, !24, i64 1816, !24, i64 1824, !24, i64 1832, !24, i64 1840, !26, i64 1848, !5, i64 1856, !26, i64 1864, !5, i64 1872, !26, i64 1880, !5, i64 1888, !26, i64 1896, !5, i64 1904, !5, i64 1908, !24, i64 1912, !5, i64 1920, !8, i64 1928, !5, i64 1936, !10, i64 1944, !10, i64 1952, !10, i64 1960, !10, i64 1968, !10, i64 1976, !10, i64 1984, !5, i64 1992, !5, i64 1996, !8, i64 2000, !8, i64 2008, !8, i64 2016, !8, i64 2024, !8, i64 2032, !8, i64 2040, !24, i64 2048, !9, i64 2056, !5, i64 2064, !5, i64 2068, !24, i64 2072, !9, i64 2080, !9, i64 2088, !9, i64 2096, !5, i64 2104, !5, i64 2108, !9, i64 2112, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !5, i64 2160, !5, i64 2164, !5, i64 2168, !5, i64 2172, !5, i64 2176, !5, i64 2180, !8, i64 2184, !24, i64 2192, !5, i64 2200, !4, i64 2208, !5, i64 2400, !24, i64 2408, !8, i64 2416, !5, i64 2424, !21, i64 2432, !21, i64 2440, !9, i64 2448, !9, i64 2456, !9, i64 2464, !20, i64 2472, !20, i64 2480, !20, i64 2488, !9, i64 2496, !5, i64 2504, !24, i64 2512, !21, i64 2520, !5, i64 2528, !10, i64 2536, !24, i64 2544, !24, i64 2552, !5, i64 2560, !27, i64 2568, !5, i64 2576, !5, i64 2580, !4, i64 2584, !20, i64 2688, !23, i64 2696, !23, i64 2704, !5, i64 2712, !5, i64 2716, !28, i64 2720, !5, i64 2728}
!30 = !{!29, !5, i64 960}
!31 = !{!29, !5, i64 1448}
!32 = !{!29, !5, i64 40}
!33 = !{!29, !10, i64 448}
!34 = !{!29, !10, i64 464}
!35 = !{!29, !10, i64 472}
!36 = !{!29, !10, i64 480}
!37 = !{!29, !10, i64 488}
!38 = !{!29, !10, i64 496}
!39 = !{!29, !10, i64 504}
!40 = !{!29, !5, i64 2140}
!41 = !{!29, !10, i64 64}
!42 = !{!29, !10, i64 2536}
!43 = !{!29, !5, i64 2120}
!44 = !{!29, !26, i64 1848}
!45 = !{!29, !5, i64 1856}
!46 = !{!29, !19, i64 0}
!47 = !{!29, !5, i64 964}
!48 = !{!29, !9, i64 1024}
!49 = !{!29, !9, i64 1032}
!50 = !{!14}
!51 = !{!15}
!52 = !{!"llvm.loop.isvectorized", i32 1}
!53 = !{!"llvm.loop.unroll.runtime.disable"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!29, !5, i64 2712}
end_hunk_0
