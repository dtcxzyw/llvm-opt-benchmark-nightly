Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddUtil?download=true
inline.NumInlined: 16
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@Cudd_bddPrintCover:bb.a
}

declare i32 @Cudd_ReadSize(ptr noundef) local_unnamed_addr #5

declare ptr @Cudd_ReadLogicZero(ptr noundef) local_unnamed_addr #5

declare ptr @Cudd_LargestCube(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @Cudd_RecursiveDeref(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Cudd_bddMakePrime(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Cudd_bddAnd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Cudd_BddToCubeArray(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.c = tail call i32 @Cudd_ReadSize(ptr noundef %0) #27 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = xor i64 %i.f, 1
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = icmp sgt i32 %i.c, 0
  br i1 %i.i, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = zext nneg i32 %i.c to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.j, 2147483640               ; 2 uses
  %i.k = and i64 %i.j, 7
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.l ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.n = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> splat (i32 2), ptr %i.m, align 4, !tbaa !30
  store <4 x i32> splat (i32 2), ptr %i.n, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.j, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.a
  %i.p = ptrtoint ptr %1 to i64
  %i.q = and i64 %i.p, -2
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i32, ptr %i.r, align 8, !tbaa !37   ; 2 uses
  %.not28 = icmp eq i32 %i.s, 2147483647
  br i1 %.not28, label %._crit_edge, label %.lr.ph30

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader37 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store i32 2, ptr %i.t, align 4, !tbaa !30
  %i.u = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.u, label %.lr.ph, label %.preheader, !llvm.loop !48

.lr.ph30:                                         ; preds = %.preheader, %bb.e
  %i.v = phi i32 [ %i.ah, %bb.e ], [ %i.s, %.preheader ] ; 2 uses
  %.02129 = phi ptr [ %.1, %bb.e ], [ %1, %.preheader ]
  call void @cuddGetBranches(ptr noundef %.02129, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #27
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.h
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph30
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %2, i64 %i.y
  store i32 0, ptr %i.z, align 4, !tbaa !30
  %.1.pre = load ptr, ptr %i.b, align 8, !tbaa !27
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph30
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.ab = icmp eq ptr %i.aa, %i.h
  br i1 %i.ab, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ac = sext i32 %i.v to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ac
  store i32 1, ptr %i.ad, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.1 = phi ptr [ %.1.pre, %bb.b ], [ %i.w, %bb.d ] ; 3 uses
  %i.ae = ptrtoint ptr %.1 to i64
  %i.af = and i64 %i.ae, -2
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %.not = icmp eq i32 %i.ah, 2147483647
  br i1 %.not, label %._crit_edge, label %.lr.ph30, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.021.lcssa = phi ptr [ %1, %.preheader ], [ %.1, %bb.e ]
  %i.ai = icmp ne ptr %.021.lcssa, %i.h
  %. = zext i1 %i.ai to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %._crit_edge
  %.224 = phi i32 [ %., %._crit_edge ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.224
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Cudd_PrintDebug(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.6, i64 17, i64 1, ptr %i.c) ; 0 uses
  br label %.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = icmp eq ptr %1, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = xor i64 %i.j, 1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = icmp eq ptr %1, %i.l
  %i.n = icmp sgt i32 %3, 0                       ; 2 uses
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %.old1 = icmp sgt i32 %3, 0
  br i1 %.old1, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = tail call i64 @fwrite(ptr nonnull @.str.7, i64 17, i64 1, ptr %i.p) ; 0 uses
  br label %.thread.sink.split

bb.g:                                             ; preds = %bb.d
  br i1 %i.n, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.r = ptrtoint ptr %1 to i64
  %i.s = and i64 %i.r, -2
  %i.t = inttoptr i64 %i.s to ptr                 ; 4 uses
  %i.u = tail call fastcc i32 @ddDagInt(ptr noundef %i.t) ; 2 uses
  tail call fastcc void @ddClearFlag(ptr noundef %i.t)
  %i.v = icmp ne i32 %i.u, -1
  %i.w = tail call fastcc i32 @ddLeavesInt(ptr noundef %i.t) ; 2 uses
  tail call fastcc void @ddClearFlag(ptr noundef %i.t)
  %i.x = icmp ne i32 %i.w, -1
  %i.y = tail call double @Cudd_CountMinterm(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) ; 2 uses
  %i.z = fcmp une double %i.y, -1.000000e+00
  %i.aa = select i1 %i.z, i1 %i.x, i1 false
  %narrow51 = select i1 %i.aa, i1 %i.v, i1 false  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.8, i32 noundef %i.u, i32 noundef %i.w, double noundef %i.y) #27 ; 0 uses
  %i.ae = icmp samesign ugt i32 %3, 2
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = tail call ptr @st__init_table(ptr noundef nonnull @st__ptrcmp, ptr noundef nonnull @st__ptrhash) #27 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %cuddP.exit.thread, label %cuddP.exit

cuddP.exit:                                       ; preds = %bb.i
  %i.ah = tail call fastcc i32 @dp2(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.af)
  tail call void @st__free_table(ptr noundef nonnull %i.af) #27
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !38
  %i.aj = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.ai) ; 0 uses
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %cuddP.exit.thread, label %bb.j

cuddP.exit.thread:                                ; preds = %bb.i, %cuddP.exit
  br label %bb.j

bb.j:                                             ; preds = %cuddP.exit, %cuddP.exit.thread, %bb.h
  %.3.shrunk = phi i1 [ %narrow51, %cuddP.exit ], [ false, %cuddP.exit.thread ], [ %narrow51, %bb.h ]
  %.3 = zext i1 %.3.shrunk to i32                 ; 2 uses
  %i.ak = icmp eq i32 %3, 2
  %i.al = icmp samesign ugt i32 %3, 3
  %or.cond4 = or i1 %i.ak, %i.al
  br i1 %or.cond4, label %bb.k, label %.thread.sink.split

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !8
  store ptr %i.an, ptr @background, align 8, !tbaa !27
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = xor i64 %i.ap, 1
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr @zero, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.at = load i32, ptr %i.as, align 8, !tbaa !29 ; 4 uses
  %i.au = sext i32 %i.at to i64
  %i.av = shl nsw i64 %i.au, 2
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.av) #26 ; 5 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  %i.ay = icmp sgt i32 %i.at, 0
  br i1 %i.ay, label %.lr.ph.preheader.i, label %Cudd_PrintMinterm.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.at to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.at, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x i32> splat (i32 2), ptr %i.az, align 4, !tbaa !30
  store <4 x i32> splat (i32 2), ptr %i.ba, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Cudd_PrintMinterm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  store i32 2, ptr %i.bc, align 4, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Cudd_PrintMinterm.exit, label %.lr.ph.i, !llvm.loop !51

Cudd_PrintMinterm.exit:                           ; preds = %.lr.ph.i, %middle.block, %.preheader.i
  tail call fastcc void @ddPrintMintermAux(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.aw)
  tail call void @free(ptr noundef nonnull %i.aw) #27
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.bd, align 8, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %Cudd_PrintMinterm.exit, %bb.l
  %i.be = phi i32 [ 0, %bb.l ], [ %.3, %Cudd_PrintMinterm.exit ]
  %i.bf = load ptr, ptr %i.ab, align 8, !tbaa !38
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bf) ; 0 uses
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.m, %bb.j, %bb.b, %bb.f
  %.sink.in = phi ptr [ %i.b, %bb.b ], [ %i.o, %bb.f ], [ %i.ab, %bb.j ], [ %i.ab, %bb.m ]
  %.040.ph = phi i32 [ 0, %bb.b ], [ 1, %bb.f ], [ %.3, %bb.j ], [ %i.be, %bb.m ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !38
  %i.bg = tail call i32 @fflush(ptr noundef %.sink) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e, %bb.g
  %.040 = phi i32 [ 1, %bb.e ], [ 1, %bb.g ], [ %.040.ph, %.thread.sink.split ]
  ret i32 %.040
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Cudd_DagSize(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, -2
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = tail call fastcc i32 @ddDagInt(ptr noundef %i.c)
  tail call fastcc void @ddClearFlag(ptr noundef %i.c)
  ret i32 %i.d
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Cudd_CountLeaves(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, -2
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = tail call fastcc i32 @ddLeavesInt(ptr noundef %i.c)
  tail call fastcc void @ddClearFlag(ptr noundef %i.c)
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define double @Cudd_CountMinterm(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  store ptr %i.b, ptr @background, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = xor i64 %i.e, 1
  %i.g = inttoptr i64 %i.f to ptr
  store ptr %i.g, ptr @zero, align 8, !tbaa !27
  %ldexp = tail call double @ldexp(double 1.000000e+00, i32 %2)
  %i.h = tail call ptr @cuddHashTableInit(ptr noundef %0, i32 noundef 1, i32 noundef 2) #27 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call double @Cudd_ReadEpsilon(ptr noundef nonnull %0) #27
  tail call void @Cudd_SetEpsilon(ptr noundef nonnull %0, double noundef 0.000000e+00) #27
  %i.k = tail call fastcc double @ddCountMintermAux(ptr noundef %1, double noundef %ldexp, ptr noundef %i.h)
  tail call void @cuddHashTableQuit(ptr noundef nonnull %i.h) #27
  tail call void @Cudd_SetEpsilon(ptr noundef nonnull %0, double noundef %i.j) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.k, %bb.b ], [ -1.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cuddP(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @st__init_table(ptr noundef nonnull @st__ptrcmp, ptr noundef nonnull @st__ptrhash) #27 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @dp2(ptr noundef %0, ptr noundef %1, ptr noundef %i.a)
  tail call void @st__free_table(ptr noundef nonnull %i.a) #27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.f = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.e) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @ddDagInt(ptr nofree noundef captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not8 = icmp eq i64 %i.d, 0
  br i1 %.not8, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.e = phi i64 [ %i.w, %tailrecurse ], [ %i.c, %bb.a ]
  %i.f = phi ptr [ %i.u, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr10 = phi ptr [ %i.r, %tailrecurse ], [ %0, %bb.a ] ; 3 uses
  %accumulator.tr9 = phi i32 [ %i.t, %tailrecurse ], [ 0, %bb.a ] ; 2 uses
  %i.g = or disjoint i64 %i.e, 1
  %i.h = inttoptr i64 %i.g to ptr
  store ptr %i.h, ptr %i.f, align 8, !tbaa !52
  %i.i = load i32, ptr %.tr10, align 8, !tbaa !37
  %i.j = icmp eq i32 %i.i, 2147483647
  br i1 %i.j, label %._crit_edge.loopexit, label %tailrecurse

tailrecurse:                                      ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.tr10, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.m = tail call fastcc i32 @ddDagInt(ptr noundef %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %.tr10, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, -2
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = add i32 %accumulator.tr9, 1
  %i.t = add i32 %i.s, %i.m                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52
end_hunk_0
