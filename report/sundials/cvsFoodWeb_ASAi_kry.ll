inline.NumInlined: 59
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 45
begin_hunk_0_@Precond:bb.a
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %fblock.exit.us119 ], [ %n.vec, %middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.ph
  %i.is = load double, ptr %i.ir, align 8, !tbaa !26
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.it = load double, ptr %gep.prol, align 8, !tbaa !26
  %i.iu = fsub double %i.is, %i.it
  %i.iv = fmul double %i.ib, %i.iu
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.ph
  store double %i.iv, ptr %i.iw, align 8, !tbaa !26
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ix = icmp eq i64 %indvars.iv.ph, %i.bb
  br i1 %i.ix, label %._crit_edge.us124, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !26
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ja = load double, ptr %gep, align 8, !tbaa !26
  %i.jb = fsub double %i.iz, %i.ja
  %i.jc = fmul double %i.ib, %i.jb
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv
  store double %i.jc, ptr %i.jd, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next
  %i.jf = load double, ptr %i.je, align 8, !tbaa !26
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.jg = load double, ptr %gep.1, align 8, !tbaa !26
  %i.jh = fsub double %i.jf, %i.jg
  %i.ji = fmul double %i.ib, %i.jh
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.next
  store double %i.ji, ptr %i.jj, align 8, !tbaa !26
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count162
  br i1 %exitcond.not.1, label %._crit_edge.us124, label %scalar.ph, !llvm.loop !101

._crit_edge.us124:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  store double %i.ht, ptr %i.hs, align 8, !tbaa !26
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
  store i32 1, ptr %4, align 4, !tbaa !27
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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !102  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 92
  %i.i = load i32, ptr %i.h, align 4, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.l = icmp sgt i32 %i.g, 0
  br i1 %i.l, label %.lr.ph48, label %._crit_edge49.split

.lr.ph48:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !69
  %i.o = icmp sgt i32 %i.e, 0
  %i.p = sext i32 %i.n to i64                     ; 2 uses
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge49.split

.lr.ph.preheader:                                 ; preds = %.lr.ph48
  %wide.trip.count58 = zext nneg i32 %i.g to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv55 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next56, %._crit_edge ] ; 2 uses
  %.04245 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next51, %._crit_edge ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv55
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27
  %i.s = mul nsw i32 %i.r, %i.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv50 = phi i64 [ %.04245, %.lr.ph ], [ %indvars.iv.next51, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27
  %i.v = add nsw i32 %i.u, %i.s
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %8, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.z = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.w
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15
  %i.ab = tail call ptr @N_VGetArrayPointer(ptr noundef %4) #10
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv50
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.y, i64 noundef %i.p, ptr noundef %i.aa, ptr noundef %i.ac) #10
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, %i.p ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %._crit_edge49.split, label %.lr.ph

._crit_edge49.split:                              ; preds = %._crit_edge, %.lr.ph48, %bb.a
  %i.ad = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 19200
  %i.af = load double, ptr %i.ae, align 8, !tbaa !26
  %i.ag = tail call fastcc double @doubleIntgr(ptr noundef %4, ptr noundef nonnull %8)
  %i.ah = tail call double @llvm.fmuladd.f64(double %5, double %i.ag, double %i.af)
  %i.ai = tail call ptr @N_VGetArrayPointer(ptr noundef %4) #10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 19200
  store double %i.ah, ptr %i.aj, align 8, !tbaa !26
  ret i32 0
}

