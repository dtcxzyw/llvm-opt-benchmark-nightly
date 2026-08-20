inline.NumInlined: 146
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@migrateGetKeys:bb.a
  %i.az = load i32, ptr %3, align 8, !tbaa !213   ; 2 uses
  %.not24.i = icmp eq i32 %i.az, 0
  br i1 %.not24.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ay, ptr nonnull align 8 %i.au, i64 %i.bb, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %i.ay, %bb.o ], [ %i.ay, %bb.p ], [ %i.ax, %bb.n ]
  store i32 %.030, ptr %i.ar, align 4, !tbaa !214
  br label %getKeysPrepareResult.exit

getKeysPrepareResult.exit:                        ; preds = %bb.l, %bb.q
  %i.bd = phi ptr [ %i.bc, %bb.q ], [ %i.aq, %bb.l ] ; 3 uses
  %i.be = icmp sgt i32 %.030, 0
  br i1 %i.be, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %getKeysPrepareResult.exit
  %wide.trip.count = zext nneg i32 %.030 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %.030, 4
  br i1 %min.iters.check, label %.lr.ph.preheader60, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw <2 x i64> splat (i64 2), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.bf = add nuw <2 x i64> %vec.ind, %broadcast.splat
  %.reass = add nuw <2 x i64> %vec.ind, %invariant.op
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = trunc <2 x i64> %i.bf to <2 x i32>
  %i.bk = trunc <2 x i64> %.reass to <2 x i32>
  %interleaved.vec = shufflevector <2 x i32> %i.bj, <2 x i32> splat (i32 146), <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bg, align 4, !tbaa !9
  %interleaved.vec59 = shufflevector <2 x i32> %i.bk, <2 x i32> splat (i32 146), <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec59, ptr %i.bi, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader60

