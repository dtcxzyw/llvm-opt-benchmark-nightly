Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/feasiblesqpmethod?download=true
inline.NumInlined: 5575
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZN6casadi14casadi_cvx_triIdEEvPT_xS2_S2_:bb.a

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i25
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %._crit_edge.i, label %.lr.ph.i25.epil.preheader

.lr.ph.i25.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i25.preheader
  %.041.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i25.preheader ], [ %i.cg, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03640.i.epil.init = phi i64 [ 1, %.lr.ph.i25.preheader ], [ %i.ch, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter48, 0
  call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.i25.epil

.lr.ph.i25.epil:                                  ; preds = %.lr.ph.i25.epil, %.lr.ph.i25.epil.preheader
  %.041.i.epil = phi double [ %i.ck, %.lr.ph.i25.epil ], [ %.041.i.epil.init, %.lr.ph.i25.epil.preheader ]
  %.03640.i.epil = phi i64 [ %i.cl, %.lr.ph.i25.epil ], [ %.03640.i.epil.init, %.lr.ph.i25.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i25.epil ], [ 0, %.lr.ph.i25.epil.preheader ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.03640.i.epil
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !155 ; 2 uses
  %i.ck = call double @llvm.fmuladd.f64(double %i.cj, double %i.cj, double %.041.i.epil) ; 2 uses
  %i.cl = add nuw nsw i64 %.03640.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter48
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i25.epil, !llvm.loop !1337

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i25.epil, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %i.cm = phi i1 [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ true, %.lr.ph.i25.epil ], [ true, %._crit_edge.i.loopexit.unr-lcssa ]
  %i.cn = phi double [ %i.bp, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ %i.ap, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ %i.bp, %.lr.ph.i25.epil ], [ %i.bp, %._crit_edge.i.loopexit.unr-lcssa ] ; 6 uses
  %.0.lcssa.i = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ %i.cg, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ck, %.lr.ph.i25.epil ] ; 4 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.027 ; 3 uses
  %i.cp = call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %.0.lcssa.i)
  %i.cq = call double @sqrt(double noundef %i.cp) #29 ; 3 uses
  %i.cr = fcmp oeq double %.0.lcssa.i, 0.000000e+00
  br i1 %i.cr, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.cs = fcmp olt double %i.cn, 0.000000e+00
  %i.ct = select i1 %i.cs, double 2.000000e+00, double 0.000000e+00
  store double %i.ct, ptr %i.co, align 8, !tbaa !155
  store double 1.000000e+00, ptr %i.z, align 8, !tbaa !155
  br label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.cu = fcmp ugt double %i.cn, 0.000000e+00
  %i.cv = fsub double %i.cn, %i.cq
  %i.cw = fneg double %.0.lcssa.i
  %i.cx = fadd double %i.cn, %i.cq
  %i.cy = fdiv double %i.cw, %i.cx
  %.035.i = select i1 %i.cu, double %i.cy, double %i.cv ; 4 uses
  %i.cz = fmul double %.035.i, %.035.i            ; 2 uses
  %i.da = fmul double %i.cz, 2.000000e+00
  %i.db = fadd double %.0.lcssa.i, %i.cz
  %i.dc = fdiv double %i.da, %i.db
  store double %i.dc, ptr %i.co, align 8, !tbaa !155
  store double 1.000000e+00, ptr %i.z, align 8, !tbaa !155
  br i1 %i.cm, label %.lr.ph44.i.preheader, label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit

.lr.ph44.i.preheader:                             ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.r, 2
  br i1 %min.iters.check, label %.lr.ph44.i.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.preheader
  %n.vec = and i64 %i.r, -2                       ; 2 uses
  %i.dd = or i64 %i.r, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.035.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.df, align 8, !tbaa !155
  %i.dg = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.dg, ptr %i.df, align 8, !tbaa !155
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !1338

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit, label %.lr.ph44.i.preheader46

.lr.ph44.i.preheader46:                           ; preds = %.lr.ph44.i.preheader, %middle.block
  %.142.i.ph = phi i64 [ 1, %.lr.ph44.i.preheader ], [ %i.dd, %middle.block ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader46, %.lr.ph44.i
  %.142.i = phi i64 [ %i.dl, %.lr.ph44.i ], [ %.142.i.ph, %.lr.ph44.i.preheader46 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.142.i ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !155
  %i.dk = fdiv double %i.dj, %.035.i
  store double %i.dk, ptr %i.di, align 8, !tbaa !155
  %i.dl = add nuw nsw i64 %.142.i, 1              ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.dl, %i.x
  br i1 %exitcond45.not.i, label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit, label %.lr.ph44.i, !llvm.loop !1339

_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit:  ; preds = %.lr.ph44.i, %middle.block, %bb.d, %bb.e
  store double %i.cq, ptr %i.v, align 8, !tbaa !155
  %i.dm = load double, ptr %i.co, align 8, !tbaa !155
  call void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %1, i64 noundef %.027, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.z, double noundef %i.dm)
  %i.dn = add nuw nsw i64 %.027, 1
  %exitcond.not = icmp eq i64 %.027, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1340

._crit_edge:                                      ; preds = %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi21casadi_cvx_symm_schurIdEEixPT_S2_S1_xPxS2_(i64 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  store i64 0, ptr %5, align 8, !tbaa !210
  %i.a = icmp sgt i64 %0, 0
  br i1 %i.a, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %bb.a
  %i.b = add nsw i64 %0, -1                       ; 5 uses
  %.not94 = icmp eq i64 %0, 1
  %.not = icmp eq ptr %6, null
  %i.c = icmp eq i64 %4, 0
  br i1 %i.c, label %._crit_edge91, label %.preheader77.lr.ph

.preheader77.lr.ph:                               ; preds = %.lr.ph90
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = shl i64 %0, 3                            ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 -8
  %scevgep104 = getelementptr i8, ptr %1, i64 %i.e
  %min.iters.check = icmp ult i64 %0, 3
  %bound0 = icmp ult ptr %2, %scevgep104
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.b, -2                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br label %.preheader77

.preheader77:                                     ; preds = %.preheader77.lr.ph, %bb.f
  %.07187102 = phi ptr [ %i.d, %.preheader77.lr.ph ], [ %.172, %bb.f ] ; 5 uses
  %.088101 = phi i64 [ 0, %.preheader77.lr.ph ], [ %i.az, %bb.f ] ; 2 uses
  br i1 %.not94, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader77
  %brmerge = or i1 %min.iters.check, %found.conflict
  br i1 %brmerge, label %.lr.ph.preheader110, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %pred.store.continue108
  %index = phi i64 [ %index.next, %pred.store.continue108 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.g, align 8, !tbaa !155, !alias.scope !1349, !noalias !1350
  %i.h = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load105 = load <2 x double>, ptr %i.i, align 8, !tbaa !155, !alias.scope !1350
  %i.j = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load105)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load106 = load <2 x double>, ptr %i.l, align 8, !tbaa !155, !alias.scope !1350
  %i.m = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load106)
  %i.n = fadd <2 x double> %i.j, %i.m
  %i.o = fmul <2 x double> %broadcast.splat, %i.n
  %i.p = fcmp ole <2 x double> %i.h, %i.o         ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  br i1 %i.q, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !155, !alias.scope !1349, !noalias !1350
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.r = extractelement <2 x i1> %i.p, i64 1
  br i1 %i.r, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !155, !alias.scope !1349, !noalias !1350
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !1346

middle.block:                                     ; preds = %pred.store.continue108
  br i1 %cmp.n, label %.lr.ph84.preheader, label %.lr.ph.preheader110

.lr.ph.preheader110:                              ; preds = %.lr.ph.preheader, %middle.block
  %.06878.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader110, %bb.c
  %.06878 = phi i64 [ %i.z, %bb.c ], [ %.06878.ph, %.lr.ph.preheader110 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.06878 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !155
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06878
  %i.z = add nuw nsw i64 %.06878, 1               ; 2 uses
  %i.aa = load <2 x double>, ptr %i.y, align 8, !tbaa !155
  %i.ab = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aa)
  %7 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ab)
  %i.ac = fmul double %3, %7
  %i.ad = fcmp ugt double %i.x, %i.ac
  br i1 %i.ad, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !155
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %exitcond.not = icmp eq i64 %i.z, %i.b
  br i1 %exitcond.not, label %.lr.ph84.preheader, label %.lr.ph, !llvm.loop !1347

.lr.ph84.preheader:                               ; preds = %bb.c, %middle.block
  br label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.lr.ph84
  %.05983 = phi i1 [ %or.cond, %.lr.ph84 ], [ true, %.lr.ph84.preheader ]
  %.06182 = phi i1 [ %or.cond3, %.lr.ph84 ], [ true, %.lr.ph84.preheader ]
  %.16481 = phi i64 [ %.3, %.lr.ph84 ], [ 0, %.lr.ph84.preheader ]
  %.06580 = phi i64 [ %.267, %.lr.ph84 ], [ 0, %.lr.ph84.preheader ]
  %.16979 = phi i64 [ %i.ap, %.lr.ph84 ], [ 0, %.lr.ph84.preheader ] ; 3 uses
  %i.ae = sub nsw i64 %0, %.16979
  %i.af = getelementptr [8 x i8], ptr %2, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !155
  %i.ai = fcmp oeq double %i.ah, 0.000000e+00
  %or.cond = and i1 %.05983, %i.ai                ; 2 uses
  %i.aj = zext i1 %or.cond to i64
  %.2 = add nuw nsw i64 %.16481, %i.aj            ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.16979
  %i.al = load double, ptr %i.ak, align 8, !tbaa !155
  %i.am = fcmp oeq double %i.al, 0.000000e+00
  %or.cond3 = and i1 %.06182, %i.am               ; 2 uses
  %i.an = zext i1 %or.cond3 to i64
  %.166 = add nsw i64 %.06580, %i.an
  %i.ao = icmp eq i64 %.2, %i.b                   ; 2 uses
  %.267 = select i1 %i.ao, i64 0, i64 %.166       ; 2 uses
  %.3 = select i1 %i.ao, i64 %0, i64 %.2          ; 2 uses
  %i.ap = add nuw nsw i64 %.16979, 1              ; 2 uses
  %exitcond96.not = icmp eq i64 %i.ap, %i.b
  br i1 %exitcond96.not, label %._crit_edge, label %.lr.ph84, !llvm.loop !1348

._crit_edge:                                      ; preds = %.lr.ph84, %.preheader77
  %.065.lcssa = phi i64 [ 0, %.preheader77 ], [ %.267, %.lr.ph84 ] ; 4 uses
  %.164.lcssa = phi i64 [ 0, %.preheader77 ], [ %.3, %.lr.ph84 ] ; 2 uses
  %i.aq = add i64 %.065.lcssa, %.164.lcssa
  %i.ar = sub i64 %0, %i.aq                       ; 3 uses
  %i.as = icmp slt i64 %.164.lcssa, %0
  br i1 %i.as, label %bb.d, label %._crit_edge91

bb.d:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds [8 x i8], ptr %1, i64 %.065.lcssa
  %i.au = getelementptr inbounds [8 x i8], ptr %2, i64 %.065.lcssa
  %i.av = getelementptr inbounds [8 x i8], ptr %6, i64 %.088101
  %i.aw = select i1 %.not, ptr null, ptr %i.av
  tail call void @_ZN6casadi22casadi_cvx_implicit_qrIdEEvxPT_S2_S2_(i64 noundef %i.ar, ptr noundef %i.at, ptr noundef %i.au, ptr noundef %i.aw)
  %i.ax = shl i64 %i.ar, 1
  %i.ay = add i64 %.088101, -2
  %i.az = add i64 %i.ay, %i.ax                    ; 2 uses
  %.not76 = icmp eq ptr %.07187102, null
  br i1 %.not76, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.07187102, i64 8
  store i64 %i.ar, ptr %.07187102, align 8, !tbaa !210
  %i.bb = getelementptr inbounds nuw i8, ptr %.07187102, i64 16
  store i64 %.065.lcssa, ptr %i.ba, align 8, !tbaa !210
  %i.bc = getelementptr inbounds nuw i8, ptr %.07187102, i64 24
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !210
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.172 = phi ptr [ %i.bc, %bb.e ], [ null, %bb.d ]
  %i.bd = load i64, ptr %5, align 8, !tbaa !210
  %i.be = add nsw i64 %i.bd, 1                    ; 2 uses
  store i64 %i.be, ptr %5, align 8, !tbaa !210
  %i.bf = icmp eq i64 %i.be, %4
  br i1 %i.bf, label %._crit_edge91, label %.preheader77

._crit_edge91:                                    ; preds = %bb.f, %._crit_edge, %.lr.ph90, %bb.a
  %.070 = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph90 ], [ 0, %._crit_edge ], [ 1, %bb.f ]
  ret i32 %.070
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, double noundef %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = add nsw i64 %1, 1                        ; 3 uses
  %i.b = mul nsw i64 %1, %0
  %i.c = getelementptr [8 x i8], ptr %2, i64 %i.a
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %i.b
  %i.e = xor i64 %1, -1
  %i.f = add i64 %0, %i.e                         ; 14 uses
  %.not.i = icmp ne ptr %3, null                  ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0                     ; 3 uses
  %or.cond.i = and i1 %i.g, %.not.i
  br i1 %or.cond.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread:    ; preds = %bb.a
  %i.h = shl nuw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %3, i8 0, i64 %i.h, i1 false), !tbaa !155
  br label %.lr.ph88.preheader

