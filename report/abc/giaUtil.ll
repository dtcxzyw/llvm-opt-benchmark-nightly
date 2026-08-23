Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaUtil?download=true
inline.NumInlined: 1687
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Gia_ManPrintArray:bb.a
bb.b:                                             ; preds = %.lr.ph
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74) ; 0 uses
  %i.m = add nuw nsw i32 %.052, 1                 ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %.val38 = load i32, ptr %i.o, align 4, !tbaa !64
  %i.p = icmp slt i32 %i.m, %.val38
  br i1 %i.p, label %.lr.ph, label %.critedge, !llvm.loop !310

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73) ; 0 uses
  %i.r = load i32, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph55, label %.critedge2

.lr.ph55:                                         ; preds = %.critedge, %bb.e
  %i.t = phi i32 [ %i.aq, %bb.e ], [ %i.r, %.critedge ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.critedge ] ; 3 uses
  %.val35 = load ptr, ptr %i.g, align 8, !tbaa !46 ; 2 uses
  %.not32 = icmp eq ptr %.val35, null
  br i1 %.not32, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %.lr.ph55
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %.val35, i64 %indvars.iv
  %.val36 = load i64, ptr %i.u, align 4           ; 5 uses
  %i.v = and i64 %.val36, 2147483648
  %.not.i = icmp ne i64 %i.v, 0
  %i.w = and i64 %.val36, 536870911
  %i.x = icmp eq i64 %i.w, 536870911
  %narrow.i.not = or i1 %.not.i, %i.x
  br i1 %narrow.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = trunc i64 %.val36 to i32                 ; 2 uses
  %i.z = and i32 %i.y, 536870911
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ab = sub nsw i32 %i.aa, %i.z
  %i.ac = lshr i32 %i.y, 29
  %i.ad = and i32 %i.ac, 1
  %i.ae = shl nsw i32 %i.ab, 1
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = lshr i64 %.val36, 32
  %i.ah = trunc nuw i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 536870911
  %i.aj = sub nsw i32 %i.aa, %i.ai
  %i.ak = lshr i64 %.val36, 61
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = and i32 %i.al, 1
  %i.an = shl nsw i32 %i.aj, 1
  %i.ao = or disjoint i32 %i.an, %i.am
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i32 noundef %i.af, i32 noundef %i.ao) ; 0 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = phi i32 [ %.pre, %bb.d ], [ %i.t, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %.lr.ph55, label %.critedge2, !llvm.loop !311

.critedge2:                                       ; preds = %.lr.ph55, %bb.e, %.critedge
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !68 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %.val3757 = load i32, ptr %i.aw, align 4, !tbaa !64
  %i.ax = icmp sgt i32 %.val3757, 0
  br i1 %i.ax, label %.lr.ph59, label %.critedge4

.lr.ph59:                                         ; preds = %.critedge2, %bb.f
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %bb.f ], [ 0, %.critedge2 ] ; 2 uses
  %i.ay = phi ptr [ %i.bm, %bb.f ], [ %i.av, %.critedge2 ]
  %.val41 = load ptr, ptr %i.g, align 8, !tbaa !46 ; 2 uses
  %.not33 = icmp eq ptr %.val41, null
  br i1 %.not33, label %.critedge4, label %bb.f

bb.f:                                             ; preds = %.lr.ph59
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %.val42.val = load ptr, ptr %i.az, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.val42.val, i64 %indvars.iv62
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8  ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [12 x i8], ptr %.val41, i64 %i.bc
  %.val3.i.i48 = load i64, ptr %i.bd, align 4
  %i.be = trunc i64 %.val3.i.i48 to i32           ; 2 uses
  %i.bf = and i32 %i.be, 536870911
  %i.bg = sub nsw i32 %i.bb, %i.bf
  %i.bh = lshr i32 %i.be, 29
  %i.bi = and i32 %i.bh, 1
  %i.bj = shl nsw i32 %i.bg, 1
  %i.bk = or disjoint i32 %i.bj, %i.bi            ; 2 uses
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i32 noundef %i.bk, i32 noundef %i.bk) ; 0 uses
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.bm = load ptr, ptr %i.au, align 8, !tbaa !68 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  %.val37 = load i32, ptr %i.bn, align 4, !tbaa !64
  %i.bo = sext i32 %.val37 to i64
  %i.bp = icmp slt i64 %indvars.iv.next63, %i.bo
  br i1 %i.bp, label %.lr.ph59, label %.critedge4, !llvm.loop !312

