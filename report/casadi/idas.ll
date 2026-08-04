inline.NumInlined: 65
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@IDARcheck3:bb.a
  %i.pv = fcmp une double %i.pu, 0.000000e+00
  br i1 %i.pv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 1, ptr %i.pq, align 4, !tbaa !26
  %.pre111 = load i32, ptr %i.au, align 8, !tbaa !108
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.aq, %bb.ar
  %i.pw = phi i32 [ %i.pp, %bb.ap ], [ %i.pp, %bb.aq ], [ %.pre111, %bb.ar ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.px = sext i32 %i.pw to i64
  %i.py = icmp slt i64 %indvars.iv.next, %i.px
  br i1 %i.py, label %bb.ap, label %._crit_edge, !llvm.loop !329

._crit_edge.thread.thread:                        ; preds = %IDARootfind.exit, %.loopexit246.i
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 2 uses
  %i.qa = load double, ptr %i.pz, align 8, !tbaa !311
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 1720
  store double %i.qa, ptr %i.qb, align 8, !tbaa !224
  br label %bb.at

._crit_edge.thread:                               ; preds = %bb.m
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 2 uses
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !311
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 1720
  store double %i.qd, ptr %i.qe, align 8, !tbaa !224
  br i1 %.not157, label %IDARootfind.exit.thread, label %bb.at

._crit_edge:                                      ; preds = %bb.as
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 2 uses
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !311
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 1720
  store double %i.qg, ptr %i.qh, align 8, !tbaa !224
  %i.qi = icmp sgt i32 %i.pw, 0
  br i1 %i.qi, label %.lr.ph82, label %._crit_edge83

.lr.ph82:                                         ; preds = %._crit_edge
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !200 ; 7 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !198 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.pw to i64   ; 5 uses
  %min.iters.check230 = icmp ult i32 %i.pw, 8
  %i.qn = ptrtoaddr ptr %i.qm to i64
  %i.qo = ptrtoaddr ptr %i.qk to i64
  %i.qp = sub i64 %i.qo, %i.qn
  %diff.check228 = icmp ugt i64 %i.qp, -32
  %or.cond255 = select i1 %min.iters.check230, i1 true, i1 %diff.check228
  br i1 %or.cond255, label %scalar.ph229.preheader, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph82
  %n.vec233 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph231
  %index235 = phi i64 [ 0, %vector.ph231 ], [ %index.next238, %vector.body234 ] ; 3 uses
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %index235 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %wide.load236 = load <2 x double>, ptr %i.qq, align 8, !tbaa !60
  %wide.load237 = load <2 x double>, ptr %i.qr, align 8, !tbaa !60
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %index235 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store <2 x double> %wide.load236, ptr %i.qs, align 8, !tbaa !60
  store <2 x double> %wide.load237, ptr %i.qt, align 8, !tbaa !60
  %index.next238 = add nuw i64 %index235, 4       ; 2 uses
  %i.qu = icmp eq i64 %index.next238, %n.vec233
  br i1 %i.qu, label %middle.block239, label %vector.body234, !llvm.loop !330

middle.block239:                                  ; preds = %vector.body234
  %cmp.n240 = icmp eq i64 %n.vec233, %wide.trip.count
  br i1 %cmp.n240, label %._crit_edge83, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %.lr.ph82, %middle.block239
  %indvars.iv107.ph = phi i64 [ 0, %.lr.ph82 ], [ %n.vec233, %middle.block239 ] ; 3 uses
  %xtraiter289 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod290.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod290.not, label %scalar.ph229.prol.loopexit, label %scalar.ph229.prol

scalar.ph229.prol:                                ; preds = %scalar.ph229.preheader, %scalar.ph229.prol
  %indvars.iv107.prol = phi i64 [ %indvars.iv.next108.prol, %scalar.ph229.prol ], [ %indvars.iv107.ph, %scalar.ph229.preheader ] ; 3 uses
  %prol.iter291 = phi i64 [ %prol.iter291.next, %scalar.ph229.prol ], [ 0, %scalar.ph229.preheader ]
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %indvars.iv107.prol
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !60
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv107.prol
  store double %i.qw, ptr %i.qx, align 8, !tbaa !60
  %indvars.iv.next108.prol = add nuw nsw i64 %indvars.iv107.prol, 1 ; 2 uses
  %prol.iter291.next = add i64 %prol.iter291, 1   ; 2 uses
  %prol.iter291.cmp.not = icmp eq i64 %prol.iter291.next, %xtraiter289
  br i1 %prol.iter291.cmp.not, label %scalar.ph229.prol.loopexit, label %scalar.ph229.prol, !llvm.loop !331

scalar.ph229.prol.loopexit:                       ; preds = %scalar.ph229.prol, %scalar.ph229.preheader
  %indvars.iv107.unr = phi i64 [ %indvars.iv107.ph, %scalar.ph229.preheader ], [ %indvars.iv.next108.prol, %scalar.ph229.prol ]
  %i.qy = sub nsw i64 %indvars.iv107.ph, %wide.trip.count
  %i.qz = icmp ugt i64 %i.qy, -4
  br i1 %i.qz, label %._crit_edge83, label %scalar.ph229

scalar.ph229:                                     ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229
  %indvars.iv107 = phi i64 [ %indvars.iv.next108.3, %scalar.ph229 ], [ %indvars.iv107.unr, %scalar.ph229.prol.loopexit ] ; 6 uses
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %indvars.iv107
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !60
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv107
  store double %i.rb, ptr %i.rc, align 8, !tbaa !60
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %indvars.iv.next108
  %i.re = load double, ptr %i.rd, align 8, !tbaa !60
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv.next108
  store double %i.re, ptr %i.rf, align 8, !tbaa !60
  %indvars.iv.next108.1 = add nuw nsw i64 %indvars.iv107, 2 ; 2 uses
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %indvars.iv.next108.1
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !60
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv.next108.1
  store double %i.rh, ptr %i.ri, align 8, !tbaa !60
  %indvars.iv.next108.2 = add nuw nsw i64 %indvars.iv107, 3 ; 2 uses
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %indvars.iv.next108.2
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !60
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv.next108.2
  store double %i.rk, ptr %i.rl, align 8, !tbaa !60
  %indvars.iv.next108.3 = add nuw nsw i64 %indvars.iv107, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next108.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge83, label %scalar.ph229, !llvm.loop !332

._crit_edge83:                                    ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229, %middle.block239, %._crit_edge
  br i1 %.0221.i.shrunk127, label %bb.at, label %IDARootfind.exit.thread

bb.at:                                            ; preds = %._crit_edge.thread.thread, %._crit_edge.thread, %._crit_edge83
  %i.rm = phi ptr [ %i.qc, %._crit_edge.thread ], [ %i.qf, %._crit_edge83 ], [ %i.pz, %._crit_edge.thread.thread ]
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !311
  %i.ro = load ptr, ptr %i.r, align 8, !tbaa !206
  %i.rp = load ptr, ptr %i.t, align 8, !tbaa !207
  %i.rq = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.rn, ptr noundef %i.ro, ptr noundef %i.rp) ; 0 uses
  br label %IDARootfind.exit.thread