declare i32 @CVodeSetMaxNumSteps(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CVodeAdjInit(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CVodeF(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeCreateB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetUserDataB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetMaxNumStepsB(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CVodeInitB(ptr noundef, i32 noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @fB(double %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 5 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 25 uses
  %i.d = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #10 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !28   ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 808
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 20008 ; 3 uses
  %i.j = getelementptr i8, ptr %4, i64 688        ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 736 ; 2 uses
  %i.l = load i32, ptr %i.e, align 4, !tbaa !31   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 784
  %i.n = load double, ptr %i.m, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 792
  %i.p = load double, ptr %i.o, align 8, !tbaa !30
  %i.q = icmp sgt i32 %i.g, 0                     ; 2 uses
  %i.r = zext i32 %i.g to i64                     ; 25 uses
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.s = shl nuw nsw i64 %i.r, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.s, i1 false), !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %.lr.ph.preheader
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double 1.000000e+00, ptr %5, align 8, !tbaa !26
  %6 = sub i32 0, %i.l                            ; 2 uses
  %7 = getelementptr i8, ptr %4, i64 304          ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 592 ; 6 uses
  %9 = sub i32 0, %i.g                            ; 2 uses
  %.not95 = icmp slt i32 %i.g, 1
  %10 = add i32 %i.g, 1                           ; 2 uses
  %11 = sext i32 %i.g to i64                      ; 4 uses
  %12 = sext i32 %i.l to i64                      ; 4 uses
  %wide.trip.count = zext i32 %10 to i64          ; 4 uses
  br i1 %i.q, label %._crit_edge.a, label %bb.e

._crit_edge.a:                                    ; preds = %._crit_edge
  %i.t = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %i.u = zext i32 %i.l to i64
  %scevgep = getelementptr i8, ptr %4, i64 20008
  %i.v = zext i32 %i.l to i64
  %i.w = shl nuw nsw i64 %wide.trip.count, 3      ; 3 uses
  %i.x = getelementptr i8, ptr %4, i64 %i.w
  %scevgep112 = getelementptr i8, ptr %i.x, i64 20000
  %i.y = add nsw i64 %i.w, -8                     ; 6 uses
  %scevgep115.a = getelementptr i8, ptr %i.d, i64 %i.y
  %i.z = getelementptr i8, ptr %4, i64 %i.w
  %scevgep117 = getelementptr i8, ptr %i.z, i64 728
  %scevgep119 = getelementptr i8, ptr %i.c, i64 %i.y
  %scevgep122.a = getelementptr i8, ptr %i.c, i64 %i.y
  %scevgep125.a = getelementptr i8, ptr %i.c, i64 %i.y
  %scevgep128.a = getelementptr i8, ptr %i.c, i64 %i.y
  %scevgep131.a = getelementptr i8, ptr %i.c, i64 %i.y
  %i.aa = shl nsw i64 %12, 3
  %i.ab = shl nuw nsw i64 %11, 3
  %i.ac = shl nuw nsw i64 %i.r, 3                 ; 2 uses
  %i.ad = mul nuw nsw i64 %i.r, 56
  %i.ae = getelementptr i8, ptr %4, i64 %i.ad
  %scevgep167.a = getelementptr i8, ptr %i.ae, i64 256
  %i.af = shl nsw i64 %12, 3
  %i.ag = mul nuw nsw i64 %11, 152
  %i.ah = shl nuw nsw i64 %i.r, 3
  %i.ai = add nuw nsw i64 %i.ag, %i.ah            ; 2 uses
  %i.aj = shl nsw i64 %12, 3
  %i.ak = shl nuw nsw i64 %11, 3
  %i.al = add nsw i64 %i.r, -1                    ; 2 uses
  %i.am = getelementptr i8, ptr %4, i64 %i.ai
  %i.an = getelementptr i8, ptr %i.am, i64 20008
  %i.ao = getelementptr i8, ptr %4, i64 %i.ac
  %i.ap = getelementptr i8, ptr %i.ao, i64 20008
  %min.iters.check231 = icmp ult i32 %i.g, 4
  %n.vec233 = and i64 %i.r, 2147483644            ; 3 uses
  %cmp.n242 = icmp eq i64 %n.vec233, %i.r
  %xtraiter = and i64 %i.r, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter248 = and i64 %i.r, 1
  %i.aq = icmp eq i64 %i.al, 0
  %unroll_iter = and i64 %i.r, 2147483646
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  %lcmp.mod250 = trunc i32 %i.g to i1
  %min.iters.check217 = icmp eq i32 %i.g, 1
  %n.vec219 = and i64 %i.r, 2147483646            ; 3 uses
  %cmp.n227 = icmp eq i64 %n.vec219, %i.r
  %xtraiter251 = and i64 %i.r, 1
  %lcmp.mod252.not = icmp eq i64 %xtraiter251, 0
  %i.ar = add nsw i64 %i.r, -1
  %min.iters.check184 = icmp ult i32 %i.g, 4
  %n.vec186 = and i64 %i.r, 2147483644            ; 3 uses
  %cmp.n197 = icmp eq i64 %n.vec186, %i.r
  %xtraiter254 = and i64 %i.r, 1
  %lcmp.mod255.not = icmp eq i64 %xtraiter254, 0
  %i.as = add nsw i64 %i.r, -1
  %i.at = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i32 %10, 7
  %i.au = trunc i64 %i.t to i32                   ; 5 uses
  %i.av = icmp ugt i64 %i.t, 4294967295
  %n.vec = and i64 %i.at, -2                      ; 2 uses
  %i.aw = or i64 %i.at, 1
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.a, %bb.d
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %bb.d ], [ 0, %._crit_edge.a ] ; 10 uses
  %i.ax = mul i64 %i.aj, %indvars.iv107
  %i.ay = mul i64 %i.af, %indvars.iv107           ; 5 uses
  %i.az = getelementptr i8, ptr %4, i64 %i.ay
  %scevgep200 = getelementptr i8, ptr %i.az, i64 808 ; 2 uses
  %scevgep201 = getelementptr i8, ptr %i.an, i64 %i.ay ; 2 uses
  %scevgep202 = getelementptr i8, ptr %i.c, i64 %i.ay
  %i.ba = add i64 %i.ai, %i.ay                    ; 2 uses
  %scevgep203 = getelementptr i8, ptr %i.c, i64 %i.ba
  %scevgep204 = getelementptr i8, ptr %i.b, i64 %i.ay
  %scevgep205 = getelementptr i8, ptr %i.b, i64 %i.ba
  %i.bb = mul i64 %i.aa, %indvars.iv107           ; 4 uses
  %i.bc = add i64 %i.ac, %i.bb
  %i.bd = mul i64 %indvars.iv107, %i.v            ; 2 uses
  %i.be = trunc i64 %i.bd to i32                  ; 2 uses
  %i.bf = mul i64 %indvars.iv107, %i.u            ; 2 uses
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv107 to i32
  %i.bi = uitofp nneg i32 %i.bh to double
  %i.bj = fmul double %i.p, %i.bi
  %i.bk = mul nsw i64 %indvars.iv107, %12
  %i.bl = icmp eq i64 %indvars.iv107, 19
  %i.bm = select i1 %i.bl, i32 %6, i32 %i.l       ; 4 uses
  %i.bn = icmp eq i64 %indvars.iv107, 0
  %i.bo = select i1 %i.bn, i32 %i.l, i32 %6       ; 4 uses
  %i.bp = add i32 %i.bo, %i.bg
  %i.bq = add i32 %i.bm, %i.bg
  %i.br = add i32 %i.bm, %i.be
  %i.bs = add i32 %i.bo, %i.be
  %i.bt = insertelement <2 x ptr> poison, ptr %scevgep200, i64 0
  %i.bu = insertelement <2 x ptr> %i.bt, ptr %scevgep204, i64 1
  %i.bv = insertelement <2 x ptr> poison, ptr %scevgep203, i64 0
  %i.bw = insertelement <2 x ptr> %i.bv, ptr %scevgep201, i64 1
  %i.bx = insertelement <2 x ptr> poison, ptr %scevgep202, i64 0
  %i.by = insertelement <2 x ptr> %i.bx, ptr %scevgep200, i64 1
  %i.bz = insertelement <2 x ptr> poison, ptr %scevgep201, i64 0
  %i.ca = insertelement <2 x ptr> %i.bz, ptr %scevgep205, i64 1
  %i.cb = getelementptr i8, ptr %4, i64 %i.bb
  %i.cc = getelementptr i8, ptr %i.cb, i64 20008
  %i.cd = getelementptr i8, ptr %i.ap, i64 %i.bb
  %invariant.op = add i64 215, %i.ax
  %i.ce = icmp ult <2 x ptr> %i.bu, %i.bw
  %i.cf = icmp ult <2 x ptr> %i.by, %i.ca
  %i.cg = and <2 x i1> %i.cf, %i.ce
  %i.ch = bitcast <2 x i1> %i.cg to i2
  %conflict.rdx215.not = icmp eq i2 %i.ch, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge98
  %indvars.iv103 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next104, %._crit_edge98 ] ; 9 uses
  %i.ci = mul i64 %i.ab, %indvars.iv103           ; 4 uses
  %scevgep165 = getelementptr i8, ptr %i.cc, i64 %i.ci ; 3 uses
  %scevgep166 = getelementptr i8, ptr %i.cd, i64 %i.ci ; 3 uses
  %i.cj = add i64 %i.bb, %i.ci                    ; 2 uses
  %scevgep168 = getelementptr i8, ptr %i.b, i64 %i.cj
  %i.ck = add i64 %i.bc, %i.ci                    ; 2 uses
  %scevgep169 = getelementptr i8, ptr %i.b, i64 %i.ck
  %scevgep170 = getelementptr i8, ptr %i.c, i64 %i.cj
  %scevgep171 = getelementptr i8, ptr %i.c, i64 %i.ck
  %i.cl = mul i64 %indvars.iv103, %i.r            ; 3 uses
  %i.cm = add i64 %i.bd, %i.cl                    ; 2 uses
  %i.cn = trunc i64 %i.cm to i32                  ; 2 uses
  %sext = shl i64 %i.cm, 32
  %i.co = ashr exact i64 %sext, 29                ; 6 uses
  %scevgep111 = getelementptr i8, ptr %scevgep, i64 %i.co
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.co
  %scevgep114 = getelementptr i8, ptr %i.d, i64 %i.co ; 7 uses
  %scevgep116 = getelementptr i8, ptr %scevgep115.a, i64 %i.co ; 7 uses
  %i.cp = trunc i64 %i.cl to i32
  %i.cq = add i32 %i.br, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = shl nsw i64 %i.cr, 3                    ; 2 uses
  %scevgep124 = getelementptr i8, ptr %i.c, i64 %i.cs
  %scevgep126 = getelementptr i8, ptr %scevgep125.a, i64 %i.cs
  %i.ct = trunc i64 %i.cl to i32
  %i.cu = add i32 %i.bs, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 3                    ; 2 uses
  %scevgep127 = getelementptr i8, ptr %i.c, i64 %i.cw
  %scevgep129 = getelementptr i8, ptr %scevgep128.a, i64 %i.cw
  %scevgep130 = getelementptr i8, ptr %i.c, i64 %i.co
  %scevgep132 = getelementptr i8, ptr %scevgep131.a, i64 %i.co
  %i.cx = mul i64 %indvars.iv103, %i.r            ; 3 uses
  %i.cy = add i64 %i.bf, %i.cx
  %i.cz = trunc i64 %i.cy to i32                  ; 4 uses
  %i.da = trunc i64 %i.cx to i32
  %i.db = add i32 %i.bp, %i.da                    ; 2 uses
  %i.dc = trunc i64 %i.cx to i32
  %i.dd = add i32 %i.bq, %i.dc                    ; 2 uses
  %i.de = trunc nuw nsw i64 %indvars.iv103 to i32
  %i.df = uitofp nneg i32 %i.de to double
  %i.dg = fmul double %i.n, %i.df
  %i.dh = mul nuw nsw i64 %indvars.iv103, %11
  %i.di = add nsw i64 %i.dh, %i.bk                ; 5 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.di ; 6 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.di ; 5 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.di ; 13 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.di ; 8 uses
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.bj, double 1.000000e+00) ; 6 uses
  br i1 %min.iters.check231, label %.lr.ph.i.preheader247, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.do = mul i64 %i.ak, %indvars.iv103
  %op.rdx244.reass = add i64 %i.do, %invariant.op
  %diff.check = icmp ult i64 %op.rdx244.reass, 31
  br i1 %diff.check, label %.lr.ph.i.preheader247, label %vector.ph232

vector.ph232:                                     ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert234 = insertelement <2 x double> poison, double %i.dn, i64 0
  %broadcast.splat235 = shufflevector <2 x double> %broadcast.splatinsert234, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph232
  %index237 = phi i64 [ 0, %vector.ph232 ], [ %index.next240, %vector.body236 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index237 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load238.a = load <2 x double>, ptr %i.dp, align 8, !tbaa !26
  %wide.load239 = load <2 x double>, ptr %i.dq, align 8, !tbaa !26
  %i.dr = fmul <2 x double> %broadcast.splat235, %wide.load238.a
  %i.ds = fmul <2 x double> %broadcast.splat235, %wide.load239
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %index237 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <2 x double> %i.dr, ptr %i.dt, align 8, !tbaa !26
  store <2 x double> %i.ds, ptr %i.du, align 8, !tbaa !26
  %index.next240 = add nuw i64 %index237, 4       ; 2 uses
  %i.dv = icmp eq i64 %index.next240, %n.vec233
  br i1 %i.dv, label %middle.block241, label %vector.body236, !llvm.loop !103

middle.block241:                                  ; preds = %vector.body236
  br i1 %cmp.n242, label %.preheader60.i.preheader, label %.lr.ph.i.preheader247

.lr.ph.i.preheader247:                            ; preds = %.lr.ph.i.preheader, %bb.c, %middle.block241
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ 0, %bb.c ], [ %n.vec233, %middle.block241 ] ; 3 uses
  %i.dw = sub nsw i64 %i.al, %indvars.iv.i.ph
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader247, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader247 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader247 ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.i.prol
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !26
  %i.dz = fmul double %i.dn, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.i.prol
  store double %i.dz, ptr %i.ea, align 8, !tbaa !26
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !104

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader247
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader247 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.eb = icmp ult i64 %i.dw, 3
  br i1 %i.eb, label %.preheader60.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.i
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !26
  %i.ee = fmul double %i.dn, %i.ed
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.i
  store double %i.ee, ptr %i.ef, align 8, !tbaa !26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.next.i
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !26
  %i.ei = fmul double %i.dn, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.next.i
  store double %i.ei, ptr %i.ej, align 8, !tbaa !26
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.next.i.1
  %i.el = load double, ptr %i.ek, align 8, !tbaa !26
  %i.em = fmul double %i.dn, %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.next.i.1
  store double %i.em, ptr %i.en, align 8, !tbaa !26
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.next.i.2
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !26
  %i.eq = fmul double %i.dn, %i.ep
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.next.i.2
  store double %i.eq, ptr %i.er, align 8, !tbaa !26
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.r
  br i1 %exitcond.not.i.3, label %.preheader60.i.preheader, label %.lr.ph.i, !llvm.loop !106

.preheader60.i.preheader:                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block241
  br label %.preheader60.i

.preheader60.i:                                   ; preds = %.preheader60.i.preheader, %._crit_edge.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %._crit_edge.i ], [ 0, %.preheader60.i.preheader ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv79.i ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv79.i ; 3 uses
  br i1 %i.aq, label %.epil.preheader, label %.preheader60.i.new

.preheader60.i.new:                               ; preds = %.preheader60.i, %.preheader60.i.new
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.1, %.preheader60.i.new ], [ 0, %.preheader60.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader60.i.new ], [ 0, %.preheader60.i ]
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv74.i
  %i.et = load double, ptr %gep.i, align 8, !tbaa !26
  %i.eu = load double, ptr %i.es, align 8, !tbaa !26
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv74.i ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !26
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.et, double %i.eu, double %i.ew)
  store double %i.ex, ptr %i.ev, align 8, !tbaa !26
  %indvars.iv.next75.i = or disjoint i64 %indvars.iv74.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next75.i
  %i.ey = load double, ptr %gep.i.1, align 8, !tbaa !26
  %i.ez = load double, ptr %i.es, align 8, !tbaa !26
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.next75.i ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !26
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.ez, double %i.fb)
  store double %i.fc, ptr %i.fa, align 8, !tbaa !26
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader60.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader60.i.new
  br i1 %lcmp.mod249.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader60.i
  %indvars.iv74.i.epil.init = phi i64 [ 0, %.preheader60.i ], [ %indvars.iv.next75.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod250)
  %gep.i.epil = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv74.i.epil.init
  %i.fd = load double, ptr %gep.i.epil, align 8, !tbaa !26
  %i.fe = load double, ptr %i.es, align 8, !tbaa !26
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv74.i.epil.init ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !26
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fd, double %i.fe, double %i.fg)
  store double %i.fh, ptr %i.ff, align 8, !tbaa !26
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, %i.r
  br i1 %exitcond83.not.i, label %.lr.ph67.i.preheader, label %.preheader60.i

