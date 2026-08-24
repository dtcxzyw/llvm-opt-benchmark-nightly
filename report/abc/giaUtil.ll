Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaUtil?download=true
inline.NumInlined: 1687
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Gia_ManWriteResub:bb.a

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.ft) #38
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %bb.j, %bb.k
  tail call void @free(ptr noundef nonnull %i.l) #38
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !186 ; 2 uses
  %.not.i80 = icmp eq ptr %i.fv, null
  br i1 %.not.i80, label %Vec_WrdFree.exit81, label %bb.l

bb.l:                                             ; preds = %Vec_WrdFree.exit
  tail call void @free(ptr noundef nonnull %i.fv) #38
  br label %Vec_WrdFree.exit81

Vec_WrdFree.exit81:                               ; preds = %Vec_WrdFree.exit, %bb.l
  tail call void @free(ptr noundef nonnull %i.ax) #38
  %i.fw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, ptr noundef %1) ; 0 uses
  tail call void @Gia_ManWriteSol(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.m

bb.m:                                             ; preds = %Vec_WrdFree.exit81, %bb.b
  ret void
}

declare ptr @Gia_ManSimPatSimOut(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManPrintArray(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef %.val) ; 0 uses
  %i.c = shl nsw i32 %.val, 1
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i32 noundef %i.c) ; 0 uses
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72) ; 0 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73) ; 0 uses
  %i.g = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.val3851 = load i32, ptr %i.j, align 4, !tbaa !64
  %i.k = icmp sgt i32 %.val3851, 0
  br i1 %i.k, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.052 = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %.val39 = load ptr, ptr %i.g, align 8, !tbaa !46
  %.not = icmp eq ptr %.val39, null
  br i1 %.not, label %.critedge, label %bb.b

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
  %indvars.iv.next163.lcssa = phi i64 [ %i.ad, %middle.block ], [ %indvars.iv.next163, %Gia_GetMValue.exit.us ]
  %i.p = trunc nsw i64 %indvars.iv.next163.lcssa to i32
  br label %.loopexit116

.loopexit116.loopexit153:                         ; preds = %Gia_GetMValue.exit, %middle.block456
  %indvars.iv.next.lcssa = phi i64 [ %i.az, %middle.block456 ], [ %indvars.iv.next, %Gia_GetMValue.exit ]
  %i.q = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit116

.loopexit116:                                     ; preds = %.loopexit116.loopexit153, %.lr.ph.split.split.us, %.loopexit116.loopexit, %bb.b
  %.1100.lcssa = phi i32 [ %.099128, %bb.b ], [ %indvars.iv.next159.2, %.lr.ph.split.split.us ], [ %i.p, %.loopexit116.loopexit ], [ %i.q, %.loopexit116.loopexit153 ]
  %exitcond166.not = icmp eq i32 %i.x, 7
  br i1 %exitcond166.not, label %bb.c, label %bb.b, !llvm.loop !313

bb.b:                                             ; preds = %.preheader117, %.loopexit116
  %.097129 = phi i32 [ 0, %.preheader117 ], [ %i.x, %.loopexit116 ] ; 7 uses
  %.099128 = phi i32 [ 0, %.preheader117 ], [ %.1100.lcssa, %.loopexit116 ] ; 4 uses
  %i.r = sub nsw i32 5, %.097129                  ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.u = sub nsw i32 5, %.097129                  ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %i.x = add nuw nsw i32 %.097129, 1              ; 8 uses
  %i.y = icmp samesign ult i32 %.097129, 6
  br i1 %i.y, label %.lr.ph, label %.loopexit116

.lr.ph:                                           ; preds = %bb.b
  %i.z = icmp samesign ult i32 %.097129, 3
  %i.aa = lshr i32 %i.h, %.097129
  %i.ab = and i32 %i.aa, 1                        ; 2 uses
  br i1 %i.z, label %Gia_GetMValue.exit.us.preheader, label %.lr.ph.split

Gia_GetMValue.exit.us.preheader:                  ; preds = %.lr.ph
  %i.ac = sext i32 %.099128 to i64                ; 3 uses
  %min.iters.check = icmp ult i32 %i.u, 3
  br i1 %min.iters.check, label %Gia_GetMValue.exit.us.preheader462, label %vector.ph

vector.ph:                                        ; preds = %Gia_GetMValue.exit.us.preheader
  %n.vec = and i64 %i.w, 12                       ; 4 uses
  %i.ad = add nsw i64 %n.vec, %i.ac               ; 2 uses
  %i.ae = trunc nuw nsw i64 %n.vec to i32
  %i.af = add nuw nsw i32 %i.x, %i.ae
  %broadcast.splatinsert435 = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat436 = shufflevector <4 x i32> %broadcast.splatinsert435, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert437 = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %broadcast.splat438 = shufflevector <4 x i32> %broadcast.splatinsert437, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat438, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep474 = getelementptr [4 x i8], ptr %i.l, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %i.ag = icmp samesign ult <4 x i32> %vec.ind, splat (i32 3)
  %i.ah = lshr <4 x i32> %broadcast.splat, %vec.ind
  %i.ai = and <4 x i32> %i.ah, splat (i32 1)
  %i.aj = icmp eq <4 x i32> %vec.ind, splat (i32 3)
  %i.ak = select <4 x i1> %i.aj, <4 x i32> %broadcast.splat434, <4 x i32> splat (i32 1)
  %i.al = select <4 x i1> %i.ag, <4 x i32> %i.ai, <4 x i32> %i.ak
  %i.am = icmp eq <4 x i32> %broadcast.splat436, %i.al
  %i.an = select <4 x i1> %i.am, <4 x i32> splat (i32 1), <4 x i32> splat (i32 -1)
  %gep475 = getelementptr [4 x i8], ptr %invariant.gep474, i64 %index
  store <4 x i32> %i.an, ptr %gep475, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit116.loopexit, label %Gia_GetMValue.exit.us.preheader462

Gia_GetMValue.exit.us.preheader462:               ; preds = %Gia_GetMValue.exit.us.preheader, %middle.block
  %indvars.iv162.ph = phi i64 [ %i.ac, %Gia_GetMValue.exit.us.preheader ], [ %i.ad, %middle.block ]
  %.0106118.us.ph = phi i32 [ %i.x, %Gia_GetMValue.exit.us.preheader ], [ %i.af, %middle.block ]
  br label %Gia_GetMValue.exit.us

