Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mvcUtils?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Mvc_CoverRemap:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = tail call ptr @Mvc_CoverAlloc(ptr noundef %i.b, i32 noundef %2) #7 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.04246 = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  %.not47 = icmp eq ptr %.04246, null
  br i1 %.not47, label %.preheader, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  br label %bb.b

.preheader:                                       ; preds = %bb.g, %bb.a
  %i.h = icmp sgt i32 %2, 0
  br i1 %i.h, label %.lr.ph51.preheader, label %._crit_edge

.lr.ph51.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph51

bb.b:                                             ; preds = %.lr.ph49, %bb.g
  %.04248 = phi ptr [ %.04246, %.lr.ph49 ], [ %.042, %bb.g ]
  %i.i = tail call ptr @Mvc_CubeAlloc(ptr noundef %i.c) #7 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 5 uses
  %i.l = and i32 %i.k, 16777215                   ; 2 uses
  switch i32 %i.l, label %.lr.ph.preheader [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = lshr exact i32 %i.k, 24
  %i.n = and i32 %i.m, 63
  %i.o = lshr i32 -1, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %i.o, ptr %i.p, align 8, !tbaa !9
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 -1, ptr %i.q, align 8, !tbaa !9
  %i.r = lshr i32 %i.k, 24
  %i.s = and i32 %i.r, 63
  %i.t = lshr i32 -1, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 %i.t, ptr %i.u, align 4, !tbaa !9
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.v = lshr i32 %i.k, 24
  %i.w = and i32 %i.v, 63
  %i.x = lshr i32 -1, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.z = zext nneg i32 %i.l to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !9
  %i.ab = shl i32 %i.k, 2
  %i.ac = and i32 %i.ab, 67108860
  %i.ad = zext nneg i32 %i.ac to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.y, i8 -1, i64 %i.ad, i1 false), !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.preheader, %bb.d, %bb.c
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  store ptr %i.i, ptr %i.e, align 8, !tbaa !24
  br label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !25
  store ptr %i.i, ptr %i.ag, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.i, ptr %i.f, align 8, !tbaa !25
  store ptr null, ptr %i.i, align 8, !tbaa !27
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !28
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.g, align 8, !tbaa !28
  %.042 = load ptr, ptr %.04248, align 8, !tbaa !12 ; 2 uses
  %.not = icmp eq ptr %.042, null
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !94

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %Mvc_CoverCopyColumn.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph51.preheader ], [ %indvars.iv.next, %Mvc_CoverCopyColumn.exit ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9  ; 3 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %Mvc_CoverCopyColumn.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph51
  %i.am = tail call ptr @Mvc_CoverReadCubeHead(ptr noundef %i.c) #7
  %.01719.i = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  %.not20.i = icmp eq ptr %.01719.i, null
  br i1 %.not20.i, label %Mvc_CoverCopyColumn.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = and i32 %i.an, 31
  %i.ap = lshr i64 %indvars.iv, 5
  %i.aq = and i32 %i.ak, 31
  %i.ar = lshr i32 %i.ak, 5
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw i32 1, %i.aq
  %i.au = shl nuw i32 1, %i.ao                    ; 2 uses
  %i.av = and i64 %i.ap, 134217727
  %i.aw = xor i32 %i.au, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %.01722.i = phi ptr [ %.01719.i, %.lr.ph.i ], [ %.017.i, %bb.i ] ; 2 uses
  %.021.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.bg, %bb.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01722.i, i64 16
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.as
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !9
  %i.ba = and i32 %i.az, %i.at
  %.not18.i = icmp eq i32 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %.021.i, i64 16
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.av ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !9  ; 2 uses
  %i.be = and i32 %i.bd, %i.aw
  %i.bf = or i32 %i.bd, %i.au
  %.sink.i = select i1 %.not18.i, i32 %i.be, i32 %i.bf
  store i32 %.sink.i, ptr %i.bc, align 4, !tbaa !9
  %i.bg = load ptr, ptr %.021.i, align 8, !tbaa !27
  %.017.i = load ptr, ptr %.01722.i, align 8, !tbaa !12 ; 2 uses
  %.not.i = icmp eq ptr %.017.i, null
  br i1 %.not.i, label %Mvc_CoverCopyColumn.exit, label %bb.i, !llvm.loop !95

Mvc_CoverCopyColumn.exit:                         ; preds = %bb.i, %bb.h, %.lr.ph51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph51, !llvm.loop !96

._crit_edge:                                      ; preds = %Mvc_CoverCopyColumn.exit, %.preheader
  ret ptr %i.c
}