.lr.ph67.i.preheader:                             ; preds = %._crit_edge.i
  %conflict.rdx215.not.not = xor i1 %conflict.rdx215.not, true
  %brmerge = select i1 %min.iters.check217, i1 true, i1 %conflict.rdx215.not.not
  br i1 %brmerge, label %.lr.ph67.i.preheader246, label %vector.body220

vector.body220:                                   ; preds = %.lr.ph67.i.preheader, %vector.body220
  %index221 = phi i64 [ %index.next225, %vector.body220 ], [ 0, %.lr.ph67.i.preheader ] ; 5 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index221
  %wide.load222.a = load <2 x double>, ptr %i.fi, align 8, !tbaa !26, !alias.scope !107
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %index221 ; 2 uses
  %wide.load223.a = load <2 x double>, ptr %i.fj, align 8, !tbaa !26, !alias.scope !110, !noalias !112 ; 2 uses
  %i.fk = fmul <2 x double> %wide.load222.a, %wide.load223.a
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index221
  store <2 x double> %i.fk, ptr %i.fl, align 8, !tbaa !26, !alias.scope !110, !noalias !112
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index221
  %wide.load224 = load <2 x double>, ptr %i.fm, align 8, !tbaa !26, !alias.scope !114
  %i.fn = fmul <2 x double> %wide.load223.a, %wide.load224
  store <2 x double> %i.fn, ptr %i.fj, align 8, !tbaa !26, !alias.scope !110, !noalias !112
  %index.next225 = add nuw i64 %index221, 2       ; 2 uses
  %i.fo = icmp eq i64 %index.next225, %n.vec219
  br i1 %i.fo, label %middle.block226, label %vector.body220, !llvm.loop !115

