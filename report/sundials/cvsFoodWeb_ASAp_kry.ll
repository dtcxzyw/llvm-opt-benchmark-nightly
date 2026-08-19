inline.NumInlined: 58
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@PrecondB:bb.a
  %invariant.gep = getelementptr [8 x i8], ptr %i.af, i64 %i.hf ; 3 uses
  br label %fblock.exit.us127

fblock.exit.us127:                                ; preds = %._crit_edge.us132, %.lr.ph125
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %._crit_edge.us132 ], [ 0, %.lr.ph125 ] ; 5 uses
  %i.hg = add nsw i64 %indvars.iv147, %i.hf       ; 2 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.hg ; 3 uses
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !24 ; 3 uses
  %i.hj = tail call double @llvm.fabs.f64(double %i.hi)
  %i.hk = fmul double %i.w, %i.hj                 ; 2 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.hg
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !24
  %i.hn = fdiv double %.0, %i.hm                  ; 2 uses
  %i.ho = fcmp ogt double %i.hk, %i.hn
  %..us129 = select i1 %i.ho, double %i.hk, double %i.hn ; 2 uses
  %i.hp = fadd double %i.hi, %..us129
  store double %i.hp, ptr %i.hh, align 8, !tbaa !24
  %i.hq = fdiv double %6, %..us129                ; 3 uses
  br i1 %i.be, label %.epil.preheader, label %fblock.exit.us127.new

fblock.exit.us127.new:                            ; preds = %fblock.exit.us127, %fblock.exit.us127.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %fblock.exit.us127.new ], [ 0, %fblock.exit.us127 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %fblock.exit.us127.new ], [ 0, %fblock.exit.us127 ]
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !24
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ht = load double, ptr %gep, align 8, !tbaa !24
  %i.hu = fsub double %i.hs, %i.ht
  %i.hv = fmul double %i.hq, %i.hu
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !95
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv147
  store double %i.hv, ptr %i.hy, align 8, !tbaa !24
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !24
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ib = load double, ptr %gep.1, align 8, !tbaa !24
  %i.ic = fsub double %i.ia, %i.ib
  %i.id = fmul double %i.hq, %i.ic
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.next
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !95
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv147
  store double %i.id, ptr %i.ig, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us132.unr-lcssa, label %fblock.exit.us127.new

._crit_edge.us132.unr-lcssa:                      ; preds = %fblock.exit.us127.new
  br i1 %lcmp.mod.not, label %._crit_edge.us132, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us132.unr-lcssa, %fblock.exit.us127
  %indvars.iv.epil.init = phi i64 [ 0, %fblock.exit.us127 ], [ %indvars.iv.next.1, %._crit_edge.us132.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod239)
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.epil.init
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !24
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.ij = load double, ptr %gep.epil, align 8, !tbaa !24
  %i.ik = fsub double %i.ii, %i.ij
  %i.il = fmul double %i.hq, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.epil.init
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !95
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv147
  store double %i.il, ptr %i.io, align 8, !tbaa !24
  br label %._crit_edge.us132

._crit_edge.us132:                                ; preds = %._crit_edge.us132.unr-lcssa, %.epil.preheader
  store double %i.hi, ptr %i.hh, align 8, !tbaa !24
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count170
  br i1 %exitcond151.not, label %._crit_edge126.split.split.us, label %fblock.exit.us127

._crit_edge126.split.split.us:                    ; preds = %._crit_edge.us132
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %i.bd
  br i1 %exitcond156.not, label %._crit_edge.split135, label %.lr.ph125

._crit_edge.split135:                             ; preds = %._crit_edge126.split.split.us
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count180
  br i1 %exitcond161.not, label %.preheader, label %.lr.ph

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph143, %bb.d
  %indvars.iv182 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next183, %bb.d ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv182 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !12
  tail call void @SUNDlsMat_denseAddIdentity(ptr noundef %i.iq, i64 noundef %i.gv) #10
  %i.ir = load ptr, ptr %i.ip, align 8, !tbaa !12
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv182
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !15
  %i.iu = tail call i64 @SUNDlsMat_denseGETRF(ptr noundef %i.ir, i64 noundef %i.gv, i64 noundef %i.gv, ptr noundef %i.it) #10
  %.not115 = icmp eq i64 %i.iu, 0
  br i1 %.not115, label %bb.d, label %.loopexit

