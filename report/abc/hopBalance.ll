Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/hopBalance?download=true
inline.NumInlined: 93
inline.NumDeleted: 35
begin_hunk_0_@Hop_NodeBalanceCone_rec:bb.a
bb.e:                                             ; preds = %.lr.ph54, %bb.d
  %indvars.iv60 = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next61, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv60
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = icmp eq ptr %i.t, %i.o
  br i1 %i.u, label %.loopexit, label %bb.d

bb.f:                                             ; preds = %bb.a
  %.not39 = icmp eq ptr %1, %0
  br i1 %.not39, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.a, 1
  %.not40 = icmp eq i64 %i.v, 0
  br i1 %.not40, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %1, i64 32
  %.val43 = load i32, ptr %i.w, align 8           ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 32
  %.val42 = load i32, ptr %i.x, align 8
  %i.y = xor i32 %.val42, %.val43
  %i.z = and i32 %i.y, 7
  %.not41 = icmp ne i32 %i.z, 0
  %i.aa = icmp ugt i32 %.val43, 127
  %or.cond48 = or i1 %i.aa, %.not41
  br i1 %or.cond48, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %2, i64 4
  %.val = load i32, ptr %i.ab, align 4, !tbaa !19
  %i.ac = icmp sgt i32 %.val, 10000
  br i1 %i.ac, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !19 ; 7 uses
  %i.af = load i32, ptr %2, align 8, !tbaa !27
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.k, label %Vec_PtrPush.exit

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp slt i32 %i.ae, 16
  br i1 %i.ah, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aj, null
  br i1 %.not9.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.aj, i64 noundef 128) #12
  br label %Vec_PtrGrow.exit.i