_ZN6casadi12casadi_clearIdEEvPT_x.exit:           ; preds = %bb.a
  br i1 %i.g, label %.lr.ph88.preheader, label %._crit_edge100

.lr.ph88.preheader:                               ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread, %_ZN6casadi12casadi_clearIdEEvPT_x.exit
  %i.i = getelementptr inbounds [8 x i8], ptr %i.d, i64 %0 ; 2 uses
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %._crit_edge
  %.087 = phi ptr [ %i.ai, %._crit_edge ], [ %i.i, %.lr.ph88.preheader ] ; 3 uses
  %.07386 = phi i64 [ %i.q, %._crit_edge ], [ 0, %.lr.ph88.preheader ] ; 4 uses
  %i.j = load double, ptr %.087, align 8, !tbaa !155
  %i.k = fmul double %5, %i.j
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.07386 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !155
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07386 ; 4 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !155
  %i.p = tail call double @llvm.fmuladd.f64(double %i.k, double %i.m, double %i.o)
  store double %i.p, ptr %i.n, align 8, !tbaa !155
  %i.q = add nuw nsw i64 %.07386, 1               ; 4 uses
  %i.r = icmp slt i64 %i.q, %i.f
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph88, %.lr.ph
  %.185.pn = phi ptr [ %.185, %.lr.ph ], [ %.087, %.lr.ph88 ]
  %.07184 = phi i64 [ %i.ae, %.lr.ph ], [ %i.q, %.lr.ph88 ] ; 3 uses
  %.185 = getelementptr inbounds nuw i8, ptr %.185.pn, i64 8 ; 4 uses
  %i.s = load double, ptr %.185, align 8, !tbaa !155
  %i.t = fmul double %5, %i.s
  %i.u = load double, ptr %i.l, align 8, !tbaa !155
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07184 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !155
  %i.x = tail call double @llvm.fmuladd.f64(double %i.t, double %i.u, double %i.w)
  store double %i.x, ptr %i.v, align 8, !tbaa !155
  %i.y = load double, ptr %.185, align 8, !tbaa !155
  %i.z = fmul double %5, %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.07184
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !155
  %i.ac = load double, ptr %i.n, align 8, !tbaa !155
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ab, double %i.ac)
  store double %i.ad, ptr %i.n, align 8, !tbaa !155
  %i.ae = add nuw nsw i64 %.07184, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1351

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph88
  %i.af = phi ptr [ %.087, %.lr.ph88 ], [ %.185, %.lr.ph ]
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.a
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.07386
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %exitcond101.not = icmp eq i64 %i.q, %i.f
  br i1 %exitcond101.not, label %._crit_edge89, label %.lr.ph88, !llvm.loop !1352

