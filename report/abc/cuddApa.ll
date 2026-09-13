Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddApa?download=true
inline.NumInlined: 26
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Cudd_ApaCompareRatios:bb.a
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
  %i.aq = sub nsw i32 %0, %.034.lcssa.i           ; 4 uses
  %i.ar = sub nsw i32 %3, %.0.lcssa.i42           ; 2 uses
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
  %i.c = fptosi double %i.b to i32                ; 5 uses
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
  %3 = icmp sgt i32 %i.c, -1
  br i1 %3, label %.lr.ph.i44.us.preheader, label %._crit_edge.thread

Cudd_ApaCopy.exit.thread:                         ; preds = %bb.c
  %i.n = icmp sgt i32 %i.c, -1
  br i1 %i.n, label %._crit_edge.thread70, label %._crit_edge.thread

._crit_edge.thread70:                             ; preds = %Cudd_ApaCopy.exit.thread
  %i.o = zext i32 %i.h to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.o, i1 false), !tbaa !18
  br label %.lr.ph58.preheader

.lr.ph.i44.us.preheader:                          ; preds = %Cudd_ApaCopy.exit
  %wide.trip.count.i45 = zext nneg i32 %1 to i64
  %4 = zext nneg i32 %i.c to i64
  br label %.lr.ph.i44.us

.lr.ph.i44.us:                                    ; preds = %.lr.ph.i44.us.preheader, %._crit_edge.loopexit.i.us
  %indvars.iv = phi i64 [ %4, %.lr.ph.i44.us.preheader ], [ %indvars.iv.next, %._crit_edge.loopexit.i.us ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i44.us
  %indvars.iv.i46.us = phi i64 [ 0, %.lr.ph.i44.us ], [ %indvars.iv.next.i47.us, %bb.d ] ; 2 uses
  %.014.i.us = phi i64 [ 0, %.lr.ph.i44.us ], [ %i.w, %bb.d ]
  %i.p = shl nuw nsw i64 %.014.i.us, 32
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i46.us ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14
  %i.s = zext i32 %i.r to i64
  %i.t = or disjoint i64 %i.p, %i.s               ; 2 uses
  %i.u = udiv i64 %i.t, 10
  %i.v = trunc nuw i64 %i.u to i32
  store i32 %i.v, ptr %i.q, align 4, !tbaa !14
  %i.w = urem i64 %i.t, 10                        ; 2 uses
  %indvars.iv.next.i47.us = add nuw nsw i64 %indvars.iv.i46.us, 1 ; 2 uses
  %exitcond.not.i48.us = icmp eq i64 %indvars.iv.next.i47.us, %wide.trip.count.i45
  br i1 %exitcond.not.i48.us, label %._crit_edge.loopexit.i.us, label %bb.d, !llvm.loop !1

._crit_edge.loopexit.i.us:                        ; preds = %bb.d
  %i.x = trunc nuw nsw i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  store i8 %i.x, ptr %i.y, align 1, !tbaa !18
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.z = icmp sgt i64 %indvars.iv, 0
  br i1 %i.z, label %.lr.ph.i44.us, label %.lr.ph58.preheader, !llvm.loop !40

._crit_edge.thread:                               ; preds = %Cudd_ApaCopy.exit.thread, %Cudd_ApaCopy.exit
  tail call void @free(ptr noundef nonnull %i.f) #18
  br label %.sink.split

.lr.ph58.preheader:                               ; preds = %._crit_edge.loopexit.i.us, %._crit_edge.thread70
  tail call void @free(ptr noundef nonnull %i.f) #18
  %i.aa = zext nneg i32 %i.c to i64
  %wide.trip.count = zext i32 %i.h to i64
  br label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %bb.f
  %indvars.iv63 = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next64, %bb.f ] ; 3 uses
  %.056 = phi i1 [ false, %.lr.ph58.preheader ], [ %.not4351, %bb.f ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv63
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !18 ; 2 uses
  br i1 %.056, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph58
  %i.ab = icmp ne i8 %.pre, 0                     ; 2 uses
  %i.ac = icmp eq i64 %indvars.iv63, %i.aa
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %.thread, label %bb.f

.thread:                                          ; preds = %.lr.ph58, %bb.e
  %.not4352 = phi i1 [ %i.ab, %bb.e ], [ true, %.lr.ph58 ]
  %i.ad = zext i8 %.pre to i32
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %i.ad) #18
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %.not4351 = phi i1 [ false, %bb.e ], [ %.not4352, %.thread ]
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph58, !llvm.loop !41