.critedge4:                                       ; preds = %.lr.ph59, %bb.f, %.critedge2
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @Gia_GetMValue(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp slt i32 %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %2, %0
  %i.c = and i32 %i.b, 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %0, %1
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = shl nuw i32 1, %0                        ; 2 uses
  %i.f = icmp slt i32 %2, %i.e
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = lshr i32 %3, %2
  %i.h = and i32 %i.g, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = sub nsw i32 %2, %i.e
  %i.j = xor i32 %3, -1
  %i.k = lshr i32 %i.j, %i.i
  %i.l = and i32 %i.k, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.h, %bb.e ], [ %i.l, %bb.f ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManTestProblem() local_unnamed_addr #25 {
bb.a:
  %i.a = alloca [64 x [100 x i32]], align 16      ; 6 uses
  %i.b = alloca [64 x float], align 16            ; 22 uses
  %i.c = alloca [100 x float], align 16           ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25600) %i.a, i8 0, i64 25600, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %i.c, i8 0, i64 400, i1 false)
  br label %.preheader117

.preheader117:                                    ; preds = %bb.a, %bb.c
  %indvars.iv167 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next168, %bb.c ] ; 6 uses
  %i.d = icmp samesign ult i64 %indvars.iv167, 8  ; 4 uses
  %i.e = trunc i64 %indvars.iv167 to i32
  %i.f = add i32 %i.e, -8
  %i.g = lshr i32 -255, %i.f                      ; 2 uses
  %i.h = trunc nuw nsw i64 %indvars.iv167 to i32  ; 6 uses
  %i.i = lshr i32 254, %i.h                       ; 2 uses
  %i.j = and i32 %i.g, 1                          ; 2 uses
  %i.k = and i32 %i.i, 1                          ; 2 uses
  %i.l = getelementptr inbounds nuw [400 x i8], ptr %i.a, i64 %indvars.iv167 ; 7 uses
  %.148 = select i1 %i.d, i32 %i.k, i32 %i.j      ; 2 uses
  %.146.v = select i1 %i.d, i32 %i.i, i32 %i.g
  %.146 = and i32 %.146.v, 1                      ; 3 uses
  %. = select i1 %i.d, i32 %i.k, i32 %i.j         ; 2 uses
  %broadcast.splatinsert444 = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat445 = shufflevector <4 x i32> %broadcast.splatinsert444, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert446 = insertelement <4 x i32> poison, i32 %.148, i64 0
  %broadcast.splat447 = shufflevector <4 x i32> %broadcast.splatinsert446, <4 x i32> poison, <4 x i32> zeroinitializer
  %.not466 = icmp eq i32 %.146, 0
  %i.m = select i1 %.not466, i32 -1, i32 1
  %.not467 = icmp eq i32 %.146, 0
  %i.n = select i1 %.not467, i32 -1, i32 1
  %.not468 = icmp eq i32 %.146, 0
  %i.o = select i1 %.not468, i32 -1, i32 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert433 = insertelement <4 x i32> poison, i32 %., i64 0
  %broadcast.splat434 = shufflevector <4 x i32> %broadcast.splatinsert433, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.b

.loopexit116.loopexit:                            ; preds = %Gia_GetMValue.exit.us, %middle.block
  %indvars.iv.next163.lcssa = phi i64 [ %i.x, %middle.block ], [ %indvars.iv.next163, %Gia_GetMValue.exit.us ]
  %i.p = trunc nsw i64 %indvars.iv.next163.lcssa to i32
  br label %.loopexit116

.loopexit116.loopexit153:                         ; preds = %Gia_GetMValue.exit, %middle.block456
  %indvars.iv.next.lcssa = phi i64 [ %i.at, %middle.block456 ], [ %indvars.iv.next, %Gia_GetMValue.exit ]
  %i.q = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit116

.loopexit116:                                     ; preds = %.loopexit116.loopexit153, %.lr.ph.split.split.us, %.loopexit116.loopexit, %bb.b
  %.1100.lcssa = phi i32 [ %.097129.a, %bb.b ], [ %indvars.iv.next159.2, %.lr.ph.split.split.us ], [ %i.p, %.loopexit116.loopexit ], [ %i.q, %.loopexit116.loopexit153 ]
  %exitcond166.not = icmp eq i32 %i.r, 7
  br i1 %exitcond166.not, label %bb.c, label %bb.b, !llvm.loop !313

