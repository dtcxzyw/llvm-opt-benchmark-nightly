Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilBSet?download=true
inline.NumInlined: 288
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@Abc_BSEvalCreateCofactorSets:bb.a
vector.ph39:                                      ; preds = %.preheader27.us.us.i
  %broadcast.splatinsert41 = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat42 = shufflevector <2 x i32> %broadcast.splatinsert41, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph39
  %index44 = phi i64 [ 0, %vector.ph39 ], [ %index.next45, %vector.body43 ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph39 ], [ %vec.ind.next, %vector.body43 ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.af = and <2 x i32> %broadcast.splat42, %vec.ind
  %i.ag = and <2 x i32> %broadcast.splat42, %step.add
  %i.ah = icmp ne <2 x i32> %i.af, zeroinitializer
  %i.ai = icmp ne <2 x i32> %i.ag, zeroinitializer
  %i.aj = sext <2 x i1> %i.ah to <2 x i64>
  %i.ak = sext <2 x i1> %i.ai to <2 x i64>
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index44 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> %i.aj, ptr %i.al, align 8, !tbaa !28
  store <2 x i64> %i.ak, ptr %i.am, align 8, !tbaa !28
  %index.next45 = add nuw i64 %index44, 4         ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.an = icmp eq i64 %index.next45, %n.vec40
  br i1 %i.an, label %middle.block46, label %vector.body43, !llvm.loop !169

middle.block46:                                   ; preds = %vector.body43
  br i1 %cmp.n47, label %..loopexit28_crit_edge.us.us.i, label %scalar.ph37.preheader

scalar.ph37.preheader:                            ; preds = %.preheader27.us.us.i, %middle.block46
  %indvars.iv61.i.ph = phi i64 [ 0, %.preheader27.us.us.i ], [ %n.vec40, %middle.block46 ]
  br label %scalar.ph37

scalar.ph37:                                      ; preds = %scalar.ph37.preheader, %scalar.ph37
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %scalar.ph37 ], [ %indvars.iv61.i.ph, %scalar.ph37.preheader ] ; 3 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv61.i to i32
  %i.ap = and i32 %i.ae, %i.ao
  %.not.us.us.i = icmp ne i32 %i.ap, 0
  %spec.select.i = sext i1 %.not.us.us.i to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv61.i
  store i64 %spec.select.i, ptr %i.aq, align 8, !tbaa !28
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count64.i
  br i1 %exitcond65.not.i, label %..loopexit28_crit_edge.us.us.i, label %scalar.ph37, !llvm.loop !170

.preheader.us.us.i:                               ; preds = %.lr.ph34.split.us.split.us.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv71.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !28 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.at, align 8, !tbaa !28
  store <2 x i64> %broadcast.splat, ptr %i.au, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit28_crit_edge.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.i, %middle.block
  %indvars.iv66.i.ph = phi i64 [ 0, %.preheader.us.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %scalar.ph ], [ %indvars.iv66.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv66.i
  store i64 %i.as, ptr %i.aw, align 8, !tbaa !28
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count64.i
  br i1 %exitcond70.not.i, label %..loopexit28_crit_edge.us.us.i, label %scalar.ph, !llvm.loop !172

..loopexit28_crit_edge.us.us.i:                   ; preds = %scalar.ph37, %scalar.ph, %middle.block46, %middle.block
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count74.i
  br i1 %exitcond75.not.i, label %Vec_WrdStartTruthTables6.exit, label %.lr.ph34.split.us.split.us.i, !llvm.loop !173

Vec_WrdStartTruthTables6.exit:                    ; preds = %..loopexit28_crit_edge.us.us.i, %Vec_WrdStart.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ax = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  store i32 0, ptr %i.ay, align 4, !tbaa !44
  store i32 1000, ptr %i.ax, align 8, !tbaa !45
  %i.az = tail call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !43
  %i.bb = add nsw i32 %0, 1                       ; 3 uses
  %i.bc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 6 uses
  %or.cond.i.i = icmp ult i32 %0, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %i.bb ; 4 uses
  store i32 %spec.store.select.i.i, ptr %i.bc, align 8, !tbaa !61
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WecStart.exit, label %bb.c

bb.c:                                             ; preds = %Vec_WrdStartTruthTables6.exit
  %i.bd = sext i32 %spec.store.select.i.i to i64
  %i.be = tail call noalias ptr @calloc(i64 noundef %i.bd, i64 noundef 16) #31
  br label %Vec_WecStart.exit

Vec_WecStart.exit:                                ; preds = %Vec_WrdStartTruthTables6.exit, %bb.c
  %i.bf = phi ptr [ %i.be, %bb.c ], [ null, %Vec_WrdStartTruthTables6.exit ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !62
  store i32 %i.bb, ptr %i.bg, align 4, !tbaa !67
  %.not = icmp eq i32 %0, 31
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %Vec_WecStart.exit
  %i.bi = shl nuw nsw i32 1, %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Vec_WecPushTwo.exit
  %.val.i23 = phi ptr [ %.val.i, %Vec_WecPushTwo.exit ], [ %i.bf, %.lr.ph.preheader ] ; 4 uses
  %i.bj = phi i32 [ %i.cb, %Vec_WecPushTwo.exit ], [ %spec.store.select.i.i, %.lr.ph.preheader ] ; 4 uses
  %i.bk = phi i32 [ %i.cc, %Vec_WecPushTwo.exit ], [ %i.bb, %.lr.ph.preheader ] ; 3 uses
  %.021 = phi i32 [ %i.cf, %Vec_WecPushTwo.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.bl = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %.021) ; 3 uses
  %.val = load i32, ptr %i.ay, align 4, !tbaa !44
  %.not.i = icmp sgt i32 %i.bk, %i.bl
  br i1 %.not.i, label %Vec_WecPushTwo.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.bm = add nuw nsw i32 %i.bl, 1                ; 3 uses
  %i.bn = shl nsw i32 %i.bk, 1
  %i.bo = tail call noundef i32 @llvm.smax.i32(i32 %i.bn, i32 %i.bm) ; 5 uses
  %.not.i.i18 = icmp slt i32 %i.bj, %i.bo
  br i1 %.not.i.i18, label %bb.e, label %Vec_WecGrow.exit.i

bb.e:                                             ; preds = %bb.d
  %.not13.i.i = icmp eq ptr %.val.i23, null
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 4                ; 2 uses
  br i1 %.not13.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = tail call ptr @realloc(ptr noundef nonnull %.val.i23, i64 noundef %i.bq) #29
  %.pre.i.i = load i32, ptr %i.bc, align 8, !tbaa !61
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.bq) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bt = phi i32 [ %.pre.i.i, %bb.f ], [ %i.bj, %bb.g ] ; 2 uses
  %i.bu = phi ptr [ %i.br, %bb.f ], [ %i.bs, %bb.g ] ; 3 uses
  store ptr %i.bu, ptr %i.bh, align 8, !tbaa !62
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = sub nsw i32 %i.bo, %i.bt
  %i.by = sext i32 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bw, i8 0, i64 %i.bz, i1 false)
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !61
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.h, %bb.d
  %.val.i25 = phi ptr [ %i.bu, %bb.h ], [ %.val.i23, %bb.d ]
  %i.ca = phi i32 [ %i.bo, %bb.h ], [ %i.bj, %bb.d ]
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !67
  br label %Vec_WecPushTwo.exit

Vec_WecPushTwo.exit:                              ; preds = %.lr.ph, %Vec_WecGrow.exit.i
  %.val.i = phi ptr [ %.val.i23, %.lr.ph ], [ %.val.i25, %Vec_WecGrow.exit.i ] ; 2 uses
  %i.cb = phi i32 [ %i.bj, %.lr.ph ], [ %i.ca, %Vec_WecGrow.exit.i ]
  %i.cc = phi i32 [ %i.bk, %.lr.ph ], [ %i.bm, %Vec_WecGrow.exit.i ]
  %i.cd = zext nneg i32 %i.bl to i64
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.cd
  tail call fastcc void @Vec_IntPushTwo(ptr noundef %i.ce, i32 noundef %.021, i32 noundef %.val)
  tail call void @Abc_BSEvalCreateCofs(i32 noundef %.021, i32 noundef %0, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.m)
  %i.cf = add nuw nsw i32 %.021, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cf, %i.bi
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !174

._crit_edge:                                      ; preds = %Vec_WecPushTwo.exit, %Vec_WecStart.exit
  %.not.i19 = icmp eq ptr %i.r, null
  br i1 %.not.i19, label %Vec_WrdFree.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.r) #28
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %._crit_edge, %bb.i
  tail call void @free(ptr noundef nonnull %i.m) #28
  store ptr %i.bc, ptr %1, align 8, !tbaa !59
  ret ptr %i.ax
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #15

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 1, 101) i32 @Abc_SharedEvalBest(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 noundef %6, i32 %7, ptr nofree noundef writeonly captures(none) %8, ptr nofree noundef writeonly captures(none) %9, ptr nofree noundef captures(address_is_null) %10) local_unnamed_addr #3 {
  %12 = sub nsw i32 %2, %4                        ; 3 uses
  %13 = icmp slt i32 %12, 7                       ; 2 uses
  %14 = add nsw i32 %12, -6                       ; 2 uses
  %15 = shl nuw i32 1, %14
  %16 = select i1 %13, i32 1, i32 %15             ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.a, label %17

17:                                               ; preds = %11
  %18 = sub nsw i32 32, %3
  %19 = lshr i32 -1, %18
  %20 = add i32 %3, %4
  %21 = sub i32 %2, %20
  %22 = shl i32 %19, %21
  br label %bb.a

bb.a:                                             ; preds = %11, %17
  %23 = phi i32 [ %22, %17 ], [ 0, %11 ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4624
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4632
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4648
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4640
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = tail call i32 @Abc_TtGetCMInt(ptr noundef %1, i32 noundef %2, i32 noundef %4, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %10) ; 4 uses
  %i.j = sub nsw i32 %12, %6                      ; 2 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4656
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4848
  %i.o = shl nuw i32 1, %6                        ; 2 uses
  %i.p = icmp sgt i32 %i.i, 0
  %wide.trip.count.i.i.i = zext i32 %16 to i64    ; 3 uses
  %wide.trip.count.i.i = zext i32 %i.i to i64     ; 2 uses
  %i.q = icmp sgt i32 %16, 0
  %or.cond.i = and i1 %i.q, %i.p
  %i.r = select i1 %13, i32 0, i32 %14
  %i.s = zext nneg i32 %i.r to i64                ; 4 uses
  %or.cond.i.fr = freeze i1 %or.cond.i
  br i1 %or.cond.i.fr, label %.lr.ph.split.us.preheader, label %.critedge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.t = zext nneg i32 %i.j to i64
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.u = icmp eq i32 %i.i, 1
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod143 = trunc i32 %i.i to i1
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge.us
  %indvars.iv130 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next131, %._crit_edge.us ] ; 4 uses
  %.094.us = phi i32 [ 100, %.lr.ph.split.us.preheader ], [ %.1.lcssa.us, %._crit_edge.us ] ; 3 uses
  %i.v = load i32, ptr %i.m, align 8, !tbaa !68
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val71.us = load ptr, ptr %i.z, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val71.us, i64 %indvars.iv130 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 4      ; 2 uses
  %.val78.us = load i32, ptr %i.ab, align 4, !tbaa !34 ; 2 uses
  %i.ac = icmp sgt i32 %.val78.us, 1
  br i1 %i.ac, label %.critedge2.lr.ph.us, label %._crit_edge.us

.critedge2.lr.ph.us:                              ; preds = %.lr.ph.split.us
  %i.ad = getelementptr i8, ptr %i.aa, i64 8
  %.val69.us = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.ae = trunc nuw nsw i64 %indvars.iv130 to i32 ; 2 uses
  %i.af = shl nuw nsw i32 1, %i.ae
  %.not27.i.us = icmp eq i64 %indvars.iv130, 31
  %wide.trip.count.i.us = zext nneg i32 %i.af to i64
  br i1 %.not27.i.us, label %._crit_edge.us, label %.critedge2.us81.us