Gia_GetMValue.exit.us:                            ; preds = %Gia_GetMValue.exit.us.preheader462, %Gia_GetMValue.exit.us
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %Gia_GetMValue.exit.us ], [ %indvars.iv162.ph, %Gia_GetMValue.exit.us.preheader462 ] ; 2 uses
  %.0106118.us = phi i32 [ %i.aw, %Gia_GetMValue.exit.us ], [ %.0106118.us.ph, %Gia_GetMValue.exit.us.preheader462 ] ; 4 uses
  %i.ap = icmp samesign ult i32 %.0106118.us, 3
  %i.aq = lshr i32 %i.h, %.0106118.us
  %i.ar = and i32 %i.aq, 1
  %i.as = icmp eq i32 %.0106118.us, 3
  %spec.select = select i1 %i.as, i32 %., i32 1
  %.0.i109.us = select i1 %i.ap, i32 %i.ar, i32 %spec.select
  %i.at = icmp eq i32 %i.ab, %.0.i109.us
  %i.au = select i1 %i.at, i32 1, i32 -1
  %indvars.iv.next163 = add nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv162
  store i32 %i.au, ptr %i.av, align 4, !tbaa !8
  %i.aw = add nuw nsw i32 %.0106118.us, 1         ; 2 uses
  %exitcond165.not = icmp eq i32 %i.aw, 7
  br i1 %exitcond165.not, label %.loopexit116.loopexit, label %Gia_GetMValue.exit.us, !llvm.loop !315

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ax = icmp eq i32 %.097129, 3
  %i.ay = sext i32 %.099128 to i64                ; 6 uses
  br i1 %i.ax, label %.lr.ph.split.split.us, label %Gia_GetMValue.exit.preheader

Gia_GetMValue.exit.preheader:                     ; preds = %.lr.ph.split
  %min.iters.check441 = icmp ult i32 %i.r, 3
  br i1 %min.iters.check441, label %Gia_GetMValue.exit.preheader463, label %vector.ph442

vector.ph442:                                     ; preds = %Gia_GetMValue.exit.preheader
  %n.vec443 = and i64 %i.t, 8589934588            ; 4 uses
  %i.az = add nsw i64 %n.vec443, %i.ay            ; 2 uses
  %i.ba = trunc i64 %n.vec443 to i32
  %i.bb = add i32 %i.x, %i.ba
  %broadcast.splatinsert448 = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %broadcast.splat449 = shufflevector <4 x i32> %broadcast.splatinsert448, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction450 = add nuw nsw <4 x i32> %broadcast.splat449, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep473 = getelementptr [4 x i8], ptr %i.l, i64 %i.ay
  br label %vector.body451

vector.body451:                                   ; preds = %vector.body451, %vector.ph442
  %index452 = phi i64 [ 0, %vector.ph442 ], [ %index.next454, %vector.body451 ] ; 2 uses
  %vec.ind453 = phi <4 x i32> [ %induction450, %vector.ph442 ], [ %vec.ind.next455, %vector.body451 ] ; 4 uses
  %i.bc = icmp samesign ult <4 x i32> %vec.ind453, splat (i32 3)
  %i.bd = lshr <4 x i32> %broadcast.splat445, %vec.ind453
  %i.be = and <4 x i32> %i.bd, splat (i32 1)
  %i.bf = icmp eq <4 x i32> %vec.ind453, splat (i32 3)
  %i.bg = select <4 x i1> %i.bf, <4 x i32> %broadcast.splat447, <4 x i32> splat (i32 1)
  %i.bh = select <4 x i1> %i.bc, <4 x i32> %i.be, <4 x i32> %i.bg
  %i.bi = icmp eq <4 x i32> %i.bh, zeroinitializer
  %i.bj = select <4 x i1> %i.bi, <4 x i32> splat (i32 -1), <4 x i32> splat (i32 1)
  %gep = getelementptr [4 x i8], ptr %invariant.gep473, i64 %index452
  store <4 x i32> %i.bj, ptr %gep, align 4, !tbaa !8
  %index.next454 = add nuw i64 %index452, 4       ; 2 uses
  %vec.ind.next455 = add nuw nsw <4 x i32> %vec.ind453, splat (i32 4)
  %i.bk = icmp eq i64 %index.next454, %n.vec443
  br i1 %i.bk, label %middle.block456, label %vector.body451, !llvm.loop !316

middle.block456:                                  ; preds = %vector.body451
  %cmp.n457 = icmp eq i64 %i.t, %n.vec443
  br i1 %cmp.n457, label %.loopexit116.loopexit153, label %Gia_GetMValue.exit.preheader463

Gia_GetMValue.exit.preheader463:                  ; preds = %Gia_GetMValue.exit.preheader, %middle.block456
  %indvars.iv.ph = phi i64 [ %i.ay, %Gia_GetMValue.exit.preheader ], [ %i.az, %middle.block456 ]
  %.0106118.ph = phi i32 [ %i.x, %Gia_GetMValue.exit.preheader ], [ %i.bb, %middle.block456 ]
  br label %Gia_GetMValue.exit

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ay
  store i32 %i.m, ptr %i.bl, align 4, !tbaa !8
  %i.bm = getelementptr [4 x i8], ptr %i.l, i64 %i.ay
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  store i32 %i.n, ptr %i.bn, align 4, !tbaa !8
  %indvars.iv.next159.2 = add i32 %.099128, 3
  %i.bo = getelementptr [4 x i8], ptr %i.l, i64 %i.ay
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  store i32 %i.o, ptr %i.bp, align 4, !tbaa !8
  br label %.loopexit116

Gia_GetMValue.exit:                               ; preds = %Gia_GetMValue.exit.preheader463, %Gia_GetMValue.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Gia_GetMValue.exit ], [ %indvars.iv.ph, %Gia_GetMValue.exit.preheader463 ] ; 2 uses
  %.0106118 = phi i32 [ %i.bw, %Gia_GetMValue.exit ], [ %.0106118.ph, %Gia_GetMValue.exit.preheader463 ] ; 4 uses
  %i.bq = icmp samesign ult i32 %.0106118, 3
  %i.br = lshr i32 %i.h, %.0106118
  %i.bs = and i32 %i.br, 1
  %i.bt = icmp eq i32 %.0106118, 3
  %spec.select150 = select i1 %i.bt, i32 %.148, i32 1
  %.0.i109 = select i1 %i.bq, i32 %i.bs, i32 %spec.select150
  %.not = icmp eq i32 %.0.i109, 0
  %i.bu = select i1 %.not, i32 -1, i32 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !8
  %i.bw = add nuw nsw i32 %.0106118, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, 7
  br i1 %exitcond.not, label %.loopexit116.loopexit153, label %Gia_GetMValue.exit, !llvm.loop !317

