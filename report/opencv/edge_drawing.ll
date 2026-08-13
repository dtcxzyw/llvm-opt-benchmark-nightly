inline.NumInlined: 1880
inline.NumDeleted: 742
loop-unroll.NumCompletelyUnrolled: 82
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 154
begin_hunk_0_@_ZN2cv8ximgproc15EdgeDrawingImpl7AperB_TEPPdS3_S3_iiii:bb.a
.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 1, %.lr.ph ] ; 4 uses
  %i.an = phi double [ %i.ax, %.lr.ph.new ], [ 0.000000e+00, %.lr.ph ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !20
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ar, double %i.an) ; 2 uses
  store double %i.as, ptr %i.ak, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next
  %i.au = load double, ptr %i.at, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next
  %i.aw = load double, ptr %i.av, align 8, !tbaa !20
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.au, double %i.aw, double %i.as) ; 3 uses
  store double %i.ax, ptr %i.ak, align 8, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !776

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ax, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.epil.init
  %i.az = load double, ptr %i.ay, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.epil.init
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !20
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.az, double %i.bb, double %.epil.init)
  store double %i.bc, ptr %i.ak, align 8, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge32.split, label %.lr.ph, !llvm.loop !777

._crit_edge32.split:                              ; preds = %._crit_edge
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count56
  br i1 %exitcond49.not, label %._crit_edge35.split, label %.preheader, !llvm.loop !517

._crit_edge35.split.loopexit.unr-lcssa:           ; preds = %.preheader.us
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %._crit_edge35.split, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %._crit_edge35.split.loopexit.unr-lcssa, %.preheader.us.preheader
  %indvars.iv53.epil.init = phi i64 [ 1, %.preheader.us.preheader ], [ %indvars.iv.next54.7, %._crit_edge35.split.loopexit.unr-lcssa ]
  %lcmp.mod66 = icmp ne i64 %xtraiter64, 0
  tail call void @llvm.assume(i1 %lcmp.mod66)
  br label %.preheader.us.epil

.preheader.us.epil:                               ; preds = %.preheader.us.epil, %.preheader.us.epil.preheader
  %indvars.iv53.epil = phi i64 [ %indvars.iv53.epil.init, %.preheader.us.epil.preheader ], [ %indvars.iv.next54.epil, %.preheader.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.us.epil.preheader ], [ %epil.iter.next, %.preheader.us.epil ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53.epil
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !513
  %scevgep.epil = getelementptr nuw i8, ptr %i.be, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.epil, i8 0, i64 %i.f, i1 false), !tbaa !20
  %indvars.iv.next54.epil = add nuw nsw i64 %indvars.iv53.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter64
  br i1 %epil.iter.cmp.not, label %._crit_edge35.split, label %.preheader.us.epil, !llvm.loop !778

._crit_edge35.split:                              ; preds = %._crit_edge32.split, %._crit_edge35.split.loopexit.unr-lcssa, %.preheader.us.epil, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl6jacobiEPPdiS2_S3_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i32 %1, 1                            ; 5 uses
  %i.b = sext i32 %i.a to i64
  %i.c = icmp slt i32 %1, -1
  %i.d = shl nsw i64 %i.b, 3                      ; 3 uses
  %i.e = select i1 %i.c, i64 -1, i64 %i.d         ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #41 ; 7 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #41 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.d, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.d, i1 false)
  %.not207 = icmp slt i32 %1, 1                   ; 2 uses
  br i1 %.not207, label %.preheader202, label %.preheader204.preheader

.preheader204.preheader:                          ; preds = %bb.a
  %i.h = zext nneg i32 %1 to i64
  %i.i = shl nuw nsw i64 %i.h, 3                  ; 5 uses
  %wide.trip.count = zext i32 %i.a to i64         ; 2 uses
  %i.j = add nsw i64 %wide.trip.count, -1         ; 5 uses
  %i.k = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %.preheader204.epil.preheader, label %.preheader204.preheader.new

.preheader204.preheader.new:                      ; preds = %.preheader204.preheader
  %unroll_iter = and i64 %i.j, -4
  br label %.preheader204

