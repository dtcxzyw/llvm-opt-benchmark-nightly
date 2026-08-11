inline.NumInlined: 288
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@Abc_BSEvalCreateCofactorSets:bb.a
Vec_WrdStartTruthTables6.exit:                    ; preds = %..loopexit28_crit_edge.us.us.i, %Vec_WrdStart.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ax = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  store i32 0, ptr %i.ay, align 4, !tbaa !34
  store i32 1000, ptr %i.ax, align 8, !tbaa !35
  %i.az = tail call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !30
  %i.bb = add nsw i32 %0, 1                       ; 3 uses
  %i.bc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 6 uses
  %or.cond.i.i = icmp ult i32 %0, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %i.bb ; 4 uses
  store i32 %spec.store.select.i.i, ptr %i.bc, align 8, !tbaa !82
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
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !84
  store i32 %i.bb, ptr %i.bg, align 4, !tbaa !165
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
  %.val = load i32, ptr %i.ay, align 4, !tbaa !34
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
  %.pre.i.i = load i32, ptr %i.bc, align 8, !tbaa !82
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.bq) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bt = phi i32 [ %.pre.i.i, %bb.f ], [ %i.bj, %bb.g ] ; 2 uses
  %i.bu = phi ptr [ %i.br, %bb.f ], [ %i.bs, %bb.g ] ; 3 uses
  store ptr %i.bu, ptr %i.bh, align 8, !tbaa !84
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = sub nsw i32 %i.bo, %i.bt
  %i.by = sext i32 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bw, i8 0, i64 %i.bz, i1 false)
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !82
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.h, %bb.d
  %.val.i25 = phi ptr [ %i.bu, %bb.h ], [ %.val.i23, %bb.d ]
  %i.ca = phi i32 [ %i.bo, %bb.h ], [ %i.bj, %bb.d ]
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !165
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !166

._crit_edge:                                      ; preds = %Vec_WecPushTwo.exit, %Vec_WecStart.exit
  %.not.i19 = icmp eq ptr %i.r, null
  br i1 %.not.i19, label %Vec_WrdFree.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.r) #28
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %._crit_edge, %bb.i
  tail call void @free(ptr noundef nonnull %i.m) #28
  store ptr %i.bc, ptr %1, align 8, !tbaa !80
  ret ptr %i.ax
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #15

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 1, 101) i32 @Abc_SharedEvalBest(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 noundef %6, i32 %7, ptr nofree noundef writeonly captures(none) %8, ptr nofree noundef writeonly captures(none) %9, ptr nofree noundef captures(address_is_null) %10) local_unnamed_addr #3 {
bb.a:
  %i.a = sub nsw i32 %2, %4                       ; 3 uses
  %i.b = icmp slt i32 %i.a, 7                     ; 2 uses
  %i.c = add nsw i32 %i.a, -6                     ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  %i.e = select i1 %i.b, i32 1, i32 %i.d          ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub nsw i32 32, %3
  %i.g = lshr i32 -1, %i.f
  %i.h = add i32 %3, %4
  %i.i = sub i32 %2, %i.h
  %i.j = shl i32 %i.g, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4624
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4632
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4648
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4640
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75
  %i.t = tail call i32 @Abc_TtGetCMInt(ptr noundef %1, i32 noundef %2, i32 noundef %4, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, ptr noundef %10) ; 4 uses
  %i.u = sub nsw i32 %i.a, %6                     ; 2 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4656
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4848
  %i.z = shl nuw i32 1, %6                        ; 2 uses
  %i.aa = icmp sgt i32 %i.t, 0
  %wide.trip.count.i.i.i = zext i32 %i.e to i64   ; 3 uses
  %wide.trip.count.i.i = zext i32 %i.t to i64     ; 2 uses
  %i.ab = icmp sgt i32 %i.e, 0
  %or.cond.i = and i1 %i.ab, %i.aa
  %i.ac = select i1 %i.b, i32 0, i32 %i.c
  %i.ad = zext nneg i32 %i.ac to i64              ; 4 uses
  %or.cond.i.fr = freeze i1 %or.cond.i
  br i1 %or.cond.i.fr, label %.lr.ph.split.us.preheader, label %.critedge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ae = zext nneg i32 %i.u to i64
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.af = icmp eq i32 %i.t, 1
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod143 = trunc i32 %i.t to i1
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge.us
  %indvars.iv130 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next131, %._crit_edge.us ] ; 4 uses
  %.094.us = phi i32 [ 100, %.lr.ph.split.us.preheader ], [ %.1.lcssa.us, %._crit_edge.us ] ; 3 uses
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !167
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val71.us = load ptr, ptr %i.ak, align 8, !tbaa !84
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.val71.us, i64 %indvars.iv130 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4      ; 2 uses
  %.val78.us = load i32, ptr %i.am, align 4, !tbaa !14 ; 2 uses
  %i.an = icmp sgt i32 %.val78.us, 1
  br i1 %i.an, label %.critedge2.lr.ph.us, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %Abc_BSEvalCountUniqueMax.exit.thread.us86.us, %.critedge2.lr.ph.us, %.lr.ph.split.us
  %.1.lcssa.us = phi i32 [ %.094.us, %.lr.ph.split.us ], [ %.094.us, %.critedge2.lr.ph.us ], [ %.2.us87.us, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us ] ; 3 uses
  %.not65.us = icmp sgt i32 %.1.lcssa.us, %6
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next131, %i.ae
  %or.cond = and i1 %.not65.us, %i.ao
  br i1 %or.cond, label %.lr.ph.split.us, label %.critedge, !llvm.loop !168

.critedge2.lr.ph.us:                              ; preds = %.lr.ph.split.us
  %i.ap = getelementptr i8, ptr %i.al, i64 8
  %.val69.us = load ptr, ptr %i.ap, align 8, !tbaa !18
  %i.aq = trunc nuw nsw i64 %indvars.iv130 to i32 ; 2 uses
  %i.ar = shl nuw nsw i32 1, %i.aq
  %.not27.i.us = icmp eq i64 %indvars.iv130, 31
  %wide.trip.count.i.us = zext nneg i32 %i.ar to i64
  br i1 %.not27.i.us, label %._crit_edge.us, label %.critedge2.us81.us

.critedge2.us81.us:                               ; preds = %.critedge2.lr.ph.us, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us
  %.val.us88.us133 = phi i32 [ %.val.us88.us, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us ], [ %.val78.us, %.critedge2.lr.ph.us ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us ], [ 0, %.critedge2.lr.ph.us ] ; 2 uses
  %.180.us82.us = phi i32 [ %.2.us87.us, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us ], [ %.094.us, %.critedge2.lr.ph.us ] ; 5 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val69.us, i64 %indvars.iv ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !10 ; 2 uses
  %i.au = and i32 %i.at, %i.k
  %.not66.us84.us = icmp eq i32 %i.au, 0
  br i1 %.not66.us84.us, label %.lr.ph.i.us.us, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us

.lr.ph.i.us.us:                                   ; preds = %.critedge2.us81.us
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !10
  %i.ax = load i32, ptr %i.x, align 8, !tbaa !167
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !88
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val70.us85.us = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bc = sext i32 %i.aw to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.val70.us85.us, i64 %i.bc
  br label %.lr.ph.i.us.us.i.us.us

.lr.ph.i.us.us.i.us.us:                           ; preds = %bb.g, %.lr.ph.i.us.us
  %indvars.iv.i.us.us = phi i64 [ 0, %.lr.ph.i.us.us ], [ %indvars.iv.next.i.us.us, %bb.g ] ; 2 uses
  %.01722.us.us.i.us.us = phi i32 [ 0, %.lr.ph.i.us.us ], [ %i.ce, %bb.g ]
  %i.be = shl nuw i64 %indvars.iv.i.us.us, %i.ad
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be ; 3 uses
  br i1 %i.af, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.epil.preheader, label %.lr.ph.preheader.i.us.i.us.us.i.us.us

.lr.ph.preheader.i.us.i.us.us.i.us.us:            ; preds = %.lr.ph.i.us.us.i.us.us, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1
  %indvars.iv.i.us.us.i.us.us = phi i64 [ %indvars.iv.next.i.us.us.i.us.us.1, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1 ], [ 0, %.lr.ph.i.us.us.i.us.us ] ; 3 uses
  %.011.us.i.us.us.i.us.us = phi i32 [ %i.bv, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1 ], [ 0, %.lr.ph.i.us.us.i.us.us ]
  %niter = phi i64 [ %niter.next.1, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1 ], [ 0, %.lr.ph.i.us.us.i.us.us ]
  %i.bg = shl nuw i64 %indvars.iv.i.us.us.i.us.us, %i.ad
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.bg
  br label %.lr.ph.i.us.i.us.us.i.us.us

.lr.ph.i.us.i.us.us.i.us.us:                      ; preds = %bb.d, %.lr.ph.preheader.i.us.i.us.us.i.us.us
  %indvars.iv.i.us.i.us.us.i.us.us = phi i64 [ 0, %.lr.ph.preheader.i.us.i.us.us.i.us.us ], [ %indvars.iv.next.i.us.i.us.us.i.us.us, %bb.d ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i.us.i.us.us.i.us.us
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.us.i.us.us.i.us.us
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !8
  %i.bm = and i64 %i.bl, %i.bj
  %.not.i.us.i.us.us.i.us.us = icmp eq i64 %i.bm, 0
  br i1 %.not.i.us.i.us.us.i.us.us, label %bb.d, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us

bb.d:                                             ; preds = %.lr.ph.i.us.i.us.us.i.us.us
  %indvars.iv.next.i.us.i.us.us.i.us.us = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.us.i.us.us.i.us.us, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us, label %.lr.ph.i.us.i.us.us.i.us.us, !llvm.loop !169

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us: ; preds = %bb.d, %.lr.ph.i.us.i.us.us.i.us.us
  %.015.i.ph.us.i.us.us.i.us.us = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us ], [ 0, %bb.d ]
  %i.bn = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us, %.011.us.i.us.us.i.us.us
  %indvars.iv.next.i.us.us.i.us.us = or disjoint i64 %indvars.iv.i.us.us.i.us.us, 1
  %i.bo = shl nuw i64 %indvars.iv.next.i.us.us.i.us.us, %i.ad
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.bo
  br label %.lr.ph.i.us.i.us.us.i.us.us.1