bb.c:                                             ; preds = %.loopexit116
  %i.bx = select i1 %i.d, float -1.000000e+00, float 1.000000e+00
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv167
  store float %i.bx, ptr %i.by, align 4, !tbaa !318
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next168, 16
  br i1 %exitcond170.not, label %.preheader114, label %.preheader117, !llvm.loop !319

.preheader114:                                    ; preds = %bb.c, %.preheader114
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %.preheader114 ], [ 0, %bb.c ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [400 x i8], ptr %i.a, i64 %indvars.iv175 ; 21 uses
  %i.ca = load i32, ptr %i.bz, align 16, !tbaa !8
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.ca) ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cd) ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !8
  %i.ch = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cg) ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cj) ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cm = load i32, ptr %i.cl, align 16, !tbaa !8
  %i.cn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cm) ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cp) ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !8
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cs) ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cv) ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cy = load i32, ptr %i.cx, align 16, !tbaa !8
  %i.cz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cy) ; 0 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bz, i64 36
  %i.db = load i32, ptr %i.da, align 4, !tbaa !8
  %i.dc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.db) ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !8
  %i.df = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.de) ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !8
  %i.di = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dh) ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.dk = load i32, ptr %i.dj, align 16, !tbaa !8
  %i.dl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dk) ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bz, i64 52
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !8
  %i.do = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dn) ; 0 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !8
  %i.dr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dq) ; 0 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bz, i64 60
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !8
  %i.du = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dt) ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.dw = load i32, ptr %i.dv, align 16, !tbaa !8
  %i.dx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dw) ; 0 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bz, i64 68
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !8
  %i.ea = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dz) ; 0 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !8
  %i.ed = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.ec) ; 0 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bz, i64 76
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !8
  %i.eg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.ef) ; 0 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.ei = load i32, ptr %i.eh, align 16, !tbaa !8
  %i.ej = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.ei) ; 0 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv175
  %i.el = load float, ptr %i.ek, align 4, !tbaa !318
  %i.em = fpext float %i.el to double
  %i.en = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, double noundef %i.em) ; 0 uses
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next176, 16
  br i1 %exitcond178.not, label %.preheader112.preheader, label %.preheader114, !llvm.loop !320

.preheader112.preheader:                          ; preds = %.preheader114
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !318
  %.phi.trans.insert205 = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %.pre206 = load float, ptr %.phi.trans.insert205, align 4, !tbaa !318
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %0 = load <16 x float>, ptr %i.b, align 16
  br label %.preheader112

.preheader112:                                    ; preds = %.preheader112.preheader, %bb.bb
  %i.fi = phi float [ %i.oa, %bb.bb ], [ %.pre206, %.preheader112.preheader ] ; 2 uses
  %i.fj = phi float [ %i.ob, %bb.bb ], [ %.pre, %.preheader112.preheader ] ; 2 uses
  %.198145 = phi i32 [ %i.oc, %bb.bb ], [ 0, %.preheader112.preheader ] ; 2 uses
  %1 = phi <16 x float> [ %23, %bb.bb ], [ %0, %.preheader112.preheader ] ; 4 uses
  %2 = insertelement <16 x float> %1, float %i.fj, i64 14
  %3 = insertelement <16 x float> %2, float %i.fi, i64 15
  %4 = shufflevector <16 x float> %1, <16 x float> %3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 28, i32 29, i32 30, i32 31> ; 3 uses
  %5 = fcmp ogt <16 x float> %4, zeroinitializer
  %6 = fneg <16 x float> %4
  %7 = select <16 x i1> %5, <16 x float> %4, <16 x float> %6 ; 16 uses
  %i.fk = extractelement <16 x float> %7, i64 0
  %i.fl = fadd float %i.fk, 0.000000e+00
  %i.fm = extractelement <16 x float> %7, i64 1
  %i.fn = fadd float %i.fl, %i.fm
  %i.fo = extractelement <16 x float> %7, i64 2
  %i.fp = fadd float %i.fn, %i.fo
  %i.fq = extractelement <16 x float> %7, i64 3
  %i.fr = fadd float %i.fp, %i.fq
  %i.fs = extractelement <16 x float> %7, i64 4
  %i.ft = fadd float %i.fr, %i.fs
  %i.fu = extractelement <16 x float> %7, i64 5
  %i.fv = fadd float %i.ft, %i.fu
  %i.fw = extractelement <16 x float> %7, i64 6
  %i.fx = fadd float %i.fv, %i.fw
  %i.fy = extractelement <16 x float> %7, i64 7
  %i.fz = fadd float %i.fx, %i.fy
  %i.ga = extractelement <16 x float> %7, i64 8
  %i.gb = fadd float %i.fz, %i.ga
  %i.gc = extractelement <16 x float> %7, i64 9
  %i.gd = fadd float %i.gb, %i.gc
  %i.ge = extractelement <16 x float> %7, i64 10
  %i.gf = fadd float %i.gd, %i.ge
  %i.gg = extractelement <16 x float> %7, i64 11
  %i.gh = fadd float %i.gf, %i.gg
  %8 = extractelement <16 x float> %7, i64 12
  %i.gi = fadd float %i.gh, %8
  %9 = extractelement <16 x float> %7, i64 13
  %i.gj = fadd float %i.gi, %9
  %10 = extractelement <16 x float> %7, i64 14
  %i.gk = fadd float %i.gj, %10
  %11 = extractelement <16 x float> %7, i64 15
  %i.gl = fadd float %i.gk, %11
  %i.gm = fpext float %i.gl to double
  %i.gn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %.198145, double noundef %i.gm) ; 0 uses
  %i.go = load float, ptr %i.c, align 16, !tbaa !318
  %i.gp = fpext float %i.go to double
  %i.gq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.gp) ; 0 uses
  %i.gr = load float, ptr %i.eo, align 4, !tbaa !318
  %i.gs = fpext float %i.gr to double
  %i.gt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.gs) ; 0 uses
  %i.gu = load float, ptr %i.ep, align 8, !tbaa !318
  %i.gv = fpext float %i.gu to double
  %i.gw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.gv) ; 0 uses
  %i.gx = load float, ptr %i.eq, align 4, !tbaa !318
  %i.gy = fpext float %i.gx to double
  %i.gz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.gy) ; 0 uses
  %i.ha = load float, ptr %i.er, align 16, !tbaa !318
  %i.hb = fpext float %i.ha to double
  %i.hc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hb) ; 0 uses
  %i.hd = load float, ptr %i.es, align 4, !tbaa !318
  %i.he = fpext float %i.hd to double
  %i.hf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.he) ; 0 uses
  %i.hg = load float, ptr %i.et, align 8, !tbaa !318
  %i.hh = fpext float %i.hg to double
  %i.hi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hh) ; 0 uses
  %i.hj = load float, ptr %i.eu, align 4, !tbaa !318
  %i.hk = fpext float %i.hj to double
  %i.hl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hk) ; 0 uses
  %i.hm = load float, ptr %i.ev, align 16, !tbaa !318
  %i.hn = fpext float %i.hm to double
  %i.ho = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hn) ; 0 uses
  %i.hp = load float, ptr %i.ew, align 4, !tbaa !318
  %i.hq = fpext float %i.hp to double
  %i.hr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hq) ; 0 uses
  %i.hs = load float, ptr %i.ex, align 8, !tbaa !318
  %i.ht = fpext float %i.hs to double
  %i.hu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.ht) ; 0 uses
  %i.hv = load float, ptr %i.ey, align 4, !tbaa !318
  %i.hw = fpext float %i.hv to double
  %i.hx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hw) ; 0 uses
  %i.hy = load float, ptr %i.ez, align 16, !tbaa !318
  %i.hz = fpext float %i.hy to double
  %i.ia = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hz) ; 0 uses
  %i.ib = load float, ptr %i.fa, align 4, !tbaa !318
  %i.ic = fpext float %i.ib to double
  %i.id = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.ic) ; 0 uses
  %i.ie = load float, ptr %i.fb, align 8, !tbaa !318
  %i.if = fpext float %i.ie to double
  %i.ig = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.if) ; 0 uses
  %i.ih = load float, ptr %i.fc, align 4, !tbaa !318
  %i.ii = fpext float %i.ih to double
  %i.ij = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.ii) ; 0 uses
  %i.ik = load float, ptr %i.fd, align 16, !tbaa !318
  %i.il = fpext float %i.ik to double
  %i.im = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.il) ; 0 uses
  %i.in = load float, ptr %i.fe, align 4, !tbaa !318
  %i.io = fpext float %i.in to double
  %i.ip = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.io) ; 0 uses
  %i.iq = load float, ptr %i.ff, align 8, !tbaa !318
  %i.ir = fpext float %i.iq to double
  %i.is = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.ir) ; 0 uses
  %i.it = load float, ptr %i.fg, align 4, !tbaa !318
  %i.iu = fpext float %i.it to double
  %i.iv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.iu) ; 0 uses
  %i.iw = load float, ptr %i.fh, align 16, !tbaa !318
  %i.ix = fpext float %i.iw to double
  %i.iy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.ix) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader112, %.loopexit
  %i.iz = phi float [ %i.fi, %.preheader112 ], [ %i.oa, %.loopexit ]
  %i.ja = phi float [ %i.fj, %.preheader112 ], [ %i.ob, %.loopexit ]
  %indvars.iv199 = phi i64 [ 0, %.preheader112 ], [ %indvars.iv.next200, %.loopexit ] ; 4 uses
  %12 = phi <16 x float> [ %1, %.preheader112 ], [ %23, %.loopexit ]
  %13 = phi <16 x float> [ %1, %.preheader112 ], [ %24, %.loopexit ] ; 32 uses
  %14 = extractelement <16 x float> %13, i64 15   ; 6 uses
  %15 = extractelement <16 x float> %13, i64 14   ; 6 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv199 ; 16 uses
  %i.jb = load i32, ptr %invariant.gep, align 4, !tbaa !8 ; 2 uses
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.jd = extractelement <16 x float> %13, i64 0
  %i.je = fcmp ogt float %i.jd, 0.000000e+00
  br i1 %i.je, label %bb.f, label %.thread

