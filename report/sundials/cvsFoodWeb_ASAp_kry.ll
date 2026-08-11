inline.NumInlined: 58
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Precond:bb.a
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %._crit_edge118.split.us.us.us, label %.preheader.preheader.i.i.us.us.us

._crit_edge118.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %i.ba
  br i1 %exitcond168.not, label %._crit_edge.split127.us.us, label %.lr.ph117.us.us

._crit_edge.split127.us.us:                       ; preds = %._crit_edge118.split.us.us.us
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %.preheader, label %.lr.ph.us

.preheader:                                       ; preds = %._crit_edge.split127, %._crit_edge.split127.us.us, %.lr.ph130, %bb.b
  %i.hd = icmp sgt i32 %i.t, 0
  br i1 %i.hd, label %.lr.ph135, label %._crit_edge

.lr.ph135:                                        ; preds = %.preheader
  %i.he = sext i32 %i.p to i64                    ; 3 uses
  %wide.trip.count177 = zext nneg i32 %i.t to i64
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge.split127
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %._crit_edge.split127 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv149
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !25
  %i.hh = mul nsw i32 %i.hg, %i.z
  %i.hi = mul nuw nsw i64 %indvars.iv149, %i.ba
  %invariant.gep187 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.hi
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph, %._crit_edge118.split.split.us
  %indvars.iv144 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next145, %._crit_edge118.split.split.us ] ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv144
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !25
  %i.hl = mul nsw i32 %i.hk, %i.p
  %i.hm = add nsw i32 %i.hl, %i.hh
  %gep188 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep187, i64 %indvars.iv144
  %i.hn = load ptr, ptr %gep188, align 8, !tbaa !12
  %i.ho = sext i32 %i.hm to i64                   ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.ho ; 4 uses
  %i.hp = shl nsw i64 %i.ho, 3
  %i.hq = add i64 %i.hp, %i.a
  %invariant.op = sub i64 -809, %i.hq
  br label %fblock.exit.us119