.critedge2.us81.us:                               ; preds = %.critedge2.lr.ph.us, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us
  %.val.us88.us133 = phi i32 [ %.val.us88.us, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us ], [ %.val78.us, %.critedge2.lr.ph.us ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us ], [ 0, %.critedge2.lr.ph.us ] ; 2 uses
  %.180.us82.us = phi i32 [ %.2.us87.us, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us ], [ %.094.us, %.critedge2.lr.ph.us ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val69.us, i64 %indvars.iv ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !29 ; 2 uses
  %i.ai = and i32 %i.ah, %23
  %.not66.us84.us = icmp eq i32 %i.ai, 0
  br i1 %.not66.us84.us, label %.lr.ph.i.us.us, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us

.lr.ph.i.us.us:                                   ; preds = %.critedge2.us81.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.al = load i32, ptr %i.m, align 8, !tbaa !68
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val70.us85.us = load ptr, ptr %i.ap, align 8, !tbaa !43
  %i.aq = sext i32 %i.ak to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.val70.us85.us, i64 %i.aq
  br label %.lr.ph.i.us.us.i.us.us

.lr.ph.i.us.us.i.us.us:                           ; preds = %bb.e, %.lr.ph.i.us.us
  %indvars.iv.i.us.us = phi i64 [ 0, %.lr.ph.i.us.us ], [ %indvars.iv.next.i.us.us, %bb.e ] ; 2 uses
  %.01622.us.us.i.us.us = phi i32 [ 0, %.lr.ph.i.us.us ], [ %i.bs, %bb.e ]
  %i.as = shl nuw i64 %indvars.iv.i.us.us, %i.s
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as ; 3 uses
  br i1 %i.u, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.epil.preheader, label %.lr.ph.preheader.i.us.i.us.us.i.us.us

.lr.ph.preheader.i.us.i.us.us.i.us.us:            ; preds = %.lr.ph.i.us.us.i.us.us, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1
  %indvars.iv.i.us.us.i.us.us = phi i64 [ %indvars.iv.next.i.us.us.i.us.us.1, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1 ], [ 0, %.lr.ph.i.us.us.i.us.us ] ; 3 uses
  %.011.us.i.us.us.i.us.us = phi i32 [ %i.bj, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1 ], [ 0, %.lr.ph.i.us.us.i.us.us ]
  %niter = phi i64 [ %niter.next.1, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1 ], [ 0, %.lr.ph.i.us.us.i.us.us ]
  %i.au = shl nuw i64 %indvars.iv.i.us.us.i.us.us, %i.s
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.au
  br label %.lr.ph.i.us.i.us.us.i.us.us

.lr.ph.i.us.i.us.us.i.us.us:                      ; preds = %bb.b, %.lr.ph.preheader.i.us.i.us.us.i.us.us
  %indvars.iv.i.us.i.us.us.i.us.us = phi i64 [ 0, %.lr.ph.preheader.i.us.i.us.us.i.us.us ], [ %indvars.iv.next.i.us.i.us.us.i.us.us, %bb.b ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i.us.i.us.us.i.us.us
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i.us.i.us.us.i.us.us
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !28
  %i.ba = and i64 %i.az, %i.ax
  %.not.i.us.i.us.us.i.us.us = icmp eq i64 %i.ba, 0
  br i1 %.not.i.us.i.us.us.i.us.us, label %bb.b, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us

bb.b:                                             ; preds = %.lr.ph.i.us.i.us.us.i.us.us
  %indvars.iv.next.i.us.i.us.us.i.us.us = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.us.i.us.us.i.us.us, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us, label %.lr.ph.i.us.i.us.us.i.us.us, !llvm.loop !12

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us: ; preds = %bb.b, %.lr.ph.i.us.i.us.us.i.us.us
  %.015.i.ph.us.i.us.us.i.us.us = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us ], [ 0, %bb.b ]
  %i.bb = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us, %.011.us.i.us.us.i.us.us
  %indvars.iv.next.i.us.us.i.us.us = or disjoint i64 %indvars.iv.i.us.us.i.us.us, 1
  %i.bc = shl nuw i64 %indvars.iv.next.i.us.us.i.us.us, %i.s
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.bc
  br label %.lr.ph.i.us.i.us.us.i.us.us.1

.lr.ph.i.us.i.us.us.i.us.us.1:                    ; preds = %bb.c, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us
  %indvars.iv.i.us.i.us.us.i.us.us.1 = phi i64 [ 0, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.1, %bb.c ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i.us.i.us.us.i.us.us.1
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i.us.i.us.us.i.us.us.1
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !28
  %i.bi = and i64 %i.bh, %i.bf
  %.not.i.us.i.us.us.i.us.us.1 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.us.i.us.us.i.us.us.1, label %bb.c, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1

bb.c:                                             ; preds = %.lr.ph.i.us.i.us.us.i.us.us.1
  %indvars.iv.next.i.us.i.us.us.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.1, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.1, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.1, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1, label %.lr.ph.i.us.i.us.us.i.us.us.1, !llvm.loop !12

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1: ; preds = %bb.c, %.lr.ph.i.us.i.us.us.i.us.us.1
  %.015.i.ph.us.i.us.us.i.us.us.1 = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.1 ], [ 0, %bb.c ]
  %i.bj = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.1, %i.bb ; 3 uses
  %indvars.iv.next.i.us.us.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.i.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.unr-lcssa, label %.lr.ph.preheader.i.us.i.us.us.i.us.us, !llvm.loop !13

Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.unr-lcssa: ; preds = %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1
  br i1 %lcmp.mod.not, label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.epil.preheader

.lr.ph.preheader.i.us.i.us.us.i.us.us.epil.preheader: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.unr-lcssa, %.lr.ph.i.us.us.i.us.us
  %indvars.iv.i.us.us.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.i.us.us ], [ %indvars.iv.next.i.us.us.i.us.us.1, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.unr-lcssa ]
  %.011.us.i.us.us.i.us.us.epil.init = phi i32 [ 0, %.lr.ph.i.us.us.i.us.us ], [ %i.bj, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %i.bk = shl nuw i64 %indvars.iv.i.us.us.i.us.us.epil.init, %i.s
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.bk
  br label %.lr.ph.i.us.i.us.us.i.us.us.epil

.lr.ph.i.us.i.us.us.i.us.us.epil:                 ; preds = %bb.d, %.lr.ph.preheader.i.us.i.us.us.i.us.us.epil.preheader
  %indvars.iv.i.us.i.us.us.i.us.us.epil = phi i64 [ 0, %.lr.ph.preheader.i.us.i.us.us.i.us.us.epil.preheader ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.epil, %bb.d ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i.us.i.us.us.i.us.us.epil
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !28
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i.us.i.us.us.i.us.us.epil
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !28
  %i.bq = and i64 %i.bp, %i.bn
  %.not.i.us.i.us.us.i.us.us.epil = icmp eq i64 %i.bq, 0
  br i1 %.not.i.us.i.us.us.i.us.us.epil, label %bb.d, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.epil

bb.d:                                             ; preds = %.lr.ph.i.us.i.us.us.i.us.us.epil
  %indvars.iv.next.i.us.i.us.us.i.us.us.epil = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.epil, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.epil = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.epil, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.epil, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.epil, label %.lr.ph.i.us.i.us.us.i.us.us.epil, !llvm.loop !12

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.epil: ; preds = %bb.d, %.lr.ph.i.us.i.us.us.i.us.us.epil
  %.015.i.ph.us.i.us.us.i.us.us.epil = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.epil ], [ 0, %bb.d ]
  %i.br = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.epil, %.011.us.i.us.us.i.us.us.epil.init
  br label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us

Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.unr-lcssa, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.epil
  %.lcssa = phi i32 [ %i.bj, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.unr-lcssa ], [ %i.br, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.epil ] ; 2 uses
  %.not.us.us.i.us.us = icmp sgt i32 %.lcssa, %i.o
  br i1 %.not.us.us.i.us.us, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us, label %bb.e

bb.e:                                             ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us
  %i.bs = tail call noundef i32 @llvm.smax.i32(i32 %.01622.us.us.i.us.us, i32 %.lcssa) ; 6 uses
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us.us, label %Abc_BSEvalCountUniqueMax.exit.us.us, label %.lr.ph.i.us.us.i.us.us, !llvm.loop !14

Abc_BSEvalCountUniqueMax.exit.us.us:              ; preds = %bb.e
  %i.bt = icmp eq i32 %i.bs, 0
  %i.bu = icmp sgt i32 %i.bs, %i.o
  %or.cond.us.us = or i1 %i.bt, %i.bu
  br i1 %or.cond.us.us, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us, label %bb.f

bb.f:                                             ; preds = %Abc_BSEvalCountUniqueMax.exit.us.us
  %i.bv = icmp samesign ult i32 %i.bs, 2
  %i.bw = add nsw i32 %i.bs, -1
  %i.bx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %i.by = sub nuw nsw i32 32, %i.bx
  %.09.i72.us.us = select i1 %i.bv, i32 %i.bs, i32 %i.by ; 3 uses
  %i.bz = icmp sle i32 %.09.i72.us.us, %6
  %i.ca = icmp sgt i32 %.180.us82.us, %.09.i72.us.us
  %or.cond67.us.us = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond67.us.us, label %bb.g, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us

bb.g:                                             ; preds = %bb.f
  store i32 %i.ah, ptr %8, align 4, !tbaa !29
  store i32 %i.ae, ptr %9, align 4, !tbaa !29
  %.val.us88.us.pre = load i32, ptr %i.ab, align 4, !tbaa !34
  br label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us

Abc_BSEvalCountUniqueMax.exit.thread.us86.us:     ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us, %bb.g, %bb.f, %Abc_BSEvalCountUniqueMax.exit.us.us, %.critedge2.us81.us
  %.val.us88.us = phi i32 [ %.val.us88.us133, %.critedge2.us81.us ], [ %.val.us88.us133, %Abc_BSEvalCountUniqueMax.exit.us.us ], [ %.val.us88.us.pre, %bb.g ], [ %.val.us88.us133, %bb.f ], [ %.val.us88.us133, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us ] ; 2 uses
  %.2.us87.us = phi i32 [ %.180.us82.us, %.critedge2.us81.us ], [ %.180.us82.us, %Abc_BSEvalCountUniqueMax.exit.us.us ], [ %.09.i72.us.us, %bb.g ], [ %.180.us82.us, %bb.f ], [ %.180.us82.us, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cb = or disjoint i64 %indvars.iv.next, 1
  %i.cc = sext i32 %.val.us88.us to i64
  %i.cd = icmp slt i64 %i.cb, %i.cc
  br i1 %i.cd, label %.critedge2.us81.us, label %._crit_edge.us, !llvm.loop !15

._crit_edge.us:                                   ; preds = %Abc_BSEvalCountUniqueMax.exit.thread.us86.us, %.critedge2.lr.ph.us, %.lr.ph.split.us
  %.1.lcssa.us = phi i32 [ %.094.us, %.lr.ph.split.us ], [ %.094.us, %.critedge2.lr.ph.us ], [ %.2.us87.us, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us ] ; 3 uses
  %.not65.us = icmp sgt i32 %.1.lcssa.us, %6
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ce = icmp samesign ult i64 %indvars.iv.next131, %i.t
  %or.cond = and i1 %.not65.us, %i.ce
  br i1 %or.cond, label %.lr.ph.split.us, label %.critedge, !llvm.loop !16

.critedge:                                        ; preds = %._crit_edge.us, %.lr.ph, %bb.a
  %.3 = phi i32 [ 100, %.lr.ph ], [ 100, %bb.a ], [ %.1.lcssa.us, %._crit_edge.us ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define i64 @Abc_TtFindBVarsSVars(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 6 uses
  %i.b = alloca [32 x i32], align 16              ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = tail call ptr @Abc_BSEvalAlloc()         ; 12 uses
  %i.f = sub nsw i32 %1, %2                       ; 4 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !65
  %.not = icmp eq i32 %i.g, %i.f
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.f, ptr %i.e, align 8, !tbaa !65
  %i.h = sub nsw i32 %4, %2                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.k
  %i.m = sext i32 %i.h to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call ptr @Abc_GenChasePairs(i32 noundef %i.f, i32 noundef %i.h)
  store ptr %i.q, ptr %i.n, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !68   ; 2 uses
  %.not125 = icmp eq i32 %i.s, %4
end_hunk_0
begin_hunk_1_@Abc_TtFindBVars3:bb.a
Vec_WecFreeP.exit:                                ; preds = %Vec_IntStartNatural.exit
  %i.u = tail call ptr @Abc_BSFind(ptr noundef nonnull %i.i, i32 noundef %i.e, i32 noundef %9) ; 8 uses
  tail call void @Abc_BSEvalSet(ptr noundef %0, ptr noundef %i.u, ptr noundef %1, i32 noundef %2, i32 poison, i32 noundef %5)
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val = load i32, ptr %i.v, align 4, !tbaa !67
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %.val27 = load ptr, ptr %i.w, align 8, !tbaa !62 ; 4 uses
  %i.x = sext i32 %.val to i64
  tail call void @qsort(ptr noundef %.val27, i64 noundef %i.x, i64 noundef 16, ptr noundef nonnull @Vec_WecSortCompare5) #28
  tail call void @Vec_WecAppend(ptr noundef nonnull %i.a, ptr noundef %i.u)
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %Vec_IntStartNatural.exit.1, label %bb.c

bb.c:                                             ; preds = %Vec_WecFreeP.exit
  tail call void @free(ptr noundef nonnull %i.z) #28
  br label %Vec_IntStartNatural.exit.1

Vec_IntStartNatural.exit.1:                       ; preds = %Vec_WecFreeP.exit, %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #28
  %i.aa = tail call ptr @Abc_BSFindNextVars(ptr noundef nonnull %i.u, i32 noundef %i.e, i32 poison, i32 noundef %10) ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %.0.val.1 = load i32, ptr %i.ab, align 4, !tbaa !34
  %.not.1 = icmp sgt i32 %.0.val.1, %i.e
  br i1 %.not.1, label %bb.d, label %bb.l

bb.d:                                             ; preds = %Vec_IntStartNatural.exit.1
  %i.ac = load i32, ptr %i.u, align 8, !tbaa !61  ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.preheader.1, label %._crit_edge.i.i.i.1

._crit_edge.i.i.i.1:                              ; preds = %bb.d
  %.not.i.i.i.1 = icmp eq ptr %.val27, null
  br i1 %.not.i.i.i.1, label %Vec_WecFreeP.exit.1, label %._crit_edge.thread.i.i.i.1

.lr.ph.i.i.i.preheader.1:                         ; preds = %bb.d
  %i.ae = zext nneg i32 %i.ac to i64
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.f, %.lr.ph.i.i.i.preheader.1
  %indvars.iv.i.i.i.1 = phi i64 [ %indvars.iv.next.i.i.i.1, %bb.f ], [ 0, %.lr.ph.i.i.i.preheader.1 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val27, i64 %indvars.iv.i.i.i.1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35 ; 2 uses
  %.not15.i.i.i.1 = icmp eq ptr %i.ah, null
  br i1 %.not15.i.i.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.1
  tail call void @free(ptr noundef nonnull %i.ah) #28
  store ptr null, ptr %i.ag, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i.1
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.i.i.i.1, %i.ae
  br i1 %exitcond.1.not, label %._crit_edge.thread.i.i.i.1, label %.lr.ph.i.i.i.1, !llvm.loop !11

._crit_edge.thread.i.i.i.1:                       ; preds = %bb.f, %._crit_edge.i.i.i.1
  tail call void @free(ptr noundef nonnull %.val27) #28
  br label %Vec_WecFreeP.exit.1

Vec_WecFreeP.exit.1:                              ; preds = %._crit_edge.i.i.i.1, %._crit_edge.thread.i.i.i.1
  tail call void @free(ptr noundef nonnull %i.u) #28
  %i.ai = tail call ptr @Abc_BSFind(ptr noundef %i.aa, i32 noundef %i.e, i32 noundef %9) ; 8 uses
  tail call void @Abc_BSEvalSet(ptr noundef %0, ptr noundef %i.ai, ptr noundef %1, i32 noundef %2, i32 poison, i32 noundef %5)
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val.1 = load i32, ptr %i.aj, align 4, !tbaa !67
  %i.ak = getelementptr i8, ptr %i.ai, i64 8
  %.val27.1 = load ptr, ptr %i.ak, align 8, !tbaa !62 ; 4 uses
  %i.al = sext i32 %.val.1 to i64
  tail call void @qsort(ptr noundef %.val27.1, i64 noundef %i.al, i64 noundef 16, ptr noundef nonnull @Vec_WecSortCompare5) #28
  tail call void @Vec_WecAppend(ptr noundef nonnull %i.a, ptr noundef %i.ai)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.an, null
  br i1 %.not.i.1, label %Vec_IntStartNatural.exit.2, label %bb.g

bb.g:                                             ; preds = %Vec_WecFreeP.exit.1
  tail call void @free(ptr noundef nonnull %i.an) #28
  br label %Vec_IntStartNatural.exit.2

Vec_IntStartNatural.exit.2:                       ; preds = %bb.g, %Vec_WecFreeP.exit.1
  tail call void @free(ptr noundef nonnull %i.aa) #28
  %i.ao = tail call ptr @Abc_BSFindNextVars(ptr noundef nonnull %i.ai, i32 noundef %i.e, i32 poison, i32 noundef %10) ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %.0.val.2 = load i32, ptr %i.ap, align 4, !tbaa !34
  %.not.2 = icmp sgt i32 %.0.val.2, %i.e
  br i1 %.not.2, label %bb.h, label %bb.l

bb.h:                                             ; preds = %Vec_IntStartNatural.exit.2
  %i.aq = load i32, ptr %i.ai, align 8, !tbaa !61 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.preheader.2, label %._crit_edge.i.i.i.2

._crit_edge.i.i.i.2:                              ; preds = %bb.h
  %.not.i.i.i.2 = icmp eq ptr %.val27.1, null
  br i1 %.not.i.i.i.2, label %Vec_WecFreeP.exit.2, label %._crit_edge.thread.i.i.i.2

.lr.ph.i.i.i.preheader.2:                         ; preds = %bb.h
  %i.as = zext nneg i32 %i.aq to i64
  br label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.j, %.lr.ph.i.i.i.preheader.2
  %indvars.iv.i.i.i.2 = phi i64 [ %indvars.iv.next.i.i.i.2, %bb.j ], [ 0, %.lr.ph.i.i.i.preheader.2 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %.val27.1, i64 %indvars.iv.i.i.i.2
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35 ; 2 uses
  %.not15.i.i.i.2 = icmp eq ptr %i.av, null
  br i1 %.not15.i.i.i.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.2
  tail call void @free(ptr noundef nonnull %i.av) #28
  store ptr null, ptr %i.au, align 8, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i.2
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.i.i.i.2, %i.as
  br i1 %exitcond.2.not, label %._crit_edge.thread.i.i.i.2, label %.lr.ph.i.i.i.2, !llvm.loop !11

._crit_edge.thread.i.i.i.2:                       ; preds = %bb.j, %._crit_edge.i.i.i.2
  tail call void @free(ptr noundef nonnull %.val27.1) #28
  br label %Vec_WecFreeP.exit.2

Vec_WecFreeP.exit.2:                              ; preds = %._crit_edge.i.i.i.2, %._crit_edge.thread.i.i.i.2
  tail call void @free(ptr noundef nonnull %i.ai) #28
  %i.aw = tail call ptr @Abc_BSFind(ptr noundef %i.ao, i32 noundef %i.e, i32 noundef %9) ; 5 uses
  tail call void @Abc_BSEvalSet(ptr noundef %0, ptr noundef %i.aw, ptr noundef %1, i32 noundef %2, i32 poison, i32 noundef %5)
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %.val.2 = load i32, ptr %i.ax, align 4, !tbaa !67
  %i.ay = getelementptr i8, ptr %i.aw, i64 8
  %.val27.2 = load ptr, ptr %i.ay, align 8, !tbaa !62
  %i.az = sext i32 %.val.2 to i64
  tail call void @qsort(ptr noundef %.val27.2, i64 noundef %i.az, i64 noundef 16, ptr noundef nonnull @Vec_WecSortCompare5) #28
  tail call void @Vec_WecAppend(ptr noundef nonnull %i.a, ptr noundef %i.aw)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !35 ; 2 uses
  %.not.i.2 = icmp eq ptr %i.bb, null
  br i1 %.not.i.2, label %Vec_IntFree.exit.2, label %bb.k

bb.k:                                             ; preds = %Vec_WecFreeP.exit.2
  tail call void @free(ptr noundef nonnull %i.bb) #28
  br label %Vec_IntFree.exit.2

Vec_IntFree.exit.2:                               ; preds = %bb.k, %Vec_WecFreeP.exit.2
  tail call void @free(ptr noundef nonnull %i.ao) #28
  br label %bb.l

bb.l:                                             ; preds = %Vec_IntFree.exit.2, %Vec_IntStartNatural.exit.1, %Vec_IntStartNatural.exit.2
  %.043.lcssa.ph = phi ptr [ %i.ai, %Vec_IntStartNatural.exit.2 ], [ %i.u, %Vec_IntStartNatural.exit.1 ], [ %i.aw, %Vec_IntFree.exit.2 ] ; 3 uses
  %i.bc = load i32, ptr %.043.lcssa.ph, align 8, !tbaa !61 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  %i.be = getelementptr inbounds nuw i8, ptr %.043.lcssa.ph, i64 8
  %.pre.i.i.i28 = load ptr, ptr %i.be, align 8, !tbaa !62 ; 3 uses
  br i1 %i.bd, label %.lr.ph.i.i.i33.preheader, label %._crit_edge.i.i.i29

.lr.ph.i.i.i33.preheader:                         ; preds = %bb.l
  %i.bf = zext nneg i32 %i.bc to i64
  br label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %.lr.ph.i.i.i33.preheader, %bb.n
  %indvars.iv.i.i.i34 = phi i64 [ %indvars.iv.next.i.i.i37, %bb.n ], [ 0, %.lr.ph.i.i.i33.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i.i28, i64 %indvars.iv.i.i.i34
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !35 ; 2 uses
  %.not15.i.i.i35 = icmp eq ptr %i.bi, null
  br i1 %.not15.i.i.i35, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i33
  tail call void @free(ptr noundef nonnull %i.bi) #28
  store ptr null, ptr %i.bh, align 8, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.i33
  %indvars.iv.next.i.i.i37 = add nuw nsw i64 %indvars.iv.i.i.i34, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i.i37, %i.bf
  br i1 %exitcond.not, label %._crit_edge.thread.i.i.i31, label %.lr.ph.i.i.i33, !llvm.loop !11

._crit_edge.i.i.i29:                              ; preds = %bb.l
  %.not.i.i.i30 = icmp eq ptr %.pre.i.i.i28, null
  br i1 %.not.i.i.i30, label %Vec_WecFree.exit.i32, label %._crit_edge.thread.i.i.i31

._crit_edge.thread.i.i.i31:                       ; preds = %bb.n, %._crit_edge.i.i.i29
  tail call void @free(ptr noundef nonnull %.pre.i.i.i28) #28
  br label %Vec_WecFree.exit.i32

Vec_WecFree.exit.i32:                             ; preds = %._crit_edge.thread.i.i.i31, %._crit_edge.i.i.i29
  tail call void @free(ptr noundef nonnull %.043.lcssa.ph) #28
  br label %Vec_WecFreeP.exit38

Vec_WecFreeP.exit38:                              ; preds = %Vec_IntStartNatural.exit, %Vec_WecFree.exit.i32
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Abc_TtFindBVarsSVars2(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef captures(address_is_null) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 16 uses
  %i.b = alloca [32 x i32], align 16              ; 14 uses
  %i.c = sub i32 %2, %5                           ; 13 uses
  %i.d = sub nsw i32 %2, %3                       ; 12 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !65
  %.not = icmp eq i32 %i.e, %i.d
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr %0, align 8, !tbaa !65
  %i.f = sub nsw i32 %5, %3                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.f, ptr %i.g, align 4, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = sext i32 %i.d to i64
  %i.j = getelementptr inbounds [192 x i8], ptr %i.h, i64 %i.i
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @Abc_GenChasePairs(i32 noundef %i.d, i32 noundef %i.f)
  %i.p = load i32, ptr %0, align 8, !tbaa !65
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [192 x i8], ptr %i.h, i64 %i.q
  %i.s = load i32, ptr %i.g, align 4, !tbaa !66
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.t
  store ptr %i.o, ptr %i.u, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !68   ; 2 uses
  %.not345 = icmp eq i32 %i.w, %5
  br i1 %.not345, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4848
  %i.y = sext i32 %5 to i64                       ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4656
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.y
  %i.ae = tail call ptr @Abc_BSEvalCreateCofactorSets(i32 noundef %5, ptr noundef nonnull %i.ad)
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !64
  %.pre = load i32, ptr %i.v, align 8, !tbaa !68
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = phi i32 [ %.pre, %bb.f ], [ %i.w, %bb.e ]
  %i.ag = icmp slt i32 %i.af, %5
  br i1 %i.ag, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 5040 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63 ; 2 uses
  %.not346 = icmp eq ptr %i.ai, null
  br i1 %.not346, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.ai) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.aj = icmp slt i32 %5, 7
  %i.ak = add nsw i32 %5, -6
  %i.al = shl nuw i32 1, %i.ak
  %i.am = select i1 %i.aj, i32 1, i32 %i.al
  %i.an = shl i32 %i.am, %5
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 3
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ap) #30
  store ptr %i.aq, ptr %i.ah, align 8, !tbaa !63
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  store i32 %5, ptr %i.v, align 8, !tbaa !68
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %i.ar = icmp slt i32 %2, 7
  %i.as = add nsw i32 %2, -6
  %i.at = shl nuw i32 1, %i.as
  %i.au = select i1 %i.ar, i32 1, i32 %i.at       ; 4 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 3
  %i.ax = tail call noalias ptr @malloc(i64 noundef %i.aw) #30 ; 8 uses
  %i.ay = icmp sgt i32 %i.au, 0                   ; 2 uses
  br i1 %i.ay, label %.lr.ph.preheader.i, label %Abc_TtCopy.exit

.lr.ph.preheader.i:                               ; preds = %bb.l
  %wide.trip.count.i = zext nneg i32 %i.au to i64
  %i.az = shl nuw nsw i64 %wide.trip.count.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %1, i64 %i.az, i1 false), !tbaa !28
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %.lr.ph.preheader.i, %bb.l
  %i.ba = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 5 uses
  store i32 0, ptr %i.bb, align 4, !tbaa !44
  store i32 16, ptr %i.ba, align 8, !tbaa !45
  %i.bc = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #30 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 5 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.be = icmp sgt i32 %2, 0
  br i1 %i.be, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Abc_TtCopy.exit
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader786, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <4 x i32> %vec.ind, ptr %i.bf, align 16, !tbaa !29
  store <4 x i32> %step.add, ptr %i.bg, align 16, !tbaa !29
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <4 x i32> %vec.ind, ptr %i.bh, align 16, !tbaa !29
  store <4 x i32> %step.add, ptr %i.bi, align 16, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader786

.lr.ph.preheader786:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader786, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader786 ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.bl = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !29
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !199

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %Abc_TtCopy.exit
  %i.bn = shl nuw i32 1, %2                       ; 7 uses
  %.not347 = icmp eq ptr %7, null                 ; 3 uses
  br i1 %.not347, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  store i32 %i.bn, ptr %7, align 4, !tbaa !29
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %i.bo = icmp ne i32 %9, 0
  %i.bp = icmp ne i32 %10, 0
  %or.cond = and i1 %i.bo, %i.bp
  %i.bq = add nsw i32 %5, 1
  %i.br = icmp sgt i32 %2, %i.bq
  %or.cond366 = select i1 %or.cond, i1 %i.br, i1 false
  br i1 %or.cond366, label %bb.o, label %.preheader541

.preheader541:                                    ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bu = load i32, ptr %0, align 8, !tbaa !65
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [192 x i8], ptr %i.bs, i64 %i.bv
  %i.bx = load i32, ptr %i.bt, align 4, !tbaa !66
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !57 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 4
  %.val569 = load i32, ptr %i.cb, align 4, !tbaa !34
  %i.cc = icmp sgt i32 %.val569, 1
  br i1 %i.cc, label %.critedge5.lr.ph, label %.loopexit

.critedge5.lr.ph:                                 ; preds = %.preheader541
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4624 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4632 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4648 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4640 ; 2 uses
  %.not348 = icmp eq i32 %6, 0                    ; 4 uses
  %i.ch = icmp sgt i32 %3, 0
  %.not349.not552 = icmp sgt i32 %i.d, %i.c
  %i.ci = icmp sgt i32 %i.c, 0
  %i.cj = icmp sgt i32 %4, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %11 = icmp slt i32 %5, 7                        ; 2 uses
  %12 = add nsw i32 %5, -6                        ; 2 uses
  %13 = shl nuw i32 1, %12
  %14 = select i1 %11, i32 1, i32 %13             ; 2 uses
  %.not.i390 = icmp eq i32 %3, 0
  %15 = sub nsw i32 32, %3
  %16 = lshr i32 -1, %15
  %i.cl = add i32 %3, %i.c
  %17 = sub i32 %2, %i.cl
  %18 = shl i32 %16, %17
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4656
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4848
  %wide.trip.count.i.i.i.i393 = zext i32 %14 to i64 ; 3 uses
  %i.co = icmp sgt i32 %14, 0
  %i.cp = select i1 %11, i32 0, i32 %12
  %i.cq = zext nneg i32 %i.cp to i64              ; 4 uses
  %i.cr = icmp sgt i32 %5, 0
  %i.cs = sext i32 %i.c to i64                    ; 5 uses
  %wide.trip.count.i452 = zext i32 %5 to i64      ; 5 uses
  %invariant.gep.i453 = getelementptr [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.ct = sext i32 %i.d to i64
  %i.cu = zext i32 %i.c to i64
  %i.cv = sext i32 %5 to i64
  %i.cw = sext i32 %4 to i64
  %spec.select618 = select i1 %.not.i390, i32 0, i32 %18
  %min.iters.check740 = icmp ult i32 %5, 4
  %n.vec742 = and i64 %wide.trip.count.i452, 2147483644 ; 3 uses
  %cmp.n749 = icmp eq i64 %n.vec742, %wide.trip.count.i452
  %xtraiter789 = and i64 %wide.trip.count.i452, 1
  %i.cx = icmp eq i32 %5, 1
  %unroll_iter793 = and i64 %wide.trip.count.i452, 2147483646
  %lcmp.mod790.not = icmp eq i64 %xtraiter789, 0
  %lcmp.mod792 = trunc i32 %5 to i1
  br label %.critedge5

bb.o:                                             ; preds = %bb.n
  %i.cy = tail call ptr @Abc_TtFindBVars3(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 poison, i32 noundef %5, i32 poison, ptr poison, i32 poison, i32 noundef %9, i32 noundef %10) ; 4 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 4
  %.val376 = load i32, ptr %i.cz, align 4, !tbaa !67
  %i.da = getelementptr i8, ptr %i.cy, i64 8
  %.val377 = load ptr, ptr %i.da, align 8, !tbaa !62 ; 5 uses
  %i.db = sext i32 %.val376 to i64
  tail call void @qsort(ptr noundef %.val377, i64 noundef %i.db, i64 noundef 16, ptr noundef nonnull @Vec_WecSortCompare5) #28
  %i.dc = icmp sgt i32 %10, 0
  br i1 %i.dc, label %.lr.ph609, label %.critedge

.lr.ph609:                                        ; preds = %bb.o
  %.not357 = icmp eq i32 %6, 0                    ; 4 uses
  %i.dd = icmp sgt i32 %3, 0
  %.not359.not585 = icmp sgt i32 %i.d, %i.c
  %i.de = icmp sgt i32 %i.c, 0
  %i.df = icmp sgt i32 %4, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %19 = icmp slt i32 %5, 7                        ; 2 uses
  %20 = add nsw i32 %5, -6                        ; 2 uses
  %21 = shl nuw i32 1, %20
  %22 = select i1 %19, i32 1, i32 %21             ; 2 uses
  %.not.i = icmp eq i32 %3, 0
  %i.dh = sub nsw i32 32, %3
  %i.di = lshr i32 -1, %i.dh
  %23 = add i32 %3, %i.c
  %24 = sub i32 %2, %23
  %25 = shl i32 %i.di, %24
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4624
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4632
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 4648
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 4640
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4656
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4848
  %wide.trip.count.i.i.i.i = zext i32 %22 to i64  ; 3 uses
  %i.dp = icmp sgt i32 %22, 0
  %i.dq = select i1 %19, i32 0, i32 %20
  %i.dr = zext nneg i32 %i.dq to i64              ; 4 uses
  %i.ds = icmp sgt i32 %5, 0
  %i.dt = sext i32 %i.c to i64                    ; 6 uses
  %wide.trip.count.i382 = zext i32 %5 to i64      ; 5 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.a, i64 %i.dt ; 2 uses
  %i.du = sext i32 %i.d to i64
  %i.dv = zext i32 %i.c to i64
  %i.dw = sext i32 %5 to i64
  %i.dx = sext i32 %4 to i64
  %wide.trip.count656 = zext nneg i32 %10 to i64
  %spec.select617 = select i1 %.not.i, i32 0, i32 %25
  %min.iters.check752 = icmp ult i32 %5, 4
  %n.vec754 = and i64 %wide.trip.count.i382, 2147483644 ; 3 uses
  %cmp.n764 = icmp eq i64 %n.vec754, %wide.trip.count.i382
  %xtraiter801 = and i64 %wide.trip.count.i382, 1
  %i.dy = icmp eq i32 %5, 1
  %unroll_iter805 = and i64 %wide.trip.count.i382, 2147483646
  %lcmp.mod802.not = icmp eq i64 %xtraiter801, 0
  %lcmp.mod804 = trunc i32 %5 to i1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph609, %bb.ba
  %i.dz = phi ptr [ %i.bc, %.lr.ph609 ], [ %i.mj, %bb.ba ] ; 5 uses
  %i.ea = phi i32 [ 16, %.lr.ph609 ], [ %i.mk, %bb.ba ] ; 10 uses
  %i.eb = phi i32 [ 0, %.lr.ph609 ], [ %i.ml, %bb.ba ] ; 5 uses
  %i.ec = phi ptr [ %i.bc, %.lr.ph609 ], [ %i.mm, %bb.ba ] ; 9 uses
  %i.ed = phi i32 [ 16, %.lr.ph609 ], [ %i.mn, %bb.ba ] ; 4 uses
  %indvars.iv653 = phi i64 [ 0, %.lr.ph609 ], [ %indvars.iv.next654, %bb.ba ] ; 3 uses
  %.0301607 = phi i32 [ %2, %.lr.ph609 ], [ %.2, %bb.ba ] ; 4 uses
  %.0303606 = phi i32 [ %i.bn, %.lr.ph609 ], [ %.2305, %bb.ba ] ; 5 uses
  %.0310605 = phi i32 [ %i.bn, %.lr.ph609 ], [ %i.en, %bb.ba ]
  %.0323603 = phi i32 [ 0, %.lr.ph609 ], [ %.1324, %bb.ba ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %.val377, i64 %indvars.iv653 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !35 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !34
  %i.ej = add nsw i32 %i.ei, -1                   ; 3 uses
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !34
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !29 ; 8 uses
  %i.en = tail call noundef i32 @llvm.smin.i32(i32 %.0310605, i32 %i.em) ; 2 uses
  br i1 %.not347, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eo = load i32, ptr %7, align 4, !tbaa !29
  %i.ep = tail call noundef i32 @llvm.smin.i32(i32 %i.eo, i32 %i.em)
  store i32 %i.ep, ptr %7, align 4, !tbaa !29
  %.val370.pre = load i32, ptr %i.eh, align 4, !tbaa !34
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.val370 = phi i32 [ %.val370.pre, %bb.q ], [ %i.ej, %bb.p ] ; 2 uses
  %i.eq = icmp sgt i32 %.val370, 0
  br i1 %i.eq, label %.lr.ph580.preheader, label %.critedge3

.lr.ph580.preheader:                              ; preds = %bb.r
  %wide.trip.count642 = zext nneg i32 %.val370 to i64
  br label %.lr.ph580.a

.lr.ph580.a:                                      ; preds = %.lr.ph580.preheader, %Abc_TtMoveVar.exit
  %indvars.iv639.a = phi i64 [ 0, %.lr.ph580.preheader ], [ %indvars.iv.next640.a, %Abc_TtMoveVar.exit ] ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv639.a
  %i.es = load i32, ptr %i.er, align 4, !tbaa !29
  %i.et = add nsw i64 %indvars.iv639.a, %i.dt     ; 2 uses
  %i.eu = sext i32 %i.es to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !29 ; 4 uses
  %i.ex = trunc nsw i64 %i.et to i32              ; 3 uses
  %i.ey = icmp eq i32 %i.ew, %i.ex
  br i1 %i.ey, label %Abc_TtMoveVar.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph580.a
  tail call fastcc void @Abc_TtSwapVars(ptr noundef %i.ax, i32 noundef %2, i32 noundef %i.ew, i32 noundef %i.ex)
  %i.ez = sext i32 %i.ew to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ez ; 4 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !29 ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fc
  store i32 %i.ex, ptr %i.fd, align 4, !tbaa !29
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.et ; 3 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !29 ; 2 uses
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fg
  store i32 %i.ew, ptr %i.fh, align 4, !tbaa !29
  %i.fi = xor i32 %i.ff, %i.fb                    ; 2 uses
  store i32 %i.fi, ptr %i.fa, align 4, !tbaa !29
  %i.fj = load i32, ptr %i.fe, align 4, !tbaa !29
  %i.fk = xor i32 %i.fj, %i.fi                    ; 2 uses
  store i32 %i.fk, ptr %i.fe, align 4, !tbaa !29
  %i.fl = load i32, ptr %i.fa, align 4, !tbaa !29
  %i.fm = xor i32 %i.fl, %i.fk
  store i32 %i.fm, ptr %i.fa, align 4, !tbaa !29
  br label %Abc_TtMoveVar.exit

Abc_TtMoveVar.exit:                               ; preds = %.lr.ph580.a, %bb.s
  %indvars.iv.next640.a = add nuw nsw i64 %indvars.iv639.a, 1 ; 2 uses
  %exitcond643.not = icmp eq i64 %indvars.iv.next640.a, %wide.trip.count642
  br i1 %exitcond643.not, label %.critedge3, label %.lr.ph580.a, !llvm.loop !200

.critedge3:                                       ; preds = %Abc_TtMoveVar.exit, %bb.r
  br i1 %.not357, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge3
  %i.fn = trunc nuw nsw i64 %indvars.iv653 to i32
  %i.fo = lshr i32 %i.fn, 1
  %i.fp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.fo) ; 0 uses
  br i1 %i.dd, label %.lr.ph583, label %._crit_edge584

.lr.ph583:                                        ; preds = %bb.t, %.lr.ph583
  %.1313.in581 = phi i32 [ %.1313, %.lr.ph583 ], [ %3, %bb.t ] ; 2 uses
  %.1313 = add nsw i32 %.1313.in581, -1           ; 2 uses
  %i.fq = add nsw i32 %.1313, %i.d
  %i.fr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.fq) ; 0 uses
  %i.fs = icmp samesign ugt i32 %.1313.in581, 1
  br i1 %i.fs, label %.lr.ph583, label %._crit_edge584, !llvm.loop !201

._crit_edge584:                                   ; preds = %.lr.ph583, %bb.t
  %putchar358 = tail call i32 @putchar(i32 32)    ; 0 uses
  br i1 %.not359.not585, label %.lr.ph588, label %._crit_edge589

.lr.ph588:                                        ; preds = %._crit_edge584, %.lr.ph588
  %indvars.iv644 = phi i64 [ %indvars.iv.next645, %.lr.ph588 ], [ %i.du, %._crit_edge584 ]
  %indvars.iv.next645 = add nsw i64 %indvars.iv644, -1 ; 3 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next645
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !29
  %i.fv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.fu) ; 0 uses
  %.not359.not = icmp sgt i64 %indvars.iv.next645, %i.dt
  br i1 %.not359.not, label %.lr.ph588, label %._crit_edge589, !llvm.loop !202

._crit_edge589:                                   ; preds = %.lr.ph588, %._crit_edge584
  %putchar360 = tail call i32 @putchar(i32 32)    ; 0 uses
  br i1 %i.de, label %.lr.ph592, label %._crit_edge593

.lr.ph592:                                        ; preds = %._crit_edge589, %.lr.ph592
  %indvars.iv647 = phi i64 [ %indvars.iv.next648, %.lr.ph592 ], [ %i.dv, %._crit_edge589 ] ; 2 uses
  %indvars.iv.next648 = add nsw i64 %indvars.iv647, -1 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next648
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !29
  %i.fy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.fx) ; 0 uses
  %i.fz = icmp samesign ugt i64 %indvars.iv647, 1
  br i1 %i.fz, label %.lr.ph592, label %._crit_edge593, !llvm.loop !203

._crit_edge593:                                   ; preds = %.lr.ph592, %._crit_edge589
  %i.ga = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.em) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge593, %.critedge3
  %i.gb = add nsw i32 %i.en, %8
  %.not361 = icmp sgt i32 %i.em, %i.gb
  br i1 %.not361, label %bb.ay, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gc = icmp sgt i32 %i.em, 2
  br i1 %i.gc, label %.preheader, label %bb.ae

.preheader:                                       ; preds = %bb.v
  br i1 %i.df, label %.lr.ph598, label %._crit_edge599

._crit_edge599:                                   ; preds = %Abc_SharedEvalBest.exit.thread, %.preheader
  %.0514.lcssa = phi i32 [ 0, %.preheader ], [ %.5519524, %Abc_SharedEvalBest.exit.thread ] ; 2 uses
  %.0508.lcssa = phi i32 [ 0, %.preheader ], [ %.5513525, %Abc_SharedEvalBest.exit.thread ] ; 2 uses
  %.0293.lcssa = phi i32 [ 100, %.preheader ], [ %i.jb, %Abc_SharedEvalBest.exit.thread ] ; 3 uses
  br i1 %.not357, label %bb.ad, label %bb.ac

.lr.ph598:                                        ; preds = %.preheader, %Abc_SharedEvalBest.exit.thread
  %indvars.iv650 = phi i64 [ %indvars.iv.next651, %Abc_SharedEvalBest.exit.thread ], [ 1, %.preheader ] ; 6 uses
  %.0293596 = phi i32 [ %i.jb, %Abc_SharedEvalBest.exit.thread ], [ 100, %.preheader ] ; 3 uses
  %.0508595 = phi i32 [ %.5513525, %Abc_SharedEvalBest.exit.thread ], [ 0, %.preheader ] ; 3 uses
  %.0514594 = phi i32 [ %.5519524, %Abc_SharedEvalBest.exit.thread ], [ 0, %.preheader ] ; 3 uses
  %i.gd = load ptr, ptr %i.dg, align 8, !tbaa !63 ; 4 uses
  %i.ge = load ptr, ptr %i.dj, align 8, !tbaa !53
  %i.gf = load ptr, ptr %i.dk, align 8, !tbaa !54
  %i.gg = load ptr, ptr %i.dl, align 8, !tbaa !56
  %i.gh = load ptr, ptr %i.dm, align 8, !tbaa !55
  %i.gi = tail call i32 @Abc_TtGetCMInt(ptr noundef readonly %i.ax, i32 noundef %2, i32 noundef %i.c, ptr noundef %i.ge, ptr noundef %i.gf, ptr noundef %i.gg, ptr noundef %i.gh, ptr noundef %i.gd) ; 4 uses
  %i.gj = sub nsw i64 %i.dw, %indvars.iv650       ; 2 uses
  %i.gk = icmp sgt i64 %i.gj, 1
  br i1 %i.gk, label %.lr.ph.i378, label %Abc_SharedEvalBest.exit.thread

.lr.ph.i378:                                      ; preds = %.lr.ph598
  %i.gl = trunc nuw nsw i64 %indvars.iv650 to i32
  %i.gm = shl nuw i32 1, %i.gl                    ; 2 uses
  %i.gn = icmp sgt i32 %i.gi, 0
  %wide.trip.count.i.i.i = zext i32 %i.gi to i64  ; 2 uses
  %or.cond.i.i = and i1 %i.dp, %i.gn
  %or.cond.i.fr.i = freeze i1 %or.cond.i.i
  br i1 %or.cond.i.fr.i, label %.lr.ph.split.us.preheader.i, label %Abc_SharedEvalBest.exit.thread

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i378
  %i.go = load i32, ptr %i.v, align 8, !tbaa !68
  %i.gp = sext i32 %i.go to i64                   ; 2 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.gp
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !59
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  %.val71.us.i = load ptr, ptr %i.gs, align 8, !tbaa !62
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.gp
  %xtraiter795 = and i64 %wide.trip.count.i.i.i, 1
  %i.gu = icmp eq i32 %i.gi, 1
  %unroll_iter799 = and i64 %wide.trip.count.i.i.i, 4294967294
  %lcmp.mod796.not = icmp eq i64 %xtraiter795, 0
  %lcmp.mod798 = trunc i32 %i.gi to i1
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %._crit_edge.us.i, %.lr.ph.split.us.preheader.i
  %.1515 = phi i32 [ %.0514594, %.lr.ph.split.us.preheader.i ], [ %.2516, %._crit_edge.us.i ] ; 3 uses
  %.1509 = phi i32 [ %.0508595, %.lr.ph.split.us.preheader.i ], [ %.2510, %._crit_edge.us.i ] ; 3 uses
  %indvars.iv130.i = phi i64 [ 1, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next131.i, %._crit_edge.us.i ] ; 4 uses
  %.094.us.i = phi i32 [ 100, %.lr.ph.split.us.preheader.i ], [ %.1.lcssa.us.i, %._crit_edge.us.i ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %.val71.us.i, i64 %indvars.iv130.i ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 4
  %.val78.us.i = load i32, ptr %i.gw, align 4, !tbaa !34 ; 2 uses
  %i.gx = icmp sgt i32 %.val78.us.i, 1
  br i1 %i.gx, label %.critedge2.lr.ph.us.i, label %._crit_edge.us.i

.critedge2.lr.ph.us.i:                            ; preds = %.lr.ph.split.us.i
  %i.gy = getelementptr i8, ptr %i.gv, i64 8
  %.val69.us.i = load ptr, ptr %i.gy, align 8, !tbaa !35
  %i.gz = trunc nuw nsw i64 %indvars.iv130.i to i32 ; 2 uses
  %i.ha = shl nuw nsw i32 1, %i.gz
  %.not27.i.us.i = icmp eq i64 %indvars.iv130.i, 31
  %wide.trip.count.i.us.i = zext nneg i32 %i.ha to i64
  br i1 %.not27.i.us.i, label %._crit_edge.us.i, label %.critedge2.us81.us.i.preheader

.critedge2.us81.us.i.preheader:                   ; preds = %.critedge2.lr.ph.us.i
  %i.hb = zext nneg i32 %.val78.us.i to i64
  br label %.critedge2.us81.us.i

.critedge2.us81.us.i:                             ; preds = %.critedge2.us81.us.i.preheader, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i
  %.3517 = phi i32 [ %.4518, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ], [ %.1515, %.critedge2.us81.us.i.preheader ] ; 4 uses
  %.3511 = phi i32 [ %.4512, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ], [ %.1509, %.critedge2.us81.us.i.preheader ] ; 4 uses
  %indvars.iv.i379 = phi i64 [ %indvars.iv.next.i380, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ], [ 0, %.critedge2.us81.us.i.preheader ] ; 2 uses
  %.180.us82.us.i = phi i32 [ %i.iv, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ], [ %.094.us.i, %.critedge2.us81.us.i.preheader ] ; 5 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.val69.us.i, i64 %indvars.iv.i379 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !29 ; 2 uses
  %i.he = and i32 %i.hd, %spec.select617
  %.not66.us84.us.i = icmp eq i32 %i.he, 0
  br i1 %.not66.us84.us.i, label %.lr.ph.i.us.us.i, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.critedge2.us81.us.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !29
  %i.hh = load ptr, ptr %i.gt, align 8, !tbaa !64
  %i.hi = getelementptr i8, ptr %i.hh, i64 8
  %.val70.us85.us.i = load ptr, ptr %i.hi, align 8, !tbaa !43
  %i.hj = sext i32 %i.hg to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %.val70.us85.us.i, i64 %i.hj
  br label %.lr.ph.i.us.us.i.us.us.i

.lr.ph.i.us.us.i.us.us.i:                         ; preds = %bb.z, %.lr.ph.i.us.us.i
  %indvars.iv.i.us.us.i = phi i64 [ 0, %.lr.ph.i.us.us.i ], [ %indvars.iv.next.i.us.us.i, %bb.z ] ; 2 uses
  %.01622.us.us.i.us.us.i = phi i32 [ 0, %.lr.ph.i.us.us.i ], [ %i.il, %bb.z ]
  %i.hl = shl nuw i64 %indvars.iv.i.us.us.i, %i.dr
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hl ; 3 uses
  br i1 %i.gu, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i.epil.preheader, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i

.lr.ph.preheader.i.us.i.us.us.i.us.us.i:          ; preds = %.lr.ph.i.us.us.i.us.us.i, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1
  %indvars.iv.i.us.us.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i.us.us.i.1, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1 ], [ 0, %.lr.ph.i.us.us.i.us.us.i ] ; 3 uses
  %.011.us.i.us.us.i.us.us.i = phi i32 [ %i.ic, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1 ], [ 0, %.lr.ph.i.us.us.i.us.us.i ]
  %niter800 = phi i64 [ %niter800.next.1, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1 ], [ 0, %.lr.ph.i.us.us.i.us.us.i ]
  %i.hn = shl nuw i64 %indvars.iv.i.us.us.i.us.us.i, %i.dr
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.hn
  br label %.lr.ph.i.us.i.us.us.i.us.us.i

.lr.ph.i.us.i.us.us.i.us.us.i:                    ; preds = %bb.w, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i
  %indvars.iv.i.us.i.us.us.i.us.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.i, %bb.w ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.i.us.i.us.us.i.us.us.i
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !28
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv.i.us.i.us.us.i.us.us.i
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !28
  %i.ht = and i64 %i.hs, %i.hq
  %.not.i.us.i.us.us.i.us.us.i = icmp eq i64 %i.ht, 0
  br i1 %.not.i.us.i.us.us.i.us.us.i, label %bb.w, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i

bb.w:                                             ; preds = %.lr.ph.i.us.i.us.us.i.us.us.i
  %indvars.iv.next.i.us.i.us.us.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.i, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i, label %.lr.ph.i.us.i.us.us.i.us.us.i, !llvm.loop !12

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i: ; preds = %bb.w, %.lr.ph.i.us.i.us.us.i.us.us.i
  %.015.i.ph.us.i.us.us.i.us.us.i = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.i ], [ 0, %bb.w ]
  %i.hu = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.i, %.011.us.i.us.us.i.us.us.i
  %indvars.iv.next.i.us.us.i.us.us.i = or disjoint i64 %indvars.iv.i.us.us.i.us.us.i, 1
  %i.hv = shl nuw i64 %indvars.iv.next.i.us.us.i.us.us.i, %i.dr
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.hv
  br label %.lr.ph.i.us.i.us.us.i.us.us.i.1

.lr.ph.i.us.i.us.us.i.us.us.i.1:                  ; preds = %bb.x, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i
  %indvars.iv.i.us.i.us.us.i.us.us.i.1 = phi i64 [ 0, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.i.1, %bb.x ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.i.us.i.us.us.i.us.us.i.1
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !28
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv.i.us.i.us.us.i.us.us.i.1
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !28
  %i.ib = and i64 %i.ia, %i.hy
  %.not.i.us.i.us.us.i.us.us.i.1 = icmp eq i64 %i.ib, 0
  br i1 %.not.i.us.i.us.us.i.us.us.i.1, label %bb.x, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1

bb.x:                                             ; preds = %.lr.ph.i.us.i.us.us.i.us.us.i.1
  %indvars.iv.next.i.us.i.us.us.i.us.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.i.1, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.i.1 = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.i.1, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.i.1, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1, label %.lr.ph.i.us.i.us.us.i.us.us.i.1, !llvm.loop !12

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1: ; preds = %bb.x, %.lr.ph.i.us.i.us.us.i.us.us.i.1
  %.015.i.ph.us.i.us.us.i.us.us.i.1 = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.i.1 ], [ 0, %bb.x ]
  %i.ic = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.i.1, %i.hu ; 3 uses
  %indvars.iv.next.i.us.us.i.us.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.i.us.us.i, 2 ; 2 uses
  %niter800.next.1 = add i64 %niter800, 2         ; 2 uses
  %niter800.ncmp.1 = icmp eq i64 %niter800.next.1, %unroll_iter799
  br i1 %niter800.ncmp.1, label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i, !llvm.loop !13

Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa: ; preds = %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1
  br i1 %lcmp.mod796.not, label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i.epil.preheader

.lr.ph.preheader.i.us.i.us.us.i.us.us.i.epil.preheader: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa, %.lr.ph.i.us.us.i.us.us.i
  %indvars.iv.i.us.us.i.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.i.us.us.i ], [ %indvars.iv.next.i.us.us.i.us.us.i.1, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa ]
  %.011.us.i.us.us.i.us.us.i.epil.init = phi i32 [ 0, %.lr.ph.i.us.us.i.us.us.i ], [ %i.ic, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod798)
  %i.id = shl nuw i64 %indvars.iv.i.us.us.i.us.us.i.epil.init, %i.dr
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.id
  br label %.lr.ph.i.us.i.us.us.i.us.us.i.epil

