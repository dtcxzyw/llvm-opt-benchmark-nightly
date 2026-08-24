Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes_resize?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@CVodeResizeHistory:bb.a
  %i.dd = load i32, ptr %i.bt, align 4, !tbaa !40 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.df = load double, ptr %i.de, align 8, !tbaa !41 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  br i1 %i.dc, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.dh = load ptr, ptr %2, align 8, !tbaa !25
  %i.di = call fastcc i32 @cvBuildNordsieckArrayAdams(ptr noundef %1, ptr noundef %i.dh, ptr noundef %3, ptr noundef %i.a, i32 noundef %i.dd, double noundef %i.df, ptr noundef %i.dg)
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.dj = load ptr, ptr %3, align 8, !tbaa !25
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
  %i.dl = load double, ptr %1, align 8, !tbaa !42
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store double %i.dl, ptr %i.dm, align 8, !tbaa !43
  %i.dn = icmp sgt i32 %., 1
  br i1 %i.dn, label %.lr.ph271, label %._crit_edge272

.lr.ph271:                                        ; preds = %bb.bh
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 6 uses
  %wide.trip.count299 = zext nneg i32 %. to i64   ; 5 uses
  %i.dp = add nsw i64 %wide.trip.count299, -1     ; 2 uses
  %min.iters.check = icmp ult i32 %., 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph271
  %scevgep = getelementptr i8, ptr %0, i64 1056
  %i.dq = shl nuw nsw i64 %wide.trip.count299, 3  ; 2 uses
  %i.dr = getelementptr i8, ptr %0, i64 %i.dq
  %scevgep330 = getelementptr i8, ptr %i.dr, i64 1048
  %scevgep331 = getelementptr i8, ptr %1, i64 %i.dq
  %bound0 = icmp ult ptr %scevgep, %scevgep331
  %bound1 = icmp ult ptr %1, %scevgep330
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dp, -4                      ; 3 uses
  %i.ds = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = or disjoint i64 %index, 1               ; 2 uses
  %i.du = getelementptr [8 x i8], ptr %1, i64 %i.dt ; 4 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 -8
  %i.dw = getelementptr i8, ptr %i.du, i64 8
  %wide.load = load <2 x double>, ptr %i.dv, align 8, !tbaa !42, !alias.scope !44
  %wide.load332 = load <2 x double>, ptr %i.dw, align 8, !tbaa !42, !alias.scope !44
  %i.dx = getelementptr i8, ptr %i.du, i64 16
  %wide.load333 = load <2 x double>, ptr %i.du, align 8, !tbaa !42, !alias.scope !44
  %wide.load334 = load <2 x double>, ptr %i.dx, align 8, !tbaa !42, !alias.scope !44
  %i.dy = fsub <2 x double> %wide.load, %wide.load333
  %i.dz = fsub <2 x double> %wide.load332, %wide.load334
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dt ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <2 x double> %i.dy, ptr %i.ea, align 8, !tbaa !42, !alias.scope !47, !noalias !44
  store <2 x double> %i.dz, ptr %i.eb, align 8, !tbaa !42, !alias.scope !47, !noalias !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !49

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
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !42
  %i.eh = load double, ptr %i.ee, align 8, !tbaa !42
  %i.ei = fsub double %i.eg, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv296.prol
  store double %i.ei, ptr %i.ej, align 8, !tbaa !42
  %indvars.iv.next297.prol = add nuw nsw i64 %indvars.iv296.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !52

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv296.unr = phi i64 [ %indvars.iv296.ph, %scalar.ph.preheader ], [ %indvars.iv.next297.prol, %scalar.ph.prol ]
  %i.ek = sub nsw i64 %indvars.iv296.ph, %wide.trip.count299
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %._crit_edge272, label %scalar.ph

._crit_edge272:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.bh
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 2712
  store i32 1, ptr %i.em, align 8, !tbaa !54
  br i1 %.not240265, label %.lr.ph275.preheader, label %.loopexit

