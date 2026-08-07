inline.NumInlined: 51
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Abc_CexPrint:bb.a
  %n.vec = and i32 %i.b, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi40 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.e = lshr i32 %index, 5
  %i.f = lshr i32 %index, 5
  %i.g = zext nneg i32 %i.e to i64
  %i.h = zext nneg i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.h
  %i.k = load i32, ptr %i.i, align 4, !tbaa !14
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.l = load i32, ptr %i.j, align 4, !tbaa !14
  %broadcast.splatinsert41 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat42 = shufflevector <4 x i32> %broadcast.splatinsert41, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.m = and <4 x i32> %vec.ind, splat (i32 31)
  %i.n = and <4 x i32> %step.add, splat (i32 31)
  %i.o = lshr <4 x i32> %broadcast.splat, %i.m
  %i.p = lshr <4 x i32> %broadcast.splat42, %i.n
  %i.q = and <4 x i32> %i.o, splat (i32 1)
  %i.r = and <4 x i32> %i.p, splat (i32 1)
  %i.s = add <4 x i32> %i.q, %vec.phi             ; 2 uses
  %i.t = add <4 x i32> %i.r, %vec.phi40           ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.u = icmp eq i32 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.t, %i.s
  %i.v = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.021.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.v, %middle.block ]
  %.01620.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.021.i = phi i32 [ %i.ad, %scalar.ph ], [ %.021.i.ph, %scalar.ph.preheader ]
  %.01620.i = phi i32 [ %i.ae, %scalar.ph ], [ %.01620.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.w = lshr i32 %.01620.i, 5
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !14
  %i.aa = and i32 %.01620.i, 31
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = and i32 %i.ab, 1
  %i.ad = add nuw nsw i32 %i.ac, %.021.i          ; 2 uses
  %i.ae = add nuw nsw i32 %.01620.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ae, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !35

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.v, %middle.block ], [ %i.ad, %scalar.ph ] ; 2 uses
  %i.af = load i32, ptr %0, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10
  %i.am = uitofp nneg i32 %.0.lcssa.i to double
  %i.an = fmul nnan double %i.am, 1.000000e+02
  %i.ao = sub nsw i32 %i.b, %i.aj
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fdiv double %i.an, %i.ap
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.af, i32 noundef %i.ah, i32 noundef %i.aj, i32 noundef %i.al, i32 noundef %i.b, i32 noundef %.0.lcssa.i, double noundef %i.aq) ; 0 uses
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.at = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.021 = phi i32 [ 0, %.lr.ph ], [ %i.be, %bb.c ] ; 3 uses
  %i.aw = lshr i32 %.021, 5
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !14
  %i.ba = and i32 %.021, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = and i32 %i.bb, 1
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.bc) ; 0 uses
  %i.be = add nuw nsw i32 %.021, 1                ; 3 uses
  %i.bf = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.c, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.i
  %.0.lcssa = phi i32 [ 0, %._crit_edge.i ], [ %i.be, %bb.c ]
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.bh = load i32, ptr %i.ag, align 4, !tbaa !13
  %.not28 = icmp slt i32 %i.bh, 0
  br i1 %.not28, label %.loopexit, label %.lr.ph32

.lr.ph32:                                         ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph32, %._crit_edge26
  %.130 = phi i32 [ %.0.lcssa, %.lr.ph32 ], [ %.2.lcssa, %._crit_edge26 ] ; 2 uses
  %.01629 = phi i32 [ 0, %.lr.ph32 ], [ %i.by, %._crit_edge26 ] ; 3 uses
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.01629) ; 0 uses
  %i.bk = load i32, ptr %i.ak, align 4, !tbaa !10
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %bb.d, %.lr.ph25
  %.223 = phi i32 [ %i.bm, %.lr.ph25 ], [ %.130, %bb.d ] ; 3 uses
  %.01722 = phi i32 [ %i.bv, %.lr.ph25 ], [ 0, %bb.d ]
  %i.bm = add nsw i32 %.223, 1                    ; 2 uses
  %i.bn = ashr i32 %.223, 5
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !14
  %i.br = and i32 %.223, 31
  %i.bs = lshr i32 %i.bq, %i.br
  %i.bt = and i32 %i.bs, 1
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.bt) ; 0 uses
  %i.bv = add nuw nsw i32 %.01722, 1              ; 2 uses
  %i.bw = load i32, ptr %i.ak, align 4, !tbaa !10
  %i.bx = icmp slt i32 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph25, label %._crit_edge26, !llvm.loop !37