.lr.ph.i.us.i.us.us.i.us.us.i.epil:               ; preds = %bb.y, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i.epil.preheader
  %indvars.iv.i.us.i.us.us.i.us.us.i.epil = phi i64 [ 0, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i.epil.preheader ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.i.epil, %bb.y ] ; 3 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.i.us.i.us.us.i.us.us.i.epil
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !28
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv.i.us.i.us.us.i.us.us.i.epil
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !28
  %i.ij = and i64 %i.ii, %i.ig
  %.not.i.us.i.us.us.i.us.us.i.epil = icmp eq i64 %i.ij, 0
  br i1 %.not.i.us.i.us.us.i.us.us.i.epil, label %bb.y, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.epil

bb.y:                                             ; preds = %.lr.ph.i.us.i.us.us.i.us.us.i.epil
  %indvars.iv.next.i.us.i.us.us.i.us.us.i.epil = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.i.epil, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.i.epil = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.i.epil, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.i.epil, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.epil, label %.lr.ph.i.us.i.us.us.i.us.us.i.epil, !llvm.loop !12

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.epil: ; preds = %bb.y, %.lr.ph.i.us.i.us.us.i.us.us.i.epil
  %.015.i.ph.us.i.us.us.i.us.us.i.epil = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.i.epil ], [ 0, %bb.y ]
  %i.ik = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.i.epil, %.011.us.i.us.us.i.us.us.i.epil.init
  br label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i

Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.epil
  %.lcssa = phi i32 [ %i.ic, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa ], [ %i.ik, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.epil ] ; 2 uses
  %.not.us.us.i.us.us.i = icmp sgt i32 %.lcssa, %i.gm
  br i1 %.not.us.us.i.us.us.i, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i, label %bb.z

