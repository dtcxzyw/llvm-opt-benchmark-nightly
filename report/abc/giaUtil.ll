Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaUtil?download=true
inline.NumInlined: 1687
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Gia_ManPrintArray:bb.a
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
  %i.b = alloca [64 x float], align 16            ; 13 uses
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
  %.not468 = icmp eq i32 %.146, 0
  %i.m = select i1 %.not468, i32 -1, i32 1
  %.not469 = icmp eq i32 %.146, 0
  %i.n = select i1 %.not469, i32 -1, i32 1
  %.not470 = icmp eq i32 %.146, 0
  %i.o = select i1 %.not470, i32 -1, i32 1
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
  %.1100.lcssa = phi i32 [ %.099128, %bb.b ], [ %indvars.iv.next159.2, %.lr.ph.split.split.us ], [ %i.p, %.loopexit116.loopexit ], [ %i.q, %.loopexit116.loopexit153 ]
  %exitcond166.not = icmp eq i32 %i.s, 7
  br i1 %exitcond166.not, label %bb.c, label %bb.b, !llvm.loop !313

bb.b:                                             ; preds = %.preheader117, %.loopexit116
  %.097129 = phi i32 [ 0, %.preheader117 ], [ %i.s, %.loopexit116 ] ; 7 uses
  %.099128 = phi i32 [ 0, %.preheader117 ], [ %.1100.lcssa, %.loopexit116 ] ; 4 uses
  %0 = sub nsw i32 5, %.097129                    ; 2 uses
  %1 = zext i32 %0 to i64
  %2 = add nuw nsw i64 %1, 1                      ; 2 uses
  %i.r = sub nsw i32 5, %.097129                  ; 2 uses
  %3 = zext i32 %i.r to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.s = add nuw nsw i32 %.097129, 1              ; 8 uses
  %i.t = icmp samesign ult i32 %.097129, 6
  br i1 %i.t, label %.lr.ph, label %.loopexit116

.lr.ph:                                           ; preds = %bb.b
  %i.u = icmp samesign ult i32 %.097129, 3
  %i.v = lshr i32 %i.h, %.097129
  %i.w = and i32 %i.v, 1                          ; 2 uses
  br i1 %i.u, label %Gia_GetMValue.exit.us.preheader, label %.lr.ph.split

Gia_GetMValue.exit.us.preheader:                  ; preds = %.lr.ph
  %5 = sext i32 %.099128 to i64                   ; 3 uses
  %min.iters.check = icmp ult i32 %i.r, 3
  br i1 %min.iters.check, label %Gia_GetMValue.exit.us.preheader464, label %vector.ph

vector.ph:                                        ; preds = %Gia_GetMValue.exit.us.preheader
  %n.vec = and i64 %4, 12                         ; 4 uses
  %i.x = add nsw i64 %n.vec, %5                   ; 2 uses
  %i.y = trunc nuw nsw i64 %n.vec to i32
  %i.z = add nuw nsw i32 %i.s, %i.y
  %broadcast.splatinsert435 = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat436 = shufflevector <4 x i32> %broadcast.splatinsert435, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert437 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat438 = shufflevector <4 x i32> %broadcast.splatinsert437, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat438, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep478 = getelementptr [4 x i8], ptr %i.l, i64 %5
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
  %gep479 = getelementptr [4 x i8], ptr %invariant.gep478, i64 %index
  store <4 x i32> %i.ah, ptr %gep479, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.loopexit116.loopexit, label %Gia_GetMValue.exit.us.preheader464

Gia_GetMValue.exit.us.preheader464:               ; preds = %Gia_GetMValue.exit.us.preheader, %middle.block
  %indvars.iv162.ph = phi i64 [ %5, %Gia_GetMValue.exit.us.preheader ], [ %i.x, %middle.block ]
  %.0106118.us.ph = phi i32 [ %i.s, %Gia_GetMValue.exit.us.preheader ], [ %i.z, %middle.block ]
  br label %Gia_GetMValue.exit.us