bb.b:                                             ; preds = %.preheader117, %.loopexit116
  %.097129 = phi i32 [ 0, %.preheader117 ], [ %i.r, %.loopexit116 ] ; 7 uses
  %.097129.a = phi i32 [ 0, %.preheader117 ], [ %.1100.lcssa, %.loopexit116 ] ; 4 uses
  %0 = sub nsw i32 5, %.097129                    ; 2 uses
  %1 = zext i32 %0 to i64
  %2 = add nuw nsw i64 %1, 1                      ; 2 uses
  %3 = sub nsw i32 5, %.097129                    ; 2 uses
  %4 = zext i32 %3 to i64
  %5 = add nuw nsw i64 %4, 1                      ; 2 uses
  %i.r = add nuw nsw i32 %.097129, 1              ; 8 uses
  %i.s = icmp samesign ult i32 %.097129, 6
  br i1 %i.s, label %.lr.ph, label %.loopexit116

.lr.ph:                                           ; preds = %bb.b
  %i.t = icmp samesign ult i32 %.097129, 3
  %i.u = lshr i32 %i.h, %.097129
  %i.v = and i32 %i.u, 1                          ; 2 uses
  br i1 %i.t, label %Gia_GetMValue.exit.us.preheader, label %.lr.ph.split

Gia_GetMValue.exit.us.preheader:                  ; preds = %.lr.ph
  %i.w = sext i32 %.097129.a to i64               ; 3 uses
  %min.iters.check = icmp ult i32 %3, 3
  br i1 %min.iters.check, label %Gia_GetMValue.exit.us.preheader462, label %vector.ph

vector.ph:                                        ; preds = %Gia_GetMValue.exit.us.preheader
  %n.vec = and i64 %5, 12                         ; 4 uses
  %i.x = add nsw i64 %n.vec, %i.w                 ; 2 uses
  %i.y = trunc nuw nsw i64 %n.vec to i32
  %i.z = add nuw nsw i32 %i.r, %i.y
  %broadcast.splatinsert435 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat436 = shufflevector <4 x i32> %broadcast.splatinsert435, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert437 = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat438 = shufflevector <4 x i32> %broadcast.splatinsert437, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat438, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep474 = getelementptr [4 x i8], ptr %i.l, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %i.aa = icmp samesign ult <4 x i32> %vec.ind, splat (i32 3)
  %i.ab = lshr <4 x i32> %broadcast.splat, %vec.ind
  %i.ac = and <4 x i32> %i.ab, splat (i32 1)
  %i.ad = icmp eq <4 x i32> %vec.ind, splat (i32 3)
  %i.ae = select <4 x i1> %i.ad, <4 x i32> %broadcast.splat434, <4 x i32> splat (i32 1)
  %i.af = select <4 x i1> %i.aa, <4 x i32> %i.ac, <4 x i32> %i.ae
  %i.ag = icmp eq <4 x i32> %broadcast.splat436, %i.af
  %i.ah = select <4 x i1> %i.ag, <4 x i32> splat (i32 1), <4 x i32> splat (i32 -1)
  %gep475 = getelementptr [4 x i8], ptr %invariant.gep474, i64 %index
  store <4 x i32> %i.ah, ptr %gep475, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %.loopexit116.loopexit, label %Gia_GetMValue.exit.us.preheader462

Gia_GetMValue.exit.us.preheader462:               ; preds = %Gia_GetMValue.exit.us.preheader, %middle.block
  %indvars.iv162.ph = phi i64 [ %i.w, %Gia_GetMValue.exit.us.preheader ], [ %i.x, %middle.block ]
  %.0106118.us.ph = phi i32 [ %i.r, %Gia_GetMValue.exit.us.preheader ], [ %i.z, %middle.block ]
  br label %Gia_GetMValue.exit.us

