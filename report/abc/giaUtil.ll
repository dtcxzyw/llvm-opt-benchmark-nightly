inline.NumInlined: 1687
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Gia_ManFindMutualEquivs:bb.a
  %i.an = phi ptr [ %i.ak, %bb.e ], [ null, %Vec_IntAlloc.exit.i76 ], [ null, %._crit_edge ] ; 4 uses
  %i.ao = getelementptr i8, ptr %0, i64 16
  %.val68 = load i32, ptr %i.ao, align 8, !tbaa !103 ; 2 uses
  %i.ap = getelementptr i8, ptr %0, i64 64
  %.val69 = load ptr, ptr %i.ap, align 8, !tbaa !63
  %i.aq = getelementptr i8, ptr %.val69, i64 4
  %.val69.val = load i32, ptr %i.aq, align 4, !tbaa !64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %.val.i80 = load i32, ptr %i.av, align 4, !tbaa !64 ; 2 uses
  %i.aw = add i32 %.val.i80, %.val69.val
  %i.ax = xor i32 %i.aw, -1
  %reass.sub = sub i32 %.val69.val, %.val68
  %i.ay = add i32 %reass.sub, 1
  %i.az = add i32 %i.ay, %i.as
  %i.ba = add i32 %i.az, %i.ax                    ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !42 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph91, label %.critedge

.lr.ph91:                                         ; preds = %Vec_IntStartFull.exit
  %i.be = getelementptr i8, ptr %1, i64 32
  %.val62 = load ptr, ptr %i.be, align 8, !tbaa !46 ; 2 uses
  %.not = icmp eq ptr %.val62, null
  br i1 %.not, label %.critedge, label %.lr.ph91.split.preheader

.lr.ph91.split.preheader:                         ; preds = %.lr.ph91
  %i.bf = zext nneg i32 %i.bc to i64
  br label %.lr.ph91.split