Gia_GetMValue.exit.us:                            ; preds = %Gia_GetMValue.exit.us.preheader464, %Gia_GetMValue.exit.us
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %Gia_GetMValue.exit.us ], [ %indvars.iv162.ph, %Gia_GetMValue.exit.us.preheader464 ] ; 2 uses
  %.0106118.us = phi i32 [ %i.aq, %Gia_GetMValue.exit.us ], [ %.0106118.us.ph, %Gia_GetMValue.exit.us.preheader464 ] ; 4 uses
  %i.aj = icmp samesign ult i32 %.0106118.us, 3
  %i.ak = lshr i32 %i.h, %.0106118.us
  %i.al = and i32 %i.ak, 1
  %i.am = icmp eq i32 %.0106118.us, 3
  %spec.select = select i1 %i.am, i32 %., i32 1
  %.0.i109.us = select i1 %i.aj, i32 %i.al, i32 %spec.select
  %i.an = icmp eq i32 %i.w, %.0.i109.us
  %i.ao = select i1 %i.an, i32 1, i32 -1
  %indvars.iv.next163 = add nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv162
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !8
  %i.aq = add nuw nsw i32 %.0106118.us, 1         ; 2 uses
  %exitcond165.not = icmp eq i32 %i.aq, 7
  br i1 %exitcond165.not, label %.loopexit116.loopexit, label %Gia_GetMValue.exit.us, !llvm.loop !315

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ar = icmp eq i32 %.097129, 3
  %i.as = sext i32 %.099128 to i64                ; 6 uses
  br i1 %i.ar, label %.lr.ph.split.split.us, label %Gia_GetMValue.exit.preheader

Gia_GetMValue.exit.preheader:                     ; preds = %.lr.ph.split
  %min.iters.check441 = icmp ult i32 %0, 3
  br i1 %min.iters.check441, label %Gia_GetMValue.exit.preheader465, label %vector.ph442

vector.ph442:                                     ; preds = %Gia_GetMValue.exit.preheader
  %n.vec443 = and i64 %2, 8589934588              ; 4 uses
  %i.at = add nsw i64 %n.vec443, %i.as            ; 2 uses
  %i.au = trunc i64 %n.vec443 to i32
  %i.av = add i32 %i.s, %i.au
  %broadcast.splatinsert448 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat449 = shufflevector <4 x i32> %broadcast.splatinsert448, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction450 = add nuw nsw <4 x i32> %broadcast.splat449, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep477 = getelementptr [4 x i8], ptr %i.l, i64 %i.as
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
  %gep = getelementptr [4 x i8], ptr %invariant.gep477, i64 %index452
  store <4 x i32> %i.bd, ptr %gep, align 4, !tbaa !8
  %index.next454 = add nuw i64 %index452, 4       ; 2 uses
  %vec.ind.next455 = add nuw nsw <4 x i32> %vec.ind453, splat (i32 4)
  %i.be = icmp eq i64 %index.next454, %n.vec443
  br i1 %i.be, label %middle.block456, label %vector.body451, !llvm.loop !316

middle.block456:                                  ; preds = %vector.body451
  %cmp.n457 = icmp eq i64 %2, %n.vec443
  br i1 %cmp.n457, label %.loopexit116.loopexit153, label %Gia_GetMValue.exit.preheader465

Gia_GetMValue.exit.preheader465:                  ; preds = %Gia_GetMValue.exit.preheader, %middle.block456
  %indvars.iv.ph = phi i64 [ %i.as, %Gia_GetMValue.exit.preheader ], [ %i.at, %middle.block456 ]
  %.0106118.ph = phi i32 [ %i.s, %Gia_GetMValue.exit.preheader ], [ %i.av, %middle.block456 ]
  br label %Gia_GetMValue.exit

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.as
  store i32 %i.m, ptr %i.bf, align 4, !tbaa !8
  %i.bg = getelementptr [4 x i8], ptr %i.l, i64 %i.as
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  store i32 %i.n, ptr %i.bh, align 4, !tbaa !8
  %indvars.iv.next159.2 = add i32 %.099128, 3
  %i.bi = getelementptr [4 x i8], ptr %i.l, i64 %i.as
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  store i32 %i.o, ptr %i.bj, align 4, !tbaa !8
  br label %.loopexit116

Gia_GetMValue.exit:                               ; preds = %Gia_GetMValue.exit.preheader465, %Gia_GetMValue.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Gia_GetMValue.exit ], [ %indvars.iv.ph, %Gia_GetMValue.exit.preheader465 ] ; 2 uses
  %.0106118 = phi i32 [ %i.bq, %Gia_GetMValue.exit ], [ %.0106118.ph, %Gia_GetMValue.exit.preheader465 ] ; 4 uses
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
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !318
  %.phi.trans.insert205 = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  %.pre206 = load float, ptr %.phi.trans.insert205, align 4, !tbaa !318
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.fg = load <4 x float>, ptr %i.b, align 16
  %i.fh = load <4 x float>, ptr %i.ei, align 16
  %i.fi = load <4 x float>, ptr %i.ej, align 16
  %.promoted375 = load float, ptr %i.ek, align 16
  %.promoted377 = load float, ptr %i.el, align 4
  %.phi.trans.insert.promoted379 = load float, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert205.promoted381 = load float, ptr %.phi.trans.insert205, align 4
  br label %.preheader112