.preheader204:                                    ; preds = %.preheader204, %.preheader204.preheader.new
  %indvars.iv = phi i64 [ 1, %.preheader204.preheader.new ], [ %indvars.iv.next.3, %.preheader204 ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader204.preheader.new ], [ %niter.next.3, %.preheader204 ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !513  ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep, i8 0, i64 %i.i, i1 false), !tbaa !20
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !513  ; 2 uses
  %scevgep.1 = getelementptr nuw i8, ptr %i.q, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.1, i8 0, i64 %i.i, i1 false), !tbaa !20
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next
  store double 1.000000e+00, ptr %i.r, align 8, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !513  ; 2 uses
  %scevgep.2 = getelementptr nuw i8, ptr %i.t, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.2, i8 0, i64 %i.i, i1 false), !tbaa !20
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.1
  store double 1.000000e+00, ptr %i.u, align 8, !tbaa !20
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !513  ; 2 uses
  %scevgep.3 = getelementptr nuw i8, ptr %i.w, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.3, i8 0, i64 %i.i, i1 false), !tbaa !20
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.2
  store double 1.000000e+00, ptr %i.x, align 8, !tbaa !20
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.unr-lcssa, label %.preheader204, !llvm.loop !779

.lr.ph.preheader.unr-lcssa:                       ; preds = %.preheader204
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.preheader204.epil.preheader

.preheader204.epil.preheader:                     ; preds = %.lr.ph.preheader.unr-lcssa, %.preheader204.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.preheader204.preheader ], [ %indvars.iv.next.3, %.lr.ph.preheader.unr-lcssa ]
  %lcmp.mod332 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod332)
  br label %.preheader204.epil

.preheader204.epil:                               ; preds = %.preheader204.epil, %.preheader204.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader204.epil.preheader ], [ %indvars.iv.next.epil, %.preheader204.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader204.epil.preheader ], [ %epil.iter.next, %.preheader204.epil ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !513  ; 2 uses
  %scevgep.epil = getelementptr nuw i8, ptr %i.z, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.epil, i8 0, i64 %i.i, i1 false), !tbaa !20
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.epil
  store double 1.000000e+00, ptr %i.aa, align 8, !tbaa !20
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %.preheader204.epil, !llvm.loop !780

.lr.ph.preheader:                                 ; preds = %.preheader204.epil, %.lr.ph.preheader.unr-lcssa
  %xtraiter333 = and i64 %i.j, 1
  %i.ab = icmp eq i64 %i.k, 0
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter337 = and i64 %i.j, -2
  br label %.lr.ph

.preheader202.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod335.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod335.not, label %.preheader202, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader202.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv252.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next253.1, %.preheader202.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod336 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod336)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv252.epil.init
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !513
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv252.epil.init
  %i.af = load double, ptr %i.ae, align 8, !tbaa !20 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv252.epil.init
  store double %i.af, ptr %i.ag, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv252.epil.init
  store double %i.af, ptr %i.ah, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv252.epil.init
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !20
  br label %.preheader202

.preheader202:                                    ; preds = %.lr.ph.epil.preheader, %.preheader202.loopexit.unr-lcssa, %bb.a
  %.not185.not216 = icmp sgt i32 %1, 1
  %i.aj = mul nsw i32 %1, %1
  %i.ak = uitofp nneg i32 %i.aj to double
  %i.al = sext i32 %1 to i64
  %wide.trip.count267 = zext i32 %1 to i64        ; 3 uses
  %wide.trip.count262 = zext i32 %i.a to i64      ; 4 uses
  %wide.trip.count299 = zext nneg i32 %1 to i64   ; 2 uses
  %wide.trip.count294 = zext i32 %i.a to i64      ; 2 uses
  %wide.trip.count305 = zext i32 %i.a to i64
  %4 = shl nuw nsw i64 %wide.trip.count267, 3
  %5 = add nuw nsw i64 %4, 8                      ; 2 uses
  %6 = add nsw i64 %wide.trip.count267, -2
  %7 = xor i64 %wide.trip.count262, 2
  %8 = add nsw i64 %wide.trip.count262, -3
  %9 = add nsw i64 %wide.trip.count262, -1        ; 3 uses
  %n.vec = and i64 %9, -2                         ; 2 uses
  %10 = or i64 %9, 1
  %cmp.n = icmp eq i64 %9, %n.vec
  br label %.preheader201

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv252 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next253.1, %.lr.ph ] ; 7 uses
  %niter338 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter338.next.1, %.lr.ph ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv252
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !513
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv252
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !20 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv252
  store double %i.ap, ptr %i.aq, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv252
  store double %i.ap, ptr %i.ar, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv252
  store double 0.000000e+00, ptr %i.as, align 8, !tbaa !20
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 5 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next253
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !513
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next253
  %i.aw = load double, ptr %i.av, align 8, !tbaa !20 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next253
  store double %i.aw, ptr %i.ax, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next253
  store double %i.aw, ptr %i.ay, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next253
  store double 0.000000e+00, ptr %i.az, align 8, !tbaa !20
  %indvars.iv.next253.1 = add nuw nsw i64 %indvars.iv252, 2 ; 2 uses
  %niter338.next.1 = add nuw i64 %niter338, 2     ; 2 uses
  %niter338.ncmp.1 = icmp eq i64 %niter338.next.1, %unroll_iter337
  br i1 %niter338.ncmp.1, label %.preheader202.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !781

