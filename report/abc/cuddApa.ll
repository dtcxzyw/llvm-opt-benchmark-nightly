Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddApa?download=true
inline.NumInlined: 26
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Cudd_ApaIntDivision:bb.a
  %i.l = fneg double %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.a, double %i.g)
  %i.n = fptoui double %i.m to i32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Cudd_ApaShiftRight(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 6 uses
  %i.c = add nsw i64 %i.b, -1                     ; 2 uses
  %min.iters.check = icmp ult i32 %0, 13
  br i1 %min.iters.check, label %.lr.ph.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %3, i64 4
  %i.d = shl nuw nsw i64 %i.b, 2                  ; 2 uses
  %scevgep13 = getelementptr i8, ptr %3, i64 %i.d
  %scevgep15 = getelementptr i8, ptr %2, i64 %i.d
  %bound0 = icmp ult ptr %scevgep, %scevgep15
  %bound1 = icmp ult ptr %2, %scevgep13
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, -8                       ; 3 uses
  %i.e = sub nsw i64 %i.b, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = sub i64 %i.b, %index                     ; 2 uses
  %i.g = add nsw i64 %i.f, -1                     ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -12
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -28
  %wide.load = load <4 x i32>, ptr %i.i, align 4, !tbaa !14, !alias.scope !37
  %wide.load16 = load <4 x i32>, ptr %i.j, align 4, !tbaa !14, !alias.scope !37
  %i.k = getelementptr [4 x i8], ptr %2, i64 %i.f ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -20
  %i.m = getelementptr i8, ptr %i.k, i64 -36
  %wide.load18 = load <4 x i32>, ptr %i.l, align 4, !tbaa !14, !alias.scope !37
  %wide.load19 = load <4 x i32>, ptr %i.m, align 4, !tbaa !14, !alias.scope !37
  %i.n = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load18, <4 x i32> %wide.load, <4 x i32> splat (i32 31))
  %i.o = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load19, <4 x i32> %wide.load16, <4 x i32> splat (i32 31))
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.g ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -12
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -28
  store <4 x i32> %i.n, ptr %i.q, align 4, !tbaa !14, !alias.scope !38, !noalias !37
  store <4 x i32> %i.o, ptr %i.r, align 4, !tbaa !14, !alias.scope !38, !noalias !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader24

.lr.ph.preheader24:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader24, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader24 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.u = load i32, ptr %i.t, align 4, !tbaa !14
  %i.v = getelementptr [4 x i8], ptr %2, i64 %indvars.iv
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = tail call i32 @llvm.fshl.i32(i32 %i.x, i32 %i.u, i32 31)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  store i32 %i.y, ptr %i.z, align 4, !tbaa !14
  %i.aa = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.ab = load i32, ptr %2, align 4, !tbaa !14
  %i.ac = tail call i32 @llvm.fshl.i32(i32 %1, i32 %i.ab, i32 31)
  store i32 %i.ac, ptr %3, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @Cudd_ApaSetToLiteral(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = add i32 %0, -1                           ; 2 uses
  %i.b = icmp sgt i32 %0, 1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.d, i1 false), !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.e = sext i32 %i.a to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %1, i64 %i.e
  store i32 %2, ptr %i.f, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @Cudd_ApaPowerOfTwo(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.c, i1 false), !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.d = add nsw i32 %0, -1
  %.neg = sdiv i32 %2, -32
  %i.e = add i32 %i.d, %.neg                      ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.g = and i32 %2, 31
  %i.h = shl nuw i32 1, %i.g
  %i.i = zext nneg i32 %i.e to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i
  store i32 %i.h, ptr %i.j, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @Cudd_ApaCompare(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit.split.loop.exit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.d = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit, %bb.a
  %.034.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %._crit_edge.loopexit.split.loop.exit ], [ %0, %bb.b ] ; 2 uses
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph47.preheader, label %._crit_edge48