.lr.ph275.preheader:                              ; preds = %._crit_edge272
  %wide.trip.count304 = zext nneg i32 %.0191 to i64
  br label %.lr.ph275

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv296 = phi i64 [ %indvars.iv.next297.3, %scalar.ph ], [ %indvars.iv296.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.en = getelementptr [8 x i8], ptr %1, i64 %indvars.iv296 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 -8
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !42
  %i.eq = load double, ptr %i.en, align 8, !tbaa !42
  %i.er = fsub double %i.ep, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv296
  store double %i.er, ptr %i.es, align 8, !tbaa !42
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %i.et = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next297 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 -8
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !42
  %i.ew = load double, ptr %i.et, align 8, !tbaa !42
  %i.ex = fsub double %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next297
  store double %i.ex, ptr %i.ey, align 8, !tbaa !42
  %indvars.iv.next297.1 = add nuw nsw i64 %indvars.iv296, 2 ; 2 uses
  %i.ez = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next297.1 ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 -8
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !42
  %i.fc = load double, ptr %i.ez, align 8, !tbaa !42
  %i.fd = fsub double %i.fb, %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next297.1
  store double %i.fd, ptr %i.fe, align 8, !tbaa !42
  %indvars.iv.next297.2 = add nuw nsw i64 %indvars.iv296, 3 ; 2 uses
  %i.ff = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next297.2 ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 -8
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !42
  %i.fi = load double, ptr %i.ff, align 8, !tbaa !42
  %i.fj = fsub double %i.fh, %i.fi
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next297.2
  store double %i.fj, ptr %i.fk, align 8, !tbaa !42
  %indvars.iv.next297.3 = add nuw nsw i64 %indvars.iv296, 4 ; 2 uses
  %exitcond300.not.3 = icmp eq i64 %indvars.iv.next297.3, %wide.trip.count299
  br i1 %exitcond300.not.3, label %._crit_edge272, label %scalar.ph, !llvm.loop !55

.lr.ph275:                                        ; preds = %.lr.ph275.preheader, %.lr.ph275
  %indvars.iv301 = phi i64 [ 0, %.lr.ph275.preheader ], [ %indvars.iv.next302, %.lr.ph275 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv301
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !25
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
  %wide.trip.count = zext nneg i32 %4 to i64      ; 4 uses
  br label %.preheader120

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %.preheader120

.preheader120:                                    ; preds = %.preheader120.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader120.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %.not111 = icmp eq ptr %i.c, null
  br i1 %.not111, label %.thread, label %bb.c

bb.c:                                             ; preds = %.preheader120
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %.not112 = icmp eq ptr %i.e, null
  br i1 %.not112, label %.thread, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %4, 1
  br i1 %i.f, label %.preheader119, label %.lr.ph138.preheader

.preheader119:                                    ; preds = %bb.d, %.preheader119
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %.preheader119 ], [ 0, %bb.d ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv142
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv142
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.h, ptr noundef %i.j) #4
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count
  br i1 %exitcond146.not, label %.preheader117, label %.preheader119

.preheader117:                                    ; preds = %.preheader119, %bb.e
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %bb.e ], [ 1, %.preheader119 ] ; 3 uses
  br label %bb.f

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.k = add nsw i32 %4, -1
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.n, ptr noundef %i.p) #4
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 2)
  %i.q = add nuw i32 %smax, 1
  %wide.trip.count158 = zext i32 %i.q to i64
  br label %.lr.ph

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count
  br i1 %exitcond154.not, label %.lr.ph.preheader, label %.preheader117

bb.f:                                             ; preds = %.preheader117, %bb.f
  %indvars.iv147 = phi i64 [ %wide.trip.count, %.preheader117 ], [ %indvars.iv.next148, %bb.f ] ; 2 uses
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, -1 ; 5 uses
  %i.r = sub nsw i64 %indvars.iv.next148, %indvars.iv150
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.r
  %i.t = load double, ptr %i.s, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next148
  %i.v = load double, ptr %i.u, align 8, !tbaa !42
  %i.w = fsub double %i.t, %i.v
  %i.x = fdiv double 1.000000e+00, %i.w           ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %3, i64 %indvars.iv147
  %i.z = getelementptr i8, ptr %i.y, i64 -16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.ab = fneg double %i.x
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next148
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.x, ptr noundef %i.aa, double noundef %i.ab, ptr noundef %i.ad, ptr noundef %i.ad) #4
  %.not115.not = icmp sgt i64 %indvars.iv.next148, %indvars.iv150
  br i1 %.not115.not, label %bb.f, label %bb.e