IDARootfind.exit.thread:                          ; preds = %bb.w, %._crit_edge.thread.thread132, %._crit_edge.thread, %._crit_edge83, %bb.c, %bb.at
  %.0 = phi i32 [ 1, %bb.at ], [ -10, %bb.c ], [ 0, %._crit_edge83 ], [ 0, %._crit_edge.thread ], [ 0, %._crit_edge.thread.thread132 ], [ -10, %bb.w ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -26, 1) i32 @IDAGetSolution(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.4)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = load double, ptr %0, align 8, !tbaa !8
  %i.c = fmul double %i.b, 1.000000e+02
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 3 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !100
  %i.f = tail call double @SUNRabs(double noundef %i.e) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !212
  %i.i = tail call double @SUNRabs(double noundef %i.h) #12
  %i.j = fadd double %i.f, %i.i
  %i.k = fmul double %i.c, %i.j                   ; 2 uses
  %i.l = load double, ptr %i.g, align 8, !tbaa !212 ; 2 uses
  %i.m = fcmp olt double %i.l, 0.000000e+00
  %i.n = fneg double %i.k
  %.056 = select i1 %i.m, double %i.n, double %i.k
  %i.o = load double, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.q = load double, ptr %i.p, align 8, !tbaa !229
  %i.r = fsub double %i.o, %i.q                   ; 2 uses
  %i.s = fsub double %i.r, %.056
  %i.t = fsub double %1, %i.s
  %i.u = fmul double %i.l, %i.t
  %i.v = fcmp olt double %i.u, 0.000000e+00
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.76, double noundef %1, double noundef %i.r, double noundef %i.o)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.x, ptr noundef %2) #12
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %3) #12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1660
  %i.z = load i32, ptr %i.y, align 4, !tbaa !105
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.z, i32 1) ; 2 uses
  %i.aa = load double, ptr %i.d, align 8, !tbaa !100
  %i.ab = fsub double %1, %i.aa                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.not58 = icmp slt i32 %spec.store.select, 1
  br i1 %.not58, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !60
  %i.ae = fdiv double %i.ab, %i.ad
  %i.af = add nuw i32 %spec.store.select, 1
  %wide.trip.count = zext i32 %i.af to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.05261 = phi double [ %i.ae, %.lr.ph.preheader ], [ %10, %.lr.ph ] ; 2 uses
  %.05360 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %6, %.lr.ph ]
  %.05459 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %7, %.lr.ph ] ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %4 = load double, ptr %i.ah, align 8, !tbaa !60 ; 2 uses
  %5 = fdiv double %.05459, %4
  %6 = tail call double @llvm.fmuladd.f64(double %.05360, double %.05261, double %5) ; 2 uses
  %7 = fmul double %.05459, %.05261               ; 2 uses
  %8 = fadd double %i.ab, %4
  %9 = load double, ptr %i.ag, align 8, !tbaa !60
  %10 = fdiv double %8, %9
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !57
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %7, ptr noundef %i.aj, ptr noundef %2) #12
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !57
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %3, double noundef %6, ptr noundef %i.ak, ptr noundef %3) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !333

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.d, %bb.b
  %.055 = phi i32 [ -20, %bb.b ], [ -26, %bb.d ], [ 0, %bb.e ], [ 0, %.lr.ph ]
  ret i32 %.055
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -99, 100) i32 @IDAStopTest1(ptr nofree noundef nonnull captures(address_is_null) %0, double noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  switch i32 %5, label %bb.ac [
    i32 1, label %bb.b
    i32 2, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !215
  %.not100 = icmp eq i32 %i.b, 0                  ; 2 uses
  br i1 %.not100, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.d = load double, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.f = load double, ptr %i.e, align 8, !tbaa !216 ; 2 uses
  %i.g = fsub double %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.i = load double, ptr %i.h, align 8, !tbaa !212
  %i.j = fmul double %i.g, %i.i
  %i.k = fcmp ogt double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.59, double noundef %i.f, double noundef %i.d)
  br label %bb.ac

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 4 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !225
  %i.n = fcmp oeq double %1, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double %1, ptr %i.l, align 8, !tbaa !225
  store double %1, ptr %2, align 8, !tbaa !60
  br label %bb.ac

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 4 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !100 ; 2 uses
  %i.q = fsub double %i.p, %1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 4 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !212
  %i.t = fmul double %i.q, %i.s
  %i.u = fcmp ult double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not103 = icmp eq i32 %i.v, 0
  br i1 %.not103, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.113, double noundef %1)
  br label %bb.ac