.lr.ph.i.us.i.us.us.i.us.us.1:                    ; preds = %bb.e, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us
  %indvars.iv.i.us.i.us.us.i.us.us.1 = phi i64 [ 0, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.1, %bb.e ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i.us.i.us.us.i.us.us.1
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.us.i.us.us.i.us.us.1
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !8
  %i.bu = and i64 %i.bt, %i.br
  %.not.i.us.i.us.us.i.us.us.1 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.us.i.us.us.i.us.us.1, label %bb.e, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1

bb.e:                                             ; preds = %.lr.ph.i.us.i.us.us.i.us.us.1
  %indvars.iv.next.i.us.i.us.us.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.1, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.1, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.1, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1, label %.lr.ph.i.us.i.us.us.i.us.us.1, !llvm.loop !169

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1: ; preds = %bb.e, %.lr.ph.i.us.i.us.us.i.us.us.1
  %.015.i.ph.us.i.us.us.i.us.us.1 = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.1 ], [ 0, %bb.e ]
  %i.bv = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.1, %i.bn ; 3 uses
  %indvars.iv.next.i.us.us.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.i.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.unr-lcssa, label %.lr.ph.preheader.i.us.i.us.us.i.us.us, !llvm.loop !170

Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.unr-lcssa: ; preds = %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.1
  br i1 %lcmp.mod.not, label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.epil.preheader

.lr.ph.preheader.i.us.i.us.us.i.us.us.epil.preheader: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.unr-lcssa, %.lr.ph.i.us.us.i.us.us
  %indvars.iv.i.us.us.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.i.us.us ], [ %indvars.iv.next.i.us.us.i.us.us.1, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.unr-lcssa ]
  %.011.us.i.us.us.i.us.us.epil.init = phi i32 [ 0, %.lr.ph.i.us.us.i.us.us ], [ %i.bv, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %i.bw = shl nuw i64 %indvars.iv.i.us.us.i.us.us.epil.init, %i.ad
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.bw
  br label %.lr.ph.i.us.i.us.us.i.us.us.epil

.lr.ph.i.us.i.us.us.i.us.us.epil:                 ; preds = %bb.f, %.lr.ph.preheader.i.us.i.us.us.i.us.us.epil.preheader
  %indvars.iv.i.us.i.us.us.i.us.us.epil = phi i64 [ 0, %.lr.ph.preheader.i.us.i.us.us.i.us.us.epil.preheader ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.epil, %bb.f ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.i.us.i.us.us.i.us.us.epil
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.us.i.us.us.i.us.us.epil
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !8
  %i.cc = and i64 %i.cb, %i.bz
  %.not.i.us.i.us.us.i.us.us.epil = icmp eq i64 %i.cc, 0
  br i1 %.not.i.us.i.us.us.i.us.us.epil, label %bb.f, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.epil

bb.f:                                             ; preds = %.lr.ph.i.us.i.us.us.i.us.us.epil
  %indvars.iv.next.i.us.i.us.us.i.us.us.epil = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.epil, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.epil = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.epil, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.epil, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.epil, label %.lr.ph.i.us.i.us.us.i.us.us.epil, !llvm.loop !169

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.epil: ; preds = %bb.f, %.lr.ph.i.us.i.us.us.i.us.us.epil
  %.015.i.ph.us.i.us.us.i.us.us.epil = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.epil ], [ 0, %bb.f ]
  %i.cd = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.epil, %.011.us.i.us.us.i.us.us.epil.init
  br label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us

Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.unr-lcssa, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.epil
  %.lcssa = phi i32 [ %i.bv, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.unr-lcssa ], [ %i.cd, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.epil ] ; 2 uses
  %.not.us.us.i.us.us = icmp sgt i32 %.lcssa, %i.z
  br i1 %.not.us.us.i.us.us, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us, label %bb.g

bb.g:                                             ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us
  %i.ce = tail call noundef i32 @llvm.smax.i32(i32 %.01722.us.us.i.us.us, i32 %.lcssa) ; 6 uses
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us.us, label %Abc_BSEvalCountUniqueMax.exit.us.us, label %.lr.ph.i.us.us.i.us.us, !llvm.loop !171

Abc_BSEvalCountUniqueMax.exit.us.us:              ; preds = %bb.g
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = icmp sgt i32 %i.ce, %i.z
  %or.cond.us.us = or i1 %i.cf, %i.cg
  br i1 %or.cond.us.us, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us, label %bb.h

bb.h:                                             ; preds = %Abc_BSEvalCountUniqueMax.exit.us.us
  %i.ch = icmp samesign ult i32 %i.ce, 2
  %i.ci = add nsw i32 %i.ce, -1
  %i.cj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ci, i1 true)
  %i.ck = sub nuw nsw i32 32, %i.cj
  %.09.i72.us.us = select i1 %i.ch, i32 %i.ce, i32 %i.ck ; 3 uses
  %i.cl = icmp sle i32 %.09.i72.us.us, %6
  %i.cm = icmp sgt i32 %.180.us82.us, %.09.i72.us.us
  %or.cond67.us.us = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond67.us.us, label %bb.i, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us

bb.i:                                             ; preds = %bb.h
  store i32 %i.at, ptr %8, align 4, !tbaa !10
  store i32 %i.aq, ptr %9, align 4, !tbaa !10
  %.val.us88.us.pre = load i32, ptr %i.am, align 4, !tbaa !14
  br label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us

Abc_BSEvalCountUniqueMax.exit.thread.us86.us:     ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us, %bb.i, %bb.h, %Abc_BSEvalCountUniqueMax.exit.us.us, %.critedge2.us81.us
  %.val.us88.us = phi i32 [ %.val.us88.us133, %.critedge2.us81.us ], [ %.val.us88.us133, %Abc_BSEvalCountUniqueMax.exit.us.us ], [ %.val.us88.us.pre, %bb.i ], [ %.val.us88.us133, %bb.h ], [ %.val.us88.us133, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us ] ; 2 uses
  %.2.us87.us = phi i32 [ %.180.us82.us, %.critedge2.us81.us ], [ %.180.us82.us, %Abc_BSEvalCountUniqueMax.exit.us.us ], [ %.09.i72.us.us, %bb.i ], [ %.180.us82.us, %bb.h ], [ %.180.us82.us, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cn = or disjoint i64 %indvars.iv.next, 1
  %i.co = sext i32 %.val.us88.us to i64
  %i.cp = icmp slt i64 %i.cn, %i.co
  br i1 %i.cp, label %.critedge2.us81.us, label %._crit_edge.us, !llvm.loop !172

.critedge:                                        ; preds = %._crit_edge.us, %.lr.ph, %bb.c
  %.3 = phi i32 [ 100, %.lr.ph ], [ 100, %bb.c ], [ %.1.lcssa.us, %._crit_edge.us ]
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
  %i.g = load i32, ptr %i.e, align 8, !tbaa !90
  %.not = icmp eq i32 %i.g, %i.f
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.f, ptr %i.e, align 8, !tbaa !90
  %i.h = sub nsw i32 %4, %2                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.k
  %i.m = sext i32 %i.h to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call ptr @Abc_GenChasePairs(i32 noundef %i.f, i32 noundef %i.h)
  store ptr %i.q, ptr %i.n, align 8, !tbaa !78
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !167  ; 2 uses
end_hunk_0
begin_hunk_1_@Abc_TtFindBVarsSVars2:bb.a
  %.0322605 = phi i32 [ %2, %.lr.ph611 ], [ %.2324, %bb.ba ] ; 4 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %.val377, i64 %indvars.iv655 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !18 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 4 ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !14
  %i.ey = add nsw i32 %i.ex, -1                   ; 3 uses
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !14
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !10 ; 8 uses
  %i.fc = tail call noundef i32 @llvm.smin.i32(i32 %.0304607, i32 %i.fb) ; 2 uses
  br i1 %.not347, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fd = load i32, ptr %7, align 4, !tbaa !10
  %i.fe = tail call noundef i32 @llvm.smin.i32(i32 %i.fd, i32 %i.fb)
  store i32 %i.fe, ptr %7, align 4, !tbaa !10
  %.val370.pre = load i32, ptr %i.ew, align 4, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.val370 = phi i32 [ %.val370.pre, %bb.q ], [ %i.ey, %bb.p ] ; 2 uses
  %i.ff = icmp sgt i32 %.val370, 0
  br i1 %i.ff, label %.lr.ph582.preheader, label %.critedge3

.lr.ph582.preheader:                              ; preds = %bb.r
  %wide.trip.count644 = zext nneg i32 %.val370 to i64
  br label %.lr.ph582

.lr.ph582:                                        ; preds = %.lr.ph582.preheader, %Abc_TtMoveVar.exit
  %indvars.iv641 = phi i64 [ 0, %.lr.ph582.preheader ], [ %indvars.iv.next642, %Abc_TtMoveVar.exit ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv641
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !10
  %i.fi = add nsw i64 %indvars.iv641, %i.ei       ; 2 uses
  %i.fj = sext i32 %i.fh to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !10 ; 4 uses
  %i.fm = trunc nsw i64 %i.fi to i32              ; 3 uses
  %i.fn = icmp eq i32 %i.fl, %i.fm
  br i1 %i.fn, label %Abc_TtMoveVar.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph582
  tail call fastcc void @Abc_TtSwapVars(ptr noundef %i.ax, i32 noundef %2, i32 noundef %i.fl, i32 noundef %i.fm)
  %i.fo = sext i32 %i.fl to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fo ; 4 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !10 ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fr
  store i32 %i.fm, ptr %i.fs, align 4, !tbaa !10
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fi ; 3 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !10 ; 2 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fv
  store i32 %i.fl, ptr %i.fw, align 4, !tbaa !10
  %i.fx = xor i32 %i.fu, %i.fq                    ; 2 uses
  store i32 %i.fx, ptr %i.fp, align 4, !tbaa !10
  %i.fy = load i32, ptr %i.ft, align 4, !tbaa !10
  %i.fz = xor i32 %i.fy, %i.fx                    ; 2 uses
  store i32 %i.fz, ptr %i.ft, align 4, !tbaa !10
  %i.ga = load i32, ptr %i.fp, align 4, !tbaa !10
  %i.gb = xor i32 %i.ga, %i.fz
  store i32 %i.gb, ptr %i.fp, align 4, !tbaa !10
  br label %Abc_TtMoveVar.exit

Abc_TtMoveVar.exit:                               ; preds = %.lr.ph582, %bb.s
  %indvars.iv.next642 = add nuw nsw i64 %indvars.iv641, 1 ; 2 uses
  %exitcond645.not = icmp eq i64 %indvars.iv.next642, %wide.trip.count644
  br i1 %exitcond645.not, label %.critedge3, label %.lr.ph582, !llvm.loop !200

.critedge3:                                       ; preds = %Abc_TtMoveVar.exit, %bb.r
  br i1 %.not357, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge3
  %i.gc = trunc nuw nsw i64 %indvars.iv655 to i32
  %i.gd = lshr i32 %i.gc, 1
  %i.ge = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.gd) ; 0 uses
  br i1 %i.dl, label %.lr.ph585, label %._crit_edge586

.lr.ph585:                                        ; preds = %bb.t, %.lr.ph585
  %.1300.in583 = phi i32 [ %.1300, %.lr.ph585 ], [ %3, %bb.t ] ; 2 uses
  %.1300 = add nsw i32 %.1300.in583, -1           ; 2 uses
  %i.gf = add nsw i32 %.1300, %i.d
  %i.gg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.gf) ; 0 uses
  %i.gh = icmp samesign ugt i32 %.1300.in583, 1
  br i1 %i.gh, label %.lr.ph585, label %._crit_edge586, !llvm.loop !201