.lr.ph91.split:                                   ; preds = %.lr.ph91.split.preheader, %bb.h
  %indvars.iv101 = phi i64 [ 0, %.lr.ph91.split.preheader ], [ %indvars.iv.next102, %bb.h ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %.val62, i64 %indvars.iv101 ; 2 uses
  %.val63 = load i64, ptr %i.bg, align 4          ; 2 uses
  %i.bh = and i64 %.val63, 2147483648
  %.not.i81 = icmp ne i64 %i.bh, 0
  %i.bi = and i64 %.val63, 536870911
  %i.bj = icmp eq i64 %i.bi, 536870911
  %narrow.i.not = or i1 %.not.i81, %i.bj
  br i1 %narrow.i.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph91.split
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !52
  %i.bm = ashr i32 %i.bl, 1                       ; 2 uses
  %.not57 = icmp slt i32 %i.bm, %i.ba
  br i1 %.not57, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.bn
  %i.bp = trunc nuw nsw i64 %indvars.iv101 to i32
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph91.split, %bb.g, %bb.f
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.bq = icmp samesign ult i64 %indvars.iv.next102, %i.bf
  br i1 %i.bq, label %.lr.ph91.split, label %.critedge, !llvm.loop !343

.critedge:                                        ; preds = %bb.h, %.lr.ph91, %Vec_IntStartFull.exit
  %i.br = getelementptr i8, ptr %i.e, i64 72      ; 2 uses
  %.val6794 = load ptr, ptr %i.br, align 8, !tbaa !68 ; 2 uses
  %i.bs = getelementptr i8, ptr %.val6794, i64 4
  %.val67.val95 = load i32, ptr %i.bs, align 4, !tbaa !64
  %i.bt = sub nsw i32 %.val61, %.val67.val95
  %i.bu = icmp slt i32 %i.ba, %i.bt
  br i1 %i.bu, label %.lr.ph97, label %._crit_edge98

.lr.ph97:                                         ; preds = %.critedge
  %i.bv = getelementptr i8, ptr %i.e, i64 192
  %i.bw = add i32 %.val68, %.val.i80
  %i.bx = sub i32 %i.as, %i.bw
  %i.by = sext i32 %i.bx to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph97, %bb.l
  %.val67111 = phi ptr [ %.val6794, %.lr.ph97 ], [ %.val67, %bb.l ] ; 2 uses
  %.val109 = phi i32 [ %.val61, %.lr.ph97 ], [ %.val, %bb.l ] ; 2 uses
  %indvars.iv104 = phi i64 [ %i.by, %.lr.ph97 ], [ %indvars.iv.next105, %bb.l ] ; 3 uses
  %.val71 = load ptr, ptr %i.bv, align 8, !tbaa !139
  %i.bz = getelementptr inbounds [4 x i8], ptr %.val71, i64 %indvars.iv104
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = and i32 %i.ca, 268435455                ; 4 uses
  %i.cc = icmp ne i32 %i.cb, 268435455
  %.not54 = icmp slt i32 %i.cb, %i.ba
  %or.cond = select i1 %i.cc, i1 %.not54, i1 false
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cd = zext nneg i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !8
  %.not55 = icmp eq i32 %i.cf, 2
  br i1 %.not55, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.an, i64 %indvars.iv104
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !8
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.a, i32 noundef %i.cb, i32 noundef %i.ch)
  %.val.pre = load i32, ptr %i.g, align 8, !tbaa !42
  %.val67.pre = load ptr, ptr %i.br, align 8, !tbaa !68
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.val67 = phi ptr [ %.val67111, %bb.i ], [ %.val67111, %bb.j ], [ %.val67.pre, %bb.k ] ; 2 uses
  %.val = phi i32 [ %.val109, %bb.i ], [ %.val109, %bb.j ], [ %.val.pre, %bb.k ] ; 2 uses
  %indvars.iv.next105 = add nsw i64 %indvars.iv104, 1 ; 2 uses
  %i.ci = getelementptr i8, ptr %.val67, i64 4
  %.val67.val = load i32, ptr %i.ci, align 4, !tbaa !64
  %i.cj = sub nsw i32 %.val, %.val67.val
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next105, %i.ck
  br i1 %i.cl, label %bb.i, label %._crit_edge98, !llvm.loop !344

._crit_edge98:                                    ; preds = %bb.l, %.critedge
  %.not.i82 = icmp eq ptr %i.an, null
  br i1 %.not.i82, label %Vec_IntFree.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge98
  tail call void @free(ptr noundef nonnull %i.an) #38
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge98, %bb.m
  %.not.i83 = icmp eq ptr %i.n, null
  br i1 %.not.i83, label %Vec_IntFree.exit84, label %bb.n

bb.n:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.n) #38
  br label %Vec_IntFree.exit84

Vec_IntFree.exit84:                               ; preds = %Vec_IntFree.exit, %bb.n
  tail call void @Gia_ManStop(ptr noundef nonnull %i.e) #38
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @Gia_ManFindMutualEquivsTest() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @Gia_AigerRead(ptr noundef nonnull @.str.86, i32 noundef 0, i32 noundef 0, i32 noundef 0) #38 ; 2 uses
  %i.b = tail call ptr @Gia_AigerRead(ptr noundef nonnull @.str.87, i32 noundef 0, i32 noundef 0, i32 noundef 0) #38 ; 2 uses
  %i.c = tail call ptr @Gia_ManFindMutualEquivs(ptr noundef %i.a, ptr noundef %i.b, i32 noundef 0, i32 noundef 0) ; 4 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val16 = load i32, ptr %i.d, align 4, !tbaa !64 ; 2 uses
  %i.e = icmp sgt i32 %.val16, 1
  br i1 %i.e, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val15 = load ptr, ptr %i.f, align 8, !tbaa !61
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val15, i64 %indvars.iv ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = lshr exact i64 %indvars.iv, 1
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.89, i32 noundef %i.l, i32 noundef %i.h, i32 noundef %i.j) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.n = trunc i64 %indvars.iv.next to i32
  %i.o = or disjoint i32 %i.n, 1
  %i.p = icmp slt i32 %i.o, %.val16
  br i1 %i.p, label %.critedge, label %._crit_edge, !llvm.loop !345