declare ptr @Mvc_CoverAlloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Mvc_CoverInverse(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.01720 = load ptr, ptr %i.a, align 8, !tbaa !12 ; 2 uses
  %.not21 = icmp eq ptr %.01720, null
  br i1 %.not21, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %.loopexit
  %.01722 = phi ptr [ %.017, %.loopexit ], [ %.01720, %bb.a ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01722, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 5 uses
  %i.d = and i32 %i.c, 16777215                   ; 2 uses
  switch i32 %i.d, label %.lr.ph.preheader [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph23
  %i.e = lshr exact i32 %i.c, 24
  %i.f = and i32 %i.e, 63
  %i.g = lshr i32 -1, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %.01722, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !9
  %i.j = xor i32 %i.i, %i.g
  store i32 %i.j, ptr %i.h, align 8, !tbaa !9
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph23
  %i.k = getelementptr inbounds nuw i8, ptr %.01722, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !9
  %i.m = xor i32 %i.l, -1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !9
  %i.n = lshr i32 %i.c, 24
  %i.o = and i32 %i.n, 63
  %i.p = lshr i32 -1, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.01722, i64 20 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9
  %i.s = xor i32 %i.r, %i.p
  store i32 %i.s, ptr %i.q, align 4, !tbaa !9
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph23
  %i.t = lshr i32 %i.c, 24
  %i.u = and i32 %i.t, 63
  %i.v = lshr i32 -1, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.01722, i64 16 ; 3 uses
  %i.x = zext nneg i32 %i.d to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !9
  %i.aa = xor i32 %i.z, %i.v
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !9
  %i.ab = and i32 %i.c, 16777215                  ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64              ; 5 uses
  %min.iters.check = icmp samesign ult i32 %i.ab, 8
  br i1 %min.iters.check, label %.lr.ph.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ac, 16777208                ; 2 uses
  %1 = and i64 %i.ac, 7
  %invariant.gep = getelementptr [4 x i8], ptr %i.w, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ad ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %gep, i64 -12 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %gep, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ae, align 4, !tbaa !9
  %wide.load26 = load <4 x i32>, ptr %i.af, align 4, !tbaa !9
  %i.ag = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.ah = xor <4 x i32> %wide.load26, splat (i32 -1)
  store <4 x i32> %i.ag, ptr %i.ae, align 4, !tbaa !9
  store <4 x i32> %i.ah, ptr %i.af, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader27

.lr.ph.preheader27:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ac, %.lr.ph.preheader ], [ %1, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader27, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader27 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9
  %i.al = xor i32 %i.ak, -1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !9
  %i.am = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.am, label %.lr.ph, label %.loopexit, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.b, %bb.c
  %.017 = load ptr, ptr %.01722, align 8, !tbaa !12 ; 2 uses
  %.not = icmp eq ptr %.017, null
  br i1 %.not, label %._crit_edge, label %.lr.ph23, !llvm.loop !99

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Mvc_CoverRemoveDontCareLits(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @Mvc_CoverDup(ptr noundef %0) #7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.06 = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %.not7 = icmp eq ptr %.06, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi ptr [ %.0, %.lr.ph ], [ %.06, %bb.a ] ; 2 uses
  tail call void @Mvc_CubeBitRemoveDcs(ptr noundef nonnull %.08) #7
  %.0 = load ptr, ptr %.08, align 8, !tbaa !12    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !100

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %i.a
}

declare ptr @Mvc_CoverDup(ptr noundef) local_unnamed_addr #2

declare void @Mvc_CubeBitRemoveDcs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Mvc_CoverCofactor(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @Mvc_CoverClone(ptr noundef %0) #7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.023 = load ptr, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %.not24 = icmp eq ptr %.023, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ashr i32 %1, 5
  %i.d = sext i32 %i.c to i64
  %i.e = and i32 %1, 31
  %i.f = shl nuw i32 1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.j = and i32 %2, 31
  %i.k = shl nuw i32 1, %i.j
  %i.l = ashr i32 %2, 5
  %i.m = sext i32 %i.l to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.025 = phi ptr [ %.023, %.lr.ph ], [ %.0, %bb.g ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.025, i64 16
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.d
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9
  %i.q = and i32 %i.p, %i.f
  %.not22 = icmp eq i32 %i.q, 0
  br i1 %.not22, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr @Mvc_CubeDup(ptr noundef %i.a, ptr noundef nonnull %.025) #7 ; 5 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.r, ptr %i.g, align 8, !tbaa !24
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !25
  store ptr %i.r, ptr %i.u, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.r, ptr %i.h, align 8, !tbaa !25
  store ptr null, ptr %i.r, align 8, !tbaa !27
  %i.v = load i32, ptr %i.i, align 8, !tbaa !28
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.i, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.m ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !9
  %i.aa = or i32 %i.z, %i.k
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %.0 = load ptr, ptr %.025, align 8, !tbaa !12   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !101

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret ptr %i.a
}

declare ptr @Mvc_CubeDup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Mvc_CoverFlipVar(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @Mvc_CoverClone(ptr noundef %0) #7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.042 = load ptr, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %.not43 = icmp eq ptr %.042, null
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.f = ashr i32 %1, 5
  %i.g = sext i32 %i.f to i64
  %i.h = and i32 %1, 31
  %i.i = shl nuw i32 1, %i.h                      ; 3 uses
  %i.j = ashr i32 %2, 5
  %i.k = sext i32 %i.j to i64
  %i.l = and i32 %2, 31
  %i.m = shl nuw i32 1, %i.l                      ; 3 uses
  %i.n = xor i32 %i.i, -1
  %i.o = xor i32 %i.m, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.044 = phi ptr [ %.042, %.lr.ph ], [ %.0, %bb.f ] ; 2 uses
  %i.p = tail call ptr @Mvc_CubeDup(ptr noundef %i.a, ptr noundef nonnull %.044) #7 ; 5 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.p, ptr %i.c, align 8, !tbaa !24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !25
  store ptr %i.p, ptr %i.s, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr %i.p, ptr %i.d, align 8, !tbaa !25
  store ptr null, ptr %i.p, align 8, !tbaa !27
  %i.t = load i32, ptr %i.e, align 8, !tbaa !28
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.e, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.g ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9    ; 3 uses
  %i.y = and i32 %i.x, %i.i
  %i.z = icmp ne i32 %i.y, 0                      ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.k ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !9
  %i.ac = and i32 %i.ab, %i.m
  %i.ad = icmp ne i32 %i.ac, 0                    ; 2 uses
  %or.cond = select i1 %i.z, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %bb.e
  %i.ae = and i32 %i.x, %i.n
  %i.af = or i32 %i.x, %i.i
  %storemerge = select i1 %i.ad, i32 %i.af, i32 %i.ae
  store i32 %storemerge, ptr %i.w, align 4, !tbaa !9
  %i.ag = load i32, ptr %i.aa, align 4, !tbaa !9  ; 2 uses
  %i.ah = or i32 %i.ag, %i.m
  %i.ai = and i32 %i.ag, %i.o
  %.sink = select i1 %i.z, i32 %i.ah, i32 %i.ai
  store i32 %.sink, ptr %i.aa, align 4, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.0 = load ptr, ptr %.044, align 8, !tbaa !12   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @Mvc_CoverUnivQuantify(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @Mvc_CoverClone(ptr noundef %0) #7 ; 5 uses
end_hunk_0