._crit_edge89:                                    ; preds = %._crit_edge
  %i.aj = fneg double %5
  br i1 %i.g, label %.lr.ph.i.preheader, label %._crit_edge100

.lr.ph.i.preheader:                               ; preds = %._crit_edge89
  %i.ak = add i64 %0, -2
  %i.al = sub i64 %i.ak, %1
  %xtraiter = and i64 %i.f, 3                     ; 3 uses
  %i.am = icmp ult i64 %i.al, 3
  br i1 %i.am, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.f, 9223372036854775804
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.012.i = phi double [ 0.000000e+00, %.lr.ph.i.preheader.new ], [ %i.bg, %.lr.ph.i ]
  %.0710.i = phi ptr [ %4, %.lr.ph.i.preheader.new ], [ %i.be, %.lr.ph.i ] ; 5 uses
  %.089.i = phi ptr [ %3, %.lr.ph.i.preheader.new ], [ %i.bc, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.089.i, i64 8
  %i.ao = load double, ptr %.089.i, align 8, !tbaa !155
  %i.ap = getelementptr inbounds nuw i8, ptr %.0710.i, i64 8
  %i.aq = load double, ptr %.0710.i, align 8, !tbaa !155
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.aq, double %.012.i)
  %i.as = getelementptr inbounds nuw i8, ptr %.089.i, i64 16
  %i.at = load double, ptr %i.an, align 8, !tbaa !155
  %i.au = getelementptr inbounds nuw i8, ptr %.0710.i, i64 16
  %i.av = load double, ptr %i.ap, align 8, !tbaa !155
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.at, double %i.av, double %i.ar)
  %i.ax = getelementptr inbounds nuw i8, ptr %.089.i, i64 24
  %i.ay = load double, ptr %i.as, align 8, !tbaa !155
  %i.az = getelementptr inbounds nuw i8, ptr %.0710.i, i64 24
  %i.ba = load double, ptr %i.au, align 8, !tbaa !155
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ba, double %i.aw)
  %i.bc = getelementptr inbounds nuw i8, ptr %.089.i, i64 32 ; 2 uses
  %i.bd = load double, ptr %i.ax, align 8, !tbaa !155
  %i.be = getelementptr inbounds nuw i8, ptr %.0710.i, i64 32 ; 2 uses
  %i.bf = load double, ptr %i.az, align 8, !tbaa !155
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bf, double %i.bb) ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !4