._crit_edge:                                      ; preds = %.critedge, %bb.a
  tail call void @Gia_ManStop(ptr noundef %i.a) #38
  tail call void @Gia_ManStop(ptr noundef %i.b) #38
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !61   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.r) #38
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %bb.b
  tail call void @free(ptr noundef nonnull %i.c) #38
  ret void
}

declare ptr @Gia_AigerRead(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @Gia_ManPrintPath(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = alloca [4 x i32], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 1) ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 72         ; 9 uses
  %.val464 = load ptr, ptr %i.c, align 8, !tbaa !68 ; 2 uses
  %i.d = getelementptr i8, ptr %.val464, i64 4    ; 2 uses
  %.val464.val = load i32, ptr %i.d, align 4, !tbaa !64 ; 3 uses
  %i.e = shl nsw i32 %spec.store.select, 5
  %4 = tail call i32 @llvm.umax.i32(i32 %i.e, i32 %spec.store.select)
  %i.f = tail call noundef i32 @llvm.smin.i32(i32 %.val464.val, i32 %4) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !346  ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.critedge.i, label %.preheader34.i

.preheader34.i:                                   ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val31.i = load i32, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.j = icmp sgt i32 %.val31.i, 0
  br i1 %i.j, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader34.i
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val33.i = load ptr, ptr %i.k, align 8, !tbaa !13
  %wide.trip.count.i = zext nneg i32 %.val31.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %.036.i = phi i32 [ 64, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val33.i, i64 %indvars.iv.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 2 uses
  %.not30.i = icmp eq ptr %i.m, null
  br i1 %.not30.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #39
  %i.o = trunc i64 %i.n to i32
  %i.p = add nsw i32 %i.o, 64
  %i.q = tail call noundef i32 @llvm.smax.i32(i32 %.036.i, i32 %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i32 [ %i.q, %bb.c ], [ %.036.i, %bb.b ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.b, !llvm.loop !347

.critedge.i:                                      ; preds = %bb.d, %.preheader34.i, %bb.a
  %.2.i = phi i32 [ 64, %bb.a ], [ 64, %.preheader34.i ], [ %.1.i, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !348  ; 3 uses
  %.not28.i = icmp eq ptr %i.s, null
  br i1 %.not28.i, label %Gia_ManPrintPathNameBufferSize.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val.i = load i32, ptr %i.t, align 4, !tbaa !9 ; 2 uses
  %i.u = icmp sgt i32 %.val.i, 0
  br i1 %i.u, label %.lr.ph39.i, label %Gia_ManPrintPathNameBufferSize.exit

.lr.ph39.i:                                       ; preds = %.preheader.i
  %i.v = getelementptr i8, ptr %i.s, i64 8
  %.val32.i = load ptr, ptr %i.v, align 8, !tbaa !13
  %wide.trip.count45.i = zext nneg i32 %.val.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph39.i
  %indvars.iv42.i = phi i64 [ 0, %.lr.ph39.i ], [ %indvars.iv.next43.i, %bb.g ] ; 2 uses
  %.338.i = phi i32 [ %.2.i, %.lr.ph39.i ], [ %.4.i, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val32.i, i64 %indvars.iv42.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14   ; 2 uses
  %.not29.i = icmp eq ptr %i.x, null
  br i1 %.not29.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #39
  %i.z = trunc i64 %i.y to i32
  %i.aa = add nsw i32 %i.z, 64
  %i.ab = tail call noundef i32 @llvm.smax.i32(i32 %.338.i, i32 %i.aa)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4.i = phi i32 [ %i.ab, %bb.f ], [ %.338.i, %bb.e ] ; 2 uses
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count45.i
  br i1 %exitcond46.not.i, label %Gia_ManPrintPathNameBufferSize.exit, label %bb.e, !llvm.loop !349

Gia_ManPrintPathNameBufferSize.exit:              ; preds = %bb.g, %.critedge.i, %.preheader.i
  %.5.i = phi i32 [ %.2.i, %.critedge.i ], [ %.2.i, %.preheader.i ], [ %.4.i, %bb.g ] ; 13 uses
  %i.ac = shl nsw i32 %.5.i, 2                    ; 2 uses
  %i.ad = add nuw nsw i32 %i.ac, 100
  %i.ae = zext nneg i32 %.5.i to i64              ; 9 uses
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #40 ; 4 uses
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.ae) #40 ; 10 uses
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ae) #40 ; 4 uses
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ae) #40 ; 4 uses
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ae) #40 ; 13 uses
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.ae) #40 ; 10 uses
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.ae) #40 ; 6 uses
  %i.am = zext nneg i32 %i.ad to i64              ; 4 uses
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.am) #40 ; 10 uses
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.am) #40 ; 8 uses
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.am) #40 ; 11 uses
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.am) #40 ; 10 uses
  %i.ar = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 6 uses
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %1, i32 16) ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 8 uses
  store i32 0, ptr %i.as, align 4, !tbaa !64
  store i32 %spec.store.select.i, ptr %i.ar, align 8, !tbaa !72
  %i.at = zext nneg i32 %spec.store.select.i to i64
  %i.au = shl nuw nsw i64 %i.at, 2                ; 2 uses
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.au) #40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 6 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !61
  %i.ax = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  store i32 0, ptr %i.ay, align 4, !tbaa !64
  store i32 %spec.store.select.i, ptr %i.ax, align 8, !tbaa !72
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.au) #40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 8 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %.val433 = load i32, ptr %i.bb, align 8, !tbaa !42 ; 13 uses
  %i.bc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 6 uses
  %i.bd = add i32 %.val433, -1
  %or.cond.i.i = icmp ult i32 %i.bd, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val433 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.bc, align 8, !tbaa !72
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i489, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %Gia_ManPrintPathNameBufferSize.exit
  %i.bf = sext i32 %spec.store.select.i.i to i64
  %i.bg = shl nsw i64 %i.bf, 2                    ; 3 uses
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.bg) #40 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !61
  store i32 %.val433, ptr %i.be, align 4, !tbaa !64
  %.not.i477 = icmp eq ptr %i.bh, null
  br i1 %.not.i477, label %Vec_IntAlloc.exit.i481, label %bb.h