Gia_GetMValue.exit.us:                            ; preds = %Gia_GetMValue.exit.us.preheader462, %Gia_GetMValue.exit.us
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %Gia_GetMValue.exit.us ], [ %indvars.iv162.ph, %Gia_GetMValue.exit.us.preheader462 ] ; 2 uses
  %.0106118.us = phi i32 [ %i.aq, %Gia_GetMValue.exit.us ], [ %.0106118.us.ph, %Gia_GetMValue.exit.us.preheader462 ] ; 4 uses
  %i.aj = icmp samesign ult i32 %.0106118.us, 3
  %i.ak = lshr i32 %i.h, %.0106118.us
  %i.al = and i32 %i.ak, 1
  %i.am = icmp eq i32 %.0106118.us, 3
  %spec.select = select i1 %i.am, i32 %., i32 1
  %.0.i109.us = select i1 %i.aj, i32 %i.al, i32 %spec.select
  %i.an = icmp eq i32 %i.v, %.0.i109.us
  %i.ao = select i1 %i.an, i32 1, i32 -1
  %indvars.iv.next163 = add nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv162
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !8
  %i.aq = add nuw nsw i32 %.0106118.us, 1         ; 2 uses
  %exitcond165.not = icmp eq i32 %i.aq, 7
  br i1 %exitcond165.not, label %.loopexit116.loopexit, label %Gia_GetMValue.exit.us, !llvm.loop !315

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ar = icmp eq i32 %.097129, 3
  %i.as = sext i32 %.097129.a to i64              ; 6 uses
  br i1 %i.ar, label %.lr.ph.split.split.us, label %Gia_GetMValue.exit.preheader

Gia_GetMValue.exit.preheader:                     ; preds = %.lr.ph.split
  %min.iters.check441 = icmp ult i32 %0, 3
  br i1 %min.iters.check441, label %Gia_GetMValue.exit.preheader463, label %vector.ph442

vector.ph442:                                     ; preds = %Gia_GetMValue.exit.preheader
  %n.vec443 = and i64 %2, 8589934588              ; 4 uses
  %i.at = add nsw i64 %n.vec443, %i.as            ; 2 uses
  %i.au = trunc i64 %n.vec443 to i32
  %i.av = add i32 %i.r, %i.au
  %broadcast.splatinsert448 = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat449 = shufflevector <4 x i32> %broadcast.splatinsert448, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction450 = add nuw nsw <4 x i32> %broadcast.splat449, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep473 = getelementptr [4 x i8], ptr %i.l, i64 %i.as
  br label %vector.body451

vector.body451:                                   ; preds = %vector.body451, %vector.ph442
  %index452 = phi i64 [ 0, %vector.ph442 ], [ %index.next454, %vector.body451 ] ; 2 uses
  %vec.ind453 = phi <4 x i32> [ %induction450, %vector.ph442 ], [ %vec.ind.next455, %vector.body451 ] ; 4 uses
  %i.aw = icmp samesign ult <4 x i32> %vec.ind453, splat (i32 3)
  %i.ax = lshr <4 x i32> %broadcast.splat445, %vec.ind453
  %i.ay = and <4 x i32> %i.ax, splat (i32 1)
  %i.az = icmp eq <4 x i32> %vec.ind453, splat (i32 3)
  %i.ba = select <4 x i1> %i.az, <4 x i32> %broadcast.splat447, <4 x i32> splat (i32 1)
  %i.bb = select <4 x i1> %i.aw, <4 x i32> %i.ay, <4 x i32> %i.ba
  %i.bc = icmp eq <4 x i32> %i.bb, zeroinitializer
  %i.bd = select <4 x i1> %i.bc, <4 x i32> splat (i32 -1), <4 x i32> splat (i32 1)
  %gep = getelementptr [4 x i8], ptr %invariant.gep473, i64 %index452
  store <4 x i32> %i.bd, ptr %gep, align 4, !tbaa !8
  %index.next454 = add nuw i64 %index452, 4       ; 2 uses
  %vec.ind.next455 = add nuw nsw <4 x i32> %vec.ind453, splat (i32 4)
  %i.be = icmp eq i64 %index.next454, %n.vec443
  br i1 %i.be, label %middle.block456, label %vector.body451, !llvm.loop !316

middle.block456:                                  ; preds = %vector.body451
  %cmp.n457 = icmp eq i64 %2, %n.vec443
  br i1 %cmp.n457, label %.loopexit116.loopexit153, label %Gia_GetMValue.exit.preheader463

