inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@KINBBDPrecSetup:bb.a
  %i.cc = tail call ptr @SUNBandMatrix_Column(ptr noundef %i.cb, i64 noundef %.1130.i) #8 ; 3 uses
  %i.cd = ptrtoaddr ptr %i.cc to i64              ; 2 uses
  %i.ce = load double, ptr %i.aq, align 8, !tbaa !44
  %i.cf = load double, ptr %i.by, align 8, !tbaa !66
  %i.cg = tail call double @llvm.fabs.f64(double %i.cf) ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.1130.i
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !66
  %i.cj = fdiv double 1.000000e+00, %i.ci         ; 2 uses
  %i.ck = fcmp ogt double %i.cg, %i.cj
  %.123.i = select i1 %i.ck, double %i.cg, double %i.cj
  %i.cl = fmul double %i.ce, %.123.i
  %i.cm = fdiv double 1.000000e+00, %i.cl         ; 2 uses
  %i.cn = load i64, ptr %i.ar, align 8, !tbaa !33
  %i.co = sub nsw i64 %.1130.i, %i.cn
  %i.cp = tail call i64 @llvm.smax.i64(i64 %i.co, i64 0) ; 6 uses
  %i.cq = load i64, ptr %i.as, align 8, !tbaa !34
  %i.cr = add nsw i64 %i.cq, %.1130.i
  %i.cs = load i64, ptr %i.ac, align 8, !tbaa !45 ; 3 uses
  %i.ct = add nsw i64 %i.cs, -1
  %i.cu = tail call i64 @llvm.smin.i64(i64 %i.cr, i64 %i.ct) ; 3 uses
  %.not121125.i = icmp sgt i64 %i.cp, %i.cu
  br i1 %.not121125.i, label %._crit_edge129.i, label %.lr.ph128.i.preheader

.lr.ph128.i.preheader:                            ; preds = %.lr.ph131.i
  %i.cv = add i64 %i.cu, 1
  %i.cw = sub i64 %i.cv, %i.cp                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cw, 4
  br i1 %min.iters.check, label %.lr.ph128.i.preheader32, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph128.i.preheader
  %i.cx = add i64 %i.bw, %i.cd
  %i.cy = add i64 %i.cx, -1
  %diff.check = icmp ult i64 %i.cy, 31
  %i.cz = add i64 %i.bx, %i.cd
  %i.da = add i64 %i.cz, -1
  %diff.check28 = icmp ult i64 %i.da, 31
  %conflict.rdx = or i1 %diff.check, %diff.check28
  br i1 %conflict.rdx, label %.lr.ph128.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cw, -4                      ; 3 uses
  %i.db = add i64 %i.cp, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = add nuw i64 %i.cp, %index               ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load = load <2 x double>, ptr %i.dd, align 8, !tbaa !66
  %wide.load29 = load <2 x double>, ptr %i.de, align 8, !tbaa !66
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.dc ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load30 = load <2 x double>, ptr %i.df, align 8, !tbaa !66
  %wide.load31 = load <2 x double>, ptr %i.dg, align 8, !tbaa !66
  %i.dh = fsub <2 x double> %wide.load, %wide.load30
  %i.di = fsub <2 x double> %wide.load29, %wide.load31
  %i.dj = fmul <2 x double> %broadcast.splat, %i.dh
  %i.dk = fmul <2 x double> %broadcast.splat, %i.di
  %i.dl = sub nsw i64 %i.dc, %.1130.i
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <2 x double> %i.dj, ptr %i.dm, align 8, !tbaa !66
  store <2 x double> %i.dk, ptr %i.dn, align 8, !tbaa !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %._crit_edge129.i, label %.lr.ph128.i.preheader32

.lr.ph128.i.preheader32:                          ; preds = %vector.memcheck, %.lr.ph128.i.preheader, %middle.block
  %.0101126.i.ph = phi i64 [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph128.i.preheader ], [ %i.db, %middle.block ]
  br label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %.lr.ph128.i.preheader32, %.lr.ph128.i
  %.0101126.i = phi i64 [ %i.dx, %.lr.ph128.i ], [ %.0101126.i.ph, %.lr.ph128.i.preheader32 ] ; 5 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0101126.i
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !66
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0101126.i
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !66
  %i.dt = fsub double %i.dq, %i.ds
  %i.du = fmul double %i.cm, %i.dt
  %i.dv = sub nsw i64 %.0101126.i, %.1130.i
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.dv
  store double %i.du, ptr %i.dw, align 8, !tbaa !66
  %i.dx = add nuw nsw i64 %.0101126.i, 1
  %.not121.not.i = icmp slt i64 %.0101126.i, %i.cu
  br i1 %.not121.not.i, label %.lr.ph128.i, label %._crit_edge129.i, !llvm.loop !70