bb.z:                                             ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i
  %i.il = tail call noundef i32 @llvm.smax.i32(i32 %.01622.us.us.i.us.us.i, i32 %.lcssa) ; 6 uses
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.i, %wide.trip.count.i.us.i
  br i1 %exitcond.not.i.us.us.i, label %Abc_BSEvalCountUniqueMax.exit.us.us.i, label %.lr.ph.i.us.us.i.us.us.i, !llvm.loop !14

Abc_BSEvalCountUniqueMax.exit.us.us.i:            ; preds = %bb.z
  %i.im = icmp eq i32 %i.il, 0
  %i.in = icmp sgt i32 %i.il, %i.gm
  %or.cond.us.us.i = or i1 %i.im, %i.in
  br i1 %or.cond.us.us.i, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i, label %bb.aa

bb.aa:                                            ; preds = %Abc_BSEvalCountUniqueMax.exit.us.us.i
  %i.io = icmp samesign ult i32 %i.il, 2
  %i.ip = add nsw i32 %i.il, -1
  %i.iq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ip, i1 true)
  %i.ir = sub nuw nsw i32 32, %i.iq
  %.09.i72.us.us.i = select i1 %i.io, i32 %i.il, i32 %i.ir ; 3 uses
  %i.is = zext nneg i32 %.09.i72.us.us.i to i64
  %i.it = icmp samesign uge i64 %indvars.iv650, %i.is
  %i.iu = icmp sgt i32 %.180.us82.us.i, %.09.i72.us.us.i
  %or.cond67.us.us.i = and i1 %i.it, %i.iu
  br i1 %or.cond67.us.us.i, label %bb.ab, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i