bb.h:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.bj = sext i32 %.val433 to i64
  %i.bk = shl nsw i64 %i.bj, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bh, i8 0, i64 %i.bk, i1 false)
  br label %Vec_IntAlloc.exit.i481

Vec_IntAlloc.exit.i481:                           ; preds = %Vec_IntAlloc.exit.i, %bb.h
  %i.bl = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %spec.store.select.i.i, ptr %i.bl, align 8, !tbaa !72
  %i.bn = tail call noalias ptr @malloc(i64 noundef %i.bg) #40 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !61
  store i32 %.val433, ptr %i.bm, align 4, !tbaa !64
  %.not.i482 = icmp eq ptr %i.bn, null
  br i1 %.not.i482, label %Vec_IntAlloc.exit.i487, label %bb.i

bb.i:                                             ; preds = %Vec_IntAlloc.exit.i481
  %i.bp = sext i32 %.val433 to i64
  %i.bq = shl nsw i64 %i.bp, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bn, i8 -1, i64 %i.bq, i1 false)
  br label %Vec_IntAlloc.exit.i487

Vec_IntAlloc.exit.thread.i489:                    ; preds = %Gia_ManPrintPathNameBufferSize.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr null, ptr %i.br, align 8, !tbaa !61
  store i32 %.val433, ptr %i.be, align 4, !tbaa !64
  %i.bs = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 0, ptr %i.bs, align 8, !tbaa !72
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr null, ptr %i.bu, align 8, !tbaa !61
  store i32 %.val433, ptr %i.bt, align 4, !tbaa !64
  %i.bv = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 0, ptr %i.bv, align 8, !tbaa !72
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr null, ptr %i.bx, align 8, !tbaa !61
  store i32 %.val433, ptr %i.bw, align 4, !tbaa !64
  br label %Vec_IntStartFull.exit490