Gia_GetMValue.exit.preheader463:                  ; preds = %Gia_GetMValue.exit.preheader, %middle.block456
  %indvars.iv.ph = phi i64 [ %i.as, %Gia_GetMValue.exit.preheader ], [ %i.at, %middle.block456 ]
  %.0106118.ph = phi i32 [ %i.r, %Gia_GetMValue.exit.preheader ], [ %i.av, %middle.block456 ]
  br label %Gia_GetMValue.exit

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.as
  store i32 %i.m, ptr %i.bf, align 4, !tbaa !8
  %i.bg = getelementptr [4 x i8], ptr %i.l, i64 %i.as
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  store i32 %i.n, ptr %i.bh, align 4, !tbaa !8
  %indvars.iv.next159.2 = add i32 %.097129.a, 3
  %i.bi = getelementptr [4 x i8], ptr %i.l, i64 %i.as
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  store i32 %i.o, ptr %i.bj, align 4, !tbaa !8
  br label %.loopexit116

Gia_GetMValue.exit:                               ; preds = %Gia_GetMValue.exit.preheader463, %Gia_GetMValue.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Gia_GetMValue.exit ], [ %indvars.iv.ph, %Gia_GetMValue.exit.preheader463 ] ; 2 uses
  %.0106118 = phi i32 [ %i.bq, %Gia_GetMValue.exit ], [ %.0106118.ph, %Gia_GetMValue.exit.preheader463 ] ; 4 uses
  %i.bk = icmp samesign ult i32 %.0106118, 3
  %i.bl = lshr i32 %i.h, %.0106118
  %i.bm = and i32 %i.bl, 1
  %i.bn = icmp eq i32 %.0106118, 3
  %spec.select150 = select i1 %i.bn, i32 %.148, i32 1
  %.0.i109 = select i1 %i.bk, i32 %i.bm, i32 %spec.select150
  %.not = icmp eq i32 %.0.i109, 0
  %i.bo = select i1 %.not, i32 -1, i32 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !8
  %i.bq = add nuw nsw i32 %.0106118, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bq, 7
  br i1 %exitcond.not, label %.loopexit116.loopexit153, label %Gia_GetMValue.exit, !llvm.loop !317

bb.c:                                             ; preds = %.loopexit116
  %i.br = select i1 %i.d, float -1.000000e+00, float 1.000000e+00
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv167
  store float %i.br, ptr %i.bs, align 4, !tbaa !318
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next168, 16
  br i1 %exitcond170.not, label %.preheader114, label %.preheader117, !llvm.loop !319

.preheader114:                                    ; preds = %bb.c, %.preheader114
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %.preheader114 ], [ 0, %bb.c ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [400 x i8], ptr %i.a, i64 %indvars.iv175 ; 21 uses
  %i.bu = load i32, ptr %i.bt, align 16, !tbaa !8
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.bu) ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.bx) ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !8
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.ca) ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cd) ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !8
  %i.ch = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cg) ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cj) ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !8
  %i.cn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cm) ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cp) ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cs = load i32, ptr %i.cr, align 16, !tbaa !8
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cs) ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bt, i64 36
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cv) ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !8
  %i.cz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cy) ; 0 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 44
  %i.db = load i32, ptr %i.da, align 4, !tbaa !8
  %i.dc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.db) ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.de = load i32, ptr %i.dd, align 16, !tbaa !8
  %i.df = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.de) ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bt, i64 52
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !8
  %i.di = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dh) ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !8
  %i.dl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dk) ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bt, i64 60
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !8
  %i.do = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dn) ; 0 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.dq = load i32, ptr %i.dp, align 16, !tbaa !8
  %i.dr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dq) ; 0 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bt, i64 68
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !8
  %i.du = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dt) ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !8
  %i.dx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dw) ; 0 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bt, i64 76
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !8
  %i.ea = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dz) ; 0 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.ec = load i32, ptr %i.eb, align 16, !tbaa !8
  %i.ed = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.ec) ; 0 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv175
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !318
  %i.eg = fpext float %i.ef to double
  %i.eh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, double noundef %i.eg) ; 0 uses
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next176, 16
  br i1 %exitcond178.not, label %.preheader112.preheader, label %.preheader114, !llvm.loop !320

.preheader112.preheader:                          ; preds = %.preheader114
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !318
  %.phi.trans.insert205 = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %.pre206 = load float, ptr %.phi.trans.insert205, align 4, !tbaa !318
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.fc = load <16 x float>, ptr %i.b, align 16
  br label %.preheader112