._crit_edge129.i:                                 ; preds = %.lr.ph128.i, %middle.block, %.lr.ph131.i
  %i.dy = add nsw i64 %.1130.i, %i.ao             ; 2 uses
  %i.dz = icmp slt i64 %i.dy, %i.cs
  %indvar.next27 = add i64 %indvar26, 1
  br i1 %i.dz, label %.lr.ph131.i, label %._crit_edge132.i

._crit_edge132.i:                                 ; preds = %._crit_edge129.i, %.preheader.i
  %i.ea = phi i64 [ %i.bu, %.preheader.i ], [ %i.cs, %._crit_edge129.i ]
  %i.eb = add nuw i64 %.0100134.i, 1
  %exitcond.not.i = icmp eq i64 %.0100134.i, %..i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i, label %KBBDDQJac.exit, label %bb.g

.loopexit:                                        ; preds = %._crit_edge.i, %bb.e, %bb.d
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef %i.b, i32 noundef -1, i32 noundef 430, ptr noundef nonnull @__func__.KINBBDPrecSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #8
  br label %bb.h

KBBDDQJac.exit:                                   ; preds = %._crit_edge132.i, %bb.f
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !42
  %i.ee = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.ef = tail call i32 @SUNLinSolSetup_Band(ptr noundef %i.ed, ptr noundef %i.ee) #8
  br label %bb.h