.preheader201:                                    ; preds = %.preheader202, %._crit_edge247
  %.0176248 = phi i32 [ 1, %.preheader202 ], [ %i.ib, %._crit_edge247 ] ; 3 uses
  br i1 %.not185.not216, label %.lr.ph215, label %._crit_edge220.thread

.loopexit199:                                     ; preds = %.lr.ph215.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.cb, %.lr.ph215.new ] ; 3 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  %indvar.next340 = add i64 %indvar339, 1
  br i1 %exitcond268.not, label %._crit_edge220, label %.lr.ph215, !llvm.loop !782

.lr.ph215:                                        ; preds = %.preheader201, %.loopexit199
  %indvar339 = phi i64 [ %indvar.next340, %.loopexit199 ], [ 0, %.preheader201 ] ; 3 uses
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %.loopexit199 ], [ 1, %.preheader201 ] ; 2 uses
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %.loopexit199 ], [ 2, %.preheader201 ] ; 3 uses
  %.0178217 = phi double [ %.lcssa, %.loopexit199 ], [ 0.000000e+00, %.preheader201 ] ; 2 uses
  %i.ba = sub i64 %7, %indvar339
  %i.bb = sub i64 %8, %indvar339
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv264
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !513 ; 5 uses
  %xtraiter341 = and i64 %i.ba, 3                 ; 2 uses
  %lcmp.mod342.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod342.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph215, %.prol.preheader
  %indvars.iv259.prol = phi i64 [ %indvars.iv.next260.prol, %.prol.preheader ], [ %indvars.iv257, %.lr.ph215 ] ; 2 uses
  %.1179212.prol = phi double [ %i.bh, %.prol.preheader ], [ %.0178217, %.lr.ph215 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph215 ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv259.prol
  %i.bf = load double, ptr %i.be, align 8, !tbaa !20
  %i.bg = tail call double @llvm.fabs.f64(double %i.bf)
  %i.bh = fadd double %.1179212.prol, %i.bg       ; 3 uses
  %indvars.iv.next260.prol = add nuw nsw i64 %indvars.iv259.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter341
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !783

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph215
  %.lcssa.unr = phi double [ poison, %.lr.ph215 ], [ %i.bh, %.prol.preheader ]
  %indvars.iv259.unr = phi i64 [ %indvars.iv257, %.lr.ph215 ], [ %indvars.iv.next260.prol, %.prol.preheader ]
  %.1179212.unr = phi double [ %.0178217, %.lr.ph215 ], [ %i.bh, %.prol.preheader ]
  %i.bi = icmp ult i64 %i.bb, 3
  br i1 %i.bi, label %.loopexit199, label %.lr.ph215.new

.lr.ph215.new:                                    ; preds = %.prol.loopexit, %.lr.ph215.new
  %indvars.iv259 = phi i64 [ %indvars.iv.next260.3, %.lr.ph215.new ], [ %indvars.iv259.unr, %.prol.loopexit ] ; 5 uses
  %.1179212 = phi double [ %i.cb, %.lr.ph215.new ], [ %.1179212.unr, %.prol.loopexit ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv259
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !20
  %i.bl = tail call double @llvm.fabs.f64(double %i.bk)
  %i.bm = fadd double %.1179212, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv259
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !20
  %i.bq = tail call double @llvm.fabs.f64(double %i.bp)
  %i.br = fadd double %i.bm, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv259
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !20
  %i.bv = tail call double @llvm.fabs.f64(double %i.bu)
  %i.bw = fadd double %i.br, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv259
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load double, ptr %i.by, align 8, !tbaa !20
  %i.ca = tail call double @llvm.fabs.f64(double %i.bz)
  %i.cb = fadd double %i.bw, %i.ca                ; 2 uses
  %indvars.iv.next260.3 = add nuw nsw i64 %indvars.iv259, 4 ; 2 uses
  %exitcond263.not.3 = icmp eq i64 %indvars.iv.next260.3, %wide.trip.count262
  br i1 %exitcond263.not.3, label %.loopexit199, label %.lr.ph215.new, !llvm.loop !784

._crit_edge220:                                   ; preds = %.loopexit199
  %i.cc = fcmp oeq double %.lcssa, 0.000000e+00
  br i1 %i.cc, label %._crit_edge220.thread, label %.lr.ph243

.lr.ph243:                                        ; preds = %._crit_edge220
  %i.cd = icmp samesign ult i32 %.0176248, 4
  %i.ce = fmul double %.lcssa, 2.000000e-01
  %i.cf = fdiv double %i.ce, %i.ak
  %.0177 = select i1 %i.cd, double %i.cf, double 0.000000e+00
  %i.cg = icmp samesign ugt i32 %.0176248, 4
  br label %.lr.ph239

.loopexit198:                                     ; preds = %.loopexit
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond300.not, label %.preheader200, label %.lr.ph239, !llvm.loop !785

.preheader200:                                    ; preds = %.loopexit198
  br i1 %.not207, label %._crit_edge247, label %vector.body

vector.body:                                      ; preds = %.preheader200, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader200 ] ; 2 uses
  %i.ch = or disjoint i64 %index, 1               ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ch ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ci, align 8, !tbaa !20
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ch ; 2 uses
  %wide.load310 = load <2 x double>, ptr %i.cj, align 8, !tbaa !20
  %i.ck = fadd <2 x double> %wide.load, %wide.load310 ; 2 uses
  store <2 x double> %i.ck, ptr %i.cj, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ch
  store <2 x double> %i.ck, ptr %i.cl, align 8, !tbaa !20
  store <2 x double> zeroinitializer, ptr %i.ci, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !786

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge247, label %.lr.ph246

.lr.ph239:                                        ; preds = %.loopexit198, %.lr.ph243
  %indvar = phi i64 [ %indvar.next, %.loopexit198 ], [ 0, %.lr.ph243 ] ; 3 uses
  %indvars.iv296 = phi i64 [ %indvars.iv.next297, %.loopexit198 ], [ 1, %.lr.ph243 ] ; 8 uses
  %indvars.iv274 = phi i64 [ %indvars.iv.next275, %.loopexit198 ], [ 2, %.lr.ph243 ] ; 3 uses
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv296
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !513 ; 6 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv296 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv296 ; 2 uses
  %.not189.not222 = icmp samesign ugt i64 %indvars.iv296, 1
  %scevgep314 = getelementptr i8, ptr %i.co, i64 %5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph239, %.loopexit
  %indvar311 = phi i64 [ 0, %.lr.ph239 ], [ %indvar.next312, %.loopexit ] ; 3 uses
  %indvars.iv281 = phi i64 [ %indvars.iv274, %.lr.ph239 ], [ %indvars.iv.next282, %.loopexit ] ; 15 uses
  %i.cr = add i64 %indvar, %indvar311
  %i.cs = sub i64 %6, %i.cr                       ; 3 uses
  %i.ct = add i64 %indvar, %indvar311
  %i.cu = shl i64 %i.ct, 3
  %i.cv = add i64 %i.cu, 24                       ; 2 uses
  %scevgep313 = getelementptr i8, ptr %i.co, i64 %i.cv
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv281 ; 3 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !20 ; 4 uses
  %i.cy = tail call double @llvm.fabs.f64(double %i.cx) ; 2 uses
  %i.cz = fmul double %i.cy, 1.000000e+02
  %i.da = fcmp oeq double %i.cz, 0.000000e+00     ; 2 uses
  %or.cond = select i1 %i.cg, i1 %i.da, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.cw, align 8, !tbaa !20
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.db = fcmp ogt double %i.cy, %.0177
  br i1 %i.db, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv281 ; 3 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !20
  %i.de = load double, ptr %i.cp, align 8, !tbaa !20 ; 2 uses
  %i.df = fsub double %i.dd, %i.de                ; 2 uses
  br i1 %i.da, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dg = fdiv double %i.cx, %i.df
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.dh = fmul double %i.df, 5.000000e-01
  %i.di = fdiv double %i.dh, %i.cx                ; 4 uses
  %i.dj = tail call double @llvm.fabs.f64(double %i.di)
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.di, double %i.di, double 1.000000e+00)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.dk)
  %i.dl = fadd double %i.dj, %sqrt
  %i.dm = fdiv double 1.000000e+00, %i.dl         ; 2 uses
  %i.dn = fcmp olt double %i.di, 0.000000e+00
  br i1 %i.dn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.do = fneg double %i.dm
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.0180 = phi double [ %i.dg, %bb.f ], [ %i.do, %bb.h ], [ %i.dm, %bb.g ] ; 4 uses
  %i.dp = tail call double @llvm.fmuladd.f64(double %.0180, double %.0180, double 1.000000e+00)
  %sqrt195 = tail call double @llvm.sqrt.f64(double %i.dp)
  %i.dq = fdiv double 1.000000e+00, %sqrt195      ; 2 uses
  %i.dr = fmul double %.0180, %i.dq               ; 10 uses
  %i.ds = fadd double %i.dq, 1.000000e+00
  %i.dt = fdiv double %i.dr, %i.ds                ; 5 uses
  %i.du = fmul double %i.cx, %.0180               ; 4 uses
  %i.dv = load double, ptr %i.cq, align 8, !tbaa !20
  %i.dw = fsub double %i.dv, %i.du
  store double %i.dw, ptr %i.cq, align 8, !tbaa !20
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv281 ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !20
  %i.dz = fadd double %i.du, %i.dy
  store double %i.dz, ptr %i.dx, align 8, !tbaa !20
  %i.ea = fsub double %i.de, %i.du
  store double %i.ea, ptr %i.cp, align 8, !tbaa !20
  %i.eb = load double, ptr %i.dc, align 8, !tbaa !20
  %i.ec = fadd double %i.du, %i.eb
  store double %i.ec, ptr %i.dc, align 8, !tbaa !20
  store double 0.000000e+00, ptr %i.cw, align 8, !tbaa !20
  br i1 %.not189.not222, label %.lr.ph225, label %.preheader197