bb.j:                                             ; preds = %bb.h
  store double %1, ptr %i.l, align 8, !tbaa !225
  store double %1, ptr %2, align 8, !tbaa !60
  br label %bb.ac

bb.k:                                             ; preds = %bb.g
  br i1 %.not100, label %bb.ac, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load double, ptr %0, align 8, !tbaa !8
  %i.x = fmul double %i.w, 1.000000e+02
  %i.y = tail call double @SUNRabs(double noundef %i.p) #12
  %i.z = load double, ptr %i.r, align 8, !tbaa !212
  %i.aa = tail call double @SUNRabs(double noundef %i.z) #12
  %i.ab = fadd double %i.y, %i.aa
  %i.ac = fmul double %i.x, %i.ab
  %i.ad = load double, ptr %i.o, align 8, !tbaa !100
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 4 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !216
  %i.ag = fsub double %i.ad, %i.af
  %i.ah = tail call double @SUNRabs(double noundef %i.ag) #12
  %i.ai = fcmp ugt double %i.ah, %i.ac
  br i1 %i.ai, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load double, ptr %i.ae, align 8, !tbaa !216
  %i.ak = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.aj, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not102 = icmp eq i32 %i.ak, 0
  %i.al = load double, ptr %i.ae, align 8, !tbaa !216 ; 3 uses
  br i1 %.not102, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load double, ptr %i.o, align 8, !tbaa !100
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.59, double noundef %i.al, double noundef %i.am)
  br label %bb.ac