bb.h:                                             ; preds = %KBBDDQJac.exit, %.loopexit, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %.loopexit ], [ %i.ef, %KBBDDQJac.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @KINBBDPrecSolve(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %4) #8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = tail call ptr @N_VGetArrayPointer(ptr noundef %i.c) #8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  tail call void @N_VSetArrayPointer(ptr noundef %i.a, ptr noundef %i.f) #8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.m = tail call i32 @SUNLinSolSolve(ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, double noundef 0.000000e+00) #8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !45   ; 7 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.q = ptrtoaddr ptr %i.d to i64
  %i.r = ptrtoaddr ptr %i.a to i64
  %min.iters.check = icmp ult i64 %i.o, 8
  %i.s = sub i64 %i.q, %i.r
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.o, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x double>, ptr %i.t, align 8, !tbaa !66
  %wide.load19 = load <2 x double>, ptr %i.u, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x double> %wide.load, ptr %i.v, align 8, !tbaa !66
  store <2 x double> %wide.load19, ptr %i.w, align 8, !tbaa !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader20

.lr.ph.preheader20:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader20, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader20 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader20 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.prol
  %i.z = load double, ptr %i.y, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.prol
  store double %i.z, ptr %i.aa, align 8, !tbaa !66
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !72

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader20
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader20 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %i.o
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !66
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store double %i.ae, ptr %i.af, align 8, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.ag = load double, ptr %6, align 8, !tbaa !66
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store double %i.ag, ptr %i.ah, align 8, !tbaa !66
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.ai = load double, ptr %7, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store double %i.ai, ptr %i.aj, align 8, !tbaa !66
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.ak = load double, ptr %8, align 8, !tbaa !66
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store double %i.ak, ptr %i.al, align 8, !tbaa !66
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.o
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret i32 %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @KINBBDPrecGetWorkSpace(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, i32 noundef 310, ptr noundef nonnull @__func__.KINBBDPrecGetWorkSpace, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 318, ptr noundef nonnull @__func__.KINBBDPrecGetWorkSpace, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -5, i32 noundef 326, ptr noundef nonnull @__func__.KINBBDPrecGetWorkSpace, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  store i64 %i.i, ptr %1, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.k = load i64, ptr %i.j, align 8, !tbaa !49
  store i64 %i.k, ptr %2, align 8, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -5, %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @KINBBDPrecGetNumGfnEvals(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, i32 noundef 349, ptr noundef nonnull @__func__.KINBBDPrecGetNumGfnEvals, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 357, ptr noundef nonnull @__func__.KINBBDPrecGetNumGfnEvals, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -5, i32 noundef 365, ptr noundef nonnull @__func__.KINBBDPrecGetNumGfnEvals, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60
  store i64 %i.i, ptr %1, align 8, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -5, %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

declare i32 @SUNMatZero(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolSetup_Band(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

declare ptr @SUNBandMatrix_Column(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @N_VSetArrayPointer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!8 = !{!9, !11, i64 624}
!9 = !{!"KINMemRec", !10, i64 0, !11, i64 8, !12, i64 16, !11, i64 24, !11, i64 32, !12, i64 40, !12, i64 48, !5, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !5, i64 200, !12, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !5, i64 360, !5, i64 364, !12, i64 368, !14, i64 376, !14, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !12, i64 416, !17, i64 424, !17, i64 432, !17, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !11, i64 480, !11, i64 488, !5, i64 496, !13, i64 504, !11, i64 512, !18, i64 520, !5, i64 528, !5, i64 532, !17, i64 536, !15, i64 544, !13, i64 552, !13, i64 560, !13, i64 568, !13, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !5, i64 616, !11, i64 624, !12, i64 632, !12, i64 640, !12, i64 648, !12, i64 656, !12, i64 664, !5, i64 672, !12, i64 680, !12, i64 688, !12, i64 696, !5, i64 704}
!10 = !{!"p1 _ZTS11SUNContext_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!15 = !{!"p2 _ZTS17_generic_N_Vector", !16, i64 0}
!16 = !{!"any p2 pointer", !11, i64 0}
!17 = !{!"p1 double", !11, i64 0}
!18 = !{!"p1 _ZTS10_SUNQRData", !11, i64 0}
!19 = !{!9, !14, i64 336}
!20 = !{!21, !22, i64 8}
!21 = !{!"_generic_N_Vector", !11, i64 0, !22, i64 8, !10, i64 16}
!22 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !11, i64 0}
!23 = !{!24, !11, i64 40}
!24 = !{!"_generic_N_Vector_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440}
!25 = !{!26, !11, i64 144}
!26 = !{!"KBBDPrecDataRec", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !12, i64 32, !11, i64 40, !11, i64 48, !13, i64 56, !27, i64 64, !28, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !11, i64 144}
!27 = !{!"p1 _ZTS18_generic_SUNMatrix", !11, i64 0}
!28 = !{!"p1 _ZTS24_generic_SUNLinearSolver", !11, i64 0}
!29 = !{!26, !11, i64 40}
!30 = !{!26, !11, i64 48}
!31 = !{!26, !13, i64 0}
!32 = !{!26, !13, i64 8}
!33 = !{!26, !13, i64 16}
!34 = !{!26, !13, i64 24}
!35 = !{!26, !27, i64 64}
!36 = !{!9, !10, i64 0}
!37 = !{!26, !14, i64 88}
!38 = !{!26, !14, i64 80}
!39 = !{!26, !14, i64 96}
!40 = !{!26, !14, i64 104}
!41 = !{!26, !14, i64 112}
!42 = !{!26, !28, i64 72}
!43 = !{!9, !12, i64 16}
!44 = !{!26, !12, i64 32}
!45 = !{!26, !13, i64 56}
!46 = !{!24, !11, i64 32}
!47 = !{!13, !13, i64 0}
!48 = !{!26, !13, i64 120}
!49 = !{!26, !13, i64 128}
!50 = !{!51, !52, i64 8}
!51 = !{!"_generic_SUNMatrix", !11, i64 0, !52, i64 8, !10, i64 16}
!52 = !{!"p1 _ZTS22_generic_SUNMatrix_Ops", !11, i64 0}
!53 = !{!54, !11, i64 80}
!54 = !{!"_generic_SUNMatrix_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80}
!55 = !{!56, !57, i64 16}
!56 = !{!"_generic_SUNLinearSolver", !11, i64 0, !11, i64 8, !57, i64 16, !10, i64 24}
!57 = !{!"p1 _ZTS28_generic_SUNLinearSolver_Ops", !11, i64 0}
!58 = !{!59, !11, i64 104}
!59 = !{!"_generic_SUNLinearSolver_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120}
!60 = !{!26, !13, i64 136}
!61 = !{!62, !11, i64 136}
!62 = !{!"KINLsMemRec", !5, i64 0, !5, i64 4, !5, i64 8, !11, i64 16, !11, i64 24, !28, i64 32, !27, i64 40, !12, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !5, i64 112, !5, i64 116, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !5, i64 152, !11, i64 160, !11, i64 168, !11, i64 176}
end_hunk_0
