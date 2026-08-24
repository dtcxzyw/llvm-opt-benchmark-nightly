Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcFunc?download=true
inline.NumInlined: 338
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Abc_ConvertSopToBdd:bb.a

.critedge.split.us.us:                            ; preds = %.split.us.us.split.us, %.split.us.us.split.us
  %i.z = tail call ptr @Cudd_bddOr(ptr noundef %0, ptr noundef %.283111.us, ptr noundef %.079.us.us.us) #18 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.z) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %.283111.us) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %.079.us.us.us) #18
  %i.aa = getelementptr i8, ptr %.077112.us, i64 %i.n
  %i.ab = getelementptr i8, ptr %i.aa, i64 3      ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %.not90.us = icmp eq i8 %i.ac, 0
  br i1 %.not90.us, label %.loopexit, label %.split.us.us.split.us.preheader, !llvm.loop !17

bb.g:                                             ; preds = %bb.b
  tail call void @Cudd_Deref(ptr noundef %i.b) #18
  %.not95 = icmp eq ptr %2, null
  br i1 %.not95, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i32 @Abc_SopGetCubeNum(ptr noundef %1) #18
  %i.ae = tail call i32 @Abc_SopGetVarNum(ptr noundef %1) #18
  %i.af = add nsw i32 %i.ae, 3
  %i.ag = tail call ptr @Abc_ConvertSopToBdd2_rec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly %2, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef 0)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ah = sext i32 %i.a to i64
  %i.ai = shl nsw i64 %i.ah, 3
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #19 ; 4 uses
  %i.ak = icmp sgt i32 %i.a, 0
  br i1 %i.ak, label %.lr.ph124.preheader, label %._crit_edge

.lr.ph124.preheader:                              ; preds = %bb.i
  %wide.trip.count146 = zext nneg i32 %i.a to i64
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.lr.ph124
  %indvars.iv143 = phi i64 [ 0, %.lr.ph124.preheader ], [ %indvars.iv.next144, %.lr.ph124 ] ; 3 uses
  %i.al = trunc nuw nsw i64 %indvars.iv143 to i32
  %i.am = tail call ptr @Cudd_bddIthVar(ptr noundef %0, i32 noundef %i.al) #18
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv143
  store ptr %i.am, ptr %i.an, align 8, !tbaa !12
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %._crit_edge, label %.lr.ph124, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph124, %bb.i
  %i.ao = tail call i32 @Abc_SopGetCubeNum(ptr noundef %1) #18
  %i.ap = tail call i32 @Abc_SopGetVarNum(ptr noundef %1) #18
  %i.aq = add nsw i32 %i.ap, 3
  %i.ar = tail call ptr @Abc_ConvertSopToBdd2_rec(ptr noundef %0, ptr noundef %1, ptr noundef readonly %i.aj, i32 noundef %i.ao, i32 noundef %i.aq, i32 noundef 0) ; 2 uses
  %.not96 = icmp eq ptr %i.aj, null
  br i1 %.not96, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.aj) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge, %bb.h
  %.182 = phi ptr [ %i.ag, %bb.h ], [ %i.ar, %._crit_edge ], [ %i.ar, %bb.j ] ; 2 uses
  tail call void @Cudd_Ref(ptr noundef %.182) #18
  br label %.loopexit