._crit_edge586:                                   ; preds = %.lr.ph585, %bb.t
  %putchar358 = tail call i32 @putchar(i32 32)    ; 0 uses
  br i1 %.not359.not587, label %.lr.ph590, label %._crit_edge591

.lr.ph590:                                        ; preds = %._crit_edge586, %.lr.ph590
  %indvars.iv646 = phi i64 [ %indvars.iv.next647, %.lr.ph590 ], [ %i.ej, %._crit_edge586 ]
  %indvars.iv.next647 = add nsw i64 %indvars.iv646, -1 ; 3 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next647
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !10
  %i.gk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.gj) ; 0 uses
  %.not359.not = icmp sgt i64 %indvars.iv.next647, %i.ei
  br i1 %.not359.not, label %.lr.ph590, label %._crit_edge591, !llvm.loop !202

._crit_edge591:                                   ; preds = %.lr.ph590, %._crit_edge586
  %putchar360 = tail call i32 @putchar(i32 32)    ; 0 uses
  br i1 %i.dm, label %.lr.ph594, label %._crit_edge595

.lr.ph594:                                        ; preds = %._crit_edge591, %.lr.ph594
  %indvars.iv649 = phi i64 [ %indvars.iv.next650, %.lr.ph594 ], [ %i.ek, %._crit_edge591 ] ; 2 uses
  %indvars.iv.next650 = add nsw i64 %indvars.iv649, -1 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next650
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !10
  %i.gn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.gm) ; 0 uses
  %i.go = icmp samesign ugt i64 %indvars.iv649, 1
  br i1 %i.go, label %.lr.ph594, label %._crit_edge595, !llvm.loop !203

._crit_edge595:                                   ; preds = %.lr.ph594, %._crit_edge591
  %i.gp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.fb) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge595, %.critedge3
  %i.gq = add nsw i32 %i.fc, %8
  %.not361 = icmp sgt i32 %i.fb, %i.gq
  br i1 %.not361, label %bb.ay, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gr = icmp sgt i32 %i.fb, 2
  br i1 %i.gr, label %.preheader, label %bb.ae

.preheader:                                       ; preds = %bb.v
  br i1 %i.dn, label %.lr.ph600, label %._crit_edge601

._crit_edge601:                                   ; preds = %Abc_SharedEvalBest.exit.thread, %.preheader
  %.0516.lcssa = phi i32 [ 0, %.preheader ], [ %.5521526, %Abc_SharedEvalBest.exit.thread ] ; 2 uses
  %.0510.lcssa = phi i32 [ 0, %.preheader ], [ %.5515527, %Abc_SharedEvalBest.exit.thread ] ; 2 uses
  %.0314.lcssa = phi i32 [ 100, %.preheader ], [ %i.jq, %Abc_SharedEvalBest.exit.thread ] ; 3 uses
  br i1 %.not357, label %bb.ad, label %bb.ac

.lr.ph600:                                        ; preds = %.preheader, %Abc_SharedEvalBest.exit.thread
  %indvars.iv652 = phi i64 [ %indvars.iv.next653, %Abc_SharedEvalBest.exit.thread ], [ 1, %.preheader ] ; 6 uses
  %.0314598 = phi i32 [ %i.jq, %Abc_SharedEvalBest.exit.thread ], [ 100, %.preheader ] ; 3 uses
  %.0510597 = phi i32 [ %.5515527, %Abc_SharedEvalBest.exit.thread ], [ 0, %.preheader ] ; 3 uses
  %.0516596 = phi i32 [ %.5521526, %Abc_SharedEvalBest.exit.thread ], [ 0, %.preheader ] ; 3 uses
  %i.gs = load ptr, ptr %i.do, align 8, !tbaa !87 ; 4 uses
  %i.gt = load ptr, ptr %i.dy, align 8, !tbaa !70
  %i.gu = load ptr, ptr %i.dz, align 8, !tbaa !74
  %i.gv = load ptr, ptr %i.ea, align 8, !tbaa !76
  %i.gw = load ptr, ptr %i.eb, align 8, !tbaa !75
  %i.gx = tail call i32 @Abc_TtGetCMInt(ptr noundef readonly %i.ax, i32 noundef %2, i32 noundef %i.c, ptr noundef %i.gt, ptr noundef %i.gu, ptr noundef %i.gv, ptr noundef %i.gw, ptr noundef %i.gs) ; 4 uses
  %i.gy = sub nsw i64 %i.el, %indvars.iv652       ; 2 uses
  %i.gz = icmp sgt i64 %i.gy, 1
  br i1 %i.gz, label %.lr.ph.i378, label %Abc_SharedEvalBest.exit.thread