bb.e:                                             ; preds = %.preheader
  %i.jf = icmp ne i32 %i.jb, 0
  %i.jg = extractelement <16 x float> %13, i64 0
  %i.jh = fcmp olt float %i.jg, 0.000000e+00
  %or.cond = select i1 %i.jf, i1 %i.jh, i1 false
  br i1 %or.cond, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.thread
  %.1 = phi i32 [ -1, %.thread ], [ 1, %bb.e ], [ 1, %bb.d ]
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 400
  %i.ji = load i32, ptr %gep.1, align 4, !tbaa !8 ; 2 uses
  %i.jj = icmp sgt i32 %i.ji, 0
  br i1 %i.jj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.jk = icmp ne i32 %i.ji, 0
  %i.jl = extractelement <16 x float> %13, i64 1
  %i.jm = fcmp olt float %i.jl, 0.000000e+00
  %or.cond383 = select i1 %i.jk, i1 %i.jm, i1 false
  br i1 %or.cond383, label %bb.i, label %.thread.1

bb.h:                                             ; preds = %bb.f
  %i.jn = extractelement <16 x float> %13, i64 1
  %i.jo = fcmp ogt float %i.jn, 0.000000e+00
  br i1 %i.jo, label %bb.i, label %.thread.1

bb.i:                                             ; preds = %bb.g, %bb.h
  br label %.thread.1

.thread.1:                                        ; preds = %bb.g, %bb.h, %bb.i
  %.sink384 = phi i32 [ 1, %bb.i ], [ -1, %bb.h ], [ -1, %bb.g ]
  %i.jp = add nsw i32 %.1, %.sink384
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 800
  %i.jq = load i32, ptr %gep.2, align 4, !tbaa !8 ; 2 uses
  %i.jr = icmp sgt i32 %i.jq, 0
  br i1 %i.jr, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread.1
  %i.js = icmp ne i32 %i.jq, 0
  %i.jt = extractelement <16 x float> %13, i64 2
  %i.ju = fcmp olt float %i.jt, 0.000000e+00
  %or.cond385 = select i1 %i.js, i1 %i.ju, i1 false
  br i1 %or.cond385, label %bb.l, label %.thread.2

bb.k:                                             ; preds = %.thread.1
  %i.jv = extractelement <16 x float> %13, i64 2
  %i.jw = fcmp ogt float %i.jv, 0.000000e+00
  br i1 %i.jw, label %bb.l, label %.thread.2

bb.l:                                             ; preds = %bb.j, %bb.k
  br label %.thread.2

.thread.2:                                        ; preds = %bb.j, %bb.k, %bb.l
  %.sink386 = phi i32 [ 1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.j ]
  %i.jx = add nsw i32 %i.jp, %.sink386
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1200
  %i.jy = load i32, ptr %gep.3, align 4, !tbaa !8 ; 2 uses
  %i.jz = icmp sgt i32 %i.jy, 0
  br i1 %i.jz, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread.2
  %i.ka = icmp ne i32 %i.jy, 0
  %i.kb = extractelement <16 x float> %13, i64 3
  %i.kc = fcmp olt float %i.kb, 0.000000e+00
  %or.cond387 = select i1 %i.ka, i1 %i.kc, i1 false
  br i1 %or.cond387, label %bb.o, label %.thread.3