.sink.split:                                      ; preds = %bb.f, %.thread, %._crit_edge.thread, %bb.b
  %.sink = phi ptr [ %i.j, %._crit_edge.thread ], [ %i.f, %bb.b ], [ %i.j, %.thread ], [ %i.j, %bb.f ]
  %.039.ph = phi i32 [ 1, %._crit_edge.thread ], [ 0, %bb.b ], [ 1, %bb.f ], [ 0, %.thread ]
  tail call void @free(ptr noundef nonnull %.sink) #18
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.039 = phi i32 [ 0, %bb.a ], [ %.039.ph, %.sink.split ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Cudd_ApaPrintExponential(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #12 {
bb.a:
  %i.a = sitofp i32 %1 to double
  %i.b = fmul nnan double %i.a, f0x40234413509F79FF
  %i.c = fptosi double %i.b to i32                ; 9 uses
  %i.d = add i32 %i.c, 1                          ; 3 uses
  %i.e = sext i32 %1 to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias noundef ptr @malloc(i64 noundef %i.f) #17 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %i.d to i64
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #17 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.g) #18
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.l = icmp sgt i32 %1, 0
  br i1 %i.l, label %Cudd_ApaCopy.exit, label %Cudd_ApaCopy.exit.thread

Cudd_ApaCopy.exit:                                ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %1 to i64
  %i.m = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.g, ptr align 4 %2, i64 %i.m, i1 false), !tbaa !14
  %4 = icmp sgt i32 %i.c, -1
  br i1 %4, label %.lr.ph.i54.us.preheader, label %._crit_edge

Cudd_ApaCopy.exit.thread:                         ; preds = %bb.d
  %i.n = icmp sgt i32 %i.c, -1
  br i1 %i.n, label %Cudd_ApaShortDivision.exit.thread.preheader, label %._crit_edge

Cudd_ApaShortDivision.exit.thread.preheader:      ; preds = %Cudd_ApaCopy.exit.thread
  %i.o = zext i32 %i.d to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.o, i1 false), !tbaa !18
  br label %._crit_edge

.lr.ph.i54.us.preheader:                          ; preds = %Cudd_ApaCopy.exit
  %wide.trip.count.i55 = zext nneg i32 %1 to i64
  %5 = zext nneg i32 %i.c to i64
  br label %.lr.ph.i54.us

.lr.ph.i54.us:                                    ; preds = %.lr.ph.i54.us.preheader, %Cudd_ApaShortDivision.exit.us
  %indvars.iv = phi i64 [ %5, %.lr.ph.i54.us.preheader ], [ %indvars.iv.next, %Cudd_ApaShortDivision.exit.us ] ; 4 uses
  %.065.us = phi i32 [ %i.c, %.lr.ph.i54.us.preheader ], [ %spec.select, %Cudd_ApaShortDivision.exit.us ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i54.us
  %indvars.iv.i56.us = phi i64 [ 0, %.lr.ph.i54.us ], [ %indvars.iv.next.i57.us, %bb.e ] ; 2 uses
  %.014.i.us = phi i64 [ 0, %.lr.ph.i54.us ], [ %i.w, %bb.e ]
  %i.p = shl nuw nsw i64 %.014.i.us, 32
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i56.us ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14
  %i.s = zext i32 %i.r to i64
  %i.t = or disjoint i64 %i.p, %i.s
  %.fr62.us = freeze i64 %i.t                     ; 2 uses
  %i.u = udiv i64 %.fr62.us, 10
  %i.v = trunc i64 %i.u to i32
  store i32 %i.v, ptr %i.q, align 4, !tbaa !14
  %i.w = urem i64 %.fr62.us, 10                   ; 3 uses
  %indvars.iv.next.i57.us = add nuw nsw i64 %indvars.iv.i56.us, 1 ; 2 uses
  %exitcond.not.i58.us = icmp eq i64 %indvars.iv.next.i57.us, %wide.trip.count.i55
  br i1 %exitcond.not.i58.us, label %Cudd_ApaShortDivision.exit.us, label %bb.e, !llvm.loop !1

Cudd_ApaShortDivision.exit.us:                    ; preds = %bb.e
  %i.x = trunc nuw nsw i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  store i8 %i.x, ptr %i.y, align 1, !tbaa !18
  %.not.us = icmp eq i64 %i.w, 0
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %.not.us, i32 %.065.us, i32 %i.z ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aa = icmp sgt i64 %indvars.iv, 0
  br i1 %i.aa, label %.lr.ph.i54.us, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %Cudd_ApaShortDivision.exit.us, %Cudd_ApaCopy.exit.thread, %Cudd_ApaShortDivision.exit.thread.preheader, %Cudd_ApaCopy.exit
  %.0.lcssa = phi i32 [ %i.c, %Cudd_ApaCopy.exit ], [ %i.c, %Cudd_ApaCopy.exit.thread ], [ %i.c, %Cudd_ApaShortDivision.exit.thread.preheader ], [ %spec.select, %Cudd_ApaShortDivision.exit.us ] ; 5 uses
  tail call void @free(ptr noundef nonnull %i.g) #18
  %i.ab = add nsw i32 %.0.lcssa, %3
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.ab) ; 2 uses
  %i.ad = icmp slt i32 %.0.lcssa, %i.ac
  br i1 %i.ad, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %._crit_edge
  %i.ae = add nsw i32 %.0.lcssa, 1
  %i.af = sext i32 %.0.lcssa to i64
  %sext = sext i32 %i.ae to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next74 to i32
  %exitcond.not = icmp eq i32 %i.ac, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge69, label %bb.g, !llvm.loop !43