bb.n:                                             ; preds = %bb.l
  %i.al = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #11
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.n, %bb.m
  %i.am = phi ptr [ %i.ak, %bb.m ], [ %i.al, %bb.n ]
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !20
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.o:                                             ; preds = %bb.k
  %i.an = icmp samesign ult i32 %i.ae, 1073741823
  %i.ao = shl nuw nsw i32 %i.ae, 1
  %spec.select.i = select i1 %i.an, i32 %i.ao, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.ae, %spec.select.i
  br i1 %.not.i10.i, label %bb.p, label %Vec_PtrPush.exit

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.aq, null
  %i.ar = zext nneg i32 %spec.select.i to i64
  %i.as = shl nuw nsw i64 %i.ar, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = tail call ptr @realloc(ptr noundef nonnull %i.aq, i64 noundef %i.as) #12
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.as) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.av = phi ptr [ %i.at, %bb.q ], [ %i.au, %bb.r ]
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !20
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.s, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.s ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !27
  %.pre = load i32, ptr %i.ad, align 4, !tbaa !19
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.j, %bb.o, %Vec_PtrGrow.exit12.sink.split.i
  %i.aw = phi i32 [ %i.ae, %bb.j ], [ %i.ae, %bb.o ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = add nsw i32 %i.aw, 1
  store i32 %i.az, ptr %i.ad, align 4, !tbaa !19
  %i.ba = sext i32 %i.aw to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.ba
  store ptr %1, ptr %i.bb, align 8, !tbaa !21
  %i.bc = load i32, ptr %i.d, align 8
  %i.bd = or i32 %i.bc, 32
  store i32 %i.bd, ptr %i.d, align 8
  br label %.loopexit

bb.t:                                             ; preds = %bb.i, %bb.f
  %i.be = getelementptr i8, ptr %1, i64 16
  %.val45 = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.bf = tail call i32 @Hop_NodeBalanceCone_rec(ptr noundef %0, ptr noundef %.val45, ptr noundef %2) ; 2 uses
  %i.bg = getelementptr i8, ptr %1, i64 24
  %.val46 = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.bh = tail call i32 @Hop_NodeBalanceCone_rec(ptr noundef %0, ptr noundef %.val46, ptr noundef %2) ; 2 uses
  %i.bi = icmp eq i32 %i.bf, -1
  %i.bj = icmp eq i32 %i.bh, -1
  %or.cond = select i1 %i.bi, i1 true, i1 %i.bj
  br i1 %or.cond, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = icmp ne i32 %i.bf, 0
  %i.bl = icmp ne i32 %i.bh, 0
  %i.bm = select i1 %i.bk, i1 true, i1 %i.bl
  %i.bn = zext i1 %i.bm to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.d, %.preheader49, %bb.t, %bb.u, %Vec_PtrPush.exit
  %.034 = phi i32 [ %i.bn, %bb.u ], [ 0, %bb.d ], [ -1, %bb.t ], [ 0, %Vec_PtrPush.exit ], [ 0, %.preheader49 ], [ -1, %bb.e ], [ 1, %bb.c ]
  ret i32 %.034
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 2) i32 @Hop_NodeCompareLevelsDecrease(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, -2
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %.val10 = load i32, ptr %i.e, align 8
  %i.f = lshr i32 %.val10, 6
  %i.g = load ptr, ptr %1, align 8, !tbaa !43
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, -2
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %.val = load i32, ptr %i.k, align 8
  %i.l = lshr i32 %.val, 6
  %i.m = sub nsw i32 %i.f, %i.l                   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !29   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !29   ; 2 uses
  %i.t = icmp sgt i32 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp ne i32 %i.q, %i.s
  %. = zext i1 %.not to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @Hop_NodeBalanceBuildSuper(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19   ; 2 uses
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %._crit_edge, label %Vec_PtrSort.exit

Vec_PtrSort.exit:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = zext nneg i32 %i.b to i64
  tail call void @qsort(ptr noundef %i.e, i64 noundef %i.f, i64 noundef 8, ptr noundef nonnull @Hop_NodeCompareLevelsDecrease) #10
  %.pre = load i32, ptr %i.a, align 4, !tbaa !19  ; 2 uses
  %i.g = icmp sgt i32 %.pre, 1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_PtrSort.exit
  %.not = icmp eq i32 %3, 0
  %i.h = getelementptr i8, ptr %1, i64 8          ; 13 uses
  %.not22 = icmp eq i32 %2, 5
  %4 = zext i1 %.not22 to i32
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %invariant.op = or disjoint i32 %4, 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Hop_NodeBalancePushUniqueOrderByLevel.exit
  %i.m = phi i32 [ %.pre, %.lr.ph ], [ %i.ef, %Hop_NodeBalancePushUniqueOrderByLevel.exit ] ; 5 uses
  %i.n = icmp eq i32 %i.m, 2
  %or.cond = or i1 %.not, %i.n
  br i1 %or.cond, label %Hop_NodeBalanceFindLeft.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.val19.i = load ptr, ptr %i.h, align 8, !tbaa !20 ; 2 uses
  %i.o = add nsw i32 %i.m, -3
  %i.p = zext nneg i32 %i.m to i64
  %i.q = getelementptr [8 x i8], ptr %.val19.i, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, -2
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr i8, ptr %i.v, i64 32
  %.val20.i = load i32, ptr %i.w, align 8
  %i.x = zext nneg i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.x, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, -2
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  %.val21.i = load i32, ptr %i.ad, align 8
  %.not.unshifted.i = xor i32 %.val21.i, %.val20.i
  %.not.i = icmp ult i32 %.not.unshifted.i, 64
  br i1 %.not.i, label %bb.d, label %._crit_edge.split.loop.exit26.i

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ae = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.ae, label %bb.c, label %Hop_NodeBalanceFindLeft.exit, !llvm.loop !44

._crit_edge.split.loop.exit26.i:                  ; preds = %bb.c
  %i.af = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ag = add nsw i32 %i.af, 1
  br label %Hop_NodeBalanceFindLeft.exit

Hop_NodeBalanceFindLeft.exit:                     ; preds = %bb.d, %._crit_edge.split.loop.exit26.i, %bb.b
  %i.ah = phi i32 [ 0, %bb.b ], [ %i.ag, %._crit_edge.split.loop.exit26.i ], [ 0, %bb.d ] ; 3 uses
  %i.ai = add nsw i32 %i.m, -2                    ; 3 uses
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %Hop_NodeBalancePermute.exit, label %bb.e

bb.e:                                             ; preds = %Hop_NodeBalanceFindLeft.exit
  %.val46.i = load ptr, ptr %i.h, align 8, !tbaa !20 ; 2 uses
  %i.ak = zext nneg i32 %i.m to i64               ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %.val46.i, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21 ; 3 uses
  %i.ao = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val46.i, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 3 uses
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = and i64 %i.ar, -2
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.at
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = and i64 %i.aw, -2
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = icmp eq ptr %i.au, %i.ay
  %or.cond.i = select i1 %i.av, i1 true, i1 %i.az
  %.not60.i = icmp slt i32 %i.ai, %i.ah
  %or.cond62.i = or i1 %.not60.i, %or.cond.i
  br i1 %or.cond62.i, label %Hop_NodeBalancePermute.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 36
  %i.bb = add nsw i64 %i.ak, -2
  %i.bc = sext i32 %i.ah to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.h
  %indvars.iv.next.i17 = add nsw i64 %indvars.iv.i16, -1
  %.not.not.i = icmp sgt i64 %indvars.iv.i16, %i.bc
  br i1 %.not.not.i, label %bb.g, label %Hop_NodeBalancePermute.exit, !llvm.loop !45

bb.g:                                             ; preds = %bb.f, %.lr.ph.i15
  %indvars.iv.i16 = phi i64 [ %i.bb, %.lr.ph.i15 ], [ %indvars.iv.next.i17, %bb.f ] ; 4 uses
  %.val44.i = load ptr, ptr %i.h, align 8, !tbaa !20 ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.val44.i, i64 %indvars.iv.i16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !21 ; 5 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = and i64 %i.bf, -2
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bi = load ptr, ptr %5, align 8, !tbaa !16
  %i.bj = icmp eq ptr %i.bi, %i.bh
  br i1 %i.bj, label %.loopexit.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = load i32, ptr %i.i, align 8
  %i.bl = and i32 %i.bk, -8
  %i.bm = or disjoint i32 %i.bl, %invariant.op
  store i32 %i.bm, ptr %i.i, align 8
  %i.bn = load i32, ptr %i.ba, align 4, !tbaa !29
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 36
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !29
  %i.bq = icmp slt i32 %i.bn, %i.bp               ; 2 uses
  %spec.select.i.i = select i1 %i.bq, ptr %i.an, ptr %i.be
  %spec.select14.i.i = select i1 %i.bq, ptr %i.be, ptr %i.an
  store ptr %spec.select.i.i, ptr %i.j, align 8, !tbaa !26
  store ptr %spec.select14.i.i, ptr %i.k, align 8, !tbaa !28
  %i.br = tail call ptr @Hop_TableLookup(ptr noundef nonnull %0, ptr noundef nonnull %i.l) #10
  %.not43.i = icmp eq ptr %i.br, null
  br i1 %.not43.i, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = icmp eq ptr %i.be, %i.aq
  br i1 %i.bs, label %Hop_NodeBalancePermute.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val48.i = load ptr, ptr %i.h, align 8, !tbaa !20
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.g, %bb.j
  %.val48.i.sink = phi ptr [ %.val48.i, %bb.j ], [ %.val44.i, %bb.g ]
  %i.bt = getelementptr inbounds [8 x i8], ptr %.val48.i.sink, i64 %indvars.iv.i16
  store ptr %i.aq, ptr %i.bt, align 8, !tbaa !21
  %.val47.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.val47.i, i64 %i.ao
  store ptr %i.be, ptr %i.bu, align 8, !tbaa !21
  br label %Hop_NodeBalancePermute.exit

Hop_NodeBalancePermute.exit:                      ; preds = %bb.f, %Hop_NodeBalanceFindLeft.exit, %bb.e, %bb.i, %.loopexit.sink.split.i
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !20  ; 2 uses
  %i.bw = load i32, ptr %i.a, align 4, !tbaa !19  ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [8 x i8], ptr %i.bv, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !21
  %i.cb = add nsw i32 %i.bw, -2                   ; 2 uses
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !19
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !21
  %i.cf = tail call ptr @Hop_Oper(ptr noundef %0, ptr noundef %i.ca, ptr noundef %i.ce, i32 noundef %2) #10 ; 3 uses
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !19  ; 12 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %Hop_NodeBalancePermute.exit
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !20
  %wide.trip.count.i.i = zext nneg i32 %i.cg to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.l, !llvm.loop !46

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.k ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !21
  %i.cl = icmp eq ptr %i.ck, %i.cf
  br i1 %i.cl, label %Hop_NodeBalancePushUniqueOrderByLevel.exit, label %bb.k

._crit_edge.i.i:                                  ; preds = %bb.k, %Hop_NodeBalancePermute.exit
  %i.cm = load i32, ptr %1, align 8, !tbaa !27
  %i.cn = icmp eq i32 %i.cg, %i.cm
  br i1 %i.cn, label %bb.m, label %._crit_edge.i.i._crit_edge

._crit_edge.i.i._crit_edge:                       ; preds = %._crit_edge.i.i
  %.pre40 = load ptr, ptr %i.h, align 8, !tbaa !20
  br label %bb.u

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.co = icmp slt i32 %i.cg, 16
  br i1 %i.co, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !20  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not9.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.cp, i64 noundef 128) #12
  br label %Vec_PtrGrow.exit12.sink.split.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cr = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #11
  br label %Vec_PtrGrow.exit12.sink.split.i.i.i

bb.q:                                             ; preds = %bb.m
  %i.cs = icmp samesign ult i32 %i.cg, 1073741823
  %i.ct = shl nuw nsw i32 %i.cg, 1
  %spec.select.i.i.i = select i1 %i.cs, i32 %i.ct, i32 2147483647 ; 4 uses
  %.not.i10.i.i.i = icmp samesign ult i32 %i.cg, %spec.select.i.i.i
  %i.cu = load ptr, ptr %i.h, align 8, !tbaa !20  ; 3 uses
  br i1 %.not.i10.i.i.i, label %bb.r, label %.thread.i

.thread.i:                                        ; preds = %bb.q
  %i.cv = add nuw i32 %i.cg, 1                    ; 2 uses
  store i32 %i.cv, ptr %i.a, align 4, !tbaa !19
  %i.cw = zext nneg i32 %i.cg to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cw
  store ptr %i.cf, ptr %i.cx, align 8, !tbaa !21
  br label %.lr.ph.preheader.i

bb.r:                                             ; preds = %bb.q
  %.not9.i11.i.i.i = icmp eq ptr %i.cu, null
  %i.cy = zext nneg i32 %spec.select.i.i.i to i64
  %i.cz = shl nuw nsw i64 %i.cy, 3                ; 2 uses
  br i1 %.not9.i11.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = tail call ptr @realloc(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #12
  br label %Vec_PtrGrow.exit12.sink.split.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.db = tail call noalias ptr @malloc(i64 noundef %i.cz) #11
  br label %Vec_PtrGrow.exit12.sink.split.i.i.i

Vec_PtrGrow.exit12.sink.split.i.i.i:              ; preds = %bb.s, %bb.t, %bb.o, %bb.p
  %storemerge = phi ptr [ %i.cr, %bb.p ], [ %i.cq, %bb.o ], [ %i.da, %bb.s ], [ %i.db, %bb.t ] ; 2 uses
  %spec.select.sink.i.i.i = phi i32 [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i.i.i, %bb.s ], [ %spec.select.i.i.i, %bb.t ]
  store ptr %storemerge, ptr %i.h, align 8, !tbaa !20
  store i32 %spec.select.sink.i.i.i, ptr %1, align 8, !tbaa !27
  %.pre.i.i = load i32, ptr %i.a, align 4, !tbaa !19
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i._crit_edge, %Vec_PtrGrow.exit12.sink.split.i.i.i
  %i.dc = phi ptr [ %.pre40, %._crit_edge.i.i._crit_edge ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i.i.i ]
  %i.dd = phi i32 [ %i.cg, %._crit_edge.i.i._crit_edge ], [ %.pre.i.i, %Vec_PtrGrow.exit12.sink.split.i.i.i ] ; 4 uses
  %i.de = add i32 %i.dd, 1                        ; 2 uses
  store i32 %i.de, ptr %i.a, align 4, !tbaa !19
  %i.df = sext i32 %i.dd to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.df
  store ptr %i.cf, ptr %i.dg, align 8, !tbaa !21
  %i.dh = icmp sgt i32 %i.dd, 0
  br i1 %i.dh, label %.lr.ph.preheader.i, label %._crit_edge

.lr.ph.preheader.i:                               ; preds = %bb.u, %.thread.i
  %i.di = phi i32 [ %i.cv, %.thread.i ], [ %i.de, %bb.u ] ; 3 uses
  %i.dj = phi i32 [ %i.cg, %.thread.i ], [ %i.dd, %bb.u ]
  %i.dk = zext i32 %i.di to i64
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %bb.v, %.lr.ph.preheader.i
  %indvars.iv.i19 = phi i64 [ %i.dk, %.lr.ph.preheader.i ], [ %indvars.iv.next.i21, %bb.v ] ; 2 uses
  %.022.i = phi i32 [ %i.dj, %.lr.ph.preheader.i ], [ %.0.i, %bb.v ] ; 3 uses
  %i.dl = load ptr, ptr %i.h, align 8, !tbaa !20  ; 2 uses
  %i.dm = zext nneg i32 %.022.i to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !21 ; 2 uses
  %i.dp = add nsw i64 %indvars.iv.i19, -2         ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !21 ; 2 uses
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = and i64 %i.ds, -2
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = getelementptr i8, ptr %i.du, i64 32
  %.val17.i = load i32, ptr %i.dv, align 8
  %i.dw = lshr i32 %.val17.i, 6
  %i.dx = ptrtoint ptr %i.dr to i64
  %i.dy = and i64 %i.dx, -2
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = getelementptr i8, ptr %i.dz, i64 32
  %.val.i20 = load i32, ptr %i.ea, align 8
  %i.eb = lshr i32 %.val.i20, 6
  %.not16.i = icmp samesign ugt i32 %i.dw, %i.eb
  br i1 %.not16.i, label %bb.v, label %Hop_NodeBalancePushUniqueOrderByLevel.exit

bb.v:                                             ; preds = %.lr.ph.i18
  store ptr %i.dr, ptr %i.dn, align 8, !tbaa !21
  %i.ec = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dp
  store ptr %i.do, ptr %i.ed, align 8, !tbaa !21
  %.0.i = add nsw i32 %.022.i, -1
  %i.ee = icmp sgt i32 %.022.i, 1
  %indvars.iv.next.i21 = add nsw i64 %indvars.iv.i19, -1
  br i1 %i.ee, label %.lr.ph.i18, label %Hop_NodeBalancePushUniqueOrderByLevel.exit, !llvm.loop !47

Hop_NodeBalancePushUniqueOrderByLevel.exit:       ; preds = %bb.l, %.lr.ph.i18, %bb.v
  %i.ef = phi i32 [ %i.di, %.lr.ph.i18 ], [ %i.di, %bb.v ], [ %i.cg, %bb.l ] ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.b, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.u, %Hop_NodeBalancePushUniqueOrderByLevel.exit, %bb.a, %Vec_PtrSort.exit
  %i.eh = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.eh, align 8, !tbaa !20
  %i.ei = load ptr, ptr %.val, align 8, !tbaa !21
  ret ptr %i.ei
}

declare ptr @Hop_Oper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

end_hunk_0