middle.block226:                                  ; preds = %vector.body220
  br i1 %cmp.n227, label %.preheader.i.preheader, label %.lr.ph67.i.preheader246

.lr.ph67.i.preheader246:                          ; preds = %.lr.ph67.i.preheader, %middle.block226
  %indvars.iv84.i.ph = phi i64 [ %n.vec219, %middle.block226 ], [ 0, %.lr.ph67.i.preheader ] ; 7 uses
  br i1 %lcmp.mod252.not, label %.lr.ph67.i.prol.loopexit, label %.lr.ph67.i.prol

.lr.ph67.i.prol:                                  ; preds = %.lr.ph67.i.preheader246
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv84.i.ph
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !26
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv84.i.ph ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !26 ; 2 uses
  %i.ft = fmul double %i.fq, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv84.i.ph
  store double %i.ft, ptr %i.fu, align 8, !tbaa !26
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv84.i.ph
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !26
  %i.fx = fmul double %i.fs, %i.fw
  store double %i.fx, ptr %i.fr, align 8, !tbaa !26
  %indvars.iv.next85.i.prol = or disjoint i64 %indvars.iv84.i.ph, 1
  br label %.lr.ph67.i.prol.loopexit

.lr.ph67.i.prol.loopexit:                         ; preds = %.lr.ph67.i.prol, %.lr.ph67.i.preheader246
  %indvars.iv84.i.unr = phi i64 [ %indvars.iv84.i.ph, %.lr.ph67.i.preheader246 ], [ %indvars.iv.next85.i.prol, %.lr.ph67.i.prol ]
  %i.fy = icmp eq i64 %indvars.iv84.i.ph, %i.ar
  br i1 %i.fy, label %.preheader.i.preheader, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i.1, %.lr.ph67.i ], [ %indvars.iv84.i.unr, %.lr.ph67.i.prol.loopexit ] ; 6 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv84.i
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !26
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv84.i ; 2 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !26 ; 2 uses
  %i.gd = fmul double %i.ga, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv84.i
  store double %i.gd, ptr %i.ge, align 8, !tbaa !26
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv84.i
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !26
  %i.gh = fmul double %i.gc, %i.gg
  store double %i.gh, ptr %i.gb, align 8, !tbaa !26
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next85.i
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !26
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.next85.i ; 2 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !26 ; 2 uses
  %i.gm = fmul double %i.gj, %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next85.i
  store double %i.gm, ptr %i.gn, align 8, !tbaa !26
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next85.i
  %i.gp = load double, ptr %i.go, align 8, !tbaa !26
  %i.gq = fmul double %i.gl, %i.gp
  store double %i.gq, ptr %i.gk, align 8, !tbaa !26
  %indvars.iv.next85.i.1 = add nuw nsw i64 %indvars.iv84.i, 2 ; 2 uses
  %exitcond88.not.i.1 = icmp eq i64 %indvars.iv.next85.i.1, %i.r
  br i1 %exitcond88.not.i.1, label %.preheader.i.preheader, label %.lr.ph67.i, !llvm.loop !116