.preheader.us.preheader:                          ; preds = %.lr.ph
  %i.ae = add nsw i32 %4, -2
  %i.af = zext nneg i32 %i.ae to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge132.us
  %indvars.iv163 = phi i64 [ %i.af, %.preheader.us.preheader ], [ %indvars.iv.next164, %._crit_edge132.us ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv163 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader.us, %bb.g
  %indvars.iv160 = phi i64 [ %i.l, %.preheader.us ], [ %indvars.iv.next161, %bb.g ] ; 3 uses
  %i.ah = load double, ptr %0, align 8, !tbaa !42
  %i.ai = load double, ptr %i.ag, align 8, !tbaa !42
  %i.aj = fsub double %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv160 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !25 ; 2 uses
  %i.an = trunc nuw i64 %indvars.iv160 to i32     ; 2 uses
  %i.ao = uitofp nneg i32 %i.an to double
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !25
  tail call void @N_VLinearSum(double noundef %i.aj, ptr noundef %i.am, double noundef %i.ao, ptr noundef %i.ap, ptr noundef %i.am) #4
  %indvars.iv.next161 = add nsw i64 %indvars.iv160, -1
  %i.aq = icmp sgt i32 %i.an, 1
  br i1 %i.aq, label %bb.g, label %._crit_edge132.us

._crit_edge132.us:                                ; preds = %bb.g
  %i.ar = load double, ptr %0, align 8, !tbaa !42
  %i.as = load double, ptr %i.ag, align 8, !tbaa !42
  %i.at = fsub double %i.ar, %i.as
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !25  ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv163
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !25
  tail call void @N_VLinearSum(double noundef %i.at, ptr noundef %i.au, double noundef 1.000000e+00, ptr noundef %i.aw, ptr noundef %i.au) #4
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, -1
  %i.ax = trunc nuw i64 %indvars.iv163 to i32
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.preheader.us, label %.lr.ph138.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv155 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next156, %.lr.ph ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv155
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !25
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.ba) #4
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count158
  br i1 %exitcond159.not, label %.preheader.us.preheader, label %.lr.ph

.lr.ph138.preheader:                              ; preds = %._crit_edge132.us, %bb.d
  %i.bb = load ptr, ptr %6, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %1, ptr noundef %i.bb) #4
  %i.bc = load ptr, ptr %2, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bc, ptr noundef %i.be) #4
  %i.bf = add nuw i32 %4, 1
  %wide.trip.count170 = zext i32 %i.bf to i64
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader, %.lr.ph138
  %indvars.iv166 = phi i64 [ 1, %.lr.ph138.preheader ], [ %indvars.iv.next167, %.lr.ph138 ] ; 3 uses
  %.097135 = phi double [ 1.000000e+00, %.lr.ph138.preheader ], [ %i.bj, %.lr.ph138 ]
  %i.bg = trunc nuw nsw i64 %indvars.iv166 to i32
  %i.bh = uitofp nneg i32 %i.bg to double
  %i.bi = fdiv double %5, %i.bh
  %i.bj = fmul double %.097135, %i.bi             ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv166
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !25 ; 2 uses
  tail call void @N_VScale(double noundef %i.bj, ptr noundef %i.bl, ptr noundef %i.bl) #4
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
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %.not128 = icmp eq ptr %i.e, null
  br i1 %.not128, label %.thread, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count180
  br i1 %exitcond181.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv177 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next178, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv177
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %.not130 = icmp eq ptr %i.g, null
  br i1 %.not130, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %i.h = icmp sgt i32 %4, 1
  br i1 %i.h, label %.lr.ph154.preheader, label %.lr.ph173.preheader

.lr.ph154.preheader:                              ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.i = load double, ptr %0, align 8, !tbaa !42  ; 2 uses
  store double %i.i, ptr %i.a, align 16, !tbaa !42
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = shl nuw nsw i64 %wide.trip.count, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr nonnull align 8 %0, i64 %i.j, i1 false), !tbaa !42
  %i.k = load ptr, ptr %1, align 8, !tbaa !25
  %i.l = load ptr, ptr %3, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.k, ptr noundef %i.l) #4
  %i.m = add nuw i32 %4, 1
  %wide.trip.count188 = zext i32 %i.m to i64
  br label %.lr.ph154