bb.ab:                                            ; preds = %bb.aa
  br label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i

Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i:   ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i, %bb.ab, %bb.aa, %Abc_BSEvalCountUniqueMax.exit.us.us.i, %.critedge2.us81.us.i
  %.4518 = phi i32 [ %.3517, %.critedge2.us81.us.i ], [ %.3517, %Abc_BSEvalCountUniqueMax.exit.us.us.i ], [ %i.hd, %bb.ab ], [ %.3517, %bb.aa ], [ %.3517, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i ] ; 2 uses
  %.4512 = phi i32 [ %.3511, %.critedge2.us81.us.i ], [ %.3511, %Abc_BSEvalCountUniqueMax.exit.us.us.i ], [ %i.gz, %bb.ab ], [ %.3511, %bb.aa ], [ %.3511, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i ] ; 2 uses
  %.2.us87.us.i = phi i32 [ %.180.us82.us.i, %.critedge2.us81.us.i ], [ %.180.us82.us.i, %Abc_BSEvalCountUniqueMax.exit.us.us.i ], [ %.09.i72.us.us.i, %bb.ab ], [ %.180.us82.us.i, %bb.aa ], [ %.180.us82.us.i, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i ]
  %i.iv = freeze i32 %.2.us87.us.i                ; 2 uses
  %indvars.iv.next.i380 = add nuw nsw i64 %indvars.iv.i379, 2 ; 2 uses
  %i.iw = or disjoint i64 %indvars.iv.next.i380, 1
  %i.ix = icmp samesign ult i64 %i.iw, %i.hb
  br i1 %i.ix, label %.critedge2.us81.us.i, label %._crit_edge.us.i, !llvm.loop !15