.preheader.i.preheader:                           ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i, %middle.block226
  %bound0172 = icmp ult ptr %scevgep165, %scevgep167.a
  %bound1173 = icmp ult ptr %7, %scevgep166
  %found.conflict174 = and i1 %bound0172, %bound1173
  %bound0175 = icmp ult ptr %scevgep165, %scevgep169
  %bound1176 = icmp ult ptr %scevgep168, %scevgep166
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %found.conflict174, %found.conflict177
  %bound0179 = icmp ult ptr %scevgep165, %scevgep171
  %bound1180 = icmp ult ptr %scevgep170, %scevgep166
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx182 = or i1 %conflict.rdx178, %found.conflict181
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge70.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %._crit_edge70.i ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.gr = getelementptr inbounds nuw [48 x i8], ptr %7, i64 %indvars.iv94.i ; 4 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv94.i ; 4 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv94.i ; 4 uses
  %brmerge257 = select i1 %min.iters.check184, i1 true, i1 %conflict.rdx182
end_hunk_0
begin_hunk_1_@fB:bb.a
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hr, double %i.hs, double %i.hu)
  store double %i.hv, ptr %i.ht, align 8, !tbaa !26
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next90.i
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !26
  %i.hy = load double, ptr %i.gs, align 8, !tbaa !26
  %i.hz = fmul double %i.hx, %i.hy
  %i.ia = load double, ptr %i.gt, align 8, !tbaa !26
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next90.i ; 2 uses
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !26
  %i.id = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.ia, double %i.ic)
  store double %i.id, ptr %i.ib, align 8, !tbaa !26
  %indvars.iv.next90.i.1 = add nuw nsw i64 %indvars.iv89.i, 2 ; 2 uses
  %exitcond93.not.i.1 = icmp eq i64 %indvars.iv.next90.i.1, %i.r
  br i1 %exitcond93.not.i.1, label %._crit_edge70.i, label %scalar.ph183, !llvm.loop !128

._crit_edge70.i:                                  ; preds = %scalar.ph183.prol.loopexit, %scalar.ph183, %middle.block196
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next95.i, %i.r
  br i1 %exitcond98.not.i, label %WebRatesB.exit, label %.preheader.i

WebRatesB.exit:                                   ; preds = %._crit_edge70.i
  %i.ie = icmp eq i64 %indvars.iv103, 19
  %i.if = select i1 %i.ie, i32 %9, i32 %i.g       ; 4 uses
  %i.ig = icmp eq i64 %indvars.iv103, 0
  %i.ih = select i1 %i.ig, i32 %i.g, i32 %9       ; 4 uses
  br i1 %.not95, label %._crit_edge98, label %.lr.ph97

