Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/db?download=true
inline.NumInlined: 146
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@sortGetKeys:bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !112
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.e = phi ptr [ %i.d, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !151
  %i.h = icmp slt i32 %i.g, 2
  br i1 %i.h, label %bb.f, label %getKeysPrepareResult.exit

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.e, %i.i
  br i1 %.not23.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call dereferenceable_or_null(16) ptr @zrealloc(ptr noundef nonnull %i.e, i64 noundef 16) #25 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !112
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #23 ; 4 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !112
  %i.l = load i32, ptr %3, align 8, !tbaa !150    ; 2 uses
  %.not24.i = icmp eq i32 %i.l, 0
  br i1 %.not24.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.k, ptr nonnull align 8 %i.i, i64 %i.n, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.o = phi ptr [ %i.k, %bb.h ], [ %i.k, %bb.i ], [ %i.j, %bb.g ]
  store i32 2, ptr %i.f, align 4, !tbaa !151
  br label %getKeysPrepareResult.exit

getKeysPrepareResult.exit:                        ; preds = %bb.e, %bb.j
  %i.p = phi ptr [ %i.o, %bb.j ], [ %i.e, %bb.e ] ; 4 uses
  store i32 1, ptr %i.p, align 4, !tbaa !158
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 17, ptr %i.q, align 4, !tbaa !159
  %i.r = icmp sgt i32 %2, 2
  br i1 %i.r, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %getKeysPrepareResult.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %.043 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1, %.loopexit ] ; 3 uses
  %.02842 = phi i32 [ 2, %.preheader.lr.ph ], [ %.pre-phi, %.loopexit ]
  %.02842.fr = freeze i32 %.02842                 ; 3 uses
  %i.u = sext i32 %.02842.fr to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65   ; 6 uses
  %i.z = add i32 %.02842.fr, 1                    ; 5 uses
  %i.aa = icmp slt i32 %i.z, %2
  %i.ab = tail call i32 @strcasecmp(ptr noundef %i.y, ptr noundef nonnull @.str.73) #24
  %.not33.us = icmp eq i32 %i.ab, 0               ; 2 uses
  br i1 %i.aa, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  br i1 %.not33.us, label %.split.us, label %.preheader.split.1

.preheader.split.us.preheader:                    ; preds = %.preheader
  br i1 %.not33.us, label %.split.us, label %bb.k

bb.k:                                             ; preds = %.preheader.split.us.preheader
  %i.ac = tail call i32 @strcasecmp(ptr noundef %i.y, ptr noundef nonnull @.str.76) #24
  %.not34.us = icmp eq i32 %i.ac, 0
  br i1 %.not34.us, label %.split40.us, label %.preheader.split.us.1

.split40.us:                                      ; preds = %bb.k
  store i32 %i.z, ptr %i.s, align 4, !tbaa !158
  store i32 36, ptr %i.t, align 4, !tbaa !159
  br label %.loopexit

.preheader.split.us.1:                            ; preds = %bb.k
  %i.ad = tail call i32 @strcasecmp(ptr noundef %i.y, ptr noundef nonnull @.str.74) #24
  %.not33.us.1 = icmp eq i32 %i.ad, 0
  br i1 %.not33.us.1, label %.split.us, label %.preheader.split.us.2

.preheader.split.us.2:                            ; preds = %.preheader.split.us.1
  %i.ae = tail call i32 @strcasecmp(ptr noundef %i.y, ptr noundef nonnull @.str.75) #24
  %.not33.us.2 = icmp eq i32 %i.ae, 0
  br i1 %.not33.us.2, label %.split.us, label %.loopexit

.split.us:                                        ; preds = %.preheader.split.preheader, %.preheader.split.1, %.preheader.split.2, %.preheader.split.us.preheader, %.preheader.split.us.1, %.preheader.split.us.2
  %.us-phi = phi ptr [ getelementptr inbounds nuw (i8, ptr @__const.sortGetKeys.skiplist, i64 32), %.preheader.split.us.2 ], [ @__const.sortGetKeys.skiplist, %.preheader.split.us.preheader ], [ getelementptr inbounds nuw (i8, ptr @__const.sortGetKeys.skiplist, i64 16), %.preheader.split.us.1 ], [ @__const.sortGetKeys.skiplist, %.preheader.split.preheader ], [ getelementptr inbounds nuw (i8, ptr @__const.sortGetKeys.skiplist, i64 16), %.preheader.split.1 ], [ getelementptr inbounds nuw (i8, ptr @__const.sortGetKeys.skiplist, i64 32), %.preheader.split.2 ]
  %i.af = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !166
  %i.ah = add nsw i32 %i.ag, %.02842.fr
  %.pre = add nsw i32 %i.ah, 1
  br label %.loopexit