.preheader141.lr.ph:                              ; preds = %.lr.ph154
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader141

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %.lr.ph154
  %indvars.iv185 = phi i64 [ 1, %.lr.ph154.preheader ], [ %indvars.iv.next186, %.lr.ph154 ] ; 3 uses
  %i.o = getelementptr [8 x i8], ptr %1, i64 %indvars.iv185
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv185
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.q, ptr noundef %i.s) #4
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next186, %wide.trip.count188
  br i1 %exitcond189.not, label %.preheader141.lr.ph, label %.lr.ph154

.preheader141:                                    ; preds = %.preheader141.lr.ph, %bb.d
  %.0117157 = phi i32 [ 1, %.preheader141.lr.ph ], [ %7, %bb.d ] ; 4 uses
  br label %bb.e

.lr.ph162.preheader:                              ; preds = %bb.d
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %wide.trip.count
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.v = load ptr, ptr %6, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.u, ptr noundef %i.v) #4
  %i.w = add nuw i32 %4, 1
  %wide.trip.count202 = zext i32 %i.w to i64
  br label %.lr.ph162

bb.d:                                             ; preds = %bb.h
  %7 = add nuw i32 %.0117157, 1
  %exitcond197.not = icmp eq i32 %.0117157, %4
  br i1 %exitcond197.not, label %.lr.ph162.preheader, label %.preheader141

bb.e:                                             ; preds = %.preheader141, %bb.h
  %indvars.iv190 = phi i64 [ %wide.trip.count, %.preheader141 ], [ %indvars.iv.next191, %bb.h ] ; 5 uses
  %i.x = icmp eq i64 %indvars.iv190, 1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %2, ptr noundef %i.y) #4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %8 = trunc nuw i64 %indvars.iv190 to i32        ; 2 uses
  %9 = sub nsw i32 %8, %.0117157
  %10 = zext nneg i32 %9 to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %10
  %i.aa = load double, ptr %i.z, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv190
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !42
  %i.ad = fsub double %i.aa, %i.ac
  %i.ae = fdiv double 1.000000e+00, %i.ad         ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %3, i64 %indvars.iv190 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.ai = fneg double %i.ae
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ae, ptr noundef %i.ah, double noundef %i.ai, ptr noundef %i.aj, ptr noundef %i.aj) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pre-phi219 = phi i32 [ 1, %bb.f ], [ %8, %bb.g ]
  %indvars.iv.next191 = add nsw i64 %indvars.iv190, -1
  %.not136.not = icmp sgt i32 %.pre-phi219, %.0117157
  br i1 %.not136.not, label %bb.e, label %bb.d

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %.lr.ph162
  %indvars.iv198 = phi i64 [ 1, %.lr.ph162.preheader ], [ %indvars.iv.next199, %.lr.ph162 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv198
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.al) #4
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count202
  br i1 %exitcond203.not, label %.lr.ph164, label %.lr.ph162

.lr.ph164:                                        ; preds = %.lr.ph162, %._crit_edge165
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %._crit_edge165 ], [ %wide.trip.count, %.lr.ph162 ] ; 2 uses
  %indvars.iv.next208 = add nsw i64 %indvars.iv207, -1 ; 2 uses
  %i.am = and i64 %indvars.iv.next208, 4294967295 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !42
  %i.ap = fsub double %i.i, %i.ao                 ; 2 uses
  br label %bb.i

._crit_edge168:                                   ; preds = %._crit_edge165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.lr.ph173.preheader

._crit_edge165:                                   ; preds = %bb.i
  %.phi.trans.insert218 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.am
  %.pre219 = load ptr, ptr %.phi.trans.insert218, align 8, !tbaa !25
  %i.aq = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ap, ptr noundef %i.aq, double noundef 1.000000e+00, ptr noundef %.pre219, ptr noundef %i.aq) #4
  %i.ar = trunc nuw i64 %indvars.iv207 to i32
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph164, label %._crit_edge168