fblock.exit.us119:                                ; preds = %._crit_edge.us124, %.lr.ph117
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %._crit_edge.us124 ], [ 0, %.lr.ph117 ] ; 3 uses
  %i.hr = add nsw i64 %indvars.iv139, %i.ho       ; 2 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.hr ; 3 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !24 ; 3 uses
  %i.hu = tail call double @llvm.fabs.f64(double %i.ht)
  %i.hv = fmul double %i.r, %i.hu                 ; 2 uses
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.hr
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !24
  %i.hy = fdiv double %.0105, %i.hx               ; 2 uses
  %i.hz = fcmp ogt double %i.hv, %i.hy
  %..us121 = select i1 %i.hz, double %i.hv, double %i.hy ; 2 uses
  %i.ia = fadd double %i.ht, %..us121
  store double %i.ia, ptr %i.hs, align 8, !tbaa !24
  %i.ib = fdiv double %i.ap, %..us121             ; 4 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv139
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !95 ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %fblock.exit.us119
  %i.ie = ptrtoaddr ptr %i.id to i64              ; 2 uses
  %i.if = sub i64 %i.ae, %i.ie
  %diff.check = icmp ugt i64 %i.if, -32
  %.reass = add i64 %i.ie, %invariant.op
  %diff.check194 = icmp ult i64 %.reass, 31
  %conflict.rdx = or i1 %diff.check, %diff.check194
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ib, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load = load <2 x double>, ptr %i.ig, align 8, !tbaa !24
  %wide.load195 = load <2 x double>, ptr %i.ih, align 8, !tbaa !24
  %i.ii = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 16
  %wide.load196 = load <2 x double>, ptr %i.ii, align 8, !tbaa !24
  %wide.load197 = load <2 x double>, ptr %i.ij, align 8, !tbaa !24
  %i.ik = fsub <2 x double> %wide.load, %wide.load196
  %i.il = fsub <2 x double> %wide.load195, %wide.load197
  %i.im = fmul <2 x double> %broadcast.splat, %i.ik
  %i.in = fmul <2 x double> %broadcast.splat, %i.il
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %index ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store <2 x double> %i.im, ptr %i.io, align 8, !tbaa !24
  store <2 x double> %i.in, ptr %i.ip, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iq = icmp eq i64 %index.next, %n.vec
  br i1 %i.iq, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us124, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %fblock.exit.us119, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %fblock.exit.us119 ], [ %n.vec, %middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.ph
  %i.is = load double, ptr %i.ir, align 8, !tbaa !24
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.it = load double, ptr %gep.prol, align 8, !tbaa !24
  %i.iu = fsub double %i.is, %i.it
  %i.iv = fmul double %i.ib, %i.iu
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.ph
  store double %i.iv, ptr %i.iw, align 8, !tbaa !24
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ix = icmp eq i64 %indvars.iv.ph, %i.bb
  br i1 %i.ix, label %._crit_edge.us124, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !24
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ja = load double, ptr %gep, align 8, !tbaa !24
  %i.jb = fsub double %i.iz, %i.ja
  %i.jc = fmul double %i.ib, %i.jb
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv
  store double %i.jc, ptr %i.jd, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next
  %i.jf = load double, ptr %i.je, align 8, !tbaa !24
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.jg = load double, ptr %gep.1, align 8, !tbaa !24
  %i.jh = fsub double %i.jf, %i.jg
  %i.ji = fmul double %i.ib, %i.jh
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.next
  store double %i.ji, ptr %i.jj, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count162
  br i1 %exitcond.not.1, label %._crit_edge.us124, label %scalar.ph, !llvm.loop !99

._crit_edge.us124:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  store double %i.ht, ptr %i.hs, align 8, !tbaa !24
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count162
  br i1 %exitcond143.not, label %._crit_edge118.split.split.us, label %fblock.exit.us119

._crit_edge118.split.split.us:                    ; preds = %._crit_edge.us124
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %i.ba
  br i1 %exitcond148.not, label %._crit_edge.split127, label %.lr.ph117

._crit_edge.split127:                             ; preds = %._crit_edge118.split.split.us
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count172
  br i1 %exitcond153.not, label %.preheader, label %.lr.ph

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph135, %bb.c
  %indvars.iv174 = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next175, %bb.c ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv174 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !12
  tail call void @SUNDlsMat_denseAddIdentity(ptr noundef %i.jl, i64 noundef %i.he) #10
  %i.jm = load ptr, ptr %i.jk, align 8, !tbaa !12
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv174
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !15
  %i.jp = tail call i64 @SUNDlsMat_denseGETRF(ptr noundef %i.jm, i64 noundef %i.he, i64 noundef %i.he, ptr noundef %i.jo) #10
  %.not111 = icmp eq i64 %i.jp, 0
  br i1 %.not111, label %bb.c, label %.loopexit

._crit_edge:                                      ; preds = %bb.c, %.preheader
  store i32 1, ptr %4, align 4, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %check_retval.exit, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ 1, %check_retval.exit ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PSolve(double %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4, double noundef %5, double %6, i32 %7, ptr nofree noundef readonly captures(none) %8) #0 {
bb.a:
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4) #10
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 39216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  tail call fastcc void @GSIter(double noundef %5, ptr noundef %4, ptr noundef %i.b, ptr noundef %8)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !73   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !100  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 92
  %i.i = load i32, ptr %i.h, align 4, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.l = icmp sgt i32 %i.g, 0
  br i1 %i.l, label %.lr.ph43, label %._crit_edge44.split

.lr.ph43:                                         ; preds = %bb.a
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 72
  %10 = load i32, ptr %9, align 8, !tbaa !67
  %i.m = icmp sgt i32 %i.e, 0
  %i.n = sext i32 %10 to i64                      ; 2 uses
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge44.split

.lr.ph.preheader:                                 ; preds = %.lr.ph43
  %wide.trip.count53 = zext nneg i32 %i.g to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv50 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next51, %._crit_edge ] ; 2 uses
  %.03740 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next46.a, %._crit_edge ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv50
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25
  %i.q = mul nsw i32 %i.p, %i.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv45.a = phi i64 [ %.03740, %.lr.ph ], [ %indvars.iv.next46.a, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !25
  %i.t = add nsw i32 %i.s, %i.q
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %8, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.u
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = tail call ptr @N_VGetArrayPointer(ptr noundef %4) #10
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %indvars.iv45.a
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.w, i64 noundef %i.n, ptr noundef %i.y, ptr noundef %i.aa) #10
  %indvars.iv.next46.a = add nsw i64 %indvars.iv45.a, %i.n ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge44.split, label %.lr.ph

._crit_edge44.split:                              ; preds = %._crit_edge, %.lr.ph43, %bb.a
  ret i32 0
}