.preheader.split.1:                               ; preds = %.preheader.split.preheader
  %i.ai = tail call i32 @strcasecmp(ptr noundef %i.y, ptr noundef nonnull @.str.74) #24
  %.not33.1 = icmp eq i32 %i.ai, 0
  br i1 %.not33.1, label %.split.us, label %.preheader.split.2

.preheader.split.2:                               ; preds = %.preheader.split.1
  %i.aj = tail call i32 @strcasecmp(ptr noundef %i.y, ptr noundef nonnull @.str.75) #24
  %.not33.2 = icmp eq i32 %i.aj, 0
  br i1 %.not33.2, label %.split.us, label %.loopexit

.loopexit:                                        ; preds = %.preheader.split.2, %.preheader.split.us.2, %.split.us, %.split40.us
  %.pre-phi = phi i32 [ %i.z, %.preheader.split.us.2 ], [ %i.z, %.split40.us ], [ %.pre, %.split.us ], [ %i.z, %.preheader.split.2 ] ; 2 uses
  %.1 = phi i32 [ %.043, %.preheader.split.us.2 ], [ 1, %.split40.us ], [ %.043, %.split.us ], [ %.043, %.preheader.split.2 ] ; 2 uses
  %i.ak = icmp slt i32 %.pre-phi, %2
  br i1 %i.ak, label %.preheader, label %._crit_edge.loopexit, !llvm.loop !255

._crit_edge.loopexit:                             ; preds = %.loopexit
  %i.al = add nuw nsw i32 %.1, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %getKeysPrepareResult.exit
  %.0.lcssa = phi i32 [ 1, %getKeysPrepareResult.exit ], [ %i.al, %._crit_edge.loopexit ] ; 2 uses
  store i32 %.0.lcssa, ptr %3, align 8, !tbaa !150
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483640, -2147483648) i32 @migrateGetKeys(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 6
  br i1 %i.a, label %.preheader40, label %.loopexit41

.preheader40:                                     ; preds = %bb.a, %.loopexit
  %.03245 = phi i32 [ %i.aj, %.loopexit ], [ 6, %bb.a ] ; 4 uses
  %i.b = sext i32 %.03245 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 5 uses
  %i.g = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.80) #24
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader40
  %i.h = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.77) #24
  %.not37 = icmp eq i32 %i.h, 0
  br i1 %.not37, label %bb.h, label %.preheader.1

bb.b:                                             ; preds = %.preheader40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 5 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %.val.i = load i8, ptr %i.m, align 1, !tbaa !106 ; 2 uses
  %i.n = and i8 %.val.i, 7
  switch i8 %i.n, label %sdslen.exit.thread [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = lshr i8 %.val.i, 3
  %i.p = zext nneg i8 %i.o to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 -3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !106
  %i.s = zext i8 %i.r to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 -5
  %i.u = load i16, ptr %i.t, align 1, !tbaa !107
  %i.v = zext i16 %i.u to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds i8, ptr %i.l, i64 -9
  %i.x = load i32, ptr %i.w, align 1, !tbaa !18
  %i.y = zext i32 %i.x to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %i.l, i64 -17
  %i.aa = load i64, ptr %i.z, align 1, !tbaa !54
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.aa, %bb.g ], [ %i.p, %bb.c ], [ %i.s, %bb.d ], [ %i.v, %bb.e ], [ %i.y, %bb.f ]
  %.not35 = icmp eq i64 %.0.i, 0
  br i1 %.not35, label %sdslen.exit.thread, label %.loopexit41