bb.g:                                             ; preds = %.lr.ph68, %bb.f
  %indvars.iv73 = phi i64 [ %i.af, %.lr.ph68 ], [ %indvars.iv.next74, %bb.f ] ; 3 uses
  %i.ag = icmp eq i64 %indvars.iv73, %sext
  %i.ah = select i1 %i.ag, ptr @.str.3, ptr @.str.4
  %i.ai = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv73
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !18
  %i.ak = zext i8 %i.aj to i32
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.ah, i32 noundef %i.ak) #18
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.j) #18
  br label %bb.i

._crit_edge69:                                    ; preds = %bb.f, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.j) #18
  %i.an = sub i32 %i.c, %.0.lcssa
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %i.an) #18
  %i.ap = icmp ne i32 %i.ao, -1
  %spec.select53 = zext i1 %i.ap to i32
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge69, %bb.a, %bb.h, %bb.c
  %.050 = phi i32 [ %spec.select53, %._crit_edge69 ], [ 0, %bb.c ], [ 0, %bb.h ], [ 0, %bb.a ]
  ret i32 %.050
}

; Function Attrs: nounwind uwtable
define noundef ptr @Cudd_ApaCountMinterm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 4)) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  store ptr %i.b, ptr @background, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = xor i64 %i.e, 1
  %i.g = inttoptr i64 %i.f to ptr
  store ptr %i.g, ptr @zero, align 8, !tbaa !24
  %i.h = add nsw i32 %2, 1                        ; 2 uses
  %i.i = sdiv i32 %i.h, 32                        ; 2 uses
  %i.j = shl nsw i32 %i.i, 5
  %.not.i = icmp ne i32 %i.j, %i.h
  %i.k = zext i1 %.not.i to i32
  %spec.select.i = add nsw i32 %i.i, %i.k         ; 2 uses
  store i32 %spec.select.i, ptr %3, align 4, !tbaa !14
  %i.l = sext i32 %spec.select.i to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef %i.m) #17 ; 12 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %3, align 4, !tbaa !14     ; 4 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.r = zext nneg i32 %i.p to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.n, i8 0, i64 %i.s, i1 false), !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.b
  %.neg.i = sdiv i32 %2, -32
  %i.t = add nsw i32 %.neg.i, -1
  %i.u = add i32 %i.t, %i.p                       ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %Cudd_ApaPowerOfTwo.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.w = and i32 %2, 31
  %i.x = shl nuw i32 1, %i.w
  %i.y = zext nneg i32 %i.u to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.y
  store i32 %i.x, ptr %i.z, align 4, !tbaa !14
  br label %Cudd_ApaPowerOfTwo.exit