.lr.ph.i378:                                      ; preds = %.lr.ph600
  %i.ha = trunc nuw nsw i64 %indvars.iv652 to i32
  %i.hb = shl nuw i32 1, %i.ha                    ; 2 uses
  %i.hc = icmp sgt i32 %i.gx, 0
  %wide.trip.count.i.i.i = zext i32 %i.gx to i64  ; 2 uses
  %or.cond.i.i = and i1 %i.ee, %i.hc
  %or.cond.i.fr.i = freeze i1 %or.cond.i.i
  br i1 %or.cond.i.fr.i, label %.lr.ph.split.us.preheader.i, label %Abc_SharedEvalBest.exit.thread

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i378
  %i.hd = load i32, ptr %i.v, align 8, !tbaa !167
  %i.he = sext i32 %i.hd to i64                   ; 2 uses
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.he
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !80
  %i.hh = getelementptr i8, ptr %i.hg, i64 8
  %.val71.us.i = load ptr, ptr %i.hh, align 8, !tbaa !84
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.he
  %xtraiter797 = and i64 %wide.trip.count.i.i.i, 1
  %i.hj = icmp eq i32 %i.gx, 1
  %unroll_iter801 = and i64 %wide.trip.count.i.i.i, 4294967294
  %lcmp.mod798.not = icmp eq i64 %xtraiter797, 0
  %lcmp.mod800 = trunc i32 %i.gx to i1
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %._crit_edge.us.i, %.lr.ph.split.us.preheader.i
  %.1517 = phi i32 [ %.0516596, %.lr.ph.split.us.preheader.i ], [ %.2518, %._crit_edge.us.i ] ; 3 uses
  %.1511 = phi i32 [ %.0510597, %.lr.ph.split.us.preheader.i ], [ %.2512, %._crit_edge.us.i ] ; 3 uses
  %indvars.iv130.i = phi i64 [ 1, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next131.i, %._crit_edge.us.i ] ; 4 uses
  %.094.us.i = phi i32 [ 100, %.lr.ph.split.us.preheader.i ], [ %.1.lcssa.us.i, %._crit_edge.us.i ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %.val71.us.i, i64 %indvars.iv130.i ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 4
  %.val78.us.i = load i32, ptr %i.hl, align 4, !tbaa !14 ; 2 uses
  %i.hm = icmp sgt i32 %.val78.us.i, 1
  br i1 %i.hm, label %.critedge2.lr.ph.us.i, label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i, %.critedge2.lr.ph.us.i, %.lr.ph.split.us.i
  %.2518 = phi i32 [ %.1517, %.critedge2.lr.ph.us.i ], [ %.1517, %.lr.ph.split.us.i ], [ %.4520, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ] ; 2 uses
  %.2512 = phi i32 [ %.1511, %.critedge2.lr.ph.us.i ], [ %.1511, %.lr.ph.split.us.i ], [ %.4514, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ] ; 2 uses
  %.1.lcssa.us.i = phi i32 [ %.094.us.i, %.critedge2.lr.ph.us.i ], [ %.094.us.i, %.lr.ph.split.us.i ], [ %i.jm, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ] ; 4 uses
  %i.hn = sext i32 %.1.lcssa.us.i to i64
  %.not65.us.i = icmp slt i64 %indvars.iv652, %i.hn
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %i.ho = icmp samesign ult i64 %indvars.iv.next131.i, %i.gy
  %or.cond.i = and i1 %i.ho, %.not65.us.i
  br i1 %or.cond.i, label %.lr.ph.split.us.i, label %Abc_SharedEvalBest.exit, !llvm.loop !168

.critedge2.lr.ph.us.i:                            ; preds = %.lr.ph.split.us.i
  %i.hp = getelementptr i8, ptr %i.hk, i64 8
  %.val69.us.i = load ptr, ptr %i.hp, align 8, !tbaa !18
  %i.hq = trunc nuw nsw i64 %indvars.iv130.i to i32 ; 2 uses
  %i.hr = shl nuw nsw i32 1, %i.hq
  %.not27.i.us.i = icmp eq i64 %indvars.iv130.i, 31
  %wide.trip.count.i.us.i = zext nneg i32 %i.hr to i64
  br i1 %.not27.i.us.i, label %._crit_edge.us.i, label %.critedge2.us81.us.i.preheader

.critedge2.us81.us.i.preheader:                   ; preds = %.critedge2.lr.ph.us.i
  %i.hs = zext nneg i32 %.val78.us.i to i64
  br label %.critedge2.us81.us.i

.critedge2.us81.us.i:                             ; preds = %.critedge2.us81.us.i.preheader, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i
  %.3519 = phi i32 [ %.4520, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ], [ %.1517, %.critedge2.us81.us.i.preheader ] ; 4 uses
  %.3513 = phi i32 [ %.4514, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ], [ %.1511, %.critedge2.us81.us.i.preheader ] ; 4 uses
  %indvars.iv.i379 = phi i64 [ %indvars.iv.next.i380, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ], [ 0, %.critedge2.us81.us.i.preheader ] ; 2 uses
  %.180.us82.us.i = phi i32 [ %i.jm, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i ], [ %.094.us.i, %.critedge2.us81.us.i.preheader ] ; 5 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.val69.us.i, i64 %indvars.iv.i379 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !10 ; 2 uses
  %i.hv = and i32 %i.hu, %spec.select619
  %.not66.us84.us.i = icmp eq i32 %i.hv, 0
  br i1 %.not66.us84.us.i, label %.lr.ph.i.us.us.i, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.critedge2.us81.us.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !10
  %i.hy = load ptr, ptr %i.hi, align 8, !tbaa !88
  %i.hz = getelementptr i8, ptr %i.hy, i64 8
  %.val70.us85.us.i = load ptr, ptr %i.hz, align 8, !tbaa !30
  %i.ia = sext i32 %i.hx to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %.val70.us85.us.i, i64 %i.ia
  br label %.lr.ph.i.us.us.i.us.us.i

.lr.ph.i.us.us.i.us.us.i:                         ; preds = %bb.z, %.lr.ph.i.us.us.i
  %indvars.iv.i.us.us.i = phi i64 [ 0, %.lr.ph.i.us.us.i ], [ %indvars.iv.next.i.us.us.i, %bb.z ] ; 2 uses
  %.01722.us.us.i.us.us.i = phi i32 [ 0, %.lr.ph.i.us.us.i ], [ %i.jc, %bb.z ]
  %i.ic = shl nuw i64 %indvars.iv.i.us.us.i, %i.eg
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ic ; 3 uses
  br i1 %i.hj, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i.epil.preheader, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i

.lr.ph.preheader.i.us.i.us.us.i.us.us.i:          ; preds = %.lr.ph.i.us.us.i.us.us.i, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1
  %indvars.iv.i.us.us.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i.us.us.i.1, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1 ], [ 0, %.lr.ph.i.us.us.i.us.us.i ] ; 3 uses
  %.011.us.i.us.us.i.us.us.i = phi i32 [ %i.it, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1 ], [ 0, %.lr.ph.i.us.us.i.us.us.i ]
  %niter802 = phi i64 [ %niter802.next.1, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1 ], [ 0, %.lr.ph.i.us.us.i.us.us.i ]
  %i.ie = shl nuw i64 %indvars.iv.i.us.us.i.us.us.i, %i.eg
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.ie
  br label %.lr.ph.i.us.i.us.us.i.us.us.i

.lr.ph.i.us.i.us.us.i.us.us.i:                    ; preds = %bb.w, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i
  %indvars.iv.i.us.i.us.us.i.us.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.i, %bb.w ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.i.us.i.us.us.i.us.us.i
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !8
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.i.us.i.us.us.i.us.us.i
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !8
  %i.ik = and i64 %i.ij, %i.ih
  %.not.i.us.i.us.us.i.us.us.i = icmp eq i64 %i.ik, 0
  br i1 %.not.i.us.i.us.us.i.us.us.i, label %bb.w, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i

bb.w:                                             ; preds = %.lr.ph.i.us.i.us.us.i.us.us.i
  %indvars.iv.next.i.us.i.us.us.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.i, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i, label %.lr.ph.i.us.i.us.us.i.us.us.i, !llvm.loop !169

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i: ; preds = %bb.w, %.lr.ph.i.us.i.us.us.i.us.us.i
  %.015.i.ph.us.i.us.us.i.us.us.i = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.i ], [ 0, %bb.w ]
  %i.il = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.i, %.011.us.i.us.us.i.us.us.i
  %indvars.iv.next.i.us.us.i.us.us.i = or disjoint i64 %indvars.iv.i.us.us.i.us.us.i, 1
  %i.im = shl nuw i64 %indvars.iv.next.i.us.us.i.us.us.i, %i.eg
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.im
  br label %.lr.ph.i.us.i.us.us.i.us.us.i.1

.lr.ph.i.us.i.us.us.i.us.us.i.1:                  ; preds = %bb.x, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i
  %indvars.iv.i.us.i.us.us.i.us.us.i.1 = phi i64 [ 0, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.i.1, %bb.x ] ; 3 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv.i.us.i.us.us.i.us.us.i.1
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !8
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.i.us.i.us.us.i.us.us.i.1
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !8
  %i.is = and i64 %i.ir, %i.ip
  %.not.i.us.i.us.us.i.us.us.i.1 = icmp eq i64 %i.is, 0
  br i1 %.not.i.us.i.us.us.i.us.us.i.1, label %bb.x, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1

bb.x:                                             ; preds = %.lr.ph.i.us.i.us.us.i.us.us.i.1
  %indvars.iv.next.i.us.i.us.us.i.us.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.i.1, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.i.1 = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.i.1, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.i.1, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1, label %.lr.ph.i.us.i.us.us.i.us.us.i.1, !llvm.loop !169

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1: ; preds = %bb.x, %.lr.ph.i.us.i.us.us.i.us.us.i.1
  %.015.i.ph.us.i.us.us.i.us.us.i.1 = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.i.1 ], [ 0, %bb.x ]
  %i.it = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.i.1, %i.il ; 3 uses
  %indvars.iv.next.i.us.us.i.us.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.i.us.us.i, 2 ; 2 uses
  %niter802.next.1 = add i64 %niter802, 2         ; 2 uses
  %niter802.ncmp.1 = icmp eq i64 %niter802.next.1, %unroll_iter801
  br i1 %niter802.ncmp.1, label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i, !llvm.loop !170

Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa: ; preds = %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.1
  br i1 %lcmp.mod798.not, label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i.epil.preheader

.lr.ph.preheader.i.us.i.us.us.i.us.us.i.epil.preheader: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa, %.lr.ph.i.us.us.i.us.us.i
  %indvars.iv.i.us.us.i.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.i.us.us.i ], [ %indvars.iv.next.i.us.us.i.us.us.i.1, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa ]
  %.011.us.i.us.us.i.us.us.i.epil.init = phi i32 [ 0, %.lr.ph.i.us.us.i.us.us.i ], [ %i.it, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod800)
  %i.iu = shl nuw i64 %indvars.iv.i.us.us.i.us.us.i.epil.init, %i.eg
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.iu
  br label %.lr.ph.i.us.i.us.us.i.us.us.i.epil

.lr.ph.i.us.i.us.us.i.us.us.i.epil:               ; preds = %bb.y, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i.epil.preheader
  %indvars.iv.i.us.i.us.us.i.us.us.i.epil = phi i64 [ 0, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i.epil.preheader ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.i.epil, %bb.y ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.i.us.i.us.us.i.us.us.i.epil
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !8
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.i.us.i.us.us.i.us.us.i.epil
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !8
  %i.ja = and i64 %i.iz, %i.ix
  %.not.i.us.i.us.us.i.us.us.i.epil = icmp eq i64 %i.ja, 0
  br i1 %.not.i.us.i.us.us.i.us.us.i.epil, label %bb.y, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.epil

bb.y:                                             ; preds = %.lr.ph.i.us.i.us.us.i.us.us.i.epil
  %indvars.iv.next.i.us.i.us.us.i.us.us.i.epil = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.i.epil, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.i.epil = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.i.epil, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.i.epil, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.epil, label %.lr.ph.i.us.i.us.us.i.us.us.i.epil, !llvm.loop !169

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.epil: ; preds = %bb.y, %.lr.ph.i.us.i.us.us.i.us.us.i.epil
  %.015.i.ph.us.i.us.us.i.us.us.i.epil = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.i.epil ], [ 0, %bb.y ]
  %i.jb = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.i.epil, %.011.us.i.us.us.i.us.us.i.epil.init
  br label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i

Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.epil
  %.lcssa = phi i32 [ %i.it, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i.unr-lcssa ], [ %i.jb, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i.epil ] ; 2 uses
  %.not.us.us.i.us.us.i = icmp sgt i32 %.lcssa, %i.hb
  br i1 %.not.us.us.i.us.us.i, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i, label %bb.z