bb.n:                                             ; preds = %.thread.2
  %i.kd = extractelement <16 x float> %13, i64 3
  %i.ke = fcmp ogt float %i.kd, 0.000000e+00
  br i1 %i.ke, label %bb.o, label %.thread.3

bb.o:                                             ; preds = %bb.m, %bb.n
  br label %.thread.3

.thread.3:                                        ; preds = %bb.m, %bb.n, %bb.o
  %.sink388 = phi i32 [ 1, %bb.o ], [ -1, %bb.n ], [ -1, %bb.m ]
  %i.kf = add nsw i32 %i.jx, %.sink388
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1600
  %i.kg = load i32, ptr %gep.4, align 4, !tbaa !8 ; 2 uses
  %i.kh = icmp sgt i32 %i.kg, 0
  br i1 %i.kh, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread.3
  %i.ki = icmp ne i32 %i.kg, 0
  %i.kj = extractelement <16 x float> %13, i64 4
  %i.kk = fcmp olt float %i.kj, 0.000000e+00
  %or.cond389 = select i1 %i.ki, i1 %i.kk, i1 false
  br i1 %or.cond389, label %bb.r, label %.thread.4

bb.q:                                             ; preds = %.thread.3
  %i.kl = extractelement <16 x float> %13, i64 4
  %i.km = fcmp ogt float %i.kl, 0.000000e+00
  br i1 %i.km, label %bb.r, label %.thread.4

bb.r:                                             ; preds = %bb.p, %bb.q
  br label %.thread.4

.thread.4:                                        ; preds = %bb.p, %bb.q, %bb.r
  %.sink390 = phi i32 [ 1, %bb.r ], [ -1, %bb.q ], [ -1, %bb.p ]
  %i.kn = add nsw i32 %i.kf, %.sink390
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2000
  %i.ko = load i32, ptr %gep.5, align 4, !tbaa !8 ; 2 uses
  %i.kp = icmp sgt i32 %i.ko, 0
  br i1 %i.kp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread.4
  %i.kq = icmp ne i32 %i.ko, 0
  %i.kr = extractelement <16 x float> %13, i64 5
  %i.ks = fcmp olt float %i.kr, 0.000000e+00
  %or.cond391 = select i1 %i.kq, i1 %i.ks, i1 false
  br i1 %or.cond391, label %bb.u, label %.thread.5

bb.t:                                             ; preds = %.thread.4
  %i.kt = extractelement <16 x float> %13, i64 5
  %i.ku = fcmp ogt float %i.kt, 0.000000e+00
  br i1 %i.ku, label %bb.u, label %.thread.5

bb.u:                                             ; preds = %bb.s, %bb.t
  br label %.thread.5

.thread.5:                                        ; preds = %bb.s, %bb.t, %bb.u
  %.sink392 = phi i32 [ 1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.s ]
  %i.kv = add nsw i32 %i.kn, %.sink392
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2400
  %i.kw = load i32, ptr %gep.6, align 4, !tbaa !8 ; 2 uses
  %i.kx = icmp sgt i32 %i.kw, 0
  br i1 %i.kx, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread.5
  %i.ky = icmp ne i32 %i.kw, 0
  %i.kz = extractelement <16 x float> %13, i64 6
  %i.la = fcmp olt float %i.kz, 0.000000e+00
  %or.cond393 = select i1 %i.ky, i1 %i.la, i1 false
  br i1 %or.cond393, label %bb.x, label %.thread.6

bb.w:                                             ; preds = %.thread.5
  %i.lb = extractelement <16 x float> %13, i64 6
  %i.lc = fcmp ogt float %i.lb, 0.000000e+00
  br i1 %i.lc, label %bb.x, label %.thread.6

bb.x:                                             ; preds = %bb.v, %bb.w
  br label %.thread.6

.thread.6:                                        ; preds = %bb.v, %bb.w, %bb.x
  %.sink394 = phi i32 [ 1, %bb.x ], [ -1, %bb.w ], [ -1, %bb.v ]
  %i.ld = add nsw i32 %i.kv, %.sink394
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2800
  %i.le = load i32, ptr %gep.7, align 4, !tbaa !8 ; 2 uses
  %i.lf = icmp sgt i32 %i.le, 0
  br i1 %i.lf, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread.6
  %i.lg = icmp ne i32 %i.le, 0
  %i.lh = extractelement <16 x float> %13, i64 7
  %i.li = fcmp olt float %i.lh, 0.000000e+00
  %or.cond395 = select i1 %i.lg, i1 %i.li, i1 false
  br i1 %or.cond395, label %bb.aa, label %.thread.7

bb.z:                                             ; preds = %.thread.6
  %i.lj = extractelement <16 x float> %13, i64 7
  %i.lk = fcmp ogt float %i.lj, 0.000000e+00
  br i1 %i.lk, label %bb.aa, label %.thread.7

bb.aa:                                            ; preds = %bb.y, %bb.z
  br label %.thread.7

.thread.7:                                        ; preds = %bb.y, %bb.z, %bb.aa
  %.sink396 = phi i32 [ 1, %bb.aa ], [ -1, %bb.z ], [ -1, %bb.y ]
  %i.ll = add nsw i32 %i.ld, %.sink396
  %gep.8 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 3200
  %i.lm = load i32, ptr %gep.8, align 4, !tbaa !8 ; 2 uses
  %i.ln = icmp sgt i32 %i.lm, 0
  br i1 %i.ln, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.thread.7
  %i.lo = icmp ne i32 %i.lm, 0
  %i.lp = extractelement <16 x float> %13, i64 8
  %i.lq = fcmp olt float %i.lp, 0.000000e+00
  %or.cond397 = select i1 %i.lo, i1 %i.lq, i1 false
  br i1 %or.cond397, label %bb.ad, label %.thread.8

bb.ac:                                            ; preds = %.thread.7
  %i.lr = extractelement <16 x float> %13, i64 8
  %i.ls = fcmp ogt float %i.lr, 0.000000e+00
  br i1 %i.ls, label %bb.ad, label %.thread.8

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  br label %.thread.8

.thread.8:                                        ; preds = %bb.ab, %bb.ac, %bb.ad
  %.sink398 = phi i32 [ 1, %bb.ad ], [ -1, %bb.ac ], [ -1, %bb.ab ]
  %i.lt = add nsw i32 %i.ll, %.sink398
  %gep.9 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 3600
  %i.lu = load i32, ptr %gep.9, align 4, !tbaa !8 ; 2 uses
  %i.lv = icmp sgt i32 %i.lu, 0
  br i1 %i.lv, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread.8
  %i.lw = icmp ne i32 %i.lu, 0
  %i.lx = extractelement <16 x float> %13, i64 9
  %i.ly = fcmp olt float %i.lx, 0.000000e+00
  %or.cond399 = select i1 %i.lw, i1 %i.ly, i1 false
  br i1 %or.cond399, label %bb.ag, label %.thread.9

