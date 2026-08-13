inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 95
begin_hunk_0_@searchAnchors:bb.a
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.h, !llvm.loop !425

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.h, %._crit_edge110
  %.083.lcssa = phi double [ 0.000000e+00, %._crit_edge110 ], [ %i.cp, %.preheader.loopexit.unr-lcssa ], [ %i.bi, %bb.h ]
  %i.bj = sub nsw i32 %i.c, %i.bc
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %.lr.ph121.preheader, label %._crit_edge.thread

.lr.ph121.preheader:                              ; preds = %.preheader
  %.pre159 = load ptr, ptr @searchAnchors.stra, align 8, !tbaa !52
  %.pre161 = load double, ptr @searchAnchors.threshold, align 8, !tbaa !24
  br label %.lr.ph121

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv150 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next151.7, %bb.i ] ; 9 uses
  %.083112 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.cp, %bb.i ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.i ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv150
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !24
  %i.bn = fadd double %.083112, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv150
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !24
  %i.br = fadd double %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv150
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !24
  %i.bv = fadd double %i.br, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv150
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load double, ptr %i.bx, align 8, !tbaa !24
  %i.bz = fadd double %i.bv, %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv150
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !24
  %i.cd = fadd double %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv150
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !24
  %i.ch = fadd double %i.cd, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv150
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !24
  %i.cl = fadd double %i.ch, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv150
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.co = load double, ptr %i.cn, align 8, !tbaa !24
  %i.cp = fadd double %i.cl, %i.co                ; 3 uses
  %indvars.iv.next151.7 = add nuw nsw i64 %indvars.iv150, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %bb.i, !llvm.loop !426

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %bb.p
  %.pre163.pre167 = phi i32 [ %i.bc, %.lr.ph121.preheader ], [ %.pre163.pre168, %bb.p ] ; 2 uses
  %.pre163164 = phi i32 [ %i.bc, %.lr.ph121.preheader ], [ %.pre163165, %bb.p ] ; 2 uses
  %i.cq = phi double [ %.pre161, %.lr.ph121.preheader ], [ %i.dv, %bb.p ] ; 4 uses
  %i.cr = phi ptr [ %.pre159, %.lr.ph121.preheader ], [ %i.dw, %bb.p ] ; 4 uses
  %indvars.iv155 = phi i64 [ 1, %.lr.ph121.preheader ], [ %indvars.iv.next156, %bb.p ] ; 3 uses
  %.0120 = phi double [ 0.000000e+00, %.lr.ph121.preheader ], [ %.3, %bb.p ] ; 2 uses
  %.074119 = phi i32 [ 0, %.lr.ph121.preheader ], [ %.377, %bb.p ] ; 2 uses
  %.078118 = phi ptr [ %2, %.lr.ph121.preheader ], [ %.179, %bb.p ] ; 9 uses
  %.080117 = phi i32 [ 0, %.lr.ph121.preheader ], [ %.181, %bb.p ] ; 3 uses
  %.184116 = phi double [ %.083.lcssa, %.lr.ph121.preheader ], [ %i.dc, %bb.p ]
  %.085115 = phi i32 [ 0, %.lr.ph121.preheader ], [ %.388, %bb.p ] ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %i.cr, i64 %indvars.iv155
  %i.ct = getelementptr i8, ptr %i.cs, i64 -8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !24
  %i.cv = fsub double %.184116, %i.cu
  %i.cw = trunc nuw nsw i64 %indvars.iv155 to i32 ; 4 uses
  %i.cx = add nsw i32 %.pre163164, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr [8 x i8], ptr %i.cr, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 -8
  %i.db = load double, ptr %i.da, align 8, !tbaa !24
  %i.dc = fadd double %i.cv, %i.db                ; 4 uses
  %i.dd = fcmp ogt double %i.dc, %i.cq
  br i1 %i.dd, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph121
  %.not102 = icmp eq i32 %.085115, 0
  br i1 %.not102, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.cw, ptr %.078118, align 8, !tbaa !427
  %.pre163.pre.pre = load i32, ptr @divWinSize, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre163.pre = phi i32 [ %.pre163.pre167, %bb.j ], [ %.pre163.pre.pre, %bb.k ] ; 2 uses
  %.175 = phi i32 [ %.074119, %bb.j ], [ 0, %bb.k ]
  %.1 = phi double [ %.0120, %bb.j ], [ 0.000000e+00, %bb.k ]
  %i.de = add nsw i32 %.175, 1
  %i.df = fadd double %i.dc, %.1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph121
  %.pre163.pre169 = phi i32 [ %.pre163.pre, %bb.l ], [ %.pre163.pre167, %.lr.ph121 ] ; 2 uses
  %.pre163 = phi i32 [ %.pre163.pre, %bb.l ], [ %.pre163164, %.lr.ph121 ] ; 3 uses
  %.287 = phi i32 [ 1, %bb.l ], [ %.085115, %.lr.ph121 ] ; 2 uses
  %.276 = phi i32 [ %i.de, %bb.l ], [ %.074119, %.lr.ph121 ] ; 2 uses
  %.2 = phi double [ %i.df, %bb.l ], [ %.0120, %.lr.ph121 ] ; 2 uses
  %i.dg = fcmp ole double %i.dc, %i.cq
  %i.dh = icmp sgt i32 %.276, 150                 ; 2 uses
  %or.cond = select i1 %i.dg, i1 true, i1 %i.dh
  %i.di = icmp ne i32 %.287, 0
  %or.cond3 = select i1 %or.cond, i1 %i.di, i1 false
  br i1 %or.cond3, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %.078118, i64 4
  store i32 %i.cw, ptr %i.dj, align 4, !tbaa !428
  %i.dk = load i32, ptr %.078118, align 8, !tbaa !427
  %i.dl = add nsw i32 %i.dk, %i.cw
  %i.dm = add nsw i32 %i.dl, %.pre163
  %i.dn = sdiv i32 %i.dm, 2
  %i.do = getelementptr inbounds nuw i8, ptr %.078118, i64 8
  store i32 %i.dn, ptr %i.do, align 8, !tbaa !429
  %i.dp = getelementptr inbounds nuw i8, ptr %.078118, i64 16
  store double %.2, ptr %i.dp, align 8, !tbaa !430
  %spec.select = zext i1 %i.dh to i32             ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.078118, i64 24
  store i32 %spec.select, ptr %i.dq, align 8, !tbaa !421
  %i.dr = getelementptr inbounds nuw i8, ptr %.078118, i64 76
  store i32 %spec.select, ptr %i.dr, align 4, !tbaa !424
  %i.ds = add nsw i32 %.080117, 1                 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.078118, i64 48 ; 2 uses
  %i.du = icmp sgt i32 %.080117, 99996
  br i1 %i.du, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @ErrorExit(ptr noundef nonnull @.str.30) #33
  %.pre = load ptr, ptr @searchAnchors.stra, align 8, !tbaa !52
  %.pre160 = load double, ptr @searchAnchors.threshold, align 8, !tbaa !24
  %.pre162 = load i32, ptr @divWinSize, align 4, !tbaa !4 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.pre163.pre168 = phi i32 [ %.pre162, %bb.o ], [ %.pre163.pre169, %bb.n ], [ %.pre163.pre169, %bb.m ]
  %.pre163165 = phi i32 [ %.pre162, %bb.o ], [ %.pre163, %bb.n ], [ %.pre163, %bb.m ] ; 3 uses
  %i.dv = phi double [ %.pre160, %bb.o ], [ %i.cq, %bb.n ], [ %i.cq, %bb.m ]
  %i.dw = phi ptr [ %.pre, %bb.o ], [ %i.cr, %bb.n ], [ %i.cr, %bb.m ]
  %.388 = phi i32 [ 0, %bb.o ], [ 0, %bb.n ], [ %.287, %bb.m ] ; 2 uses
  %.181 = phi i32 [ %i.ds, %bb.o ], [ %i.ds, %bb.n ], [ %.080117, %bb.m ] ; 3 uses
  %.179 = phi ptr [ %i.dt, %bb.o ], [ %i.dt, %bb.n ], [ %.078118, %bb.m ] ; 5 uses
  %.377 = phi i32 [ 0, %bb.o ], [ 0, %bb.n ], [ %.276, %bb.m ]
  %.3 = phi double [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.n ], [ %.2, %bb.m ] ; 2 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 3 uses
  %i.dx = sub nsw i32 %i.c, %.pre163165
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp slt i64 %indvars.iv.next156, %i.dy
  br i1 %i.dz, label %.lr.ph121, label %._crit_edge, !llvm.loop !431