.lr.ph47.preheader:                               ; preds = %._crit_edge
  %wide.trip.count63 = zext nneg i32 %2 to i64
  br label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %bb.c
  %indvars.iv60 = phi i64 [ 0, %.lr.ph47.preheader ], [ %indvars.iv.next61, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv60
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14
  %.not41 = icmp eq i32 %i.g, 0
  br i1 %.not41, label %bb.c, label %._crit_edge48.loopexit.split.loop.exit

bb.c:                                             ; preds = %.lr.ph47
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge48, label %.lr.ph47, !llvm.loop !4

._crit_edge48.loopexit.split.loop.exit:           ; preds = %.lr.ph47
  %i.h = trunc nuw nsw i64 %indvars.iv60 to i32
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %bb.c, %._crit_edge48.loopexit.split.loop.exit, %._crit_edge
  %.0.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.h, %._crit_edge48.loopexit.split.loop.exit ], [ %2, %bb.c ] ; 2 uses
  %i.i = sub nuw nsw i32 %0, %.034.lcssa          ; 4 uses
  %i.j = sub nuw nsw i32 %2, %.0.lcssa            ; 2 uses
  %i.k = icmp sgt i32 %i.i, %i.j
  br i1 %i.k, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %._crit_edge48
  %i.l = icmp slt i32 %i.i, %i.j
  br i1 %i.l, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.m = icmp sgt i32 %i.i, 0
  br i1 %i.m, label %.lr.ph53.preheader, label %.loopexit

.lr.ph53.preheader:                               ; preds = %.preheader
  %i.n = zext i32 %.034.lcssa to i64
  %i.o = zext i32 %.0.lcssa to i64
  %wide.trip.count68 = zext nneg i32 %i.i to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  %invariant.gep79 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.o
  br label %.lr.ph53

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph53, !llvm.loop !5

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %bb.e
  %indvars.iv65 = phi i64 [ 0, %.lr.ph53.preheader ], [ %indvars.iv.next66, %bb.e ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv65
  %i.p = load i32, ptr %gep, align 4, !tbaa !14   ; 2 uses
  %gep80 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep79, i64 %indvars.iv65
  %i.q = load i32, ptr %gep80, align 4, !tbaa !14 ; 2 uses
  %i.r = icmp ugt i32 %i.p, %i.q
  br i1 %i.r, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph53
  %i.s = icmp ult i32 %i.p, %i.q
  br i1 %i.s, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %.lr.ph53, %bb.f, %bb.e, %.preheader, %bb.d, %._crit_edge48
  %.036 = phi i32 [ -1, %bb.d ], [ 1, %._crit_edge48 ], [ 0, %.preheader ], [ -1, %bb.f ], [ 1, %.lr.ph53 ], [ 0, %bb.e ]
  ret i32 %.036
}

; Function Attrs: nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define range(i32 -1, 2) i32 @Cudd_ApaCompareRatios(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #8 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = shl nsw i64 %i.a, 2
  %i.c = tail call noalias noundef ptr @malloc(i64 noundef %i.b) #17 ; 5 uses
  %i.d = uitofp i32 %2 to double                  ; 3 uses
  %i.e = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader.i, label %Cudd_ApaIntDivision.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %0 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %.017.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.q, %.lr.ph.i ]
  %i.f = uitofp i32 %.017.i to double
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14
  %i.i = uitofp i32 %i.h to double
  %i.j = tail call double @llvm.fmuladd.f64(double %i.f, double f0x41F0000000000000, double %i.i) ; 2 uses
  %i.k = fdiv double %i.j, %i.d
  %i.l = fptoui double %i.k to i32                ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  store i32 %i.l, ptr %i.m, align 4, !tbaa !14
  %i.n = uitofp i32 %i.l to double
  %i.o = fneg double %i.n
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.d, double %i.j)
  %i.q = fptoui double %i.p to i32                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Cudd_ApaIntDivision.exit.loopexit, label %.lr.ph.i, !llvm.loop !2

Cudd_ApaIntDivision.exit.loopexit:                ; preds = %.lr.ph.i
  %i.r = uitofp i32 %i.q to double
  br label %Cudd_ApaIntDivision.exit

Cudd_ApaIntDivision.exit:                         ; preds = %Cudd_ApaIntDivision.exit.loopexit, %bb.a
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %i.r, %Cudd_ApaIntDivision.exit.loopexit ]
  %i.s = sext i32 %3 to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = tail call noalias noundef ptr @malloc(i64 noundef %i.t) #17 ; 5 uses
  %i.v = uitofp i32 %5 to double                  ; 3 uses
  %i.w = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.w, label %.lr.ph.preheader.i34, label %Cudd_ApaIntDivision.exit41