bb.z:                                             ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i
  %i.jc = tail call noundef i32 @llvm.smax.i32(i32 %.01722.us.us.i.us.us.i, i32 %.lcssa) ; 6 uses
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.i, %wide.trip.count.i.us.i
  br i1 %exitcond.not.i.us.us.i, label %Abc_BSEvalCountUniqueMax.exit.us.us.i, label %.lr.ph.i.us.us.i.us.us.i, !llvm.loop !171

Abc_BSEvalCountUniqueMax.exit.us.us.i:            ; preds = %bb.z
  %i.jd = icmp eq i32 %i.jc, 0
  %i.je = icmp sgt i32 %i.jc, %i.hb
  %or.cond.us.us.i = or i1 %i.jd, %i.je
  br i1 %or.cond.us.us.i, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i, label %bb.aa

bb.aa:                                            ; preds = %Abc_BSEvalCountUniqueMax.exit.us.us.i
  %i.jf = icmp samesign ult i32 %i.jc, 2
  %i.jg = add nsw i32 %i.jc, -1
  %i.jh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jg, i1 true)
  %i.ji = sub nuw nsw i32 32, %i.jh
  %.09.i72.us.us.i = select i1 %i.jf, i32 %i.jc, i32 %i.ji ; 3 uses
  %i.jj = zext nneg i32 %.09.i72.us.us.i to i64
  %i.jk = icmp samesign uge i64 %indvars.iv652, %i.jj
  %i.jl = icmp sgt i32 %.180.us82.us.i, %.09.i72.us.us.i
  %or.cond67.us.us.i = and i1 %i.jk, %i.jl
  br i1 %or.cond67.us.us.i, label %bb.ab, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i

bb.ab:                                            ; preds = %bb.aa
  br label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i

Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i:   ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i, %bb.ab, %bb.aa, %Abc_BSEvalCountUniqueMax.exit.us.us.i, %.critedge2.us81.us.i
  %.4520 = phi i32 [ %.3519, %.critedge2.us81.us.i ], [ %.3519, %Abc_BSEvalCountUniqueMax.exit.us.us.i ], [ %i.hu, %bb.ab ], [ %.3519, %bb.aa ], [ %.3519, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i ] ; 2 uses
  %.4514 = phi i32 [ %.3513, %.critedge2.us81.us.i ], [ %.3513, %Abc_BSEvalCountUniqueMax.exit.us.us.i ], [ %i.hq, %bb.ab ], [ %.3513, %bb.aa ], [ %.3513, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i ] ; 2 uses
  %.2.us87.us.i = phi i32 [ %.180.us82.us.i, %.critedge2.us81.us.i ], [ %.180.us82.us.i, %Abc_BSEvalCountUniqueMax.exit.us.us.i ], [ %.09.i72.us.us.i, %bb.ab ], [ %.180.us82.us.i, %bb.aa ], [ %.180.us82.us.i, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i ]
  %i.jm = freeze i32 %.2.us87.us.i                ; 2 uses
  %indvars.iv.next.i380 = add nuw nsw i64 %indvars.iv.i379, 2 ; 2 uses
  %i.jn = or disjoint i64 %indvars.iv.next.i380, 1
  %i.jo = icmp samesign ult i64 %i.jn, %i.hs
  br i1 %i.jo, label %.critedge2.us81.us.i, label %._crit_edge.us.i, !llvm.loop !172

Abc_SharedEvalBest.exit:                          ; preds = %._crit_edge.us.i
  %i.jp = icmp slt i32 %.1.lcssa.us.i, 100
  %spec.select = select i1 %i.jp, i32 %.1.lcssa.us.i, i32 %.0314598
  br label %Abc_SharedEvalBest.exit.thread

Abc_SharedEvalBest.exit.thread:                   ; preds = %Abc_SharedEvalBest.exit, %.lr.ph.i378, %.lr.ph600
  %.5515527 = phi i32 [ %.0510597, %.lr.ph.i378 ], [ %.2512, %Abc_SharedEvalBest.exit ], [ %.0510597, %.lr.ph600 ] ; 2 uses
  %.5521526 = phi i32 [ %.0516596, %.lr.ph.i378 ], [ %.2518, %Abc_SharedEvalBest.exit ], [ %.0516596, %.lr.ph600 ] ; 2 uses
  %i.jq = phi i32 [ %.0314598, %.lr.ph.i378 ], [ %spec.select, %Abc_SharedEvalBest.exit ], [ %.0314598, %.lr.ph600 ] ; 3 uses
  %indvars.iv.next653 = add nuw nsw i64 %indvars.iv652, 1 ; 2 uses
  %i.jr = icmp slt i64 %indvars.iv652, %i.em
  %i.js = trunc nuw i64 %indvars.iv.next653 to i32
  %i.jt = icmp sgt i32 %i.jq, %i.js
  %i.ju = select i1 %i.jr, i1 %i.jt, i1 false
  br i1 %i.ju, label %.lr.ph600, label %._crit_edge601, !llvm.loop !204

bb.ac:                                            ; preds = %._crit_edge601
  %i.jv = add nsw i32 %i.fb, -1
  %i.jw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jv, i1 true)
  %i.jx = sub nuw nsw i32 32, %i.jw
  %i.jy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.jx, i32 noundef %.0314.lcssa, i32 noundef %.0516.lcssa, i32 noundef %.0510.lcssa) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge601
  %.not362 = icmp sgt i32 %.0314.lcssa, %4        ; 3 uses
  %i.jz = shl nuw i32 1, %.0314.lcssa
  %.0320 = select i1 %.not362, i32 %i.fb, i32 %i.jz
  %.0318 = select i1 %.not362, i32 0, i32 %.0516.lcssa
  %.0316 = select i1 %.not362, i32 0, i32 %.0510.lcssa
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.v
  %.1321 = phi i32 [ %.0320, %bb.ad ], [ %i.fb, %bb.v ] ; 6 uses
  %.1319 = phi i32 [ %.0318, %bb.ad ], [ 0, %bb.v ] ; 3 uses
  %.1317 = phi i32 [ %.0316, %bb.ad ], [ 0, %bb.v ] ; 4 uses
  %i.ka = icmp sgt i32 %.0306606, %.1321
  br i1 %i.ka, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
end_hunk_1
begin_hunk_2_@Abc_TtFindBVarsSVars2:bb.a
  %i.ne = load i32, ptr %i.dg, align 8, !tbaa !82 ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, 0
  br i1 %i.nf, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %.critedge
  %i.ng = zext nneg i32 %i.ne to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.bc
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bc ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.nh = getelementptr inbounds nuw [16 x i8], ptr %.val377, i64 %indvars.iv.i.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !18 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.nj, null
  br i1 %.not15.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.nj) #28
  store ptr null, ptr %i.ni, align 8, !tbaa !18
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond660.not = icmp eq i64 %indvars.iv.next.i.i, %i.ng
  br i1 %exitcond660.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !85

._crit_edge.i.i:                                  ; preds = %.critedge
  %.not.i.i389 = icmp eq ptr %.val377, null
  br i1 %.not.i.i389, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.bc, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %.val377) #28
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.dg) #28
  br label %.loopexit

.critedge5:                                       ; preds = %.critedge5.lr.ph, %Abc_TtExchangeVars.exit
  %i.nk = phi ptr [ %i.bc, %.critedge5.lr.ph ], [ %i.uz, %Abc_TtExchangeVars.exit ] ; 5 uses
  %i.nl = phi i32 [ 16, %.critedge5.lr.ph ], [ %i.va, %Abc_TtExchangeVars.exit ] ; 10 uses
  %i.nm = phi i32 [ 0, %.critedge5.lr.ph ], [ %i.vb, %Abc_TtExchangeVars.exit ] ; 5 uses
  %i.nn = phi ptr [ %i.bc, %.critedge5.lr.ph ], [ %i.vc, %Abc_TtExchangeVars.exit ] ; 9 uses
  %i.no = phi i32 [ 16, %.critedge5.lr.ph ], [ %i.vd, %Abc_TtExchangeVars.exit ] ; 4 uses
  %indvars.iv638 = phi i64 [ 0, %.critedge5.lr.ph ], [ %indvars.iv.next639, %Abc_TtExchangeVars.exit ] ; 3 uses
  %i.np = phi ptr [ %i.ca, %.critedge5.lr.ph ], [ %i.wg, %Abc_TtExchangeVars.exit ]
  %.2576 = phi i32 [ 0, %.critedge5.lr.ph ], [ %.3, %Abc_TtExchangeVars.exit ] ; 2 uses
  %.1305574 = phi i32 [ %i.bn, %.critedge5.lr.ph ], [ %i.oa, %Abc_TtExchangeVars.exit ]
  %.3309573 = phi i32 [ %i.bn, %.critedge5.lr.ph ], [ %.5311, %Abc_TtExchangeVars.exit ] ; 5 uses
  %.3325572 = phi i32 [ %2, %.critedge5.lr.ph ], [ %.5327, %Abc_TtExchangeVars.exit ] ; 4 uses
  %i.nq = getelementptr i8, ptr %i.np, i64 8
  %.val372 = load ptr, ptr %i.nq, align 8, !tbaa !18
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.val372, i64 %indvars.iv638 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !10
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !10
  %i.nv = load ptr, ptr %i.cd, align 8, !tbaa !70
  %i.nw = load ptr, ptr %i.ce, align 8, !tbaa !74
  %i.nx = load ptr, ptr %i.cf, align 8, !tbaa !76
  %i.ny = load ptr, ptr %i.cg, align 8, !tbaa !75
  %i.nz = tail call i32 @Abc_TtGetCMCount(ptr noundef readonly %i.ax, i32 noundef %2, i32 noundef %i.c, ptr noundef readonly %i.nv, ptr noundef readonly %i.nw, ptr noundef %i.nx, ptr noundef %i.ny) ; 8 uses
  %i.oa = tail call noundef i32 @llvm.smin.i32(i32 %.1305574, i32 %i.nz) ; 2 uses
  br i1 %.not347, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.critedge5
  %i.ob = load i32, ptr %7, align 4, !tbaa !10
  %i.oc = tail call noundef i32 @llvm.smin.i32(i32 %i.ob, i32 %i.nz)
  store i32 %i.oc, ptr %7, align 4, !tbaa !10
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.critedge5
  br i1 %.not348, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.od = lshr exact i64 %indvars.iv638, 1
  %i.oe = trunc nuw i64 %i.od to i32
  %i.of = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.oe) ; 0 uses
  br i1 %i.ch, label %.lr.ph552, label %._crit_edge553