sdslen.exit.thread:                               ; preds = %bb.b, %sdslen.exit
  %i.ab = add nsw i32 %.03245, 1                  ; 2 uses
  %i.ac = sub nsw i32 %2, %i.ab
  br label %.loopexit41

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.ad = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.57) #24
  %.not37.1 = icmp eq i32 %i.ad, 0
  br i1 %.not37.1, label %bb.h, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ae = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.78) #24
  %.not37.2 = icmp eq i32 %i.ae, 0
  br i1 %.not37.2, label %bb.h, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.af = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.79) #24
  %.not37.3 = icmp eq i32 %i.af, 0
  br i1 %.not37.3, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ @__const.migrateGetKeys.skip_keywords, %.preheader.preheader ], [ getelementptr inbounds nuw (i8, ptr @__const.migrateGetKeys.skip_keywords, i64 16), %.preheader.1 ], [ getelementptr inbounds nuw (i8, ptr @__const.migrateGetKeys.skip_keywords, i64 32), %.preheader.2 ], [ getelementptr inbounds nuw (i8, ptr @__const.migrateGetKeys.skip_keywords, i64 48), %.preheader.3 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !166
  %i.ai = add nsw i32 %i.ah, %.03245
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.3, %bb.h
  %.1 = phi i32 [ %i.ai, %bb.h ], [ %.03245, %.preheader.3 ]
  %i.aj = add nsw i32 %.1, 1                      ; 2 uses
  %i.ak = icmp slt i32 %i.aj, %2
  br i1 %i.ak, label %.preheader40, label %.loopexit41, !llvm.loop !256

.loopexit41:                                      ; preds = %.loopexit, %sdslen.exit, %sdslen.exit.thread, %bb.a
  %.030 = phi i32 [ 1, %bb.a ], [ %i.ac, %sdslen.exit.thread ], [ 0, %sdslen.exit ], [ 1, %.loopexit ] ; 8 uses
  %.0 = phi i32 [ 3, %bb.a ], [ %i.ab, %sdslen.exit.thread ], [ 3, %sdslen.exit ], [ 3, %.loopexit ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.loopexit41
  %i.an = load i32, ptr %3, align 8, !tbaa !150
  %.not22.i = icmp eq i32 %i.an, 0
  br i1 %.not22.i, label %bb.k, label %bb.j, !prof !98

bb.j:                                             ; preds = %bb.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 3038) #20
  tail call void @abort() #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !112
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit41
  %i.ap = phi ptr [ %i.ao, %bb.k ], [ %i.am, %.loopexit41 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !151
  %i.as = icmp sgt i32 %.030, %i.ar
  br i1 %i.as, label %bb.m, label %getKeysPrepareResult.exit

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.ap, %i.at
  %i.au = sext i32 %.030 to i64
  %i.av = shl nsw i64 %i.au, 3                    ; 2 uses
  br i1 %.not23.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = tail call ptr @zrealloc(ptr noundef nonnull %i.ap, i64 noundef %i.av) #25 ; 2 uses
  store ptr %i.aw, ptr %i.al, align 8, !tbaa !112
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ax = tail call noalias ptr @zmalloc(i64 noundef %i.av) #23 ; 4 uses
  store ptr %i.ax, ptr %i.al, align 8, !tbaa !112
  %i.ay = load i32, ptr %3, align 8, !tbaa !150   ; 2 uses
  %.not24.i = icmp eq i32 %i.ay, 0
  br i1 %.not24.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ax, ptr nonnull align 8 %i.at, i64 %i.ba, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bb = phi ptr [ %i.ax, %bb.o ], [ %i.ax, %bb.p ], [ %i.aw, %bb.n ]
  store i32 %.030, ptr %i.aq, align 4, !tbaa !151
  br label %getKeysPrepareResult.exit

getKeysPrepareResult.exit:                        ; preds = %bb.l, %bb.q
  %i.bc = phi ptr [ %i.bb, %bb.q ], [ %i.ap, %bb.l ] ; 3 uses
  %i.bd = icmp sgt i32 %.030, 0
  br i1 %i.bd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %getKeysPrepareResult.exit
  %wide.trip.count = zext nneg i32 %.030 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %.030, 4
  br i1 %min.iters.check, label %.lr.ph.preheader60, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.0, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <2 x i32> splat (i32 2), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %4 = add <2 x i32> %broadcast.splat, %vec.ind
  %.reass = add <2 x i32> %vec.ind, %invariant.op
  %interleaved.vec = shufflevector <2 x i32> %4, <2 x i32> splat (i32 146), <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.be, align 4, !tbaa !18
  %interleaved.vec59 = shufflevector <2 x i32> %.reass, <2 x i32> splat (i32 146), <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec59, ptr %i.bg, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader60

.lr.ph.preheader60:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader60, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader60 ] ; 3 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv ; 2 uses
  %6 = trunc i64 %indvars.iv to i32
  %7 = add i32 %.0, %6
  store i32 %7, ptr %5, align 4, !tbaa !158
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 146, ptr %i.bi, align 4, !tbaa !159
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !258

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %getKeysPrepareResult.exit
  store i32 %.030, ptr %3, align 8, !tbaa !150
  ret i32 %.030
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 3) i32 @georadiusGetKeys(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 5
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.029 = phi i32 [ %.1, %bb.d ], [ -1, %bb.a ]   ; 2 uses
  %.02228 = phi i32 [ %i.k, %bb.d ], [ 5, %bb.a ] ; 4 uses
  %i.b = sext i32 %.02228 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %i.g = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.76) #24
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.81) #24
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = add nsw i32 %.02228, 1                   ; 3 uses
  %i.j = icmp slt i32 %i.i, %2                    ; 2 uses
  %spec.select = select i1 %i.j, i32 %i.i, i32 %.02228
  %spec.select27 = select i1 %i.j, i32 %i.i, i32 %.029
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.123 = phi i32 [ %.02228, %bb.b ], [ %spec.select, %bb.c ]
  %.1 = phi i32 [ %.029, %bb.b ], [ %spec.select27, %bb.c ] ; 2 uses
  %i.k = add nsw i32 %.123, 1                     ; 2 uses
  %i.l = icmp slt i32 %i.k, %2
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !259

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %.not.not = icmp eq i32 %.0.lcssa, -1           ; 2 uses
  %i.m = select i1 %.not.not, i32 1, i32 2        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !112  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %._crit_edge
  %i.p = load i32, ptr %3, align 8, !tbaa !150
  %.not22.i = icmp eq i32 %i.p, 0
  br i1 %.not22.i, label %bb.g, label %bb.f, !prof !98

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 3038) #20
  tail call void @abort() #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.n, align 8, !tbaa !112
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.r = phi ptr [ %i.q, %bb.g ], [ %i.o, %._crit_edge ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !151
  %i.u = icmp sgt i32 %i.m, %i.t
  br i1 %i.u, label %bb.i, label %getKeysPrepareResult.exit

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.r, %i.v
  %i.w = shl nuw nsw i32 %i.m, 3
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  br i1 %.not23.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr @zrealloc(ptr noundef nonnull %i.r, i64 noundef %i.x) #25 ; 2 uses
  store ptr %i.y, ptr %i.n, align 8, !tbaa !112
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.z = tail call noalias ptr @zmalloc(i64 noundef %i.x) #23 ; 4 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !112
  %i.aa = load i32, ptr %3, align 8, !tbaa !150   ; 2 uses
  %.not24.i = icmp eq i32 %i.aa, 0
  br i1 %.not24.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr nonnull align 8 %i.v, i64 %i.ac, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ad = phi ptr [ %i.z, %bb.k ], [ %i.z, %bb.l ], [ %i.y, %bb.j ]
  store i32 %i.m, ptr %i.s, align 4, !tbaa !151
  br label %getKeysPrepareResult.exit

getKeysPrepareResult.exit:                        ; preds = %bb.h, %bb.m
  %i.ae = phi ptr [ %i.ad, %bb.m ], [ %i.r, %bb.h ] ; 4 uses
  store i32 1, ptr %i.ae, align 4, !tbaa !158
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 0, ptr %i.af, align 4, !tbaa !159
  br i1 %.not.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %getKeysPrepareResult.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %.0.lcssa, ptr %i.ag, align 4, !tbaa !158
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !159
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %getKeysPrepareResult.exit
  store i32 %i.m, ptr %3, align 8, !tbaa !150
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1073741824, 1073741824) i32 @xreadGetKeys(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 1
  br i1 %i.a, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.04361 = phi i32 [ %i.o, %bb.i ], [ 1, %bb.a ] ; 12 uses
  %i.b = sext i32 %.04361 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 5 uses
  %i.g = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.82) #24
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = add i32 %.04361, 1
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.i = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.36) #24
  %.not47 = icmp eq i32 %i.i, 0
  br i1 %.not47, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %.04361, 1
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.k = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.83) #24
  %.not48 = icmp eq i32 %i.k, 0
  br i1 %.not48, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = add i32 %.04361, 2
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.m = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.84) #24
  %.not49 = icmp eq i32 %i.m, 0
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.85) #24
  %.not50 = icmp eq i32 %i.n, 0
  br i1 %.not50, label %.loopexit59, label %.loopexit

bb.i:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.245.ph = phi i32 [ %i.h, %bb.b ], [ %i.j, %bb.d ], [ %i.l, %bb.f ], [ %.04361, %bb.g ]
  %i.o = add i32 %.245.ph, 1                      ; 2 uses
  %i.p = icmp slt i32 %i.o, %2
  br i1 %i.p, label %.lr.ph, label %.loopexit, !llvm.loop !260

.loopexit59:                                      ; preds = %bb.h
  %.not51 = icmp eq i32 %.04361, -1
  %i.q = xor i32 %.04361, -1
  %i.r = add i32 %2, %i.q                         ; 3 uses
  br i1 %.not51, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.loopexit59
  %i.s = icmp ne i32 %i.r, 0
  %i.t = and i32 %i.r, 1
  %.not52 = icmp eq i32 %i.t, 0
  %or.cond53 = and i1 %i.s, %.not52
  br i1 %or.cond53, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.u = ashr exact i32 %i.r, 1                   ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !112  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
end_hunk_0