._crit_edge.us.i:                                 ; preds = %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i, %.critedge2.lr.ph.us.i, %.lr.ph.split.us.i
  %.2516 = phi i32 [ %.1515, %.critedge2.lr.ph.us.i ], [ %.1515, %.lr.ph.split.us.i ], [ %.4518, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ] ; 2 uses
  %.2510 = phi i32 [ %.1509, %.critedge2.lr.ph.us.i ], [ %.1509, %.lr.ph.split.us.i ], [ %.4512, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ] ; 2 uses
  %.1.lcssa.us.i = phi i32 [ %.094.us.i, %.critedge2.lr.ph.us.i ], [ %.094.us.i, %.lr.ph.split.us.i ], [ %i.iv, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ] ; 4 uses
  %i.iy = sext i32 %.1.lcssa.us.i to i64
  %.not65.us.i = icmp slt i64 %indvars.iv650, %i.iy
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %i.iz = icmp samesign ult i64 %indvars.iv.next131.i, %i.gj
  %or.cond.i = and i1 %i.iz, %.not65.us.i
  br i1 %or.cond.i, label %.lr.ph.split.us.i, label %Abc_SharedEvalBest.exit, !llvm.loop !16

Abc_SharedEvalBest.exit:                          ; preds = %._crit_edge.us.i
  %i.ja = icmp slt i32 %.1.lcssa.us.i, 100
  %spec.select = select i1 %i.ja, i32 %.1.lcssa.us.i, i32 %.0293596
  br label %Abc_SharedEvalBest.exit.thread

Abc_SharedEvalBest.exit.thread:                   ; preds = %Abc_SharedEvalBest.exit, %.lr.ph.i378, %.lr.ph598
  %.5513525 = phi i32 [ %.0508595, %.lr.ph.i378 ], [ %.2510, %Abc_SharedEvalBest.exit ], [ %.0508595, %.lr.ph598 ] ; 2 uses
  %.5519524 = phi i32 [ %.0514594, %.lr.ph.i378 ], [ %.2516, %Abc_SharedEvalBest.exit ], [ %.0514594, %.lr.ph598 ] ; 2 uses
  %i.jb = phi i32 [ %.0293596, %.lr.ph.i378 ], [ %spec.select, %Abc_SharedEvalBest.exit ], [ %.0293596, %.lr.ph598 ] ; 3 uses
  %indvars.iv.next651 = add nuw nsw i64 %indvars.iv650, 1 ; 2 uses
  %i.jc = icmp slt i64 %indvars.iv650, %i.dx
  %i.jd = trunc nuw i64 %indvars.iv.next651 to i32
  %i.je = icmp sgt i32 %i.jb, %i.jd
  %i.jf = select i1 %i.jc, i1 %i.je, i1 false
  br i1 %i.jf, label %.lr.ph598, label %._crit_edge599, !llvm.loop !204

bb.ac:                                            ; preds = %._crit_edge599
  %i.jg = add nsw i32 %i.em, -1
  %i.jh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jg, i1 true)
  %i.ji = sub nuw nsw i32 32, %i.jh
  %i.jj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.ji, i32 noundef %.0293.lcssa, i32 noundef %.0514.lcssa, i32 noundef %.0508.lcssa) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge599
  %.not362 = icmp sgt i32 %.0293.lcssa, %4        ; 3 uses
  %i.jk = shl nuw i32 1, %.0293.lcssa
  %.0299 = select i1 %.not362, i32 %i.em, i32 %i.jk
  %.0297 = select i1 %.not362, i32 0, i32 %.0514.lcssa
  %.0295 = select i1 %.not362, i32 0, i32 %.0508.lcssa
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.v
  %.1300 = phi i32 [ %.0299, %bb.ad ], [ %i.em, %bb.v ] ; 6 uses
  %.1298 = phi i32 [ %.0297, %bb.ad ], [ 0, %bb.v ] ; 3 uses
  %.1296 = phi i32 [ %.0295, %bb.ad ], [ 0, %bb.v ] ; 4 uses
  %i.jl = icmp sgt i32 %.0303606, %.1300
  br i1 %i.jl, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jm = icmp ne i32 %.0303606, %.1300
  %.not363 = icmp slt i32 %.0301607, %.1296
  %or.cond367 = select i1 %i.jm, i1 true, i1 %.not363
end_hunk_1
begin_hunk_2_@Abc_TtFindBVarsSVars2:bb.a
  %i.mr = zext nneg i32 %i.mp to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.bc
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bc ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ms = getelementptr inbounds nuw [16 x i8], ptr %.val377, i64 %indvars.iv.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !35 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.mu, null
  br i1 %.not15.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.mu) #28
  store ptr null, ptr %i.mt, align 8, !tbaa !35
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond658.not.a = icmp eq i64 %indvars.iv.next.i.i, %i.mr
  br i1 %exitcond658.not.a, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %.critedge
  %.not.i.i389 = icmp eq ptr %.val377, null
  br i1 %.not.i.i389, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.bc, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %.val377) #28
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.cy) #28
  br label %.loopexit

.critedge5:                                       ; preds = %.critedge5.lr.ph, %Abc_TtExchangeVars.exit
  %i.mv = phi ptr [ %i.bc, %.critedge5.lr.ph ], [ %i.uk, %Abc_TtExchangeVars.exit ] ; 5 uses
  %i.mw = phi i32 [ 16, %.critedge5.lr.ph ], [ %i.ul, %Abc_TtExchangeVars.exit ] ; 10 uses
  %i.mx = phi i32 [ 0, %.critedge5.lr.ph ], [ %i.um, %Abc_TtExchangeVars.exit ] ; 5 uses
  %i.my = phi ptr [ %i.bc, %.critedge5.lr.ph ], [ %i.un, %Abc_TtExchangeVars.exit ] ; 9 uses
  %i.mz = phi i32 [ 16, %.critedge5.lr.ph ], [ %i.uo, %Abc_TtExchangeVars.exit ] ; 4 uses
  %indvars.iv636 = phi i64 [ 0, %.critedge5.lr.ph ], [ %indvars.iv.next637, %Abc_TtExchangeVars.exit ] ; 3 uses
  %i.na = phi ptr [ %i.ca, %.critedge5.lr.ph ], [ %i.vr, %Abc_TtExchangeVars.exit ]
  %.3574 = phi i32 [ %2, %.critedge5.lr.ph ], [ %.5, %Abc_TtExchangeVars.exit ] ; 4 uses
  %.3306573 = phi i32 [ %i.bn, %.critedge5.lr.ph ], [ %.5308, %Abc_TtExchangeVars.exit ] ; 5 uses
  %.1311572 = phi i32 [ %i.bn, %.critedge5.lr.ph ], [ %i.nl, %Abc_TtExchangeVars.exit ]
  %.2325570 = phi i32 [ 0, %.critedge5.lr.ph ], [ %.3326, %Abc_TtExchangeVars.exit ] ; 2 uses
  %i.nb = getelementptr i8, ptr %i.na, i64 8
  %.val372 = load ptr, ptr %i.nb, align 8, !tbaa !35
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.val372, i64 %indvars.iv636 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !29
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !29
  %i.ng = load ptr, ptr %i.cd, align 8, !tbaa !53
  %i.nh = load ptr, ptr %i.ce, align 8, !tbaa !54
  %i.ni = load ptr, ptr %i.cf, align 8, !tbaa !56
  %i.nj = load ptr, ptr %i.cg, align 8, !tbaa !55
  %i.nk = tail call i32 @Abc_TtGetCMCount(ptr noundef readonly %i.ax, i32 noundef %2, i32 noundef %i.c, ptr noundef readonly %i.ng, ptr noundef readonly %i.nh, ptr noundef %i.ni, ptr noundef %i.nj) ; 8 uses
  %i.nl = tail call noundef i32 @llvm.smin.i32(i32 %.1311572, i32 %i.nk) ; 2 uses
  br i1 %.not347, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.critedge5
  %i.nm = load i32, ptr %7, align 4, !tbaa !29
  %i.nn = tail call noundef i32 @llvm.smin.i32(i32 %i.nm, i32 %i.nk)
  store i32 %i.nn, ptr %7, align 4, !tbaa !29
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.critedge5
  br i1 %.not348, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.no = lshr exact i64 %indvars.iv636, 1
  %i.np = trunc nuw i64 %i.no to i32
  %i.nq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.np) ; 0 uses
  br i1 %i.ch, label %.lr.ph550, label %._crit_edge551