.lr.ph552:                                        ; preds = %bb.bf, %.lr.ph552
  %.4303.in550 = phi i32 [ %.4303, %.lr.ph552 ], [ %3, %bb.bf ] ; 2 uses
  %.4303 = add nsw i32 %.4303.in550, -1           ; 2 uses
  %i.og = add nsw i32 %.4303, %i.d
  %i.oh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.og) ; 0 uses
  %i.oi = icmp samesign ugt i32 %.4303.in550, 1
  br i1 %i.oi, label %.lr.ph552, label %._crit_edge553, !llvm.loop !208

._crit_edge553:                                   ; preds = %.lr.ph552, %bb.bf
  %putchar = tail call i32 @putchar(i32 32)       ; 0 uses
  br i1 %.not349.not554, label %.lr.ph557, label %._crit_edge558

.lr.ph557:                                        ; preds = %._crit_edge553, %.lr.ph557
  %indvars.iv629 = phi i64 [ %indvars.iv.next630, %.lr.ph557 ], [ %i.db, %._crit_edge553 ]
  %indvars.iv.next630 = add nsw i64 %indvars.iv629, -1 ; 3 uses
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next630
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !10
  %i.ol = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.ok) ; 0 uses
  %.not349.not = icmp sgt i64 %indvars.iv.next630, %i.da
  br i1 %.not349.not, label %.lr.ph557, label %._crit_edge558, !llvm.loop !209

._crit_edge558:                                   ; preds = %.lr.ph557, %._crit_edge553
  %putchar350 = tail call i32 @putchar(i32 32)    ; 0 uses
  br i1 %i.ci, label %.lr.ph561, label %._crit_edge562

.lr.ph561:                                        ; preds = %._crit_edge558, %.lr.ph561
  %indvars.iv632 = phi i64 [ %indvars.iv.next633, %.lr.ph561 ], [ %i.dc, %._crit_edge558 ] ; 2 uses
  %indvars.iv.next633 = add nsw i64 %indvars.iv632, -1 ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next633
  %i.on = load i32, ptr %i.om, align 4, !tbaa !10
  %i.oo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.on) ; 0 uses
  %i.op = icmp samesign ugt i64 %indvars.iv632, 1
  br i1 %i.op, label %.lr.ph561, label %._crit_edge562, !llvm.loop !210

._crit_edge562:                                   ; preds = %.lr.ph561, %._crit_edge558
  %i.oq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.nz) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge562, %bb.be
  %i.or = add nsw i32 %i.oa, %8
  %.not351 = icmp sgt i32 %i.nz, %i.or
  br i1 %.not351, label %bb.ck, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.os = icmp sgt i32 %i.nz, 2
  br i1 %i.os, label %.preheader542, label %bb.bq

.preheader542:                                    ; preds = %bb.bh
  br i1 %i.cj, label %.lr.ph567, label %._crit_edge568

._crit_edge568:                                   ; preds = %Abc_SharedEvalBest.exit448.thread, %.preheader542
  %.0504.lcssa = phi i32 [ 0, %.preheader542 ], [ %.5509533, %Abc_SharedEvalBest.exit448.thread ] ; 2 uses
  %.0498.lcssa = phi i32 [ 0, %.preheader542 ], [ %.5503534, %Abc_SharedEvalBest.exit448.thread ] ; 2 uses
  %.0291.lcssa = phi i32 [ 100, %.preheader542 ], [ %i.rr, %Abc_SharedEvalBest.exit448.thread ] ; 3 uses
  br i1 %.not348, label %bb.bp, label %bb.bo

.lr.ph567:                                        ; preds = %.preheader542, %Abc_SharedEvalBest.exit448.thread
  %indvars.iv635 = phi i64 [ %indvars.iv.next636, %Abc_SharedEvalBest.exit448.thread ], [ 1, %.preheader542 ] ; 6 uses
  %.0291565 = phi i32 [ %i.rr, %Abc_SharedEvalBest.exit448.thread ], [ 100, %.preheader542 ] ; 3 uses
  %.0498564 = phi i32 [ %.5503534, %Abc_SharedEvalBest.exit448.thread ], [ 0, %.preheader542 ] ; 3 uses
  %.0504563 = phi i32 [ %.5509533, %Abc_SharedEvalBest.exit448.thread ], [ 0, %.preheader542 ] ; 3 uses
  %i.ot = load ptr, ptr %i.ck, align 8, !tbaa !87 ; 4 uses
  %i.ou = load ptr, ptr %i.cd, align 8, !tbaa !70
  %i.ov = load ptr, ptr %i.ce, align 8, !tbaa !74
  %i.ow = load ptr, ptr %i.cf, align 8, !tbaa !76
  %i.ox = load ptr, ptr %i.cg, align 8, !tbaa !75
  %i.oy = tail call i32 @Abc_TtGetCMInt(ptr noundef readonly %i.ax, i32 noundef %2, i32 noundef %i.c, ptr noundef %i.ou, ptr noundef %i.ov, ptr noundef %i.ow, ptr noundef %i.ox, ptr noundef %i.ot) ; 4 uses
  %i.oz = sub nsw i64 %i.dd, %indvars.iv635       ; 2 uses
  %i.pa = icmp sgt i64 %i.oz, 1
  br i1 %i.pa, label %.lr.ph.i392, label %Abc_SharedEvalBest.exit448.thread

.lr.ph.i392:                                      ; preds = %.lr.ph567
  %i.pb = trunc nuw nsw i64 %indvars.iv635 to i32
  %i.pc = shl nuw i32 1, %i.pb                    ; 2 uses
  %i.pd = icmp sgt i32 %i.oy, 0
  %wide.trip.count.i.i.i394 = zext i32 %i.oy to i64 ; 2 uses
  %or.cond.i.i395 = and i1 %i.cw, %i.pd
  %or.cond.i.fr.i396 = freeze i1 %or.cond.i.i395
  br i1 %or.cond.i.fr.i396, label %.lr.ph.split.us.preheader.i397, label %Abc_SharedEvalBest.exit448.thread

.lr.ph.split.us.preheader.i397:                   ; preds = %.lr.ph.i392
  %i.pe = load i32, ptr %i.v, align 8, !tbaa !167
  %i.pf = sext i32 %i.pe to i64                   ; 2 uses
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.pf
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !80
  %i.pi = getelementptr i8, ptr %i.ph, i64 8
  %.val71.us.i401 = load ptr, ptr %i.pi, align 8, !tbaa !84
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.pf
  %xtraiter = and i64 %wide.trip.count.i.i.i394, 1
  %i.pk = icmp eq i32 %i.oy, 1
  %unroll_iter = and i64 %wide.trip.count.i.i.i394, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod790 = trunc i32 %i.oy to i1
  br label %.lr.ph.split.us.i398

.lr.ph.split.us.i398:                             ; preds = %._crit_edge.us.i403, %.lr.ph.split.us.preheader.i397
  %.1505 = phi i32 [ %.0504563, %.lr.ph.split.us.preheader.i397 ], [ %.2506, %._crit_edge.us.i403 ] ; 3 uses
  %.1499 = phi i32 [ %.0498564, %.lr.ph.split.us.preheader.i397 ], [ %.2500, %._crit_edge.us.i403 ] ; 3 uses
  %indvars.iv130.i399 = phi i64 [ 1, %.lr.ph.split.us.preheader.i397 ], [ %indvars.iv.next131.i406, %._crit_edge.us.i403 ] ; 4 uses
  %.094.us.i400 = phi i32 [ 100, %.lr.ph.split.us.preheader.i397 ], [ %.1.lcssa.us.i404, %._crit_edge.us.i403 ] ; 3 uses
  %i.pl = getelementptr inbounds nuw [16 x i8], ptr %.val71.us.i401, i64 %indvars.iv130.i399 ; 2 uses
  %i.pm = getelementptr i8, ptr %i.pl, i64 4
  %.val78.us.i402 = load i32, ptr %i.pm, align 4, !tbaa !14 ; 2 uses
  %i.pn = icmp sgt i32 %.val78.us.i402, 1
  br i1 %i.pn, label %.critedge2.lr.ph.us.i408, label %._crit_edge.us.i403