.lr.ph.preheader60:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader60, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader60 ] ; 3 uses
  %i.bm = add nuw i64 %indvars.iv, %.0
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv ; 2 uses
  %i.bo = trunc i64 %i.bm to i32
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !226
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 146, ptr %i.bp, align 4, !tbaa !228
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !258

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %getKeysPrepareResult.exit
  store i32 %.030, ptr %3, align 8, !tbaa !213
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
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
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %._crit_edge
  %i.p = load i32, ptr %3, align 8, !tbaa !213
  %.not22.i = icmp eq i32 %i.p, 0
  br i1 %.not22.i, label %bb.g, label %bb.f, !prof !101

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 3038) #20
  tail call void @abort() #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.n, align 8, !tbaa !118
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.r = phi ptr [ %i.q, %bb.g ], [ %i.o, %._crit_edge ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !214
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
  store ptr %i.y, ptr %i.n, align 8, !tbaa !118
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.z = tail call noalias ptr @zmalloc(i64 noundef %i.x) #23 ; 4 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !118
  %i.aa = load i32, ptr %3, align 8, !tbaa !213   ; 2 uses
  %.not24.i = icmp eq i32 %i.aa, 0
  br i1 %.not24.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr nonnull align 8 %i.v, i64 %i.ac, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ad = phi ptr [ %i.z, %bb.k ], [ %i.z, %bb.l ], [ %i.y, %bb.j ]
  store i32 %i.m, ptr %i.s, align 4, !tbaa !214
  br label %getKeysPrepareResult.exit

getKeysPrepareResult.exit:                        ; preds = %bb.h, %bb.m
  %i.ae = phi ptr [ %i.ad, %bb.m ], [ %i.r, %bb.h ] ; 4 uses
  store i32 1, ptr %i.ae, align 4, !tbaa !226
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 0, ptr %i.af, align 4, !tbaa !228
  br i1 %.not.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %getKeysPrepareResult.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %.0.lcssa, ptr %i.ag, align 4, !tbaa !226
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !228
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %getKeysPrepareResult.exit
  store i32 %i.m, ptr %3, align 8, !tbaa !213
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1073741824, 1073741824) i32 @xreadGetKeys(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 1
  br i1 %i.a, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.04361 = phi i32 [ %i.o, %bb.i ], [ 1, %bb.a ] ; 10 uses
  %i.b = sext i32 %.04361 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 5 uses
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.x = load i32, ptr %3, align 8, !tbaa !213
  %.not22.i = icmp eq i32 %i.x, 0
  br i1 %.not22.i, label %bb.n, label %bb.m, !prof !101

bb.m:                                             ; preds = %bb.l
  tail call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 3038) #20
  tail call void @abort() #21
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.v, align 8, !tbaa !118
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.z = phi ptr [ %i.y, %bb.n ], [ %i.w, %bb.k ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !214
  %i.ac = icmp sgt i32 %i.u, %i.ab
  br i1 %i.ac, label %bb.p, label %getKeysPrepareResult.exit

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.z, %i.ad
  %i.ae = sext i32 %i.u to i64
  %i.af = shl nsw i64 %i.ae, 3                    ; 2 uses
  br i1 %.not23.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = tail call ptr @zrealloc(ptr noundef nonnull %i.z, i64 noundef %i.af) #25 ; 2 uses
  store ptr %i.ag, ptr %i.v, align 8, !tbaa !118
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ah = tail call noalias ptr @zmalloc(i64 noundef %i.af) #23 ; 4 uses
  store ptr %i.ah, ptr %i.v, align 8, !tbaa !118
  %i.ai = load i32, ptr %3, align 8, !tbaa !213   ; 2 uses
  %.not24.i = icmp eq i32 %i.ai, 0
  br i1 %.not24.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = sext i32 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ah, ptr nonnull align 8 %i.ad, i64 %i.ak, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.al = phi ptr [ %i.ah, %bb.r ], [ %i.ah, %bb.s ], [ %i.ag, %bb.q ]
  store i32 %i.u, ptr %i.aa, align 4, !tbaa !214
  br label %getKeysPrepareResult.exit

getKeysPrepareResult.exit:                        ; preds = %bb.o, %bb.t
  %i.am = phi ptr [ %i.al, %bb.t ], [ %i.z, %bb.o ] ; 3 uses
  %i.an = sub nsw i32 %2, %i.u                    ; 2 uses
  %.362 = add nsw i32 %.04361, 1                  ; 3 uses
  %i.ao = icmp slt i32 %.362, %i.an
  br i1 %i.ao, label %.lr.ph65.preheader, label %.loopexit

.lr.ph65.preheader:                               ; preds = %getKeysPrepareResult.exit
  %i.ap = sext i32 %.362 to i64                   ; 7 uses
  %i.aq = sext i32 %i.an to i64                   ; 3 uses
  %4 = zext i32 %.04361 to i64                    ; 3 uses
  %i.ar = add nsw i64 %i.ap, 1
  %i.as = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 %i.ar)
  %i.at = sub i64 %i.as, %i.ap                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.at, 10
  br i1 %min.iters.check, label %.lr.ph65.preheader93, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph65.preheader
  %i.au = add nsw i64 %i.ap, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 %i.au)
  %i.av = sub i64 %i.ap, %smax
  %.not92 = icmp ugt i64 %i.av, -2147483649
  br i1 %.not92, label %vector.ph, label %.lr.ph65.preheader93

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.at, -4                      ; 4 uses
  %i.aw = add i64 %n.vec, %4
  %5 = add i64 %n.vec, %i.ap
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.362, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i32> %broadcast.splat, <i32 0, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ax = trunc i64 %index to i32
  %.reass100 = add i32 %i.ax, 2
  %sext = shl i64 %index, 32
  %i.ay = sext i32 %.reass100 to i64
  %i.az = ashr exact i64 %sext, 29
  %i.ba = getelementptr inbounds i8, ptr %i.am, i64 %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ay
  %interleaved.vec = shufflevector <2 x i32> %vec.ind, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.ba, align 4, !tbaa !9
  %interleaved.vec90 = shufflevector <2 x i32> %step.add, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec90, ptr %i.bb, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader93

.lr.ph65.preheader93:                             ; preds = %vector.scevcheck, %.lr.ph65.preheader, %middle.block
  %indvars.iv.ph.a = phi i64 [ %4, %vector.scevcheck ], [ %4, %.lr.ph65.preheader ], [ %i.aw, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.ap, %vector.scevcheck ], [ %i.ap, %.lr.ph65.preheader ], [ %5, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader93, %.lr.ph65
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.lr.ph65 ], [ %indvars.iv.ph.a, %.lr.ph65.preheader93 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph65 ], [ %indvars.iv.ph, %.lr.ph65.preheader93 ] ; 2 uses
  %6 = trunc i64 %indvars.iv68 to i32
  %i.bd = sub i32 %6, %.04361
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.be ; 2 uses
  %i.bg = trunc nsw i64 %indvars.iv to i32
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !226
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 0, ptr %i.bh, align 4, !tbaa !228
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bi = icmp slt i64 %indvars.iv.next, %i.aq
  %indvars.iv.next69 = add i64 %indvars.iv68, 1
  br i1 %i.bi, label %.lr.ph65, label %.loopexit, !llvm.loop !262