.lr.ph225:                                        ; preds = %bb.i
  %i.ed = fneg double %i.dr
  %i.ee = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.ed, i64 1
  %i.eg = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.j

.preheader197:                                    ; preds = %bb.j, %bb.i
  %.not190.not226 = icmp samesign ult i64 %indvars.iv.next297, %indvars.iv281
  br i1 %.not190.not226, label %.lr.ph228, label %.preheader196

.lr.ph228:                                        ; preds = %.preheader197
end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc15EdgeDrawingImpl6jacobiEPPdiS2_S3_:bb.a
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph225, %bb.j
  %indvars.iv269 = phi i64 [ 1, %.lr.ph225 ], [ %indvars.iv.next270, %bb.j ] ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv269
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !513 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv296 ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !20 ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv281 ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !20 ; 3 uses
  %i.et = fneg double %i.es
  %i.eu = insertelement <2 x double> poison, double %i.et, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.eq, i64 1
  %i.ew = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.es, i64 1
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> %i.eh, <2 x double> %i.ex)
  %i.ez = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.eq, i64 1
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.ey, <2 x double> %i.fa) ; 2 uses
  %i.fc = extractelement <2 x double> %i.fb, i64 1
  store double %i.fc, ptr %i.ep, align 8, !tbaa !20
  %i.fd = extractelement <2 x double> %i.fb, i64 0
  store double %i.fd, ptr %i.er, align 8, !tbaa !20
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next270, %indvars.iv296
  br i1 %exitcond273.not, label %.preheader197, label %bb.j, !llvm.loop !787