bb.i:                                             ; preds = %.lr.ph164, %bb.i
  %indvars.iv204 = phi i64 [ %wide.trip.count, %.lr.ph164 ], [ %indvars.iv.next205, %bb.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv204 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25 ; 2 uses
  %i.av = trunc nuw i64 %indvars.iv204 to i32     ; 2 uses
  %i.aw = uitofp nneg i32 %i.av to double
  %i.ax = getelementptr i8, ptr %i.at, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25
  tail call void @N_VLinearSum(double noundef %i.ap, ptr noundef %i.au, double noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.au) #4
  %indvars.iv.next205 = add nsw i64 %indvars.iv204, -1
  %i.az = icmp sgt i32 %i.av, 1
  br i1 %i.az, label %bb.i, label %._crit_edge165

.lr.ph173.preheader:                              ; preds = %._crit_edge, %._crit_edge168
  %i.ba = load ptr, ptr %1, align 8, !tbaa !25
  %i.bb = load ptr, ptr %6, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ba, ptr noundef %i.bb) #4
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !25
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %2, ptr noundef %i.bd) #4
  %i.be = add nuw i32 %4, 1
  %wide.trip.count215 = zext i32 %i.be to i64
  br label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.preheader, %.lr.ph173
  %indvars.iv210 = phi i64 [ 1, %.lr.ph173.preheader ], [ %indvars.iv.next211, %.lr.ph173 ] ; 3 uses
  %.0111170 = phi double [ 1.000000e+00, %.lr.ph173.preheader ], [ %i.bi, %.lr.ph173 ]
  %i.bf = trunc nuw nsw i64 %indvars.iv210 to i32
  %i.bg = uitofp nneg i32 %i.bf to double
  %i.bh = fdiv double %5, %i.bg
  %i.bi = fmul double %.0111170, %i.bh            ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv210
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !25 ; 2 uses
  tail call void @N_VScale(double noundef %i.bi, ptr noundef %i.bk, ptr noundef %i.bk) #4
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
  %i.a = load ptr, ptr %1, align 8, !tbaa !25
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 960}
!9 = !{!"CVodeMemRec", !10, i64 0, !11, i64 8, !12, i64 16, !11, i64 24, !11, i64 32, !5, i64 40, !5, i64 44, !12, i64 48, !12, i64 56, !13, i64 64, !5, i64 72, !5, i64 76, !11, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !5, i64 112, !5, i64 116, !12, i64 120, !12, i64 128, !13, i64 136, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !11, i64 160, !11, i64 168, !11, i64 176, !5, i64 184, !5, i64 188, !14, i64 192, !14, i64 200, !15, i64 208, !5, i64 216, !12, i64 224, !5, i64 232, !5, i64 236, !12, i64 240, !14, i64 248, !16, i64 256, !15, i64 264, !5, i64 272, !11, i64 280, !11, i64 288, !5, i64 296, !5, i64 300, !5, i64 304, !12, i64 312, !14, i64 320, !16, i64 328, !15, i64 336, !6, i64 344, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !13, i64 488, !13, i64 496, !13, i64 504, !6, i64 512, !13, i64 616, !13, i64 624, !13, i64 632, !13, i64 640, !6, i64 648, !16, i64 752, !16, i64 760, !16, i64 768, !16, i64 776, !16, i64 784, !5, i64 792, !6, i64 800, !16, i64 904, !16, i64 912, !16, i64 920, !16, i64 928, !13, i64 936, !5, i64 944, !5, i64 948, !12, i64 952, !5, i64 960, !5, i64 964, !5, i64 968, !5, i64 972, !5, i64 976, !12, i64 984, !12, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !6, i64 1048, !6, i64 1160, !6, i64 1208, !12, i64 1312, !12, i64 1320, !12, i64 1328, !12, i64 1336, !12, i64 1344, !12, i64 1352, !12, i64 1360, !12, i64 1368, !12, i64 1376, !12, i64 1384, !5, i64 1392, !12, i64 1400, !12, i64 1408, !5, i64 1416, !12, i64 1424, !12, i64 1432, !15, i64 1440, !5, i64 1448, !18, i64 1456, !5, i64 1464, !5, i64 1468, !5, i64 1472, !12, i64 1480, !12, i64 1488, !12, i64 1496, !12, i64 1504, !12, i64 1512, !12, i64 1520, !12, i64 1528, !12, i64 1536, !12, i64 1544, !12, i64 1552, !12, i64 1560, !12, i64 1568, !18, i64 1576, !5, i64 1584, !18, i64 1592, !18, i64 1600, !18, i64 1608, !18, i64 1616, !18, i64 1624, !18, i64 1632, !18, i64 1640, !18, i64 1648, !18, i64 1656, !19, i64 1664, !18, i64 1672, !18, i64 1680, !19, i64 1688, !18, i64 1696, !18, i64 1704, !19, i64 1712, !18, i64 1720, !18, i64 1728, !18, i64 1736, !18, i64 1744, !18, i64 1752, !18, i64 1760, !5, i64 1768, !12, i64 1776, !12, i64 1784, !12, i64 1792, !18, i64 1800, !18, i64 1808, !18, i64 1816, !18, i64 1824, !18, i64 1832, !18, i64 1840, !20, i64 1848, !5, i64 1856, !20, i64 1864, !5, i64 1872, !20, i64 1880, !5, i64 1888, !20, i64 1896, !5, i64 1904, !5, i64 1908, !18, i64 1912, !5, i64 1920, !11, i64 1928, !5, i64 1936, !13, i64 1944, !13, i64 1952, !13, i64 1960, !13, i64 1968, !13, i64 1976, !13, i64 1984, !5, i64 1992, !5, i64 1996, !11, i64 2000, !11, i64 2008, !11, i64 2016, !11, i64 2024, !11, i64 2032, !11, i64 2040, !18, i64 2048, !12, i64 2056, !5, i64 2064, !5, i64 2068, !18, i64 2072, !12, i64 2080, !12, i64 2088, !12, i64 2096, !5, i64 2104, !5, i64 2108, !12, i64 2112, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !5, i64 2160, !5, i64 2164, !5, i64 2168, !5, i64 2172, !5, i64 2176, !5, i64 2180, !11, i64 2184, !18, i64 2192, !5, i64 2200, !6, i64 2208, !5, i64 2400, !18, i64 2408, !11, i64 2416, !5, i64 2424, !15, i64 2432, !15, i64 2440, !12, i64 2448, !12, i64 2456, !12, i64 2464, !14, i64 2472, !14, i64 2480, !14, i64 2488, !12, i64 2496, !5, i64 2504, !18, i64 2512, !15, i64 2520, !5, i64 2528, !13, i64 2536, !18, i64 2544, !18, i64 2552, !5, i64 2560, !21, i64 2568, !5, i64 2576, !5, i64 2580, !6, i64 2584, !14, i64 2688, !16, i64 2696, !16, i64 2704, !5, i64 2712, !5, i64 2716, !22, i64 2720, !5, i64 2728}
!10 = !{!"p1 _ZTS11SUNContext_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!14 = !{!"p1 double", !11, i64 0}
!15 = !{!"p1 int", !11, i64 0}
!16 = !{!"p2 _ZTS17_generic_N_Vector", !17, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!"p1 long", !11, i64 0}
!20 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !11, i64 0}
!21 = !{!"p1 _ZTS15CVodeProjMemRec", !11, i64 0}
!22 = !{!"p1 _ZTS11CVadjMemRec", !11, i64 0}
!23 = !{!9, !5, i64 1448}
!24 = !{!9, !5, i64 40}
!25 = !{!13, !13, i64 0}
!26 = !{!9, !13, i64 448}
!27 = !{!9, !13, i64 464}
!28 = !{!9, !13, i64 472}
!29 = !{!9, !13, i64 480}
!30 = !{!9, !13, i64 488}
!31 = !{!9, !13, i64 496}
!32 = !{!9, !13, i64 504}
!33 = !{!9, !5, i64 2140}
!34 = !{!9, !13, i64 64}
!35 = !{!9, !13, i64 2536}
!36 = !{!9, !5, i64 2120}
!37 = !{!9, !20, i64 1848}
!38 = !{!9, !5, i64 1856}
!39 = !{!9, !10, i64 0}
!40 = !{!9, !5, i64 964}
!41 = !{!9, !12, i64 1024}
!42 = !{!12, !12, i64 0}
!43 = !{!9, !12, i64 1032}
!44 = !{!45}
!45 = distinct !{!45, !46}
!46 = distinct !{!46, !"LVerDomain"}
!47 = !{!48}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!9, !5, i64 2712}
!55 = distinct !{!55, !50}
end_hunk_0