.lr.ph550:                                        ; preds = %bb.bf, %.lr.ph550
  %.4316.in548 = phi i32 [ %.4316, %.lr.ph550 ], [ %3, %bb.bf ] ; 2 uses
  %.4316 = add nsw i32 %.4316.in548, -1           ; 2 uses
  %i.nr = add nsw i32 %.4316, %i.d
  %i.ns = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.nr) ; 0 uses
  %i.nt = icmp samesign ugt i32 %.4316.in548, 1
  br i1 %i.nt, label %.lr.ph550, label %._crit_edge551, !llvm.loop !208

._crit_edge551:                                   ; preds = %.lr.ph550, %bb.bf
  %putchar = tail call i32 @putchar(i32 32)       ; 0 uses
  br i1 %.not349.not552, label %.lr.ph555, label %._crit_edge556

.lr.ph555:                                        ; preds = %._crit_edge551, %.lr.ph555
  %indvars.iv627 = phi i64 [ %indvars.iv.next628, %.lr.ph555 ], [ %i.ct, %._crit_edge551 ]
  %indvars.iv.next628 = add nsw i64 %indvars.iv627, -1 ; 3 uses
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next628
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !29
  %i.nw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.nv) ; 0 uses
  %.not349.not = icmp sgt i64 %indvars.iv.next628, %i.cs
  br i1 %.not349.not, label %.lr.ph555, label %._crit_edge556, !llvm.loop !209

._crit_edge556:                                   ; preds = %.lr.ph555, %._crit_edge551
  %putchar350 = tail call i32 @putchar(i32 32)    ; 0 uses
  br i1 %i.ci, label %.lr.ph559, label %._crit_edge560

.lr.ph559:                                        ; preds = %._crit_edge556, %.lr.ph559
  %indvars.iv630 = phi i64 [ %indvars.iv.next631, %.lr.ph559 ], [ %i.cu, %._crit_edge556 ] ; 2 uses
  %indvars.iv.next631 = add nsw i64 %indvars.iv630, -1 ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next631
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !29
  %i.nz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.ny) ; 0 uses
  %i.oa = icmp samesign ugt i64 %indvars.iv630, 1
  br i1 %i.oa, label %.lr.ph559, label %._crit_edge560, !llvm.loop !210

._crit_edge560:                                   ; preds = %.lr.ph559, %._crit_edge556
  %i.ob = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.nk) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge560, %bb.be
  %i.oc = add nsw i32 %i.nl, %8
  %.not351 = icmp sgt i32 %i.nk, %i.oc
  br i1 %.not351, label %bb.ck, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.od = icmp sgt i32 %i.nk, 2
  br i1 %i.od, label %.preheader540, label %bb.bq

.preheader540:                                    ; preds = %bb.bh
  br i1 %i.cj, label %.lr.ph565, label %._crit_edge566

._crit_edge566:                                   ; preds = %Abc_SharedEvalBest.exit447.thread, %.preheader540
  %.0502.lcssa = phi i32 [ 0, %.preheader540 ], [ %.5507531, %Abc_SharedEvalBest.exit447.thread ] ; 2 uses
  %.0497.lcssa = phi i32 [ 0, %.preheader540 ], [ %.5501532, %Abc_SharedEvalBest.exit447.thread ] ; 2 uses
  %.0285.lcssa = phi i32 [ 100, %.preheader540 ], [ %i.rc, %Abc_SharedEvalBest.exit447.thread ] ; 3 uses
  br i1 %.not348, label %bb.bp, label %bb.bo

.lr.ph565:                                        ; preds = %.preheader540, %Abc_SharedEvalBest.exit447.thread
  %indvars.iv633 = phi i64 [ %indvars.iv.next634, %Abc_SharedEvalBest.exit447.thread ], [ 1, %.preheader540 ] ; 6 uses
  %.0285563 = phi i32 [ %i.rc, %Abc_SharedEvalBest.exit447.thread ], [ 100, %.preheader540 ] ; 3 uses
  %.0497562 = phi i32 [ %.5501532, %Abc_SharedEvalBest.exit447.thread ], [ 0, %.preheader540 ] ; 3 uses
  %.0502561 = phi i32 [ %.5507531, %Abc_SharedEvalBest.exit447.thread ], [ 0, %.preheader540 ] ; 3 uses
  %i.oe = load ptr, ptr %i.ck, align 8, !tbaa !63 ; 4 uses
  %i.of = load ptr, ptr %i.cd, align 8, !tbaa !53
  %i.og = load ptr, ptr %i.ce, align 8, !tbaa !54
  %i.oh = load ptr, ptr %i.cf, align 8, !tbaa !56
  %i.oi = load ptr, ptr %i.cg, align 8, !tbaa !55
  %i.oj = tail call i32 @Abc_TtGetCMInt(ptr noundef readonly %i.ax, i32 noundef %2, i32 noundef %i.c, ptr noundef %i.of, ptr noundef %i.og, ptr noundef %i.oh, ptr noundef %i.oi, ptr noundef %i.oe) ; 4 uses
  %i.ok = sub nsw i64 %i.cv, %indvars.iv633       ; 2 uses
  %i.ol = icmp sgt i64 %i.ok, 1
  br i1 %i.ol, label %.lr.ph.i392, label %Abc_SharedEvalBest.exit447.thread

.lr.ph.i392:                                      ; preds = %.lr.ph565
  %i.om = trunc nuw nsw i64 %indvars.iv633 to i32
  %i.on = shl nuw i32 1, %i.om                    ; 2 uses
  %i.oo = icmp sgt i32 %i.oj, 0
  %wide.trip.count.i.i.i394 = zext i32 %i.oj to i64 ; 2 uses
  %or.cond.i.i395 = and i1 %i.co, %i.oo
  %or.cond.i.fr.i396 = freeze i1 %or.cond.i.i395
  br i1 %or.cond.i.fr.i396, label %.lr.ph.split.us.preheader.i397, label %Abc_SharedEvalBest.exit447.thread

.lr.ph.split.us.preheader.i397:                   ; preds = %.lr.ph.i392
  %i.op = load i32, ptr %i.v, align 8, !tbaa !68
  %i.oq = sext i32 %i.op to i64                   ; 2 uses
  %i.or = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.oq
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !59
  %i.ot = getelementptr i8, ptr %i.os, i64 8
  %.val71.us.i401 = load ptr, ptr %i.ot, align 8, !tbaa !62
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.oq
  %xtraiter = and i64 %wide.trip.count.i.i.i394, 1
  %i.ov = icmp eq i32 %i.oj, 1
  %unroll_iter = and i64 %wide.trip.count.i.i.i394, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod788 = trunc i32 %i.oj to i1
  br label %.lr.ph.split.us.i398

.lr.ph.split.us.i398:                             ; preds = %._crit_edge.us.i403, %.lr.ph.split.us.preheader.i397
  %.1503 = phi i32 [ %.0502561, %.lr.ph.split.us.preheader.i397 ], [ %.2504, %._crit_edge.us.i403 ] ; 3 uses
  %.1 = phi i32 [ %.0497562, %.lr.ph.split.us.preheader.i397 ], [ %.2498, %._crit_edge.us.i403 ] ; 3 uses
  %indvars.iv130.i399 = phi i64 [ 1, %.lr.ph.split.us.preheader.i397 ], [ %indvars.iv.next131.i406, %._crit_edge.us.i403 ] ; 4 uses
  %.094.us.i400 = phi i32 [ 100, %.lr.ph.split.us.preheader.i397 ], [ %.1.lcssa.us.i404, %._crit_edge.us.i403 ] ; 3 uses
  %i.ow = getelementptr inbounds nuw [16 x i8], ptr %.val71.us.i401, i64 %indvars.iv130.i399 ; 2 uses
  %i.ox = getelementptr i8, ptr %i.ow, i64 4
  %.val78.us.i402 = load i32, ptr %i.ox, align 4, !tbaa !34 ; 2 uses
  %i.oy = icmp sgt i32 %.val78.us.i402, 1
  br i1 %i.oy, label %.critedge2.lr.ph.us.i408, label %._crit_edge.us.i403

.critedge2.lr.ph.us.i408:                         ; preds = %.lr.ph.split.us.i398
  %i.oz = getelementptr i8, ptr %i.ow, i64 8
  %.val69.us.i409 = load ptr, ptr %i.oz, align 8, !tbaa !35
  %i.pa = trunc nuw nsw i64 %indvars.iv130.i399 to i32 ; 2 uses
  %i.pb = shl nuw nsw i32 1, %i.pa
  %.not27.i.us.i410 = icmp eq i64 %indvars.iv130.i399, 31
  %wide.trip.count.i.us.i411 = zext nneg i32 %i.pb to i64
  br i1 %.not27.i.us.i410, label %._crit_edge.us.i403, label %.critedge2.us81.us.i412.preheader

.critedge2.us81.us.i412.preheader:                ; preds = %.critedge2.lr.ph.us.i408
  %i.pc = zext nneg i32 %.val78.us.i402 to i64
  br label %.critedge2.us81.us.i412

.critedge2.us81.us.i412:                          ; preds = %.critedge2.us81.us.i412.preheader, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i417
  %.3505 = phi i32 [ %.4506, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i417 ], [ %.1503, %.critedge2.us81.us.i412.preheader ] ; 4 uses
  %.3499 = phi i32 [ %.4500, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i417 ], [ %.1, %.critedge2.us81.us.i412.preheader ] ; 4 uses
  %indvars.iv.i414 = phi i64 [ %indvars.iv.next.i420, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i417 ], [ 0, %.critedge2.us81.us.i412.preheader ] ; 2 uses
  %.180.us82.us.i415 = phi i32 [ %i.qw, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i417 ], [ %.094.us.i400, %.critedge2.us81.us.i412.preheader ] ; 5 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %.val69.us.i409, i64 %indvars.iv.i414 ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !29 ; 2 uses
  %i.pf = and i32 %i.pe, %spec.select618
  %.not66.us84.us.i416 = icmp eq i32 %i.pf, 0
  br i1 %.not66.us84.us.i416, label %.lr.ph.i.us.us.i421, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i417

.lr.ph.i.us.us.i421:                              ; preds = %.critedge2.us81.us.i412
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !29
  %i.pi = load ptr, ptr %i.ou, align 8, !tbaa !64
  %i.pj = getelementptr i8, ptr %i.pi, i64 8
  %.val70.us85.us.i422 = load ptr, ptr %i.pj, align 8, !tbaa !43
  %i.pk = sext i32 %i.ph to i64
  %i.pl = getelementptr inbounds [8 x i8], ptr %.val70.us85.us.i422, i64 %i.pk
  br label %.lr.ph.i.us.us.i.us.us.i423

.lr.ph.i.us.us.i.us.us.i423:                      ; preds = %bb.bl, %.lr.ph.i.us.us.i421
  %indvars.iv.i.us.us.i424 = phi i64 [ 0, %.lr.ph.i.us.us.i421 ], [ %indvars.iv.next.i.us.us.i438, %bb.bl ] ; 2 uses
  %.01622.us.us.i.us.us.i425 = phi i32 [ 0, %.lr.ph.i.us.us.i421 ], [ %i.qm, %bb.bl ]
  %i.pm = shl nuw i64 %indvars.iv.i.us.us.i424, %i.cq
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %i.pm ; 3 uses
  br i1 %i.ov, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i426.epil.preheader, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i426

.lr.ph.preheader.i.us.i.us.us.i.us.us.i426:       ; preds = %.lr.ph.i.us.us.i.us.us.i423, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432.1
  %indvars.iv.i.us.us.i.us.us.i427 = phi i64 [ %indvars.iv.next.i.us.us.i.us.us.i434.1, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432.1 ], [ 0, %.lr.ph.i.us.us.i.us.us.i423 ] ; 3 uses
  %.011.us.i.us.us.i.us.us.i428 = phi i32 [ %i.qd, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432.1 ], [ 0, %.lr.ph.i.us.us.i.us.us.i423 ]
  %niter = phi i64 [ %niter.next.1, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432.1 ], [ 0, %.lr.ph.i.us.us.i.us.us.i423 ]
  %i.po = shl nuw i64 %indvars.iv.i.us.us.i.us.us.i427, %i.cq
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.po
  br label %.lr.ph.i.us.i.us.us.i.us.us.i429

.lr.ph.i.us.i.us.us.i.us.us.i429:                 ; preds = %bb.bi, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i426
  %indvars.iv.i.us.i.us.us.i.us.us.i430 = phi i64 [ 0, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i426 ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.i445, %bb.bi ] ; 3 uses
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %indvars.iv.i.us.i.us.us.i.us.us.i430
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !28
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %indvars.iv.i.us.i.us.us.i.us.us.i430
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !28
  %i.pu = and i64 %i.pt, %i.pr
  %.not.i.us.i.us.us.i.us.us.i431 = icmp eq i64 %i.pu, 0
  br i1 %.not.i.us.i.us.us.i.us.us.i431, label %bb.bi, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432