.preheader196:                                    ; preds = %bb.k, %.preheader197
  %.not191.not229 = icmp slt i64 %indvars.iv281, %i.al
  br i1 %.not191.not229, label %.lr.ph231, label %.preheader196..lr.ph234_crit_edge

.preheader196..lr.ph234_crit_edge:                ; preds = %.preheader196
  %.pre = fneg double %i.dr
  br label %.lr.ph234

.lr.ph231:                                        ; preds = %.preheader196
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv281
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !513 ; 4 uses
  %i.fg = fneg double %i.dr                       ; 4 uses
  %min.iters.check = icmp ult i64 %i.cs, 2
  br i1 %min.iters.check, label %scalar.ph317.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph231
  %scevgep315 = getelementptr nuw i8, ptr %i.ff, i64 %i.cv
  %scevgep316 = getelementptr i8, ptr %i.ff, i64 %5
  %bound0 = icmp ult ptr %scevgep313, %scevgep316
  %bound1 = icmp ult ptr %scevgep315, %scevgep314
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph317.preheader, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck
  %n.vec319 = and i64 %i.cs, -2                   ; 3 uses
  %i.fh = add i64 %indvars.iv281, %n.vec319
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fg, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert320 = insertelement <2 x double> poison, double %i.dt, i64 0
  %broadcast.splat321 = shufflevector <2 x double> %broadcast.splatinsert320, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert322 = insertelement <2 x double> poison, double %i.dr, i64 0
  %broadcast.splat323 = shufflevector <2 x double> %broadcast.splatinsert322, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op = add nuw i64 %indvars.iv281, 1
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph318
  %index325 = phi i64 [ 0, %vector.ph318 ], [ %index.next328, %vector.body324 ] ; 2 uses
  %.reass = add nuw i64 %index325, %invariant.op  ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.reass ; 2 uses
  %wide.load326 = load <2 x double>, ptr %i.fi, align 8, !tbaa !20, !alias.scope !788, !noalias !791 ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.reass ; 2 uses
  %wide.load327 = load <2 x double>, ptr %i.fj, align 8, !tbaa !20, !alias.scope !791 ; 3 uses
  %i.fk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load326, <2 x double> %broadcast.splat321, <2 x double> %wide.load327)
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.fk, <2 x double> %wide.load326)
  store <2 x double> %i.fl, ptr %i.fi, align 8, !tbaa !20, !alias.scope !788, !noalias !791
  %i.fm = fneg <2 x double> %wide.load327
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %broadcast.splat321, <2 x double> %wide.load326)
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat323, <2 x double> %i.fn, <2 x double> %wide.load327)
  store <2 x double> %i.fo, ptr %i.fj, align 8, !tbaa !20, !alias.scope !791
  %index.next328 = add nuw i64 %index325, 2       ; 2 uses
  %i.fp = icmp eq i64 %index.next328, %n.vec319
  br i1 %i.fp, label %middle.block329, label %vector.body324, !llvm.loop !793