declare i32 @CVodeSetMaxNumSteps(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CVodeAdjInit(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CVodeF(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc double @doubleIntgr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #10 ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !73   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !100  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !29   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.k = load double, ptr %i.j, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 792
  %i.m = load double, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = load double, ptr %i.n, align 8, !tbaa !24 ; 3 uses
  %i.p = add i32 %i.e, -1                         ; 6 uses
  %i.q = icmp sgt i32 %i.e, 2                     ; 3 uses
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.r = sext i32 %i.c to i64                     ; 5 uses
  %wide.trip.count = zext nneg i32 %i.p to i64
  %i.s = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.s, 3                     ; 3 uses
  %i.t = add nsw i32 %i.e, -3
  %i.u = icmp ult i32 %i.t, 3
  br i1 %i.u, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.s, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.08895 = phi double [ %i.o, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.v = mul nsw i64 %indvars.iv, %i.r
  %i.w = getelementptr [8 x i8], ptr %i.a, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 40
  %i.y = load double, ptr %i.x, align 8, !tbaa !24
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double 2.000000e+00, double %.08895)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.aa = mul nsw i64 %indvars.iv.next, %i.r
  %i.ab = getelementptr [8 x i8], ptr %i.a, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 40
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !24
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double 2.000000e+00, double %i.z)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %i.af = mul nsw i64 %indvars.iv.next.1, %i.r
  %i.ag = getelementptr [8 x i8], ptr %i.a, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 40
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double 2.000000e+00, double %i.ae)
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %i.ak = mul nsw i64 %indvars.iv.next.2, %i.r
  %i.al = getelementptr [8 x i8], ptr %i.a, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 40
  %i.an = load double, ptr %i.am, align 8, !tbaa !24
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double 2.000000e+00, double %i.aj) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.08895.epil.init = phi double [ %i.o, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.08895.epil = phi double [ %.08895.epil.init, %.lr.ph.epil.preheader ], [ %i.at, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ap = mul nsw i64 %indvars.iv.epil, %i.r
  %i.aq = getelementptr [8 x i8], ptr %i.a, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 40
  %i.as = load double, ptr %i.ar, align 8, !tbaa !24
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double 2.000000e+00, double %.08895.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !101

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.088.lcssa = phi double [ %i.o, %bb.a ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ], [ %i.at, %.lr.ph.epil ]
  %i.au = mul nsw i32 %i.p, %i.c
  %i.av = add nsw i32 %i.au, 5                    ; 2 uses
  %i.aw = sext i32 %i.av to i64                   ; 3 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !24
  %i.az = fadd double %.088.lcssa, %i.ay
  %i.ba = fmul double %i.k, 5.000000e-01          ; 6 uses
  %i.bb = fmul double %i.ba, %i.az                ; 4 uses
  %i.bc = add i32 %i.g, -1                        ; 4 uses
  %i.bd = icmp sgt i32 %i.g, 2
  br i1 %i.bd, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %._crit_edge
  %i.be = sext i32 %i.i to i64                    ; 4 uses
  %wide.trip.count137 = zext i32 %i.bc to i64     ; 2 uses
  br i1 %i.q, label %.lr.ph101.us.preheader, label %.lr.ph107.split.preheader

.lr.ph107.split.preheader:                        ; preds = %.lr.ph107
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %i.aw ; 3 uses
  %i.bf = add nsw i64 %wide.trip.count137, -1     ; 3 uses
  %xtraiter11 = and i64 %i.bf, 1
  %i.bg = icmp eq i32 %i.bc, 2
  br i1 %i.bg, label %.lr.ph107.split.epil.preheader, label %.lr.ph107.split.preheader.new

.lr.ph107.split.preheader.new:                    ; preds = %.lr.ph107.split.preheader
  %unroll_iter16 = and i64 %i.bf, -2
  br label %.lr.ph107.split

.lr.ph101.us.preheader:                           ; preds = %.lr.ph107
  %wide.trip.count132 = zext i32 %i.p to i64
  %invariant.gep150 = getelementptr [8 x i8], ptr %i.a, i64 %i.aw
  %i.bh = add nsw i64 %wide.trip.count132, -1     ; 3 uses
  %xtraiter18 = and i64 %i.bh, 1
  %i.bi = icmp eq i32 %i.p, 2
  %unroll_iter23 = and i64 %i.bh, -2
  %lcmp.mod20.not = icmp eq i64 %xtraiter18, 0
  %lcmp.mod22 = trunc i64 %i.bh to i1
  br label %.lr.ph101.us

.lr.ph101.us:                                     ; preds = %.lr.ph101.us.preheader, %._crit_edge102.us
  %indvars.iv134 = phi i64 [ 1, %.lr.ph101.us.preheader ], [ %indvars.iv.next135, %._crit_edge102.us ] ; 2 uses
  %.091104.us = phi double [ %i.bb, %.lr.ph101.us.preheader ], [ %i.co, %._crit_edge102.us ]
  %i.bj = mul nsw i64 %indvars.iv134, %i.be       ; 3 uses
  %i.bk = getelementptr [8 x i8], ptr %i.a, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 40
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !24 ; 2 uses
  %i.bn = trunc nsw i64 %i.bj to i32
  %i.bo = add i32 %i.bn, 5                        ; 3 uses
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph101.us.new

.lr.ph101.us.new:                                 ; preds = %.lr.ph101.us, %.lr.ph101.us.new
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.1, %.lr.ph101.us.new ], [ 1, %.lr.ph101.us ] ; 3 uses
  %.18998.us = phi double [ %i.cd, %.lr.ph101.us.new ], [ %i.bm, %.lr.ph101.us ]
  %niter24 = phi i64 [ %niter24.next.1, %.lr.ph101.us.new ], [ 0, %.lr.ph101.us ]
  %i.bp = trunc i64 %indvars.iv129 to i32
  %i.bq = mul i32 %i.c, %i.bp
  %i.br = add i32 %i.bo, %i.bq
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !24
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double 2.000000e+00, double %.18998.us)
  %i.bw = trunc i64 %indvars.iv129 to i32
  %i.bx = add i32 %i.bw, 1
  %i.by = mul i32 %i.c, %i.bx
  %i.bz = add i32 %i.bo, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !24
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.cc, double 2.000000e+00, double %i.bv) ; 3 uses
  %indvars.iv.next130.1 = add nuw nsw i64 %indvars.iv129, 2 ; 2 uses
  %niter24.next.1 = add nuw i64 %niter24, 2       ; 2 uses
  %niter24.ncmp.1 = icmp eq i64 %niter24.next.1, %unroll_iter23
  br i1 %niter24.ncmp.1, label %._crit_edge102.us.unr-lcssa, label %.lr.ph101.us.new