.lr.ph97:                                         ; preds = %WebRatesB.exit
  %i.ii = trunc nsw i64 %i.di to i32
  %i.ij = add i32 %i.ii, -1                       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph97
  %i.ik = add i32 %i.cz, %i.au
  %i.il = icmp slt i32 %i.ik, %i.cz
  %i.im = add i32 %i.db, %i.au
  %i.in = icmp slt i32 %i.im, %i.db
  %i.io = or i1 %i.in, %i.av
  %i.ip = add i32 %i.dd, %i.au
  %i.iq = icmp slt i32 %i.ip, %i.dd
  %i.ir = add i32 %i.ih, %i.cz                    ; 2 uses
  %i.is = add i32 %i.ir, %i.au
  %i.it = icmp slt i32 %i.is, %i.ir
  %i.iu = add i32 %i.if, %i.cz                    ; 2 uses
  %i.iv = add i32 %i.iu, %i.au
  %i.iw = icmp slt i32 %i.iv, %i.iu
  %i.ix = or i1 %i.il, %i.io
  %i.iy = or i1 %i.iq, %i.ix
  %i.iz = or i1 %i.it, %i.iy
  %i.ja = or i1 %i.iw, %i.iz
  br i1 %i.ja, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.jb = add i32 %i.if, %i.cn
  %i.jc = sext i32 %i.jb to i64
  %i.jd = shl nsw i64 %i.jc, 3                    ; 2 uses
  %scevgep118 = getelementptr i8, ptr %i.c, i64 %i.jd
  %scevgep120 = getelementptr i8, ptr %scevgep119, i64 %i.jd
  %i.je = add i32 %i.ih, %i.cn
  %i.jf = sext i32 %i.je to i64
  %i.jg = shl nsw i64 %i.jf, 3                    ; 2 uses
  %scevgep121 = getelementptr i8, ptr %i.c, i64 %i.jg
  %scevgep123 = getelementptr i8, ptr %scevgep122.a, i64 %i.jg
  %bound0 = icmp ult ptr %scevgep111, %scevgep116
  %bound1 = icmp ult ptr %scevgep114, %scevgep113
  %found.conflict = and i1 %bound0, %bound1
  %bound0133 = icmp ult ptr %i.j, %scevgep116
  %bound1134 = icmp ult ptr %scevgep114, %scevgep117
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx = or i1 %found.conflict, %found.conflict135
  %bound0136 = icmp ult ptr %scevgep114, %scevgep120
  %bound1137 = icmp ult ptr %scevgep118, %scevgep116
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %conflict.rdx, %found.conflict138
  %bound0140 = icmp ult ptr %scevgep114, %scevgep123
  %bound1141 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict142 = and i1 %bound0140, %bound1141
  %conflict.rdx143 = or i1 %conflict.rdx139, %found.conflict142
  %bound0144 = icmp ult ptr %scevgep114, %scevgep126
  %bound1145 = icmp ult ptr %scevgep124, %scevgep116
  %found.conflict146 = and i1 %bound0144, %bound1145
  %conflict.rdx147 = or i1 %conflict.rdx143, %found.conflict146
  %bound0148 = icmp ult ptr %scevgep114, %scevgep129
  %bound1149 = icmp ult ptr %scevgep127, %scevgep116
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx151 = or i1 %conflict.rdx147, %found.conflict150
  %bound0152 = icmp ult ptr %scevgep114, %scevgep132
  %bound1153 = icmp ult ptr %scevgep130, %scevgep116
  %found.conflict154 = and i1 %bound0152, %bound1153
  %conflict.rdx155 = or i1 %conflict.rdx151, %found.conflict154
  br i1 %conflict.rdx155, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.jh = trunc i64 %index to i32
  %i.ji = or disjoint i32 %i.jh, 1
  %i.jj = add i32 %i.ij, %i.ji                    ; 5 uses
  %i.jk = sext i32 %i.jj to i64                   ; 3 uses
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jk
  %wide.load = load <2 x double>, ptr %i.jl, align 8, !tbaa !26, !alias.scope !129 ; 4 uses
  %i.jm = add i32 %i.jj, %i.bo
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jn
  %wide.load156 = load <2 x double>, ptr %i.jo, align 8, !tbaa !26, !alias.scope !132
  %i.jp = fsub <2 x double> %wide.load, %wide.load156
  %i.jq = add nsw i32 %i.jj, %i.bm
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jr
  %wide.load157 = load <2 x double>, ptr %i.js, align 8, !tbaa !26, !alias.scope !134
  %i.jt = fsub <2 x double> %wide.load157, %wide.load
  %i.ju = add i32 %i.jj, %i.ih
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jv
  %wide.load158 = load <2 x double>, ptr %i.jw, align 8, !tbaa !26, !alias.scope !136
  %i.jx = fsub <2 x double> %wide.load, %wide.load158
  %i.jy = add nsw i32 %i.jj, %i.if
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jz
  %wide.load159 = load <2 x double>, ptr %i.ka, align 8, !tbaa !26, !alias.scope !138
  %i.kb = fsub <2 x double> %wide.load159, %wide.load
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.k, i64 %index
  %wide.load160 = load <2 x double>, ptr %i.kc, align 8, !tbaa !26, !alias.scope !140, !noalias !142
  %i.kd = fneg <2 x double> %wide.load160
  %i.ke = fsub <2 x double> %i.jt, %i.jp
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.j, i64 %index
  %wide.load161 = load <2 x double>, ptr %i.kf, align 8, !tbaa !26, !alias.scope !140, !noalias !142
  %i.kg = fsub <2 x double> %i.kb, %i.jx
  %i.kh = fneg <2 x double> %i.kg
  %i.ki = fmul <2 x double> %wide.load161, %i.kh
  %i.kj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kd, <2 x double> %i.ke, <2 x double> %i.ki)
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.jk
  %wide.load162 = load <2 x double>, ptr %i.kk, align 8, !tbaa !26, !alias.scope !144, !noalias !142
  %i.kl = fsub <2 x double> %i.kj, %wide.load162
  %i.km = getelementptr inbounds [8 x i8], ptr %i.a, i64 %index
  %wide.load163 = load <2 x double>, ptr %i.km, align 16, !tbaa !26
  %i.kn = fsub <2 x double> %i.kl, %wide.load163
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.jk
  store <2 x double> %i.kn, ptr %i.ko, align 8, !tbaa !26, !alias.scope !142, !noalias !146
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kp = icmp eq i64 %index.next, %n.vec
  br i1 %i.kp, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge98, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph97, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph97 ], [ %i.aw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kq = trunc nuw nsw i64 %indvars.iv to i32
  %i.kr = add i32 %i.ij, %i.kq                    ; 5 uses
  %i.ks = sext i32 %i.kr to i64                   ; 3 uses
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ks
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !26 ; 4 uses
  %i.kv = add i32 %i.kr, %i.bo
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.kw
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !26
  %i.kz = fsub double %i.ku, %i.ky
  %i.la = add nsw i32 %i.kr, %i.bm
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.lb
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !26
  %i.le = fsub double %i.ld, %i.ku
  %i.lf = add i32 %i.kr, %i.ih
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.lg
  %i.li = load double, ptr %i.lh, align 8, !tbaa !26
  %i.lj = fsub double %i.ku, %i.li
  %i.lk = add nsw i32 %i.kr, %i.if
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ll
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !26
  %i.lo = fsub double %i.ln, %i.ku
  %i.lp = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.lp
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !26
  %i.ls = fneg double %i.lr
  %i.lt = fsub double %i.le, %i.kz
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.lp
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !26
  %i.lw = fsub double %i.lo, %i.lj
  %i.lx = fneg double %i.lw
  %i.ly = fmul double %i.lv, %i.lx
  %i.lz = tail call double @llvm.fmuladd.f64(double %i.ls, double %i.lt, double %i.ly)
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ks
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !26
  %i.mc = fsub double %i.lz, %i.mb
  %i.md = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.lp
  %i.me = load double, ptr %i.md, align 8, !tbaa !26
  %i.mf = fsub double %i.mc, %i.me
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ks
  store double %i.mf, ptr %i.mg, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge98, label %scalar.ph, !llvm.loop !148

._crit_edge98:                                    ; preds = %scalar.ph, %middle.block, %WebRatesB.exit
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next104, 20
  br i1 %exitcond106.not, label %bb.d, label %bb.c

bb.d:                                             ; preds = %._crit_edge98
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next108, 20
  br i1 %exitcond110.not, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 0
}