.split:                                           ; preds = %.lr.ph114, %.critedge.split.split
  %.077112 = phi ptr [ %i.bf, %.critedge.split.split ], [ %1, %.lr.ph114 ] ; 2 uses
  %.283111 = phi ptr [ %i.bd, %.critedge.split.split ], [ %i.b, %.lr.ph114 ] ; 2 uses
  %i.as = tail call ptr @Cudd_ReadOne(ptr noundef %0) #18 ; 2 uses
  tail call void @Cudd_Ref(ptr noundef %i.as) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.split
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %bb.p ], [ 0, %.split ] ; 4 uses
  %.079 = phi ptr [ %.180, %bb.p ], [ %i.as, %.split ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.077112, i64 %indvars.iv134
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  switch i8 %i.au, label %bb.p [
    i8 32, label %.critedge.split.split
    i8 0, label %.critedge.split.split
    i8 48, label %bb.m
    i8 49, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv134
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !12
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = xor i64 %i.ax, 1
  %i.az = inttoptr i64 %i.ay to ptr
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv134
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.078 = phi ptr [ %i.az, %bb.m ], [ %i.bb, %bb.n ]
  %i.bc = tail call ptr @Cudd_bddAnd(ptr noundef %0, ptr noundef %.079, ptr noundef %.078) #18 ; 2 uses
  tail call void @Cudd_Ref(ptr noundef %i.bc) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %.079) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o
  %.180 = phi ptr [ %i.bc, %bb.o ], [ %.079, %bb.l ]
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  br label %bb.l, !llvm.loop !16

.critedge.split.split:                            ; preds = %bb.l, %bb.l
  %i.bd = tail call ptr @Cudd_bddOr(ptr noundef %0, ptr noundef %.283111, ptr noundef %.079) #18 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.bd) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %.283111) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %.079) #18
  %i.be = getelementptr i8, ptr %.077112, i64 %i.n
  %i.bf = getelementptr i8, ptr %i.be, i64 3      ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %.not90 = icmp eq i8 %i.bg, 0
  br i1 %.not90, label %.loopexit, label %.split, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %.critedge.split.split, %.critedge.split.us.us, %.preheader99, %.preheader, %bb.k
  %.3 = phi ptr [ %i.f, %.lr.ph.split.us ], [ %.182, %bb.k ], [ %i.b, %.preheader ], [ %i.z, %.critedge.split.us.us ], [ %i.bd, %.critedge.split.split ], [ %i.b, %.preheader99 ], [ %i.j, %.lr.ph.split ]
  %i.bh = ptrtoint ptr %.3 to i64
  %i.bi = tail call i32 @Abc_SopGetPhase(ptr noundef %1) #18
  %.not97 = icmp eq i32 %i.bi, 0
  %i.bj = zext i1 %.not97 to i64
  %i.bk = xor i64 %i.bj, %i.bh
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  tail call void @Cudd_Deref(ptr noundef %i.bl) #18
  ret ptr %i.bl
}

declare i32 @Abc_SopIsExorType(ptr noundef) local_unnamed_addr #4