._crit_edge.us.i403:                              ; preds = %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i418, %.critedge2.lr.ph.us.i408, %.lr.ph.split.us.i398
  %.2506 = phi i32 [ %.1505, %.critedge2.lr.ph.us.i408 ], [ %.1505, %.lr.ph.split.us.i398 ], [ %.4508, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i418 ] ; 2 uses
  %.2500 = phi i32 [ %.1499, %.critedge2.lr.ph.us.i408 ], [ %.1499, %.lr.ph.split.us.i398 ], [ %.4502, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i418 ] ; 2 uses
  %.1.lcssa.us.i404 = phi i32 [ %.094.us.i400, %.critedge2.lr.ph.us.i408 ], [ %.094.us.i400, %.lr.ph.split.us.i398 ], [ %i.rn, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i418 ] ; 4 uses
  %i.po = sext i32 %.1.lcssa.us.i404 to i64
  %.not65.us.i405 = icmp slt i64 %indvars.iv635, %i.po
  %indvars.iv.next131.i406 = add nuw nsw i64 %indvars.iv130.i399, 1 ; 2 uses
  %i.pp = icmp samesign ult i64 %indvars.iv.next131.i406, %i.oz
  %or.cond.i407 = and i1 %i.pp, %.not65.us.i405
  br i1 %or.cond.i407, label %.lr.ph.split.us.i398, label %Abc_SharedEvalBest.exit448, !llvm.loop !168

.critedge2.lr.ph.us.i408:                         ; preds = %.lr.ph.split.us.i398
  %i.pq = getelementptr i8, ptr %i.pl, i64 8
  %.val69.us.i409 = load ptr, ptr %i.pq, align 8, !tbaa !18
  %i.pr = trunc nuw nsw i64 %indvars.iv130.i399 to i32 ; 2 uses
  %i.ps = shl nuw nsw i32 1, %i.pr
  %.not27.i.us.i410 = icmp eq i64 %indvars.iv130.i399, 31
  %wide.trip.count.i.us.i412 = zext nneg i32 %i.ps to i64
  br i1 %.not27.i.us.i410, label %._crit_edge.us.i403, label %.critedge2.us81.us.i413.preheader

.critedge2.us81.us.i413.preheader:                ; preds = %.critedge2.lr.ph.us.i408
  %i.pt = zext nneg i32 %.val78.us.i402 to i64
  br label %.critedge2.us81.us.i413

.critedge2.us81.us.i413:                          ; preds = %.critedge2.us81.us.i413.preheader, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i418
  %.3507 = phi i32 [ %.4508, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i418 ], [ %.1505, %.critedge2.us81.us.i413.preheader ] ; 4 uses
  %.3501 = phi i32 [ %.4502, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i418 ], [ %.1499, %.critedge2.us81.us.i413.preheader ] ; 4 uses
  %indvars.iv.i415 = phi i64 [ %indvars.iv.next.i421, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i418 ], [ 0, %.critedge2.us81.us.i413.preheader ] ; 2 uses
  %.180.us82.us.i416 = phi i32 [ %i.rn, %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i418 ], [ %.094.us.i400, %.critedge2.us81.us.i413.preheader ] ; 5 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.val69.us.i409, i64 %indvars.iv.i415 ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !10 ; 2 uses
  %i.pw = and i32 %i.pv, %spec.select620
  %.not66.us84.us.i417 = icmp eq i32 %i.pw, 0
  br i1 %.not66.us84.us.i417, label %.lr.ph.i.us.us.i422, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i418

.lr.ph.i.us.us.i422:                              ; preds = %.critedge2.us81.us.i413
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.py = load i32, ptr %i.px, align 4, !tbaa !10
  %i.pz = load ptr, ptr %i.pj, align 8, !tbaa !88
  %i.qa = getelementptr i8, ptr %i.pz, i64 8
  %.val70.us85.us.i423 = load ptr, ptr %i.qa, align 8, !tbaa !30
  %i.qb = sext i32 %i.py to i64
  %i.qc = getelementptr inbounds [8 x i8], ptr %.val70.us85.us.i423, i64 %i.qb
  br label %.lr.ph.i.us.us.i.us.us.i424

.lr.ph.i.us.us.i.us.us.i424:                      ; preds = %bb.bl, %.lr.ph.i.us.us.i422
  %indvars.iv.i.us.us.i425 = phi i64 [ 0, %.lr.ph.i.us.us.i422 ], [ %indvars.iv.next.i.us.us.i439, %bb.bl ] ; 2 uses
  %.01722.us.us.i.us.us.i426 = phi i32 [ 0, %.lr.ph.i.us.us.i422 ], [ %i.rd, %bb.bl ]
  %i.qd = shl nuw i64 %indvars.iv.i.us.us.i425, %i.cy
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.qd ; 3 uses
  br i1 %i.pk, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i427.epil.preheader, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i427

.lr.ph.preheader.i.us.i.us.us.i.us.us.i427:       ; preds = %.lr.ph.i.us.us.i.us.us.i424, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433.1
  %indvars.iv.i.us.us.i.us.us.i428 = phi i64 [ %indvars.iv.next.i.us.us.i.us.us.i435.1, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433.1 ], [ 0, %.lr.ph.i.us.us.i.us.us.i424 ] ; 3 uses
  %.011.us.i.us.us.i.us.us.i429 = phi i32 [ %i.qu, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433.1 ], [ 0, %.lr.ph.i.us.us.i.us.us.i424 ]
  %niter = phi i64 [ %niter.next.1, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433.1 ], [ 0, %.lr.ph.i.us.us.i.us.us.i424 ]
  %i.qf = shl nuw i64 %indvars.iv.i.us.us.i.us.us.i428, %i.cy
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.qf
  br label %.lr.ph.i.us.i.us.us.i.us.us.i430

.lr.ph.i.us.i.us.us.i.us.us.i430:                 ; preds = %bb.bi, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i427
  %indvars.iv.i.us.i.us.us.i.us.us.i431 = phi i64 [ 0, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i427 ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.i446, %bb.bi ] ; 3 uses
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %indvars.iv.i.us.i.us.us.i.us.us.i431
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !8
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %indvars.iv.i.us.i.us.us.i.us.us.i431
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !8
  %i.ql = and i64 %i.qk, %i.qi
  %.not.i.us.i.us.us.i.us.us.i432 = icmp eq i64 %i.ql, 0
  br i1 %.not.i.us.i.us.us.i.us.us.i432, label %bb.bi, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433

bb.bi:                                            ; preds = %.lr.ph.i.us.i.us.us.i.us.us.i430
  %indvars.iv.next.i.us.i.us.us.i.us.us.i446 = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.i431, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.i447 = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.i446, %wide.trip.count.i.i.i.i393
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.i447, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433, label %.lr.ph.i.us.i.us.us.i.us.us.i430, !llvm.loop !169

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433: ; preds = %bb.bi, %.lr.ph.i.us.i.us.us.i.us.us.i430
  %.015.i.ph.us.i.us.us.i.us.us.i434 = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.i430 ], [ 0, %bb.bi ]
  %i.qm = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.i434, %.011.us.i.us.us.i.us.us.i429
  %indvars.iv.next.i.us.us.i.us.us.i435 = or disjoint i64 %indvars.iv.i.us.us.i.us.us.i428, 1
  %i.qn = shl nuw i64 %indvars.iv.next.i.us.us.i.us.us.i435, %i.cy
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.qn
  br label %.lr.ph.i.us.i.us.us.i.us.us.i430.1

.lr.ph.i.us.i.us.us.i.us.us.i430.1:               ; preds = %bb.bj, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433
  %indvars.iv.i.us.i.us.us.i.us.us.i431.1 = phi i64 [ 0, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433 ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.i446.1, %bb.bj ] ; 3 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv.i.us.i.us.us.i.us.us.i431.1
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !8
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %indvars.iv.i.us.i.us.us.i.us.us.i431.1
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !8
  %i.qt = and i64 %i.qs, %i.qq
  %.not.i.us.i.us.us.i.us.us.i432.1 = icmp eq i64 %i.qt, 0
  br i1 %.not.i.us.i.us.us.i.us.us.i432.1, label %bb.bj, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433.1

bb.bj:                                            ; preds = %.lr.ph.i.us.i.us.us.i.us.us.i430.1
  %indvars.iv.next.i.us.i.us.us.i.us.us.i446.1 = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.i431.1, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.i447.1 = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.i446.1, %wide.trip.count.i.i.i.i393
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.i447.1, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433.1, label %.lr.ph.i.us.i.us.us.i.us.us.i430.1, !llvm.loop !169

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433.1: ; preds = %bb.bj, %.lr.ph.i.us.i.us.us.i.us.us.i430.1
  %.015.i.ph.us.i.us.us.i.us.us.i434.1 = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.i430.1 ], [ 0, %bb.bj ]
  %i.qu = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.i434.1, %i.qm ; 3 uses
  %indvars.iv.next.i.us.us.i.us.us.i435.1 = add nuw nsw i64 %indvars.iv.i.us.us.i.us.us.i428, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i437.unr-lcssa, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i427, !llvm.loop !170

Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i437.unr-lcssa: ; preds = %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433.1
  br i1 %lcmp.mod.not, label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i437, label %.lr.ph.preheader.i.us.i.us.us.i.us.us.i427.epil.preheader

.lr.ph.preheader.i.us.i.us.us.i.us.us.i427.epil.preheader: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i437.unr-lcssa, %.lr.ph.i.us.us.i.us.us.i424
  %indvars.iv.i.us.us.i.us.us.i428.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.i.us.us.i424 ], [ %indvars.iv.next.i.us.us.i.us.us.i435.1, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i437.unr-lcssa ]
  %.011.us.i.us.us.i.us.us.i429.epil.init = phi i32 [ 0, %.lr.ph.i.us.us.i.us.us.i424 ], [ %i.qu, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i437.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod790)
  %i.qv = shl nuw i64 %indvars.iv.i.us.us.i.us.us.i428.epil.init, %i.cy
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.qv
  br label %.lr.ph.i.us.i.us.us.i.us.us.i430.epil