Vec_IntAlloc.exit.i487:                           ; preds = %Vec_IntAlloc.exit.i481, %bb.i
  %i.by = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 %spec.store.select.i.i, ptr %i.by, align 8, !tbaa !72
  %i.ca = tail call noalias ptr @malloc(i64 noundef %i.bg) #40 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !61
  store i32 %.val433, ptr %i.bz, align 4, !tbaa !64
  %.not.i488 = icmp eq ptr %i.ca, null
  br i1 %.not.i488, label %Vec_IntStartFull.exit490, label %bb.j

bb.j:                                             ; preds = %Vec_IntAlloc.exit.i487
  %i.cc = sext i32 %.val433 to i64
  %i.cd = shl nsw i64 %i.cc, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ca, i8 -1, i64 %i.cd, i1 false)
  br label %Vec_IntStartFull.exit490

Vec_IntStartFull.exit490:                         ; preds = %Vec_IntAlloc.exit.thread.i489, %Vec_IntAlloc.exit.i487, %bb.j
  %.val459 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i489 ], [ null, %Vec_IntAlloc.exit.i487 ], [ %i.ca, %bb.j ]
  %.val448 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i489 ], [ %i.bn, %Vec_IntAlloc.exit.i487 ], [ %i.bn, %bb.j ] ; 8 uses
  %.val449 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i489 ], [ %i.bh, %Vec_IntAlloc.exit.i487 ], [ %i.bh, %bb.j ] ; 8 uses
  %i.ce = phi ptr [ %i.bv, %Vec_IntAlloc.exit.thread.i489 ], [ %i.by, %Vec_IntAlloc.exit.i487 ], [ %i.by, %bb.j ] ; 3 uses
  %i.cf = phi ptr [ %i.bs, %Vec_IntAlloc.exit.thread.i489 ], [ %i.bl, %Vec_IntAlloc.exit.i487 ], [ %i.bl, %bb.j ] ; 2 uses
  %i.cg = icmp sgt i32 %.val433, 0
  br i1 %i.cg, label %.lr.ph, label %.critedge