declare ptr @Cudd_bddXor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @Cudd_bddIthVar(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare ptr @Cudd_bddAnd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @Abc_SopGetPhase(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Abc_NtkSopToBdd(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val100132 = load i32, ptr %i.c, align 4, !tbaa !36
  %i.d = icmp sgt i32 %.val100132, 0
  br i1 %i.d, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.e = phi ptr [ %i.p, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.077134 = phi i32 [ %.1, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val102.val = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val102.val, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %i.h, i64 20
  %.val104 = load i32, ptr %i.j, align 4
  %i.k = and i32 %.val104, 15
  %.not131 = icmp eq i32 %i.k, 7
  br i1 %.not131, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = tail call i32 @Abc_SopGetCubeNum(ptr noundef %i.m) #18
  %i.o = tail call noundef i32 @llvm.smax.i32(i32 %.077134, i32 %i.n)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.p = phi ptr [ %i.e, %.lr.ph ], [ %.pre, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %.077134, %.lr.ph ], [ %i.o, %bb.c ], [ %.077134, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %.val100 = load i32, ptr %i.q, align 4, !tbaa !36
  %i.r = sext i32 %.val100 to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %.critedge, !llvm.loop !41

.critedge:                                        ; preds = %bb.d
  %i.t = icmp sgt i32 %.1, 10000
  br i1 %i.t, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %.critedge
  tail call void @Abc_NtkSortCubes(ptr noundef nonnull %0, i32 noundef 0) #18
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %bb.e, %.critedge
  %i.u = tail call i32 @Abc_NtkGetFaninMax(ptr noundef nonnull %0) #18 ; 10 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.thread, label %bb.f

.thread:                                          ; preds = %.critedge.thread
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.w = tail call ptr @Cudd_Init(i32 noundef 0, i32 noundef 0, i32 noundef 256, i32 noundef 262144, i64 noundef 0) #18
  br label %bb.g

bb.f:                                             ; preds = %.critedge.thread
  %i.x = tail call ptr @Cudd_Init(i32 noundef %i.u, i32 noundef 0, i32 noundef 256, i32 noundef 262144, i64 noundef 0) #18 ; 2 uses
  %i.y = icmp sgt i32 %i.u, 10
  br i1 %i.y, label %Vec_IntAlloc.exit, label %bb.g

Vec_IntAlloc.exit:                                ; preds = %bb.f
  %i.z = tail call ptr @Cudd_Init(i32 noundef %i.u, i32 noundef 0, i32 noundef 256, i32 noundef 262144, i64 noundef 0) #18 ; 2 uses
  tail call void @Cudd_AutodynEnable(ptr noundef %i.z, i32 noundef 6) #18
  %i.aa = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %i.ab = tail call i32 @llvm.umax.i32(i32 %i.u, i32 16) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 0, ptr %i.ac, align 4, !tbaa !42
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !43
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %.thread, %Vec_IntAlloc.exit, %bb.f
  %i.ah = phi ptr [ %i.x, %Vec_IntAlloc.exit ], [ %i.x, %bb.f ], [ %i.w, %.thread ] ; 4 uses
  %.0 = phi ptr [ %i.aa, %Vec_IntAlloc.exit ], [ null, %bb.f ], [ null, %.thread ] ; 9 uses
  %.084 = phi ptr [ %i.z, %Vec_IntAlloc.exit ], [ null, %bb.f ], [ null, %.thread ] ; 8 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val144 = load i32, ptr %i.aj, align 4, !tbaa !36
  %i.ak = icmp sgt i32 %.val144, 0
  br i1 %i.ak, label %.lr.ph147, label %.critedge2

.lr.ph147:                                        ; preds = %bb.g
  %i.al = getelementptr i8, ptr %.0, i64 8        ; 13 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 4 uses
  %i.an = icmp sgt i32 %i.u, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %.084, i64 336 ; 2 uses
  %wide.trip.count = zext i32 %i.u to i64         ; 2 uses
  %wide.trip.count155 = zext nneg i32 %i.u to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ap = icmp eq i32 %i.u, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod180 = trunc i32 %i.u to i1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph147, %.loopexit
  %indvars.iv160 = phi i64 [ 0, %.lr.ph147 ], [ %indvars.iv.next161, %.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.ai, %.lr.ph147 ], [ %i.dy, %.loopexit ]
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val101.val = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val101.val, i64 %indvars.iv160
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40 ; 10 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr i8, ptr %i.at, i64 20
  %.val103 = load i32, ptr %i.av, align 4
  %i.aw = and i32 %.val103, 15
  %.not129 = icmp eq i32 %i.aw, 7
  br i1 %.not129, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !45
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  %.val5.i = load i32, ptr %i.ay, align 4, !tbaa !48
  %.not.i115.not = icmp eq i32 %.val5.i, 4
  %i.az = getelementptr i8, ptr %i.at, i64 28
  %.val6.i = load i32, ptr %i.az, align 4, !tbaa !42 ; 2 uses
  %i.ba = icmp eq i32 %.val6.i, 1
  %or.cond = select i1 %.not.i115.not, i1 %i.ba, i1 false
  br i1 %or.cond, label %Abc_ObjIsBarBuf.exit, label %Abc_ObjIsBarBuf.exit.thread

Abc_ObjIsBarBuf.exit:                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !8
  %.not130 = icmp eq ptr %i.bc, null
  br i1 %.not130, label %.loopexit, label %Abc_ObjIsBarBuf.exit.thread.thread

Abc_ObjIsBarBuf.exit.thread:                      ; preds = %bb.j
  %i.bd = getelementptr i8, ptr %i.at, i64 28     ; 7 uses
  %i.be = icmp sgt i32 %.val6.i, 10
  br i1 %i.be, label %bb.k, label %Abc_ObjIsBarBuf.exit.thread.thread

bb.k:                                             ; preds = %Abc_ObjIsBarBuf.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 64 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !8
  %i.bh = tail call ptr @Abc_ConvertSopToBdd(ptr noundef %.084, ptr noundef %i.bg, ptr noundef null) ; 6 uses
  %.not98 = icmp eq ptr %i.bh, null
  br i1 %.not98, label %.thread127, label %bb.l

.thread127:                                       ; preds = %bb.k
  %puts97 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.an

bb.l:                                             ; preds = %bb.k
  tail call void @Cudd_Ref(ptr noundef nonnull %i.bh) #18
  %.val108 = load i32, ptr %i.bd, align 4, !tbaa !49 ; 6 uses
  %i.bi = load i32, ptr %.0, align 8, !tbaa !43
  %.not.i.i = icmp slt i32 %i.bi, %.val108
  br i1 %.not.i.i, label %bb.m, label %Vec_IntGrow.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr %i.al, align 8, !tbaa !44 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bj, null
  %i.bk = sext i32 %.val108 to i64
  %i.bl = shl nsw i64 %i.bk, 2                    ; 2 uses
  br i1 %.not9.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = tail call ptr @realloc(ptr noundef nonnull %i.bj, i64 noundef %i.bl) #20
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bn = tail call noalias ptr @malloc(i64 noundef %i.bl) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bo = phi ptr [ %i.bm, %bb.n ], [ %i.bn, %bb.o ]
  store ptr %i.bo, ptr %i.al, align 8, !tbaa !44
  store i32 %.val108, ptr %.0, align 8, !tbaa !43
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.p, %bb.l
  %i.bp = icmp sgt i32 %.val108, 0
  br i1 %i.bp, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.bq = load ptr, ptr %i.al, align 8, !tbaa !44
  %wide.trip.count.i = zext nneg i32 %.val108 to i64
  %i.br = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bq, i8 -1, i64 %i.br, i1 false), !tbaa !9
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %.lr.ph.i, %Vec_IntGrow.exit.i
  store i32 %.val108, ptr %i.am, align 4, !tbaa !42
  br i1 %i.an, label %.lr.ph137, label %.preheader.critedge

.lr.ph137:                                        ; preds = %Vec_IntFill.exit
  %i.bs = load ptr, ptr %i.ao, align 8, !tbaa !50 ; 3 uses
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph137.new

.lr.ph137.new:                                    ; preds = %.lr.ph137, %bb.t
  %indvars.iv149 = phi i64 [ %indvars.iv.next150.1, %bb.t ], [ 0, %.lr.ph137 ] ; 3 uses
  %.078136 = phi i32 [ %.179.1, %bb.t ], [ 0, %.lr.ph137 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.t ], [ 0, %.lr.ph137 ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv149
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !9  ; 2 uses
  %.val107 = load i32, ptr %i.bd, align 4, !tbaa !49
  %i.bv = icmp slt i32 %i.bu, %.val107
  br i1 %i.bv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph137.new
  %i.bw = add nsw i32 %.078136, 1
  %.val111 = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.bx = sext i32 %i.bu to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %.val111, i64 %i.bx
  store i32 %.078136, ptr %i.by, align 4, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph137.new, %bb.q
  %.179 = phi i32 [ %i.bw, %bb.q ], [ %.078136, %.lr.ph137.new ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv149
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !9  ; 2 uses
  %.val107.1 = load i32, ptr %i.bd, align 4, !tbaa !49
  %i.cc = icmp slt i32 %i.cb, %.val107.1
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = add nsw i32 %.179, 1
  %.val111.1 = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.ce = sext i32 %i.cb to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %.val111.1, i64 %i.ce
  store i32 %.179, ptr %i.cf, align 4, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.179.1 = phi i32 [ %i.cd, %bb.s ], [ %.179, %bb.r ] ; 2 uses
  %indvars.iv.next150.1 = add nuw nsw i64 %indvars.iv149, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph137.new, !llvm.loop !63

._crit_edge.unr-lcssa:                            ; preds = %bb.t
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph137
  %indvars.iv149.epil.init = phi i64 [ 0, %.lr.ph137 ], [ %indvars.iv.next150.1, %._crit_edge.unr-lcssa ]
  %.078136.epil.init = phi i32 [ 0, %.lr.ph137 ], [ %.179.1, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod180)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv149.epil.init
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !9  ; 2 uses
  %.val107.epil = load i32, ptr %i.bd, align 4, !tbaa !49
  %i.ci = icmp slt i32 %i.ch, %.val107.epil
  br i1 %i.ci, label %bb.u, label %._crit_edge

bb.u:                                             ; preds = %.epil.preheader
  %.val111.epil = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.cj = sext i32 %i.ch to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %.val111.epil, i64 %i.cj
  store i32 %.078136.epil.init, ptr %i.ck, align 4, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.u, %._crit_edge.unr-lcssa
  %.val112 = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.cl = tail call ptr @Extra_TransferPermute(ptr noundef %.084, ptr noundef %i.ah, ptr noundef nonnull %i.bh, ptr noundef %.val112) #18 ; 2 uses
  store ptr %i.cl, ptr %i.bf, align 8, !tbaa !8
  tail call void @Cudd_Ref(ptr noundef %i.cl) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %.084, ptr noundef nonnull %i.bh) #18
  store i32 0, ptr %i.am, align 4, !tbaa !42
  %i.cm = getelementptr i8, ptr %i.at, i64 32
  br label %bb.v

.preheader.critedge:                              ; preds = %Vec_IntFill.exit
  %.val112.c = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.cn = tail call ptr @Extra_TransferPermute(ptr noundef %.084, ptr noundef %i.ah, ptr noundef nonnull %i.bh, ptr noundef %.val112.c) #18 ; 2 uses
  store ptr %i.cn, ptr %i.bf, align 8, !tbaa !8
  tail call void @Cudd_Ref(ptr noundef %i.cn) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %.084, ptr noundef nonnull %i.bh) #18
  store i32 0, ptr %i.am, align 4, !tbaa !42
  br label %.preheader

.preheader:                                       ; preds = %bb.af, %.preheader.critedge
  %.val105141 = load i32, ptr %i.bd, align 4, !tbaa !49
  %i.co = icmp sgt i32 %.val105141, 0
  br i1 %i.co, label %.lr.ph143, label %.loopexit

.lr.ph143:                                        ; preds = %.preheader
  %.val113 = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.cp = getelementptr i8, ptr %i.at, i64 32
  %.val110 = load ptr, ptr %i.cp, align 8, !tbaa !44
  br label %bb.ag

bb.v:                                             ; preds = %._crit_edge, %bb.af
  %i.cq = phi i32 [ 0, %._crit_edge ], [ %i.do, %bb.af ] ; 8 uses
  %indvars.iv152 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next153, %bb.af ] ; 2 uses
  %i.cr = load ptr, ptr %i.ao, align 8, !tbaa !50
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv152
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !9  ; 2 uses
  %.val106 = load i32, ptr %i.bd, align 4, !tbaa !49
end_hunk_0
begin_hunk_1_@Abc_NtkLogicMakeDirectSops:bb.a
  br i1 %.not.i.not, label %bb.d, label %Abc_ObjIsBarBuf.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.g, i64 28
  %.val6.i = load i32, ptr %i.m, align 4, !tbaa !42
  %i.n = icmp eq i32 %.val6.i, 1
  br i1 %i.n, label %Abc_ObjIsBarBuf.exit, label %Abc_ObjIsBarBuf.exit.thread

Abc_ObjIsBarBuf.exit:                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !8
  %.not66 = icmp eq ptr %i.p, null
  br i1 %.not66, label %bb.e, label %Abc_ObjIsBarBuf.exit.thread

Abc_ObjIsBarBuf.exit.thread:                      ; preds = %bb.c, %bb.d, %Abc_ObjIsBarBuf.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.s = tail call i32 @Abc_SopIsComplement(ptr noundef %i.r) #18
  %.not41 = icmp eq i32 %i.s, 0
  br i1 %.not41, label %Abc_ObjIsBarBuf.exit.thread._crit_edge, label %.critedge

Abc_ObjIsBarBuf.exit.thread._crit_edge:           ; preds = %Abc_ObjIsBarBuf.exit.thread
  %.pre80 = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %Abc_ObjIsBarBuf.exit.thread._crit_edge, %bb.b, %.lr.ph, %Abc_ObjIsBarBuf.exit
  %i.t = phi ptr [ %.pre80, %Abc_ObjIsBarBuf.exit.thread._crit_edge ], [ %i.d, %bb.b ], [ %i.d, %.lr.ph ], [ %i.d, %Abc_ObjIsBarBuf.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %.val48 = load i32, ptr %i.u, align 4, !tbaa !36
  %i.v = sext i32 %.val48 to i64
  %.not43 = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %.not43, label %.lr.ph, label %.critedge47, !llvm.loop !88

.critedge:                                        ; preds = %Abc_ObjIsBarBuf.exit.thread
  %i.w = tail call i32 @Abc_NtkGetFaninMax(ptr noundef nonnull %0) #18 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %i.y = tail call ptr @Cudd_Init(i32 noundef %i.w, i32 noundef 0, i32 noundef 256, i32 noundef 262144, i64 noundef 0) #18 ; 4 uses
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 0, ptr %i.aa, align 4, !tbaa !72
  store i32 100, ptr %i.z, align 8, !tbaa !69
  %i.ab = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #19 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !71
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.val73 = load i32, ptr %i.ae, align 4, !tbaa !36
  %i.af = icmp sgt i32 %.val73, 0
  br i1 %i.af, label %.lr.ph75, label %.critedge2

.lr.ph75:                                         ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph75, %bb.m
  %indvars.iv77 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next78, %bb.m ] ; 2 uses
  %i.ah = phi ptr [ %i.ad, %.lr.ph75 ], [ %i.bc, %bb.m ]
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val49.val = load ptr, ptr %i.ai, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.val49.val, i64 %indvars.iv77
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40 ; 7 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr i8, ptr %i.ak, i64 20
  %.val51 = load i32, ptr %i.am, align 4
  %i.an = and i32 %.val51, 15
  %.not67 = icmp eq i32 %i.an, 7
  br i1 %.not67, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !45
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %.val5.i54 = load i32, ptr %i.ap, align 4, !tbaa !48
  %.not.i55.not = icmp eq i32 %.val5.i54, 4
  br i1 %.not.i55.not, label %bb.k, label %Abc_ObjIsBarBuf.exit59.thread

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr i8, ptr %i.ak, i64 28
  %.val6.i58 = load i32, ptr %i.aq, align 4, !tbaa !42
  %i.ar = icmp eq i32 %.val6.i58, 1
  br i1 %i.ar, label %Abc_ObjIsBarBuf.exit59, label %Abc_ObjIsBarBuf.exit59.thread

Abc_ObjIsBarBuf.exit59:                           ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8
  %.not68 = icmp eq ptr %i.at, null
  br i1 %.not68, label %bb.m, label %Abc_ObjIsBarBuf.exit59.thread

Abc_ObjIsBarBuf.exit59.thread:                    ; preds = %bb.j, %bb.k, %Abc_ObjIsBarBuf.exit59
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.aw = tail call i32 @Abc_SopIsComplement(ptr noundef %i.av) #18
  %.not46 = icmp eq i32 %i.aw, 0
  br i1 %.not46, label %bb.m, label %bb.l

bb.l:                                             ; preds = %Abc_ObjIsBarBuf.exit59.thread
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.ay = tail call ptr @Abc_ConvertSopToBdd(ptr noundef %i.y, ptr noundef %i.ax, ptr noundef null) ; 4 uses
  tail call void @Cudd_Ref(ptr noundef %i.ay) #18
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !67
  %i.ba = getelementptr i8, ptr %i.ak, i64 28
  %.val53 = load i32, ptr %i.ba, align 4, !tbaa !49
  %i.bb = tail call ptr @Abc_ConvertBddToSop(ptr noundef %i.az, ptr noundef %i.y, ptr noundef %i.ay, ptr noundef %i.ay, i32 noundef %.val53, i32 noundef 0, ptr noundef nonnull %i.z, i32 noundef 1)
  store ptr %i.bb, ptr %i.au, align 8, !tbaa !8
  tail call void @Cudd_RecursiveDeref(ptr noundef %i.y, ptr noundef %i.ay) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.h, %bb.l, %Abc_ObjIsBarBuf.exit59.thread, %Abc_ObjIsBarBuf.exit59
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %.val = load i32, ptr %i.bd, align 4, !tbaa !36
  %i.be = sext i32 %.val to i64
  %i.bf = icmp slt i64 %indvars.iv.next78, %i.be
  br i1 %i.bf, label %bb.h, label %.critedge2.loopexit, !llvm.loop !89

.critedge2.loopexit:                              ; preds = %bb.m
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !71
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.g
  %i.bg = phi ptr [ %.pre, %.critedge2.loopexit ], [ %i.ab, %bb.g ] ; 2 uses
  %.not.i60 = icmp eq ptr %i.bg, null
  br i1 %.not.i60, label %Vec_StrFree.exit, label %bb.n

bb.n:                                             ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %i.bg) #18
  br label %Vec_StrFree.exit

Vec_StrFree.exit:                                 ; preds = %.critedge2, %bb.n
  tail call void @free(ptr noundef nonnull %i.z) #18
  tail call void @Extra_StopManager(ptr noundef %i.y) #18
  br label %.critedge47

.critedge47:                                      ; preds = %bb.e, %bb.a, %Vec_StrFree.exit
  ret void
}

declare i32 @Abc_SopIsComplement(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @Abc_CountZddCubes_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.i = icmp eq ptr %1, %i.h
  %i.j = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %2, align 4, !tbaa !9
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = icmp sgt i32 %i.j, 1000000
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @extraDecomposeCover(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #18
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !12
  call void @Abc_CountZddCubes_rec(ptr noundef nonnull %0, ptr noundef %i.m, ptr noundef nonnull %2)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !12
  call void @Abc_CountZddCubes_rec(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef nonnull %2)
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !12
  call void @Abc_CountZddCubes_rec(ptr noundef nonnull %0, ptr noundef %i.o, ptr noundef nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Abc_NtkAigToBdd(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @Abc_NtkGetFaninMax(ptr noundef %0) #18 ; 11 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @Cudd_Init(i32 noundef %i.a, i32 noundef 0, i32 noundef 256, i32 noundef 262144, i64 noundef 0) #18 ; 3 uses
  %i.d = tail call ptr @Cudd_Init(i32 noundef %i.a, i32 noundef 0, i32 noundef 256, i32 noundef 262144, i64 noundef 0) #18 ; 11 uses
  tail call void @Cudd_AutodynEnable(ptr noundef %i.d, i32 noundef 6) #18
  %i.e = add i32 %i.a, -1
  %or.cond.i = icmp ult i32 %i.e, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.a ; 4 uses
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = sext i32 %spec.store.select.i to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #19
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.c, %bb.d
  %i.i = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = icmp sgt i32 %i.a, 0                     ; 2 uses
  br i1 %i.l, label %.lr.ph.preheader, label %.preheader101

.lr.ph.preheader:                                 ; preds = %Vec_IntAlloc.exit
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

.preheader101:                                    ; preds = %.lr.ph, %Vec_IntAlloc.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19   ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %.val112 = load i32, ptr %i.o, align 4, !tbaa !36
  %i.p = icmp sgt i32 %.val112, 0
  br i1 %i.p, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %.preheader101
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 336 ; 2 uses
  %wide.trip.count120 = zext i32 %i.a to i64      ; 2 uses
  %wide.trip.count125 = zext nneg i32 %i.a to i64
  %xtraiter = and i64 %wide.trip.count120, 1
  %i.r = icmp eq i32 %i.a, 1
  %unroll_iter = and i64 %wide.trip.count120, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod166 = trunc i32 %i.a to i1
  br label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = tail call ptr @Cudd_bddIthVar(ptr noundef %i.d, i32 noundef %i.s) #18
  %.val84 = load ptr, ptr %i.k, align 8, !tbaa !90
  %i.u = getelementptr i8, ptr %.val84, i64 8
  %.val84.val = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val84.val, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40
  store ptr %i.t, ptr %i.w, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader101, label %.lr.ph, !llvm.loop !95

bb.e:                                             ; preds = %.lr.ph114, %.loopexit
  %.val82139 = phi ptr [ %i.i, %.lr.ph114 ], [ %.val82140, %.loopexit ] ; 4 uses
  %i.x = phi ptr [ %i.i, %.lr.ph114 ], [ %i.ee, %.loopexit ] ; 4 uses
  %i.y = phi i32 [ %spec.store.select.i, %.lr.ph114 ], [ %i.ef, %.loopexit ] ; 4 uses
  %.val81133 = phi ptr [ %i.i, %.lr.ph114 ], [ %.val81134, %.loopexit ] ; 4 uses
  %i.z = phi ptr [ %i.i, %.lr.ph114 ], [ %i.eg, %.loopexit ] ; 6 uses
  %i.aa = phi i32 [ %spec.store.select.i, %.lr.ph114 ], [ %i.eh, %.loopexit ] ; 5 uses
  %indvars.iv130 = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next131, %.loopexit ] ; 2 uses
  %i.ab = phi ptr [ %i.n, %.lr.ph114 ], [ %i.ei, %.loopexit ]
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val73.val = load ptr, ptr %i.ac, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val73.val, i64 %indvars.iv130
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40 ; 9 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %i.ae, i64 20
  %.val74 = load i32, ptr %i.ag, align 4
  %i.ah = and i32 %.val74, 15
  %.not = icmp eq i32 %i.ah, 7
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val5.i = load i32, ptr %i.aj, align 4, !tbaa !48
  %.not.i85.not = icmp eq i32 %.val5.i, 4
  br i1 %.not.i85.not, label %bb.h, label %Abc_ObjIsBarBuf.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr i8, ptr %i.ae, i64 28
  %.val6.i = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.al = icmp eq i32 %.val6.i, 1
  br i1 %i.al, label %Abc_ObjIsBarBuf.exit, label %Abc_ObjIsBarBuf.exit.thread

Abc_ObjIsBarBuf.exit:                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !8
  %.not100 = icmp eq ptr %i.an, null
  br i1 %.not100, label %.loopexit, label %Abc_ObjIsBarBuf.exit.thread

Abc_ObjIsBarBuf.exit.thread:                      ; preds = %bb.g, %bb.h, %Abc_ObjIsBarBuf.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !8
  %i.aq = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.ar = and i64 %i.aq, -2
  %i.as = inttoptr i64 %i.ar to ptr               ; 4 uses
  %i.at = getelementptr i8, ptr %i.as, i64 32
  %.val.i86 = load i32, ptr %i.at, align 8
  %i.au = and i32 %.val.i86, 7
  %.not.i87 = icmp eq i32 %i.au, 1
  br i1 %.not.i87, label %bb.i, label %bb.j

bb.i:                                             ; preds = %Abc_ObjIsBarBuf.exit.thread
  %i.av = tail call ptr @Cudd_ReadOne(ptr noundef %i.d) #18
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = and i64 %i.aq, 1
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = inttoptr i64 %i.ay to ptr
  br label %Abc_ConvertAigToBdd.exit

bb.j:                                             ; preds = %Abc_ObjIsBarBuf.exit.thread
  tail call void @Abc_ConvertAigToBdd_rec1(ptr noundef %i.d, ptr noundef nonnull %i.as)
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = and i64 %i.aq, 1
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = inttoptr i64 %i.bd to ptr               ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.be) #18
  tail call void @Abc_ConvertAigToBdd_rec2(ptr noundef %i.d, ptr noundef nonnull %i.as)
  tail call void @Cudd_Deref(ptr noundef %i.be) #18
  br label %Abc_ConvertAigToBdd.exit

Abc_ConvertAigToBdd.exit:                         ; preds = %bb.i, %bb.j
  %.0.i = phi ptr [ %i.az, %bb.i ], [ %i.be, %bb.j ] ; 6 uses
  %i.bf = icmp eq ptr %.0.i, null
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Abc_ConvertAigToBdd.exit
  %puts72 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %bb.ag

bb.l:                                             ; preds = %Abc_ConvertAigToBdd.exit
  tail call void @Cudd_Ref(ptr noundef nonnull %.0.i) #18
  %i.bg = getelementptr i8, ptr %i.ae, i64 28     ; 7 uses
  %.val78 = load i32, ptr %i.bg, align 4, !tbaa !49 ; 8 uses
  %.not.i.i = icmp slt i32 %i.aa, %.val78
  br i1 %.not.i.i, label %bb.m, label %Vec_IntGrow.exit.i

bb.m:                                             ; preds = %bb.l
  %.not9.i.i = icmp eq ptr %i.z, null
  %i.bh = sext i32 %.val78 to i64
  %i.bi = shl nsw i64 %i.bh, 2                    ; 2 uses
  br i1 %.not9.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.bi) #20 ; 4 uses
  br label %Vec_IntGrow.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bk = tail call noalias ptr @malloc(i64 noundef %i.bi) #19 ; 4 uses
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.n, %bb.o, %bb.l
  %.val82145 = phi ptr [ %.val82139, %bb.l ], [ %i.bj, %bb.n ], [ %i.bk, %bb.o ] ; 2 uses
  %i.bl = phi ptr [ %i.x, %bb.l ], [ %i.bj, %bb.n ], [ %i.bk, %bb.o ] ; 2 uses
  %i.bm = phi i32 [ %i.y, %bb.l ], [ %.val78, %bb.n ], [ %.val78, %bb.o ] ; 2 uses
  %.val81 = phi ptr [ %.val81133, %bb.l ], [ %i.bj, %bb.n ], [ %i.bk, %bb.o ] ; 6 uses
  %.val80 = phi ptr [ %i.z, %bb.l ], [ %i.bj, %bb.n ], [ %i.bk, %bb.o ] ; 4 uses
  %i.bn = phi i32 [ %i.aa, %bb.l ], [ %.val78, %bb.n ], [ %.val78, %bb.o ] ; 2 uses
  %i.bo = icmp sgt i32 %.val78, 0
  br i1 %i.bo, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %wide.trip.count.i = zext nneg i32 %.val78 to i64
  %i.bp = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.val80, i8 -1, i64 %i.bp, i1 false), !tbaa !9
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %.lr.ph.i, %Vec_IntGrow.exit.i
  br i1 %i.l, label %.lr.ph105, label %.preheader.critedge

.lr.ph105:                                        ; preds = %Vec_IntFill.exit
  %i.bq = load ptr, ptr %i.q, align 8, !tbaa !50  ; 3 uses
  br i1 %i.r, label %.epil.preheader, label %.lr.ph105.new

.lr.ph105.new:                                    ; preds = %.lr.ph105, %bb.s
  %indvars.iv117 = phi i64 [ %indvars.iv.next118.1, %bb.s ], [ 0, %.lr.ph105 ] ; 3 uses
  %.0104 = phi i32 [ %.1.1, %bb.s ], [ 0, %.lr.ph105 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.s ], [ 0, %.lr.ph105 ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv117
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !9  ; 2 uses
  %.val77 = load i32, ptr %i.bg, align 4, !tbaa !49
  %i.bt = icmp slt i32 %i.bs, %.val77
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph105.new
  %i.bu = add nsw i32 %.0104, 1
  %i.bv = sext i32 %i.bs to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %.val80, i64 %i.bv
  store i32 %.0104, ptr %i.bw, align 4, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph105.new, %bb.p
  %.1 = phi i32 [ %i.bu, %bb.p ], [ %.0104, %.lr.ph105.new ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv117
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !9  ; 2 uses
  %.val77.1 = load i32, ptr %i.bg, align 4, !tbaa !49
  %i.ca = icmp slt i32 %i.bz, %.val77.1
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = add nsw i32 %.1, 1
  %i.cc = sext i32 %i.bz to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %.val80, i64 %i.cc
  store i32 %.1, ptr %i.cd, align 4, !tbaa !9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.1 = phi i32 [ %i.cb, %bb.r ], [ %.1, %bb.q ] ; 2 uses
  %indvars.iv.next118.1 = add nuw nsw i64 %indvars.iv117, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph105.new, !llvm.loop !96

._crit_edge.unr-lcssa:                            ; preds = %bb.s
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph105
  %indvars.iv117.epil.init = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next118.1, %._crit_edge.unr-lcssa ]
  %.0104.epil.init = phi i32 [ 0, %.lr.ph105 ], [ %.1.1, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod166)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv117.epil.init
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !9  ; 2 uses
  %.val77.epil = load i32, ptr %i.bg, align 4, !tbaa !49
  %i.cg = icmp slt i32 %i.cf, %.val77.epil
  br i1 %i.cg, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %.epil.preheader
  %i.ch = sext i32 %i.cf to i64
end_hunk_1