._crit_edge102.us.unr-lcssa:                      ; preds = %.lr.ph101.us.new
  br i1 %lcmp.mod20.not, label %._crit_edge102.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge102.us.unr-lcssa, %.lr.ph101.us
  %indvars.iv129.epil.init = phi i64 [ 1, %.lr.ph101.us ], [ %indvars.iv.next130.1, %._crit_edge102.us.unr-lcssa ]
  %.18998.us.epil.init = phi double [ %i.bm, %.lr.ph101.us ], [ %i.cd, %._crit_edge102.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.ce = trunc i64 %indvars.iv129.epil.init to i32
  %i.cf = mul i32 %i.c, %i.ce
  %i.cg = add i32 %i.bo, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !24
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.cj, double 2.000000e+00, double %.18998.us.epil.init)
  br label %._crit_edge102.us

._crit_edge102.us:                                ; preds = %._crit_edge102.us.unr-lcssa, %.epil.preheader
  %.lcssa5 = phi double [ %i.cd, %._crit_edge102.us.unr-lcssa ], [ %i.ck, %.epil.preheader ]
  %gep151 = getelementptr [8 x i8], ptr %invariant.gep150, i64 %i.bj
end_hunk_0
begin_hunk_1_@PrecondB:bb.a
  %indvars.iv.next163 = or disjoint i64 %indvars.iv162, 1 ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next163
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !24
  %gep199.1 = getelementptr [8 x i8], ptr %invariant.gep198, i64 %indvars.iv.next163
  %i.gf = load double, ptr %gep199.1, align 8, !tbaa !24
  %i.gg = fsub double %i.ge, %i.gf
  %i.gh = fmul double %i.gl, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next163
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !95
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv167
  store double %i.gh, ptr %i.gk, align 8, !tbaa !24
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 2 uses
  %niter249.next.1 = add i64 %niter249, 2         ; 2 uses
  %niter249.ncmp.1 = icmp eq i64 %niter249.next.1, %unroll_iter248
  br i1 %niter249.ncmp.1, label %._crit_edge.us.us.us.unr-lcssa, label %fblock.exit.loopexit.us.us.us.new