._crit_edge:                                      ; preds = %bb.p
  %i.ea = icmp eq i32 %.388, 0
  br i1 %i.ea, label %._crit_edge.thread, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.eb = trunc nuw nsw i64 %indvars.iv.next156 to i32 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.179, i64 4
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !428
  %i.ed = load i32, ptr %.179, align 8, !tbaa !427
  %i.ee = add i32 %.pre163165, %i.eb
  %i.ef = add i32 %i.ee, %i.ed
  %i.eg = sdiv i32 %i.ef, 2
  %i.eh = getelementptr inbounds nuw i8, ptr %.179, i64 8
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !429
  %i.ei = getelementptr inbounds nuw i8, ptr %.179, i64 16
  store double %.3, ptr %i.ei, align 8, !tbaa !430
  %i.ej = add nsw i32 %.181, 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %bb.q, %._crit_edge
  %.282 = phi i32 [ %i.ej, %bb.q ], [ %.181, %._crit_edge ], [ 0, %.preheader ]
  ret i32 %.282
}

declare void @FreeDoubleVec(ptr noundef) local_unnamed_addr #13

declare ptr @AllocateDoubleVec(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @dontcalcimportance(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @dontcalcimportance.nogaplen, align 8, !tbaa !89 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @AllocateIntVec(i32 noundef %0) #33 ; 2 uses
  store ptr %i.c, ptr @dontcalcimportance.nogaplen, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge34.split

.lr.ph:                                           ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.d

.preheader.preheader:                             ; preds = %seqlen.exit
  %wide.trip.count44 = zext nneg i32 %0 to i64    ; 2 uses
  br label %.preheader

bb.d:                                             ; preds = %.lr.ph, %seqlen.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %seqlen.exit ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8     ; 2 uses
  %.not6.i = icmp eq i8 %i.h, 0
  br i1 %.not6.i, label %seqlen.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.i = phi i8 [ %i.l, %.lr.ph.i ], [ %i.h, %bb.d ]
  %.08.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.d ]
  %.037.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.g, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %.037.i, i64 1 ; 2 uses
  %.not5.i = icmp ne i8 %i.i, 45
  %i.k = zext i1 %.not5.i to i32
  %spec.select.i = add nuw nsw i32 %.08.i, %i.k   ; 2 uses
  %i.l = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %seqlen.exit, label %.lr.ph.i, !llvm.loop !9

seqlen.exit:                                      ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %spec.select.i, %.lr.ph.i ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %.0.lcssa.i, ptr %i.m, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.preheader, label %bb.d, !llvm.loop !432

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge32
  %indvars.iv41 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next42, %._crit_edge32 ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv41
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !433  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv36 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next37, %._crit_edge ] ; 2 uses
  br i1 %.not27, label %._crit_edge, label %.lr.ph29.preheader