bb.o:                                             ; preds = %bb.m
  store double %i.al, ptr %i.l, align 8, !tbaa !225
  store double %i.al, ptr %2, align 8, !tbaa !60
  store i32 0, ptr %i.a, align 8, !tbaa !215
  br label %bb.ac

bb.p:                                             ; preds = %bb.l
  %i.an = load double, ptr %i.o, align 8, !tbaa !100 ; 2 uses
  %i.ao = load double, ptr %i.r, align 8, !tbaa !212 ; 2 uses
  %i.ap = fadd double %i.an, %i.ao
  %i.aq = load double, ptr %i.ae, align 8, !tbaa !216 ; 2 uses
  %i.ar = fsub double %i.ap, %i.aq
  %i.as = fmul double %i.ao, %i.ar
  %i.at = fcmp ogt double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.q, label %bb.ac

bb.q:                                             ; preds = %bb.p
  %i.au = fsub double %i.aq, %i.an
  %i.av = load double, ptr %0, align 8, !tbaa !8
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double -4.000000e+00, double 1.000000e+00)
  %i.ax = fmul double %i.au, %i.aw
  store double %i.ax, ptr %i.r, align 8, !tbaa !212
  br label %bb.ac

bb.r:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !215
  %.not = icmp eq i32 %i.az, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 5 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !100 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 4 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !212 ; 3 uses
  br i1 %.not, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 5 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !216 ; 2 uses
  %i.bg = fsub double %i.bb, %i.bf
  %i.bh = fmul double %i.bg, %i.bd
  %i.bi = fcmp ogt double %i.bh, 0.000000e+00
  br i1 %i.bi, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.59, double noundef %i.bf, double noundef %i.bb)
  br label %bb.ac

bb.u:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !225
  %i.bl = fsub double %i.bb, %i.bk
  %i.bm = fmul double %i.bl, %i.bd
  %i.bn = fcmp ogt double %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.v, label %bb.ac

.thread:                                          ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 3 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !225
  %i.bq = fsub double %i.bb, %i.bp
  %i.br = fmul double %i.bq, %i.bd
  %i.bs = fcmp ogt double %i.br, 0.000000e+00
  br i1 %i.bs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread, %bb.u
  %i.bt = phi ptr [ %i.bo, %.thread ], [ %i.bj, %bb.u ]
  %i.bu = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.bb, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  %i.bv = load double, ptr %i.ba, align 8, !tbaa !100 ; 2 uses
  store double %i.bv, ptr %i.bt, align 8, !tbaa !225
  store double %i.bv, ptr %2, align 8, !tbaa !60
  br label %bb.ac

bb.w:                                             ; preds = %.thread
  %i.bw = load double, ptr %0, align 8, !tbaa !8
  %i.bx = fmul double %i.bw, 1.000000e+02
  %i.by = tail call double @SUNRabs(double noundef %i.bb) #12
  %i.bz = load double, ptr %i.bc, align 8, !tbaa !212
  %i.ca = tail call double @SUNRabs(double noundef %i.bz) #12
  %i.cb = fadd double %i.by, %i.ca
  %i.cc = fmul double %i.bx, %i.cb
  %i.cd = load double, ptr %i.ba, align 8, !tbaa !100
  %i.ce = load double, ptr %i.be, align 8, !tbaa !216
  %i.cf = fsub double %i.cd, %i.ce
  %i.cg = tail call double @SUNRabs(double noundef %i.cf) #12
  %i.ch = fcmp ugt double %i.cg, %i.cc
  br i1 %i.ch, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = load double, ptr %i.be, align 8, !tbaa !216
  %i.cj = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.ci, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not99 = icmp eq i32 %i.cj, 0
  %i.ck = load double, ptr %i.be, align 8, !tbaa !216 ; 3 uses
  br i1 %.not99, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = load double, ptr %i.ba, align 8, !tbaa !100
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.59, double noundef %i.ck, double noundef %i.cl)
  br label %bb.ac

end_hunk_0