bb.bi:                                            ; preds = %.lr.ph.i.us.i.us.us.i.us.us.i429
  %indvars.iv.next.i.us.i.us.us.i.us.us.i445 = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.i430, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.i446 = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.i445, %wide.trip.count.i.i.i.i393
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.i446, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432, label %.lr.ph.i.us.i.us.us.i.us.us.i429, !llvm.loop !12

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432: ; preds = %bb.bi, %.lr.ph.i.us.i.us.us.i.us.us.i429
  %.015.i.ph.us.i.us.us.i.us.us.i433 = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.i429 ], [ 0, %bb.bi ]
  %i.pv = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.i433, %.011.us.i.us.us.i.us.us.i428
  %indvars.iv.next.i.us.us.i.us.us.i434 = or disjoint i64 %indvars.iv.i.us.us.i.us.us.i427, 1
  %i.pw = shl nuw i64 %indvars.iv.next.i.us.us.i.us.us.i434, %i.cq
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.pw
  br label %.lr.ph.i.us.i.us.us.i.us.us.i429.1

.lr.ph.i.us.i.us.us.i.us.us.i429.1:               ; preds = %bb.bj, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432
  %indvars.iv.i.us.i.us.us.i.us.us.i430.1 = phi i64 [ 0, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432 ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.i445.1, %bb.bj ] ; 3 uses
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv.i.us.i.us.us.i.us.us.i430.1
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !28
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %indvars.iv.i.us.i.us.us.i.us.us.i430.1
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !28
  %i.qc = and i64 %i.qb, %i.pz
  %.not.i.us.i.us.us.i.us.us.i431.1 = icmp eq i64 %i.qc, 0
  br i1 %.not.i.us.i.us.us.i.us.us.i431.1, label %bb.bj, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432.1

bb.bj:                                            ; preds = %.lr.ph.i.us.i.us.us.i.us.us.i429.1
  %indvars.iv.next.i.us.i.us.us.i.us.us.i445.1 = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.i430.1, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.i446.1 = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.i445.1, %wide.trip.count.i.i.i.i393
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.i446.1, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432.1, label %.lr.ph.i.us.i.us.us.i.us.us.i429.1, !llvm.loop !12

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432.1: ; preds = %bb.bj, %.lr.ph.i.us.i.us.us.i.us.us.i429.1
  %.015.i.ph.us.i.us.us.i.us.us.i433.1 = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.i429.1 ], [ 0, %bb.bj ]
  %i.qd = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.i433.1, %i.pv ; 3 uses
  %indvars.iv.next.i.us.us.i.us.us.i434.1 = add nuw nsw i64 %indvars.iv.i.us.us.i.us.us.i427, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i436.unr-lcssa, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i426, !llvm.loop !13

Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i436.unr-lcssa: ; preds = %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432.1
  br i1 %lcmp.mod.not, label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i436, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i426.epil.preheader

.lr.ph.preheader.i.us.i.us.us.i.us.us.i426.epil.preheader: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i436.unr-lcssa, %.lr.ph.i.us.us.i.us.us.i423
  %indvars.iv.i.us.us.i.us.us.i427.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.i.us.us.i423 ], [ %indvars.iv.next.i.us.us.i.us.us.i434.1, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i436.unr-lcssa ]
  %.011.us.i.us.us.i.us.us.i428.epil.init = phi i32 [ 0, %.lr.ph.i.us.us.i.us.us.i423 ], [ %i.qd, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i436.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod788)
  %i.qe = shl nuw i64 %indvars.iv.i.us.us.i.us.us.i427.epil.init, %i.cq
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.qe
  br label %.lr.ph.i.us.i.us.us.i.us.us.i429.epil

.lr.ph.i.us.i.us.us.i.us.us.i429.epil:            ; preds = %bb.bk, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i426.epil.preheader
  %indvars.iv.i.us.i.us.us.i.us.us.i430.epil = phi i64 [ 0, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i426.epil.preheader ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.i445.epil, %bb.bk ] ; 3 uses
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %indvars.iv.i.us.i.us.us.i.us.us.i430.epil
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !28
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %indvars.iv.i.us.i.us.us.i.us.us.i430.epil
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !28
  %i.qk = and i64 %i.qj, %i.qh
  %.not.i.us.i.us.us.i.us.us.i431.epil = icmp eq i64 %i.qk, 0
  br i1 %.not.i.us.i.us.us.i.us.us.i431.epil, label %bb.bk, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432.epil

bb.bk:                                            ; preds = %.lr.ph.i.us.i.us.us.i.us.us.i429.epil
  %indvars.iv.next.i.us.i.us.us.i.us.us.i445.epil = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.i430.epil, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.i446.epil = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.i445.epil, %wide.trip.count.i.i.i.i393
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.i446.epil, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432.epil, label %.lr.ph.i.us.i.us.us.i.us.us.i429.epil, !llvm.loop !12

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432.epil: ; preds = %bb.bk, %.lr.ph.i.us.i.us.us.i.us.us.i429.epil
  %.015.i.ph.us.i.us.us.i.us.us.i433.epil = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.i429.epil ], [ 0, %bb.bk ]
  %i.ql = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.i433.epil, %.011.us.i.us.us.i.us.us.i428.epil.init
  br label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i436

Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i436: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i436.unr-lcssa, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432.epil
  %.lcssa777 = phi i32 [ %i.qd, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i436.unr-lcssa ], [ %i.ql, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i432.epil ] ; 2 uses
  %.not.us.us.i.us.us.i437 = icmp sgt i32 %.lcssa777, %i.on
  br i1 %.not.us.us.i.us.us.i437, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i417, label %bb.bl

bb.bl:                                            ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i436
  %i.qm = tail call noundef i32 @llvm.smax.i32(i32 %.01622.us.us.i.us.us.i425, i32 %.lcssa777) ; 6 uses
  %indvars.iv.next.i.us.us.i438 = add nuw nsw i64 %indvars.iv.i.us.us.i424, 1 ; 2 uses
  %exitcond.not.i.us.us.i439 = icmp eq i64 %indvars.iv.next.i.us.us.i438, %wide.trip.count.i.us.i411
  br i1 %exitcond.not.i.us.us.i439, label %Abc_BSEvalCountUniqueMax.exit.us.us.i440, label %.lr.ph.i.us.us.i.us.us.i423, !llvm.loop !14

Abc_BSEvalCountUniqueMax.exit.us.us.i440:         ; preds = %bb.bl
  %i.qn = icmp eq i32 %i.qm, 0
  %i.qo = icmp sgt i32 %i.qm, %i.on
  %or.cond.us.us.i441 = or i1 %i.qn, %i.qo
  br i1 %or.cond.us.us.i441, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i417, label %bb.bm

bb.bm:                                            ; preds = %Abc_BSEvalCountUniqueMax.exit.us.us.i440
  %i.qp = icmp samesign ult i32 %i.qm, 2
  %i.qq = add nsw i32 %i.qm, -1
  %i.qr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.qq, i1 true)
  %i.qs = sub nuw nsw i32 32, %i.qr
  %.09.i72.us.us.i442 = select i1 %i.qp, i32 %i.qm, i32 %i.qs ; 3 uses
  %i.qt = zext nneg i32 %.09.i72.us.us.i442 to i64
  %i.qu = icmp samesign uge i64 %indvars.iv633, %i.qt
  %i.qv = icmp sgt i32 %.180.us82.us.i415, %.09.i72.us.us.i442
  %or.cond67.us.us.i443 = and i1 %i.qu, %i.qv
  br i1 %or.cond67.us.us.i443, label %bb.bn, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i417

bb.bn:                                            ; preds = %bb.bm
  br label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i417

Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i417: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i436, %bb.bn, %bb.bm, %Abc_BSEvalCountUniqueMax.exit.us.us.i440, %.critedge2.us81.us.i412
  %.4506 = phi i32 [ %.3505, %.critedge2.us81.us.i412 ], [ %.3505, %Abc_BSEvalCountUniqueMax.exit.us.us.i440 ], [ %i.pe, %bb.bn ], [ %.3505, %bb.bm ], [ %.3505, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i436 ] ; 2 uses
  %.4500 = phi i32 [ %.3499, %.critedge2.us81.us.i412 ], [ %.3499, %Abc_BSEvalCountUniqueMax.exit.us.us.i440 ], [ %i.pa, %bb.bn ], [ %.3499, %bb.bm ], [ %.3499, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i436 ] ; 2 uses
  %.2.us87.us.i419 = phi i32 [ %.180.us82.us.i415, %.critedge2.us81.us.i412 ], [ %.180.us82.us.i415, %Abc_BSEvalCountUniqueMax.exit.us.us.i440 ], [ %.09.i72.us.us.i442, %bb.bn ], [ %.180.us82.us.i415, %bb.bm ], [ %.180.us82.us.i415, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i436 ]
  %i.qw = freeze i32 %.2.us87.us.i419             ; 2 uses
  %indvars.iv.next.i420 = add nuw nsw i64 %indvars.iv.i414, 2 ; 2 uses
  %i.qx = or disjoint i64 %indvars.iv.next.i420, 1
  %i.qy = icmp samesign ult i64 %i.qx, %i.pc
  br i1 %i.qy, label %.critedge2.us81.us.i412, label %._crit_edge.us.i403, !llvm.loop !15

._crit_edge.us.i403:                              ; preds = %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i417, %.critedge2.lr.ph.us.i408, %.lr.ph.split.us.i398
  %.2504 = phi i32 [ %.1503, %.critedge2.lr.ph.us.i408 ], [ %.1503, %.lr.ph.split.us.i398 ], [ %.4506, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i417 ] ; 2 uses
  %.2498 = phi i32 [ %.1, %.critedge2.lr.ph.us.i408 ], [ %.1, %.lr.ph.split.us.i398 ], [ %.4500, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i417 ] ; 2 uses
  %.1.lcssa.us.i404 = phi i32 [ %.094.us.i400, %.critedge2.lr.ph.us.i408 ], [ %.094.us.i400, %.lr.ph.split.us.i398 ], [ %i.qw, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i417 ] ; 4 uses
  %i.qz = sext i32 %.1.lcssa.us.i404 to i64
  %.not65.us.i405 = icmp slt i64 %indvars.iv633, %i.qz
  %indvars.iv.next131.i406 = add nuw nsw i64 %indvars.iv130.i399, 1 ; 2 uses
  %i.ra = icmp samesign ult i64 %indvars.iv.next131.i406, %i.ok
  %or.cond.i407 = and i1 %i.ra, %.not65.us.i405
  br i1 %or.cond.i407, label %.lr.ph.split.us.i398, label %Abc_SharedEvalBest.exit447, !llvm.loop !16

Abc_SharedEvalBest.exit447:                       ; preds = %._crit_edge.us.i403
  %i.rb = icmp slt i32 %.1.lcssa.us.i404, 100
  %spec.select535 = select i1 %i.rb, i32 %.1.lcssa.us.i404, i32 %.0285563
  br label %Abc_SharedEvalBest.exit447.thread

Abc_SharedEvalBest.exit447.thread:                ; preds = %Abc_SharedEvalBest.exit447, %.lr.ph.i392, %.lr.ph565
  %.5501532 = phi i32 [ %.0497562, %.lr.ph.i392 ], [ %.2498, %Abc_SharedEvalBest.exit447 ], [ %.0497562, %.lr.ph565 ] ; 2 uses
  %.5507531 = phi i32 [ %.0502561, %.lr.ph.i392 ], [ %.2504, %Abc_SharedEvalBest.exit447 ], [ %.0502561, %.lr.ph565 ] ; 2 uses
  %i.rc = phi i32 [ %.0285563, %.lr.ph.i392 ], [ %spec.select535, %Abc_SharedEvalBest.exit447 ], [ %.0285563, %.lr.ph565 ] ; 3 uses
  %indvars.iv.next634 = add nuw nsw i64 %indvars.iv633, 1 ; 2 uses
  %i.rd = icmp slt i64 %indvars.iv633, %i.cw
  %i.re = trunc nuw i64 %indvars.iv.next634 to i32
  %i.rf = icmp sgt i32 %i.rc, %i.re
  %i.rg = select i1 %i.rd, i1 %i.rf, i1 false
  br i1 %i.rg, label %.lr.ph565, label %._crit_edge566, !llvm.loop !211

bb.bo:                                            ; preds = %._crit_edge566
  %i.rh = add nsw i32 %i.nk, -1
  %i.ri = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.rh, i1 true)
  %i.rj = sub nuw nsw i32 32, %i.ri
  %i.rk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.rj, i32 noundef %.0285.lcssa, i32 noundef %.0502.lcssa, i32 noundef %.0497.lcssa) ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge566
  %.not352 = icmp sgt i32 %.0285.lcssa, %4        ; 3 uses
  %i.rl = shl nuw i32 1, %.0285.lcssa
  %.0290 = select i1 %.not352, i32 %i.nk, i32 %i.rl
  %.0288 = select i1 %.not352, i32 0, i32 %.0502.lcssa
  %.0286 = select i1 %.not352, i32 0, i32 %.0497.lcssa
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bh
  %.1291 = phi i32 [ %.0290, %bb.bp ], [ %i.nk, %bb.bh ] ; 6 uses
  %.1289 = phi i32 [ %.0288, %bb.bp ], [ 0, %bb.bh ] ; 3 uses
  %.1287 = phi i32 [ %.0286, %bb.bp ], [ 0, %bb.bh ] ; 4 uses
  %i.rm = icmp sgt i32 %.3306573, %.1291
  br i1 %i.rm, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.rn = icmp ne i32 %.3306573, %.1291
  %.not353 = icmp slt i32 %.3574, %.1287
  %or.cond369 = select i1 %i.rn, i1 true, i1 %.not353
end_hunk_2