.loopexit:                                        ; preds = %bb.i, %.lr.ph65, %middle.block, %.loopexit59, %bb.a, %bb.h, %getKeysPrepareResult.exit, %bb.j
  %storemerge = phi i32 [ 0, %bb.j ], [ %i.u, %getKeysPrepareResult.exit ], [ 0, %.loopexit59 ], [ 0, %bb.h ], [ 0, %bb.a ], [ %i.u, %middle.block ], [ %i.u, %.lr.ph65 ], [ 0, %bb.i ] ; 2 uses
  store i32 %storemerge, ptr %3, align 8, !tbaa !213
  ret i32 %storemerge
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setGetKeys(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %3, align 8, !tbaa !213
  %.not22.i = icmp eq i32 %i.c, 0
  br i1 %.not22.i, label %bb.d, label %bb.c, !prof !101

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 3038) #20
  tail call void @abort() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !118
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.e = phi ptr [ %i.d, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !214
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %getKeysPrepareResult.exit

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.e, %i.i
  br i1 %.not23.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call dereferenceable_or_null(8) ptr @zrealloc(ptr noundef nonnull %i.e, i64 noundef 8) #25 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !118
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.k = tail call noalias dereferenceable_or_null(8) ptr @zmalloc(i64 noundef 8) #23 ; 4 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !118
  %i.l = load i32, ptr %3, align 8, !tbaa !213    ; 2 uses
  %.not24.i = icmp eq i32 %i.l, 0
  br i1 %.not24.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.k, ptr nonnull align 8 %i.i, i64 %i.n, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.o = phi ptr [ %i.k, %bb.h ], [ %i.k, %bb.i ], [ %i.j, %bb.g ]
  store i32 1, ptr %i.f, align 4, !tbaa !214
  br label %getKeysPrepareResult.exit

getKeysPrepareResult.exit:                        ; preds = %bb.e, %bb.j
  %i.p = phi ptr [ %i.o, %bb.j ], [ %i.e, %bb.e ] ; 2 uses
  store i32 1, ptr %i.p, align 4, !tbaa !226
  store i32 1, ptr %3, align 8, !tbaa !213
  %i.q = icmp sgt i32 %2, 3
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %getKeysPrepareResult.exit
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.t
  %i.r = or i32 %.1, %.124
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %getKeysPrepareResult.exit
  %i.s = phi i32 [ 36, %getKeysPrepareResult.exit ], [ %i.r, %._crit_edge.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.s, ptr %i.t, align 4, !tbaa !228
  ret i32 1

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %indvars.iv = phi i64 [ 3, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %.02232 = phi i32 [ 32, %.lr.ph.preheader ], [ %.1, %bb.t ] ; 3 uses
  %.02331 = phi i32 [ 4, %.lr.ph.preheader ], [ %.124, %bb.t ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !103
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 8 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !110
  switch i8 %i.y, label %bb.o [
    i8 103, label %bb.k
    i8 71, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph, %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !110
  switch i8 %i.aa, label %bb.o [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !110
  switch i8 %i.ac, label %bb.o [
    i8 116, label %bb.m
    i8 84, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !110
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = or i32 %.02232, 16
  br label %bb.t

bb.o:                                             ; preds = %bb.l, %bb.k, %.lr.ph, %bb.m
  %i.ah = tail call i32 @strcasecmp(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.17) #24
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = tail call i32 @strcasecmp(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.18) #24
  %.not28 = icmp eq i32 %i.ai, 0
  br i1 %.not28, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = tail call i32 @strcasecmp(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.19) #24
  %.not29 = icmp eq i32 %i.aj, 0
  br i1 %.not29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = tail call i32 @strcasecmp(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.20) #24
  %.not30 = icmp eq i32 %i.ak, 0
  br i1 %.not30, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.n
  %.124 = phi i32 [ 2, %bb.n ], [ %.02331, %bb.r ], [ 2, %bb.s ] ; 2 uses
  %.1 = phi i32 [ %i.ag, %bb.n ], [ %.02232, %bb.r ], [ %.02232, %bb.s ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !263
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @delexGetKeys(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %3, align 8, !tbaa !213
  %.not22.i = icmp eq i32 %i.c, 0
  br i1 %.not22.i, label %bb.d, label %bb.c, !prof !101

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 3038) #20
  tail call void @abort() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !118
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.e = phi ptr [ %i.d, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !214
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %getKeysPrepareResult.exit

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.e, %i.i
  br i1 %.not23.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call dereferenceable_or_null(8) ptr @zrealloc(ptr noundef nonnull %i.e, i64 noundef 8) #25 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !118
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.k = tail call noalias dereferenceable_or_null(8) ptr @zmalloc(i64 noundef 8) #23 ; 4 uses
end_hunk_0
