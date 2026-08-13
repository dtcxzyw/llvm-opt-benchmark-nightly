begin_hunk_0_@IDASetNonlinearSolverSensSim:bb.a
bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 73, ptr noundef nonnull @__func__.IDASetNonlinearSolverSensSim, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #5
  br label %bb.al

bb.i:                                             ; preds = %bb.g
  %i.m = tail call i32 @SUNNonlinSolGetType(ptr noundef nonnull %1) #5
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 81, ptr noundef nonnull @__func__.IDASetNonlinearSolverSensSim, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #5
  br label %bb.al

bb.k:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.o = load i32, ptr %i.n, align 4, !tbaa !17
  %.not83 = icmp eq i32 %i.o, 0
  br i1 %.not83, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 89, ptr noundef nonnull @__func__.IDASetNonlinearSolverSensSim, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #5
  br label %bb.al

bb.m:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.q = load i32, ptr %i.p, align 4, !tbaa !28
  %.not84 = icmp eq i32 %i.q, 1
  br i1 %.not84, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 97, ptr noundef nonnull @__func__.IDASetNonlinearSolverSensSim, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #5
  br label %bb.al

bb.o:                                             ; preds = %bb.m
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1752 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %.not85 = icmp eq ptr %i.s, null
  br i1 %.not85, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.u = load i32, ptr %i.t, align 8, !tbaa !30
  %.not86 = icmp eq i32 %i.u, 0
  br i1 %.not86, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.v = tail call i32 @SUNNonlinSolFree(ptr noundef nonnull %i.s) #5 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  store ptr %1, ptr %i.r, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1760
  store i32 0, ptr %i.w, align 8, !tbaa !30
  %i.x = tail call i32 @SUNNonlinSolSetSysFn(ptr noundef nonnull %1, ptr noundef nonnull @idaNlsResidualSensSim) #5
  %.not87 = icmp eq i32 %i.x, 0
  br i1 %.not87, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 119, ptr noundef nonnull @__func__.IDASetNonlinearSolverSensSim, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #5
  br label %bb.al

bb.t:                                             ; preds = %bb.r
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.z = tail call i32 @SUNNonlinSolSetConvTestFn(ptr noundef %i.y, ptr noundef nonnull @idaNlsConvTestSensSim, ptr noundef nonnull %0) #5
  %.not88 = icmp eq i32 %i.z, 0
  br i1 %.not88, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 129, ptr noundef nonnull @__func__.IDASetNonlinearSolverSensSim, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #5
  br label %bb.al

bb.v:                                             ; preds = %bb.t
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.ab = tail call i32 @SUNNonlinSolSetGetUpdateNormFn(ptr noundef %i.aa, ptr noundef nonnull @idaNlsGetUpdateNormSensSim, ptr noundef nonnull %0) #5
  %.not89 = icmp eq i32 %i.ab, 0
  br i1 %.not89, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 138, ptr noundef nonnull @__func__.IDASetNonlinearSolverSensSim, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #5
  br label %bb.al

bb.x:                                             ; preds = %bb.v
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.ad = tail call i32 @SUNNonlinSolSetMaxIters(ptr noundef %i.ac, i32 noundef 4) #5
  %.not90 = icmp eq i32 %i.ad, 0
  br i1 %.not90, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 147, ptr noundef nonnull @__func__.IDASetNonlinearSolverSensSim, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #5
  br label %bb.al

bb.z:                                             ; preds = %bb.x
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !31
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !32
  %i.aj = add nsw i32 %i.ai, 1
  %i.ak = load ptr, ptr %0, align 8, !tbaa !33
  %i.al = tail call ptr @N_VNewEmpty_SensWrapper(i32 noundef %i.aj, ptr noundef %i.ak) #5 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 3 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !34
  %i.an = icmp eq ptr %i.al, null
  br i1 %i.an, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 159, ptr noundef nonnull @__func__.IDASetNonlinearSolverSensSim, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #5
  br label %bb.al