.lr.ph.preheader.i34:                             ; preds = %Cudd_ApaIntDivision.exit
  %wide.trip.count.i35 = zext nneg i32 %3 to i64
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36, %.lr.ph.preheader.i34
  %indvars.iv.i37 = phi i64 [ 0, %.lr.ph.preheader.i34 ], [ %indvars.iv.next.i39, %.lr.ph.i36 ] ; 3 uses
  %.017.i38 = phi i32 [ 0, %.lr.ph.preheader.i34 ], [ %i.ai, %.lr.ph.i36 ]
  %i.x = uitofp i32 %.017.i38 to double
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i37
  %i.z = load i32, ptr %i.y, align 4, !tbaa !14
  %i.aa = uitofp i32 %i.z to double
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.x, double f0x41F0000000000000, double %i.aa) ; 2 uses
  %i.ac = fdiv double %i.ab, %i.v
  %i.ad = fptoui double %i.ac to i32              ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i37
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !14
  %i.af = uitofp i32 %i.ad to double
  %i.ag = fneg double %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.v, double %i.ab)
  %i.ai = fptoui double %i.ah to i32              ; 2 uses
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i37, 1 ; 2 uses
  %exitcond.not.i40 = icmp eq i64 %indvars.iv.next.i39, %wide.trip.count.i35
  br i1 %exitcond.not.i40, label %Cudd_ApaIntDivision.exit41.loopexit, label %.lr.ph.i36, !llvm.loop !2

Cudd_ApaIntDivision.exit41.loopexit:              ; preds = %.lr.ph.i36
  %i.aj = uitofp i32 %i.ai to double
  br label %Cudd_ApaIntDivision.exit41

Cudd_ApaIntDivision.exit41:                       ; preds = %Cudd_ApaIntDivision.exit41.loopexit, %Cudd_ApaIntDivision.exit
  %.0.lcssa.i33 = phi double [ 0.000000e+00, %Cudd_ApaIntDivision.exit ], [ %i.aj, %Cudd_ApaIntDivision.exit41.loopexit ]
  br i1 %i.e, label %.lr.ph.preheader.i43, label %._crit_edge.i