Cudd_ApaPowerOfTwo.exit:                          ; preds = %._crit_edge.i, %bb.c
  %i.aa = sext i32 %i.p to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call noalias noundef ptr @malloc(i64 noundef %i.ab) #17 ; 8 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %Cudd_ApaPowerOfTwo.exit
  tail call void @free(ptr noundef nonnull %i.n) #18
  br label %bb.p

bb.e:                                             ; preds = %Cudd_ApaPowerOfTwo.exit
  %i.ae = load i32, ptr %3, align 4, !tbaa !14    ; 2 uses
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  %i.ag = icmp sgt i32 %i.ae, 1
  br i1 %i.ag, label %.lr.ph.preheader.i70, label %Cudd_ApaSetToLiteral.exit

.lr.ph.preheader.i70:                             ; preds = %bb.e
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ai, i1 false), !tbaa !14
  br label %Cudd_ApaSetToLiteral.exit

Cudd_ApaSetToLiteral.exit:                        ; preds = %bb.e, %.lr.ph.preheader.i70
  %i.aj = sext i32 %i.af to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.aj
  store i32 0, ptr %i.ak, align 4, !tbaa !14
  %i.al = tail call ptr @st__init_table(ptr noundef nonnull @st__ptrcmp, ptr noundef nonnull @st__ptrhash) #18 ; 8 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %Cudd_ApaSetToLiteral.exit
  tail call void @free(ptr noundef nonnull %i.n) #18
  tail call void @free(ptr noundef nonnull %i.ac) #18
  br label %bb.p

bb.g:                                             ; preds = %Cudd_ApaSetToLiteral.exit
  %i.an = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ao = and i64 %i.an, -2
  %i.ap = inttoptr i64 %i.ao to ptr               ; 3 uses
  %i.aq = load i32, ptr %3, align 4, !tbaa !14
  %i.ar = tail call fastcc ptr @cuddApaCountMintermAux(ptr noundef %i.ap, i32 noundef %i.aq, ptr noundef %i.n, ptr noundef %i.ac, ptr noundef %i.al) ; 7 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.n) #18
  tail call void @free(ptr noundef nonnull %i.ac) #18
  %i.at = tail call i32 @st__foreach(ptr noundef nonnull %i.al, ptr noundef nonnull @cuddApaStCountfree, ptr noundef null) #18 ; 0 uses
  tail call void @st__free_table(ptr noundef nonnull %i.al) #18
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.au = load i32, ptr %3, align 4, !tbaa !14
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = tail call noalias noundef ptr @malloc(i64 noundef %i.aw) #17 ; 7 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.n) #18
  tail call void @free(ptr noundef nonnull %i.ac) #18
  %i.az = tail call i32 @st__foreach(ptr noundef nonnull %i.al, ptr noundef nonnull @cuddApaStCountfree, ptr noundef null) #18 ; 0 uses
  tail call void @st__free_table(ptr noundef nonnull %i.al) #18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !25
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.ar) #18
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.bd = and i64 %i.an, 1
  %.not = icmp eq i64 %i.bd, 0
  %i.be = load i32, ptr %3, align 4, !tbaa !14    ; 5 uses
  %i.bf = icmp sgt i32 %i.be, 0                   ; 2 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.bf, label %.lr.ph.preheader.i72, label %Cudd_ApaSubtract.exit

.lr.ph.preheader.i72:                             ; preds = %bb.m
  %i.bg = zext nneg i32 %i.be to i64              ; 4 uses
  %xtraiter = and i64 %i.bg, 1
  %i.bh = icmp eq i32 %i.be, 1
  br i1 %i.bh, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i72.new

.lr.ph.preheader.i72.new:                         ; preds = %.lr.ph.preheader.i72
  %unroll_iter = and i64 %i.bg, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i72.new
  %indvars.iv.i = phi i64 [ %i.bg, %.lr.ph.preheader.i72.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 2 uses
  %.013.i = phi i64 [ 4294967296, %.lr.ph.preheader.i72.new ], [ %i.cd, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i72.new ], [ %niter.next.1, %.lr.ph.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.bi = lshr i64 %.013.i, 32
  %i.bj = add nuw nsw i64 %i.bi, 4294967295
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !14
end_hunk_0