bb.af:                                            ; preds = %.thread.8
  %i.lz = extractelement <16 x float> %13, i64 9
  %i.ma = fcmp ogt float %i.lz, 0.000000e+00
  br i1 %i.ma, label %bb.ag, label %.thread.9

bb.ag:                                            ; preds = %bb.ae, %bb.af
  br label %.thread.9

.thread.9:                                        ; preds = %bb.ae, %bb.af, %bb.ag
  %.sink400 = phi i32 [ 1, %bb.ag ], [ -1, %bb.af ], [ -1, %bb.ae ]
  %i.mb = add nsw i32 %i.lt, %.sink400
  %gep.10 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4000
  %i.mc = load i32, ptr %gep.10, align 4, !tbaa !8 ; 2 uses
  %i.md = icmp sgt i32 %i.mc, 0
  br i1 %i.md, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread.9
  %i.me = icmp ne i32 %i.mc, 0
  %i.mf = extractelement <16 x float> %13, i64 10
  %i.mg = fcmp olt float %i.mf, 0.000000e+00
  %or.cond401 = select i1 %i.me, i1 %i.mg, i1 false
  br i1 %or.cond401, label %bb.aj, label %.thread.10

bb.ai:                                            ; preds = %.thread.9
  %i.mh = extractelement <16 x float> %13, i64 10
  %i.mi = fcmp ogt float %i.mh, 0.000000e+00
  br i1 %i.mi, label %bb.aj, label %.thread.10

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  br label %.thread.10

.thread.10:                                       ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sink402 = phi i32 [ 1, %bb.aj ], [ -1, %bb.ai ], [ -1, %bb.ah ]
  %i.mj = add nsw i32 %i.mb, %.sink402
  %gep.11 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4400
  %i.mk = load i32, ptr %gep.11, align 4, !tbaa !8 ; 2 uses
  %i.ml = icmp sgt i32 %i.mk, 0
  br i1 %i.ml, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.thread.10
  %i.mm = icmp ne i32 %i.mk, 0
  %i.mn = extractelement <16 x float> %13, i64 11
  %i.mo = fcmp olt float %i.mn, 0.000000e+00
  %or.cond403 = select i1 %i.mm, i1 %i.mo, i1 false
  br i1 %or.cond403, label %bb.am, label %.thread.11

bb.al:                                            ; preds = %.thread.10
  %i.mp = extractelement <16 x float> %13, i64 11
  %i.mq = fcmp ogt float %i.mp, 0.000000e+00
  br i1 %i.mq, label %bb.am, label %.thread.11

bb.am:                                            ; preds = %bb.ak, %bb.al
  br label %.thread.11

.thread.11:                                       ; preds = %bb.ak, %bb.al, %bb.am
  %.sink404 = phi i32 [ 1, %bb.am ], [ -1, %bb.al ], [ -1, %bb.ak ]
  %i.mr = add nsw i32 %i.mj, %.sink404
  %gep.12 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4800
  %i.ms = load i32, ptr %gep.12, align 4, !tbaa !8 ; 2 uses
  %i.mt = icmp sgt i32 %i.ms, 0
  br i1 %i.mt, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.thread.11
  %i.mu = icmp ne i32 %i.ms, 0
  %16 = extractelement <16 x float> %13, i64 12
  %i.mv = fcmp olt float %16, 0.000000e+00
  %or.cond405 = select i1 %i.mu, i1 %i.mv, i1 false
  br i1 %or.cond405, label %bb.ap, label %.thread.12

bb.ao:                                            ; preds = %.thread.11
  %17 = extractelement <16 x float> %13, i64 12
  %i.mw = fcmp ogt float %17, 0.000000e+00
  br i1 %i.mw, label %bb.ap, label %.thread.12

bb.ap:                                            ; preds = %bb.an, %bb.ao
  br label %.thread.12

.thread.12:                                       ; preds = %bb.an, %bb.ao, %bb.ap
  %.sink406 = phi i32 [ 1, %bb.ap ], [ -1, %bb.ao ], [ -1, %bb.an ]
  %i.mx = add nsw i32 %i.mr, %.sink406
  %gep.13 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 5200
  %i.my = load i32, ptr %gep.13, align 4, !tbaa !8 ; 2 uses
  %i.mz = icmp sgt i32 %i.my, 0
  br i1 %i.mz, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.thread.12
  %i.na = icmp ne i32 %i.my, 0
  %18 = extractelement <16 x float> %13, i64 13
  %i.nb = fcmp olt float %18, 0.000000e+00
  %or.cond407 = select i1 %i.na, i1 %i.nb, i1 false
  br i1 %or.cond407, label %bb.as, label %.thread.13

bb.ar:                                            ; preds = %.thread.12
  %19 = extractelement <16 x float> %13, i64 13
  %i.nc = fcmp ogt float %19, 0.000000e+00
  br i1 %i.nc, label %bb.as, label %.thread.13

bb.as:                                            ; preds = %bb.aq, %bb.ar
  br label %.thread.13

.thread.13:                                       ; preds = %bb.aq, %bb.ar, %bb.as
  %.sink408 = phi i32 [ 1, %bb.as ], [ -1, %bb.ar ], [ -1, %bb.aq ]
  %i.nd = add nsw i32 %i.mx, %.sink408
  %gep.14 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 5600
  %i.ne = load i32, ptr %gep.14, align 4, !tbaa !8 ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, 0
  br i1 %i.nf, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.thread.13
  %i.ng = icmp slt i32 %i.ne, 0
  br i1 %i.ng, label %bb.au, label %.thread.14

bb.au:                                            ; preds = %bb.at
  %i.nh = fcmp olt float %15, 0.000000e+00
  br i1 %i.nh, label %bb.aw, label %.thread.14

bb.av:                                            ; preds = %.thread.13
  %i.ni = fcmp ogt float %15, 0.000000e+00
  br i1 %i.ni, label %bb.aw, label %.thread.14

bb.aw:                                            ; preds = %bb.av, %bb.au
  br label %.thread.14

.thread.14:                                       ; preds = %bb.at, %bb.au, %bb.av, %bb.aw
  %.sink409 = phi i32 [ 1, %bb.aw ], [ -1, %bb.av ], [ -1, %bb.au ], [ -1, %bb.at ]
  %i.nj = phi float [ %15, %bb.aw ], [ %15, %bb.av ], [ %15, %bb.au ], [ %i.ja, %bb.at ]
  %i.nk = add nsw i32 %i.nd, %.sink409
  %gep.15 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 6000
  %i.nl = load i32, ptr %gep.15, align 4, !tbaa !8 ; 2 uses
  %i.nm = icmp sgt i32 %i.nl, 0
  br i1 %i.nm, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.thread.14
  %i.nn = icmp slt i32 %i.nl, 0
  br i1 %i.nn, label %bb.ay, label %.thread.15