end_hunk_0
begin_hunk_1_@Gia_ManAppendObj:bb.a
bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !365
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #41
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !46
  %i.s = load i32, ptr %i.c, align 4, !tbaa !364  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59   ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #41 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !59
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !364 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !364
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val36 = load i32, ptr %i.aj, align 4, !tbaa !64
  %.not35 = icmp eq i32 %.val36, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !64 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !72
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #41
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #40
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !61
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !61 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #41
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #40
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !61
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !72
  %.pre = load i32, ptr %i.al, align 4, !tbaa !64
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !61
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !64
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !8
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !42
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.bm, align 8, !tbaa !46
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.bn
  ret ptr %i.bo
}

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #34

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #26

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #35

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #36

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #36

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #36

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #35

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn }
attributes #33 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #36 = { nofree nounwind }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { nounwind allocsize(0) }
attributes #41 = { nounwind allocsize(1) }
attributes #42 = { nounwind allocsize(0,1) }
attributes #43 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !5, i64 4}
!10 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !11, i64 8}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!10, !11, i64 8}
!14 = !{!12, !12, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!6, !6, i64 0}
!19 = !{!10, !5, i64 0}
!20 = distinct !{!20, !16}
!21 = !{!22, !25, i64 624}
!22 = !{!"Gia_Man_t_", !23, i64 0, !23, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !24, i64 32, !25, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !26, i64 64, !26, i64 72, !27, i64 80, !27, i64 96, !5, i64 112, !5, i64 116, !5, i64 120, !27, i64 128, !25, i64 144, !25, i64 152, !26, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !25, i64 184, !28, i64 192, !25, i64 200, !25, i64 208, !25, i64 216, !5, i64 224, !5, i64 228, !25, i64 232, !5, i64 240, !26, i64 248, !26, i64 256, !26, i64 264, !29, i64 272, !29, i64 280, !26, i64 288, !12, i64 296, !26, i64 304, !26, i64 312, !30, i64 320, !23, i64 328, !26, i64 336, !26, i64 344, !26, i64 352, !26, i64 360, !26, i64 368, !31, i64 376, !31, i64 384, !32, i64 392, !27, i64 400, !27, i64 416, !26, i64 432, !26, i64 440, !26, i64 448, !26, i64 456, !26, i64 464, !26, i64 472, !26, i64 480, !26, i64 488, !26, i64 496, !26, i64 504, !26, i64 512, !23, i64 520, !33, i64 528, !34, i64 536, !35, i64 544, !35, i64 552, !26, i64 560, !26, i64 568, !26, i64 576, !26, i64 584, !26, i64 592, !5, i64 600, !36, i64 604, !36, i64 608, !26, i64 616, !25, i64 624, !5, i64 632, !32, i64 640, !32, i64 648, !32, i64 656, !26, i64 664, !26, i64 672, !26, i64 680, !26, i64 688, !26, i64 696, !26, i64 704, !26, i64 712, !26, i64 720, !26, i64 728, !37, i64 736, !35, i64 744, !12, i64 752, !12, i64 760, !12, i64 768, !38, i64 776, !38, i64 784, !12, i64 792, !25, i64 800, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !5, i64 836, !5, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !39, i64 856, !39, i64 864, !39, i64 872, !39, i64 880, !26, i64 888, !26, i64 896, !26, i64 904, !40, i64 912, !5, i64 920, !5, i64 924, !5, i64 928, !26, i64 936, !5, i64 944, !5, i64 948, !26, i64 952, !26, i64 960, !32, i64 968, !39, i64 976, !26, i64 984, !26, i64 992, !5, i64 1000, !5, i64 1004, !39, i64 1008, !27, i64 1016, !27, i64 1032, !27, i64 1048, !41, i64 1064, !30, i64 1072, !30, i64 1080, !5, i64 1088, !5, i64 1092, !5, i64 1096, !5, i64 1100, !30, i64 1104, !26, i64 1112, !26, i64 1120, !26, i64 1128, !32, i64 1136}
!23 = !{!"p1 omnipotent char", !12, i64 0}
!24 = !{!"p1 _ZTS10Gia_Obj_t_", !12, i64 0}
!25 = !{!"p1 int", !12, i64 0}
!26 = !{!"p1 _ZTS10Vec_Int_t_", !12, i64 0}
!27 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !25, i64 8}
!28 = !{!"p1 _ZTS10Gia_Rpr_t_", !12, i64 0}
!29 = !{!"p1 _ZTS10Vec_Wec_t_", !12, i64 0}
!30 = !{!"p1 _ZTS10Vec_Str_t_", !12, i64 0}
!31 = !{!"p1 _ZTS10Abc_Cex_t_", !12, i64 0}
!32 = !{!"p1 _ZTS10Vec_Ptr_t_", !12, i64 0}
!33 = !{!"p1 _ZTS10Gia_Plc_t_", !12, i64 0}
!34 = !{!"p1 _ZTS10Gia_Man_t_", !12, i64 0}
!35 = !{!"p1 _ZTS10Vec_Flt_t_", !12, i64 0}
!36 = !{!"float", !6, i64 0}
!37 = !{!"p1 _ZTS10Vec_Vec_t_", !12, i64 0}
!38 = !{!"long", !6, i64 0}
!39 = !{!"p1 _ZTS10Vec_Wrd_t_", !12, i64 0}
!40 = !{!"p1 _ZTS10Vec_Bit_t_", !12, i64 0}
!41 = !{!"p1 _ZTS10Gia_Dat_t_", !12, i64 0}
!42 = !{!22, !5, i64 24}
!43 = !{!22, !5, i64 632}
!44 = !{!22, !5, i64 176}
!45 = distinct !{!45, !16}
!46 = !{!22, !24, i64 32}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
!52 = !{!53, !5, i64 8}
!53 = !{!"Gia_Obj_t_", !5, i64 0, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 4, !5, i64 7, !5, i64 7, !5, i64 7, !5, i64 8}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !56}
!59 = !{!22, !25, i64 40}
!60 = distinct !{!60, !16}
!61 = !{!27, !25, i64 8}
!62 = distinct !{!62, !16}
!63 = !{!22, !26, i64 64}
!64 = !{!27, !5, i64 4}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = !{!22, !26, i64 72}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !56}
!71 = !{!22, !26, i64 160}
!72 = !{!27, !5, i64 0}
!73 = !{!22, !26, i64 440}
!74 = !{!22, !5, i64 168}
!75 = distinct !{!75, !16}
!76 = !{!22, !5, i64 120}
!77 = distinct !{!77, !16}
!78 = distinct !{!78, !16}
!79 = distinct !{!79, !16}
!80 = distinct !{!80, !16}
!81 = distinct !{!81, !16}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16}
!84 = distinct !{!84, !56}
!85 = distinct !{!85, !16}
!86 = distinct !{!86, !16}
!87 = distinct !{!87, !16}
!88 = !{!22, !25, i64 144}
!89 = distinct !{!89, !16}
!90 = distinct !{!90, !16}
!91 = distinct !{!91, !16}
!92 = !{!24, !24, i64 0}
!93 = !{!94, !5, i64 4}
!94 = !{!"Vec_Vec_t_", !5, i64 0, !5, i64 4, !11, i64 8}
!95 = !{!94, !11, i64 8}
!96 = distinct !{!96, !16}
!97 = distinct !{!97, !16}
!98 = distinct !{!98, !16}
!99 = distinct !{!99, !56}
!100 = distinct !{!100, !16}
!101 = distinct !{!101, !16}
!102 = distinct !{!102, !16}
!103 = !{!22, !5, i64 16}
!104 = distinct !{!104, !16}
!105 = distinct !{!105, !16}
!106 = distinct !{!106, !16}
!107 = distinct !{!107, !16}
!108 = !{!22, !26, i64 264}
!109 = distinct !{!109, !16}
!110 = !{}
!111 = distinct !{!111, !16}
!112 = distinct !{!112, !16}
!113 = distinct !{!113, !16}
!114 = distinct !{!114, !16}
!115 = distinct !{!115, !16}
!116 = distinct !{!116, !16}
!117 = !{!22, !29, i64 272}
!118 = !{!119, !26, i64 8}
!119 = !{!"Vec_Wec_t_", !5, i64 0, !5, i64 4, !26, i64 8}
!120 = distinct !{!120, !16}
!121 = !{!22, !5, i64 48}
!122 = !{!22, !5, i64 52}
!123 = distinct !{!123, !16}
!124 = distinct !{!124, !16}
!125 = distinct !{!125, !16}
!126 = distinct !{!126, !16}
!127 = distinct !{!127, !16}
!128 = distinct !{!128, !16}
!129 = distinct !{!129, !16}
!130 = !{!22, !5, i64 172}
!131 = distinct !{!131, !16}
!132 = distinct !{!132, !16}
!133 = !{!134, !38, i64 0}
!134 = !{!"timespec", !38, i64 0, !38, i64 8}
!135 = !{!134, !38, i64 8}
!136 = distinct !{!136, !16}
!137 = distinct !{!137, !56}
!138 = distinct !{!138, !56}
!139 = !{!22, !28, i64 192}
!140 = distinct !{!140, !16}
!141 = distinct !{!141, !16}
!142 = distinct !{!142, !16}
end_hunk_1