declare i32 @CVodeSStolerancesB(ptr noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @CVodeSetLinearSolverB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetPreconditionerB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PrecondB(double %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, i32 %4, ptr nofree noundef writeonly captures(none) %5, double noundef %6, ptr nofree noundef readonly captures(none) %7) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 39240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 39248
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = tail call ptr @CVodeGetAdjCVodeBmem(ptr noundef %i.b, i32 noundef %i.d) #10 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.30) #11 ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 39224
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24   ; 3 uses
  %i.k = tail call i32 @CVodeGetErrWeights(ptr noundef nonnull %i.e, ptr noundef %i.j) #10 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %check_retval.exit117, label %bb.c

check_retval.exit117:                             ; preds = %bb.b
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29, i32 noundef %i.k) #11 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 5 uses
  %i.p = tail call ptr @N_VGetArrayPointer(ptr noundef %i.j) #10 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 288 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 296 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !69   ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 800
  %i.w = load double, ptr %i.v, align 8, !tbaa !70 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !71   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 92
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !72  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !73 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 100
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !74 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 808 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 39232
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.ai = tail call ptr @N_VGetArrayPointer(ptr noundef %i.ah) #10 ; 20 uses
  %i.aj = tail call double @N_VWrmsNorm(ptr noundef %3, ptr noundef %i.j) #10
  %i.ak = tail call double @llvm.fabs.f64(double %6)
  %i.al = fmul double %i.ak, 1.000000e+03
  %i.am = fmul double %i.al, f0x3CB0000000000000
  %i.an = fmul double %i.am, 2.400000e+03
  %i.ao = fmul double %i.an, %i.aj                ; 2 uses
  %i.ap = fcmp oeq double %i.ao, 0.000000e+00
  %.0108 = select i1 %i.ap, double 1.000000e+00, double %i.ao ; 2 uses
  %i.aq = icmp sgt i32 %i.ac, 0
  br i1 %i.aq, label %.lr.ph138, label %.preheader

.lr.ph138:                                        ; preds = %bb.c
  %i.ar = icmp slt i32 %i.aa, 1
  %i.as = icmp slt i32 %i.u, 1
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 784
  %i.au = getelementptr i8, ptr %7, i64 304       ; 2 uses
  %i.av = getelementptr i8, ptr %7, i64 592       ; 5 uses
  %brmerge = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %brmerge, label %.preheader, label %.lr.ph138.split.split

.lr.ph138.split.split:                            ; preds = %.lr.ph138
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !75
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !28 ; 5 uses
  %i.ba = icmp sgt i32 %i.az, 0
  %i.bb = zext i32 %i.az to i64                   ; 14 uses
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = zext nneg i32 %i.aa to i64              ; 4 uses
  %wide.trip.count180 = zext nneg i32 %i.ac to i64 ; 2 uses
  %wide.trip.count170 = zext nneg i32 %i.u to i64 ; 6 uses
  br i1 %i.ba, label %.lr.ph.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph138.split.split
  %xtraiter = and i64 %wide.trip.count170, 1
  %i.be = icmp eq i32 %i.u, 1
  %unroll_iter = and i64 %wide.trip.count170, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod239 = trunc i32 %i.u to i1
  br label %.lr.ph

