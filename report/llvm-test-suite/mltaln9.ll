inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 95
begin_hunk_0_@searchAnchors:bb.a
  %i.ds = add nsw i32 %.078118, 1                 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.092113, i64 48 ; 2 uses
  %i.du = icmp sgt i32 %.078118, 99996
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
  %.193 = phi ptr [ %i.dt, %bb.o ], [ %i.dt, %bb.n ], [ %.092113, %bb.m ] ; 5 uses
  %.386 = phi i32 [ 0, %bb.o ], [ 0, %bb.n ], [ %.285, %bb.m ] ; 2 uses
  %.179 = phi i32 [ %i.ds, %bb.o ], [ %i.ds, %bb.n ], [ %.078118, %bb.m ] ; 3 uses
  %.377 = phi i32 [ 0, %bb.o ], [ 0, %bb.n ], [ %.276, %bb.m ]
  %.3 = phi double [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.n ], [ %.2, %bb.m ] ; 2 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 3 uses
  %i.dx = sub nsw i32 %i.c, %.pre163165
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp slt i64 %indvars.iv.next156, %i.dy
  br i1 %i.dz, label %.lr.ph121, label %._crit_edge, !llvm.loop !431

._crit_edge:                                      ; preds = %bb.p
  %i.ea = icmp eq i32 %.386, 0
  br i1 %i.ea, label %._crit_edge.thread, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.eb = trunc nuw nsw i64 %indvars.iv.next156 to i32 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.193, i64 4
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !428
  %i.ed = load i32, ptr %.193, align 8, !tbaa !427
  %i.ee = add i32 %.pre163165, %i.eb
  %i.ef = add i32 %i.ee, %i.ed
  %i.eg = sdiv i32 %i.ef, 2
  %i.eh = getelementptr inbounds nuw i8, ptr %.193, i64 8
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !429
  %i.ei = getelementptr inbounds nuw i8, ptr %.193, i64 16
  store double %.3, ptr %i.ei, align 8, !tbaa !430
  %i.ej = add nsw i32 %.179, 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %bb.q, %._crit_edge
  %.280 = phi i32 [ %i.ej, %bb.q ], [ %.179, %._crit_edge ], [ 0, %.preheader ]
  ret i32 %.280
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
  %.028 = phi ptr [ %i.aa, %.lr.ph29 ], [ %i.p, %.lr.ph29.preheader ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.028, i64 40
  %i.r = load double, ptr %i.q, align 8, !tbaa !435
  %i.s = getelementptr inbounds nuw i8, ptr %.028, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !437
  %i.u = sitofp i32 %i.t to double
  %i.v = fdiv double %i.r, %i.u                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.028, i64 56
  store double %i.v, ptr %i.w, align 8, !tbaa !438
  %i.x = fptrunc double %i.v to float
  %i.y = getelementptr inbounds nuw i8, ptr %.028, i64 64
  store float %i.x, ptr %i.y, align 8, !tbaa !439
  %i.z = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !440 ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %._crit_edge, label %.lr.ph29, !llvm.loop !441

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
  %.098132.us = phi ptr [ %i.ec, %.lr.ph133.us ], [ %i.bq, %.loopexit115.us ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.098132.us, i64 40
  %i.r = load double, ptr %i.q, align 8, !tbaa !435
  %i.s = fcmp oeq double %i.r, -1.000000e+00
  br i1 %i.s, label %.loopexit115.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.098132.us, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !444  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.098132.us, i64 28
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
  %i.bp = getelementptr inbounds nuw i8, ptr %.098132.us, i64 8
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
  br i1 %i.br, label %.loopexit117.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %i.eb, align 8, !tbaa !433 ; 2 uses
  %i.bt = getelementptr inbounds nuw [80 x i8], ptr %i.bs, i64 %indvars.iv205 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !435
  %i.bw = fcmp oeq double %i.bv, -1.000000e+00
  %.not142.us = icmp eq ptr %i.bs, null
  %or.cond = or i1 %i.bw, %.not142.us
  br i1 %or.cond, label %.loopexit117.us, label %.lr.ph144.us

.lr.ph144.us:                                     ; preds = %bb.i, %bb.k
  %.1143.us = phi ptr [ %i.ea, %bb.k ], [ %i.bt, %bb.i ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.1143.us, i64 40
  %i.by = load double, ptr %i.bx, align 8, !tbaa !435 ; 2 uses
  %i.bz = fcmp oeq double %i.by, -1.000000e+00
  br i1 %i.bz, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph144.us
  %i.ca = getelementptr inbounds nuw i8, ptr %.1143.us, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !444 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1143.us, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !445 ; 3 uses
  %.not110136.us = icmp sgt i32 %i.cb, %i.cd
  br i1 %.not110136.us, label %._crit_edge.us, label %.lr.ph140.us.preheader

.lr.ph140.us.preheader:                           ; preds = %bb.j
  %i.ce = sext i32 %i.cb to i64                   ; 2 uses
  %i.cf = add i32 %i.cd, 1                        ; 3 uses
  %i.cg = sub i32 %i.cf, %i.cb
  %i.ch = sub i32 %i.cd, %i.cb
  %xtraiter259 = and i32 %i.cg, 7                 ; 2 uses
  %lcmp.mod260.not = icmp eq i32 %xtraiter259, 0
  br i1 %lcmp.mod260.not, label %.lr.ph140.us.prol.loopexit, label %.lr.ph140.us.prol

.lr.ph140.us.prol:                                ; preds = %.lr.ph140.us.preheader, %.lr.ph140.us.prol
  %indvars.iv200.prol = phi i64 [ %indvars.iv.next201.prol, %.lr.ph140.us.prol ], [ %i.ce, %.lr.ph140.us.preheader ] ; 2 uses
  %.099139.us.prol = phi double [ %i.ck, %.lr.ph140.us.prol ], [ 0.000000e+00, %.lr.ph140.us.preheader ]
  %prol.iter261 = phi i32 [ %prol.iter261.next, %.lr.ph140.us.prol ], [ 0, %.lr.ph140.us.preheader ]
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv200.prol
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !24
  %i.ck = fadd double %.099139.us.prol, %i.cj     ; 3 uses
  %indvars.iv.next201.prol = add nsw i64 %indvars.iv200.prol, 1 ; 2 uses
  %prol.iter261.next = add i32 %prol.iter261, 1   ; 2 uses
  %prol.iter261.cmp.not = icmp eq i32 %prol.iter261.next, %xtraiter259
  br i1 %prol.iter261.cmp.not, label %.lr.ph140.us.prol.loopexit, label %.lr.ph140.us.prol, !llvm.loop !456

.lr.ph140.us.prol.loopexit:                       ; preds = %.lr.ph140.us.prol, %.lr.ph140.us.preheader
  %.lcssa258.unr = phi double [ poison, %.lr.ph140.us.preheader ], [ %i.ck, %.lr.ph140.us.prol ]
  %indvars.iv200.unr = phi i64 [ %i.ce, %.lr.ph140.us.preheader ], [ %indvars.iv.next201.prol, %.lr.ph140.us.prol ]
  %.099139.us.unr = phi double [ 0.000000e+00, %.lr.ph140.us.preheader ], [ %i.ck, %.lr.ph140.us.prol ]
  %i.cl = icmp ult i32 %i.ch, 7
  br i1 %i.cl, label %._crit_edge.us.loopexit, label %.lr.ph140.us

.lr.ph140.us:                                     ; preds = %.lr.ph140.us.prol.loopexit, %.lr.ph140.us
  %indvars.iv200 = phi i64 [ %indvars.iv.next201.7, %.lr.ph140.us ], [ %indvars.iv200.unr, %.lr.ph140.us.prol.loopexit ] ; 9 uses
  %.099139.us = phi double [ %i.dq, %.lr.ph140.us ], [ %.099139.us.unr, %.lr.ph140.us.prol.loopexit ]
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv200
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !24
  %i.co = fadd double %.099139.us, %i.cn
  %i.cp = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv200
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !24
  %i.cs = fadd double %i.co, %i.cr
  %i.ct = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv200
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !24
  %i.cw = fadd double %i.cs, %i.cv
  %i.cx = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv200
  %i.cy = getelementptr i8, ptr %i.cx, i64 24
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !24
  %i.da = fadd double %i.cw, %i.cz
  %i.db = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv200
  %i.dc = getelementptr i8, ptr %i.db, i64 32
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !24
  %i.de = fadd double %i.da, %i.dd
  %i.df = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv200
  %i.dg = getelementptr i8, ptr %i.df, i64 40
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !24
  %i.di = fadd double %i.de, %i.dh
  %i.dj = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv200
  %i.dk = getelementptr i8, ptr %i.dj, i64 48
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !24
  %i.dm = fadd double %i.di, %i.dl
  %i.dn = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv200
  %i.do = getelementptr i8, ptr %i.dn, i64 56
  %i.dp = load double, ptr %i.do, align 8, !tbaa !24
  %i.dq = fadd double %i.dm, %i.dp                ; 2 uses
  %indvars.iv.next201.7 = add nsw i64 %indvars.iv200, 8 ; 2 uses
  %lftr.wideiv203.7 = trunc i64 %indvars.iv.next201.7 to i32
  %exitcond204.not.7 = icmp eq i32 %i.cf, %lftr.wideiv203.7
  br i1 %exitcond204.not.7, label %._crit_edge.us.loopexit, label %.lr.ph140.us, !llvm.loop !457

._crit_edge.us.loopexit:                          ; preds = %.lr.ph140.us, %.lr.ph140.us.prol.loopexit
  %.lcssa258 = phi double [ %.lcssa258.unr, %.lr.ph140.us.prol.loopexit ], [ %i.dq, %.lr.ph140.us ]
  %i.dr = sub i32 %i.cf, %i.cb
  %i.ds = uitofp nneg i32 %i.dr to double
  %i.dt = fdiv double %.lcssa258, %i.ds
  %i.du = fmul double %i.by, %i.dt
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.loopexit, %bb.j
  %i.dv = phi double [ +qnan, %bb.j ], [ %i.du, %._crit_edge.us.loopexit ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.1143.us, i64 56
  store double %i.dv, ptr %i.dw, align 8, !tbaa !438
  %i.dx = fptrunc double %i.dv to float
  %i.dy = getelementptr inbounds nuw i8, ptr %.1143.us, i64 64
  store float %i.dx, ptr %i.dy, align 8, !tbaa !439
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.us, %.lr.ph144.us
  %i.dz = getelementptr inbounds nuw i8, ptr %.1143.us, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !440 ; 2 uses
  %.not.us = icmp eq ptr %i.ea, null
  br i1 %.not.us, label %.loopexit117.us, label %.lr.ph144.us, !llvm.loop !458

.loopexit117.us:                                  ; preds = %bb.k, %bb.i, %bb.h
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count213
  br i1 %exitcond209.not, label %._crit_edge147.us, label %bb.h, !llvm.loop !459

.preheader119.us:                                 ; preds = %.loopexit118.us
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv210
  br label %bb.h

.lr.ph133.us:                                     ; preds = %bb.e
  %i.ec = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %indvars.iv195
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv195 ; 6 uses
  br label %bb.f

.lr.ph135.us:                                     ; preds = %.preheader121.us, %.lr.ph127.us.preheader
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv210
  br label %bb.d

._crit_edge147.us:                                ; preds = %.loopexit117.us
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count213
  br i1 %exitcond214.not, label %.preheader, label %.preheader121.us, !llvm.loop !460

bb.l:                                             ; preds = %.lr.ph, %seqlen.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %seqlen.exit ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !12 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !8   ; 2 uses
  %.not6.i = icmp eq i8 %i.eh, 0
  br i1 %.not6.i, label %seqlen.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %i.ei = phi i8 [ %i.el, %.lr.ph.i ], [ %i.eh, %bb.l ]
  %.08.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.l ]
  %.037.i = phi ptr [ %i.ej, %.lr.ph.i ], [ %i.eg, %bb.l ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.037.i, i64 1 ; 2 uses
  %.not5.i = icmp ne i8 %i.ei, 45
  %i.ek = zext i1 %.not5.i to i32
  %spec.select.i = add nuw nsw i32 %.08.i, %i.ek  ; 2 uses
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !8   ; 2 uses
  %.not.i = icmp eq i8 %i.el, 0
  br i1 %.not.i, label %seqlen.exit, label %.lr.ph.i, !llvm.loop !9

seqlen.exit:                                      ; preds = %.lr.ph.i, %bb.l
  %.0.lcssa.i = phi i32 [ 0, %bb.l ], [ %spec.select.i, %.lr.ph.i ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %.0.lcssa.i, ptr %i.em, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader121.lr.ph, label %bb.l, !llvm.loop !461

.preheader:                                       ; preds = %._crit_edge147.us
  %.not244 = icmp eq i32 %0, 1
  br i1 %.not244, label %._crit_edge180, label %.lr.ph179.preheader

.lr.ph179.preheader:                              ; preds = %.preheader
  %i.en = add nsw i32 %0, -1
  %wide.trip.count225 = zext nneg i32 %i.en to i64
  %wide.trip.count220 = zext nneg i32 %0 to i64
  br label %.lr.ph177

.loopexit:                                        ; preds = %bb.q
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1
  %exitcond226.not = icmp eq i64 %indvars.iv.next223, %wide.trip.count225
  br i1 %exitcond226.not, label %._crit_edge180, label %.lr.ph177, !llvm.loop !462

.lr.ph177:                                        ; preds = %.loopexit, %.lr.ph179.preheader
  %indvars.iv222 = phi i64 [ 0, %.lr.ph179.preheader ], [ %indvars.iv.next223, %.loopexit ] ; 4 uses
  %indvars.iv215 = phi i64 [ 1, %.lr.ph179.preheader ], [ %indvars.iv.next216, %.loopexit ] ; 2 uses
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv222
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !433
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph177, %bb.q
  %indvars.iv217 = phi i64 [ %indvars.iv215, %.lr.ph177 ], [ %indvars.iv.next218, %bb.q ] ; 4 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv217
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !433 ; 2 uses
  %.not = icmp eq ptr %i.er, null
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph173.preheader

.lr.ph173.preheader:                              ; preds = %bb.m
  %i.es = getelementptr inbounds nuw [80 x i8], ptr %i.ep, i64 %indvars.iv217
  %i.et = getelementptr inbounds nuw [80 x i8], ptr %i.er, i64 %indvars.iv222
  br label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.preheader, %bb.p
  %.0172 = phi ptr [ %i.fm, %bb.p ], [ %i.et, %.lr.ph173.preheader ] ; 4 uses
  %.097171 = phi ptr [ %i.fk, %bb.p ], [ %i.es, %.lr.ph173.preheader ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.097171, i64 40
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !435
  %i.ew = fcmp oeq double %i.ev, -1.000000e+00
  br i1 %i.ew, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph173
  %i.ex = getelementptr inbounds nuw i8, ptr %.0172, i64 40
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !435
  %i.ez = fcmp oeq double %i.ey, -1.000000e+00
  br i1 %i.ez, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fa = getelementptr inbounds nuw i8, ptr %.097171, i64 56 ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !438
  %i.fc = getelementptr inbounds nuw i8, ptr %.0172, i64 56 ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !438
  %i.fe = fadd double %i.fb, %i.fd
  %i.ff = fmul double %i.fe, 5.000000e-01         ; 3 uses
  store double %i.ff, ptr %i.fc, align 8, !tbaa !438
  store double %i.ff, ptr %i.fa, align 8, !tbaa !438
  %i.fg = fptrunc double %i.ff to float           ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0172, i64 64
  store float %i.fg, ptr %i.fh, align 8, !tbaa !439
  %i.fi = getelementptr inbounds nuw i8, ptr %.097171, i64 64
  store float %i.fg, ptr %i.fi, align 8, !tbaa !439
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph173, %bb.n, %bb.o
  %i.fj = getelementptr inbounds nuw i8, ptr %.097171, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !440 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.0172, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !440 ; 2 uses
  %i.fn = icmp ne ptr %i.fk, null
  %i.fo = icmp ne ptr %i.fm, null                 ; 2 uses
  %i.fp = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %i.fp, label %.lr.ph173, label %._crit_edge, !llvm.loop !463

._crit_edge:                                      ; preds = %bb.p
  %i.fq = icmp ne ptr %i.fk, null
  %i.fr = xor i1 %i.fq, %i.fo
  br i1 %i.fr, label %._crit_edge.thread, label %bb.q

._crit_edge.thread:                               ; preds = %bb.m, %._crit_edge
  %i.fs = trunc nuw nsw i64 %indvars.iv222 to i32
  %i.ft = trunc nuw nsw i64 %indvars.iv217 to i32
  %i.fu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.fv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fu, ptr noundef nonnull @.str.31, i32 noundef %i.fs, i32 noundef %i.ft) #31 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.q:                                             ; preds = %._crit_edge
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count220
  br i1 %exitcond221.not, label %.loopexit, label %bb.m, !llvm.loop !464

._crit_edge180:                                   ; preds = %.loopexit, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @extendlocalhom2(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @extendlocalhom2.ini, align 8, !tbaa !89
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @nlenmax, align 4, !tbaa !4
  %i.d = add nsw i32 %i.c, 1
  %i.e = tail call ptr @AllocateIntVec(i32 noundef %i.d) #33
  store ptr %i.e, ptr @extendlocalhom2.ini, align 8, !tbaa !89
  %i.f = load i32, ptr @nlenmax, align 4, !tbaa !4
  %i.g = add nsw i32 %i.f, 1
  %i.h = tail call ptr @AllocateIntVec(i32 noundef %i.g) #33
  store ptr %i.h, ptr @extendlocalhom2.inj, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = icmp sgt i32 %0, 1
  br i1 %i.i, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %bb.c
  %i.j = add nsw i32 %0, -1
  %wide.trip.count291 = zext nneg i32 %i.j to i64
  %wide.trip.count286 = zext nneg i32 %0 to i64   ; 2 uses
  br label %.preheader201.lr.ph.us

.loopexit202.us:                                  ; preds = %._crit_edge256.us.us
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %._crit_edge, label %.preheader201.lr.ph.us, !llvm.loop !465

.preheader201.lr.ph.us:                           ; preds = %.loopexit202.us, %.lr.ph.split.us.preheader
  %indvars.iv288 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next289, %.loopexit202.us ] ; 6 uses
  %indvars.iv281 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next282, %.loopexit202.us ] ; 2 uses
  %.0148267.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %.5.us.us, %.loopexit202.us ]
  %.0152266.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %.5157.us.us, %.loopexit202.us ]
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv288
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv288 ; 3 uses
  %i.m = trunc nuw nsw i64 %indvars.iv288 to i32  ; 2 uses
  br label %.preheader201.us.us

.preheader201.us.us:                              ; preds = %._crit_edge256.us.us, %.preheader201.lr.ph.us
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %._crit_edge256.us.us ], [ %indvars.iv281, %.preheader201.lr.ph.us ] ; 6 uses
  %.1149261.us.us = phi i32 [ %.5.us.us, %._crit_edge256.us.us ], [ %.0148267.us, %.preheader201.lr.ph.us ]
  %.1153260.us.us = phi i32 [ %.5157.us.us, %._crit_edge256.us.us ], [ %.0152266.us, %.preheader201.lr.ph.us ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv283 ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv283 to i32  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.us.us, %.preheader201.us.us
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %.loopexit.us.us ], [ 0, %.preheader201.us.us ] ; 10 uses
  %.2150254.us.us = phi i32 [ %.5.us.us, %.loopexit.us.us ], [ %.1149261.us.us, %.preheader201.us.us ] ; 5 uses
  %.2154253.us.us = phi i32 [ %.5157.us.us, %.loopexit.us.us ], [ %.1153260.us.us, %.preheader201.us.us ] ; 5 uses
  %i.p = icmp eq i64 %indvars.iv276, %indvars.iv288
  %i.q = icmp eq i64 %indvars.iv276, %indvars.iv283
  %or.cond.us.us = or i1 %i.p, %i.q
  br i1 %or.cond.us.us, label %.loopexit.us.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = trunc nuw nsw i64 %indvars.iv276 to i32  ; 6 uses
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.m, i32 %i.r)
end_hunk_0