.lr.ph29.preheader:                               ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %indvars.iv36
  br label %.lr.ph29

.lr.ph29:                                         ; preds = %.lr.ph29.preheader, %.lr.ph29
  %.028.a = phi ptr [ %i.aa, %.lr.ph29 ], [ %i.p, %.lr.ph29.preheader ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.028.a, i64 40
  %i.r = load double, ptr %i.q, align 8, !tbaa !435
  %i.s = getelementptr inbounds nuw i8, ptr %.028.a, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !437
  %i.u = sitofp i32 %i.t to double
  %i.v = fdiv double %i.r, %i.u                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.028.a, i64 56
  store double %i.v, ptr %i.w, align 8, !tbaa !438
  %i.x = fptrunc double %i.v to float
  %i.y = getelementptr inbounds nuw i8, ptr %.028.a, i64 64
  store float %i.x, ptr %i.y, align 8, !tbaa !439
  %i.z = getelementptr inbounds nuw i8, ptr %.028.a, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !440 ; 2 uses
  %.not.a = icmp eq ptr %i.aa, null
  br i1 %.not.a, label %._crit_edge, label %.lr.ph29, !llvm.loop !441

._crit_edge:                                      ; preds = %.lr.ph29, %bb.e
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count44
  br i1 %exitcond40.not, label %._crit_edge32, label %bb.e, !llvm.loop !442

._crit_edge32:                                    ; preds = %._crit_edge
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge34.split, label %.preheader, !llvm.loop !443

._crit_edge34.split:                              ; preds = %._crit_edge32, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @calcimportance(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @calcimportance.importance, align 8, !tbaa !52
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @nlenmax, align 4, !tbaa !4
  %i.d = tail call ptr @AllocateDoubleVec(i32 noundef %i.c) #33
  store ptr %i.d, ptr @calcimportance.importance, align 8, !tbaa !52
  %i.e = tail call ptr @AllocateIntVec(i32 noundef %0) #33
  store ptr %i.e, ptr @calcimportance.nogaplen, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge180

.lr.ph:                                           ; preds = %bb.c
  %i.g = load ptr, ptr @calcimportance.nogaplen, align 8, !tbaa !89
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.l

.preheader121.lr.ph:                              ; preds = %seqlen.exit
  %i.h = load i32, ptr @nlenmax, align 4, !tbaa !4 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  %i.j = load ptr, ptr @calcimportance.importance, align 8 ; 18 uses
  %i.k = zext nneg i32 %i.h to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %wide.trip.count213 = zext nneg i32 %0 to i64   ; 3 uses
  %scevgep249 = getelementptr i8, ptr %i.j, i64 8
  br label %.preheader121.us

.preheader121.us:                                 ; preds = %._crit_edge147.us, %.preheader121.lr.ph
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %._crit_edge147.us ], [ 0, %.preheader121.lr.ph ] ; 5 uses
  br i1 %i.i, label %.lr.ph127.us.preheader, label %.lr.ph135.us

.lr.ph127.us.preheader:                           ; preds = %.preheader121.us
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.l, i1 false), !tbaa !24
  br label %.lr.ph135.us