middle.block329:                                  ; preds = %vector.body324
  %cmp.n330 = icmp eq i64 %i.cs, %n.vec319
  br i1 %cmp.n330, label %.lr.ph234, label %scalar.ph317.preheader

scalar.ph317.preheader:                           ; preds = %vector.memcheck, %.lr.ph231, %middle.block329
  %indvars.iv283.ph = phi i64 [ %indvars.iv281, %vector.memcheck ], [ %indvars.iv281, %.lr.ph231 ], [ %i.fh, %middle.block329 ]
  %i.fq = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.ft = insertelement <2 x double> %i.fs, double %i.fg, i64 1
  br label %scalar.ph317

bb.k:                                             ; preds = %.lr.ph228, %bb.k
  %indvars.iv276 = phi i64 [ %indvars.iv274, %.lr.ph228 ], [ %indvars.iv.next277, %bb.k ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv276 ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !20 ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv276
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !513
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv281 ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !20 ; 3 uses
  %i.ga = fneg double %i.fz
  %i.gb = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gc = insertelement <2 x double> %i.gb, double %i.fv, i64 1
  %i.gd = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.ge = insertelement <2 x double> %i.gd, double %i.fz, i64 1
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> %i.em, <2 x double> %i.ge)
  %i.gg = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.fv, i64 1
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.gf, <2 x double> %i.gh) ; 2 uses
  %i.gj = extractelement <2 x double> %i.gi, i64 1
  store double %i.gj, ptr %i.fu, align 8, !tbaa !20
  %i.gk = extractelement <2 x double> %i.gi, i64 0
  store double %i.gk, ptr %i.fy, align 8, !tbaa !20
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next277, %indvars.iv281
  br i1 %exitcond280.not, label %.preheader196, label %bb.k, !llvm.loop !794

.lr.ph234:                                        ; preds = %scalar.ph317, %middle.block329, %.preheader196..lr.ph234_crit_edge
  %.pre-phi = phi double [ %.pre, %.preheader196..lr.ph234_crit_edge ], [ %i.fg, %middle.block329 ], [ %i.fg, %scalar.ph317 ]
  %i.gl = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.gm = insertelement <2 x double> %i.gl, double %.pre-phi, i64 1
  %i.gn = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.l

scalar.ph317:                                     ; preds = %scalar.ph317.preheader, %scalar.ph317
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %scalar.ph317 ], [ %indvars.iv283.ph, %scalar.ph317.preheader ]
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 4 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.next284 ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !20 ; 3 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv.next284 ; 2 uses
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !20 ; 3 uses
  %i.gt = fneg double %i.gs
  %i.gu = insertelement <2 x double> poison, double %i.gt, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %i.gq, i64 1
  %i.gw = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gx = insertelement <2 x double> %i.gw, double %i.gs, i64 1
  %i.gy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %i.fr, <2 x double> %i.gx)
  %i.gz = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.ha = insertelement <2 x double> %i.gz, double %i.gq, i64 1
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ft, <2 x double> %i.gy, <2 x double> %i.ha) ; 2 uses
  %i.hc = extractelement <2 x double> %i.hb, i64 1
  store double %i.hc, ptr %i.gp, align 8, !tbaa !20
  %i.hd = extractelement <2 x double> %i.hb, i64 0
  store double %i.hd, ptr %i.gr, align 8, !tbaa !20
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count299
  br i1 %exitcond287.not, label %.lr.ph234, label %scalar.ph317, !llvm.loop !795