._crit_edge:                                      ; preds = %bb.d, %.preheader
  store i32 1, ptr %5, align 4, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %check_retval.exit117, %check_retval.exit, %._crit_edge
  %.0108 = phi i32 [ 0, %._crit_edge ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit117 ], [ 1, %bb.e ]
  ret i32 %.0108
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PSolveB(double %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr noundef %5, double noundef %6, double %7, i32 %8, ptr nofree noundef readonly captures(none) %9) #0 {
bb.a:
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %4, ptr noundef %5) #10
  %i.a = fneg double %6
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 39216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  tail call fastcc void @GSIter(double noundef %i.a, ptr noundef %5, ptr noundef %i.c, ptr noundef %9)
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 84
  %i.h = load i32, ptr %i.g, align 4, !tbaa !100  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 92
  %i.j = load i32, ptr %i.i, align 4, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 208
  %i.m = icmp sgt i32 %i.h, 0
  br i1 %i.m, label %.lr.ph43, label %._crit_edge44.split

.lr.ph43:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !67
  %i.p = icmp sgt i32 %i.f, 0
  %i.q = sext i32 %i.o to i64                     ; 2 uses
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge44.split

.lr.ph.preheader:                                 ; preds = %.lr.ph43
  %wide.trip.count53 = zext nneg i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv50 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next51, %._crit_edge ] ; 2 uses
  %.041 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv50
  %i.s = load i32, ptr %i.r, align 4, !tbaa !25
  %i.t = mul nsw i32 %i.s, %i.j
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv45 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next46, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ %.041, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv45
  %i.v = load i32, ptr %i.u, align 4, !tbaa !25
  %i.w = add nsw i32 %i.v, %i.t
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %9, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.x
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ac = tail call ptr @N_VGetArrayPointer(ptr noundef %5) #10
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %indvars.iv
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.z, i64 noundef %i.q, ptr noundef %i.ab, ptr noundef %i.ad) #10
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.q ; 2 uses
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge44.split, label %.lr.ph

._crit_edge44.split:                              ; preds = %._crit_edge, %.lr.ph43, %bb.a
  ret i32 0
}