.lr.ph.i.us.i.us.us.i.us.us.i430.epil:            ; preds = %bb.bk, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i427.epil.preheader
  %indvars.iv.i.us.i.us.us.i.us.us.i431.epil = phi i64 [ 0, %.lr.ph.preheader.i.us.i.us.us.i.us.us.i427.epil.preheader ], [ %indvars.iv.next.i.us.i.us.us.i.us.us.i446.epil, %bb.bk ] ; 3 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %indvars.iv.i.us.i.us.us.i.us.us.i431.epil
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !8
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %indvars.iv.i.us.i.us.us.i.us.us.i431.epil
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !8
  %i.rb = and i64 %i.ra, %i.qy
  %.not.i.us.i.us.us.i.us.us.i432.epil = icmp eq i64 %i.rb, 0
  br i1 %.not.i.us.i.us.us.i.us.us.i432.epil, label %bb.bk, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433.epil

bb.bk:                                            ; preds = %.lr.ph.i.us.i.us.us.i.us.us.i430.epil
  %indvars.iv.next.i.us.i.us.us.i.us.us.i446.epil = add nuw nsw i64 %indvars.iv.i.us.i.us.us.i.us.us.i431.epil, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.i.us.us.i447.epil = icmp eq i64 %indvars.iv.next.i.us.i.us.us.i.us.us.i446.epil, %wide.trip.count.i.i.i.i393
  br i1 %exitcond.not.i.us.i.us.us.i.us.us.i447.epil, label %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433.epil, label %.lr.ph.i.us.i.us.us.i.us.us.i430.epil, !llvm.loop !169

Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433.epil: ; preds = %bb.bk, %.lr.ph.i.us.i.us.us.i.us.us.i430.epil
  %.015.i.ph.us.i.us.us.i.us.us.i434.epil = phi i32 [ 1, %.lr.ph.i.us.i.us.us.i.us.us.i430.epil ], [ 0, %bb.bk ]
  %i.rc = add nuw nsw i32 %.015.i.ph.us.i.us.us.i.us.us.i434.epil, %.011.us.i.us.us.i.us.us.i429.epil.init
  br label %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i437

Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i437: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i437.unr-lcssa, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433.epil
  %.lcssa779 = phi i32 [ %i.qu, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i437.unr-lcssa ], [ %i.rc, %Abc_TtIntersect.exit.loopexit.us.i.us.us.i.us.us.i433.epil ] ; 2 uses
  %.not.us.us.i.us.us.i438 = icmp sgt i32 %.lcssa779, %i.pc
  br i1 %.not.us.us.i.us.us.i438, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i418, label %bb.bl

bb.bl:                                            ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i437
  %i.rd = tail call noundef i32 @llvm.smax.i32(i32 %.01722.us.us.i.us.us.i426, i32 %.lcssa779) ; 6 uses
  %indvars.iv.next.i.us.us.i439 = add nuw nsw i64 %indvars.iv.i.us.us.i425, 1 ; 2 uses
  %exitcond.not.i.us.us.i440 = icmp eq i64 %indvars.iv.next.i.us.us.i439, %wide.trip.count.i.us.i412
  br i1 %exitcond.not.i.us.us.i440, label %Abc_BSEvalCountUniqueMax.exit.us.us.i441, label %.lr.ph.i.us.us.i.us.us.i424, !llvm.loop !171

Abc_BSEvalCountUniqueMax.exit.us.us.i441:         ; preds = %bb.bl
  %i.re = icmp eq i32 %i.rd, 0
  %i.rf = icmp sgt i32 %i.rd, %i.pc
  %or.cond.us.us.i442 = or i1 %i.re, %i.rf
  br i1 %or.cond.us.us.i442, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i418, label %bb.bm

bb.bm:                                            ; preds = %Abc_BSEvalCountUniqueMax.exit.us.us.i441
  %i.rg = icmp samesign ult i32 %i.rd, 2
  %i.rh = add nsw i32 %i.rd, -1
  %i.ri = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.rh, i1 true)
  %i.rj = sub nuw nsw i32 32, %i.ri
  %.09.i72.us.us.i443 = select i1 %i.rg, i32 %i.rd, i32 %i.rj ; 3 uses
  %i.rk = zext nneg i32 %.09.i72.us.us.i443 to i64
  %i.rl = icmp samesign uge i64 %indvars.iv635, %i.rk
  %i.rm = icmp sgt i32 %.180.us82.us.i416, %.09.i72.us.us.i443
  %or.cond67.us.us.i444 = and i1 %i.rl, %i.rm
  br i1 %or.cond67.us.us.i444, label %bb.bn, label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i418

bb.bn:                                            ; preds = %bb.bm
  br label %Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i418

Abc_BSEvalCountUniqueMax.exit.thread.us86.us.i418: ; preds = %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i437, %bb.bn, %bb.bm, %Abc_BSEvalCountUniqueMax.exit.us.us.i441, %.critedge2.us81.us.i413
  %.4508 = phi i32 [ %.3507, %.critedge2.us81.us.i413 ], [ %.3507, %Abc_BSEvalCountUniqueMax.exit.us.us.i441 ], [ %i.pv, %bb.bn ], [ %.3507, %bb.bm ], [ %.3507, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i437 ] ; 2 uses
  %.4502 = phi i32 [ %.3501, %.critedge2.us81.us.i413 ], [ %.3501, %Abc_BSEvalCountUniqueMax.exit.us.us.i441 ], [ %i.pr, %bb.bn ], [ %.3501, %bb.bm ], [ %.3501, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i437 ] ; 2 uses
  %.2.us87.us.i420 = phi i32 [ %.180.us82.us.i416, %.critedge2.us81.us.i413 ], [ %.180.us82.us.i416, %Abc_BSEvalCountUniqueMax.exit.us.us.i441 ], [ %.09.i72.us.us.i443, %bb.bn ], [ %.180.us82.us.i416, %bb.bm ], [ %.180.us82.us.i416, %Abc_BSEvalCountUnique.exit.loopexit.us.us.i.us.us.i437 ]
  %i.rn = freeze i32 %.2.us87.us.i420             ; 2 uses
  %indvars.iv.next.i421 = add nuw nsw i64 %indvars.iv.i415, 2 ; 2 uses
  %i.ro = or disjoint i64 %indvars.iv.next.i421, 1
  %i.rp = icmp samesign ult i64 %i.ro, %i.pt
  br i1 %i.rp, label %.critedge2.us81.us.i413, label %._crit_edge.us.i403, !llvm.loop !172

Abc_SharedEvalBest.exit448:                       ; preds = %._crit_edge.us.i403
  %i.rq = icmp slt i32 %.1.lcssa.us.i404, 100
  %spec.select537 = select i1 %i.rq, i32 %.1.lcssa.us.i404, i32 %.0291565
  br label %Abc_SharedEvalBest.exit448.thread

Abc_SharedEvalBest.exit448.thread:                ; preds = %Abc_SharedEvalBest.exit448, %.lr.ph.i392, %.lr.ph567
  %.5503534 = phi i32 [ %.0498564, %.lr.ph.i392 ], [ %.2500, %Abc_SharedEvalBest.exit448 ], [ %.0498564, %.lr.ph567 ] ; 2 uses
  %.5509533 = phi i32 [ %.0504563, %.lr.ph.i392 ], [ %.2506, %Abc_SharedEvalBest.exit448 ], [ %.0504563, %.lr.ph567 ] ; 2 uses
  %i.rr = phi i32 [ %.0291565, %.lr.ph.i392 ], [ %spec.select537, %Abc_SharedEvalBest.exit448 ], [ %.0291565, %.lr.ph567 ] ; 3 uses
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 1 ; 2 uses
  %i.rs = icmp slt i64 %indvars.iv635, %i.de
  %i.rt = trunc nuw i64 %indvars.iv.next636 to i32
  %i.ru = icmp sgt i32 %i.rr, %i.rt
  %i.rv = select i1 %i.rs, i1 %i.ru, i1 false
  br i1 %i.rv, label %.lr.ph567, label %._crit_edge568, !llvm.loop !211

bb.bo:                                            ; preds = %._crit_edge568
  %i.rw = add nsw i32 %i.nz, -1
  %i.rx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.rw, i1 true)
  %i.ry = sub nuw nsw i32 32, %i.rx
  %i.rz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.ry, i32 noundef %.0291.lcssa, i32 noundef %.0504.lcssa, i32 noundef %.0498.lcssa) ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge568
  %.not352 = icmp sgt i32 %.0291.lcssa, %4        ; 3 uses
  %i.sa = shl nuw i32 1, %.0291.lcssa
  %.0297 = select i1 %.not352, i32 %i.nz, i32 %i.sa
  %.0295 = select i1 %.not352, i32 0, i32 %.0504.lcssa
  %.0293 = select i1 %.not352, i32 0, i32 %.0498.lcssa
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bh
  %.1298 = phi i32 [ %.0297, %bb.bp ], [ %i.nz, %bb.bh ] ; 6 uses
  %.1296 = phi i32 [ %.0295, %bb.bp ], [ 0, %bb.bh ] ; 3 uses
  %.1294 = phi i32 [ %.0293, %bb.bp ], [ 0, %bb.bh ] ; 4 uses
  %i.sb = icmp sgt i32 %.3309573, %.1298
  br i1 %i.sb, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
end_hunk_2