.lr.ph.preheader.i43:                             ; preds = %Cudd_ApaIntDivision.exit41
  %wide.trip.count.i44 = zext nneg i32 %0 to i64
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %bb.b, %.lr.ph.preheader.i43
  %indvars.iv.i46 = phi i64 [ 0, %.lr.ph.preheader.i43 ], [ %indvars.iv.next.i47, %bb.b ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i46
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !14
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %bb.b, label %._crit_edge.loopexit.split.loop.exit.i

bb.b:                                             ; preds = %.lr.ph.i45
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i46, 1 ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %indvars.iv.next.i47, %wide.trip.count.i44
  br i1 %exitcond.not.i48, label %._crit_edge.i, label %.lr.ph.i45, !llvm.loop !3

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i45
  %i.am = trunc nuw nsw i64 %indvars.iv.i46 to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit.i, %Cudd_ApaIntDivision.exit41
  %.034.lcssa.i = phi i32 [ 0, %Cudd_ApaIntDivision.exit41 ], [ %i.am, %._crit_edge.loopexit.split.loop.exit.i ], [ %0, %bb.b ] ; 2 uses
  br i1 %i.w, label %.lr.ph47.preheader.i, label %._crit_edge48.i

.lr.ph47.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count63.i = zext nneg i32 %3 to i64
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.c, %.lr.ph47.preheader.i
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph47.preheader.i ], [ %indvars.iv.next61.i, %bb.c ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv60.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !14
  %.not41.i = icmp eq i32 %i.ao, 0
  br i1 %.not41.i, label %bb.c, label %._crit_edge48.loopexit.split.loop.exit.i

bb.c:                                             ; preds = %.lr.ph47.i
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next61.i, %wide.trip.count63.i
  br i1 %exitcond64.not.i, label %._crit_edge48.i, label %.lr.ph47.i, !llvm.loop !4

._crit_edge48.loopexit.split.loop.exit.i:         ; preds = %.lr.ph47.i
  %i.ap = trunc nuw nsw i64 %indvars.iv60.i to i32
  br label %._crit_edge48.i

._crit_edge48.i:                                  ; preds = %bb.c, %._crit_edge48.loopexit.split.loop.exit.i, %._crit_edge.i
  %.0.lcssa.i42 = phi i32 [ 0, %._crit_edge.i ], [ %i.ap, %._crit_edge48.loopexit.split.loop.exit.i ], [ %3, %bb.c ] ; 2 uses
  %i.aq = sub nuw nsw i32 %0, %.034.lcssa.i       ; 4 uses
  %i.ar = sub nuw nsw i32 %3, %.0.lcssa.i42       ; 2 uses
  %i.as = icmp sgt i32 %i.aq, %i.ar
  br i1 %i.as, label %Cudd_ApaCompare.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge48.i
  %i.at = icmp slt i32 %i.aq, %i.ar
  br i1 %i.at, label %Cudd_ApaCompare.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.au = icmp sgt i32 %i.aq, 0
  br i1 %i.au, label %.lr.ph53.preheader.i, label %Cudd_ApaCompare.exit

.lr.ph53.preheader.i:                             ; preds = %.preheader.i
  %i.av = zext i32 %.034.lcssa.i to i64
  %i.aw = zext i32 %.0.lcssa.i42 to i64
  %wide.trip.count68.i = zext nneg i32 %i.aq to i64
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.av
  %invariant.gep79.i = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.aw
  br label %.lr.ph53.i

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %indvars.iv.next66.i, %wide.trip.count68.i
  br i1 %exitcond69.not.i, label %Cudd_ApaCompare.exit.thread, label %.lr.ph53.i, !llvm.loop !5

.lr.ph53.i:                                       ; preds = %bb.e, %.lr.ph53.preheader.i
  %indvars.iv65.i = phi i64 [ 0, %.lr.ph53.preheader.i ], [ %indvars.iv.next66.i, %bb.e ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv65.i
  %i.ax = load i32, ptr %gep.i, align 4, !tbaa !14 ; 2 uses
  %gep80.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep79.i, i64 %indvars.iv65.i
  %i.ay = load i32, ptr %gep80.i, align 4, !tbaa !14 ; 2 uses
  %i.az = icmp ugt i32 %i.ax, %i.ay
  br i1 %i.az, label %Cudd_ApaCompare.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph53.i
  %i.ba = icmp ult i32 %i.ax, %i.ay
  br i1 %i.ba, label %Cudd_ApaCompare.exit.thread, label %bb.e

Cudd_ApaCompare.exit:                             ; preds = %._crit_edge48.i, %bb.d, %.preheader.i
  %.036.i = phi i32 [ -1, %bb.d ], [ 1, %._crit_edge48.i ], [ 0, %.preheader.i ] ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %Cudd_ApaCompare.exit.thread

Cudd_ApaCompare.exit.thread:                      ; preds = %bb.f, %.lr.ph53.i, %bb.e, %Cudd_ApaCompare.exit
  %.036.i51 = phi i32 [ %.036.i, %Cudd_ApaCompare.exit ], [ -1, %bb.f ], [ 1, %.lr.ph53.i ], [ 0, %bb.e ]
  tail call void @free(ptr noundef nonnull %i.c) #18
  br label %bb.g

bb.g:                                             ; preds = %Cudd_ApaCompare.exit, %Cudd_ApaCompare.exit.thread
  %.036.i52 = phi i32 [ %.036.i, %Cudd_ApaCompare.exit ], [ %.036.i51, %Cudd_ApaCompare.exit.thread ] ; 2 uses
  %.not32 = icmp eq ptr %i.u, null
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.u) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bb = icmp eq i32 %.036.i52, 0
  br i1 %i.bb, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bc = fdiv double %.0.lcssa.i, %i.d           ; 2 uses
  %i.bd = fdiv double %.0.lcssa.i33, %i.v         ; 2 uses
  %i.be = fcmp ogt double %i.bc, %i.bd
  br i1 %i.be, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = fcmp olt double %i.bc, %i.bd
  br i1 %i.bf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.l
  %.0 = phi i32 [ %.036.i52, %bb.l ], [ 1, %bb.j ], [ -1, %bb.k ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @Cudd_ApaPrintHex(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.c) #18
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.07 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.07
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Cudd_ApaPrintDecimal(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = sitofp i32 %1 to double
  %i.b = fmul nnan double %i.a, f0x40234413509F79FF
  %i.c = fptosi double %i.b to i32                ; 4 uses
  %i.d = sext i32 %1 to i64
  %i.e = shl nsw i64 %i.d, 2
  %i.f = tail call noalias noundef ptr @malloc(i64 noundef %i.e) #17 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.c, 1                          ; 3 uses
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #17 ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp sgt i32 %1, 0
  br i1 %i.l, label %Cudd_ApaCopy.exit, label %Cudd_ApaCopy.exit.thread

Cudd_ApaCopy.exit:                                ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %1 to i64
  %i.m = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 4 %2, i64 %i.m, i1 false), !tbaa !14
  %wide.trip.count.i45 = zext nneg i32 %1 to i64
  %i.n = zext nneg i32 %i.c to i64
  br label %.lr.ph.i44.us

Cudd_ApaCopy.exit.thread:                         ; preds = %bb.c
  %i.o = icmp sgt i32 %i.c, -1
  br i1 %i.o, label %._crit_edge.thread70, label %._crit_edge.thread

._crit_edge.thread70:                             ; preds = %Cudd_ApaCopy.exit.thread
  %i.p = zext i32 %i.h to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.p, i1 false), !tbaa !18
  br label %.lr.ph58.preheader

.lr.ph.i44.us:                                    ; preds = %Cudd_ApaCopy.exit, %._crit_edge.loopexit.i.us
  %indvars.iv = phi i64 [ %i.n, %Cudd_ApaCopy.exit ], [ %indvars.iv.next, %._crit_edge.loopexit.i.us ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i44.us
  %indvars.iv.i46.us = phi i64 [ 0, %.lr.ph.i44.us ], [ %indvars.iv.next.i47.us, %bb.d ] ; 2 uses
  %.014.i.us = phi i64 [ 0, %.lr.ph.i44.us ], [ %i.x, %bb.d ]
  %i.q = shl nuw nsw i64 %.014.i.us, 32
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i46.us ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14
  %i.t = zext i32 %i.s to i64
  %i.u = or disjoint i64 %i.q, %i.t               ; 2 uses
  %i.v = udiv i64 %i.u, 10
  %i.w = trunc nuw i64 %i.v to i32
  store i32 %i.w, ptr %i.r, align 4, !tbaa !14
  %i.x = urem i64 %i.u, 10                        ; 2 uses
  %indvars.iv.next.i47.us = add nuw nsw i64 %indvars.iv.i46.us, 1 ; 2 uses
  %exitcond.not.i48.us = icmp eq i64 %indvars.iv.next.i47.us, %wide.trip.count.i45
  br i1 %exitcond.not.i48.us, label %._crit_edge.loopexit.i.us, label %bb.d, !llvm.loop !1

._crit_edge.loopexit.i.us:                        ; preds = %bb.d
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  store i8 %i.y, ptr %i.z, align 1, !tbaa !18
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aa = icmp sgt i64 %indvars.iv, 0
  br i1 %i.aa, label %.lr.ph.i44.us, label %.lr.ph58.preheader, !llvm.loop !40

._crit_edge.thread:                               ; preds = %Cudd_ApaCopy.exit.thread
  tail call void @free(ptr noundef nonnull %i.f) #18
  br label %.sink.split

.lr.ph58.preheader:                               ; preds = %._crit_edge.loopexit.i.us, %._crit_edge.thread70
  tail call void @free(ptr noundef nonnull %i.f) #18
  %i.ab = zext nneg i32 %i.c to i64
  %wide.trip.count = zext i32 %i.h to i64
  br label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %bb.f
  %indvars.iv63 = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next64, %bb.f ] ; 3 uses
  %.056 = phi i1 [ false, %.lr.ph58.preheader ], [ %.not4351, %bb.f ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv63
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !18 ; 2 uses
  br i1 %.056, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph58
  %i.ac = icmp ne i8 %.pre, 0                     ; 2 uses
  %i.ad = icmp eq i64 %indvars.iv63, %i.ab
end_hunk_0