.preheader112:                                    ; preds = %.preheader112.preheader, %bb.bb
  %storemerge263308.lcssa382 = phi float [ %storemerge263308, %bb.bb ], [ %.phi.trans.insert205.promoted381, %.preheader112.preheader ]
  %storemerge262306.lcssa380 = phi float [ %storemerge262306, %bb.bb ], [ %.phi.trans.insert.promoted379, %.preheader112.preheader ]
  %storemerge261350.lcssa378 = phi float [ %storemerge261350, %bb.bb ], [ %.promoted377, %.preheader112.preheader ] ; 5 uses
  %storemerge260347.lcssa376 = phi float [ %storemerge260347, %bb.bb ], [ %.promoted375, %.preheader112.preheader ] ; 5 uses
  %i.fj = phi float [ %i.pk, %bb.bb ], [ %.pre206, %.preheader112.preheader ] ; 4 uses
  %i.fk = phi float [ %i.pl, %bb.bb ], [ %.pre, %.preheader112.preheader ] ; 4 uses
  %.198145 = phi i32 [ %i.ps, %bb.bb ], [ 0, %.preheader112.preheader ] ; 2 uses
  %i.fl = phi <4 x float> [ %i.pm, %bb.bb ], [ %i.fg, %.preheader112.preheader ] ; 5 uses
  %i.fm = phi <4 x float> [ %i.po, %bb.bb ], [ %i.fh, %.preheader112.preheader ] ; 5 uses
  %i.fn = phi <4 x float> [ %i.pq, %bb.bb ], [ %i.fi, %.preheader112.preheader ] ; 5 uses
  %i.fo = fcmp ogt <4 x float> %i.fl, zeroinitializer
  %i.fp = fneg <4 x float> %i.fl
  %i.fq = select <4 x i1> %i.fo, <4 x float> %i.fl, <4 x float> %i.fp ; 4 uses
  %i.fr = extractelement <4 x float> %i.fq, i64 0
  %i.fs = fadd float %i.fr, 0.000000e+00
  %i.ft = extractelement <4 x float> %i.fq, i64 1
  %i.fu = fadd float %i.fs, %i.ft
  %i.fv = extractelement <4 x float> %i.fq, i64 2
  %i.fw = fadd float %i.fu, %i.fv
  %i.fx = extractelement <4 x float> %i.fq, i64 3
  %i.fy = fadd float %i.fw, %i.fx
  %i.fz = fcmp ogt <4 x float> %i.fm, zeroinitializer
  %i.ga = fneg <4 x float> %i.fm
  %i.gb = select <4 x i1> %i.fz, <4 x float> %i.fm, <4 x float> %i.ga ; 4 uses
  %i.gc = extractelement <4 x float> %i.gb, i64 0
  %i.gd = fadd float %i.fy, %i.gc
  %i.ge = extractelement <4 x float> %i.gb, i64 1
  %i.gf = fadd float %i.gd, %i.ge
  %i.gg = extractelement <4 x float> %i.gb, i64 2
  %i.gh = fadd float %i.gf, %i.gg
  %i.gi = extractelement <4 x float> %i.gb, i64 3
  %i.gj = fadd float %i.gh, %i.gi
  %i.gk = fcmp ogt <4 x float> %i.fn, zeroinitializer
  %i.gl = fneg <4 x float> %i.fn
  %i.gm = select <4 x i1> %i.gk, <4 x float> %i.fn, <4 x float> %i.gl ; 4 uses
  %i.gn = extractelement <4 x float> %i.gm, i64 0
  %i.go = fadd float %i.gj, %i.gn
  %i.gp = extractelement <4 x float> %i.gm, i64 1
  %i.gq = fadd float %i.go, %i.gp
  %i.gr = extractelement <4 x float> %i.gm, i64 2
  %i.gs = fadd float %i.gq, %i.gr
  %i.gt = extractelement <4 x float> %i.gm, i64 3
  %i.gu = fadd float %i.gs, %i.gt
end_hunk_0