bb.ac:                                            ; preds = %bb.aa
  %i.ao = load i32, ptr %i.ah, align 8, !tbaa !32
  %i.ap = add nsw i32 %i.ao, 1
  %i.aq = load ptr, ptr %0, align 8, !tbaa !33
  %i.ar = tail call ptr @N_VNewEmpty_SensWrapper(i32 noundef %i.ap, ptr noundef %i.aq) #5 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !35
  %i.at = icmp eq ptr %i.ar, null
  br i1 %i.at, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !34
  tail call void @N_VDestroy(ptr noundef %i.au) #5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 169, ptr noundef nonnull @__func__.IDASetNonlinearSolverSensSim, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #5
  br label %bb.al

bb.ae:                                            ; preds = %bb.ac
  %i.av = load i32, ptr %i.ah, align 8, !tbaa !32
  %i.aw = add nsw i32 %i.av, 1
  %i.ax = load ptr, ptr %0, align 8, !tbaa !33
  %i.ay = tail call ptr @N_VNewEmpty_SensWrapper(i32 noundef %i.aw, ptr noundef %i.ax) #5 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1800
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !36
  %i.ba = icmp eq ptr %i.ay, null
  br i1 %i.ba, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bb = load ptr, ptr %i.am, align 8, !tbaa !34
  tail call void @N_VDestroy(ptr noundef %i.bb) #5
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !35
  tail call void @N_VDestroy(ptr noundef %i.bc) #5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 180, ptr noundef nonnull @__func__.IDASetNonlinearSolverSensSim, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #5
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  store i32 1, ptr %i.ae, align 8, !tbaa !31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.z
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !34
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !38
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !41
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !44
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !35
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !38
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !41
  store ptr %i.bk, ptr %i.bo, align 8, !tbaa !43
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !36
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !38
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !41
  store ptr %i.bq, ptr %i.bu, align 8, !tbaa !43
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !32 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ah
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !46
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !47
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !48
  %wide.trip.count = zext nneg i32 %i.bw to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ai ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !43
  %i.cg = load ptr, ptr %i.bf, align 8, !tbaa !34
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !38
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next
  store ptr %i.cf, ptr %i.cj, align 8, !tbaa !43
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !43
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !35
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !38
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !41
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.next
  store ptr %i.cl, ptr %i.cp, align 8, !tbaa !43
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !43
  %i.cs = load ptr, ptr %i.br, align 8, !tbaa !36
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !38
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !41
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next
  store ptr %i.cr, ptr %i.cv, align 8, !tbaa !43
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ai

._crit_edge:                                      ; preds = %bb.ai, %bb.ah
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !49 ; 2 uses
  %.not91 = icmp eq ptr %i.cx, null
  br i1 %.not91, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 203, ptr noundef nonnull @__func__.IDASetNonlinearSolverSensSim, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #5
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1840
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !50
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.af, %bb.ad, %bb.ab, %bb.y, %bb.w, %bb.u, %bb.s, %bb.n, %bb.l, %bb.j, %bb.h, %bb.d, %bb.b
  %.078 = phi i32 [ -20, %bb.b ], [ -22, %bb.d ], [ -22, %bb.h ], [ -22, %bb.j ], [ -22, %bb.n ], [ -22, %bb.s ], [ -22, %bb.u ], [ -22, %bb.w ], [ -22, %bb.y ], [ -21, %bb.ab ], [ -21, %bb.ad ], [ -21, %bb.af ], [ 0, %bb.ak ], [ -22, %bb.aj ], [ -22, %bb.l ]
  ret i32 %.078
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @IDAProcessError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @SUNNonlinSolGetType(ptr noundef) local_unnamed_addr #2