_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa: ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_feasiblesqpmethod.cpp:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.q) #30
  br label %.body.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL9NL_INPUTSB5cxx11E, i64 8), align 8, !tbaa !35
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.e, align 8, !tbaa !30
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.v = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.a
  br i1 %i.w, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !30
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #30
  br label %__cxx_global_var_init.exit

.body.i:                                          ; preds = %bb.c, %bb.b
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.e
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %.body.i
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !30
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  %i.ad = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !30
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %common.resume

__cxx_global_var_init.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.ah = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZN6casadiL9NL_INPUTSB5cxx11E, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !25
  store i8 102, ptr %i.ai, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.aj, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.ak, align 1, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !25
  store i8 103, ptr %i.am, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %i.an, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 0, ptr %i.ao, align 1, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i8 0, i64 24, i1 false)
  %i.ap = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #31
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9 unwind label %bb.e ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9: ; preds = %__cxx_global_var_init.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store ptr %i.ar, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i64 16), align 8, !tbaa !37
  %i.as = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ap)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9, %__cxx_global_var_init.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, align 8, !tbaa !34 ; 3 uses
  %.not.i.i5.i.i1 = icmp eq ptr %i.au, null
  br i1 %.not.i.i5.i.i1, label %.body.i2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i64 16), align 8, !tbaa !37
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #30
  br label %.body.i2

