Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_interp?download=true
inline.NumInlined: 17
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@arkInterpInit_Lagrange:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !58
  %i.ci = tail call i32 @N_VConstVectorArray(i32 noundef %i.ca, double noundef 0.000000e+00, ptr noundef %i.ch) #14
  %.not62 = icmp eq i32 %i.ci, 0
  br i1 %.not62, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge75
  %i.cj = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !61
  store double %2, ptr %i.cl, align 8, !tbaa !49
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !42
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !58
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !50
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.cn, ptr noundef %i.cq) #14
  %i.cr = load ptr, ptr %1, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store i32 1, ptr %i.cs, align 8, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge75, %bb.o, %arkInterpFree.exit66, %arkInterpFree.exit65, %arkInterpFree.exit
  %.057 = phi i32 [ -20, %arkInterpFree.exit ], [ -20, %arkInterpFree.exit65 ], [ -20, %arkInterpFree.exit66 ], [ 0, %bb.o ], [ -28, %._crit_edge75 ]
  ret i32 %.057
}

; Function Attrs: nounwind uwtable
define noundef i32 @arkInterpUpdate_Lagrange(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !20     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60   ; 4 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !55   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !56
  %i.k = fmul double %i.j, 1.000000e+02
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.m = load double, ptr %i.l, align 8, !tbaa !34
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.p = load double, ptr %i.o, align 8, !tbaa !48
  %i.q = tail call double @llvm.fabs.f64(double %i.p)
  %i.r = fadd double %i.n, %i.q
  %i.s = fmul double %i.k, %i.r                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %i.s, ptr %i.t, align 8, !tbaa !57
  %i.u = load double, ptr %i.f, align 8, !tbaa !49
  %i.v = fsub double %2, %i.u
  %i.w = tail call double @llvm.fabs.f64(double %i.v) ; 3 uses
  %i.x = icmp sgt i32 %i.c, 1
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.c to i64
  %i.y = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.y, 1
  %i.z = icmp eq i32 %i.c, 2
  br i1 %i.z, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.y, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.052 = phi double [ %i.w, %.lr.ph.preheader.new ], [ %.0..1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !49
  %i.ac = fsub double %2, %i.ab
  %i.ad = tail call double @llvm.fabs.f64(double %i.ac) ; 2 uses
  %i.ae = fcmp olt double %.052, %i.ad
  %.0. = select i1 %i.ae, double %.052, double %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !49
  %i.ai = fsub double %2, %i.ah
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai) ; 2 uses
  %i.ak = fcmp olt double %.0., %i.aj
  %.0..1 = select i1 %i.ak, double %.0., double %i.aj ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.052.epil.init = phi double [ %i.w, %.lr.ph.preheader ], [ %.0..1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod66 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil.init
  %i.am = load double, ptr %i.al, align 8, !tbaa !49
  %i.an = fsub double %2, %i.am
  %i.ao = tail call double @llvm.fabs.f64(double %i.an) ; 2 uses
  %i.ap = fcmp olt double %.052.epil.init, %i.ao
  %.0..epil = select i1 %i.ap, double %.052.epil.init, double %i.ao
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi double [ %i.w, %bb.a ], [ %.0..1, %._crit_edge.loopexit.unr-lcssa ], [ %.0..epil, %.lr.ph.epil.preheader ]
  %i.aq = fcmp ugt double %.0.lcssa, %i.s
  br i1 %i.aq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.ar = add nsw i32 %i.d, -1                    ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50 ; 2 uses
  %i.av = icmp sgt i32 %i.d, 1
  br i1 %i.av, label %.lr.ph55.preheader, label %._crit_edge56

.lr.ph55.preheader:                               ; preds = %bb.b
  %i.aw = zext i32 %i.ar to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.d, 5
  br i1 %min.iters.check, label %.lr.ph55.preheader64, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph55.preheader
  %n.vec = and i64 %i.aw, 4294967292              ; 2 uses
  %i.ax = and i64 %i.aw, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = sub i64 %i.aw, %index                   ; 3 uses
  %i.az = add nsw i64 %i.ay, -1                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -24
  %wide.load = load <2 x double>, ptr %i.bb, align 8, !tbaa !49
  %wide.load61 = load <2 x double>, ptr %i.bc, align 8, !tbaa !49
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ay ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -24
  store <2 x double> %wide.load, ptr %i.be, align 8, !tbaa !49
  store <2 x double> %wide.load61, ptr %i.bf, align 8, !tbaa !49
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.az ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -24
  %wide.load62 = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !50
  %wide.load63 = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !50
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ay ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -24
  store <2 x ptr> %wide.load62, ptr %i.bk, align 8, !tbaa !50
  store <2 x ptr> %wide.load63, ptr %i.bl, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aw
  br i1 %cmp.n, label %._crit_edge56, label %.lr.ph55.preheader64

.lr.ph55.preheader64:                             ; preds = %.lr.ph55.preheader, %middle.block
  %indvars.iv58.ph = phi i64 [ %i.aw, %.lr.ph55.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.preheader64, %.lr.ph55
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %.lr.ph55 ], [ %indvars.iv58.ph, %.lr.ph55.preheader64 ] ; 4 uses
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, -1 ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next59
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !49
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv58
  store double %i.bo, ptr %i.bp, align 8, !tbaa !49
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next59
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !50
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv58
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !50
  %i.bt = icmp samesign ugt i64 %indvars.iv58, 1
  br i1 %i.bt, label %.lr.ph55, label %._crit_edge56, !llvm.loop !67

._crit_edge56:                                    ; preds = %.lr.ph55, %middle.block, %bb.b
  store ptr %i.au, ptr %i.h, align 8, !tbaa !50
  store double %2, ptr %i.f, align 8, !tbaa !49
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !68
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bv, ptr noundef %i.au) #14
  %i.bw = add nsw i32 %i.c, 1
  %i.bx = tail call i32 @llvm.smin.i32(i32 %i.bw, i32 %i.d)
  %i.by = load ptr, ptr %1, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store i32 %i.bx, ptr %i.bz, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %._crit_edge56
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -28, 1) i32 @arkInterpEvaluate_Lagrange(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, double noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 9 uses
  %i.b = alloca [6 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = load ptr, ptr %1, align 8, !tbaa !20     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60   ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61   ; 33 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 5 uses
  %i.j = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %i.k = add i32 %i.e, -1
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.k) ; 5 uses
  %or.cond = icmp ugt i32 %3, 3
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -22, i32 noundef 1211, ptr noundef nonnull @__func__.arkInterpEvaluate_Lagrange, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #14
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %3, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %5) #14
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %i.l, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !50
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.o, ptr noundef %5) #14
  br label %bb.al

bb.g:                                             ; preds = %bb.e
  %i.p = load double, ptr %i.g, align 8, !tbaa !49 ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !49 ; 13 uses
  %i.s = fsub double %i.p, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %2, double %i.s, double %i.p) ; 27 uses
  %i.u = icmp eq i32 %i.l, 1
  br i1 %i.u, label %bb.h, label %.preheader153

.preheader153:                                    ; preds = %bb.g
  %.not154 = icmp slt i32 %i.e, 1                 ; 5 uses
  %.pre = add nuw i32 %i.l, 1                     ; 6 uses
  br i1 %.not154, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader153
  %wide.trip.count = zext i32 %.pre to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.l, 3
  br i1 %min.iters.check, label %.lr.ph.prol.loopexit, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x double> zeroinitializer, ptr %i.v, align 16, !tbaa !49
  store <2 x double> zeroinitializer, ptr %i.w, align 16, !tbaa !49
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x ptr>, ptr %i.x, align 8, !tbaa !50
  %wide.load232 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x ptr> %wide.load, ptr %i.z, align 16, !tbaa !50
  store <2 x ptr> %wide.load232, ptr %i.aa, align 16, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %.lr.ph.prol, label %vector.body, !llvm.loop !69

.lr.ph.prol:                                      ; preds = %vector.body
  %prol.iter.cmp.not = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %prol.iter.cmp.not, label %._crit_edge, label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.unr = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %.lr.ph.prol ]
  br label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp eq i32 %3, 0
  %i.ad = icmp sgt i32 %i.e, 0                    ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %i.ad, label %bb.j, label %LBasis.exit93

bb.j:                                             ; preds = %bb.i
  %exitcond.not.i.peel = icmp eq i32 %i.e, 1
  br i1 %exitcond.not.i.peel, label %.thread, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.j
  %wide.trip.count.i = zext nneg i32 %i.e to i64  ; 2 uses
  %i.ae = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.af = add nsw i64 %wide.trip.count.i, -2      ; 3 uses
  %xtraiter265 = and i64 %i.ae, 3                 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 3
  br i1 %i.ag, label %.peel.next.epil.preheader, label %.peel.next.preheader.new