declare i32 @SUNNonlinSolFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNNonlinSolSetSysFn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -41, 12) i32 @idaNlsResidualSensSim(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(address_is_null) %2) #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 379, ptr noundef nonnull @__func__.idaNlsResidualSensSim, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !38
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !38
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 640 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.i, double noundef 1.000000e+00, ptr noundef %i.d, ptr noundef %i.k) #5
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1280 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.m, double noundef %i.o, ptr noundef %i.d, ptr noundef %i.q) #5
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1840
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1264 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !55
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56
  %i.z = tail call i32 %i.s(double noundef %i.u, ptr noundef %i.v, ptr noundef %i.w, ptr noundef %i.g, ptr noundef %i.y) #5 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 1480 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !57
  %i.ac = add nsw i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.g, ptr noundef %i.ae) #5
  %i.af = icmp slt i32 %i.z, 0
  br i1 %i.af, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %0, align 8, !tbaa !38
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !38
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 920
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 904 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !59
  %i.as = tail call i32 @N_VLinearSumVectorArray(i32 noundef %i.an, double noundef 1.000000e+00, ptr noundef %i.ap, double noundef 1.000000e+00, ptr noundef nonnull %i.ai, ptr noundef %i.ar) #5 ; 0 uses
  %i.at = load i32, ptr %i.am, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 928
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !60
  %i.aw = load double, ptr %i.n, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 912 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !61
  %i.az = tail call i32 @N_VLinearSumVectorArray(i32 noundef %i.at, double noundef 1.000000e+00, ptr noundef %i.av, double noundef %i.aw, ptr noundef nonnull %i.ai, ptr noundef %i.ay) #5 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !62
  %i.bc = load i32, ptr %i.am, align 8, !tbaa !32
  %i.bd = load double, ptr %i.t, align 8, !tbaa !55
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.bf = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.bg = load ptr, ptr %i.aq, align 8, !tbaa !59
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !61
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !63
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 944
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 952
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !65
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 960
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !66
  %i.bq = tail call i32 %i.bb(i32 noundef %i.bc, double noundef %i.bd, ptr noundef %i.be, ptr noundef %i.bf, ptr noundef %i.g, ptr noundef %i.bg, ptr noundef %i.bh, ptr noundef nonnull %i.al, ptr noundef %i.bj, ptr noundef %i.bl, ptr noundef %i.bn, ptr noundef %i.bp) #5 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 1496 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !67
  %i.bt = add nsw i64 %i.bs, 1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !67
  %i.bu = icmp slt i32 %i.bq, 0
  br i1 %i.bu, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not52 = icmp eq i32 %i.bq, 0
  %. = select i1 %.not52, i32 0, i32 11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ -41, %bb.e ], [ -8, %bb.c ], [ 1, %bb.d ], [ %., %bb.f ]
  ret i32 %.0
}

declare i32 @SUNNonlinSolSetConvTestFn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -20, 903) i32 @idaNlsConvTestSensSim(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, double noundef %3, ptr noundef %4, ptr nofree noundef captures(address_is_null) %5) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq ptr %5, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 454, ptr noundef nonnull @__func__.idaNlsConvTestSensSim, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = tail call double @N_VWrmsNorm(ptr noundef %2, ptr noundef %4) #5
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 1320 ; 2 uses
  store double %i.c, ptr %i.d, align 8, !tbaa !68
  %i.e = call i32 @SUNNonlinSolGetCurIter(ptr noundef %0, ptr noundef nonnull %i.a) #5
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = load double, ptr %i.d, align 8, !tbaa !68 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 1328 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.h, ptr %i.i, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 1352
  %i.k = load double, ptr %i.j, align 8, !tbaa !71
  %i.l = fmul double %i.k, 1.000000e-04
  %i.m = fcmp ugt double %i.h, %i.l
  br i1 %i.m, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 1312
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !72
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = load double, ptr %i.i, align 8, !tbaa !70
  %i.o = fdiv double %i.h, %i.n
  %i.p = sitofp i32 %i.f to double
  %i.q = fdiv double 1.000000e+00, %i.p
  %i.r = call double @pow(double noundef %i.o, double noundef %i.q) #5 ; 3 uses
  %i.s = fcmp ogt double %i.r, 9.000000e-01
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = fsub double 1.000000e+00, %i.r
  %i.u = fdiv double %i.r, %i.t                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 1312
  store double %i.u, ptr %i.v, align 8, !tbaa !72
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
end_hunk_0