.preheader112:                                    ; preds = %.preheader112.preheader, %bb.bb
  %i.fd = phi float [ %i.or, %bb.bb ], [ %.pre206, %.preheader112.preheader ] ; 2 uses
  %i.fe = phi float [ %i.os, %bb.bb ], [ %.pre, %.preheader112.preheader ] ; 2 uses
  %.198145 = phi i32 [ %i.ov, %bb.bb ], [ 0, %.preheader112.preheader ] ; 2 uses
  %i.ff = phi <16 x float> [ %i.ot, %bb.bb ], [ %i.fc, %.preheader112.preheader ] ; 4 uses
  %i.fg = insertelement <16 x float> %i.ff, float %i.fe, i64 14
  %i.fh = insertelement <16 x float> %i.fg, float %i.fd, i64 15
  %i.fi = shufflevector <16 x float> %i.ff, <16 x float> %i.fh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 28, i32 29, i32 30, i32 31> ; 3 uses
  %i.fj = fcmp ogt <16 x float> %i.fi, zeroinitializer
  %i.fk = fneg <16 x float> %i.fi
  %i.fl = select <16 x i1> %i.fj, <16 x float> %i.fi, <16 x float> %i.fk ; 16 uses
  %i.fm = extractelement <16 x float> %i.fl, i64 0
  %i.fn = fadd float %i.fm, 0.000000e+00
  %i.fo = extractelement <16 x float> %i.fl, i64 1
  %i.fp = fadd float %i.fn, %i.fo
  %i.fq = extractelement <16 x float> %i.fl, i64 2
  %i.fr = fadd float %i.fp, %i.fq
  %i.fs = extractelement <16 x float> %i.fl, i64 3
  %i.ft = fadd float %i.fr, %i.fs
  %i.fu = extractelement <16 x float> %i.fl, i64 4
  %i.fv = fadd float %i.ft, %i.fu
  %i.fw = extractelement <16 x float> %i.fl, i64 5
  %i.fx = fadd float %i.fv, %i.fw
  %i.fy = extractelement <16 x float> %i.fl, i64 6
  %i.fz = fadd float %i.fx, %i.fy
  %i.ga = extractelement <16 x float> %i.fl, i64 7
  %i.gb = fadd float %i.fz, %i.ga
  %i.gc = extractelement <16 x float> %i.fl, i64 8
  %i.gd = fadd float %i.gb, %i.gc
  %i.ge = extractelement <16 x float> %i.fl, i64 9
  %i.gf = fadd float %i.gd, %i.ge
  %i.gg = extractelement <16 x float> %i.fl, i64 10
  %i.gh = fadd float %i.gf, %i.gg
  %i.gi = extractelement <16 x float> %i.fl, i64 11
  %i.gj = fadd float %i.gh, %i.gi
  %i.gk = extractelement <16 x float> %i.fl, i64 12
  %i.gl = fadd float %i.gj, %i.gk
  %i.gm = extractelement <16 x float> %i.fl, i64 13
  %i.gn = fadd float %i.gl, %i.gm
  %i.go = extractelement <16 x float> %i.fl, i64 14
  %i.gp = fadd float %i.gn, %i.go
  %i.gq = extractelement <16 x float> %i.fl, i64 15
  %i.gr = fadd float %i.gp, %i.gq
  %i.gs = fpext float %i.gr to double
  %i.gt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %.198145, double noundef %i.gs) ; 0 uses
  %i.gu = load float, ptr %i.c, align 16, !tbaa !318
  %i.gv = fpext float %i.gu to double
  %i.gw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.gv) ; 0 uses
  %i.gx = load float, ptr %i.ei, align 4, !tbaa !318
  %i.gy = fpext float %i.gx to double
  %i.gz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.gy) ; 0 uses
  %i.ha = load float, ptr %i.ej, align 8, !tbaa !318
  %i.hb = fpext float %i.ha to double
  %i.hc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hb) ; 0 uses
  %i.hd = load float, ptr %i.ek, align 4, !tbaa !318
  %i.he = fpext float %i.hd to double
  %i.hf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.he) ; 0 uses
  %i.hg = load float, ptr %i.el, align 16, !tbaa !318
  %i.hh = fpext float %i.hg to double
  %i.hi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hh) ; 0 uses
  %i.hj = load float, ptr %i.em, align 4, !tbaa !318
  %i.hk = fpext float %i.hj to double
  %i.hl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hk) ; 0 uses
  %i.hm = load float, ptr %i.en, align 8, !tbaa !318
  %i.hn = fpext float %i.hm to double
  %i.ho = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hn) ; 0 uses
  %i.hp = load float, ptr %i.eo, align 4, !tbaa !318
  %i.hq = fpext float %i.hp to double
end_hunk_0