fblock.exit.loopexit.us.us.us:                    ; preds = %.lr.ph44.i.i.us.us.us.prol.loopexit, %.lr.ph44.i.i.us.us.us, %middle.block
  %i.gl = fdiv double %6, %..us.us.us             ; 3 uses
  br i1 %i.bo, label %.epil.preheader244, label %fblock.exit.loopexit.us.us.us.new

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %fblock.exit.loopexit.us.us.us.new
  br i1 %lcmp.mod246.not, label %._crit_edge.us.us.us, label %.epil.preheader244

.epil.preheader244:                               ; preds = %._crit_edge.us.us.us.unr-lcssa, %fblock.exit.loopexit.us.us.us
  %indvars.iv162.epil.init = phi i64 [ 0, %fblock.exit.loopexit.us.us.us ], [ %indvars.iv.next163.1, %._crit_edge.us.us.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod247)
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv162.epil.init
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !24
  %gep199.epil = getelementptr [8 x i8], ptr %invariant.gep198, i64 %indvars.iv162.epil.init
  %i.go = load double, ptr %gep199.epil, align 8, !tbaa !24
  %i.gp = fsub double %i.gn, %i.go
  %i.gq = fmul double %i.gl, %i.gp
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv162.epil.init
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !95
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv167
  store double %i.gq, ptr %i.gt, align 8, !tbaa !24
  br label %._crit_edge.us.us.us

._crit_edge.us.us.us:                             ; preds = %._crit_edge.us.us.us.unr-lcssa, %.epil.preheader244
  store double %i.cl, ptr %i.ck, align 8, !tbaa !24
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %._crit_edge126.split.us.us.us, label %.preheader.preheader.i.i.us.us.us

._crit_edge126.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %i.bd
  br i1 %exitcond176.not, label %._crit_edge.split135.us.us, label %.lr.ph125.us.us

._crit_edge.split135.us.us:                       ; preds = %._crit_edge126.split.us.us.us
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count180
  br i1 %exitcond181.not, label %.preheader, label %.lr.ph.us

.preheader:                                       ; preds = %._crit_edge.split135, %._crit_edge.split135.us.us, %.lr.ph138, %bb.c
  %i.gu = icmp sgt i32 %i.y, 0
  br i1 %i.gu, label %.lr.ph143, label %._crit_edge

.lr.ph143:                                        ; preds = %.preheader
  %i.gv = sext i32 %i.u to i64                    ; 3 uses
  %wide.trip.count185 = zext nneg i32 %i.y to i64
  br label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge.split135
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %._crit_edge.split135 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv157
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !25
  %i.gy = mul nsw i32 %i.gx, %i.ae
  %i.gz = mul nuw nsw i64 %indvars.iv157, %i.bd
  %invariant.gep196 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.gz
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph, %._crit_edge126.split.split.us
  %indvars.iv152 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next153, %._crit_edge126.split.split.us ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv152
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !25
  %i.hc = mul nsw i32 %i.hb, %i.u
  %i.hd = add nsw i32 %i.hc, %i.gy
  %gep197 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep196, i64 %indvars.iv152
  %i.he = load ptr, ptr %gep197, align 8, !tbaa !12 ; 3 uses
  %i.hf = sext i32 %i.hd to i64                   ; 2 uses
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
  %i.hn = fdiv double %.0108, %i.hm               ; 2 uses
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
  %.0 = phi i32 [ 0, %._crit_edge ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit117 ], [ 1, %bb.e ]
  ret i32 %.0
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
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %11 = load i32, ptr %10, align 8, !tbaa !67
  %i.n = icmp sgt i32 %i.f, 0
  %i.o = sext i32 %11 to i64                      ; 2 uses
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge44.split

.lr.ph.preheader:                                 ; preds = %.lr.ph43
  %wide.trip.count53 = zext nneg i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv50 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next51, %._crit_edge ] ; 2 uses
  %.03740 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next46.a, %._crit_edge ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv50
  %i.q = load i32, ptr %i.p, align 4, !tbaa !25
  %i.r = mul nsw i32 %i.q, %i.j
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv45.a = phi i64 [ %.03740, %.lr.ph ], [ %indvars.iv.next46.a, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = add nsw i32 %i.t, %i.r
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %9, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.y = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.v
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.aa = tail call ptr @N_VGetArrayPointer(ptr noundef %5) #10
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %indvars.iv45.a
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.x, i64 noundef %i.o, ptr noundef %i.z, ptr noundef %i.ab) #10
  %indvars.iv.next46.a = add nsw i64 %indvars.iv45.a, %i.o ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
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
  %i.h = add nuw nsw i64 %i.e, %i.g               ; 20 uses
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
end_hunk_1