declare i32 @CVodeB(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CVodeGetB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintOutput(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #10 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 792
  br label %.preheader35

.preheader35:                                     ; preds = %bb.a, %bb.ap
  %indvars.iv49 = phi i64 [ 1, %bb.a ], [ %indvars.iv.next50, %bb.ap ] ; 3 uses
  %i.d = phi <2 x double> [ zeroinitializer, %bb.a ], [ %i.gi, %bb.ap ]
  %i.e = add nsw i64 %indvars.iv49, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader35, %bb.ao
  %indvars.iv = phi i64 [ 19, %.preheader35 ], [ %indvars.iv.next, %bb.ao ] ; 4 uses
  %.02841 = phi double [ 0.000000e+00, %.preheader35 ], [ %.230.19, %bb.ao ] ; 2 uses
  %i.f = phi <2 x double> [ %i.d, %.preheader35 ], [ %i.gi, %bb.ao ]
  %i.g = mul nuw nsw i64 %indvars.iv, 120
  %i.h = add nsw i64 %i.e, %i.g                   ; 20 uses
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  %i.j = uitofp nneg i32 %i.i to double           ; 20 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.h
  %i.l = load double, ptr %i.k, align 8, !tbaa !24 ; 2 uses
  %i.m = tail call double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp ogt double %i.m, %.02841
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.o = load <2 x double>, ptr %i.b, align 8, !tbaa !24
  %i.p = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.j, i64 1
  %i.q = fmul <2 x double> %i.o, %i.p
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %.230 = phi double [ %i.l, %bb.b ], [ %.02841, %.preheader ] ; 2 uses
  %i.r = phi <2 x double> [ %i.q, %bb.b ], [ %i.f, %.preheader ]
  %i.s = getelementptr [8 x i8], ptr %i.a, i64 %i.h
  %i.t = getelementptr i8, ptr %i.s, i64 48
  %i.u = load double, ptr %i.t, align 8, !tbaa !24 ; 2 uses
  %i.v = tail call double @llvm.fabs.f64(double %i.u)
  %i.w = fcmp ogt double %i.v, %.230
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load double, ptr %i.b, align 8, !tbaa !27
  %i.y = load double, ptr %i.c, align 8, !tbaa !28
  %i.z = fmul double %i.y, %i.j
  %i.aa = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.z, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.230.1 = phi double [ %i.u, %bb.d ], [ %.230, %bb.c ] ; 2 uses
  %i.ac = phi <2 x double> [ %i.ab, %bb.d ], [ %i.r, %bb.c ]
  %i.ad = getelementptr [8 x i8], ptr %i.a, i64 %i.h
  %i.ae = getelementptr i8, ptr %i.ad, i64 96
  %i.af = load double, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %i.ag = tail call double @llvm.fabs.f64(double %i.af)
  %i.ah = fcmp ogt double %i.ag, %.230.1
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = load <2 x double>, ptr %i.b, align 8, !tbaa !24
  %i.aj = insertelement <2 x double> <double 2.000000e+00, double poison>, double %i.j, i64 1
  %i.ak = fmul <2 x double> %i.ai, %i.aj
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.230.2 = phi double [ %i.af, %bb.f ], [ %.230.1, %bb.e ] ; 2 uses
  %i.al = phi <2 x double> [ %i.ak, %bb.f ], [ %i.ac, %bb.e ]
  %i.am = getelementptr [8 x i8], ptr %i.a, i64 %i.h
  %i.an = getelementptr i8, ptr %i.am, i64 144
  %i.ao = load double, ptr %i.an, align 8, !tbaa !24 ; 2 uses
  %i.ap = tail call double @llvm.fabs.f64(double %i.ao)
  %i.aq = fcmp ogt double %i.ap, %.230.2
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = load <2 x double>, ptr %i.b, align 8, !tbaa !24
  %i.as = insertelement <2 x double> <double 3.000000e+00, double poison>, double %i.j, i64 1
  %i.at = fmul <2 x double> %i.ar, %i.as
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.230.3 = phi double [ %i.ao, %bb.h ], [ %.230.2, %bb.g ] ; 2 uses
  %i.au = phi <2 x double> [ %i.at, %bb.h ], [ %i.al, %bb.g ]
  %i.av = getelementptr [8 x i8], ptr %i.a, i64 %i.h
  %i.aw = getelementptr i8, ptr %i.av, i64 192
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !24 ; 2 uses
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp ogt double %i.ay, %.230.3
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = load <2 x double>, ptr %i.b, align 8, !tbaa !24
  %i.bb = insertelement <2 x double> <double 4.000000e+00, double poison>, double %i.j, i64 1
  %i.bc = fmul <2 x double> %i.ba, %i.bb
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.230.4 = phi double [ %i.ax, %bb.j ], [ %.230.3, %bb.i ] ; 2 uses
  %i.bd = phi <2 x double> [ %i.bc, %bb.j ], [ %i.au, %bb.i ]
  %i.be = getelementptr [8 x i8], ptr %i.a, i64 %i.h
  %i.bf = getelementptr i8, ptr %i.be, i64 240
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !24 ; 2 uses
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ogt double %i.bh, %.230.4
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = load <2 x double>, ptr %i.b, align 8, !tbaa !24
  %i.bk = insertelement <2 x double> <double 5.000000e+00, double poison>, double %i.j, i64 1
  %i.bl = fmul <2 x double> %i.bj, %i.bk
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.230.5 = phi double [ %i.bg, %bb.l ], [ %.230.4, %bb.k ] ; 2 uses
  %i.bm = phi <2 x double> [ %i.bl, %bb.l ], [ %i.bd, %bb.k ]
  %i.bn = getelementptr [8 x i8], ptr %i.a, i64 %i.h
  %i.bo = getelementptr i8, ptr %i.bn, i64 288
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !24 ; 2 uses
  %i.bq = tail call double @llvm.fabs.f64(double %i.bp)
  %i.br = fcmp ogt double %i.bq, %.230.5
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = load <2 x double>, ptr %i.b, align 8, !tbaa !24
  %i.bt = insertelement <2 x double> <double 6.000000e+00, double poison>, double %i.j, i64 1
  %i.bu = fmul <2 x double> %i.bs, %i.bt
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.230.6 = phi double [ %i.bp, %bb.n ], [ %.230.5, %bb.m ] ; 2 uses
  %i.bv = phi <2 x double> [ %i.bu, %bb.n ], [ %i.bm, %bb.m ]
  %i.bw = getelementptr [8 x i8], ptr %i.a, i64 %i.h
  %i.bx = getelementptr i8, ptr %i.bw, i64 336
  %i.by = load double, ptr %i.bx, align 8, !tbaa !24 ; 2 uses
  %i.bz = tail call double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp ogt double %i.bz, %.230.6
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cb = load <2 x double>, ptr %i.b, align 8, !tbaa !24
  %i.cc = insertelement <2 x double> <double 7.000000e+00, double poison>, double %i.j, i64 1
  %i.cd = fmul <2 x double> %i.cb, %i.cc
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.230.7 = phi double [ %i.by, %bb.p ], [ %.230.6, %bb.o ] ; 2 uses
  %i.ce = phi <2 x double> [ %i.cd, %bb.p ], [ %i.bv, %bb.o ]
  %i.cf = getelementptr [8 x i8], ptr %i.a, i64 %i.h
  %i.cg = getelementptr i8, ptr %i.cf, i64 384
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !24 ; 2 uses
  %i.ci = tail call double @llvm.fabs.f64(double %i.ch)
  %i.cj = fcmp ogt double %i.ci, %.230.7
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ck = load <2 x double>, ptr %i.b, align 8, !tbaa !24
  %i.cl = insertelement <2 x double> <double 8.000000e+00, double poison>, double %i.j, i64 1
  %i.cm = fmul <2 x double> %i.ck, %i.cl
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.230.8 = phi double [ %i.ch, %bb.r ], [ %.230.7, %bb.q ] ; 2 uses
  %i.cn = phi <2 x double> [ %i.cm, %bb.r ], [ %i.ce, %bb.q ]
  %i.co = getelementptr [8 x i8], ptr %i.a, i64 %i.h
  %i.cp = getelementptr i8, ptr %i.co, i64 432
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !24 ; 2 uses
  %i.cr = tail call double @llvm.fabs.f64(double %i.cq)
  %i.cs = fcmp ogt double %i.cr, %.230.8
  br i1 %i.cs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ct = load <2 x double>, ptr %i.b, align 8, !tbaa !24
  %i.cu = insertelement <2 x double> <double 9.000000e+00, double poison>, double %i.j, i64 1
  %i.cv = fmul <2 x double> %i.ct, %i.cu
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.230.9 = phi double [ %i.cq, %bb.t ], [ %.230.8, %bb.s ] ; 2 uses
  %i.cw = phi <2 x double> [ %i.cv, %bb.t ], [ %i.cn, %bb.s ]
  %i.cx = getelementptr [8 x i8], ptr %i.a, i64 %i.h
  %i.cy = getelementptr i8, ptr %i.cx, i64 480
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !24 ; 2 uses
  %i.da = tail call double @llvm.fabs.f64(double %i.cz)
  %i.db = fcmp ogt double %i.da, %.230.9
  br i1 %i.db, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dc = load <2 x double>, ptr %i.b, align 8, !tbaa !24
  %i.dd = insertelement <2 x double> <double 1.000000e+01, double poison>, double %i.j, i64 1
  %i.de = fmul <2 x double> %i.dc, %i.dd
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.230.10 = phi double [ %i.cz, %bb.v ], [ %.230.9, %bb.u ] ; 2 uses
  %i.df = phi <2 x double> [ %i.de, %bb.v ], [ %i.cw, %bb.u ]
  %i.dg = getelementptr [8 x i8], ptr %i.a, i64 %i.h
  %i.dh = getelementptr i8, ptr %i.dg, i64 528
  %i.di = load double, ptr %i.dh, align 8, !tbaa !24 ; 2 uses
  %i.dj = tail call double @llvm.fabs.f64(double %i.di)
  %i.dk = fcmp ogt double %i.dj, %.230.10
  br i1 %i.dk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dl = load <2 x double>, ptr %i.b, align 8, !tbaa !24
  %i.dm = insertelement <2 x double> <double 1.100000e+01, double poison>, double %i.j, i64 1
  %i.dn = fmul <2 x double> %i.dl, %i.dm
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.230.11 = phi double [ %i.di, %bb.x ], [ %.230.10, %bb.w ] ; 2 uses
  %i.do = phi <2 x double> [ %i.dn, %bb.x ], [ %i.df, %bb.w ]
  %i.dp = getelementptr [8 x i8], ptr %i.a, i64 %i.h
  %i.dq = getelementptr i8, ptr %i.dp, i64 576
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !24 ; 2 uses
  %i.ds = tail call double @llvm.fabs.f64(double %i.dr)
  %i.dt = fcmp ogt double %i.ds, %.230.11
end_hunk_0