bb.l:                                             ; preds = %.lr.ph234, %bb.l
  %indvars.iv288 = phi i64 [ 1, %.lr.ph234 ], [ %indvars.iv.next289, %bb.l ] ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv288
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !513 ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv296 ; 2 uses
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !20 ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv281 ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !20 ; 3 uses
  %i.hk = fneg double %i.hj
  %i.hl = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %i.hh, i64 1
  %i.hn = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %i.hj, i64 1
  %i.hp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> %i.go, <2 x double> %i.ho)
  %i.hq = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hr = insertelement <2 x double> %i.hq, double %i.hh, i64 1
  %i.hs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.hp, <2 x double> %i.hr) ; 2 uses
  %i.ht = extractelement <2 x double> %i.hs, i64 1
  store double %i.ht, ptr %i.hg, align 8, !tbaa !20
  %i.hu = extractelement <2 x double> %i.hs, i64 0
  store double %i.hu, ptr %i.hi, align 8, !tbaa !20
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count294
  br i1 %exitcond292.not, label %.loopexit, label %bb.l, !llvm.loop !796

.loopexit:                                        ; preds = %bb.l, %bb.c, %bb.d
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next282, %wide.trip.count294
  %indvar.next312 = add i64 %indvar311, 1
  br i1 %exitcond295.not, label %.loopexit198, label %bb.b, !llvm.loop !797

.lr.ph246:                                        ; preds = %middle.block, %.lr.ph246
  %indvars.iv302 = phi i64 [ %indvars.iv.next303, %.lr.ph246 ], [ %10, %middle.block ] ; 4 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv302 ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !20
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv302 ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !20
  %i.hz = fadd double %i.hw, %i.hy                ; 2 uses
  store double %i.hz, ptr %i.hx, align 8, !tbaa !20
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv302
  store double %i.hz, ptr %i.ia, align 8, !tbaa !20
  store double 0.000000e+00, ptr %i.hv, align 8, !tbaa !20
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %._crit_edge247, label %.lr.ph246, !llvm.loop !798

._crit_edge247:                                   ; preds = %.lr.ph246, %middle.block, %.preheader200
  %i.ib = add nuw nsw i32 %.0176248, 1            ; 2 uses
  %exitcond307.not = icmp eq i32 %i.ib, 51
  br i1 %exitcond307.not, label %._crit_edge220.thread, label %.preheader201, !llvm.loop !799

._crit_edge220.thread:                            ; preds = %._crit_edge247, %._crit_edge220, %.preheader201
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #43
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl6ROTATEEPPdiiiidd(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !513
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !20 ; 3 uses
  %i.g = sext i32 %3 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !513
  %i.j = sext i32 %4 to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !20 ; 3 uses
  %i.m = fneg double %6
  %i.n = fneg double %i.l
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.f, i64 1
  %i.q = insertelement <2 x double> poison, double %5, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = insertelement <2 x double> poison, double %i.f, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.l, i64 1
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.r, <2 x double> %i.t)
  %i.v = insertelement <2 x double> poison, double %6, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.m, i64 1
  %i.x = insertelement <2 x double> poison, double %i.l, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.f, i64 1
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.u, <2 x double> %i.y) ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 1
  store double %i.aa, ptr %i.e, align 8, !tbaa !20
  %i.ab = extractelement <2 x double> %i.z, i64 0
  store double %i.ab, ptr %i.k, align 8, !tbaa !20
  ret void
}

declare void @_ZN2cv5splitERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl14InitColorEDLibEv() local_unnamed_addr #33 align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN2cv8ximgproc15EdgeDrawingImpl15LUT_InitializedE, align 1, !tbaa !94, !range !62, !noundef !63
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.o, label %.preheader21

.preheader21:                                     ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.g ], [ 0, %bb.a ] ; 5 uses
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = uitofp nneg i32 %i.c to double
  %i.e = fmul nnan double %i.d, f0x3E90000000000000 ; 3 uses
  %i.f = fcmp ult double %i.e, 4.045000e-02
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader21
  %i.g = fadd double %i.e, 5.500000e-02
  %i.h = fdiv double %i.g, 1.055000e+00
  %i.i = tail call double @pow(double noundef %i.h, double noundef 2.400000e+00) #42
  br label %bb.d