bb.d:                                             ; preds = %.lr.ph135.us, %.loopexit118.us
  %indvars.iv195 = phi i64 [ 0, %.lr.ph135.us ], [ %indvars.iv.next196, %.loopexit118.us ] ; 5 uses
  %i.m = shl nuw nsw i64 %indvars.iv195, 3        ; 2 uses
  %scevgep251 = getelementptr i8, ptr %1, i64 %i.m
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %scevgep252 = getelementptr i8, ptr %i.n, i64 8
  %i.o = icmp eq i64 %indvars.iv210, %indvars.iv195
  br i1 %i.o, label %.loopexit118.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.ee, align 8, !tbaa !433 ; 2 uses
  %.not111131.us = icmp eq ptr %i.p, null
  br i1 %.not111131.us, label %.loopexit118.us, label %.lr.ph133.us

bb.f:                                             ; preds = %.lr.ph133.us, %.loopexit115.us
  %.099132.us = phi ptr [ %i.ec, %.lr.ph133.us ], [ %i.bq, %.loopexit115.us ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.099132.us, i64 40
  %i.r = load double, ptr %i.q, align 8, !tbaa !435
  %i.s = fcmp oeq double %i.r, -1.000000e+00
  br i1 %i.s, label %.loopexit115.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.099132.us, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !444  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.099132.us, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !445  ; 6 uses
  %.not112128.us = icmp sgt i32 %i.u, %i.w
  br i1 %.not112128.us, label %.loopexit115.us, label %.lr.ph130.us.preheader

.lr.ph130.us.preheader:                           ; preds = %bb.g
  %i.x = sext i32 %i.u to i64                     ; 6 uses
  %i.y = add i32 %i.w, 1
  %i.z = sub i32 %i.w, %i.u                       ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.z, 5
  br i1 %min.iters.check, label %.lr.ph130.us.preheader257, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph130.us.preheader
  %i.ac = shl nsw i64 %i.x, 3
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.ac
  %i.ad = sub i32 %i.w, %i.u
  %i.ae = zext i32 %i.ad to i64
  %i.af = add nsw i64 %i.x, %i.ae
  %i.ag = shl nsw i64 %i.af, 3
  %scevgep250 = getelementptr i8, ptr %scevgep249, i64 %i.ag
  %bound0 = icmp ult ptr %scevgep, %scevgep252
  %bound1 = icmp ult ptr %scevgep251, %scevgep250
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph130.us.preheader257, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 8589934588              ; 3 uses
  %i.ah = add nsw i64 %n.vec, %i.x
  %i.ai = load double, ptr %i.ed, align 8, !tbaa !24, !alias.scope !446
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ai, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !24, !alias.scope !449, !noalias !446
  %wide.load253 = load <2 x double>, ptr %i.aj, align 8, !tbaa !24, !alias.scope !449, !noalias !446
  %i.ak = fadd <2 x double> %broadcast.splat, %wide.load
  %i.al = fadd <2 x double> %broadcast.splat, %wide.load253
  store <2 x double> %i.ak, ptr %gep, align 8, !tbaa !24, !alias.scope !449, !noalias !446
  store <2 x double> %i.al, ptr %i.aj, align 8, !tbaa !24, !alias.scope !449, !noalias !446
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !451

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit115.us, label %.lr.ph130.us.preheader257

.lr.ph130.us.preheader257:                        ; preds = %vector.memcheck, %.lr.ph130.us.preheader, %middle.block
  %indvars.iv191.ph = phi i64 [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph130.us.preheader ], [ %i.ah, %middle.block ] ; 3 uses
  %i.an = add i32 %i.w, 1
  %i.ao = trunc i64 %indvars.iv191.ph to i32      ; 2 uses
  %i.ap = sub i32 %i.an, %i.ao
  %i.aq = sub i32 %i.w, %i.ao
  %xtraiter = and i32 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph130.us.prol.loopexit, label %.lr.ph130.us.prol

.lr.ph130.us.prol:                                ; preds = %.lr.ph130.us.preheader257, %.lr.ph130.us.prol
  %indvars.iv191.prol = phi i64 [ %indvars.iv.next192.prol, %.lr.ph130.us.prol ], [ %indvars.iv191.ph, %.lr.ph130.us.preheader257 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph130.us.prol ], [ 0, %.lr.ph130.us.preheader257 ]
  %i.ar = load double, ptr %i.ed, align 8, !tbaa !24
  %i.as = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv191.prol ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !24
  %i.au = fadd double %i.ar, %i.at
  store double %i.au, ptr %i.as, align 8, !tbaa !24
  %indvars.iv.next192.prol = add nsw i64 %indvars.iv191.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph130.us.prol.loopexit, label %.lr.ph130.us.prol, !llvm.loop !452

.lr.ph130.us.prol.loopexit:                       ; preds = %.lr.ph130.us.prol, %.lr.ph130.us.preheader257
  %indvars.iv191.unr = phi i64 [ %indvars.iv191.ph, %.lr.ph130.us.preheader257 ], [ %indvars.iv.next192.prol, %.lr.ph130.us.prol ]
  %i.av = icmp ult i32 %i.aq, 3
  br i1 %i.av, label %.loopexit115.us, label %.lr.ph130.us

.lr.ph130.us:                                     ; preds = %.lr.ph130.us.prol.loopexit, %.lr.ph130.us
  %indvars.iv191 = phi i64 [ %indvars.iv.next192.3, %.lr.ph130.us ], [ %indvars.iv191.unr, %.lr.ph130.us.prol.loopexit ] ; 5 uses
  %i.aw = load double, ptr %i.ed, align 8, !tbaa !24
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv191 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !24
  %i.az = fadd double %i.aw, %i.ay
  store double %i.az, ptr %i.ax, align 8, !tbaa !24
  %i.ba = load double, ptr %i.ed, align 8, !tbaa !24
  %i.bb = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv191
  %i.bc = getelementptr i8, ptr %i.bb, i64 8      ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24
  %i.be = fadd double %i.ba, %i.bd
  store double %i.be, ptr %i.bc, align 8, !tbaa !24
  %i.bf = load double, ptr %i.ed, align 8, !tbaa !24
  %i.bg = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv191
  %i.bh = getelementptr i8, ptr %i.bg, i64 16     ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !24
  %i.bj = fadd double %i.bf, %i.bi
  store double %i.bj, ptr %i.bh, align 8, !tbaa !24
  %i.bk = load double, ptr %i.ed, align 8, !tbaa !24
  %i.bl = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv191
  %i.bm = getelementptr i8, ptr %i.bl, i64 24     ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !24
  %i.bo = fadd double %i.bk, %i.bn
  store double %i.bo, ptr %i.bm, align 8, !tbaa !24
  %indvars.iv.next192.3 = add nsw i64 %indvars.iv191, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next192.3 to i32
  %exitcond194.not.3 = icmp eq i32 %i.y, %lftr.wideiv.3
  br i1 %exitcond194.not.3, label %.loopexit115.us, label %.lr.ph130.us, !llvm.loop !453

.loopexit115.us:                                  ; preds = %.lr.ph130.us.prol.loopexit, %.lr.ph130.us, %middle.block, %bb.g, %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %.099132.us, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !440 ; 2 uses
  %.not111.us = icmp eq ptr %i.bq, null
  br i1 %.not111.us, label %.loopexit118.us, label %bb.f, !llvm.loop !454

.loopexit118.us:                                  ; preds = %.loopexit115.us, %bb.e, %bb.d
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count213
  br i1 %exitcond199.not, label %.preheader119.us, label %bb.d, !llvm.loop !455

bb.h:                                             ; preds = %.preheader119.us, %.loopexit117.us
  %indvars.iv205 = phi i64 [ 0, %.preheader119.us ], [ %indvars.iv.next206, %.loopexit117.us ] ; 3 uses
  %i.br = icmp eq i64 %indvars.iv210, %indvars.iv205
end_hunk_0