bb.g:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9
  store ptr %i.as, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i64 8), align 8, !tbaa !35
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.am
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %bb.g
  %i.bb = load i64, ptr %i.am, align 8, !tbaa !30
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  %i.bd = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ai
  br i1 %i.be, label %__cxx_global_var_init.2.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11
  %i.bf = load i64, ptr %i.ai, align 8, !tbaa !30
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #30
  br label %__cxx_global_var_init.2.exit

.body.i2:                                         ; preds = %bb.f, %bb.e
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.am
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i3: ; preds = %.body.i2
  %i.bj = load i64, ptr %i.am, align 8, !tbaa !30
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4: ; preds = %.body.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i3
  %i.bl = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ai
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4
  %i.bn = load i64, ptr %i.ai, align 8, !tbaa !30
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  br label %common.resume

__cxx_global_var_init.2.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  %i.bp = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZN6casadiL10NL_OUTPUTSB5cxx11E, ptr nonnull @__dso_handle) #29 ; 0 uses
  call fastcc void @__cxx_global_var_init.6()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #15

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { noreturn }
attributes #29 = { nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !36}
!1 = distinct !{null, null}
!2 = distinct !{!2, !36}
!3 = distinct !{!3, !36}
!4 = distinct !{!4, !36}
!5 = distinct !{!5, !36}
!6 = distinct !{null, null, null, null}
!7 = distinct !{!7, !36}
!8 = distinct !{!8, !36}
!9 = distinct !{!9, !36}
!10 = distinct !{!10, !36}
!11 = distinct !{!11, !36}
!12 = distinct !{!12, !36}
!13 = distinct !{!13, !36}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"any pointer", !18, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"long", !18, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !26, i64 8, !18, i64 16}
!29 = !{!28, !23, i64 0}
!30 = !{!18, !18, i64 0}
!31 = !{!28, !26, i64 8}
!32 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!33, !32, i64 0}
!35 = !{!33, !32, i64 8}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!33, !32, i64 16}
!38 = !{!"_ZTSN6casadi6Nlpsol7ExposedE"}
!39 = !{!"p1 _ZTSN6casadi7OptionsE", !22, i64 0}
!40 = !{!"_ZTSN6casadi15PluginInterfaceINS_6NlpsolEE6PluginE", !22, i64 0, !23, i64 8, !23, i64 16, !19, i64 24, !38, i64 28, !39, i64 32, !22, i64 40}
!41 = !{!40, !23, i64 8}
!42 = !{!"vtable pointer", !17, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"p1 _ZTSN6casadi14GenericWeakRefINS_12SharedObjectENS_20SharedObjectInternalEEE", !22, i64 0}
!45 = !{!"_ZTSN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEEE", !44, i64 8}
!46 = !{!"long long", !18, i64 0}
!47 = !{!"_ZTSN6casadi20SharedObjectInternalE", !45, i64 0, !46, i64 16}
!48 = !{!"bool", !18, i64 0}
!49 = !{!"any p2 pointer", !22, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE12_Vector_implE", !50, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIPvSaIS0_EE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIPvSaIS0_EE", !52, i64 0}
!54 = !{!"p2 int", !49, i64 0}
!55 = !{!"p1 int", !22, i64 0}
!56 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !55, i64 0, !55, i64 8, !55, i64 16, !54, i64 24}
!57 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !54, i64 0, !26, i64 8, !56, i64 16, !56, i64 48}
!58 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE11_Deque_implE", !57, i64 0}
!59 = !{!"_ZTSSt11_Deque_baseIiSaIiEE", !58, i64 0}
!60 = !{!"_ZTSSt5dequeIiSaIiEE", !59, i64 0}
!61 = !{!"_ZTSSt5stackIiSt5dequeIiSaIiEEE", !60, i64 0}
!62 = !{!"_ZTSN6casadi13ProtoFunctionE", !47, i64 0, !28, i64 24, !48, i64 56, !48, i64 57, !48, i64 58, !48, i64 59, !48, i64 60, !53, i64 64, !61, i64 88}
!63 = !{!"p1 long", !22, i64 0}
!64 = !{!"_ZTSSt18_Bit_iterator_base", !63, i64 0, !19, i64 8}
!65 = !{!"_ZTSSt13_Bit_iterator", !64, i64 0}
!66 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !65, i64 0, !65, i64 16, !63, i64 32}
!67 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !66, i64 0}
!68 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !67, i64 0}
!69 = !{!"_ZTSSt6vectorIbSaIbEE", !68, i64 0}
!70 = !{!"p1 _ZTSN6casadi8SparsityE", !22, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIN6casadi8SparsityESaIS1_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseIN6casadi8SparsityESaIS1_EE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIN6casadi8SparsityESaIS1_EE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorIN6casadi8SparsityESaIS1_EE", !73, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !33, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !76, i64 0}
!78 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!79 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !78, i64 0}
!80 = !{!"_ZTSSt14_Rb_tree_color", !18, i64 0}
!81 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !22, i64 0}
!82 = !{!"_ZTSSt18_Rb_tree_node_base", !80, i64 0, !81, i64 8, !81, i64 16, !81, i64 24}
!83 = !{!"_ZTSSt15_Rb_tree_header", !82, i64 0, !26, i64 32}
!84 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !79, i64 0, !83, i64 8}
!85 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !84, i64 0}
!86 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !85, i64 0}
!87 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !49, i64 0}
!88 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !22, i64 0}
!89 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !88, i64 0}
!90 = !{!"float", !18, i64 0}
!91 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !90, i64 0, !26, i64 8}
!92 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi14GenericWeakRefINS8_12SharedObjectENS8_20SharedObjectInternalEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE", !87, i64 0, !26, i64 8, !89, i64 16, !26, i64 24, !91, i64 32, !88, i64 48}
!93 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi14GenericWeakRefINS6_12SharedObjectENS6_20SharedObjectInternalEEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE", !92, i64 0}
!94 = !{!"_ZTSN6casadi9WeakCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FunctionEEE", !93, i64 0}
!95 = !{!"p1 _ZTSN6casadi20SharedObjectInternalE", !22, i64 0}
!96 = !{!"_ZTSN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEE", !95, i64 0}
!97 = !{!"_ZTSN6casadi12SharedObjectE", !96, i64 0}
!98 = !{!"_ZTSN6casadi8FunctionE", !97, i64 0}
!99 = !{!"_ZTSN6casadi8ImporterE", !97, i64 0}
!100 = !{!"double", !18, i64 0}
!101 = !{!"_ZTSN6casadi16FunctionInternalE", !62, i64 0, !48, i64 168, !48, i64 169, !26, i64 176, !26, i64 184, !69, i64 192, !69, i64 232, !74, i64 272, !74, i64 296, !77, i64 320, !77, i64 344, !48, i64 368, !48, i64 369, !28, i64 376, !28, i64 408, !28, i64 440, !48, i64 472, !22, i64 480, !22, i64 488, !22, i64 496, !86, i64 504, !48, i64 552, !86, i64 560, !94, i64 608, !18, i64 664, !98, i64 712, !22, i64 720, !28, i64 728, !99, i64 760, !86, i64 768, !100, i64 816, !48, i64 824, !48, i64 825, !48, i64 826, !48, i64 827, !48, i64 828, !48, i64 829, !48, i64 830, !48, i64 831, !100, i64 832, !100, i64 840, !46, i64 848, !48, i64 856, !86, i64 864, !100, i64 912, !28, i64 920, !48, i64 952, !48, i64 953, !48, i64 954, !46, i64 960, !48, i64 968, !48, i64 969, !48, i64 970, !28, i64 976, !28, i64 1008, !86, i64 1040, !86, i64 1088, !86, i64 1136, !86, i64 1184, !98, i64 1232, !46, i64 1240, !26, i64 1248, !26, i64 1256, !26, i64 1264, !26, i64 1272, !26, i64 1280, !26, i64 1288, !26, i64 1296, !26, i64 1304}
!102 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi14OracleFunction6RegFunEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !79, i64 0, !83, i64 8}
!103 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi14OracleFunction6RegFunEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !102, i64 0}
!104 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi14OracleFunction6RegFunESt4lessIS5_ESaISt4pairIKS5_S8_EEE", !103, i64 0}
!105 = !{!"_ZTSN6casadi14OracleFunctionE", !101, i64 0, !98, i64 1312, !86, i64 1320, !86, i64 1368, !48, i64 1416, !19, i64 1420, !104, i64 1424, !77, i64 1472, !26, i64 1496, !26, i64 1504, !26, i64 1512, !26, i64 1520, !48, i64 1528}
!106 = !{!"_ZTSN6casadi15PluginInterfaceINS_6NlpsolEEE"}
!107 = !{!"p1 long long", !22, i64 0}
!108 = !{!"_ZTSN6casadi32casadi_nlpsol_detect_bounds_probIdEE", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !107, i64 48, !107, i64 56, !23, i64 64, !22, i64 72, !22, i64 80}
!109 = !{!"_ZTSN6casadi18casadi_nlpsol_probIdEE", !46, i64 0, !46, i64 8, !46, i64 16, !108, i64 24}
!110 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!111 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !110, i64 0}
!112 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !111, i64 0}
!113 = !{!"_ZTSSt6vectorIcSaIcEE", !112, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!115 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE12_Vector_implE", !114, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseIxSaIxEE", !115, i64 0}
!117 = !{!"_ZTSSt6vectorIxSaIxEE", !116, i64 0}
!118 = !{!"_ZTSN6casadi14GenericWeakRefINS_12SharedObjectENS_20SharedObjectInternalEEE", !96, i64 0}
!119 = !{!"_ZTSN6casadi7WeakRefE", !118, i64 0}
!120 = !{!"_ZTSN6casadi6NlpsolE", !105, i64 0, !106, i64 1536, !109, i64 1544, !46, i64 1656, !46, i64 1664, !46, i64 1672, !98, i64 1680, !46, i64 1688, !28, i64 1696, !86, i64 1728, !113, i64 1776, !98, i64 1800, !117, i64 1808, !117, i64 1832, !48, i64 1856, !48, i64 1857, !48, i64 1858, !48, i64 1859, !48, i64 1860, !48, i64 1861, !48, i64 1862, !48, i64 1863, !48, i64 1864, !100, i64 1872, !48, i64 1880, !69, i64 1888, !69, i64 1928, !48, i64 1968, !119, i64 1976}
!121 = !{!"p1 _ZTSN6casadi18casadi_nlpsol_probIdEE", !22, i64 0}
!122 = !{!"_ZTSN6casadi29casadi_feasiblesqpmethod_probIdEE", !121, i64 0, !107, i64 8, !107, i64 16, !107, i64 24}
!123 = !{!"_ZTSN6casadi8SparsityE", !97, i64 0}
!124 = !{!"_ZTSN6casadi27casadi_convexify_strategy_tE", !18, i64 0}
!125 = !{!"_ZTSN6casadi26casadi_convexify_type_in_tE", !18, i64 0}
!126 = !{!"_ZTSN6casadi23casadi_convexify_configIdEE", !124, i64 0, !125, i64 4, !107, i64 8, !107, i64 16, !100, i64 24, !19, i64 32, !19, i64 36, !107, i64 40, !107, i64 48, !46, i64 56, !46, i64 64, !19, i64 72}
!127 = !{!"p1 double", !22, i64 0}
!128 = !{!"_ZTSN6casadi13ConvexifyDataE", !117, i64 0, !117, i64 24, !123, i64 48, !123, i64 56, !123, i64 64, !126, i64 72, !46, i64 152, !46, i64 160, !107, i64 168, !127, i64 176}
!129 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!130 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !129, i64 0}
!131 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !130, i64 0}
!132 = !{!"_ZTSSt6vectorIdSaIdEE", !131, i64 0}
!133 = !{!"_ZTSN6casadi17FeasiblesqpmethodE", !120, i64 0, !122, i64 1984, !98, i64 2016, !98, i64 2024, !48, i64 2032, !48, i64 2033, !48, i64 2034, !46, i64 2040, !46, i64 2048, !46, i64 2056, !46, i64 2064, !46, i64 2072, !100, i64 2080, !100, i64 2088, !48, i64 2096, !48, i64 2097, !48, i64 2098, !48, i64 2099, !123, i64 2104, !123, i64 2112, !128, i64 2120, !48, i64 2304, !100, i64 2312, !100, i64 2320, !100, i64 2328, !100, i64 2336, !100, i64 2344, !100, i64 2352, !100, i64 2360, !100, i64 2368, !100, i64 2376, !100, i64 2384, !100, i64 2392, !132, i64 2400, !100, i64 2424, !46, i64 2432, !46, i64 2440}
!134 = !{!133, !46, i64 2040}
!135 = !{!114, !107, i64 0}
!136 = !{!114, !107, i64 16}
!137 = !{!129, !127, i64 0}
!138 = !{!129, !127, i64 16}
!139 = !{!"p2 _ZTSN6casadi7OptionsE", !49, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseIPKN6casadi7OptionsESaIS3_EE17_Vector_impl_dataE", !139, i64 0, !139, i64 8, !139, i64 16}
!141 = !{!140, !139, i64 0}
!142 = !{!140, !139, i64 16}
!143 = !{!39, !39, i64 0}
!144 = !{!"_ZTSN6casadi6TypeIDE", !18, i64 0}
!145 = !{!"_ZTSN6casadi7Options5EntryE", !144, i64 0, !28, i64 8}
!146 = !{!145, !144, i64 0}
!147 = !{!83, !80, i64 0}
!148 = !{!83, !81, i64 8}
!149 = !{!83, !81, i64 16}
!150 = !{!83, !81, i64 24}
!151 = !{!83, !26, i64 32}
!152 = !{!81, !81, i64 0}
!153 = !{!133, !46, i64 2048}
!154 = !{!133, !46, i64 2064}
!155 = !{!100, !100, i64 0}
!156 = !{!48, !48, i64 0}
!157 = !{!133, !100, i64 2392}
!158 = !{!120, !46, i64 1656}
!159 = !{!"llvm.loop.isvectorized", i32 1}
!160 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_1