bb.ay:                                            ; preds = %bb.ax
  %i.no = fcmp olt float %14, 0.000000e+00
  br i1 %i.no, label %bb.ba, label %.thread.15

bb.az:                                            ; preds = %.thread.14
  %i.np = fcmp ogt float %14, 0.000000e+00
  br i1 %i.np, label %bb.ba, label %.thread.15

bb.ba:                                            ; preds = %bb.az, %bb.ay
  br label %.thread.15

.thread.15:                                       ; preds = %bb.ax, %bb.ay, %bb.az, %bb.ba
  %.sink410 = phi i32 [ 1, %bb.ba ], [ -1, %bb.az ], [ -1, %bb.ay ], [ -1, %bb.ax ]
  %i.nq = phi float [ %14, %bb.ba ], [ %14, %bb.az ], [ %14, %bb.ay ], [ %i.iz, %bb.ax ]
  %i.nr = add nsw i32 %i.nk, %.sink410            ; 3 uses
  %i.ns = icmp eq i32 %i.nr, 0
  br i1 %i.ns, label %.loopexit, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.thread.15
  %i.nt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i32 noundef %i.nr) ; 0 uses
  %i.nu = icmp sgt i32 %i.nr, 0                   ; 3 uses
  %i.nv = trunc nuw nsw i64 %indvars.iv199 to i32
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv199 ; 2 uses
  %.str.82..str.83 = select i1 %i.nu, ptr @.str.82, ptr @.str.83
  %.430 = select i1 %i.nu, float 2.000000e-02, float -2.000000e-02
  %.431 = select i1 %i.nu, float -2.000000e-02, float 2.000000e-02 ; 3 uses
  %i.nx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.82..str.83, i32 noundef %i.nv, double noundef f0x3F947AE140000000) ; 0 uses
  %i.ny = load float, ptr %i.nw, align 4, !tbaa !318
  %i.nz = fadd float %i.ny, %.430
  store float %i.nz, ptr %i.nw, align 4, !tbaa !318
  %storemerge247 = fadd float %15, %.431
  %20 = insertelement <16 x float> poison, float %.431, i64 0
  %21 = shufflevector <16 x float> %20, <16 x float> poison, <16 x i32> zeroinitializer
  %22 = fadd <16 x float> %13, %21                ; 2 uses
  %storemerge248 = fadd float %14, %.431
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.thread.15
  %i.oa = phi float [ %i.nq, %.thread.15 ], [ %storemerge248, %.loopexit.sink.split ] ; 2 uses
  %i.ob = phi float [ %i.nj, %.thread.15 ], [ %storemerge247, %.loopexit.sink.split ] ; 2 uses
  %23 = phi <16 x float> [ %12, %.thread.15 ], [ %22, %.loopexit.sink.split ] ; 18 uses
  %24 = phi <16 x float> [ %13, %.thread.15 ], [ %22, %.loopexit.sink.split ]
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next200, 21
  br i1 %exitcond202.not, label %bb.bb, label %.preheader, !llvm.loop !321

bb.bb:                                            ; preds = %.loopexit
  %i.oc = add nuw nsw i32 %.198145, 1             ; 2 uses
  %exitcond203.not = icmp eq i32 %i.oc, 100
  br i1 %exitcond203.not, label %bb.bc, label %.preheader112, !llvm.loop !322

bb.bc:                                            ; preds = %bb.bb
  %25 = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %26 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %27 = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %28 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %29 = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %30 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %31 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %32 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %33 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %34 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %35 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %36 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %37 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %38 = extractelement <16 x float> %23, i64 0
  store float %38, ptr %i.b, align 16
  %39 = extractelement <16 x float> %23, i64 1
  store float %39, ptr %37, align 4
  %40 = extractelement <16 x float> %23, i64 2
  store float %40, ptr %36, align 8
  %41 = extractelement <16 x float> %23, i64 3
  store float %41, ptr %35, align 4
  %42 = extractelement <16 x float> %23, i64 4
  store float %42, ptr %34, align 16
  %43 = extractelement <16 x float> %23, i64 5
  store float %43, ptr %33, align 4
  %44 = extractelement <16 x float> %23, i64 6
  store float %44, ptr %32, align 8
  %45 = extractelement <16 x float> %23, i64 7
  store float %45, ptr %31, align 4
  %46 = extractelement <16 x float> %23, i64 8
  store float %46, ptr %30, align 16
  %47 = extractelement <16 x float> %23, i64 9
  store float %47, ptr %29, align 4
  %48 = extractelement <16 x float> %23, i64 10
  store float %48, ptr %28, align 8
  %49 = extractelement <16 x float> %23, i64 11
  store float %49, ptr %27, align 4
  %50 = extractelement <16 x float> %23, i64 12
  store float %50, ptr %26, align 16
  %51 = extractelement <16 x float> %23, i64 13
  store float %51, ptr %25, align 4
  %52 = extractelement <16 x float> %23, i64 14
  store float %52, ptr %.phi.trans.insert, align 8
  %53 = extractelement <16 x float> %23, i64 15
  store float %53, ptr %.phi.trans.insert205, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Gia_ManWindowCheckTopoError_rec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #24 {