._crit_edge26:                                    ; preds = %.lr.ph25, %bb.d
  %.2.lcssa = phi i32 [ %.130, %bb.d ], [ %i.bm, %.lr.ph25 ]
  %putchar19 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.by = add nuw nsw i32 %.01629, 1
  %i.bz = load i32, ptr %i.ag, align 4, !tbaa !13
  %.not.not = icmp slt i32 %.01629, %i.bz
  br i1 %.not.not, label %bb.d, label %.loopexit, !llvm.loop !38

.loopexit.sink.split:                             ; preds = %bb.a, %bb.b
  %str.6.sink = phi ptr [ @str.6, %bb.b ], [ @str.7, %bb.a ]
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.6.sink) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge26, %.loopexit.sink.split, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @Abc_CexFreeP(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %magicptr = ptrtoint ptr %i.a to i64
  switch i64 %magicptr, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.a) #18
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @Abc_CexFree(ptr noundef captures(address) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %0) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @Abc_CexTransformPhase(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 3 uses
  %i.c = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.c, label %.Abc_CexDup.exit_crit_edge, label %bb.b

.Abc_CexDup.exit_crit_edge:                       ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !13
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre15 = load i32, ptr %.phi.trans.insert14, align 4, !tbaa !11
  %.pre16 = add nsw i32 %.pre, 1
  br label %Abc_CexDup.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %3, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8    ; 4 uses
  %..i = select i1 %i.d, i32 %i.f, i32 %3         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13   ; 2 uses
  %i.i = add nsw i32 %i.h, 1                      ; 3 uses
  %i.j = mul nsw i32 %i.i, %i.b
  %i.k = add nsw i32 %i.j, %..i                   ; 3 uses
  %i.l = ashr i32 %i.k, 5
  %i.m = and i32 %i.k, 31
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = add nsw i32 %i.l, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = add nsw i64 %i.r, 20
  %calloc.i.i = tail call ptr @calloc(i64 1, i64 %i.s) ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 8 ; 2 uses
  store i32 %..i, ptr %i.t, align 4, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 12
  store i32 %i.b, ptr %i.u, align 4, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 16
  store i32 %i.k, ptr %i.v, align 4, !tbaa !11
  %i.w = load i32, ptr %0, align 4, !tbaa !12
  store i32 %i.w, ptr %calloc.i.i, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 4
  store i32 %i.h, ptr %i.x, align 4, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !11   ; 4 uses
  %i.aa = icmp slt i32 %i.f, %i.z
  br i1 %i.aa, label %.lr.ph.i, label %Abc_CexDup.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 20
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.026.i = phi i32 [ %i.f, %.lr.ph.i ], [ %i.au, %bb.e ] ; 4 uses
  %i.ad = ashr i32 %.026.i, 5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !14
  %i.ah = and i32 %.026.i, 31
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = and i32 %i.ai, %i.ag
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %i.t, align 4, !tbaa !8
  %i.al = sub i32 %.026.i, %i.f
  %i.am = add i32 %i.ak, %i.al                    ; 2 uses
  %i.an = and i32 %i.am, 31
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = ashr i32 %i.am, 5
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !14
  %i.at = or i32 %i.ao, %i.as
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = add nsw i32 %.026.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.au, %i.z
  br i1 %exitcond.not.i, label %Abc_CexDup.exit, label %bb.c, !llvm.loop !18

Abc_CexDup.exit:                                  ; preds = %bb.e, %.Abc_CexDup.exit_crit_edge, %bb.b
  %.pre-phi = phi i32 [ %.pre16, %.Abc_CexDup.exit_crit_edge ], [ %i.i, %bb.b ], [ %i.i, %bb.e ]
  %i.av = phi i32 [ %.pre15, %.Abc_CexDup.exit_crit_edge ], [ %i.z, %bb.b ], [ %i.z, %bb.e ]
  %.022.i = phi ptr [ inttoptr (i64 1 to ptr), %.Abc_CexDup.exit_crit_edge ], [ %calloc.i.i, %bb.b ], [ %calloc.i.i, %bb.e ] ; 5 uses
  %i.aw = sdiv i32 %i.b, %1
  %i.ax = getelementptr inbounds nuw i8, ptr %.022.i, i64 12
  store i32 %1, ptr %i.ax, align 4, !tbaa !10
  store i32 -1, ptr %.022.i, align 4, !tbaa !12
  %i.ay = mul nsw i32 %.pre-phi, %i.aw
  %i.az = add nsw i32 %i.ay, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.022.i, i64 16
  store i32 %i.av, ptr %i.bb, align 4, !tbaa !11
  ret ptr %.022.i
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @Abc_CexTransformTempor(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
  %i.c = sdiv i32 %i.b, %1                        ; 3 uses
  %i.d = add i32 %i.c, -1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13   ; 4 uses
  %i.g = add i32 %i.f, %i.c
  %i.h = mul nsw i32 %i.g, %1
  %i.i = add nsw i32 %i.h, %3                     ; 3 uses
  %i.j = ashr i32 %i.i, 5
  %i.k = and i32 %i.i, 31
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = add nsw i32 %i.j, %i.m
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 2
  %i.q = add nsw i64 %i.p, 20
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.q) ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store i32 %3, ptr %i.r, align 4, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %calloc.i, i64 12
  store i32 %1, ptr %i.s, align 4, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store i32 %i.i, ptr %i.t, align 4, !tbaa !11
  %i.u = load i32, ptr %0, align 4, !tbaa !12
  store i32 %i.u, ptr %calloc.i, align 4, !tbaa !12
  %i.v = add nsw i32 %i.d, %i.f
  %i.w = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !13
  %i.x = icmp sgt i32 %i.c, 1
  br i1 %i.x, label %.preheader48.lr.ph, label %.preheader47

.preheader48.lr.ph:                               ; preds = %bb.a
  %i.y = icmp sgt i32 %1, 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %calloc.i, i64 20
  br i1 %i.y, label %.preheader48.lr.ph.split.us, label %.preheader47

.preheader48.lr.ph.split.us:                      ; preds = %.preheader48.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  br label %.preheader48.us

.preheader48.us:                                  ; preds = %._crit_edge.us, %.preheader48.lr.ph.split.us
  %.052.us = phi i32 [ 0, %.preheader48.lr.ph.split.us ], [ %i.ad, %._crit_edge.us ]
  %.04051.us = phi i32 [ %3, %.preheader48.lr.ph.split.us ], [ %i.au, %._crit_edge.us ]
  %i.ad = add nuw nsw i32 %.052.us, 1             ; 3 uses
  %i.ae = mul nuw nsw i32 %i.ad, %1
  %invariant.op.us = add i32 %i.ae, %i.ac
  br label %bb.b

bb.b:                                             ; preds = %.preheader48.us, %bb.d
  %.14150.us = phi i32 [ %.04051.us, %.preheader48.us ], [ %i.au, %bb.d ] ; 3 uses
  %.04249.us = phi i32 [ 0, %.preheader48.us ], [ %i.at, %bb.d ] ; 2 uses
  %.reass.us = add i32 %.04249.us, %invariant.op.us ; 2 uses
  %i.af = ashr i32 %.reass.us, 5
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !14
  %i.aj = and i32 %.reass.us, 31
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = and i32 %i.ak, %i.ai
  %.not46.us = icmp eq i32 %i.al, 0
  br i1 %.not46.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = and i32 %.14150.us, 31
  %i.an = shl nuw i32 1, %i.am
  %i.ao = ashr i32 %.14150.us, 5
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !14
  %i.as = or i32 %i.ar, %i.an
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.at = add nuw nsw i32 %.04249.us, 1           ; 2 uses
  %i.au = add nsw i32 %.14150.us, 1               ; 3 uses
  %exitcond.not = icmp eq i32 %i.at, %1
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !42

._crit_edge.us:                                   ; preds = %bb.d
  %exitcond62.not = icmp eq i32 %i.ad, %i.d
  br i1 %exitcond62.not, label %.preheader47, label %.preheader48.us, !llvm.loop !43

.preheader47:                                     ; preds = %._crit_edge.us, %.preheader48.lr.ph, %bb.a
  %.040.lcssa = phi i32 [ %3, %bb.a ], [ %3, %.preheader48.lr.ph ], [ %i.au, %._crit_edge.us ]
  %.not56 = icmp slt i32 %i.f, 0
  br i1 %.not56, label %._crit_edge59.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader47
  %i.av = icmp sgt i32 %1, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %calloc.i, i64 20
  br i1 %i.av, label %.preheader.lr.ph.split, label %._crit_edge59.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.158 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %i.br, %._crit_edge ] ; 3 uses
  %.257 = phi i32 [ %.040.lcssa, %.preheader.lr.ph.split ], [ %i.bq, %._crit_edge ]
  %i.ba = mul nsw i32 %.158, %i.b
  %invariant.op = add i32 %i.ba, %i.az
end_hunk_0
