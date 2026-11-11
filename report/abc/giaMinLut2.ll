Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMinLut2?download=true
inline.NumInlined: 405
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Gia_ManProcessLevel:bb.a

Abc_TtEqual.exit.thread:                          ; preds = %bb.e, %Abc_TtEqual.exit
  %.1 = phi i32 [ %i.bc, %Abc_TtEqual.exit ], [ %.071, %bb.e ] ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %.val59 = load i32, ptr %i.f, align 4, !tbaa !29
  %i.bd = sext i32 %.val59 to i64
  %i.be = icmp slt i64 %indvars.iv.next83, %i.bd
  br i1 %i.be, label %.lr.ph.preheader.i, label %.critedge2, !llvm.loop !79

bb.f:                                             ; preds = %.lr.ph.split, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.268 = phi i32 [ 0, %.lr.ph.split ], [ %.3, %bb.h ] ; 2 uses
  %.val60 = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val60, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !17 ; 2 uses
  %i.bh = and i32 %i.ab, %i.bg                    ; 2 uses
  %i.bi = shl i32 %i.bh, %i.i
  %i.bj = or i32 %i.bi, %i.bh                     ; 2 uses
  %i.bk = and i32 %i.ac, %i.bg                    ; 2 uses
  %i.bl = lshr i32 %i.bk, %i.i
  %i.bm = or i32 %i.bl, %i.bk                     ; 2 uses
  %i.bn = tail call i32 @Gia_ManFindOrAddNode(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.bj, ptr noundef null) ; 0 uses
  %i.bo = icmp eq i32 %i.bj, %i.bm
  br i1 %i.bo, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = tail call i32 @Gia_ManFindOrAddNode(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.bm, ptr noundef null) ; 0 uses
  %i.bq = add nsw i32 %.268, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.3 = phi i32 [ %i.bq, %bb.g ], [ %.268, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.f, align 4, !tbaa !29
  %i.br = sext i32 %.val to i64
  %i.bs = icmp slt i64 %indvars.iv.next, %i.br
  br i1 %i.bs, label %bb.f, label %.critedge2, !llvm.loop !78

.critedge2:                                       ; preds = %bb.h, %bb.c, %Abc_TtEqual.exit.thread, %Abc_TtEqual.exit.thread.us, %.preheader, %bb.d
  %.4 = phi i32 [ %.3.us, %bb.c ], [ 0, %bb.d ], [ %.1, %Abc_TtEqual.exit.thread ], [ 0, %.preheader ], [ 0, %Abc_TtEqual.exit.thread.us ], [ %.3, %bb.h ]
  ret i32 %.4
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManContructTree(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(528) ptr @calloc(i64 noundef 1, i64 noundef 528) #24 ; 9 uses
  %i.b = mul nsw i32 %3, %2                       ; 3 uses
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 3
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #25 ; 2 uses
  %i.f = icmp sgt i32 %i.b, 0
  br i1 %i.f, label %.lr.ph18.preheader.i.i, label %Abc_TtDup.exit

.lr.ph18.preheader.i.i:                           ; preds = %bb.a
  %wide.trip.count24.i.i = zext nneg i32 %i.b to i64
  %i.g = shl nuw nsw i64 %wide.trip.count24.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.e, ptr readonly align 8 %0, i64 %i.g, i1 false), !tbaa !26
  br label %Abc_TtDup.exit

Abc_TtDup.exit:                                   ; preds = %bb.a, %.lr.ph18.preheader.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 520 ; 2 uses
  store ptr %i.e, ptr %i.h, align 8, !tbaa !22
  store i32 %1, ptr %i.a, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.i, align 4, !tbaa !23
  %i.j = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.j, label %.lr.ph, label %.preheader34

.lr.ph:                                           ; preds = %Abc_TtDup.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> %vec.ind, ptr %i.m, align 4, !tbaa !17
  store <4 x i32> %step.add, ptr %i.n, align 4, !tbaa !17
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %vec.ind, ptr %i.o, align 4, !tbaa !17
  store <4 x i32> %step.add, ptr %i.p, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader34, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader34:                                     ; preds = %scalar.ph, %middle.block, %Abc_TtDup.exit
  %i.r = icmp sgt i32 %2, 0
  br i1 %i.r, label %.lr.ph37.preheader, label %.preheader

.lr.ph37.preheader:                               ; preds = %.preheader34
  %i.s = sext i32 %3 to i64
  %wide.trip.count44 = zext nneg i32 %2 to i64
  br label %.lr.ph37

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.u = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  store i32 %i.u, ptr %i.t, align 4, !tbaa !17
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store i32 %i.u, ptr %i.v, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader34, label %scalar.ph, !llvm.loop !81

.preheader:                                       ; preds = %.lr.ph37, %.preheader34
  br i1 %i.j, label %.lr.ph39, label %._crit_edge

.lr.ph39:                                         ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.x = zext nneg i32 %1 to i64
  br label %bb.b

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %.lr.ph37
  %indvars.iv41 = phi i64 [ 0, %.lr.ph37.preheader ], [ %indvars.iv.next42, %.lr.ph37 ] ; 3 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv41
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !26
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = mul nsw i64 %indvars.iv41, %i.s
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ac
  %i.ae = tail call i32 @Gia_ManFindOrAddNode(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef %i.ab, ptr noundef %i.ad) ; 0 uses
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %.preheader, label %.lr.ph37, !llvm.loop !82

bb.b:                                             ; preds = %.lr.ph39, %bb.b
  %indvars.iv46 = phi i64 [ %i.x, %.lr.ph39 ], [ %indvars.iv.next47, %bb.b ] ; 2 uses
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, -1 ; 3 uses
  %i.af = trunc nuw nsw i64 %indvars.iv.next47 to i32
  %i.ag = tail call i32 @Gia_ManProcessLevel(ptr noundef nonnull %i.a, i32 noundef %i.af)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next47
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !17
  %i.ai = icmp samesign ugt i64 %indvars.iv46, 1
  br i1 %i.ai, label %bb.b, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.b, %.preheader
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @Gia_ManContructTreeTest(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call ptr @Gia_ManContructTree(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.c = load <16 x i32>, ptr %i.b, align 4, !tbaa !17
  %i.d = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.c)
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.d) ; 0 uses
  tail call void @Gia_ManTreeFree(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Gia_ManSwapTree(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.b = add nsw i32 %1, 1                        ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.c ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17
  %i.f = sext i32 %1 to i64                       ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.f ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !23   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.l = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.m = icmp slt i32 %i.l, 7                     ; 2 uses
  %i.n = add nsw i32 %i.l, -6                     ; 2 uses
  %i.o = shl nuw i32 1, %i.n
  %i.p = select i1 %i.m, i32 1, i32 %i.o          ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22   ; 8 uses
  %i.s = ptrtoaddr ptr %i.r to i64                ; 2 uses
  %i.t = select i1 %i.m, i32 0, i32 %i.n          ; 3 uses
  %i.u = icmp slt i32 %1, 5
  %i.v = sext i32 %i.p to i64
  %.idx65.i.a = shl nsw i64 %i.v, 3               ; 2 uses
  %i.w = icmp samesign ult i32 %1, 7
  %i.x = add nsw i32 %1, -6
  %i.y = shl nuw i32 1, %i.x
  %i.z = select i1 %i.w, i32 1, i32 %i.y          ; 7 uses
  %i.aa = icmp slt i32 %i.p, 1
  %i.ab = icmp slt i32 %i.z, 1
  %i.ac = shl i32 %i.z, 2                         ; 2 uses
  %i.ad = sext i32 %i.ac to i64                   ; 3 uses
  %i.ae = shl i32 %i.z, 1
  %2 = zext i32 %i.z to i64                       ; 6 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = zext i32 %i.p to i64                    ; 2 uses
  %.idx65.i = shl nuw nsw i64 %i.ag, 3
  %i.ah = icmp sgt i32 %i.p, 0                    ; 2 uses
  %i.ai = shl nuw nsw i32 1, %1
  %i.aj = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.f ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = zext nneg i32 %i.ai to i64              ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br i1 %i.u, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.ah, label %.lr.ph.split.us.split, label %.preheader

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !26 ; 4 uses
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !26 ; 4 uses
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !26 ; 4 uses
  %min.iters.check101 = icmp ult i32 %i.p, 4
  %n.vec103 = and i64 %i.ag, 2147483644
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.an, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert104 = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %broadcast.splat105 = shufflevector <2 x i64> %broadcast.splatinsert104, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert106 = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat107 = shufflevector <2 x i64> %broadcast.splatinsert106, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert108 = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat109 = shufflevector <2 x i64> %broadcast.splatinsert108, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %exitcond74.not.i.us = icmp eq i32 %i.p, 1
  %exitcond74.not.i.us.1 = icmp eq i32 %i.p, 2
  br label %.lr.ph64.i.us

.lr.ph64.i.us:                                    ; preds = %Abc_TtSwapAdjacent.exit.loopexit.us, %.lr.ph.split.us.split
  %.05864.us = phi i32 [ 0, %.lr.ph.split.us.split ], [ %i.ck, %Abc_TtSwapAdjacent.exit.loopexit.us ] ; 2 uses
  %i.aq = shl i32 %.05864.us, %i.t
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ar ; 5 uses
  br i1 %min.iters.check101, label %scalar.ph100, label %vector.body110

vector.body110:                                   ; preds = %.lr.ph64.i.us, %vector.body110
  %index111 = phi i64 [ %index.next114, %vector.body110 ], [ 0, %.lr.ph64.i.us ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index111 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %wide.load112 = load <2 x i64>, ptr %i.at, align 8, !tbaa !26 ; 3 uses
  %wide.load113 = load <2 x i64>, ptr %i.au, align 8, !tbaa !26 ; 3 uses
  %i.av = and <2 x i64> %wide.load112, %broadcast.splat
  %i.aw = and <2 x i64> %wide.load113, %broadcast.splat
  %i.ax = and <2 x i64> %wide.load112, %broadcast.splat105
  %i.ay = and <2 x i64> %wide.load113, %broadcast.splat105
  %i.az = shl <2 x i64> %i.ax, %broadcast.splat107
  %i.ba = shl <2 x i64> %i.ay, %broadcast.splat107
  %i.bb = or <2 x i64> %i.az, %i.av
  %i.bc = or <2 x i64> %i.ba, %i.aw
  %i.bd = and <2 x i64> %wide.load112, %broadcast.splat109
  %i.be = and <2 x i64> %wide.load113, %broadcast.splat109
  %i.bf = lshr <2 x i64> %i.bd, %broadcast.splat107
  %i.bg = lshr <2 x i64> %i.be, %broadcast.splat107
  %i.bh = or <2 x i64> %i.bb, %i.bf
  %i.bi = or <2 x i64> %i.bc, %i.bg
  store <2 x i64> %i.bh, ptr %i.at, align 8, !tbaa !26
  store <2 x i64> %i.bi, ptr %i.au, align 8, !tbaa !26
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next114, %n.vec103
  br i1 %i.bj, label %Abc_TtSwapAdjacent.exit.loopexit.us, label %vector.body110, !llvm.loop !84

scalar.ph100:                                     ; preds = %.lr.ph64.i.us
  %i.bk = load i64, ptr %i.as, align 8, !tbaa !26 ; 3 uses
  %i.bl = and i64 %i.bk, %i.an
  %i.bm = and i64 %i.bk, %i.ao
  %i.bn = shl i64 %i.bm, %i.al
  %i.bo = or i64 %i.bn, %i.bl
  %i.bp = and i64 %i.bk, %i.ap
  %i.bq = lshr i64 %i.bp, %i.al
  %i.br = or i64 %i.bo, %i.bq
  store i64 %i.br, ptr %i.as, align 8, !tbaa !26
  br i1 %exitcond74.not.i.us, label %Abc_TtSwapAdjacent.exit.loopexit.us, label %scalar.ph100.1

scalar.ph100.1:                                   ; preds = %scalar.ph100
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !26 ; 3 uses
  %i.bu = and i64 %i.bt, %i.an
  %i.bv = and i64 %i.bt, %i.ao
  %i.bw = shl i64 %i.bv, %i.al
  %i.bx = or i64 %i.bw, %i.bu
  %i.by = and i64 %i.bt, %i.ap
  %i.bz = lshr i64 %i.by, %i.al
  %i.ca = or i64 %i.bx, %i.bz
  store i64 %i.ca, ptr %i.bs, align 8, !tbaa !26
  br i1 %exitcond74.not.i.us.1, label %Abc_TtSwapAdjacent.exit.loopexit.us, label %scalar.ph100.2

scalar.ph100.2:                                   ; preds = %scalar.ph100.1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !26 ; 3 uses
  %i.cd = and i64 %i.cc, %i.an
  %i.ce = and i64 %i.cc, %i.ao
  %i.cf = shl i64 %i.ce, %i.al
  %i.cg = or i64 %i.cf, %i.cd
  %i.ch = and i64 %i.cc, %i.ap
  %i.ci = lshr i64 %i.ch, %i.al
  %i.cj = or i64 %i.cg, %i.ci
  store i64 %i.cj, ptr %i.cb, align 8, !tbaa !26
  br label %Abc_TtSwapAdjacent.exit.loopexit.us

Abc_TtSwapAdjacent.exit.loopexit.us:              ; preds = %vector.body110, %scalar.ph100, %scalar.ph100.1, %scalar.ph100.2
  %i.ck = add nuw nsw i32 %.05864.us, 1           ; 2 uses
  %exitcond74.not = icmp eq i32 %i.ck, %i.j
  br i1 %exitcond74.not, label %.preheader, label %.lr.ph64.i.us, !llvm.loop !85

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cl = icmp eq i32 %1, 5
  br i1 %i.cl, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.ah, label %.lr.ph.i.preheader.us, label %._crit_edge

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.split.split.us, %Abc_TtSwapAdjacent.exit.loopexit62.us
  %.05864.us65 = phi i32 [ %i.cv, %Abc_TtSwapAdjacent.exit.loopexit62.us ], [ 0, %.lr.ph.split.split.us ] ; 2 uses
  %i.cm = shl i32 %.05864.us65, %i.t
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx65.i
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us, %.lr.ph.i.preheader.us
  %.05462.i.us = phi ptr [ %i.ct, %.lr.ph.i.us ], [ %i.co, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.05462.i.us, i64 4 ; 2 uses
  %i.cr = load <2 x i32>, ptr %i.cq, align 4, !tbaa !17
  %i.cs = shufflevector <2 x i32> %i.cr, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.cs, ptr %i.cq, align 4, !tbaa !17
  %i.ct = getelementptr inbounds nuw i8, ptr %.05462.i.us, i64 16 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.cp
  br i1 %i.cu, label %.lr.ph.i.us, label %Abc_TtSwapAdjacent.exit.loopexit62.us, !llvm.loop !86

Abc_TtSwapAdjacent.exit.loopexit62.us:            ; preds = %.lr.ph.i.us
  %i.cv = add nuw nsw i32 %.05864.us65, 1         ; 2 uses
  %i.cw = load i32, ptr %i.i, align 4, !tbaa !23
  %i.cx = icmp slt i32 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph.i.preheader.us, label %.preheader, !llvm.loop !85

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %brmerge = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %brmerge, label %._crit_edge, label %.preheader.lr.ph.i.preheader

.preheader.lr.ph.i.preheader:                     ; preds = %.lr.ph.split.split
  %i.cy = shl nsw i64 %i.ad, 3                    ; 2 uses
  %i.cz = shl nuw nsw i64 %i.af, 3                ; 2 uses
  %i.da = shl nuw nsw i64 %2, 3                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.cz
  %i.db = shl nuw nsw i64 %2, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.dc = add i64 %.idx65.i.a, %i.s
  %i.dd = add i64 %i.cy, %i.s
  %scevgep95 = getelementptr i8, ptr %i.r, i64 %i.da
  %min.iters.check = icmp ult i32 %i.z, 4
  %invariant.gep = getelementptr i8, ptr %i.r, i64 %i.db
  %invariant.gep129 = getelementptr i8, ptr %i.r, i64 %i.da
  %invariant.gep131 = getelementptr i8, ptr %invariant.gep129, i64 %i.cz
  %stride.check = icmp slt i32 %i.ac, 0
  %n.vec = and i64 %2, 2147483644
  %xtraiter = and i64 %2, 1
  %i.de = icmp eq i32 %i.z, 1
  %unroll_iter = and i64 %2, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod122 = trunc i32 %i.z to i1
  br label %.preheader.lr.ph.i

.preheader:                                       ; preds = %Abc_TtSwapAdjacent.exit.loopexit63, %Abc_TtSwapAdjacent.exit.loopexit62.us, %Abc_TtSwapAdjacent.exit.loopexit.us, %.lr.ph.split.us, %bb.a
  %i.df = icmp slt i32 %1, 4
  br i1 %i.df, label %.lr.ph69, label %._crit_edge

.preheader.lr.ph.i:                               ; preds = %.preheader.lr.ph.i.preheader, %Abc_TtSwapAdjacent.exit.loopexit63
  %.05864 = phi i32 [ %i.ei, %Abc_TtSwapAdjacent.exit.loopexit63 ], [ 0, %.preheader.lr.ph.i.preheader ] ; 2 uses
  %i.dg = shl i32 %.05864, %i.t
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.idx65.i.a
  %i.dk = shl nsw i64 %i.dh, 3                    ; 6 uses
  %scevgep93 = getelementptr i8, ptr %scevgep, i64 %i.dk
  %i.dl = add i64 %i.dc, %i.dk                    ; 2 uses
  %i.dm = add i64 %i.dd, %i.dk                    ; 3 uses
  %umax94 = tail call i64 @llvm.umax.i64(i64 %i.dl, i64 %i.dm)
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %umin = zext i1 %i.dn to i64                    ; 2 uses
  %i.do = add i64 %i.dm, %umin
  %i.dp = sub i64 %umax94, %i.do
  %scevgep96 = getelementptr i8, ptr %scevgep95, i64 %i.dk
  %invariant.gep123 = getelementptr i8, ptr %invariant.gep, i64 %i.dk
  %gep132 = getelementptr i8, ptr %invariant.gep131, i64 %i.dk
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.lr.ph.i
  %.061.us.i = phi ptr [ %i.eg, %._crit_edge.us.i ], [ %i.di, %.preheader.lr.ph.i ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %2 ; 4 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.af ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.i
  br i1 %i.de, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader.us.i
  %i.dq = udiv i64 %i.dp, %umax
  %i.dr = add i64 %i.dq, %umin
  %i.ds = mul i64 %i.dr, %i.ad
  %i.dt = shl i64 %i.ds, 3                        ; 2 uses
  %gep124 = getelementptr i8, ptr %invariant.gep123, i64 %i.dt
  %gep = getelementptr i8, ptr %gep132, i64 %i.dt
  %bound0 = icmp ult ptr %scevgep96, %gep
  %bound1 = icmp ult ptr %scevgep93, %gep124
  %found.conflict = and i1 %bound0, %bound1
  %i.du = or i1 %found.conflict, %stride.check
  br i1 %i.du, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dv, align 8, !tbaa !26, !alias.scope !94, !noalias !95
  %wide.load97 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !26, !alias.scope !94, !noalias !95
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %wide.load98 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !26, !alias.scope !95
  %wide.load99 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !26, !alias.scope !95
  store <2 x i64> %wide.load98, ptr %i.dv, align 8, !tbaa !26, !alias.scope !94, !noalias !95
  store <2 x i64> %wide.load99, ptr %i.dw, align 8, !tbaa !26, !alias.scope !94, !noalias !95
  store <2 x i64> %wide.load, ptr %i.dx, align 8, !tbaa !26, !alias.scope !95
  store <2 x i64> %wide.load97, ptr %i.dy, align 8, !tbaa !26, !alias.scope !95
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %._crit_edge.us.i, label %vector.body, !llvm.loop !90

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 2 uses
  %i.ea = load i64, ptr %gep.i, align 8, !tbaa !26
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i ; 2 uses
  %i.eb = load i64, ptr %gep81.i, align 8, !tbaa !26
  store i64 %i.eb, ptr %gep.i, align 8, !tbaa !26
  store i64 %i.ea, ptr %gep81.i, align 8, !tbaa !26
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i ; 2 uses
  %i.ec = load i64, ptr %gep.i.1, align 8, !tbaa !26
  %gep81.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.next.i ; 2 uses
  %i.ed = load i64, ptr %gep81.i.1, align 8, !tbaa !26
  store i64 %i.ed, ptr %gep.i.1, align 8, !tbaa !26
  store i64 %i.ec, ptr %gep81.i.1, align 8, !tbaa !26
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !91

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ee = load i64, ptr %gep.i.epil, align 8, !tbaa !26
  %gep81.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ef = load i64, ptr %gep81.i.epil, align 8, !tbaa !26
  store i64 %i.ef, ptr %gep.i.epil, align 8, !tbaa !26
  store i64 %i.ee, ptr %gep81.i.epil, align 8, !tbaa !26
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.ad ; 2 uses
  %i.eh = icmp ult ptr %i.eg, %i.dj
  br i1 %i.eh, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit.loopexit63, !llvm.loop !92

Abc_TtSwapAdjacent.exit.loopexit63:               ; preds = %._crit_edge.us.i
  %i.ei = add nuw nsw i32 %.05864, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ei, %i.j
  br i1 %exitcond.not, label %.preheader, label %.preheader.lr.ph.i, !llvm.loop !85

.lr.ph69:                                         ; preds = %.preheader, %.lr.ph69
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph69 ], [ 5, %.preheader ] ; 3 uses
  %i.ej = trunc nsw i64 %indvars.iv to i32
  %i.ek = tail call i32 @Gia_ManProcessLevel(ptr noundef nonnull %0, i32 noundef %i.ej)
  %i.el = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !17
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.em = icmp sgt i64 %indvars.iv.next, %i.c
  br i1 %i.em, label %.lr.ph69, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %.lr.ph69, %.lr.ph.split.split.us, %.lr.ph.split.split, %.preheader
  %i.en = tail call i32 @Gia_ManProcessLevel(ptr noundef nonnull %0, i32 noundef %i.b)
  store i32 %i.en, ptr %i.d, align 4, !tbaa !17
  %i.eo = tail call i32 @Gia_ManProcessLevel(ptr noundef nonnull %0, i32 noundef %1)
  store i32 %i.eo, ptr %i.g, align 4, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.f ; 2 uses
  %i.er = load <2 x i32>, ptr %i.eq, align 4, !tbaa !17
  %i.es = shufflevector <2 x i32> %i.er, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.es, ptr %i.eq, align 4, !tbaa !17
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.f ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !17 ; 2 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.c ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !17
  store i32 %i.ex, ptr %i.eu, align 4, !tbaa !17
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !17
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ez = sext i32 %i.ev to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.ez
  store i32 %i.b, ptr %i.fa, align 4, !tbaa !17
  %i.fb = load i32, ptr %i.eu, align 4, !tbaa !17
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fc
  store i32 %1, ptr %i.fd, align 4, !tbaa !17
  %i.fe = load i32, ptr %i.d, align 4, !tbaa !17
  %i.ff = load i32, ptr %i.g, align 4, !tbaa !17
  %i.fg = add i32 %i.h, %i.e
  %i.fh = sub i32 %i.fe, %i.fg
  %i.fi = add i32 %i.fh, %i.ff
  ret i32 %i.fi
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2147483646) i32 @Gia_ManFindBestPosition(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #9 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 4 uses
  %i.b = tail call ptr @Gia_ManContructTree(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  %i.g = add nsw i32 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17
  %i.j = add nsw i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17
  %i.m = add nsw i32 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.o = load i32, ptr %i.n, align 4, !tbaa !17
  %i.p = add nsw i32 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17
  %i.s = add nsw i32 %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.u = load i32, ptr %i.t, align 4, !tbaa !17
  %i.v = add nsw i32 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.x = load i32, ptr %i.w, align 4, !tbaa !17
  %i.y = add nsw i32 %i.v, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !17
  %i.ab = add nsw i32 %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !17
  %i.ae = add nsw i32 %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !17
  %i.ah = add nsw i32 %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !17
  %i.ak = add nsw i32 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.am = load i32, ptr %i.al, align 4, !tbaa !17
  %i.an = add nsw i32 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 252
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !17
  %i.aq = add nsw i32 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !17
  %i.at = add nsw i32 %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.av = load i32, ptr %i.au, align 4, !tbaa !17
  %i.aw = add nsw i32 %i.at, %i.av                ; 5 uses
  %.not = icmp eq i32 %7, 0                       ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Gia_ManTreePrint(ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ax = add i32 %1, -1
  %i.ay = mul i32 %i.ax, %2
  %i.az = mul i32 %i.ay, %3
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ba ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 520 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !22 ; 7 uses
  %i.be = ptrtoaddr ptr %i.bd to i64
  %i.bf = mul i32 %3, %2                          ; 10 uses
  %i.bg = icmp sgt i32 %i.bf, 0                   ; 3 uses
  br i1 %i.bg, label %.lr.ph18.preheader.i, label %Abc_TtCopy.exit

.lr.ph18.preheader.i:                             ; preds = %bb.c
  %wide.trip.count24.i = zext nneg i32 %i.bf to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.bf, 14
  br i1 %min.iters.check, label %.lr.ph18.i.preheader, label %vector.memcheck
end_hunk_0