bb.a:
  %.val = load i64, ptr %1, align 4               ; 2 uses
  %i.a = and i64 %.val, 2147483648
  %.not.i = icmp ne i64 %i.a, 0
  %i.b = and i64 %.val, 536870911
  %i.c = icmp eq i64 %i.b, 536870911
  %narrow.i.not = or i1 %.not.i, %i.c
  br i1 %narrow.i.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %.val.i to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 12
  %sext.i = shl i64 %i.j, 32
  %i.k = ashr exact i64 %sext.i, 30
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !44   ; 2 uses
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  %.not = icmp eq i32 %i.m, %i.p
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not24 = icmp eq i32 %i.m, %i.o
  br i1 %.not24, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.p, ptr %i.l, align 4, !tbaa !8
  %i.q = load i64, ptr %1, align 4
  %i.r = and i64 %i.q, 536870911
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [12 x i8], ptr %1, i64 %i.s
  %i.u = tail call i32 @Gia_ManWindowCheckTopoError_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.t)
  %.not15 = icmp eq i32 %i.u, 0
  br i1 %.not15, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %1, align 4
  %i.w = lshr i64 %i.v, 32
  %i.x = and i64 %i.w, 536870911
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [12 x i8], ptr %1, i64 %i.y
  %i.aa = tail call i32 @Gia_ManWindowCheckTopoError_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.z)
  %.not16 = icmp eq i32 %i.aa, 0
  br i1 %.not16, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.n, align 8, !tbaa !44
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !21
  %.val.i21 = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.ad = ptrtoint ptr %.val.i21 to i64
  %i.ae = sub i64 %i.g, %i.ad
  %i.af = sdiv exact i64 %i.ae, 12
  %sext.i22 = shl i64 %i.af, 32
  %i.ag = ashr exact i64 %sext.i22, 30
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 %i.ag
  store i32 %i.ab, ptr %i.ah, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @Gia_ManWindowCheckTopoError(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #10 {
.critedge:
  %i.a = getelementptr i8, ptr %2, i64 4          ; 3 uses
  %.val41 = load i32, ptr %i.a, align 4, !tbaa !64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread.i, label %bb.a

.thread.i:                                        ; preds = %.critedge
  %i.e = getelementptr i8, ptr %0, i64 24
  %.val18.i = load i32, ptr %i.e, align 8, !tbaa !42
  %i.f = add nsw i32 %.val18.i, 100               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 %i.f, ptr %i.g, align 8, !tbaa !43
  %i.h = sext i32 %i.f to i64
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #42 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.j, align 8, !tbaa !44
  br label %Gia_ManIncrementTravId.exit

bb.a:                                             ; preds = %.critedge
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !43 ; 2 uses
  %.phi.trans.insert21.i = getelementptr i8, ptr %0, i64 24 ; 2 uses
  %.val19.pre.i = load i32, ptr %.phi.trans.insert21.i, align 8, !tbaa !42 ; 2 uses
  %i.k = icmp slt i32 %.pre.i, %.val19.pre.i
  br i1 %i.k, label %.lr.ph.i, label %Gia_ManIncrementTravId.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.val.i72 = phi i32 [ %.val.i, %bb.d ], [ %.val19.pre.i, %bb.a ]
  %i.l = phi ptr [ %i.t, %bb.d ], [ %i.c, %bb.a ] ; 2 uses
  %i.m = phi i32 [ %i.s, %bb.d ], [ %.pre.i, %bb.a ]
  %i.n = shl nsw i32 %i.m, 1                      ; 3 uses
  store i32 %i.n, ptr %.phi.trans.insert.i, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.l, null
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = shl nsw i64 %i.o, 2                      ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.l, i64 noundef %i.p) #41
  %.pre23.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !43 ; 2 uses
  %.pre24.i = sext i32 %.pre23.i to i64
  %.val.i.pre = load i32, ptr %.phi.trans.insert21.i, align 8, !tbaa !42
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val.i = phi i32 [ %.val.i72, %bb.c ], [ %.val.i.pre, %bb.b ] ; 2 uses
  %.pre-phi.i = phi i64 [ %i.o, %bb.c ], [ %.pre24.i, %bb.b ]
  %i.s = phi i32 [ %i.n, %bb.c ], [ %.pre23.i, %bb.b ] ; 3 uses
  %i.t = phi ptr [ %i.r, %bb.c ], [ %i.q, %bb.b ] ; 4 uses
  store ptr %i.t, ptr %i.b, align 8, !tbaa !21
  %i.u = sdiv i32 %i.s, 2
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.v
  %i.x = shl nsw i64 %.pre-phi.i, 1
  %i.y = and i64 %i.x, 9223372036854775806
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %i.y, i1 false)
  %i.z = icmp slt i32 %i.s, %.val.i
  br i1 %i.z, label %.lr.ph.i, label %Gia_ManIncrementTravId.exit.loopexit, !llvm.loop !45

Gia_ManIncrementTravId.exit.loopexit:             ; preds = %bb.d
  %.val4058.pre = load i32, ptr %i.a, align 4, !tbaa !64
  br label %Gia_ManIncrementTravId.exit

Gia_ManIncrementTravId.exit:                      ; preds = %Gia_ManIncrementTravId.exit.loopexit, %.thread.i, %bb.a
  %i.aa = phi ptr [ %i.t, %Gia_ManIncrementTravId.exit.loopexit ], [ %i.i, %.thread.i ], [ %i.c, %bb.a ] ; 3 uses
  %.val4058 = phi i32 [ %.val4058.pre, %Gia_ManIncrementTravId.exit.loopexit ], [ %.val41, %.thread.i ], [ %.val41, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !44
  %i.ad = add nsw i32 %i.ac, 1                    ; 3 uses
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !44
  %i.ae = icmp sgt i32 %.val4058, 0
  br i1 %i.ae, label %.lr.ph60, label %.critedge2

.lr.ph60:                                         ; preds = %Gia_ManIncrementTravId.exit
  %i.af = getelementptr i8, ptr %0, i64 32
  %.val34 = load ptr, ptr %i.af, align 8, !tbaa !46
  %.not32 = icmp eq ptr %.val34, null
  br i1 %.not32, label %.critedge2, label %.lr.ph60.split

.lr.ph60.split:                                   ; preds = %.lr.ph60
  %i.ag = getelementptr i8, ptr %2, i64 8
  %.val37 = load ptr, ptr %i.ag, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph60.split, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph60.split ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val37, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8
  %i.aj = zext i32 %i.ai to i64
  %sext.i = shl nuw i64 %i.aj, 32
  %i.ak = ashr exact i64 %sext.i, 30
  %i.al = getelementptr inbounds i8, ptr %i.aa, i64 %i.ak
  store i32 %i.ad, ptr %i.al, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val40 = load i32, ptr %i.a, align 4, !tbaa !64
  %i.am = sext i32 %.val40 to i64
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.e, label %.critedge2.thread, !llvm.loop !323

.critedge2:                                       ; preds = %.lr.ph60, %Gia_ManIncrementTravId.exit
  %i.ao = icmp eq ptr %i.aa, null
  br i1 %i.ao, label %.thread.i53, label %.critedge2.thread

.thread.i53:                                      ; preds = %.critedge2
  %i.ap = getelementptr i8, ptr %0, i64 24
  %.val18.i54 = load i32, ptr %i.ap, align 8, !tbaa !42
  %i.aq = add nsw i32 %.val18.i54, 100            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !43
  %i.as = sext i32 %i.aq to i64
  %i.at = tail call noalias ptr @calloc(i64 noundef %i.as, i64 noundef 4) #42
  store ptr %i.at, ptr %i.b, align 8, !tbaa !21
  br label %Gia_ManIncrementTravId.exit55
end_hunk_0