.peel.next.preheader.new:                         ; preds = %.peel.next.preheader
  %unroll_iter269 = and i64 %i.ae, -4
  br label %.peel.next

.thread:                                          ; preds = %bb.j
  %i.ah = fsub double %i.t, %i.p
  %i.ai = fsub double %i.r, %i.p
  %i.aj = fdiv double %i.ah, %i.ai
  br label %LBasis.exit93

.peel.next:                                       ; preds = %.peel.next, %.peel.next.preheader.new
  %indvars.iv.i = phi i64 [ 1, %.peel.next.preheader.new ], [ %indvars.iv.next.i.3, %.peel.next ] ; 5 uses
  %.016.i = phi double [ 1.000000e+00, %.peel.next.preheader.new ], [ %i.bk, %.peel.next ]
  %niter270 = phi i64 [ 0, %.peel.next.preheader.new ], [ %niter270.next.3, %.peel.next ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.al = load double, ptr %i.ak, align 8, !tbaa !49 ; 2 uses
  %i.am = fsub double %i.t, %i.al
  %i.an = fsub double %i.p, %i.al
  %i.ao = fdiv double %i.am, %i.an
  %i.ap = fmul double %.016.i, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !49 ; 2 uses
  %i.at = fsub double %i.t, %i.as
  %i.au = fsub double %i.p, %i.as
  %i.av = fdiv double %i.at, %i.au
  %i.aw = fmul double %i.ap, %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !49 ; 2 uses
  %i.ba = fsub double %i.t, %i.az
  %i.bb = fsub double %i.p, %i.az
  %i.bc = fdiv double %i.ba, %i.bb
  %i.bd = fmul double %i.aw, %i.bc
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !49 ; 2 uses
  %i.bh = fsub double %i.t, %i.bg
  %i.bi = fsub double %i.p, %i.bg
  %i.bj = fdiv double %i.bh, %i.bi
  %i.bk = fmul double %i.bd, %i.bj                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter270.next.3 = add nuw i64 %niter270, 4     ; 2 uses
  %niter270.ncmp.3 = icmp eq i64 %niter270.next.3, %unroll_iter269
  br i1 %niter270.ncmp.3, label %.unr-lcssa, label %.peel.next, !llvm.loop !70

.unr-lcssa:                                       ; preds = %.peel.next
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.epilog-lcssa, label %.peel.next.epil.preheader

.peel.next.epil.preheader:                        ; preds = %.unr-lcssa, %.peel.next.preheader
  %indvars.iv.i.epil.init = phi i64 [ 1, %.peel.next.preheader ], [ %indvars.iv.next.i.3, %.unr-lcssa ]
  %.016.i.epil.init = phi double [ 1.000000e+00, %.peel.next.preheader ], [ %i.bk, %.unr-lcssa ]
  %lcmp.mod268 = icmp ne i64 %xtraiter265, 0
  tail call void @llvm.assume(i1 %lcmp.mod268)
  br label %.peel.next.epil

.peel.next.epil:                                  ; preds = %.peel.next.epil, %.peel.next.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.peel.next.epil ], [ %indvars.iv.i.epil.init, %.peel.next.epil.preheader ] ; 2 uses
  %.016.i.epil = phi double [ %i.bq, %.peel.next.epil ], [ %.016.i.epil.init, %.peel.next.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.peel.next.epil ], [ 0, %.peel.next.epil.preheader ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.epil
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !49 ; 2 uses
  %i.bn = fsub double %i.t, %i.bm
  %i.bo = fsub double %i.p, %i.bm
  %i.bp = fdiv double %i.bn, %i.bo
  %i.bq = fmul double %.016.i.epil, %i.bp         ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter265
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.peel.next.epil, !llvm.loop !71

.epilog-lcssa:                                    ; preds = %.peel.next.epil, %.unr-lcssa
  %.lcssa234 = phi double [ %i.bk, %.unr-lcssa ], [ %i.bq, %.peel.next.epil ] ; 3 uses
  %i.br = fsub double %i.t, %i.p
  %i.bs = fsub double %i.r, %i.p
  %i.bt = fdiv double %i.br, %i.bs                ; 3 uses
  %exitcond.not.i92.peel209 = icmp eq i32 %i.e, 2
  br i1 %exitcond.not.i92.peel209, label %LBasis.exit93, label %.peel.next206.preheader

.peel.next206.preheader:                          ; preds = %.epilog-lcssa
  %xtraiter271 = and i64 %i.af, 3                 ; 3 uses
  %i.bu = add nsw i32 %i.e, -3
  %i.bv = icmp ult i32 %i.bu, 3
  br i1 %i.bv, label %.peel.next206.epil.preheader, label %.peel.next206.preheader.new

.peel.next206.preheader.new:                      ; preds = %.peel.next206.preheader
  %unroll_iter276 = and i64 %i.af, -4
  br label %.peel.next206

.peel.next206:                                    ; preds = %.peel.next206, %.peel.next206.preheader.new
  %indvars.iv.i88 = phi i64 [ 2, %.peel.next206.preheader.new ], [ %indvars.iv.next.i91.3, %.peel.next206 ] ; 5 uses
  %.016.i89 = phi double [ %i.bt, %.peel.next206.preheader.new ], [ %i.cw, %.peel.next206 ]
  %niter277 = phi i64 [ 0, %.peel.next206.preheader.new ], [ %niter277.next.3, %.peel.next206 ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i88
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !49 ; 2 uses
  %i.by = fsub double %i.t, %i.bx
  %i.bz = fsub double %i.r, %i.bx
  %i.ca = fdiv double %i.by, %i.bz
  %i.cb = fmul double %.016.i89, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i88
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !49 ; 2 uses
  %i.cf = fsub double %i.t, %i.ce
  %i.cg = fsub double %i.r, %i.ce
  %i.ch = fdiv double %i.cf, %i.cg
  %i.ci = fmul double %i.cb, %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i88
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !49 ; 2 uses
  %i.cm = fsub double %i.t, %i.cl
  %i.cn = fsub double %i.r, %i.cl
  %i.co = fdiv double %i.cm, %i.cn
  %i.cp = fmul double %i.ci, %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i88
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !49 ; 2 uses
  %i.ct = fsub double %i.t, %i.cs
  %i.cu = fsub double %i.r, %i.cs
  %i.cv = fdiv double %i.ct, %i.cu
  %i.cw = fmul double %i.cp, %i.cv                ; 3 uses
  %indvars.iv.next.i91.3 = add nuw nsw i64 %indvars.iv.i88, 4 ; 2 uses
  %niter277.next.3 = add nuw i64 %niter277, 4     ; 2 uses
  %niter277.ncmp.3 = icmp eq i64 %niter277.next.3, %unroll_iter276
  br i1 %niter277.ncmp.3, label %LBasis.exit93.loopexit.unr-lcssa, label %.peel.next206, !llvm.loop !72

bb.k:                                             ; preds = %bb.h
  br i1 %i.ad, label %.lr.ph36.split.us.preheader.i, label %LBasis.exit93

.lr.ph36.split.us.preheader.i:                    ; preds = %bb.k
  %wide.trip.count44.i = zext nneg i32 %i.e to i64 ; 5 uses
  %exitcond.not.i96.peel = icmp eq i32 %i.e, 1
  %i.cx = add nsw i64 %wide.trip.count44.i, -1    ; 3 uses
  %i.cy = add nsw i64 %wide.trip.count44.i, -2    ; 2 uses
  %xtraiter253 = and i64 %i.cx, 1
  %i.cz = icmp eq i64 %i.cy, 0
  %unroll_iter257 = and i64 %i.cx, -2
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  %lcmp.mod256 = trunc i64 %i.cx to i1
  br label %.lr.ph36.split.us.i

.lr.ph36.split.us.i:                              ; preds = %bb.o, %.lr.ph36.split.us.preheader.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph36.split.us.preheader.i ], [ %indvars.iv.next42.i, %bb.o ] ; 6 uses
  %.02634.us.i = phi double [ 0.000000e+00, %.lr.ph36.split.us.preheader.i ], [ %.127.us.i, %bb.o ] ; 2 uses
  %i.da = icmp eq i64 %indvars.iv41.i, 0
  br i1 %i.da, label %bb.o, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph36.split.us.i
  br i1 %exitcond.not.i96.peel, label %._crit_edge.us.i, label %.preheader.us.i.preheader237

.preheader.us.i.preheader237:                     ; preds = %.preheader.us.i.preheader
  br i1 %i.cz, label %.preheader.us.i.epil.preheader, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader237, %bb.n
  %indvars.iv.i94 = phi i64 [ %indvars.iv.next.i95.1, %bb.n ], [ 1, %.preheader.us.i.preheader237 ] ; 4 uses
  %.032.us.i = phi double [ %.1.us.i.1, %bb.n ], [ 1.000000e+00, %.preheader.us.i.preheader237 ] ; 2 uses
  %niter258 = phi i64 [ %niter258.next.1, %bb.n ], [ 0, %.preheader.us.i.preheader237 ]
  %i.db = icmp eq i64 %indvars.iv.i94, %indvars.iv41.i
  br i1 %i.db, label %.preheader.us.i.1, label %bb.l

bb.l:                                             ; preds = %.preheader.us.i
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i94
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !49 ; 2 uses
  %i.de = fsub double %i.t, %i.dd
  %i.df = fsub double %i.p, %i.dd
  %i.dg = fdiv double %i.de, %i.df
  %i.dh = fmul double %.032.us.i, %i.dg
  br label %.preheader.us.i.1

.preheader.us.i.1:                                ; preds = %bb.l, %.preheader.us.i
  %.1.us.i = phi double [ %.032.us.i, %.preheader.us.i ], [ %i.dh, %bb.l ] ; 2 uses
  %indvars.iv.next.i95 = add nuw nsw i64 %indvars.iv.i94, 1 ; 2 uses
  %i.di = icmp eq i64 %indvars.iv.next.i95, %indvars.iv41.i
  br i1 %i.di, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader.us.i.1
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i95
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !49 ; 2 uses
  %i.dl = fsub double %i.t, %i.dk
  %i.dm = fsub double %i.p, %i.dk
  %i.dn = fdiv double %i.dl, %i.dm
  %i.do = fmul double %.1.us.i, %i.dn
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader.us.i.1
  %.1.us.i.1 = phi double [ %.1.us.i, %.preheader.us.i.1 ], [ %i.do, %bb.m ] ; 3 uses
  %indvars.iv.next.i95.1 = add nuw nsw i64 %indvars.iv.i94, 2 ; 2 uses
  %niter258.next.1 = add i64 %niter258, 2         ; 2 uses
  %niter258.ncmp.1 = icmp eq i64 %niter258.next.1, %unroll_iter257
  br i1 %niter258.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %.preheader.us.i, !llvm.loop !73

bb.o:                                             ; preds = %._crit_edge.us.i, %.lr.ph36.split.us.i
  %.127.us.i = phi double [ %.02634.us.i, %.lr.ph36.split.us.i ], [ %i.ea, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %LBasisD.exit, label %.lr.ph36.split.us.i

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %bb.n
  br i1 %lcmp.mod254.not, label %._crit_edge.us.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %.preheader.us.i.preheader237
  %indvars.iv.i94.epil.init = phi i64 [ 1, %.preheader.us.i.preheader237 ], [ %indvars.iv.next.i95.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  %.032.us.i.epil.init = phi double [ 1.000000e+00, %.preheader.us.i.preheader237 ], [ %.1.us.i.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod256)
  %i.dp = icmp eq i64 %indvars.iv.i94.epil.init, %indvars.iv41.i
  br i1 %i.dp, label %._crit_edge.us.i, label %bb.p

bb.p:                                             ; preds = %.preheader.us.i.epil.preheader
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i94.epil.init
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !49 ; 2 uses
  %i.ds = fsub double %i.t, %i.dr
  %i.dt = fsub double %i.p, %i.dr
  %i.du = fdiv double %i.ds, %i.dt
  %i.dv = fmul double %.032.us.i.epil.init, %i.du
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %bb.p, %.preheader.us.i.epil.preheader, %.preheader.us.i.preheader
  %.1.us.i.lcssa = phi double [ 1.000000e+00, %.preheader.us.i.preheader ], [ %.1.us.i.1, %._crit_edge.us.i.loopexit.unr-lcssa ], [ %.032.us.i.epil.init, %.preheader.us.i.epil.preheader ], [ %i.dv, %bb.p ]
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv41.i
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !49
  %i.dy = fsub double %i.p, %i.dx
  %i.dz = fdiv double %.1.us.i.lcssa, %i.dy
  %i.ea = fadd double %.02634.us.i, %i.dz
  br label %bb.o

LBasisD.exit:                                     ; preds = %bb.o
  %i.eb = fsub double %i.t, %i.p
  %i.ec = fsub double %i.r, %i.p
  %i.ed = fdiv double %i.eb, %i.ec
  %switch = icmp ult i32 %i.e, 3
  %xtraiter259 = and i64 %wide.trip.count44.i, 1
  %i.ee = icmp eq i32 %i.e, 3
  %unroll_iter263 = and i64 %i.cy, -2
  %lcmp.mod260.not = icmp eq i64 %xtraiter259, 0
  %lcmp.mod262 = trunc i32 %i.e to i1
  br label %.lr.ph36.split.us.i100

.lr.ph36.split.us.i100:                           ; preds = %bb.v, %LBasisD.exit
  %indvars.iv41.i101 = phi i64 [ 0, %LBasisD.exit ], [ %indvars.iv.next42.i112, %bb.v ] ; 6 uses
  %.02634.us.i102 = phi double [ 0.000000e+00, %LBasisD.exit ], [ %.127.us.i111, %bb.v ] ; 2 uses
  switch i64 %indvars.iv41.i101, label %bb.q [
    i64 1, label %bb.v
    i64 0, label %bb.r
  ]

bb.q:                                             ; preds = %.lr.ph36.split.us.i100
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph36.split.us.i100, %bb.q
  %.1.us.i107.peel = phi double [ 1.000000e+00, %.lr.ph36.split.us.i100 ], [ %i.ed, %bb.q ] ; 3 uses
  br i1 %switch, label %._crit_edge.us.i110, label %.preheader.us.i103.preheader

.preheader.us.i103.preheader:                     ; preds = %bb.r
  br i1 %i.ee, label %.preheader.us.i103.epil.preheader, label %.preheader.us.i103

.preheader.us.i103:                               ; preds = %.preheader.us.i103.preheader, %bb.u
  %indvars.iv.i104 = phi i64 [ %indvars.iv.next.i108.1, %bb.u ], [ 2, %.preheader.us.i103.preheader ] ; 4 uses
  %.032.us.i105 = phi double [ %.1.us.i107.1, %bb.u ], [ %.1.us.i107.peel, %.preheader.us.i103.preheader ] ; 2 uses
  %niter264 = phi i64 [ %niter264.next.1, %bb.u ], [ 0, %.preheader.us.i103.preheader ]
  %i.ef = icmp eq i64 %indvars.iv.i104, %indvars.iv41.i101
  br i1 %i.ef, label %.preheader.us.i103.1, label %bb.s

bb.s:                                             ; preds = %.preheader.us.i103
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i104
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !49 ; 2 uses
  %i.ei = fsub double %i.t, %i.eh
  %i.ej = fsub double %i.r, %i.eh
  %i.ek = fdiv double %i.ei, %i.ej
  %i.el = fmul double %.032.us.i105, %i.ek
  br label %.preheader.us.i103.1

.preheader.us.i103.1:                             ; preds = %bb.s, %.preheader.us.i103
  %.1.us.i107 = phi double [ %.032.us.i105, %.preheader.us.i103 ], [ %i.el, %bb.s ] ; 2 uses
  %indvars.iv.next.i108 = or disjoint i64 %indvars.iv.i104, 1 ; 2 uses
  %i.em = icmp eq i64 %indvars.iv.next.i108, %indvars.iv41.i101
  br i1 %i.em, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.preheader.us.i103.1
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i108
  %i.eo = load double, ptr %i.en, align 8, !tbaa !49 ; 2 uses
  %i.ep = fsub double %i.t, %i.eo
  %i.eq = fsub double %i.r, %i.eo
  %i.er = fdiv double %i.ep, %i.eq
  %i.es = fmul double %.1.us.i107, %i.er
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.preheader.us.i103.1
  %.1.us.i107.1 = phi double [ %.1.us.i107, %.preheader.us.i103.1 ], [ %i.es, %bb.t ] ; 3 uses
  %indvars.iv.next.i108.1 = add nuw nsw i64 %indvars.iv.i104, 2 ; 2 uses
  %niter264.next.1 = add i64 %niter264, 2         ; 2 uses
  %niter264.ncmp.1 = icmp eq i64 %niter264.next.1, %unroll_iter263
  br i1 %niter264.ncmp.1, label %._crit_edge.us.i110.loopexit.unr-lcssa, label %.preheader.us.i103, !llvm.loop !74

bb.v:                                             ; preds = %.lr.ph36.split.us.i100, %._crit_edge.us.i110
  %.127.us.i111 = phi double [ %.02634.us.i102, %.lr.ph36.split.us.i100 ], [ %i.fe, %._crit_edge.us.i110 ] ; 2 uses
  %indvars.iv.next42.i112 = add nuw nsw i64 %indvars.iv41.i101, 1 ; 2 uses
  %exitcond45.not.i113 = icmp eq i64 %indvars.iv.next42.i112, %wide.trip.count44.i
  br i1 %exitcond45.not.i113, label %LBasis.exit93, label %.lr.ph36.split.us.i100

._crit_edge.us.i110.loopexit.unr-lcssa:           ; preds = %bb.u
  br i1 %lcmp.mod260.not, label %._crit_edge.us.i110, label %.preheader.us.i103.epil.preheader

.preheader.us.i103.epil.preheader:                ; preds = %._crit_edge.us.i110.loopexit.unr-lcssa, %.preheader.us.i103.preheader
  %indvars.iv.i104.epil.init = phi i64 [ 2, %.preheader.us.i103.preheader ], [ %indvars.iv.next.i108.1, %._crit_edge.us.i110.loopexit.unr-lcssa ] ; 2 uses
  %.032.us.i105.epil.init = phi double [ %.1.us.i107.peel, %.preheader.us.i103.preheader ], [ %.1.us.i107.1, %._crit_edge.us.i110.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod262)
  %i.et = icmp eq i64 %indvars.iv.i104.epil.init, %indvars.iv41.i101
  br i1 %i.et, label %._crit_edge.us.i110, label %bb.w

bb.w:                                             ; preds = %.preheader.us.i103.epil.preheader
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i104.epil.init
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !49 ; 2 uses
  %i.ew = fsub double %i.t, %i.ev
  %i.ex = fsub double %i.r, %i.ev
  %i.ey = fdiv double %i.ew, %i.ex
  %i.ez = fmul double %.032.us.i105.epil.init, %i.ey
  br label %._crit_edge.us.i110

._crit_edge.us.i110:                              ; preds = %._crit_edge.us.i110.loopexit.unr-lcssa, %bb.w, %.preheader.us.i103.epil.preheader, %bb.r
  %.1.us.i107.lcssa = phi double [ %.1.us.i107.peel, %bb.r ], [ %.1.us.i107.1, %._crit_edge.us.i110.loopexit.unr-lcssa ], [ %.032.us.i105.epil.init, %.preheader.us.i103.epil.preheader ], [ %i.ez, %bb.w ]
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv41.i101
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !49
  %i.fc = fsub double %i.r, %i.fb
  %i.fd = fdiv double %.1.us.i107.lcssa, %i.fc
  %i.fe = fadd double %.02634.us.i102, %i.fd
  br label %bb.v

LBasis.exit93.loopexit.unr-lcssa:                 ; preds = %.peel.next206
  %lcmp.mod273.not = icmp eq i64 %xtraiter271, 0
  br i1 %lcmp.mod273.not, label %LBasis.exit93, label %.peel.next206.epil.preheader

.peel.next206.epil.preheader:                     ; preds = %LBasis.exit93.loopexit.unr-lcssa, %.peel.next206.preheader
  %indvars.iv.i88.epil.init = phi i64 [ 2, %.peel.next206.preheader ], [ %indvars.iv.next.i91.3, %LBasis.exit93.loopexit.unr-lcssa ]
  %.016.i89.epil.init = phi double [ %i.bt, %.peel.next206.preheader ], [ %i.cw, %LBasis.exit93.loopexit.unr-lcssa ]
  %lcmp.mod275 = icmp ne i64 %xtraiter271, 0
  tail call void @llvm.assume(i1 %lcmp.mod275)
  br label %.peel.next206.epil

.peel.next206.epil:                               ; preds = %.peel.next206.epil, %.peel.next206.epil.preheader
  %indvars.iv.i88.epil = phi i64 [ %indvars.iv.next.i91.epil, %.peel.next206.epil ], [ %indvars.iv.i88.epil.init, %.peel.next206.epil.preheader ] ; 2 uses
  %.016.i89.epil = phi double [ %i.fk, %.peel.next206.epil ], [ %.016.i89.epil.init, %.peel.next206.epil.preheader ]
  %epil.iter272 = phi i64 [ %epil.iter272.next, %.peel.next206.epil ], [ 0, %.peel.next206.epil.preheader ]
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i88.epil
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !49 ; 2 uses
  %i.fh = fsub double %i.t, %i.fg
  %i.fi = fsub double %i.r, %i.fg
  %i.fj = fdiv double %i.fh, %i.fi
  %i.fk = fmul double %.016.i89.epil, %i.fj       ; 2 uses
  %indvars.iv.next.i91.epil = add nuw nsw i64 %indvars.iv.i88.epil, 1
  %epil.iter272.next = add i64 %epil.iter272, 1   ; 2 uses
  %epil.iter272.cmp.not = icmp eq i64 %epil.iter272.next, %xtraiter271
  br i1 %epil.iter272.cmp.not, label %LBasis.exit93, label %.peel.next206.epil, !llvm.loop !75

LBasis.exit93:                                    ; preds = %bb.v, %LBasis.exit93.loopexit.unr-lcssa, %.peel.next206.epil, %bb.k, %.thread, %.epilog-lcssa, %bb.i
  %i.fl = phi double [ %i.fk, %.peel.next206.epil ], [ 1.000000e+00, %bb.i ], [ %i.bt, %.epilog-lcssa ], [ %i.aj, %.thread ], [ 0.000000e+00, %bb.k ], [ %i.cw, %LBasis.exit93.loopexit.unr-lcssa ], [ %.127.us.i111, %bb.v ]
  %i.fm = phi double [ %.lcssa234, %LBasis.exit93.loopexit.unr-lcssa ], [ 1.000000e+00, %bb.i ], [ %.lcssa234, %.epilog-lcssa ], [ 1.000000e+00, %.thread ], [ 0.000000e+00, %bb.k ], [ %.lcssa234, %.peel.next206.epil ], [ %.127.us.i, %bb.v ]
  %i.fn = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.fo = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !50
  tail call void @N_VLinearSum(double noundef %i.fm, ptr noundef %i.fn, double noundef %i.fl, ptr noundef %i.fp, ptr noundef %5) #14
  br label %bb.al

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.fq, align 8, !tbaa !49
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !50
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !50
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol, %.preheader153
  switch i32 %3, label %default.unreachable215 [
    i32 0, label %.preheader
    i32 1, label %.preheader147
    i32 2, label %.preheader149
    i32 3, label %.preheader151
  ]

.preheader151:                                    ; preds = %._crit_edge
  br i1 %.not154, label %.loopexit, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.preheader151
  %wide.trip.count178 = zext i32 %.pre to i64
  br label %.lr.ph158

.preheader149:                                    ; preds = %._crit_edge
  br i1 %.not154, label %.loopexit, label %.lr.ph.split.us.preheader.i.us.preheader

.lr.ph.split.us.preheader.i.us.preheader:         ; preds = %.preheader149
  %wide.trip.count72.i = zext nneg i32 %i.e to i64 ; 3 uses
  %wide.trip.count183 = zext i32 %.pre to i64
  br label %.lr.ph.split.us.preheader.i.us

.lr.ph.split.us.preheader.i.us:                   ; preds = %.lr.ph.split.us.preheader.i.us.preheader, %LBasisD2.exit.loopexit.us
  %indvars.iv180 = phi i64 [ 0, %.lr.ph.split.us.preheader.i.us.preheader ], [ %indvars.iv.next181, %LBasisD2.exit.loopexit.us ] ; 6 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv180 ; 3 uses
  br label %.lr.ph.split.us.i.us

.lr.ph.split.us.i.us:                             ; preds = %bb.aa, %.lr.ph.split.us.preheader.i.us
  %indvars.iv69.i.us = phi i64 [ 0, %.lr.ph.split.us.preheader.i.us ], [ %indvars.iv.next70.i.us, %bb.aa ] ; 5 uses
  %.04360.us.i.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i.us ], [ %.144.us.i.us, %bb.aa ] ; 2 uses
  %i.fv = icmp eq i64 %indvars.iv69.i.us, %indvars.iv180
  br i1 %i.fv, label %bb.aa, label %.preheader51.us.i.us

.preheader51.us.i.us:                             ; preds = %.lr.ph.split.us.i.us, %bb.z
  %indvars.iv64.i.us = phi i64 [ %indvars.iv.next65.i.us, %bb.z ], [ 0, %.lr.ph.split.us.i.us ] ; 5 uses
  %.04155.us.us.i.us = phi double [ %.142.us.us.i.us, %bb.z ], [ 0.000000e+00, %.lr.ph.split.us.i.us ] ; 2 uses
  %i.fw = icmp eq i64 %indvars.iv64.i.us, %indvars.iv180
  %i.fx = icmp eq i64 %indvars.iv64.i.us, %indvars.iv69.i.us
  %or.cond.us.us.i.us = or i1 %i.fw, %i.fx
  br i1 %or.cond.us.us.i.us, label %bb.z, label %.preheader.us.us.i.us

.preheader.us.us.i.us:                            ; preds = %.preheader51.us.i.us, %bb.y
  %indvars.iv.i142.us = phi i64 [ %indvars.iv.next.i143.us, %bb.y ], [ 0, %.preheader51.us.i.us ] ; 5 uses
  %.053.us.us.i.us = phi double [ %.1.us.us.i.us, %bb.y ], [ 1.000000e+00, %.preheader51.us.i.us ] ; 2 uses
  %i.fy = icmp eq i64 %indvars.iv.i142.us, %indvars.iv180
  %i.fz = icmp eq i64 %indvars.iv.i142.us, %indvars.iv64.i.us
  %or.cond49.us.us.i.us = or i1 %i.fy, %i.fz
  %i.ga = icmp eq i64 %indvars.iv.i142.us, %indvars.iv69.i.us
  %or.cond50.us.us.i.us = or i1 %i.ga, %or.cond49.us.us.i.us
  br i1 %or.cond50.us.us.i.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.preheader.us.us.i.us
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i142.us
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !49 ; 2 uses
  %i.gd = fsub double %i.t, %i.gc
  %i.ge = load double, ptr %i.fu, align 8, !tbaa !49
  %i.gf = fsub double %i.ge, %i.gc
  %i.gg = fdiv double %i.gd, %i.gf
  %i.gh = fmul double %.053.us.us.i.us, %i.gg
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.preheader.us.us.i.us
  %.1.us.us.i.us = phi double [ %.053.us.us.i.us, %.preheader.us.us.i.us ], [ %i.gh, %bb.x ] ; 2 uses
  %indvars.iv.next.i143.us = add nuw nsw i64 %indvars.iv.i142.us, 1 ; 2 uses
  %exitcond.not.i144.us = icmp eq i64 %indvars.iv.next.i143.us, %wide.trip.count72.i
  br i1 %exitcond.not.i144.us, label %._crit_edge.us.us.i.us, label %.preheader.us.us.i.us

._crit_edge.us.us.i.us:                           ; preds = %bb.y
  %i.gi = load double, ptr %i.fu, align 8, !tbaa !49
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv64.i.us
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !49
  %i.gl = fsub double %i.gi, %i.gk
  %i.gm = fdiv double %.1.us.us.i.us, %i.gl
  %i.gn = fadd double %.04155.us.us.i.us, %i.gm
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.us.us.i.us, %.preheader51.us.i.us
  %.142.us.us.i.us = phi double [ %.04155.us.us.i.us, %.preheader51.us.i.us ], [ %i.gn, %._crit_edge.us.us.i.us ] ; 2 uses
  %indvars.iv.next65.i.us = add nuw nsw i64 %indvars.iv64.i.us, 1 ; 2 uses
  %exitcond68.not.i.us = icmp eq i64 %indvars.iv.next65.i.us, %wide.trip.count72.i
  br i1 %exitcond68.not.i.us, label %._crit_edge57.split.us.us.i.us, label %.preheader51.us.i.us

._crit_edge57.split.us.us.i.us:                   ; preds = %bb.z
  %i.go = load double, ptr %i.fu, align 8, !tbaa !49
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv69.i.us
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !49
  %i.gr = fsub double %i.go, %i.gq
  %i.gs = fdiv double %.142.us.us.i.us, %i.gr
  %i.gt = fadd double %.04360.us.i.us, %i.gs
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge57.split.us.us.i.us, %.lr.ph.split.us.i.us
  %.144.us.i.us = phi double [ %.04360.us.i.us, %.lr.ph.split.us.i.us ], [ %i.gt, %._crit_edge57.split.us.us.i.us ] ; 2 uses
  %indvars.iv.next70.i.us = add nuw nsw i64 %indvars.iv69.i.us, 1 ; 2 uses
  %exitcond73.not.i.us = icmp eq i64 %indvars.iv.next70.i.us, %wide.trip.count72.i
  br i1 %exitcond73.not.i.us, label %LBasisD2.exit.loopexit.us, label %.lr.ph.split.us.i.us

LBasisD2.exit.loopexit.us:                        ; preds = %bb.aa
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv180
  store double %.144.us.i.us, ptr %i.gu, align 8, !tbaa !49
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
  br i1 %exitcond184.not, label %.loopexit, label %.lr.ph.split.us.preheader.i.us

.preheader147:                                    ; preds = %._crit_edge
  br i1 %.not154, label %.loopexit, label %.lr.ph36.split.us.preheader.i125.us.preheader

.lr.ph36.split.us.preheader.i125.us.preheader:    ; preds = %.preheader147
  %wide.trip.count44.i126 = zext nneg i32 %i.e to i64 ; 3 uses
  %wide.trip.count188 = zext i32 %.pre to i64
  %xtraiter243 = and i64 %wide.trip.count44.i126, 1
  %i.gv = icmp eq i32 %i.e, 1
  %unroll_iter = and i64 %wide.trip.count44.i126, 2147483646
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  %lcmp.mod246 = trunc i32 %i.e to i1
  br label %.lr.ph36.split.us.preheader.i125.us

.lr.ph36.split.us.preheader.i125.us:              ; preds = %.lr.ph36.split.us.preheader.i125.us.preheader, %LBasisD.exit141.loopexit.us
  %indvars.iv185 = phi i64 [ 0, %.lr.ph36.split.us.preheader.i125.us.preheader ], [ %indvars.iv.next186, %LBasisD.exit141.loopexit.us ] ; 7 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv185 ; 4 uses
  br label %.lr.ph36.split.us.i127.us

.lr.ph36.split.us.i127.us:                        ; preds = %bb.af, %.lr.ph36.split.us.preheader.i125.us
  %indvars.iv41.i128.us = phi i64 [ 0, %.lr.ph36.split.us.preheader.i125.us ], [ %indvars.iv.next42.i139.us, %bb.af ] ; 6 uses
  %.02634.us.i129.us = phi double [ 0.000000e+00, %.lr.ph36.split.us.preheader.i125.us ], [ %.127.us.i138.us, %bb.af ] ; 2 uses
  %i.gx = icmp eq i64 %indvars.iv41.i128.us, %indvars.iv185
  br i1 %i.gx, label %bb.af, label %.preheader.us.i130.us.preheader

.preheader.us.i130.us.preheader:                  ; preds = %.lr.ph36.split.us.i127.us
  br i1 %i.gv, label %.preheader.us.i130.us.epil.preheader, label %.preheader.us.i130.us

.preheader.us.i130.us:                            ; preds = %.preheader.us.i130.us.preheader, %bb.ad
  %indvars.iv.i131.us = phi i64 [ %indvars.iv.next.i135.us.1, %bb.ad ], [ 0, %.preheader.us.i130.us.preheader ] ; 5 uses
  %.032.us.i132.us = phi double [ %.1.us.i134.us.1, %bb.ad ], [ 1.000000e+00, %.preheader.us.i130.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.ad ], [ 0, %.preheader.us.i130.us.preheader ]
  %i.gy = icmp eq i64 %indvars.iv.i131.us, %indvars.iv185
  %i.gz = icmp eq i64 %indvars.iv.i131.us, %indvars.iv41.i128.us
  %or.cond.us.i133.us = or i1 %i.gy, %i.gz
  br i1 %or.cond.us.i133.us, label %.preheader.us.i130.us.1, label %bb.ab

bb.ab:                                            ; preds = %.preheader.us.i130.us
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i131.us
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !49 ; 2 uses
  %i.hc = fsub double %i.t, %i.hb
  %i.hd = load double, ptr %i.gw, align 8, !tbaa !49
  %i.he = fsub double %i.hd, %i.hb
  %i.hf = fdiv double %i.hc, %i.he
  %i.hg = fmul double %.032.us.i132.us, %i.hf
  br label %.preheader.us.i130.us.1

.preheader.us.i130.us.1:                          ; preds = %bb.ab, %.preheader.us.i130.us
  %.1.us.i134.us = phi double [ %.032.us.i132.us, %.preheader.us.i130.us ], [ %i.hg, %bb.ab ] ; 2 uses
  %indvars.iv.next.i135.us = or disjoint i64 %indvars.iv.i131.us, 1 ; 3 uses
  %i.hh = icmp eq i64 %indvars.iv.next.i135.us, %indvars.iv185
  %i.hi = icmp eq i64 %indvars.iv.next.i135.us, %indvars.iv41.i128.us
  %or.cond.us.i133.us.1 = or i1 %i.hh, %i.hi
  br i1 %or.cond.us.i133.us.1, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader.us.i130.us.1
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i135.us
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !49 ; 2 uses
  %i.hl = fsub double %i.t, %i.hk
  %i.hm = load double, ptr %i.gw, align 8, !tbaa !49
  %i.hn = fsub double %i.hm, %i.hk
  %i.ho = fdiv double %i.hl, %i.hn
  %i.hp = fmul double %.1.us.i134.us, %i.ho
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.us.i130.us.1
  %.1.us.i134.us.1 = phi double [ %.1.us.i134.us, %.preheader.us.i130.us.1 ], [ %i.hp, %bb.ac ] ; 3 uses
  %indvars.iv.next.i135.us.1 = add nuw nsw i64 %indvars.iv.i131.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i137.us.unr-lcssa, label %.preheader.us.i130.us

._crit_edge.us.i137.us.unr-lcssa:                 ; preds = %bb.ad
  br i1 %lcmp.mod244.not, label %._crit_edge.us.i137.us, label %.preheader.us.i130.us.epil.preheader

.preheader.us.i130.us.epil.preheader:             ; preds = %._crit_edge.us.i137.us.unr-lcssa, %.preheader.us.i130.us.preheader
  %indvars.iv.i131.us.epil.init = phi i64 [ 0, %.preheader.us.i130.us.preheader ], [ %indvars.iv.next.i135.us.1, %._crit_edge.us.i137.us.unr-lcssa ] ; 3 uses
  %.032.us.i132.us.epil.init = phi double [ 1.000000e+00, %.preheader.us.i130.us.preheader ], [ %.1.us.i134.us.1, %._crit_edge.us.i137.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod246)
  %i.hq = icmp eq i64 %indvars.iv.i131.us.epil.init, %indvars.iv185
  %i.hr = icmp eq i64 %indvars.iv.i131.us.epil.init, %indvars.iv41.i128.us
  %or.cond.us.i133.us.epil = or i1 %i.hq, %i.hr
  br i1 %or.cond.us.i133.us.epil, label %._crit_edge.us.i137.us, label %bb.ae

bb.ae:                                            ; preds = %.preheader.us.i130.us.epil.preheader
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i131.us.epil.init
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !49 ; 2 uses
  %i.hu = fsub double %i.t, %i.ht
  %i.hv = load double, ptr %i.gw, align 8, !tbaa !49
  %i.hw = fsub double %i.hv, %i.ht
  %i.hx = fdiv double %i.hu, %i.hw
  %i.hy = fmul double %.032.us.i132.us.epil.init, %i.hx
  br label %._crit_edge.us.i137.us

._crit_edge.us.i137.us:                           ; preds = %.preheader.us.i130.us.epil.preheader, %bb.ae, %._crit_edge.us.i137.us.unr-lcssa
  %.1.us.i134.us.lcssa = phi double [ %.1.us.i134.us.1, %._crit_edge.us.i137.us.unr-lcssa ], [ %.032.us.i132.us.epil.init, %.preheader.us.i130.us.epil.preheader ], [ %i.hy, %bb.ae ]
  %i.hz = load double, ptr %i.gw, align 8, !tbaa !49
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv41.i128.us
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !49
  %i.ic = fsub double %i.hz, %i.ib
  %i.id = fdiv double %.1.us.i134.us.lcssa, %i.ic
  %i.ie = fadd double %.02634.us.i129.us, %i.id
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.us.i137.us, %.lr.ph36.split.us.i127.us
  %.127.us.i138.us = phi double [ %.02634.us.i129.us, %.lr.ph36.split.us.i127.us ], [ %i.ie, %._crit_edge.us.i137.us ] ; 2 uses
  %indvars.iv.next42.i139.us = add nuw nsw i64 %indvars.iv41.i128.us, 1 ; 2 uses
  %exitcond45.not.i140.us = icmp eq i64 %indvars.iv.next42.i139.us, %wide.trip.count44.i126
  br i1 %exitcond45.not.i140.us, label %LBasisD.exit141.loopexit.us, label %.lr.ph36.split.us.i127.us

LBasisD.exit141.loopexit.us:                      ; preds = %bb.af
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv185
  store double %.127.us.i138.us, ptr %i.if, align 8, !tbaa !49
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next186, %wide.trip.count188
  br i1 %exitcond189.not, label %.loopexit, label %.lr.ph36.split.us.preheader.i125.us

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not154, label %.loopexit, label %.lr.ph.i116.us.preheader

.lr.ph.i116.us.preheader:                         ; preds = %.preheader
  %wide.trip.count.i117 = zext nneg i32 %i.e to i64 ; 2 uses
  %wide.trip.count193 = zext i32 %.pre to i64
  %xtraiter247 = and i64 %wide.trip.count.i117, 1
  %i.ig = icmp eq i32 %i.e, 1
  %unroll_iter251 = and i64 %wide.trip.count.i117, 2147483646
  %lcmp.mod248.not = icmp eq i64 %xtraiter247, 0
  %lcmp.mod250 = trunc i32 %i.e to i1
  br label %.lr.ph.i116.us

.lr.ph.i116.us:                                   ; preds = %.lr.ph.i116.us.preheader, %LBasis.exit123.loopexit.us
  %indvars.iv190 = phi i64 [ 0, %.lr.ph.i116.us.preheader ], [ %indvars.iv.next191, %LBasis.exit123.loopexit.us ] ; 6 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv190 ; 3 uses
  br i1 %i.ig, label %.epil.preheader, label %.lr.ph.i116.us.new

.lr.ph.i116.us.new:                               ; preds = %.lr.ph.i116.us, %bb.aj
  %indvars.iv.i118.us = phi i64 [ %indvars.iv.next.i121.us.1, %bb.aj ], [ 0, %.lr.ph.i116.us ] ; 4 uses
  %.016.i119.us = phi double [ %.1.i120.us.1, %bb.aj ], [ 1.000000e+00, %.lr.ph.i116.us ] ; 2 uses
  %niter252 = phi i64 [ %niter252.next.1, %bb.aj ], [ 0, %.lr.ph.i116.us ]
  %i.ii = icmp eq i64 %indvars.iv.i118.us, %indvars.iv190
  br i1 %i.ii, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i116.us.new
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i118.us
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !49 ; 2 uses
  %i.il = fsub double %i.t, %i.ik
  %i.im = load double, ptr %i.ih, align 8, !tbaa !49
  %i.in = fsub double %i.im, %i.ik
  %i.io = fdiv double %i.il, %i.in
  %i.ip = fmul double %.016.i119.us, %i.io
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i116.us.new
  %.1.i120.us = phi double [ %.016.i119.us, %.lr.ph.i116.us.new ], [ %i.ip, %bb.ag ] ; 2 uses
  %indvars.iv.next.i121.us = or disjoint i64 %indvars.iv.i118.us, 1 ; 2 uses
  %i.iq = icmp eq i64 %indvars.iv.next.i121.us, %indvars.iv190
  br i1 %i.iq, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i121.us
  %i.is = load double, ptr %i.ir, align 8, !tbaa !49 ; 2 uses
  %i.it = fsub double %i.t, %i.is
  %i.iu = load double, ptr %i.ih, align 8, !tbaa !49
  %i.iv = fsub double %i.iu, %i.is
  %i.iw = fdiv double %i.it, %i.iv
  %i.ix = fmul double %.1.i120.us, %i.iw
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1.i120.us.1 = phi double [ %.1.i120.us, %bb.ah ], [ %i.ix, %bb.ai ] ; 3 uses
  %indvars.iv.next.i121.us.1 = add nuw nsw i64 %indvars.iv.i118.us, 2 ; 2 uses
  %niter252.next.1 = add i64 %niter252, 2         ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %LBasis.exit123.loopexit.us.unr-lcssa, label %.lr.ph.i116.us.new

LBasis.exit123.loopexit.us.unr-lcssa:             ; preds = %bb.aj
  br i1 %lcmp.mod248.not, label %LBasis.exit123.loopexit.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %LBasis.exit123.loopexit.us.unr-lcssa, %.lr.ph.i116.us
  %indvars.iv.i118.us.epil.init = phi i64 [ 0, %.lr.ph.i116.us ], [ %indvars.iv.next.i121.us.1, %LBasis.exit123.loopexit.us.unr-lcssa ] ; 2 uses
  %.016.i119.us.epil.init = phi double [ 1.000000e+00, %.lr.ph.i116.us ], [ %.1.i120.us.1, %LBasis.exit123.loopexit.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod250)
  %i.iy = icmp eq i64 %indvars.iv.i118.us.epil.init, %indvars.iv190
  br i1 %i.iy, label %LBasis.exit123.loopexit.us, label %bb.ak

bb.ak:                                            ; preds = %.epil.preheader
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i118.us.epil.init
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !49 ; 2 uses
  %i.jb = fsub double %i.t, %i.ja
  %i.jc = load double, ptr %i.ih, align 8, !tbaa !49
  %i.jd = fsub double %i.jc, %i.ja
  %i.je = fdiv double %i.jb, %i.jd
  %i.jf = fmul double %.016.i119.us.epil.init, %i.je
  br label %LBasis.exit123.loopexit.us

LBasis.exit123.loopexit.us:                       ; preds = %.epil.preheader, %bb.ak, %LBasis.exit123.loopexit.us.unr-lcssa
  %.1.i120.us.lcssa = phi double [ %.1.i120.us.1, %LBasis.exit123.loopexit.us.unr-lcssa ], [ %.016.i119.us.epil.init, %.epil.preheader ], [ %i.jf, %bb.ak ]
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv190
  store double %.1.i120.us.lcssa, ptr %i.jg, align 8, !tbaa !49
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count193
  br i1 %exitcond194.not, label %.loopexit, label %.lr.ph.i116.us

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  %indvars.iv175 = phi i64 [ 0, %.lr.ph158.preheader ], [ %indvars.iv.next176, %.lr.ph158 ] ; 3 uses
  %i.jh = trunc nuw nsw i64 %indvars.iv175 to i32
  %i.ji = tail call double @LBasisD3(ptr noundef nonnull %1, i32 noundef %i.jh, double noundef %i.t)
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv175
  store double %i.ji, ptr %i.jj, align 8, !tbaa !49
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond179.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count178
  br i1 %exitcond179.not, label %.loopexit, label %.lr.ph158

default.unreachable215:                           ; preds = %._crit_edge
  unreachable

.loopexit:                                        ; preds = %.lr.ph158, %LBasisD2.exit.loopexit.us, %LBasisD.exit141.loopexit.us, %LBasis.exit123.loopexit.us, %.preheader151, %.preheader149, %.preheader147, %.preheader
  %i.jk = call i32 @N_VLinearCombination(i32 noundef %.pre, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5) #14
  %.not84 = icmp eq i32 %i.jk, 0
  %. = select i1 %.not84, i32 0, i32 -28
  br label %bb.al

bb.al:                                            ; preds = %.loopexit, %LBasis.exit93, %bb.f, %bb.d, %bb.b
  %.076 = phi i32 [ -22, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %LBasis.exit93 ], [ %., %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.076
}

declare i32 @N_VConstVectorArray(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define double @LBasis(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, double noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60   ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.f = sext i32 %1 to i64                       ; 3 uses
  %i.g = zext i32 %1 to i64                       ; 3 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %i.c, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %.016 = phi double [ 1.000000e+00, %.lr.ph.new ], [ %.1.1, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.i = icmp eq i64 %indvars.iv, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load double, ptr %i.k, align 8, !tbaa !49 ; 2 uses
  %i.m = fsub double %2, %i.l
  %i.n = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.f
  %i.o = load double, ptr %i.n, align 8, !tbaa !49
  %i.p = fsub double %i.o, %i.l
  %i.q = fdiv double %i.m, %i.p
  %i.r = fmul double %.016, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi double [ %.016, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.s = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.v = load double, ptr %i.u, align 8, !tbaa !49 ; 2 uses
  %i.w = fsub double %2, %i.v
  %i.x = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.f
  %i.y = load double, ptr %i.x, align 8, !tbaa !49
  %i.z = fsub double %i.y, %i.v
  %i.aa = fdiv double %i.w, %i.z
  %i.ab = fmul double %.1, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi double [ %.1, %bb.d ], [ %i.ab, %bb.e ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.016.epil.init = phi double [ 1.000000e+00, %.lr.ph ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod19 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.ac = icmp eq i64 %indvars.iv.epil.init, %i.g
  br i1 %i.ac, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !61  ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.epil.init
  %i.af = load double, ptr %i.ae, align 8, !tbaa !49 ; 2 uses
  %i.ag = fsub double %2, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.f
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !49
  %i.aj = fsub double %i.ai, %i.af
  %i.ak = fdiv double %i.ag, %i.aj
  %i.al = fmul double %.016.epil.init, %i.ak
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %bb.a
  %.0.lcssa = phi double [ 1.000000e+00, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.016.epil.init, %.epil.preheader ], [ %i.al, %bb.g ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define double @LBasisD(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, double noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60   ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph36.split.us.preheader, label %._crit_edge37

.lr.ph36.split.us.preheader:                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.f = sext i32 %1 to i64                       ; 4 uses
  %i.g = zext i32 %1 to i64                       ; 4 uses
  %wide.trip.count44 = zext nneg i32 %i.c to i64  ; 3 uses
  %xtraiter = and i64 %wide.trip.count44, 1
  %i.h = icmp eq i32 %i.c, 1
  %unroll_iter = and i64 %wide.trip.count44, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod48 = trunc i32 %i.c to i1
  br label %.lr.ph36.split.us

.lr.ph36.split.us:                                ; preds = %.lr.ph36.split.us.preheader, %bb.e
  %indvars.iv41 = phi i64 [ 0, %.lr.ph36.split.us.preheader ], [ %indvars.iv.next42, %bb.e ] ; 6 uses
  %.02634.us = phi double [ 0.000000e+00, %.lr.ph36.split.us.preheader ], [ %.127.us, %bb.e ] ; 2 uses
  %i.i = icmp eq i64 %indvars.iv41, %i.g
  br i1 %i.i, label %bb.e, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph36.split.us
  br i1 %i.h, label %.preheader.us.epil.preheader, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.d ], [ 0, %.preheader.us.preheader ] ; 5 uses
  %.032.us = phi double [ %.1.us.1, %bb.d ], [ 1.000000e+00, %.preheader.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.d ], [ 0, %.preheader.us.preheader ]
  %i.j = icmp eq i64 %indvars.iv, %i.g
  %i.k = icmp eq i64 %indvars.iv, %indvars.iv41
  %or.cond.us = or i1 %i.j, %i.k
  br i1 %or.cond.us, label %.preheader.us.1, label %bb.b

bb.b:                                             ; preds = %.preheader.us
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load double, ptr %i.m, align 8, !tbaa !49 ; 2 uses
  %i.o = fsub double %2, %i.n
  %i.p = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.f
  %i.q = load double, ptr %i.p, align 8, !tbaa !49
  %i.r = fsub double %i.q, %i.n
  %i.s = fdiv double %i.o, %i.r
  %i.t = fmul double %.032.us, %i.s
  br label %.preheader.us.1

.preheader.us.1:                                  ; preds = %bb.b, %.preheader.us
  %.1.us = phi double [ %.032.us, %.preheader.us ], [ %i.t, %bb.b ] ; 2 uses
end_hunk_0
begin_hunk_1_@LBasisD3:bb.a
  br i1 %or.cond70.us.us.us, label %bb.d, label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader74.us.us, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader74.us.us ] ; 6 uses
  %.077.us.us.us = phi double [ %.1.us.us.us, %bb.c ], [ 1.000000e+00, %.preheader74.us.us ] ; 2 uses
  %i.n = icmp eq i64 %indvars.iv, %i.g
  %i.o = icmp eq i64 %indvars.iv, %indvars.iv102
  %or.cond71.us.us.us = or i1 %i.n, %i.o
  %i.p = icmp eq i64 %indvars.iv, %indvars.iv97
  %or.cond72.us.us.us = or i1 %i.p, %or.cond71.us.us.us
  %i.q = icmp eq i64 %indvars.iv, %indvars.iv92
  %or.cond73.us.us.us = or i1 %i.q, %or.cond72.us.us.us
  br i1 %or.cond73.us.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.us.us.us
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load double, ptr %i.s, align 8, !tbaa !49 ; 2 uses
  %i.u = fsub double %2, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.f
  %i.w = load double, ptr %i.v, align 8, !tbaa !49
  %i.x = fsub double %i.w, %i.t
  %i.y = fdiv double %i.u, %i.x
  %i.z = fmul double %.077.us.us.us, %i.y
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.us.us.us
  %.1.us.us.us = phi double [ %.077.us.us.us, %.preheader.us.us.us ], [ %i.z, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count105
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %.preheader.us.us.us

._crit_edge.us.us.us:                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !61  ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.f
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv92
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !49
  %i.af = fsub double %i.ac, %i.ae
  %i.ag = fdiv double %.1.us.us.us, %i.af
  %i.ah = fadd double %.05879.us.us.us, %i.ag
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.us.us.us, %.preheader74.us.us
  %.159.us.us.us = phi double [ %.05879.us.us.us, %.preheader74.us.us ], [ %i.ah, %._crit_edge.us.us.us ] ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count105
  br i1 %exitcond96.not, label %._crit_edge81.split.us.us.us, label %.preheader74.us.us

._crit_edge81.split.us.us.us:                     ; preds = %bb.d
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !61  ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.f
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv97
  %i.am = load double, ptr %i.al, align 8, !tbaa !49
  %i.an = fsub double %i.ak, %i.am
  %i.ao = fdiv double %.159.us.us.us, %i.an
  %i.ap = fadd double %.06084.us.us, %i.ao
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge81.split.us.us.us, %.preheader75.us
  %.161.us.us = phi double [ %.06084.us.us, %.preheader75.us ], [ %i.ap, %._crit_edge81.split.us.us.us ] ; 2 uses
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count105
  br i1 %exitcond101.not, label %._crit_edge.split.us.us, label %.preheader75.us

._crit_edge.split.us.us:                          ; preds = %bb.e
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !61  ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.f
  %i.as = load double, ptr %i.ar, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv102
  %i.au = load double, ptr %i.at, align 8, !tbaa !49
  %i.av = fsub double %i.as, %i.au
  %i.aw = fdiv double %.161.us.us, %i.av
  %i.ax = fadd double %.06287.us, %i.aw
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.split.us.us, %.lr.ph88.split.us
  %.163.us = phi double [ %.06287.us, %.lr.ph88.split.us ], [ %i.ax, %._crit_edge.split.us.us ] ; 2 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %._crit_edge, label %.lr.ph88.split.us

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.062.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.163.us, %bb.f ]
  ret double %.062.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }

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
!9 = !{!"p1 _ZTS21_generic_ARKInterpOps", !8, i64 0}
!10 = !{!"_generic_ARKInterp", !8, i64 0, !9, i64 8}
!11 = !{!10, !9, i64 8}
!12 = !{!"_generic_ARKInterpOps", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!13 = !{!12, !8, i64 0}
!14 = !{!12, !8, i64 8}
!15 = !{!12, !8, i64 16}
!16 = !{!12, !8, i64 24}
!17 = !{!12, !8, i64 32}
!18 = !{!12, !8, i64 40}
!19 = !{!12, !8, i64 48}
!20 = !{!10, !8, i64 0}
!21 = !{!"p1 _ZTS17_generic_N_Vector", !8, i64 0}
!22 = !{!"double", !4, i64 0}
!23 = !{!"_ARKInterpContent_Hermite", !5, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !22, i64 40, !22, i64 48, !22, i64 56}
!24 = !{!23, !5, i64 0}
!25 = !{!"long", !4, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 _ZTS11SUNContext_", !8, i64 0}
!28 = !{!"p1 _ZTS18_generic_ARKInterp", !8, i64 0}
!29 = !{!"p1 _ZTS18ARKodeHAdaptMemRec", !8, i64 0}
!30 = !{!"p1 _ZTS16ARKodeRootMemRec", !8, i64 0}
!31 = !{!"p1 _ZTS17ARKodeRelaxMemRec", !8, i64 0}
!32 = !{!"p1 _ZTS27SUNAdjointCheckpointScheme_", !8, i64 0}
!33 = !{!"ARKodeMemRec", !27, i64 0, !8, i64 8, !22, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !22, i64 40, !22, i64 48, !21, i64 56, !5, i64 64, !22, i64 72, !21, i64 80, !5, i64 88, !5, i64 92, !8, i64 96, !8, i64 104, !5, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !5, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !5, i64 312, !8, i64 320, !5, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !8, i64 512, !8, i64 520, !8, i64 528, !8, i64 536, !5, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !21, i64 592, !21, i64 600, !5, i64 608, !21, i64 616, !5, i64 624, !21, i64 632, !21, i64 640, !5, i64 648, !21, i64 656, !21, i64 664, !21, i64 672, !21, i64 680, !21, i64 688, !28, i64 696, !5, i64 704, !5, i64 708, !5, i64 712, !5, i64 716, !22, i64 720, !22, i64 728, !22, i64 736, !22, i64 744, !22, i64 752, !22, i64 760, !22, i64 768, !22, i64 776, !22, i64 784, !22, i64 792, !5, i64 800, !29, i64 808, !25, i64 816, !5, i64 824, !5, i64 828, !5, i64 832, !25, i64 840, !25, i64 848, !5, i64 856, !25, i64 864, !25, i64 872, !25, i64 880, !25, i64 888, !25, i64 896, !25, i64 904, !22, i64 912, !22, i64 920, !22, i64 928, !22, i64 936, !22, i64 944, !5, i64 952, !22, i64 960, !22, i64 968, !5, i64 976, !5, i64 980, !5, i64 984, !5, i64 988, !5, i64 992, !5, i64 996, !5, i64 1000, !5, i64 1004, !5, i64 1008, !30, i64 1016, !21, i64 1024, !25, i64 1032, !5, i64 1040, !5, i64 1044, !31, i64 1048, !8, i64 1056, !8, i64 1064, !8, i64 1072, !8, i64 1080, !8, i64 1088, !5, i64 1096, !5, i64 1100, !5, i64 1104, !25, i64 1112, !25, i64 1120, !32, i64 1128, !25, i64 1136, !5, i64 1144, !5, i64 1148}
!34 = !{!33, !22, i64 784}
!35 = !{!23, !22, i64 40}
!36 = !{!23, !22, i64 48}
!37 = !{!23, !22, i64 56}
!38 = !{!23, !21, i64 8}
!39 = !{!23, !21, i64 16}
!40 = !{!23, !21, i64 24}
!41 = !{!23, !21, i64 32}
!42 = !{!33, !21, i64 632}
!43 = !{ptr @arkInterpFree}
!44 = !{!33, !5, i64 648}
!45 = !{!33, !8, i64 152}
!46 = !{!33, !22, i64 920}
!47 = !{!33, !21, i64 640}
!48 = !{!33, !22, i64 736}
!49 = !{!22, !22, i64 0}
!50 = !{!21, !21, i64 0}
!51 = !{!"any p2 pointer", !8, i64 0}
!52 = !{!"p2 _ZTS17_generic_N_Vector", !51, i64 0}
!53 = !{!"p1 double", !8, i64 0}
!54 = !{!"_ARKInterpContent_Lagrange", !5, i64 0, !5, i64 4, !52, i64 8, !53, i64 16, !5, i64 24, !22, i64 32}
!55 = !{!54, !5, i64 0}
!56 = !{!33, !22, i64 16}
!57 = !{!54, !22, i64 32}
!58 = !{!54, !52, i64 8}
!59 = !{!54, !5, i64 4}
!60 = !{!54, !5, i64 24}
!61 = !{!54, !53, i64 16}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = !{!33, !5, i64 1004}
!65 = !{ptr @arkInterpEvaluate}
!66 = distinct !{!66, !62, !63}
!67 = distinct !{!67, !63, !62}
!68 = !{!33, !21, i64 616}
!69 = distinct !{!69, !62, !63}
!70 = distinct !{!70, !77}
!71 = distinct !{!71, !78}
!72 = distinct !{!72, !79}
!73 = distinct !{!73, !77}
!74 = distinct !{!74, !79}
!75 = distinct !{!75, !78}
!76 = distinct !{!76, !63, !62}
!77 = !{!"llvm.loop.peeled.count", i32 1}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = !{!"llvm.loop.peeled.count", i32 2}
end_hunk_1