bb.c:                                             ; preds = %.preheader21
  %i.j = fdiv double %i.e, 1.292000e+01
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi double [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZN2cv8ximgproc15EdgeDrawingImpl4LUT1E, i64 %indvars.iv
  store double %.sink, ptr %i.k, align 16, !tbaa !20
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 4194304
  br i1 %exitcond.not, label %.preheader, label %.preheader21.1

.preheader21.1:                                   ; preds = %bb.d
  %i.l = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.m = uitofp nneg i32 %i.l to double
  %i.n = fmul nnan double %i.m, f0x3E90000000000000 ; 3 uses
  %i.o = fcmp ult double %i.n, 4.045000e-02
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader21.1
  %i.p = fadd double %i.n, 5.500000e-02
  %i.q = fdiv double %i.p, 1.055000e+00
  %i.r = tail call double @pow(double noundef %i.q, double noundef 2.400000e+00) #42
  br label %bb.g

bb.f:                                             ; preds = %.preheader21.1
  %i.s = fdiv double %i.n, 1.292000e+01
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.1 = phi double [ %i.s, %bb.f ], [ %i.r, %bb.e ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZN2cv8ximgproc15EdgeDrawingImpl4LUT1E, i64 %indvars.iv.next
  store double %.sink.1, ptr %i.t, align 8, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %.preheader21

bb.h:                                             ; preds = %bb.k
  store i8 1, ptr @_ZN2cv8ximgproc15EdgeDrawingImpl15LUT_InitializedE, align 1, !tbaa !94
  br label %bb.o

.preheader:                                       ; preds = %bb.d, %bb.n
  %indvars.iv25 = phi i64 [ %indvars.iv.next26.1, %bb.n ], [ 0, %bb.d ] ; 5 uses
  %i.u = trunc nuw nsw i64 %indvars.iv25 to i32
  %i.v = uitofp nneg i32 %i.u to double
  %i.w = fmul nnan double %i.v, f0x3E90000000000000 ; 3 uses
  %i.x = fcmp ogt double %i.w, 8.856000e-03
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.y = tail call double @pow(double noundef %i.w, double noundef f0x3FD5555555555555) #42
  br label %bb.k

bb.j:                                             ; preds = %.preheader
  %i.z = tail call double @llvm.fmuladd.f64(double %i.w, double f0x401F25E353F7CED9, double f0x3FC1A7B9611A7B96)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink29 = phi double [ %i.y, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @_ZN2cv8ximgproc15EdgeDrawingImpl4LUT2E, i64 %indvars.iv25
  store double %.sink29, ptr %i.aa, align 16, !tbaa !20
  %indvars.iv.next26 = or disjoint i64 %indvars.iv25, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv25, 4194304
  br i1 %exitcond28.not, label %bb.h, label %.preheader.1

.preheader.1:                                     ; preds = %bb.k
  %i.ab = trunc nuw nsw i64 %indvars.iv.next26 to i32
  %i.ac = uitofp nneg i32 %i.ab to double
  %i.ad = fmul nnan double %i.ac, f0x3E90000000000000 ; 3 uses
  %i.ae = fcmp ogt double %i.ad, 8.856000e-03
  br i1 %i.ae, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.1
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ad, double f0x401F25E353F7CED9, double f0x3FC1A7B9611A7B96)
  br label %bb.n

bb.m:                                             ; preds = %.preheader.1
  %i.ag = tail call double @pow(double noundef %i.ad, double noundef f0x3FD5555555555555) #42
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink29.1 = phi double [ %i.ag, %bb.m ], [ %i.af, %bb.l ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @_ZN2cv8ximgproc15EdgeDrawingImpl4LUT2E, i64 %indvars.iv.next26
  store double %.sink29.1, ptr %i.ah, align 8, !tbaa !20
  %indvars.iv.next26.1 = add nuw nsw i64 %indvars.iv25, 2
  br label %.preheader

bb.o:                                             ; preds = %bb.a, %bb.h
  ret void
}

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !327    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !331  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #42
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !356

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !327
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !330
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #43
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc19ComputeGradientBodyD0Ev(ptr noundef nonnull align 8 dereferenceable(641) %0) unnamed_addr #21 comdat align 2 {
bb.a:
end_hunk_1