.lr.ph.us.preheader:                              ; preds = %.lr.ph138.split.split
  %i.bf = shl nuw nsw i64 %i.bb, 3                ; 4 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.bf ; 4 uses
  %scevgep203 = getelementptr i8, ptr %i.o, i64 %i.bf
  %i.bg = getelementptr i8, ptr %7, i64 %i.bf
  %scevgep205 = getelementptr i8, ptr %i.bg, i64 592
  %scevgep215 = getelementptr i8, ptr %i.o, i64 %i.bf
  %i.bh = mul nuw nsw i64 %i.bb, 56
  %i.bi = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep217 = getelementptr i8, ptr %i.bi, i64 256
  %min.iters.check226 = icmp ult i32 %i.az, 5
  %bound0221 = icmp ult ptr %i.ai, %scevgep217
  %bound1222 = icmp ult ptr %i.au, %scevgep
  %found.conflict223 = and i1 %bound0221, %bound1222
  %i.bj = and i64 %i.bb, 3                        ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = select i1 %i.bk, i64 4, i64 %i.bj
  %n.vec228 = sub nsw i64 %i.bb, %i.bl            ; 2 uses
  %i.bm = add nsw i64 %i.bb, -1
  %min.iters.check = icmp ult i32 %i.az, 4
  %bound0206 = icmp ult ptr %i.ai, %scevgep205
  %bound1207 = icmp ult ptr %i.av, %scevgep
  %found.conflict208 = and i1 %bound0206, %bound1207
  %n.vec = and i64 %i.bb, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  %xtraiter242 = and i64 %i.bb, 1
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  %i.bn = add nsw i64 %i.bb, -1
  %xtraiter245 = and i64 %wide.trip.count170, 1
  %i.bo = icmp eq i32 %i.u, 1
  %unroll_iter248 = and i64 %wide.trip.count170, 2147483646
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  %lcmp.mod247 = trunc i32 %i.u to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split135.us.us
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %._crit_edge.split135.us.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv177
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !27 ; 3 uses
  %i.br = mul nsw i32 %i.bq, %i.ae
  %i.bs = mul nuw nsw i64 %indvars.iv177, %i.bd
  %i.bt = sitofp i32 %i.bq to double
  %i.bu = mul nsw i32 %i.ay, %i.bq
  %invariant.gep200 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.bs
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 1
  br label %.lr.ph125.us.us

.lr.ph125.us.us:                                  ; preds = %._crit_edge126.split.us.us.us, %.lr.ph.us
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %._crit_edge126.split.us.us.us ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv172
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !27 ; 3 uses
  %i.by = mul nsw i32 %i.bx, %i.u
  %i.bz = add nsw i32 %i.by, %i.br
  %i.ca = add nsw i32 %i.bu, %i.bx
  %i.cb = sitofp i32 %i.bx to double
  %i.cc = mul nsw i32 %i.az, %i.ca
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.cd ; 7 uses
  %gep201 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep200, i64 %indvars.iv172
  %i.cf = load ptr, ptr %gep201, align 8, !tbaa !12 ; 3 uses
  %i.cg = sext i32 %i.bz to i64                   ; 2 uses
  %invariant.gep198 = getelementptr [8 x i8], ptr %i.af, i64 %i.cg ; 3 uses
  %i.ch = shl nsw i64 %i.cd, 3                    ; 2 uses
  %scevgep204 = getelementptr i8, ptr %scevgep203, i64 %i.ch
  %scevgep216 = getelementptr i8, ptr %scevgep215, i64 %i.ch
  %i.ci = insertelement <2 x double> %i.bv, double %i.cb, i64 0
  %bound0218 = icmp ult ptr %i.ai, %scevgep216
  %bound1219 = icmp ult ptr %i.ce, %scevgep
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx224 = or i1 %found.conflict220, %found.conflict223
  %bound0 = icmp ult ptr %i.ai, %scevgep204
  %bound1 = icmp ult ptr %i.ce, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict208
  br label %.preheader.preheader.i.i.us.us.us

.preheader.preheader.i.i.us.us.us:                ; preds = %._crit_edge.us.us.us, %.lr.ph125.us.us
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %._crit_edge.us.us.us ], [ 0, %.lr.ph125.us.us ] ; 5 uses
  %i.cj = add nsw i64 %indvars.iv167, %i.cg       ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.cj ; 3 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !26 ; 3 uses
  %i.cm = tail call double @llvm.fabs.f64(double %i.cl)
  %i.cn = fmul double %i.w, %i.cm                 ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cj
  %i.cp = load double, ptr %i.co, align 8, !tbaa !26
  %i.cq = fdiv double %.0108, %i.cp               ; 2 uses
  %i.cr = fcmp ogt double %i.cn, %i.cq
  %..us.us.us = select i1 %i.cr, double %i.cn, double %i.cq ; 2 uses
  %i.cs = fadd double %i.cl, %..us.us.us
  store double %i.cs, ptr %i.ck, align 8, !tbaa !26
  %i.ct = load <2 x double>, ptr %i.at, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %i.bc, i1 false), !tbaa !26
  br label %.preheader.i.i.us.us.us

.preheader.i.i.us.us.us:                          ; preds = %._crit_edge.i.i.us.us.us, %.preheader.preheader.i.i.us.us.us
  %indvars.iv48.i.i.us.us.us = phi i64 [ 0, %.preheader.preheader.i.i.us.us.us ], [ %indvars.iv.next49.i.i.us.us.us, %._crit_edge.i.i.us.us.us ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv48.i.i.us.us.us ; 4 uses
  %invariant.gep.i.i.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv48.i.i.us.us.us ; 7 uses
  %brmerge250 = select i1 %min.iters.check226, i1 true, i1 %conflict.rdx224
end_hunk_1
