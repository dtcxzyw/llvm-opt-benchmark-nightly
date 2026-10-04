Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcCascade?download=true
inline.NumInlined: 128
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 27
begin_hunk_0_@Abc_ResPrintAllCofs:bb.a
  %.01821.us = phi i32 [ %i.v, %bb.c ], [ 0, %.lr.ph23 ] ; 4 uses
  %i.d = call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %.01821.us) ; 2 uses
  %i.e = add nsw i32 %i.d, -7
  %or.cond.us = icmp ult i32 %i.e, -4
  br i1 %or.cond.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph23.split.us
  %i.f = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %.01821.us, ptr noundef nonnull %i.a) ; 6 uses
  %i.g = icmp ult i32 %i.f, 2
  %i.h = add i32 %i.f, -1
  %i.i = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.h, i1 true)
  %i.j = sub nuw nsw i32 32, %i.i
  %.09.i.i.us = select i1 %i.g, i32 %i.f, i32 %i.j ; 3 uses
  %i.k = mul nsw i32 %.09.i.i.us, 10000
  %i.l = add nsw i32 %.09.i.i.us, -1
  %.neg.i.us = shl nsw i32 -1, %i.l
  %i.m = add i32 %.neg.i.us, %i.f                 ; 2 uses
  %i.n = mul nsw i32 %i.m, %i.m
  %i.o = add nsw i32 %i.n, %i.k
  %i.p = icmp sgt i32 %i.f, %3
  br i1 %i.p, label %bb.c, label %.preheader.us

.preheader.us:                                    ; preds = %bb.b, %.preheader.us
  %.020.us = phi i32 [ %i.u, %.preheader.us ], [ 0, %bb.b ] ; 3 uses
  %i.q = shl nuw i32 1, %.020.us
  %i.r = and i32 %i.q, %.01821.us
  %.not.us = icmp eq i32 %i.r, 0
  %i.s = add nuw nsw i32 %.020.us, 97
  %i.t = select i1 %.not.us, i32 45, i32 %i.s
  %putchar.us = call i32 @putchar(i32 %i.t)       ; 0 uses
  %i.u = add nuw nsw i32 %.020.us, 1              ; 2 uses
  %exitcond26.not = icmp eq i32 %i.u, %2
  br i1 %exitcond26.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !85

bb.c:                                             ; preds = %._crit_edge.us, %bb.b, %.lr.ph23.split.us
  %i.v = add nuw nsw i32 %.01821.us, 1            ; 2 uses
  %exitcond28.not = icmp eq i32 %i.v, %smax27
  br i1 %exitcond28.not, label %._crit_edge24, label %.lr.ph23.split.us, !llvm.loop !86

._crit_edge.us:                                   ; preds = %.preheader.us
  %i.w = load i32, ptr %i.a, align 4, !tbaa !45
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.d, i32 noundef %i.f, i32 noundef %.09.i.i.us, i32 noundef %i.w, i32 noundef %i.o) ; 0 uses
  br label %bb.c

.lr.ph23.split:                                   ; preds = %.lr.ph23, %bb.e
  %.01821 = phi i32 [ %i.an, %bb.e ], [ 0, %.lr.ph23 ] ; 3 uses
  %i.y = call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %.01821) ; 2 uses
  %i.z = add nsw i32 %i.y, -7
  %or.cond = icmp ult i32 %i.z, -4
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph23.split
  %i.aa = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %.01821, ptr noundef nonnull %i.a) ; 6 uses
  %i.ab = icmp sgt i32 %i.aa, %3
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.ac = icmp ult i32 %i.aa, 2
  %i.ad = add i32 %i.aa, -1
  %i.ae = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ad, i1 true)
  %i.af = sub nuw nsw i32 32, %i.ae
  %.09.i.i = select i1 %i.ac, i32 %i.aa, i32 %i.af ; 3 uses
  %i.ag = add nsw i32 %.09.i.i, -1
  %.neg.i = shl nsw i32 -1, %i.ag
  %i.ah = add i32 %.neg.i, %i.aa                  ; 2 uses
  %i.ai = mul nsw i32 %i.ah, %i.ah
  %i.aj = mul nsw i32 %.09.i.i, 10000
  %i.ak = add nsw i32 %i.ai, %i.aj
  %i.al = load i32, ptr %i.a, align 4, !tbaa !45
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %.09.i.i, i32 noundef %i.al, i32 noundef %i.ak) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph23.split, %.preheader
  %i.an = add nuw nsw i32 %.01821, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, %smax27
  br i1 %exitcond.not, label %._crit_edge24, label %.lr.ph23.split, !llvm.loop !86

._crit_edge24:                                    ; preds = %bb.e, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_ResSwapRandom(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.outer.split.lr.ph, label %.outer._crit_edge

.outer.split.lr.ph:                               ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %.outer.split.us.us.preheader, label %.preheader33

.outer.split.us.us.preheader:                     ; preds = %.outer.split.lr.ph
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  br label %.outer.split.us.us

.outer.split.us.us:                               ; preds = %.outer.split.us.us.preheader, %.split.us.us.split.us.us
  %.029.ph67.us.us = phi i32 [ %i.ab, %.split.us.us.split.us.us ], [ 0, %.outer.split.us.us.preheader ]
  br label %.preheader33.us.us.us.us

.preheader33.us.us.us.us:                         ; preds = %.preheader33.us.us.us.us.backedge, %.outer.split.us.us
  %i.c = tail call i32 @rand() #21
  %i.d = srem i32 %i.c, %2                        ; 2 uses
  %i.e = tail call i32 @rand() #21
  %i.f = srem i32 %i.e, %2                        ; 2 uses
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %.preheader33.us.us.us.us.backedge, label %.preheader.us.us.us.us

.preheader33.us.us.us.us.backedge:                ; preds = %.preheader33.us.us.us.us, %._crit_edge40.us.us.us.us
  br label %.preheader33.us.us.us.us, !llvm.loop !6

.preheader.us.us.us.us:                           ; preds = %.preheader33.us.us.us.us
  %i.h = shl nuw i32 1, %i.d                      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.us.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader.us.us.us.us ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !45
  %i.k = and i32 %i.j, %i.h
  %.not.us.us.us.us = icmp eq i32 %i.k, 0
  br i1 %.not.us.us.us.us, label %bb.c, label %.lr.ph39.us.us.us.us.split.loop.exit88

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph39.us.us.us.us, label %bb.b, !llvm.loop !87

.lr.ph39.us.us.us.us.split.loop.exit88:           ; preds = %bb.b
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph39.us.us.us.us

.lr.ph39.us.us.us.us:                             ; preds = %bb.c, %.lr.ph39.us.us.us.us.split.loop.exit88
  %.028.lcssa.us.us.us.us = phi i32 [ %i.l, %.lr.ph39.us.us.us.us.split.loop.exit88 ], [ %4, %bb.c ] ; 2 uses
  %i.m = shl nuw i32 1, %i.f                      ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph39.us.us.us.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %bb.e ], [ 0, %.lr.ph39.us.us.us.us ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv75
  %i.o = load i32, ptr %i.n, align 4, !tbaa !45
  %i.p = and i32 %i.o, %i.m
  %.not32.us.us.us.us = icmp eq i32 %i.p, 0
  br i1 %.not32.us.us.us.us, label %bb.e, label %._crit_edge40.us.us.us.us.split.loop.exit90

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count
  br i1 %exitcond79.not, label %._crit_edge40.us.us.us.us, label %bb.d, !llvm.loop !88

._crit_edge40.us.us.us.us.split.loop.exit90:      ; preds = %bb.d
  %i.q = trunc nuw nsw i64 %indvars.iv75 to i32
  br label %._crit_edge40.us.us.us.us

._crit_edge40.us.us.us.us:                        ; preds = %bb.e, %._crit_edge40.us.us.us.us.split.loop.exit90
  %.0.lcssa.us.us.us.us = phi i32 [ %i.q, %._crit_edge40.us.us.us.us.split.loop.exit90 ], [ %4, %bb.e ] ; 2 uses
  %i.r = icmp eq i32 %.028.lcssa.us.us.us.us, %.0.lcssa.us.us.us.us
  br i1 %i.r, label %.preheader33.us.us.us.us.backedge, label %.split.us.us.split.us.us

.split.us.us.split.us.us:                         ; preds = %._crit_edge40.us.us.us.us
  %i.s = or i32 %i.m, %i.h                        ; 2 uses
  %i.t = zext nneg i32 %.028.lcssa.us.us.us.us to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45
  %i.w = xor i32 %i.v, %i.s
  store i32 %i.w, ptr %i.u, align 4, !tbaa !45
  %i.x = zext nneg i32 %.0.lcssa.us.us.us.us to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !45
  %i.aa = xor i32 %i.z, %i.s
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !45
  %i.ab = add nuw nsw i32 %.029.ph67.us.us, 1     ; 2 uses
  %exitcond80.not = icmp eq i32 %i.ab, %5
  br i1 %exitcond80.not, label %.outer._crit_edge, label %.outer.split.us.us, !llvm.loop !6

.preheader33:                                     ; preds = %.outer.split.lr.ph, %.preheader33
  %i.ac = tail call i32 @rand() #21               ; 0 uses
  %i.ad = tail call i32 @rand() #21               ; 0 uses
  br label %.preheader33, !llvm.loop !89

.outer._crit_edge:                                ; preds = %.split.us.us.split.us.us, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @Abc_ResPartition(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 8 uses
  %i.j = alloca i32, align 4                      ; 12 uses
  %i.k = alloca [10 x i32], align 16              ; 87 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #21
  %i.l = tail call i32 @Cudd_SupportSize(ptr noundef %0, ptr noundef %1) #21 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load i32, ptr %i.m, align 8, !tbaa !63
  %i.o = sub nsw i32 %i.n, %2
  %i.p = tail call i32 @Cudd_DagSize(ptr noundef %1) #21
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %2, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.l) ; 0 uses
  %i.r = icmp slt i32 %i.l, 7
  %.028.lcssa.i.sroa.gep1025 = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts139 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.s = icmp slt i32 %2, 13
  br i1 %i.s, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.t = sdiv i32 %2, 2                           ; 4 uses
  %i.u = and i32 %2, -2147483647
  %i.v = icmp eq i32 %i.u, 1                      ; 2 uses
  br i1 %i.v, label %.lr.ph.i, label %.preheader31.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.w = add nuw nsw i32 %i.t, 1
  %i.x = shl nsw i32 -2, %i.t
  %i.y = xor i32 %i.x, -1
  store i32 %i.y, ptr %i.k, align 16, !tbaa !45
  br label %.preheader31.i

.preheader31.i:                                   ; preds = %.lr.ph.i, %bb.d
  %.028.lcssa.i.sroa.phi = phi ptr [ %i.k, %bb.d ], [ %.028.lcssa.i.sroa.gep1025, %.lr.ph.i ]
  %.028.lcssa.i = phi i64 [ 1, %bb.d ], [ 2, %.lr.ph.i ]
  %.027.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.z = shl nsw i32 -1, %i.t
  %i.aa = xor i32 %i.z, -1                        ; 2 uses
  %i.ab = shl i32 %i.aa, %.027.lcssa.i
  store i32 %i.ab, ptr %.028.lcssa.i.sroa.phi, align 4, !tbaa !45
  br i1 %i.v, label %Abc_ResStartPart.exit, label %bb.e

bb.e:                                             ; preds = %.preheader31.i
  %i.ac = add nsw i32 %.027.lcssa.i, %i.t
  %i.ad = shl i32 %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.028.lcssa.i
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !45
  br label %Abc_ResStartPart.exit

Abc_ResStartPart.exit:                            ; preds = %bb.e, %.preheader31.i
  call void @Abc_ResPrint(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.k, i32 noundef 2)
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 14 uses
  %i.ag = icmp sgt i32 %2, 0
  br label %bb.f

bb.f:                                             ; preds = %Abc_ResStartPart.exit, %.loopexit966
  %.0127850 = phi i32 [ 0, %Abc_ResStartPart.exit ], [ %i.gd, %.loopexit966 ] ; 2 uses
  %.not136 = icmp eq i32 %.0127850, 0
  br i1 %.not136, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %puts137 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %.outer.split.us.us.i

.outer.split.us.us.i:                             ; preds = %.split.us.us.split.us.us.i, %bb.g
  %.029.ph67.us.us.i = phi i32 [ %i.bf, %.split.us.us.split.us.us.i ], [ 0, %bb.g ]
  br label %.preheader33.us.us.us.us.i

.preheader33.us.us.us.us.i:                       ; preds = %.preheader33.us.us.us.us.i.backedge, %.outer.split.us.us.i
  %i.ah = call i32 @rand() #21
  %i.ai = srem i32 %i.ah, %2                      ; 2 uses
  %i.aj = call i32 @rand() #21
  %i.ak = srem i32 %i.aj, %2                      ; 2 uses
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %.preheader33.us.us.us.us.i.backedge, label %.preheader.us.us.us.us.i

.preheader33.us.us.us.us.i.backedge:              ; preds = %.preheader33.us.us.us.us.i, %.preheader.us.us.us.us.i
  br label %.preheader33.us.us.us.us.i, !llvm.loop !6

.preheader.us.us.us.us.i:                         ; preds = %.preheader33.us.us.us.us.i
  %i.am = shl nuw i32 1, %i.ai                    ; 3 uses
  %i.an = load i32, ptr %i.k, align 16, !tbaa !45 ; 2 uses
  %i.ao = and i32 %i.an, %i.am
  %.not.us.us.us.us.i = icmp eq i32 %i.ao, 0
  %i.ap = load i32, ptr %i.af, align 4
  %i.aq = and i32 %i.ap, %i.am
  %.not.us.us.us.us.i.1 = icmp eq i32 %i.aq, 0
  %spec.select = select i1 %.not.us.us.us.us.i.1, i32 2, i32 1
  %.028.lcssa.us.us.us.us.i = select i1 %.not.us.us.us.us.i, i32 %spec.select, i32 0 ; 2 uses
  %i.ar = shl nuw i32 1, %i.ak                    ; 3 uses
  %i.as = and i32 %i.an, %i.ar
  %.not32.us.us.us.us.i = icmp eq i32 %i.as, 0
  %i.at = load i32, ptr %i.af, align 4
  %i.au = and i32 %i.at, %i.ar
  %.not32.us.us.us.us.i.1 = icmp eq i32 %i.au, 0
  %spec.select961 = select i1 %.not32.us.us.us.us.i.1, i32 2, i32 1
  %.0.lcssa.us.us.us.us.i = select i1 %.not32.us.us.us.us.i, i32 %spec.select961, i32 0 ; 2 uses
  %i.av = icmp eq i32 %.028.lcssa.us.us.us.us.i, %.0.lcssa.us.us.us.us.i
  br i1 %i.av, label %.preheader33.us.us.us.us.i.backedge, label %.split.us.us.split.us.us.i

.split.us.us.split.us.us.i:                       ; preds = %.preheader.us.us.us.us.i
  %i.aw = or i32 %i.ar, %i.am                     ; 2 uses
  %i.ax = zext nneg i32 %.028.lcssa.us.us.us.us.i to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !45
  %i.ba = xor i32 %i.az, %i.aw
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !45
  %i.bb = zext nneg i32 %.0.lcssa.us.us.us.us.i to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !45
  %i.be = xor i32 %i.bd, %i.aw
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !45
  %i.bf = add nuw nsw i32 %.029.ph67.us.us.i, 1   ; 2 uses
  %exitcond80.not.i = icmp eq i32 %i.bf, 20
  br i1 %exitcond80.not.i, label %Abc_ResSwapRandom.exit, label %.outer.split.us.us.i, !llvm.loop !6

Abc_ResSwapRandom.exit:                           ; preds = %.split.us.us.split.us.us.i
  call void @Abc_ResPrint(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.k, i32 noundef 2)
  br label %.preheader

.preheader:                                       ; preds = %Abc_ResSwapRandom.exit, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %._crit_edge.us.i.1
  %i.bg = load i32, ptr %i.k, align 16, !tbaa !45 ; 4 uses
  %i.bh = load i32, ptr %i.af, align 4, !tbaa !45 ; 2 uses
  %i.bi = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.bg, ptr noundef null) ; 4 uses
  %i.bj = icmp ult i32 %i.bi, 2
  %i.bk = add i32 %i.bi, -1
  %i.bl = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bk, i1 true)
  %i.bm = sub nuw nsw i32 32, %i.bl
  %.09.i.i.i = select i1 %i.bj, i32 %i.bi, i32 %i.bm ; 2 uses
  %i.bn = add nsw i32 %.09.i.i.i, -1
  %.neg.i.i = shl nsw i32 -1, %i.bn
  %i.bo = add i32 %.neg.i.i, %i.bi                ; 2 uses
  %i.bp = mul nsw i32 %i.bo, %i.bo
  %i.bq = load i32, ptr %i.af, align 4, !tbaa !45
  %i.br = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.bq, ptr noundef null) ; 4 uses
  %i.bs = icmp ult i32 %i.br, 2
  %i.bt = add i32 %i.br, -1
  %i.bu = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bt, i1 true)
  %i.bv = sub nuw nsw i32 32, %i.bu
  %.09.i.i65.i = select i1 %i.bs, i32 %i.br, i32 %i.bv ; 2 uses
  %i.bw = add nsw i32 %.09.i.i65.i, -1
  %.neg.i66.i = shl nsw i32 -1, %i.bw
  %i.bx = add i32 %.neg.i66.i, %i.br              ; 2 uses
  %i.by = mul nsw i32 %i.bx, %i.bx
  %reass.add.i = add i32 %.09.i.i65.i, %.09.i.i.i
  %reass.mul.i = mul i32 %reass.add.i, 10000
  %i.bz = add i32 %reass.mul.i, %i.bp
  %i.ca = add i32 %i.bz, %i.by
  br i1 %i.ag, label %.lr.ph84.split.us.i.preheader, label %Abc_ResMigrate.exit.thread

Abc_ResMigrate.exit.thread:                       ; preds = %bb.h
  store i32 %i.bg, ptr %i.k, align 16, !tbaa !45
  store i32 %i.bh, ptr %i.af, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  %i.cb = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.bg, ptr noundef nonnull %i.j) ; 5 uses
  %i.cc = icmp ult i32 %i.cb, 2
  %i.cd = add i32 %i.cb, -1
  %i.ce = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cd, i1 true)
  %i.cf = sub nuw nsw i32 32, %i.ce
  %.09.i.i.i145 = select i1 %i.cc, i32 %i.cb, i32 %i.cf ; 3 uses
  %i.cg = mul nuw nsw i32 %.09.i.i.i145, 10000
  %i.ch = add nsw i32 %.09.i.i.i145, -1
  %.neg.i.i146 = shl nsw i32 -1, %i.ch
  %i.ci = add i32 %.neg.i.i146, %i.cb             ; 2 uses
  %i.cj = mul nsw i32 %i.ci, %i.ci
  %i.ck = add nuw nsw i32 %i.cj, %i.cg            ; 2 uses
  %i.cl = load i32, ptr %i.j, align 4, !tbaa !45
  %i.cm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.cb, i32 noundef %.09.i.i.i145, i32 noundef %i.cl, i32 noundef %i.ck) ; 0 uses
  %i.cn = load i32, ptr %i.af, align 4, !tbaa !45
  %i.co = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.cn, ptr noundef nonnull %i.j) ; 5 uses
  %i.cp = icmp ult i32 %i.co, 2
  %i.cq = add i32 %i.co, -1
  %i.cr = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cq, i1 true)
  %i.cs = sub nuw nsw i32 32, %i.cr
  %.09.i.i.i145.1 = select i1 %i.cp, i32 %i.co, i32 %i.cs ; 3 uses
  %i.ct = mul nuw nsw i32 %.09.i.i.i145.1, 10000
  %i.cu = add nsw i32 %.09.i.i.i145.1, -1
  %.neg.i.i146.1 = shl nsw i32 -1, %i.cu
  %i.cv = add i32 %.neg.i.i146.1, %i.co           ; 2 uses
  %i.cw = mul nsw i32 %i.cv, %i.cv
  %i.cx = add nuw nsw i32 %i.cw, %i.ct            ; 2 uses
  %i.cy = add nuw nsw i32 %i.cx, %i.ck
  %i.cz = load i32, ptr %i.j, align 4, !tbaa !45
  %i.da = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.co, i32 noundef %.09.i.i.i145.1, i32 noundef %i.cz, i32 noundef %i.cx) ; 0 uses
  %i.db = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.cy) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  br label %.loopexit966

.lr.ph84.split.us.i.preheader:                    ; preds = %bb.h
  %.pre895 = load i32, ptr %i.k, align 16, !tbaa !45
  br label %.lr.ph84.split.us.i

.lr.ph84.split.us.i:                              ; preds = %.lr.ph84.split.us.i.preheader, %..loopexit_crit_edge.us.i
  %i.dc = phi i32 [ %i.en, %..loopexit_crit_edge.us.i ], [ %.pre895, %.lr.ph84.split.us.i.preheader ] ; 3 uses
  %.083.us.i = phi i32 [ %.4.us.i, %..loopexit_crit_edge.us.i ], [ 0, %.lr.ph84.split.us.i.preheader ] ; 2 uses
  %.06281.us.i = phi i32 [ %i.eo, %..loopexit_crit_edge.us.i ], [ 0, %.lr.ph84.split.us.i.preheader ] ; 3 uses
  %.sroa.0.080.us.i = phi i32 [ %.sroa.0.4.us.i, %..loopexit_crit_edge.us.i ], [ %i.bg, %.lr.ph84.split.us.i.preheader ] ; 2 uses
  %.sroa.5.079.us.i = phi i32 [ %.sroa.5.4.us.i, %..loopexit_crit_edge.us.i ], [ %i.bh, %.lr.ph84.split.us.i.preheader ] ; 2 uses
  %i.dd = shl nuw i32 1, %.06281.us.i             ; 2 uses
  %i.de = and i32 %i.dc, %i.dd
  %.not.us.i = icmp eq i32 %i.de, 0
  br i1 %.not.us.i, label %..loopexit_crit_edge.us.i, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.lr.ph84.split.us.i
  %.pre.i = load i32, ptr %i.af, align 4, !tbaa !45
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.j, %.preheader.us.preheader.i
  %i.df = phi i32 [ %i.ek, %bb.j ], [ %i.dc, %.preheader.us.preheader.i ] ; 2 uses
  %i.dg = phi i32 [ %i.el, %bb.j ], [ %.pre.i, %.preheader.us.preheader.i ] ; 3 uses
  %.176.us.i = phi i32 [ %.3.us.i, %bb.j ], [ %.083.us.i, %.preheader.us.preheader.i ] ; 2 uses
  %.06175.us.i = phi i32 [ %i.em, %bb.j ], [ 0, %.preheader.us.preheader.i ] ; 3 uses
  %.sroa.0.174.us.i = phi i32 [ %.sroa.0.3.us.i, %bb.j ], [ %.sroa.0.080.us.i, %.preheader.us.preheader.i ] ; 2 uses
  %.sroa.5.173.us.i = phi i32 [ %.sroa.5.3.us.i, %bb.j ], [ %.sroa.5.079.us.i, %.preheader.us.preheader.i ] ; 2 uses
  %i.dh = shl nuw i32 1, %.06175.us.i             ; 2 uses
  %i.di = and i32 %i.dh, %i.dg
  %.not64.us.i = icmp eq i32 %i.di, 0
  %i.dj = icmp eq i32 %.06281.us.i, %.06175.us.i
  %or.cond.us.i = or i1 %i.dj, %.not64.us.i
  br i1 %or.cond.us.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader.us.i
  %i.dk = or i32 %i.dh, %i.dd                     ; 4 uses
  %i.dl = xor i32 %i.df, %i.dk                    ; 2 uses
  store i32 %i.dl, ptr %i.k, align 16, !tbaa !45
  %i.dm = xor i32 %i.dg, %i.dk
  store i32 %i.dm, ptr %i.af, align 4, !tbaa !45
  %i.dn = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.dl, ptr noundef null) ; 4 uses
  %i.do = icmp ult i32 %i.dn, 2
  %i.dp = add i32 %i.dn, -1
  %i.dq = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dp, i1 true)
  %i.dr = sub nuw nsw i32 32, %i.dq
  %.09.i.i67.us.i = select i1 %i.do, i32 %i.dn, i32 %i.dr ; 2 uses
  %i.ds = add nsw i32 %.09.i.i67.us.i, -1
  %.neg.i68.us.i = shl nsw i32 -1, %i.ds
  %i.dt = add i32 %.neg.i68.us.i, %i.dn           ; 2 uses
  %i.du = mul nsw i32 %i.dt, %i.dt
  %i.dv = load i32, ptr %i.af, align 4, !tbaa !45
  %i.dw = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.dv, ptr noundef null) ; 4 uses
  %i.dx = icmp ult i32 %i.dw, 2
  %i.dy = add i32 %i.dw, -1
  %i.dz = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dy, i1 true)
  %i.ea = sub nuw nsw i32 32, %i.dz
  %.09.i.i69.us.i = select i1 %i.dx, i32 %i.dw, i32 %i.ea ; 2 uses
  %i.eb = add nsw i32 %.09.i.i69.us.i, -1
  %.neg.i70.us.i = shl nsw i32 -1, %i.eb
  %i.ec = add i32 %.neg.i70.us.i, %i.dw           ; 2 uses
  %i.ed = mul nsw i32 %i.ec, %i.ec
  %reass.add71.us.i = add i32 %.09.i.i69.us.i, %.09.i.i67.us.i
  %reass.mul72.us.i = mul i32 %reass.add71.us.i, 10000
  %i.ee = add i32 %reass.mul72.us.i, %i.du
  %i.ef = add i32 %i.ee, %i.ed
  %i.eg = icmp slt i32 %i.ef, %i.ca               ; 3 uses
  %.pre91.i = load i32, ptr %i.k, align 16, !tbaa !45 ; 2 uses
  %i.eh = load i32, ptr %i.af, align 4            ; 2 uses
  %.sroa.5.2.us.i = select i1 %i.eg, i32 %i.eh, i32 %.sroa.5.173.us.i
  %.sroa.0.2.us.i = select i1 %i.eg, i32 %.pre91.i, i32 %.sroa.0.174.us.i
  %.2.us.i = select i1 %i.eg, i32 1, i32 %.176.us.i
  %i.ei = xor i32 %.pre91.i, %i.dk                ; 2 uses
  store i32 %i.ei, ptr %i.k, align 16, !tbaa !45
  %i.ej = xor i32 %i.eh, %i.dk                    ; 2 uses
  store i32 %i.ej, ptr %i.af, align 4, !tbaa !45
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader.us.i
  %i.ek = phi i32 [ %i.df, %.preheader.us.i ], [ %i.ei, %bb.i ] ; 2 uses
  %i.el = phi i32 [ %i.dg, %.preheader.us.i ], [ %i.ej, %bb.i ]
  %.sroa.5.3.us.i = phi i32 [ %.sroa.5.173.us.i, %.preheader.us.i ], [ %.sroa.5.2.us.i, %bb.i ] ; 2 uses
  %.sroa.0.3.us.i = phi i32 [ %.sroa.0.174.us.i, %.preheader.us.i ], [ %.sroa.0.2.us.i, %bb.i ] ; 2 uses
  %.3.us.i = phi i32 [ %.176.us.i, %.preheader.us.i ], [ %.2.us.i, %bb.i ] ; 2 uses
  %i.em = add nuw nsw i32 %.06175.us.i, 1         ; 2 uses
  %exitcond.not.i143 = icmp eq i32 %i.em, %2
  br i1 %exitcond.not.i143, label %..loopexit_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !3

..loopexit_crit_edge.us.i:                        ; preds = %bb.j, %.lr.ph84.split.us.i
  %i.en = phi i32 [ %i.dc, %.lr.ph84.split.us.i ], [ %i.ek, %bb.j ]
  %.sroa.5.4.us.i = phi i32 [ %.sroa.5.079.us.i, %.lr.ph84.split.us.i ], [ %.sroa.5.3.us.i, %bb.j ] ; 2 uses
  %.sroa.0.4.us.i = phi i32 [ %.sroa.0.080.us.i, %.lr.ph84.split.us.i ], [ %.sroa.0.3.us.i, %bb.j ] ; 3 uses
  %.4.us.i = phi i32 [ %.083.us.i, %.lr.ph84.split.us.i ], [ %.3.us.i, %bb.j ] ; 2 uses
  %i.eo = add nuw nsw i32 %.06281.us.i, 1         ; 2 uses
  %exitcond90.not.i = icmp eq i32 %i.eo, %2
  br i1 %exitcond90.not.i, label %Abc_ResMigrate.exit, label %.lr.ph84.split.us.i, !llvm.loop !4

Abc_ResMigrate.exit:                              ; preds = %..loopexit_crit_edge.us.i
  %i.ep = icmp eq i32 %.4.us.i, 0
  store i32 %.sroa.0.4.us.i, ptr %i.k, align 16, !tbaa !45
  store i32 %.sroa.5.4.us.i, ptr %i.af, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  %i.eq = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %.sroa.0.4.us.i, ptr noundef nonnull %i.j) ; 5 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %Abc_ResMigrate.exit
  %.01719.us.i = phi i32 [ 0, %Abc_ResMigrate.exit ], [ %i.ew, %bb.k ] ; 3 uses
  %i.er = load i32, ptr %i.k, align 16, !tbaa !45
  %i.es = shl nuw i32 1, %.01719.us.i
  %i.et = and i32 %i.er, %i.es
  %.not.us.i150 = icmp eq i32 %i.et, 0
  %i.eu = add nuw nsw i32 %.01719.us.i, 97
  %i.ev = select i1 %.not.us.i150, i32 45, i32 %i.eu
  %putchar.us.i = call i32 @putchar(i32 %i.ev)    ; 0 uses
  %i.ew = add nuw nsw i32 %.01719.us.i, 1         ; 2 uses
  %exitcond28.not.i = icmp eq i32 %i.ew, %2
  br i1 %exitcond28.not.i, label %._crit_edge.us.i, label %bb.k, !llvm.loop !5

._crit_edge.us.i:                                 ; preds = %bb.k
  %i.ex = icmp ult i32 %i.eq, 2
  %i.ey = add i32 %i.eq, -1
  %i.ez = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ey, i1 true)
  %i.fa = sub nuw nsw i32 32, %i.ez
  %.09.i.i.us.i = select i1 %i.ex, i32 %i.eq, i32 %i.fa ; 3 uses
  %i.fb = mul nsw i32 %.09.i.i.us.i, 10000
  %i.fc = add nsw i32 %.09.i.i.us.i, -1
  %.neg.i.us.i = shl nsw i32 -1, %i.fc
  %i.fd = add i32 %.neg.i.us.i, %i.eq             ; 2 uses
  %i.fe = mul nsw i32 %i.fd, %i.fd
  %i.ff = add nsw i32 %i.fe, %i.fb                ; 2 uses
  %i.fg = load i32, ptr %i.j, align 4, !tbaa !45
  %i.fh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.eq, i32 noundef %.09.i.i.us.i, i32 noundef %i.fg, i32 noundef %i.ff) ; 0 uses
  %i.fi = load i32, ptr %i.af, align 4, !tbaa !45
  %i.fj = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.fi, ptr noundef nonnull %i.j) ; 5 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %._crit_edge.us.i
  %.01719.us.i.1 = phi i32 [ 0, %._crit_edge.us.i ], [ %i.fp, %bb.l ] ; 3 uses
  %i.fk = load i32, ptr %i.af, align 4, !tbaa !45
  %i.fl = shl nuw i32 1, %.01719.us.i.1
  %i.fm = and i32 %i.fk, %i.fl
  %.not.us.i150.1 = icmp eq i32 %i.fm, 0
  %i.fn = add nuw nsw i32 %.01719.us.i.1, 97
  %i.fo = select i1 %.not.us.i150.1, i32 45, i32 %i.fn
  %putchar.us.i.1 = call i32 @putchar(i32 %i.fo)  ; 0 uses
  %i.fp = add nuw nsw i32 %.01719.us.i.1, 1       ; 2 uses
  %exitcond28.not.i.1 = icmp eq i32 %i.fp, %2
  br i1 %exitcond28.not.i.1, label %._crit_edge.us.i.1, label %bb.l, !llvm.loop !5

._crit_edge.us.i.1:                               ; preds = %bb.l
  %i.fq = icmp ult i32 %i.fj, 2
  %i.fr = add i32 %i.fj, -1
  %i.fs = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fr, i1 true)
  %i.ft = sub nuw nsw i32 32, %i.fs
  %.09.i.i.us.i.1 = select i1 %i.fq, i32 %i.fj, i32 %i.ft ; 3 uses
  %i.fu = mul nsw i32 %.09.i.i.us.i.1, 10000
  %i.fv = add nsw i32 %.09.i.i.us.i.1, -1
  %.neg.i.us.i.1 = shl nsw i32 -1, %i.fv
  %i.fw = add i32 %.neg.i.us.i.1, %i.fj           ; 2 uses
  %i.fx = mul nsw i32 %i.fw, %i.fw
  %i.fy = add nsw i32 %i.fx, %i.fu                ; 2 uses
  %i.fz = add nsw i32 %i.fy, %i.ff
  %i.ga = load i32, ptr %i.j, align 4, !tbaa !45
  %i.gb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.fj, i32 noundef %.09.i.i.us.i.1, i32 noundef %i.ga, i32 noundef %i.fy) ; 0 uses
  %i.gc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.fz) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  br i1 %i.ep, label %.loopexit966, label %bb.h, !llvm.loop !90

.loopexit966:                                     ; preds = %._crit_edge.us.i.1, %Abc_ResMigrate.exit.thread
  %i.gd = add nuw nsw i32 %.0127850, 1            ; 2 uses
  %exitcond886.not = icmp eq i32 %i.gd, 5
  br i1 %exitcond886.not, label %.loopexit, label %bb.f, !llvm.loop !91

bb.m:                                             ; preds = %bb.c
  %i.ge = icmp samesign ult i32 %2, 19
  br i1 %i.ge, label %bb.n, label %bb.am

bb.n:                                             ; preds = %bb.m
  %.lhs.trunc = trunc nuw nsw i32 %2 to i8        ; 2 uses
  %i.gf = udiv i8 %.lhs.trunc, 3
  %.zext = zext nneg i8 %i.gf to i32              ; 4 uses
  %i.gg = urem i8 %.lhs.trunc, 3                  ; 2 uses
  %.not813 = icmp eq i8 %i.gg, 0
  br i1 %.not813, label %.preheader31.i151, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %bb.n
  %i.gh = add nuw nsw i32 %.zext, 1
  %i.gi = shl nsw i32 -2, %.zext
  %i.gj = xor i32 %i.gi, -1
  %wide.trip.count.i159 = zext nneg i8 %i.gg to i64 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i158
  %indvars.iv.i160.epil = phi i64 [ 0, %.lr.ph.i158 ], [ %indvars.iv.next.i162.epil, %bb.o ] ; 2 uses
  %.02733.i161.epil = phi i32 [ 0, %.lr.ph.i158 ], [ %i.gm, %bb.o ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i158 ], [ %epil.iter.next, %bb.o ]
  %i.gk = shl i32 %i.gj, %.02733.i161.epil
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i160.epil
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !45
  %i.gm = add nuw nsw i32 %i.gh, %.02733.i161.epil ; 2 uses
  %indvars.iv.next.i162.epil = add nuw nsw i64 %indvars.iv.i160.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %wide.trip.count.i159
  br i1 %epil.iter.cmp.not, label %.preheader31.i151, label %bb.o, !llvm.loop !92

.preheader31.i151:                                ; preds = %bb.o, %bb.n
  %.pre-phi = phi i64 [ 0, %bb.n ], [ %wide.trip.count.i159, %bb.o ] ; 2 uses
  %.027.lcssa.i153 = phi i32 [ 0, %bb.n ], [ %i.gm, %bb.o ]
  %i.gn = shl nsw i32 -1, %.zext
  %i.go = xor i32 %i.gn, -1
  %3 = and i64 %.pre-phi, 3                       ; 2 uses
  %lcmp.mod1024.not = icmp eq i64 %3, 3
  br i1 %lcmp.mod1024.not, label %Abc_ResStartPart.exit164, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader31.i151, %.prol.preheader
  %indvars.iv40.i154.prol = phi i64 [ %indvars.iv.next41.i156.prol, %.prol.preheader ], [ %.pre-phi, %.preheader31.i151 ] ; 2 uses
  %.136.i155.prol = phi i32 [ %4, %.prol.preheader ], [ %.027.lcssa.i153, %.preheader31.i151 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader31.i151 ]
  %i.gp = shl i32 %i.go, %.136.i155.prol
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv40.i154.prol
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !45
  %4 = add nsw i32 %.136.i155.prol, %.zext
  %indvars.iv.next41.i156.prol = add nuw nsw i64 %indvars.iv40.i154.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %5 = xor i64 %3, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i64 %5, 3
  br i1 %prol.iter.cmp.not, label %Abc_ResStartPart.exit164, label %.prol.preheader, !llvm.loop !93

Abc_ResStartPart.exit164:                         ; preds = %.preheader31.i151, %.prol.preheader
  call void @Abc_ResPrint(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.k, i32 noundef 3)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 22 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 24 uses
  br label %bb.p

bb.p:                                             ; preds = %Abc_ResStartPart.exit164, %bb.al
  %.1128849 = phi i32 [ 0, %Abc_ResStartPart.exit164 ], [ %i.vs, %bb.al ] ; 2 uses
  %.not133 = icmp eq i32 %.1128849, 0
  br i1 %.not133, label %.preheader1002, label %bb.q

bb.q:                                             ; preds = %bb.p
  %puts134 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %.outer.split.us.us.i165

.outer.split.us.us.i165:                          ; preds = %.split.us.us.split.us.us.i179, %bb.q
  %.029.ph67.us.us.i166 = phi i32 [ %i.hv, %.split.us.us.split.us.us.i179 ], [ 0, %bb.q ]
  br label %.preheader33.us.us.us.us.i167

.preheader33.us.us.us.us.i167:                    ; preds = %.preheader33.us.us.us.us.i167.backedge, %.outer.split.us.us.i165
  %i.gt = call i32 @rand() #21
  %i.gu = srem i32 %i.gt, %2                      ; 2 uses
  %i.gv = call i32 @rand() #21
  %i.gw = srem i32 %i.gv, %2                      ; 2 uses
  %i.gx = icmp eq i32 %i.gu, %i.gw
  br i1 %i.gx, label %.preheader33.us.us.us.us.i167.backedge, label %.preheader.us.us.us.us.i168

.preheader33.us.us.us.us.i167.backedge:           ; preds = %.preheader33.us.us.us.us.i167, %._crit_edge40.us.us.us.us.i177
  br label %.preheader33.us.us.us.us.i167, !llvm.loop !6

.preheader.us.us.us.us.i168:                      ; preds = %.preheader33.us.us.us.us.i167
  %i.gy = shl nuw nsw i32 1, %i.gu                ; 4 uses
  %i.gz = load i32, ptr %i.k, align 16, !tbaa !45 ; 2 uses
  %i.ha = and i32 %i.gz, %i.gy
  %.not.us.us.us.us.i170 = icmp eq i32 %i.ha, 0
  br i1 %.not.us.us.us.us.i170, label %bb.r, label %.lr.ph39.us.us.us.us.i172

bb.r:                                             ; preds = %.preheader.us.us.us.us.i168
  %i.hb = load i32, ptr %i.gr, align 4, !tbaa !45
  %i.hc = and i32 %i.hb, %i.gy
  %.not.us.us.us.us.i170.1 = icmp eq i32 %i.hc, 0
  br i1 %.not.us.us.us.us.i170.1, label %bb.s, label %.lr.ph39.us.us.us.us.i172

bb.s:                                             ; preds = %bb.r
  %i.hd = load i32, ptr %i.gs, align 8, !tbaa !45
  %i.he = and i32 %i.hd, %i.gy
  %.not.us.us.us.us.i170.2 = icmp eq i32 %i.he, 0
  %spec.select962 = select i1 %.not.us.us.us.us.i170.2, i32 3, i32 2
  br label %.lr.ph39.us.us.us.us.i172

.lr.ph39.us.us.us.us.i172:                        ; preds = %bb.s, %.preheader.us.us.us.us.i168, %bb.r
  %.028.lcssa.us.us.us.us.i173 = phi i32 [ %spec.select962, %bb.s ], [ 0, %.preheader.us.us.us.us.i168 ], [ 1, %bb.r ] ; 2 uses
  %i.hf = shl nuw nsw i32 1, %i.gw                ; 4 uses
  %i.hg = and i32 %i.gz, %i.hf
  %.not32.us.us.us.us.i175 = icmp eq i32 %i.hg, 0
  br i1 %.not32.us.us.us.us.i175, label %bb.t, label %._crit_edge40.us.us.us.us.i177

bb.t:                                             ; preds = %.lr.ph39.us.us.us.us.i172
  %i.hh = load i32, ptr %i.gr, align 4, !tbaa !45
  %i.hi = and i32 %i.hh, %i.hf
  %.not32.us.us.us.us.i175.1 = icmp eq i32 %i.hi, 0
  br i1 %.not32.us.us.us.us.i175.1, label %bb.u, label %._crit_edge40.us.us.us.us.i177

bb.u:                                             ; preds = %bb.t
  %i.hj = load i32, ptr %i.gs, align 8, !tbaa !45
  %i.hk = and i32 %i.hj, %i.hf
  %.not32.us.us.us.us.i175.2 = icmp eq i32 %i.hk, 0
  %spec.select963 = select i1 %.not32.us.us.us.us.i175.2, i32 3, i32 2
  br label %._crit_edge40.us.us.us.us.i177

._crit_edge40.us.us.us.us.i177:                   ; preds = %bb.u, %.lr.ph39.us.us.us.us.i172, %bb.t
  %.0.lcssa.us.us.us.us.i178 = phi i32 [ %spec.select963, %bb.u ], [ 0, %.lr.ph39.us.us.us.us.i172 ], [ 1, %bb.t ] ; 2 uses
  %i.hl = icmp eq i32 %.028.lcssa.us.us.us.us.i173, %.0.lcssa.us.us.us.us.i178
  br i1 %i.hl, label %.preheader33.us.us.us.us.i167.backedge, label %.split.us.us.split.us.us.i179

.split.us.us.split.us.us.i179:                    ; preds = %._crit_edge40.us.us.us.us.i177
  %i.hm = or i32 %i.hf, %i.gy                     ; 2 uses
  %i.hn = zext nneg i32 %.028.lcssa.us.us.us.us.i173 to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.hn ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !45
  %i.hq = xor i32 %i.hp, %i.hm
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !45
  %i.hr = zext nneg i32 %.0.lcssa.us.us.us.us.i178 to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.hr ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !45
  %i.hu = xor i32 %i.ht, %i.hm
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !45
  %i.hv = add nuw nsw i32 %.029.ph67.us.us.i166, 1 ; 2 uses
  %exitcond80.not.i180 = icmp eq i32 %i.hv, 20
  br i1 %exitcond80.not.i180, label %Abc_ResSwapRandom.exit185, label %.outer.split.us.us.i165, !llvm.loop !6

Abc_ResSwapRandom.exit185:                        ; preds = %.split.us.us.split.us.us.i179
  call void @Abc_ResPrint(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.k, i32 noundef 3)
  br label %.preheader1002

.preheader1002:                                   ; preds = %Abc_ResSwapRandom.exit185, %bb.p
  br label %bb.v

bb.v:                                             ; preds = %.preheader1002, %._crit_edge.us.i375.2
  %i.hw = load i32, ptr %i.k, align 16, !tbaa !45 ; 2 uses
  %i.hx = load i32, ptr %i.gr, align 4, !tbaa !45
  %i.hy = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.hw, ptr noundef null) ; 4 uses
  %i.hz = icmp ult i32 %i.hy, 2
  %i.ia = add i32 %i.hy, -1
  %i.ib = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ia, i1 true)
  %i.ic = sub nuw nsw i32 32, %i.ib
  %.09.i.i.i186 = select i1 %i.hz, i32 %i.hy, i32 %i.ic ; 2 uses
  %i.id = add nsw i32 %.09.i.i.i186, -1
  %.neg.i.i187 = shl nsw i32 -1, %i.id
  %i.ie = add i32 %.neg.i.i187, %i.hy             ; 2 uses
  %i.if = mul nsw i32 %i.ie, %i.ie
  %i.ig = load i32, ptr %i.gr, align 4, !tbaa !45
  %i.ih = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.ig, ptr noundef null) ; 4 uses
  %i.ii = icmp ult i32 %i.ih, 2
  %i.ij = add i32 %i.ih, -1
  %i.ik = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ij, i1 true)
  %i.il = sub nuw nsw i32 32, %i.ik
  %.09.i.i65.i188 = select i1 %i.ii, i32 %i.ih, i32 %i.il ; 2 uses
  %i.im = add nsw i32 %.09.i.i65.i188, -1
  %.neg.i66.i189 = shl nsw i32 -1, %i.im
  %i.in = add i32 %.neg.i66.i189, %i.ih           ; 2 uses
  %i.io = mul nsw i32 %i.in, %i.in
  %reass.add.i190 = add i32 %.09.i.i65.i188, %.09.i.i.i186
  %reass.mul.i191 = mul i32 %reass.add.i190, 10000
  %i.ip = add i32 %reass.mul.i191, %i.if
  %i.iq = add i32 %i.ip, %i.io
  %.pre892 = load i32, ptr %i.k, align 16, !tbaa !45
  br label %.lr.ph84.split.us.i195

.lr.ph84.split.us.i195:                           ; preds = %bb.v, %..loopexit_crit_edge.us.i224
  %i.ir = phi i32 [ %i.kc, %..loopexit_crit_edge.us.i224 ], [ %.pre892, %bb.v ] ; 3 uses
  %.083.us.i196 = phi i32 [ %.4.us.i227, %..loopexit_crit_edge.us.i224 ], [ 0, %bb.v ] ; 2 uses
  %.06281.us.i197 = phi i32 [ %i.kd, %..loopexit_crit_edge.us.i224 ], [ 0, %bb.v ] ; 3 uses
  %.sroa.0.080.us.i198 = phi i32 [ %.sroa.0.4.us.i226, %..loopexit_crit_edge.us.i224 ], [ %i.hw, %bb.v ] ; 2 uses
  %.sroa.5.079.us.i199 = phi i32 [ %.sroa.5.4.us.i225, %..loopexit_crit_edge.us.i224 ], [ %i.hx, %bb.v ] ; 2 uses
  %i.is = shl nuw i32 1, %.06281.us.i197          ; 2 uses
  %i.it = and i32 %i.ir, %i.is
  %.not.us.i200 = icmp eq i32 %i.it, 0
  br i1 %.not.us.i200, label %..loopexit_crit_edge.us.i224, label %.preheader.us.preheader.i201

.preheader.us.preheader.i201:                     ; preds = %.lr.ph84.split.us.i195
  %.pre.i202 = load i32, ptr %i.gr, align 4, !tbaa !45
  br label %.preheader.us.i203

.preheader.us.i203:                               ; preds = %bb.x, %.preheader.us.preheader.i201
  %i.iu = phi i32 [ %i.jz, %bb.x ], [ %i.ir, %.preheader.us.preheader.i201 ] ; 2 uses
  %i.iv = phi i32 [ %i.ka, %bb.x ], [ %.pre.i202, %.preheader.us.preheader.i201 ] ; 3 uses
  %.176.us.i204 = phi i32 [ %.3.us.i222, %bb.x ], [ %.083.us.i196, %.preheader.us.preheader.i201 ] ; 2 uses
  %.06175.us.i205 = phi i32 [ %i.kb, %bb.x ], [ 0, %.preheader.us.preheader.i201 ] ; 3 uses
  %.sroa.0.174.us.i206 = phi i32 [ %.sroa.0.3.us.i221, %bb.x ], [ %.sroa.0.080.us.i198, %.preheader.us.preheader.i201 ] ; 2 uses
  %.sroa.5.173.us.i207 = phi i32 [ %.sroa.5.3.us.i220, %bb.x ], [ %.sroa.5.079.us.i199, %.preheader.us.preheader.i201 ] ; 2 uses
  %i.iw = shl nuw i32 1, %.06175.us.i205          ; 2 uses
  %i.ix = and i32 %i.iw, %i.iv
  %.not64.us.i208 = icmp eq i32 %i.ix, 0
  %i.iy = icmp eq i32 %.06281.us.i197, %.06175.us.i205
  %or.cond.us.i209 = or i1 %i.iy, %.not64.us.i208
  br i1 %or.cond.us.i209, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader.us.i203
  %i.iz = or i32 %i.iw, %i.is                     ; 4 uses
  %i.ja = xor i32 %i.iu, %i.iz                    ; 2 uses
  store i32 %i.ja, ptr %i.k, align 16, !tbaa !45
  %i.jb = xor i32 %i.iv, %i.iz
  store i32 %i.jb, ptr %i.gr, align 4, !tbaa !45
  %i.jc = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.ja, ptr noundef null) ; 4 uses
  %i.jd = icmp ult i32 %i.jc, 2
  %i.je = add i32 %i.jc, -1
  %i.jf = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.je, i1 true)
  %i.jg = sub nuw nsw i32 32, %i.jf
  %.09.i.i67.us.i210 = select i1 %i.jd, i32 %i.jc, i32 %i.jg ; 2 uses
  %i.jh = add nsw i32 %.09.i.i67.us.i210, -1
  %.neg.i68.us.i211 = shl nsw i32 -1, %i.jh
  %i.ji = add i32 %.neg.i68.us.i211, %i.jc        ; 2 uses
  %i.jj = mul nsw i32 %i.ji, %i.ji
  %i.jk = load i32, ptr %i.gr, align 4, !tbaa !45
  %i.jl = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.jk, ptr noundef null) ; 4 uses
  %i.jm = icmp ult i32 %i.jl, 2
  %i.jn = add i32 %i.jl, -1
  %i.jo = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jn, i1 true)
  %i.jp = sub nuw nsw i32 32, %i.jo
  %.09.i.i69.us.i212 = select i1 %i.jm, i32 %i.jl, i32 %i.jp ; 2 uses
  %i.jq = add nsw i32 %.09.i.i69.us.i212, -1
  %.neg.i70.us.i213 = shl nsw i32 -1, %i.jq
  %i.jr = add i32 %.neg.i70.us.i213, %i.jl        ; 2 uses
  %i.js = mul nsw i32 %i.jr, %i.jr
  %reass.add71.us.i214 = add i32 %.09.i.i69.us.i212, %.09.i.i67.us.i210
  %reass.mul72.us.i215 = mul i32 %reass.add71.us.i214, 10000
  %i.jt = add i32 %reass.mul72.us.i215, %i.jj
  %i.ju = add i32 %i.jt, %i.js
  %i.jv = icmp slt i32 %i.ju, %i.iq               ; 3 uses
  %.pre91.i216 = load i32, ptr %i.k, align 16, !tbaa !45 ; 2 uses
  %i.jw = load i32, ptr %i.gr, align 4            ; 2 uses
  %.sroa.5.2.us.i217 = select i1 %i.jv, i32 %i.jw, i32 %.sroa.5.173.us.i207
  %.sroa.0.2.us.i218 = select i1 %i.jv, i32 %.pre91.i216, i32 %.sroa.0.174.us.i206
  %.2.us.i219 = select i1 %i.jv, i32 1, i32 %.176.us.i204
  %i.jx = xor i32 %.pre91.i216, %i.iz             ; 2 uses
  store i32 %i.jx, ptr %i.k, align 16, !tbaa !45
  %i.jy = xor i32 %i.jw, %i.iz                    ; 2 uses
  store i32 %i.jy, ptr %i.gr, align 4, !tbaa !45
  br label %bb.x

end_hunk_0
begin_hunk_1_@Abc_ResPartition:bb.a
  %i.rt = add i32 %reass.mul.i321, %i.rj
  %i.ru = add i32 %i.rt, %i.rs
  %.pre894 = load i32, ptr %i.gr, align 4, !tbaa !45
  br label %.lr.ph84.split.us.i325

.lr.ph84.split.us.i325:                           ; preds = %._crit_edge.us.i310.2, %..loopexit_crit_edge.us.i354
  %i.rv = phi i32 [ %i.tg, %..loopexit_crit_edge.us.i354 ], [ %.pre894, %._crit_edge.us.i310.2 ] ; 3 uses
  %.083.us.i326 = phi i32 [ %.4.us.i357, %..loopexit_crit_edge.us.i354 ], [ 0, %._crit_edge.us.i310.2 ] ; 2 uses
  %.06281.us.i327 = phi i32 [ %i.th, %..loopexit_crit_edge.us.i354 ], [ 0, %._crit_edge.us.i310.2 ] ; 3 uses
  %.sroa.0.080.us.i328 = phi i32 [ %.sroa.0.4.us.i356, %..loopexit_crit_edge.us.i354 ], [ %i.ra, %._crit_edge.us.i310.2 ] ; 2 uses
  %.sroa.5.079.us.i329 = phi i32 [ %.sroa.5.4.us.i355, %..loopexit_crit_edge.us.i354 ], [ %i.rb, %._crit_edge.us.i310.2 ] ; 2 uses
  %i.rw = shl nuw i32 1, %.06281.us.i327          ; 2 uses
  %i.rx = and i32 %i.rv, %i.rw
  %.not.us.i330 = icmp eq i32 %i.rx, 0
  br i1 %.not.us.i330, label %..loopexit_crit_edge.us.i354, label %.preheader.us.preheader.i331

.preheader.us.preheader.i331:                     ; preds = %.lr.ph84.split.us.i325
  %.pre.i332 = load i32, ptr %i.gs, align 8, !tbaa !45
  br label %.preheader.us.i333

.preheader.us.i333:                               ; preds = %bb.ah, %.preheader.us.preheader.i331
  %i.ry = phi i32 [ %i.td, %bb.ah ], [ %i.rv, %.preheader.us.preheader.i331 ] ; 2 uses
  %i.rz = phi i32 [ %i.te, %bb.ah ], [ %.pre.i332, %.preheader.us.preheader.i331 ] ; 3 uses
  %.176.us.i334 = phi i32 [ %.3.us.i352, %bb.ah ], [ %.083.us.i326, %.preheader.us.preheader.i331 ] ; 2 uses
  %.06175.us.i335 = phi i32 [ %i.tf, %bb.ah ], [ 0, %.preheader.us.preheader.i331 ] ; 3 uses
  %.sroa.0.174.us.i336 = phi i32 [ %.sroa.0.3.us.i351, %bb.ah ], [ %.sroa.0.080.us.i328, %.preheader.us.preheader.i331 ] ; 2 uses
  %.sroa.5.173.us.i337 = phi i32 [ %.sroa.5.3.us.i350, %bb.ah ], [ %.sroa.5.079.us.i329, %.preheader.us.preheader.i331 ] ; 2 uses
  %i.sa = shl nuw i32 1, %.06175.us.i335          ; 2 uses
  %i.sb = and i32 %i.sa, %i.rz
  %.not64.us.i338 = icmp eq i32 %i.sb, 0
  %i.sc = icmp eq i32 %.06281.us.i327, %.06175.us.i335
  %or.cond.us.i339 = or i1 %i.sc, %.not64.us.i338
  br i1 %or.cond.us.i339, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.preheader.us.i333
  %i.sd = or i32 %i.sa, %i.rw                     ; 4 uses
  %i.se = xor i32 %i.ry, %i.sd                    ; 2 uses
  store i32 %i.se, ptr %i.gr, align 4, !tbaa !45
  %i.sf = xor i32 %i.rz, %i.sd
  store i32 %i.sf, ptr %i.gs, align 8, !tbaa !45
  %i.sg = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.se, ptr noundef null) ; 4 uses
  %i.sh = icmp ult i32 %i.sg, 2
  %i.si = add i32 %i.sg, -1
  %i.sj = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.si, i1 true)
  %i.sk = sub nuw nsw i32 32, %i.sj
  %.09.i.i67.us.i340 = select i1 %i.sh, i32 %i.sg, i32 %i.sk ; 2 uses
  %i.sl = add nsw i32 %.09.i.i67.us.i340, -1
  %.neg.i68.us.i341 = shl nsw i32 -1, %i.sl
  %i.sm = add i32 %.neg.i68.us.i341, %i.sg        ; 2 uses
  %i.sn = mul nsw i32 %i.sm, %i.sm
  %i.so = load i32, ptr %i.gs, align 8, !tbaa !45
  %i.sp = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.so, ptr noundef null) ; 4 uses
  %i.sq = icmp ult i32 %i.sp, 2
  %i.sr = add i32 %i.sp, -1
  %i.ss = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sr, i1 true)
  %i.st = sub nuw nsw i32 32, %i.ss
  %.09.i.i69.us.i342 = select i1 %i.sq, i32 %i.sp, i32 %i.st ; 2 uses
  %i.su = add nsw i32 %.09.i.i69.us.i342, -1
  %.neg.i70.us.i343 = shl nsw i32 -1, %i.su
  %i.sv = add i32 %.neg.i70.us.i343, %i.sp        ; 2 uses
  %i.sw = mul nsw i32 %i.sv, %i.sv
  %reass.add71.us.i344 = add i32 %.09.i.i69.us.i342, %.09.i.i67.us.i340
  %reass.mul72.us.i345 = mul i32 %reass.add71.us.i344, 10000
  %i.sx = add i32 %reass.mul72.us.i345, %i.sn
  %i.sy = add i32 %i.sx, %i.sw
  %i.sz = icmp slt i32 %i.sy, %i.ru               ; 3 uses
  %.pre91.i346 = load i32, ptr %i.gr, align 4, !tbaa !45 ; 2 uses
  %i.ta = load i32, ptr %i.gs, align 8            ; 2 uses
  %.sroa.5.2.us.i347 = select i1 %i.sz, i32 %i.ta, i32 %.sroa.5.173.us.i337
  %.sroa.0.2.us.i348 = select i1 %i.sz, i32 %.pre91.i346, i32 %.sroa.0.174.us.i336
  %.2.us.i349 = select i1 %i.sz, i32 1, i32 %.176.us.i334
  %i.tb = xor i32 %.pre91.i346, %i.sd             ; 2 uses
  store i32 %i.tb, ptr %i.gr, align 4, !tbaa !45
  %i.tc = xor i32 %i.ta, %i.sd                    ; 2 uses
  store i32 %i.tc, ptr %i.gs, align 8, !tbaa !45
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.preheader.us.i333
  %i.td = phi i32 [ %i.ry, %.preheader.us.i333 ], [ %i.tb, %bb.ag ] ; 2 uses
  %i.te = phi i32 [ %i.rz, %.preheader.us.i333 ], [ %i.tc, %bb.ag ]
  %.sroa.5.3.us.i350 = phi i32 [ %.sroa.5.173.us.i337, %.preheader.us.i333 ], [ %.sroa.5.2.us.i347, %bb.ag ] ; 2 uses
  %.sroa.0.3.us.i351 = phi i32 [ %.sroa.0.174.us.i336, %.preheader.us.i333 ], [ %.sroa.0.2.us.i348, %bb.ag ] ; 2 uses
  %.3.us.i352 = phi i32 [ %.176.us.i334, %.preheader.us.i333 ], [ %.2.us.i349, %bb.ag ] ; 2 uses
  %i.tf = add nuw nsw i32 %.06175.us.i335, 1      ; 2 uses
  %exitcond.not.i353 = icmp eq i32 %i.tf, %2
  br i1 %exitcond.not.i353, label %..loopexit_crit_edge.us.i354, label %.preheader.us.i333, !llvm.loop !3

..loopexit_crit_edge.us.i354:                     ; preds = %bb.ah, %.lr.ph84.split.us.i325
  %i.tg = phi i32 [ %i.rv, %.lr.ph84.split.us.i325 ], [ %i.td, %bb.ah ]
  %.sroa.5.4.us.i355 = phi i32 [ %.sroa.5.079.us.i329, %.lr.ph84.split.us.i325 ], [ %.sroa.5.3.us.i350, %bb.ah ] ; 2 uses
  %.sroa.0.4.us.i356 = phi i32 [ %.sroa.0.080.us.i328, %.lr.ph84.split.us.i325 ], [ %.sroa.0.3.us.i351, %bb.ah ] ; 2 uses
  %.4.us.i357 = phi i32 [ %.083.us.i326, %.lr.ph84.split.us.i325 ], [ %.3.us.i352, %bb.ah ] ; 2 uses
  %i.th = add nuw nsw i32 %.06281.us.i327, 1      ; 2 uses
  %exitcond90.not.i358 = icmp eq i32 %i.th, %2
  br i1 %exitcond90.not.i358, label %Abc_ResMigrate.exit359, label %.lr.ph84.split.us.i325, !llvm.loop !4

Abc_ResMigrate.exit359:                           ; preds = %..loopexit_crit_edge.us.i354
  store i32 %.sroa.0.4.us.i356, ptr %i.gr, align 4, !tbaa !45
  store i32 %.sroa.5.4.us.i355, ptr %i.gs, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  %i.ti = load i32, ptr %i.k, align 16, !tbaa !45
  %i.tj = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.ti, ptr noundef nonnull %i.g) ; 5 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %Abc_ResMigrate.exit359
  %.01719.us.i371 = phi i32 [ 0, %Abc_ResMigrate.exit359 ], [ %i.tp, %bb.ai ] ; 3 uses
  %i.tk = load i32, ptr %i.k, align 16, !tbaa !45
  %i.tl = shl nuw i32 1, %.01719.us.i371
  %i.tm = and i32 %i.tk, %i.tl
  %.not.us.i372 = icmp eq i32 %i.tm, 0
  %i.tn = add nuw nsw i32 %.01719.us.i371, 97
  %i.to = select i1 %.not.us.i372, i32 45, i32 %i.tn
  %putchar.us.i373 = call i32 @putchar(i32 %i.to) ; 0 uses
  %i.tp = add nuw nsw i32 %.01719.us.i371, 1      ; 2 uses
  %exitcond28.not.i374 = icmp eq i32 %i.tp, %2
  br i1 %exitcond28.not.i374, label %._crit_edge.us.i375, label %bb.ai, !llvm.loop !5

._crit_edge.us.i375:                              ; preds = %bb.ai
  %i.tq = icmp ult i32 %i.tj, 2
  %i.tr = add i32 %i.tj, -1
  %i.ts = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.tr, i1 true)
  %i.tt = sub nuw nsw i32 32, %i.ts
  %.09.i.i.us.i376 = select i1 %i.tq, i32 %i.tj, i32 %i.tt ; 3 uses
  %i.tu = mul nsw i32 %.09.i.i.us.i376, 10000
  %i.tv = add nsw i32 %.09.i.i.us.i376, -1
  %.neg.i.us.i377 = shl nsw i32 -1, %i.tv
  %i.tw = add i32 %.neg.i.us.i377, %i.tj          ; 2 uses
  %i.tx = mul nsw i32 %i.tw, %i.tw
  %i.ty = add nsw i32 %i.tx, %i.tu                ; 2 uses
  %i.tz = load i32, ptr %i.g, align 4, !tbaa !45
  %i.ua = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.tj, i32 noundef %.09.i.i.us.i376, i32 noundef %i.tz, i32 noundef %i.ty) ; 0 uses
  %i.ub = load i32, ptr %i.gr, align 4, !tbaa !45
  %i.uc = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.ub, ptr noundef nonnull %i.g) ; 5 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %._crit_edge.us.i375
  %.01719.us.i371.1 = phi i32 [ 0, %._crit_edge.us.i375 ], [ %i.ui, %bb.aj ] ; 3 uses
  %i.ud = load i32, ptr %i.gr, align 4, !tbaa !45
  %i.ue = shl nuw i32 1, %.01719.us.i371.1
  %i.uf = and i32 %i.ud, %i.ue
  %.not.us.i372.1 = icmp eq i32 %i.uf, 0
  %i.ug = add nuw nsw i32 %.01719.us.i371.1, 97
  %i.uh = select i1 %.not.us.i372.1, i32 45, i32 %i.ug
  %putchar.us.i373.1 = call i32 @putchar(i32 %i.uh) ; 0 uses
  %i.ui = add nuw nsw i32 %.01719.us.i371.1, 1    ; 2 uses
  %exitcond28.not.i374.1 = icmp eq i32 %i.ui, %2
  br i1 %exitcond28.not.i374.1, label %._crit_edge.us.i375.1, label %bb.aj, !llvm.loop !5

._crit_edge.us.i375.1:                            ; preds = %bb.aj
  %i.uj = icmp ult i32 %i.uc, 2
  %i.uk = add i32 %i.uc, -1
  %i.ul = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.uk, i1 true)
  %i.um = sub nuw nsw i32 32, %i.ul
  %.09.i.i.us.i376.1 = select i1 %i.uj, i32 %i.uc, i32 %i.um ; 3 uses
  %i.un = mul nsw i32 %.09.i.i.us.i376.1, 10000
  %i.uo = add nsw i32 %.09.i.i.us.i376.1, -1
  %.neg.i.us.i377.1 = shl nsw i32 -1, %i.uo
  %i.up = add i32 %.neg.i.us.i377.1, %i.uc        ; 2 uses
  %i.uq = mul nsw i32 %i.up, %i.up
  %i.ur = add nsw i32 %i.uq, %i.un                ; 2 uses
  %i.us = load i32, ptr %i.g, align 4, !tbaa !45
  %i.ut = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.uc, i32 noundef %.09.i.i.us.i376.1, i32 noundef %i.us, i32 noundef %i.ur) ; 0 uses
  %i.uu = load i32, ptr %i.gs, align 8, !tbaa !45
  %i.uv = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.uu, ptr noundef nonnull %i.g) ; 5 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %._crit_edge.us.i375.1
  %.01719.us.i371.2 = phi i32 [ 0, %._crit_edge.us.i375.1 ], [ %i.vb, %bb.ak ] ; 3 uses
  %i.uw = load i32, ptr %i.gs, align 8, !tbaa !45
  %i.ux = shl nuw i32 1, %.01719.us.i371.2
  %i.uy = and i32 %i.uw, %i.ux
  %.not.us.i372.2 = icmp eq i32 %i.uy, 0
  %i.uz = add nuw nsw i32 %.01719.us.i371.2, 97
  %i.va = select i1 %.not.us.i372.2, i32 45, i32 %i.uz
  %putchar.us.i373.2 = call i32 @putchar(i32 %i.va) ; 0 uses
  %i.vb = add nuw nsw i32 %.01719.us.i371.2, 1    ; 2 uses
  %exitcond28.not.i374.2 = icmp eq i32 %i.vb, %2
  br i1 %exitcond28.not.i374.2, label %._crit_edge.us.i375.2, label %bb.ak, !llvm.loop !5

._crit_edge.us.i375.2:                            ; preds = %bb.ak
  %i.vc = add nsw i32 %i.ur, %i.ty
  %i.vd = icmp ult i32 %i.uv, 2
  %i.ve = add i32 %i.uv, -1
  %i.vf = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ve, i1 true)
  %i.vg = sub nuw nsw i32 32, %i.vf
  %.09.i.i.us.i376.2 = select i1 %i.vd, i32 %i.uv, i32 %i.vg ; 3 uses
  %i.vh = mul nsw i32 %.09.i.i.us.i376.2, 10000
  %i.vi = add nsw i32 %.09.i.i.us.i376.2, -1
  %.neg.i.us.i377.2 = shl nsw i32 -1, %i.vi
  %i.vj = add i32 %.neg.i.us.i377.2, %i.uv        ; 2 uses
  %i.vk = mul nsw i32 %i.vj, %i.vj
  %i.vl = add nsw i32 %i.vk, %i.vh                ; 2 uses
  %i.vm = add nsw i32 %i.vl, %i.vc
  %i.vn = load i32, ptr %i.g, align 4, !tbaa !45
  %i.vo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.uv, i32 noundef %.09.i.i.us.i376.2, i32 noundef %i.vn, i32 noundef %i.vl) ; 0 uses
  %i.vp = or i32 %.4.us.i292, %.4.us.i227
  %i.vq = or i32 %i.vp, %.4.us.i357
  %i.vr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.vm) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  %.not135 = icmp eq i32 %i.vq, 0
  br i1 %.not135, label %bb.al, label %bb.v, !llvm.loop !94

bb.al:                                            ; preds = %._crit_edge.us.i375.2
  %i.vs = add nuw nsw i32 %.1128849, 1            ; 2 uses
  %exitcond885.not = icmp eq i32 %i.vs, 5
  br i1 %exitcond885.not, label %.loopexit, label %bb.p, !llvm.loop !95

bb.am:                                            ; preds = %bb.m
  %i.vt = icmp samesign ult i32 %2, 25
  br i1 %i.vt, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %.zext809 = lshr i32 %2, 2                      ; 6 uses
  %.zext811 = and i32 %2, 3                       ; 4 uses
  %.not812 = icmp eq i32 %.zext811, 0
  br i1 %.not812, label %.preheader31.i381, label %.lr.ph.i388

.lr.ph.i388:                                      ; preds = %bb.an
  %i.vu = add nuw nsw i32 %.zext809, 1            ; 4 uses
  %i.vv = shl nsw i32 -2, %.zext809
  %i.vw = xor i32 %i.vv, -1                       ; 3 uses
  %wide.trip.count.i389 = zext nneg i32 %.zext811 to i64 ; 3 uses
  store i32 %i.vw, ptr %i.k, align 16, !tbaa !45
  %exitcond.not.i393 = icmp eq i32 %.zext811, 1
  br i1 %exitcond.not.i393, label %.preheader31.i381, label %bb.ao

.preheader31.i381:                                ; preds = %.lr.ph.i388, %bb.ao, %bb.ap, %bb.an
  %.pre-phi898 = phi i64 [ 0, %bb.an ], [ %wide.trip.count.i389, %bb.ap ], [ %wide.trip.count.i389, %bb.ao ], [ %wide.trip.count.i389, %.lr.ph.i388 ] ; 4 uses
  %.027.lcssa.i383 = phi i32 [ 0, %bb.an ], [ %i.vu, %.lr.ph.i388 ], [ %i.wd, %bb.ao ], [ %i.wg, %bb.ap ] ; 2 uses
  %i.vx = shl nsw i32 -1, %.zext809
  %i.vy = xor i32 %i.vx, -1                       ; 4 uses
  %i.vz = shl i32 %i.vy, %.027.lcssa.i383
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.pre-phi898
  store i32 %i.vz, ptr %i.wa, align 4, !tbaa !45
  %indvars.iv.next41.i386 = add nuw nsw i64 %.pre-phi898, 1 ; 2 uses
  %exitcond44.not.i387 = icmp eq i64 %indvars.iv.next41.i386, 4
  br i1 %exitcond44.not.i387, label %Abc_ResStartPart.exit394, label %bb.aq

bb.ao:                                            ; preds = %.lr.ph.i388
  %i.wb = shl nuw nsw i32 %i.vw, %i.vu
  %i.wc = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.wb, ptr %i.wc, align 4, !tbaa !45
  %i.wd = shl nuw nsw i32 %i.vu, 1                ; 2 uses
  %exitcond.not.i393.1 = icmp eq i32 %.zext811, 2
  br i1 %exitcond.not.i393.1, label %.preheader31.i381, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.we = shl i32 %i.vw, %i.wd
  %i.wf = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %i.we, ptr %i.wf, align 8, !tbaa !45
  %i.wg = mul nuw nsw i32 %i.vu, 3
  br label %.preheader31.i381

bb.aq:                                            ; preds = %.preheader31.i381
  %i.wh = add nsw i32 %.027.lcssa.i383, %.zext809 ; 2 uses
  %i.wi = shl i32 %i.vy, %i.wh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next41.i386
  store i32 %i.wi, ptr %i.wj, align 4, !tbaa !45
  %indvars.iv.next41.i386.1 = add nuw nsw i64 %.pre-phi898, 2 ; 2 uses
  %exitcond44.not.i387.1 = icmp eq i64 %indvars.iv.next41.i386.1, 4
  br i1 %exitcond44.not.i387.1, label %Abc_ResStartPart.exit394, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.wk = add nsw i32 %i.wh, %.zext809            ; 2 uses
  %i.wl = shl i32 %i.vy, %i.wk
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next41.i386.1
  store i32 %i.wl, ptr %i.wm, align 4, !tbaa !45
  %indvars.iv.next41.i386.2 = add nuw nsw i64 %.pre-phi898, 3 ; 2 uses
  %exitcond44.not.i387.2 = icmp eq i64 %indvars.iv.next41.i386.2, 4
  br i1 %exitcond44.not.i387.2, label %Abc_ResStartPart.exit394, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.wn = add nsw i32 %i.wk, %.zext809
  %i.wo = shl i32 %i.vy, %i.wn
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next41.i386.2
  store i32 %i.wo, ptr %i.wp, align 4, !tbaa !45
  br label %Abc_ResStartPart.exit394

Abc_ResStartPart.exit394:                         ; preds = %bb.as, %bb.ar, %bb.aq, %.preheader31.i381
  call void @Abc_ResPrint(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.k, i32 noundef 4)
  %i.wq = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 34 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 36 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 38 uses
  br label %bb.at

bb.at:                                            ; preds = %Abc_ResStartPart.exit394, %bb.cm
  %.2129848 = phi i32 [ 0, %Abc_ResStartPart.exit394 ], [ %i.bek, %bb.cm ] ; 2 uses
  %.not = icmp eq i32 %.2129848, 0
  br i1 %.not, label %.preheader1010, label %bb.au

bb.au:                                            ; preds = %bb.at
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %.outer.split.us.us.i395

.outer.split.us.us.i395:                          ; preds = %.split.us.us.split.us.us.i409, %bb.au
  %.029.ph67.us.us.i396 = phi i32 [ %i.xz, %.split.us.us.split.us.us.i409 ], [ 0, %bb.au ]
  br label %.preheader33.us.us.us.us.i397

.preheader33.us.us.us.us.i397:                    ; preds = %.preheader33.us.us.us.us.i397.backedge, %.outer.split.us.us.i395
  %i.wt = call i32 @rand() #21
  %i.wu = srem i32 %i.wt, %2                      ; 2 uses
  %i.wv = call i32 @rand() #21
  %i.ww = srem i32 %i.wv, %2                      ; 2 uses
  %i.wx = icmp eq i32 %i.wu, %i.ww
  br i1 %i.wx, label %.preheader33.us.us.us.us.i397.backedge, label %.preheader.us.us.us.us.i398

.preheader33.us.us.us.us.i397.backedge:           ; preds = %.preheader33.us.us.us.us.i397, %._crit_edge40.us.us.us.us.i407
  br label %.preheader33.us.us.us.us.i397, !llvm.loop !6

.preheader.us.us.us.us.i398:                      ; preds = %.preheader33.us.us.us.us.i397
  %i.wy = shl nuw nsw i32 1, %i.wu                ; 5 uses
  %i.wz = load i32, ptr %i.k, align 16, !tbaa !45 ; 2 uses
  %i.xa = and i32 %i.wz, %i.wy
  %.not.us.us.us.us.i400 = icmp eq i32 %i.xa, 0
  br i1 %.not.us.us.us.us.i400, label %bb.av, label %.lr.ph39.us.us.us.us.i402

bb.av:                                            ; preds = %.preheader.us.us.us.us.i398
  %i.xb = load i32, ptr %i.wq, align 4, !tbaa !45
  %i.xc = and i32 %i.xb, %i.wy
  %.not.us.us.us.us.i400.1 = icmp eq i32 %i.xc, 0
  br i1 %.not.us.us.us.us.i400.1, label %bb.aw, label %.lr.ph39.us.us.us.us.i402

bb.aw:                                            ; preds = %bb.av
  %i.xd = load i32, ptr %i.wr, align 8, !tbaa !45
  %i.xe = and i32 %i.xd, %i.wy
  %.not.us.us.us.us.i400.2 = icmp eq i32 %i.xe, 0
  br i1 %.not.us.us.us.us.i400.2, label %bb.ax, label %.lr.ph39.us.us.us.us.i402

bb.ax:                                            ; preds = %bb.aw
  %i.xf = load i32, ptr %i.ws, align 4, !tbaa !45
  %i.xg = and i32 %i.xf, %i.wy
  %.not.us.us.us.us.i400.3 = icmp eq i32 %i.xg, 0
  %spec.select964 = select i1 %.not.us.us.us.us.i400.3, i32 4, i32 3
  br label %.lr.ph39.us.us.us.us.i402

.lr.ph39.us.us.us.us.i402:                        ; preds = %bb.ax, %.preheader.us.us.us.us.i398, %bb.av, %bb.aw
  %.028.lcssa.us.us.us.us.i403 = phi i32 [ %spec.select964, %bb.ax ], [ 0, %.preheader.us.us.us.us.i398 ], [ 1, %bb.av ], [ 2, %bb.aw ] ; 2 uses
  %i.xh = shl nuw nsw i32 1, %i.ww                ; 5 uses
  %i.xi = and i32 %i.wz, %i.xh
  %.not32.us.us.us.us.i405 = icmp eq i32 %i.xi, 0
  br i1 %.not32.us.us.us.us.i405, label %bb.ay, label %._crit_edge40.us.us.us.us.i407

bb.ay:                                            ; preds = %.lr.ph39.us.us.us.us.i402
  %i.xj = load i32, ptr %i.wq, align 4, !tbaa !45
  %i.xk = and i32 %i.xj, %i.xh
  %.not32.us.us.us.us.i405.1 = icmp eq i32 %i.xk, 0
  br i1 %.not32.us.us.us.us.i405.1, label %bb.az, label %._crit_edge40.us.us.us.us.i407

bb.az:                                            ; preds = %bb.ay
  %i.xl = load i32, ptr %i.wr, align 8, !tbaa !45
  %i.xm = and i32 %i.xl, %i.xh
  %.not32.us.us.us.us.i405.2 = icmp eq i32 %i.xm, 0
  br i1 %.not32.us.us.us.us.i405.2, label %bb.ba, label %._crit_edge40.us.us.us.us.i407

bb.ba:                                            ; preds = %bb.az
  %i.xn = load i32, ptr %i.ws, align 4, !tbaa !45
  %i.xo = and i32 %i.xn, %i.xh
  %.not32.us.us.us.us.i405.3 = icmp eq i32 %i.xo, 0
  %spec.select965 = select i1 %.not32.us.us.us.us.i405.3, i32 4, i32 3
  br label %._crit_edge40.us.us.us.us.i407

._crit_edge40.us.us.us.us.i407:                   ; preds = %bb.ba, %.lr.ph39.us.us.us.us.i402, %bb.ay, %bb.az
  %.0.lcssa.us.us.us.us.i408 = phi i32 [ %spec.select965, %bb.ba ], [ 0, %.lr.ph39.us.us.us.us.i402 ], [ 1, %bb.ay ], [ 2, %bb.az ] ; 2 uses
  %i.xp = icmp eq i32 %.028.lcssa.us.us.us.us.i403, %.0.lcssa.us.us.us.us.i408
  br i1 %i.xp, label %.preheader33.us.us.us.us.i397.backedge, label %.split.us.us.split.us.us.i409

.split.us.us.split.us.us.i409:                    ; preds = %._crit_edge40.us.us.us.us.i407
  %i.xq = or i32 %i.xh, %i.wy                     ; 2 uses
  %i.xr = zext nneg i32 %.028.lcssa.us.us.us.us.i403 to i64
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.xr ; 2 uses
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !45
  %i.xu = xor i32 %i.xt, %i.xq
  store i32 %i.xu, ptr %i.xs, align 4, !tbaa !45
  %i.xv = zext nneg i32 %.0.lcssa.us.us.us.us.i408 to i64
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.xv ; 2 uses
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !45
  %i.xy = xor i32 %i.xx, %i.xq
  store i32 %i.xy, ptr %i.xw, align 4, !tbaa !45
  %i.xz = add nuw nsw i32 %.029.ph67.us.us.i396, 1 ; 2 uses
  %exitcond80.not.i410 = icmp eq i32 %i.xz, 20
  br i1 %exitcond80.not.i410, label %Abc_ResSwapRandom.exit415, label %.outer.split.us.us.i395, !llvm.loop !6

Abc_ResSwapRandom.exit415:                        ; preds = %.split.us.us.split.us.us.i409
  call void @Abc_ResPrint(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.k, i32 noundef 4)
  br label %.preheader1010

.preheader1010:                                   ; preds = %Abc_ResSwapRandom.exit415, %bb.at
  br label %bb.bb

bb.bb:                                            ; preds = %.preheader1010, %._crit_edge.us.i800.3
  %i.ya = load i32, ptr %i.k, align 16, !tbaa !45 ; 2 uses
  %i.yb = load i32, ptr %i.wq, align 4, !tbaa !45
  %i.yc = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.ya, ptr noundef null) ; 4 uses
  %i.yd = icmp ult i32 %i.yc, 2
  %i.ye = add i32 %i.yc, -1
  %i.yf = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ye, i1 true)
  %i.yg = sub nuw nsw i32 32, %i.yf
  %.09.i.i.i416 = select i1 %i.yd, i32 %i.yc, i32 %i.yg ; 2 uses
  %i.yh = add nsw i32 %.09.i.i.i416, -1
  %.neg.i.i417 = shl nsw i32 -1, %i.yh
  %i.yi = add i32 %.neg.i.i417, %i.yc             ; 2 uses
  %i.yj = mul nsw i32 %i.yi, %i.yi
  %i.yk = load i32, ptr %i.wq, align 4, !tbaa !45
  %i.yl = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.yk, ptr noundef null) ; 4 uses
  %i.ym = icmp ult i32 %i.yl, 2
  %i.yn = add i32 %i.yl, -1
end_hunk_1
begin_hunk_2_@Abc_ResPartition:bb.a
  %i.azy = or i32 %i.azv, %i.azr                  ; 4 uses
  %i.azz = xor i32 %i.azt, %i.azy                 ; 2 uses
  store i32 %i.azz, ptr %i.wr, align 8, !tbaa !45
  %i.baa = xor i32 %i.azu, %i.azy
  store i32 %i.baa, ptr %i.ws, align 4, !tbaa !45
  %i.bab = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.azz, ptr noundef null) ; 4 uses
  %i.bac = icmp ult i32 %i.bab, 2
  %i.bad = add i32 %i.bab, -1
  %i.bae = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bad, i1 true)
  %i.baf = sub nuw nsw i32 32, %i.bae
  %.09.i.i67.us.i765 = select i1 %i.bac, i32 %i.bab, i32 %i.baf ; 2 uses
  %i.bag = add nsw i32 %.09.i.i67.us.i765, -1
  %.neg.i68.us.i766 = shl nsw i32 -1, %i.bag
  %i.bah = add i32 %.neg.i68.us.i766, %i.bab      ; 2 uses
  %i.bai = mul nsw i32 %i.bah, %i.bah
  %i.baj = load i32, ptr %i.ws, align 4, !tbaa !45
  %i.bak = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.baj, ptr noundef null) ; 4 uses
  %i.bal = icmp ult i32 %i.bak, 2
  %i.bam = add i32 %i.bak, -1
  %i.ban = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bam, i1 true)
  %i.bao = sub nuw nsw i32 32, %i.ban
  %.09.i.i69.us.i767 = select i1 %i.bal, i32 %i.bak, i32 %i.bao ; 2 uses
  %i.bap = add nsw i32 %.09.i.i69.us.i767, -1
  %.neg.i70.us.i768 = shl nsw i32 -1, %i.bap
  %i.baq = add i32 %.neg.i70.us.i768, %i.bak      ; 2 uses
  %i.bar = mul nsw i32 %i.baq, %i.baq
  %reass.add71.us.i769 = add i32 %.09.i.i69.us.i767, %.09.i.i67.us.i765
  %reass.mul72.us.i770 = mul i32 %reass.add71.us.i769, 10000
  %i.bas = add i32 %reass.mul72.us.i770, %i.bai
  %i.bat = add i32 %i.bas, %i.bar
  %i.bau = icmp slt i32 %i.bat, %i.azp            ; 3 uses
  %.pre91.i771 = load i32, ptr %i.wr, align 8, !tbaa !45 ; 2 uses
  %i.bav = load i32, ptr %i.ws, align 4           ; 2 uses
  %.sroa.5.2.us.i772 = select i1 %i.bau, i32 %i.bav, i32 %.sroa.5.173.us.i762
  %.sroa.0.2.us.i773 = select i1 %i.bau, i32 %.pre91.i771, i32 %.sroa.0.174.us.i761
  %.2.us.i774 = select i1 %i.bau, i32 1, i32 %.176.us.i759
  %i.baw = xor i32 %.pre91.i771, %i.azy           ; 2 uses
  store i32 %i.baw, ptr %i.wr, align 8, !tbaa !45
  %i.bax = xor i32 %i.bav, %i.azy                 ; 2 uses
  store i32 %i.bax, ptr %i.ws, align 4, !tbaa !45
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.preheader.us.i758
  %i.bay = phi i32 [ %i.azt, %.preheader.us.i758 ], [ %i.baw, %bb.cg ] ; 2 uses
  %i.baz = phi i32 [ %i.azu, %.preheader.us.i758 ], [ %i.bax, %bb.cg ]
  %.sroa.5.3.us.i775 = phi i32 [ %.sroa.5.173.us.i762, %.preheader.us.i758 ], [ %.sroa.5.2.us.i772, %bb.cg ] ; 2 uses
  %.sroa.0.3.us.i776 = phi i32 [ %.sroa.0.174.us.i761, %.preheader.us.i758 ], [ %.sroa.0.2.us.i773, %bb.cg ] ; 2 uses
  %.3.us.i777 = phi i32 [ %.176.us.i759, %.preheader.us.i758 ], [ %.2.us.i774, %bb.cg ] ; 2 uses
  %i.bba = add nuw nsw i32 %.06175.us.i760, 1     ; 2 uses
  %exitcond.not.i778 = icmp eq i32 %i.bba, %2
  br i1 %exitcond.not.i778, label %..loopexit_crit_edge.us.i779, label %.preheader.us.i758, !llvm.loop !3

..loopexit_crit_edge.us.i779:                     ; preds = %bb.ch, %.lr.ph84.split.us.i750
  %i.bbb = phi i32 [ %i.azq, %.lr.ph84.split.us.i750 ], [ %i.bay, %bb.ch ]
  %.sroa.5.4.us.i780 = phi i32 [ %.sroa.5.079.us.i754, %.lr.ph84.split.us.i750 ], [ %.sroa.5.3.us.i775, %bb.ch ] ; 2 uses
  %.sroa.0.4.us.i781 = phi i32 [ %.sroa.0.080.us.i753, %.lr.ph84.split.us.i750 ], [ %.sroa.0.3.us.i776, %bb.ch ] ; 2 uses
  %.4.us.i782 = phi i32 [ %.083.us.i751, %.lr.ph84.split.us.i750 ], [ %.3.us.i777, %bb.ch ] ; 2 uses
  %i.bbc = add nuw nsw i32 %.06281.us.i752, 1     ; 2 uses
  %exitcond90.not.i783 = icmp eq i32 %i.bbc, %2
  br i1 %exitcond90.not.i783, label %Abc_ResMigrate.exit784, label %.lr.ph84.split.us.i750, !llvm.loop !4

Abc_ResMigrate.exit784:                           ; preds = %..loopexit_crit_edge.us.i779
  store i32 %.sroa.0.4.us.i781, ptr %i.wr, align 8, !tbaa !45
  store i32 %.sroa.5.4.us.i780, ptr %i.ws, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bbd = load i32, ptr %i.k, align 16, !tbaa !45
  %i.bbe = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.bbd, ptr noundef nonnull %i.a) ; 5 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %Abc_ResMigrate.exit784
  %.01719.us.i796 = phi i32 [ 0, %Abc_ResMigrate.exit784 ], [ %i.bbk, %bb.ci ] ; 3 uses
  %i.bbf = load i32, ptr %i.k, align 16, !tbaa !45
  %i.bbg = shl nuw i32 1, %.01719.us.i796
  %i.bbh = and i32 %i.bbf, %i.bbg
  %.not.us.i797 = icmp eq i32 %i.bbh, 0
  %i.bbi = add nuw nsw i32 %.01719.us.i796, 97
  %i.bbj = select i1 %.not.us.i797, i32 45, i32 %i.bbi
  %putchar.us.i798 = call i32 @putchar(i32 %i.bbj) ; 0 uses
  %i.bbk = add nuw nsw i32 %.01719.us.i796, 1     ; 2 uses
  %exitcond28.not.i799 = icmp eq i32 %i.bbk, %2
  br i1 %exitcond28.not.i799, label %._crit_edge.us.i800, label %bb.ci, !llvm.loop !5

._crit_edge.us.i800:                              ; preds = %bb.ci
  %i.bbl = icmp ult i32 %i.bbe, 2
  %i.bbm = add i32 %i.bbe, -1
  %i.bbn = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bbm, i1 true)
  %i.bbo = sub nuw nsw i32 32, %i.bbn
  %.09.i.i.us.i801 = select i1 %i.bbl, i32 %i.bbe, i32 %i.bbo ; 3 uses
  %i.bbp = mul nsw i32 %.09.i.i.us.i801, 10000
  %i.bbq = add nsw i32 %.09.i.i.us.i801, -1
  %.neg.i.us.i802 = shl nsw i32 -1, %i.bbq
  %i.bbr = add i32 %.neg.i.us.i802, %i.bbe        ; 2 uses
  %i.bbs = mul nsw i32 %i.bbr, %i.bbr
  %i.bbt = add nsw i32 %i.bbs, %i.bbp             ; 2 uses
  %i.bbu = load i32, ptr %i.a, align 4, !tbaa !45
  %i.bbv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.bbe, i32 noundef %.09.i.i.us.i801, i32 noundef %i.bbu, i32 noundef %i.bbt) ; 0 uses
  %i.bbw = load i32, ptr %i.wq, align 4, !tbaa !45
  %i.bbx = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.bbw, ptr noundef nonnull %i.a) ; 5 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %._crit_edge.us.i800
  %.01719.us.i796.1 = phi i32 [ 0, %._crit_edge.us.i800 ], [ %i.bcd, %bb.cj ] ; 3 uses
  %i.bby = load i32, ptr %i.wq, align 4, !tbaa !45
  %i.bbz = shl nuw i32 1, %.01719.us.i796.1
  %i.bca = and i32 %i.bby, %i.bbz
  %.not.us.i797.1 = icmp eq i32 %i.bca, 0
  %i.bcb = add nuw nsw i32 %.01719.us.i796.1, 97
  %i.bcc = select i1 %.not.us.i797.1, i32 45, i32 %i.bcb
  %putchar.us.i798.1 = call i32 @putchar(i32 %i.bcc) ; 0 uses
  %i.bcd = add nuw nsw i32 %.01719.us.i796.1, 1   ; 2 uses
  %exitcond28.not.i799.1 = icmp eq i32 %i.bcd, %2
  br i1 %exitcond28.not.i799.1, label %._crit_edge.us.i800.1, label %bb.cj, !llvm.loop !5

._crit_edge.us.i800.1:                            ; preds = %bb.cj
  %i.bce = icmp ult i32 %i.bbx, 2
  %i.bcf = add i32 %i.bbx, -1
  %i.bcg = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bcf, i1 true)
  %i.bch = sub nuw nsw i32 32, %i.bcg
  %.09.i.i.us.i801.1 = select i1 %i.bce, i32 %i.bbx, i32 %i.bch ; 3 uses
  %i.bci = mul nsw i32 %.09.i.i.us.i801.1, 10000
  %i.bcj = add nsw i32 %.09.i.i.us.i801.1, -1
  %.neg.i.us.i802.1 = shl nsw i32 -1, %i.bcj
  %i.bck = add i32 %.neg.i.us.i802.1, %i.bbx      ; 2 uses
  %i.bcl = mul nsw i32 %i.bck, %i.bck
  %i.bcm = add nsw i32 %i.bcl, %i.bci             ; 2 uses
  %i.bcn = load i32, ptr %i.a, align 4, !tbaa !45
  %i.bco = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.bbx, i32 noundef %.09.i.i.us.i801.1, i32 noundef %i.bcn, i32 noundef %i.bcm) ; 0 uses
  %i.bcp = load i32, ptr %i.wr, align 8, !tbaa !45
  %i.bcq = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.bcp, ptr noundef nonnull %i.a) ; 5 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %._crit_edge.us.i800.1
  %.01719.us.i796.2 = phi i32 [ 0, %._crit_edge.us.i800.1 ], [ %i.bcw, %bb.ck ] ; 3 uses
  %i.bcr = load i32, ptr %i.wr, align 8, !tbaa !45
  %i.bcs = shl nuw i32 1, %.01719.us.i796.2
  %i.bct = and i32 %i.bcr, %i.bcs
  %.not.us.i797.2 = icmp eq i32 %i.bct, 0
  %i.bcu = add nuw nsw i32 %.01719.us.i796.2, 97
  %i.bcv = select i1 %.not.us.i797.2, i32 45, i32 %i.bcu
  %putchar.us.i798.2 = call i32 @putchar(i32 %i.bcv) ; 0 uses
  %i.bcw = add nuw nsw i32 %.01719.us.i796.2, 1   ; 2 uses
  %exitcond28.not.i799.2 = icmp eq i32 %i.bcw, %2
  br i1 %exitcond28.not.i799.2, label %._crit_edge.us.i800.2, label %bb.ck, !llvm.loop !5

._crit_edge.us.i800.2:                            ; preds = %bb.ck
  %i.bcx = add nsw i32 %i.bcm, %i.bbt
  %i.bcy = icmp ult i32 %i.bcq, 2
  %i.bcz = add i32 %i.bcq, -1
  %i.bda = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bcz, i1 true)
  %i.bdb = sub nuw nsw i32 32, %i.bda
  %.09.i.i.us.i801.2 = select i1 %i.bcy, i32 %i.bcq, i32 %i.bdb ; 3 uses
  %i.bdc = mul nsw i32 %.09.i.i.us.i801.2, 10000
  %i.bdd = add nsw i32 %.09.i.i.us.i801.2, -1
  %.neg.i.us.i802.2 = shl nsw i32 -1, %i.bdd
  %i.bde = add i32 %.neg.i.us.i802.2, %i.bcq      ; 2 uses
  %i.bdf = mul nsw i32 %i.bde, %i.bde
  %i.bdg = add nsw i32 %i.bdf, %i.bdc             ; 2 uses
  %i.bdh = load i32, ptr %i.a, align 4, !tbaa !45
  %i.bdi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.bcq, i32 noundef %.09.i.i.us.i801.2, i32 noundef %i.bdh, i32 noundef %i.bdg) ; 0 uses
  %i.bdj = load i32, ptr %i.ws, align 4, !tbaa !45
  %i.bdk = call i32 @Abc_ResCofCount(ptr noundef %0, ptr noundef %1, i32 noundef %i.bdj, ptr noundef nonnull %i.a) ; 5 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %._crit_edge.us.i800.2
  %.01719.us.i796.3 = phi i32 [ 0, %._crit_edge.us.i800.2 ], [ %i.bdq, %bb.cl ] ; 3 uses
  %i.bdl = load i32, ptr %i.ws, align 4, !tbaa !45
  %i.bdm = shl nuw i32 1, %.01719.us.i796.3
  %i.bdn = and i32 %i.bdl, %i.bdm
  %.not.us.i797.3 = icmp eq i32 %i.bdn, 0
  %i.bdo = add nuw nsw i32 %.01719.us.i796.3, 97
  %i.bdp = select i1 %.not.us.i797.3, i32 45, i32 %i.bdo
  %putchar.us.i798.3 = call i32 @putchar(i32 %i.bdp) ; 0 uses
  %i.bdq = add nuw nsw i32 %.01719.us.i796.3, 1   ; 2 uses
  %exitcond28.not.i799.3 = icmp eq i32 %i.bdq, %2
  br i1 %exitcond28.not.i799.3, label %._crit_edge.us.i800.3, label %bb.cl, !llvm.loop !5

._crit_edge.us.i800.3:                            ; preds = %bb.cl
  %i.bdr = add nsw i32 %i.bdg, %i.bcx
  %i.bds = icmp ult i32 %i.bdk, 2
  %i.bdt = add i32 %i.bdk, -1
  %i.bdu = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bdt, i1 true)
  %i.bdv = sub nuw nsw i32 32, %i.bdu
  %.09.i.i.us.i801.3 = select i1 %i.bds, i32 %i.bdk, i32 %i.bdv ; 3 uses
  %i.bdw = mul nsw i32 %.09.i.i.us.i801.3, 10000
  %i.bdx = add nsw i32 %.09.i.i.us.i801.3, -1
  %.neg.i.us.i802.3 = shl nsw i32 -1, %i.bdx
  %i.bdy = add i32 %.neg.i.us.i802.3, %i.bdk      ; 2 uses
  %i.bdz = mul nsw i32 %i.bdy, %i.bdy
  %i.bea = add nsw i32 %i.bdz, %i.bdw             ; 2 uses
  %i.beb = add nsw i32 %i.bea, %i.bdr
  %i.bec = load i32, ptr %i.a, align 4, !tbaa !45
  %i.bed = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.bdk, i32 noundef %.09.i.i.us.i801.3, i32 noundef %i.bec, i32 noundef %i.bea) ; 0 uses
  %i.bee = or i32 %.4.us.i522, %.4.us.i457
  %i.bef = or i32 %i.bee, %.4.us.i587
  %i.beg = or i32 %i.bef, %.4.us.i652
  %i.beh = or i32 %i.beg, %.4.us.i717
  %i.bei = or i32 %i.beh, %.4.us.i782
  %i.bej = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.beb) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not132 = icmp eq i32 %i.bei, 0
  br i1 %.not132, label %bb.cm, label %bb.bb, !llvm.loop !96

bb.cm:                                            ; preds = %._crit_edge.us.i800.3
  %i.bek = add nuw nsw i32 %.2129848, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.bek, 5
  br i1 %exitcond.not, label %.loopexit, label %bb.at, !llvm.loop !97

.loopexit:                                        ; preds = %bb.cm, %bb.al, %.loopexit966, %bb.am, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  ret void
}

declare i32 @Cudd_SupportSize(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Cudd_DagSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Abc_ResPartitionTest(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val11 = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr i8, ptr %.val11, i64 4
  %.val11.val = load i32, ptr %i.b, align 4, !tbaa !35
  %i.c = getelementptr i8, ptr %0, i64 64
  %.val12 = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr i8, ptr %.val12, i64 4
  %.val12.val = load i32, ptr %i.d, align 4, !tbaa !35
  %i.e = add nsw i32 %.val12.val, %.val11.val
  %i.f = tail call ptr @Cudd_Init(i32 noundef %i.e, i32 noundef 0, i32 noundef 256, i32 noundef 262144, i64 noundef 0) #21 ; 4 uses
  %i.g = tail call ptr @Abc_ResBuildBdd(ptr noundef %0, ptr noundef %i.f) ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.g) #21
  %.val = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.h = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.h, align 4, !tbaa !35
  tail call void @Abc_ResPartition(ptr noundef %i.f, ptr noundef %i.g, i32 noundef %.val.val)
  tail call void @Cudd_RecursiveDeref(ptr noundef %i.f, ptr noundef %i.g) #21
  tail call void @Extra_StopManager(ptr noundef %i.f) #21
  ret void
}

declare ptr @Cudd_Init(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @Extra_StopManager(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @Abc_NtkBddCofCount(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #20 ; 3 uses
  %.not = icmp eq i32 %3, 31
  br i1 %.not, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = shl nuw nsw i32 1, %3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %i.c = phi ptr [ %i.ab, %bb.l ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %i.d = phi i32 [ %i.ac, %bb.l ], [ 100, %.lr.ph.preheader ] ; 8 uses
  %i.e = phi ptr [ %i.ad, %bb.l ], [ %i.a, %.lr.ph.preheader ] ; 6 uses
  %i.f = phi i32 [ %i.ae, %bb.l ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.031 = phi i32 [ %i.af, %bb.l ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.g = tail call ptr @Extra_bddBitsToCube(ptr noundef %0, i32 noundef %.031, i32 noundef %3, ptr noundef %2, i32 noundef 1) #21 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.g) #21
  %i.h = tail call ptr @Cudd_Cofactor(ptr noundef %0, ptr noundef %1, ptr noundef %i.g) #21 ; 4 uses
  tail call void @Cudd_Ref(ptr noundef %i.h) #21
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.g) #21
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %wide.trip.count.i = zext nneg i32 %i.f to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !98

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %Vec_PtrPushUnique.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph
  %i.m = icmp eq i32 %i.f, %i.d
  br i1 %i.m, label %bb.d, label %Vec_PtrPushUnique.exit.thread

bb.d:                                             ; preds = %._crit_edge.i
  %i.n = icmp slt i32 %i.d, 16
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.e, i64 noundef 128) #22
  br label %Vec_PtrPushUnique.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.p = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #20
  br label %Vec_PtrPushUnique.exit.thread

bb.h:                                             ; preds = %bb.d
  %i.q = icmp samesign ult i32 %i.d, 1073741823
  %i.r = shl nuw nsw i32 %i.d, 1
  %spec.select.i.i = select i1 %i.q, i32 %i.r, i32 2147483647 ; 4 uses
  %.not.i10.i.i = icmp samesign ult i32 %i.d, %spec.select.i.i
  br i1 %.not.i10.i.i, label %bb.i, label %Vec_PtrPushUnique.exit.thread

bb.i:                                             ; preds = %bb.h
  %.not9.i11.i.i = icmp eq ptr %i.e, null
  %i.s = zext nneg i32 %spec.select.i.i to i64
  %i.t = shl nuw nsw i64 %i.s, 3                  ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = tail call ptr @realloc(ptr noundef nonnull %i.e, i64 noundef %i.t) #22
  br label %Vec_PtrPushUnique.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #20
  br label %Vec_PtrPushUnique.exit.thread

Vec_PtrPushUnique.exit.thread:                    ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %._crit_edge.i, %bb.h
  %i.w = phi ptr [ %i.c, %._crit_edge.i ], [ %i.c, %bb.h ], [ %i.p, %bb.g ], [ %i.o, %bb.f ], [ %i.u, %bb.j ], [ %i.v, %bb.k ] ; 3 uses
  %i.x = phi i32 [ %i.d, %._crit_edge.i ], [ %i.d, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i.i, %bb.j ], [ %spec.select.i.i, %bb.k ]
  %i.y = add nsw i32 %i.f, 1
  %i.z = sext i32 %i.f to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.z
  store ptr %i.h, ptr %i.aa, align 8, !tbaa !38
  br label %bb.l

Vec_PtrPushUnique.exit:                           ; preds = %bb.c
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.h) #21
  br label %bb.l

bb.l:                                             ; preds = %Vec_PtrPushUnique.exit.thread, %Vec_PtrPushUnique.exit
  %i.ab = phi ptr [ %i.w, %Vec_PtrPushUnique.exit.thread ], [ %i.c, %Vec_PtrPushUnique.exit ] ; 4 uses
  %i.ac = phi i32 [ %i.x, %Vec_PtrPushUnique.exit.thread ], [ %i.d, %Vec_PtrPushUnique.exit ]
  %i.ad = phi ptr [ %i.w, %Vec_PtrPushUnique.exit.thread ], [ %i.e, %Vec_PtrPushUnique.exit ]
  %i.ae = phi i32 [ %i.y, %Vec_PtrPushUnique.exit.thread ], [ %i.f, %Vec_PtrPushUnique.exit ] ; 5 uses
  %i.af = add nuw nsw i32 %.031, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.l
  %i.ag = icmp sgt i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph34, label %.critedge

.lr.ph34:                                         ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.ae to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph34, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.ai) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond36.not, label %.critedge, label %bb.m, !llvm.loop !100

.critedge:                                        ; preds = %bb.m, %bb.a, %._crit_edge
  %.val2747 = phi i32 [ 0, %bb.a ], [ %i.ae, %._crit_edge ], [ %i.ae, %bb.m ]
  %i.aj = phi ptr [ %i.a, %bb.a ], [ %i.ab, %._crit_edge ], [ %i.ab, %bb.m ] ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %bb.n

bb.n:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.aj) #21
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge, %bb.n
  ret i32 %.val2747
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkExploreCofs2(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Cudd_DagSize(ptr noundef %1) #21
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %3, i32 noundef %i.a, i32 noundef %4) ; 0 uses
  %.not14 = icmp slt i32 %3, %4
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = add i32 %4, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = add i32 %3, 1
  %i.f = sub i32 %i.e, %4
  %wide.trip.count = zext i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.h = add i32 %i.c, %i.g
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = tail call i32 @Abc_NtkBddCofCount(ptr noundef %0, ptr noundef %1, ptr noundef %i.j, i32 noundef %4)
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.k) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !101

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkExploreCofs(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !63
  %i.d = tail call ptr @Cudd_Init(i32 noundef %i.c, i32 noundef 0, i32 noundef 256, i32 noundef 262144, i64 noundef 0) #21 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !105
  %i.g = tail call i32 @Cudd_ShuffleHeap(ptr noundef %i.d, ptr noundef %i.f) #21 ; 0 uses
  %i.h = tail call ptr @Cudd_bddTransfer(ptr noundef %0, ptr noundef %i.d, ptr noundef %1) #21 ; 4 uses
  tail call void @Cudd_Ref(ptr noundef %i.h) #21
  %.not59 = icmp eq i32 %3, 31
  br i1 %.not59, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.a
  %i.i = shl nuw nsw i32 1, %3
  %i.j = add nsw i32 %4, -1
  %i.k = add nsw i32 %4, -2
  %i.l = icmp sgt i32 %3, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 352 ; 3 uses
  %wide.trip.count = zext i32 %3 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod68 = trunc i32 %3 to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph57, %bb.g
  %.04055 = phi i32 [ 0, %.lr.ph57 ], [ %i.be, %bb.g ] ; 6 uses
  %i.o = call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %.04055) ; 3 uses
  %.not = icmp eq i32 %i.o, %4
  %.not45 = icmp eq i32 %i.o, %i.j
  %or.cond = select i1 %.not, i1 true, i1 %.not45
  %.not46 = icmp eq i32 %i.o, %i.k
  %or.cond48 = select i1 %or.cond, i1 true, i1 %.not46
  br i1 %or.cond48, label %.preheader49, label %bb.g

.preheader49:                                     ; preds = %bb.b
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.preheader49
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.051 = phi i32 [ %.1.1, %bb.e ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.lr.ph.preheader ]
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = shl nuw i32 1, %i.p
  %i.r = and i32 %i.q, %.04055
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  %i.w = add nsw i32 %.051, 1
  %i.x = sext i32 %.051 to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !62
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.c
  %.1 = phi i32 [ %.051, %.lr.ph ], [ %i.w, %bb.c ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = and i32 %i.aa, %.04055
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.ag = add nsw i32 %.1, 1
  %i.ah = sext i32 %.1 to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ah
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !62
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %.1.1 = phi i32 [ %.1, %.lr.ph.1 ], [ %i.ag, %bb.d ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !102

._crit_edge.unr-lcssa:                            ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.051.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod68)
  %i.aj = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = and i32 %i.ak, %.04055
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph.epil.preheader
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.epil.init
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.aq = add nsw i32 %.051.epil.init, 1
  %i.ar = sext i32 %.051.epil.init to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !62
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.f, %._crit_edge.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %.051.epil.init, %.lr.ph.epil.preheader ], [ %i.aq, %bb.f ]
  %i.at = call i32 @Abc_NtkBddCofCount(ptr noundef %i.d, ptr noundef %i.h, ptr noundef nonnull %i.a, i32 noundef %.1.lcssa) ; 2 uses
  %i.au = icmp sgt i32 %i.at, 8
  br i1 %i.au, label %bb.g, label %.lr.ph53

._crit_edge.thread:                               ; preds = %.preheader49
  %i.av = call i32 @Abc_NtkBddCofCount(ptr noundef %i.d, ptr noundef %i.h, ptr noundef nonnull %i.a, i32 noundef 0) ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 8
  br i1 %i.aw, label %bb.g, label %._crit_edge54

.lr.ph53:                                         ; preds = %._crit_edge, %.lr.ph53
  %.13952 = phi i32 [ %i.bb, %.lr.ph53 ], [ 0, %._crit_edge ] ; 3 uses
  %i.ax = shl nuw i32 1, %.13952
  %i.ay = and i32 %i.ax, %.04055
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = add nuw nsw i32 %.13952, 97
  %.sink = select i1 %i.az, i32 45, i32 %i.ba
  %putchar = call i32 @putchar(i32 %.sink)        ; 0 uses
  %i.bb = add nuw nsw i32 %.13952, 1              ; 2 uses
  %exitcond61.not = icmp eq i32 %i.bb, %3
  br i1 %exitcond61.not, label %._crit_edge54, label %.lr.ph53, !llvm.loop !103

._crit_edge54:                                    ; preds = %.lr.ph53, %._crit_edge.thread
  %i.bc = phi i32 [ %i.av, %._crit_edge.thread ], [ %i.at, %.lr.ph53 ]
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.bc) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread, %bb.b, %._crit_edge, %._crit_edge54
  %i.be = add nuw nsw i32 %.04055, 1              ; 2 uses
  %exitcond62.not = icmp eq i32 %i.be, %i.i
  br i1 %exitcond62.not, label %._crit_edge58, label %bb.b, !llvm.loop !104

._crit_edge58:                                    ; preds = %bb.g, %bb.a
  call void @Cudd_RecursiveDeref(ptr noundef %i.d, ptr noundef %i.h) #21
  call void @Extra_StopManager(ptr noundef %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare i32 @Cudd_ShuffleHeap(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Cudd_bddTransfer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkBddFindAddConst(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Cudd_ReadLogicZero(ptr noundef %0) #21
  %i.b = tail call ptr @Cudd_ReadOne(ptr noundef %0) #21 ; 0 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01824 = phi i32 [ %.1, %bb.d ], [ 0, %bb.a ]
  %.01923 = phi i32 [ %i.y, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.02022 = phi ptr [ %.121, %bb.d ], [ %1, %bb.a ] ; 3 uses
  %i.d = ptrtoint ptr %.02022 to i64              ; 2 uses
  %i.e = and i64 %i.d, 1
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = and i64 %i.d, -2
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = xor i64 %i.k, 1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = xor i64 %i.o, 1
  %i.q = inttoptr i64 %i.p to ptr
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.02022, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.02022, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.017 = phi ptr [ %i.m, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %i.q, %bb.b ], [ %i.u, %bb.c ]
  %i.v = icmp eq ptr %.017, %i.a                  ; 2 uses
  %i.w = shl nuw i32 1, %.01923
  %.121 = select i1 %i.v, ptr %.0, ptr %.017
  %i.x = select i1 %i.v, i32 %i.w, i32 0
  %.1 = xor i32 %i.x, %.01824                     ; 2 uses
  %i.y = add nuw nsw i32 %.01923, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !7

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.z = sitofp i32 %.1 to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.018.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.z, %._crit_edge.loopexit ]
  %i.aa = tail call ptr @Cudd_addConst(ptr noundef %0, double noundef %.018.lcssa) #21
  ret ptr %i.aa
}

declare ptr @Cudd_ReadLogicZero(ptr noundef) local_unnamed_addr #2

declare ptr @Cudd_addConst(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkBddToAdd_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call i32 @stmm_find_or_add(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %i.a) #21
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !65
  %i.f = call i32 @Cudd_ReadSize(ptr noundef %0) #21
  %i.g = sub nsw i32 %i.f, %2
  %.not29 = icmp slt i32 %i.e, %i.g
  br i1 %.not29, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr @Cudd_ReadLogicZero(ptr noundef %0) #21
  %i.i = call ptr @Cudd_ReadOne(ptr noundef %0) #21 ; 0 uses
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %.lr.ph.i.preheader, label %Abc_NtkBddFindAddConst.exit

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.k = sext i32 %4 to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = xor i64 %i.k, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.01824.i = phi i32 [ %.1.i, %bb.g ], [ 0, %.lr.ph.i.preheader ]
  %.01923.i = phi i32 [ %i.aj, %bb.g ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.02022.i = phi ptr [ %.121.i, %bb.g ], [ %i.n, %.lr.ph.i.preheader ] ; 3 uses
  %i.o = ptrtoint ptr %.02022.i to i64            ; 2 uses
  %i.p = and i64 %i.o, 1
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = xor i64 %i.v, 1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = xor i64 %i.z, 1
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.02022.i, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.02022.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.017.i = phi ptr [ %i.x, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.ab, %bb.e ], [ %i.af, %bb.f ]
  %i.ag = icmp eq ptr %.017.i, %i.h               ; 2 uses
  %i.ah = shl nuw i32 1, %.01923.i
  %.121.i = select i1 %i.ag, ptr %.0.i, ptr %.017.i
  %i.ai = select i1 %i.ag, i32 %i.ah, i32 0
  %.1.i = xor i32 %i.ai, %.01824.i                ; 2 uses
  %i.aj = add nuw nsw i32 %.01923.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aj, %2
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !7

._crit_edge.loopexit.i:                           ; preds = %bb.g
  %i.ak = sitofp i32 %.1.i to double
  br label %Abc_NtkBddFindAddConst.exit

Abc_NtkBddFindAddConst.exit:                      ; preds = %bb.d, %._crit_edge.loopexit.i
  %.018.lcssa.i = phi double [ 0.000000e+00, %bb.d ], [ %i.ak, %._crit_edge.loopexit.i ]
  %i.al = call ptr @Cudd_addConst(ptr noundef %0, double noundef %.018.lcssa.i) #21
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !43
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = and i64 %i.ap, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = trunc i64 %i.ap to i32
  %i.at = and i32 %i.as, 1
  %i.au = xor i32 %i.at, %4
  %i.av = call ptr @Abc_NtkBddToAdd_rec(ptr noundef %0, ptr noundef %i.ar, i32 noundef %2, ptr noundef %3, i32 noundef %i.au)
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !43
  %i.ax = call ptr @Abc_NtkBddToAdd_rec(ptr noundef %0, ptr noundef %i.aw, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  %i.ay = load i32, ptr %1, align 8, !tbaa !65
  %i.az = call ptr @Cudd_addIthVar(ptr noundef %0, i32 noundef %i.ay) #21
  %i.ba = call ptr @Cudd_addIte(ptr noundef %0, ptr noundef %i.az, ptr noundef %i.ax, ptr noundef %i.av) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %Abc_NtkBddFindAddConst.exit
  %.sink = phi ptr [ %i.ba, %bb.h ], [ %i.al, %Abc_NtkBddFindAddConst.exit ] ; 3 uses
  call void @Cudd_Ref(ptr noundef %.sink) #21
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !64
  store ptr %.sink, ptr %i.bb, align 8, !tbaa !62
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.028 = phi ptr [ %i.d, %bb.b ], [ %.sink, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.028
}

declare i32 @stmm_find_or_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Cudd_ReadSize(ptr noundef) local_unnamed_addr #2

declare ptr @Cudd_addIte(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Cudd_addIthVar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkBddToAdd(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = tail call ptr @stmm_init_table(ptr noundef nonnull @st__ptrcmp, ptr noundef nonnull @st__ptrhash) #21 ; 3 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = and i64 %i.d, -2
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = trunc i64 %i.d to i32
  %i.h = and i32 %i.g, 1
  %i.i = tail call ptr @Abc_NtkBddToAdd_rec(ptr noundef %0, ptr noundef %i.f, i32 noundef %2, ptr noundef %i.c, i32 noundef %i.h) ; 2 uses
  %i.j = tail call ptr @stmm_init_gen(ptr noundef %i.c) #21 ; 3 uses
  %i.k = call i32 @stmm_gen(ptr noundef %i.j, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #21
  %.not11 = icmp eq i32 %i.k, 0
  br i1 %.not11, label %._crit_edge, label %.critedge

._crit_edge:                                      ; preds = %.critedge, %bb.a
  call void @stmm_free_gen(ptr noundef %i.j) #21
  call void @stmm_free_table(ptr noundef %i.c) #21
  call void @Cudd_Deref(ptr noundef %i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.i

.critedge:                                        ; preds = %bb.a, %.critedge
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !62
  call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.l) #21
  %i.m = call i32 @stmm_gen(ptr noundef %i.j, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #21
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.critedge, !llvm.loop !106
}

declare ptr @stmm_init_table(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @st__ptrcmp(ptr noundef, ptr noundef) #2

declare i32 @st__ptrhash(ptr noundef, i32 noundef) #2

declare ptr @stmm_init_gen(ptr noundef) local_unnamed_addr #2

declare i32 @stmm_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @stmm_free_gen(ptr noundef) local_unnamed_addr #2

declare void @stmm_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkAddToBdd_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call i32 @stmm_find_or_add(ptr noundef %4, ptr noundef %1, ptr noundef nonnull %i.a) #21
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = and i64 %i.e, -2
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !65
  %i.i = icmp eq i32 %i.h, 2147483647
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !43
  %i.l = fptosi double %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.o = sext i32 %2 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  %i.q = call ptr @Extra_bddBitsToCube(ptr noundef %0, i32 noundef %i.l, i32 noundef %3, ptr noundef %i.p, i32 noundef 1) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = call ptr @Abc_NtkAddToBdd_rec(ptr noundef %0, ptr noundef %i.t, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.w = call ptr @Abc_NtkAddToBdd_rec(ptr noundef %0, ptr noundef %i.v, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %i.x = load i32, ptr %1, align 8, !tbaa !65
  %i.y = call ptr @Cudd_bddIthVar(ptr noundef %0, i32 noundef %i.x) #21
  %i.z = call ptr @Cudd_bddIte(ptr noundef %0, ptr noundef %i.y, ptr noundef %i.w, ptr noundef %i.u) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi ptr [ %i.z, %bb.e ], [ %i.q, %bb.d ] ; 3 uses
  call void @Cudd_Ref(ptr noundef %.sink) #21
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !64
  store ptr %.sink, ptr %i.aa, align 8, !tbaa !62
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.026 = phi ptr [ %i.d, %bb.b ], [ %.sink, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.026
}

declare ptr @Cudd_bddIte(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkAddToBdd(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = tail call ptr @stmm_init_table(ptr noundef nonnull @st__ptrcmp, ptr noundef nonnull @st__ptrhash) #21 ; 3 uses
  %i.d = tail call ptr @Abc_NtkAddToBdd_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %i.c) ; 2 uses
  %i.e = tail call ptr @stmm_init_gen(ptr noundef %i.c) #21 ; 3 uses
  %i.f = call i32 @stmm_gen(ptr noundef %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #21
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %._crit_edge, label %.critedge

._crit_edge:                                      ; preds = %.critedge, %bb.a
  call void @stmm_free_gen(ptr noundef %i.e) #21
  call void @stmm_free_table(ptr noundef %i.c) #21
  call void @Cudd_Deref(ptr noundef %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.d

.critedge:                                        ; preds = %bb.a, %.critedge
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !62
  call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.g) #21
  %i.h = call i32 @stmm_gen(ptr noundef %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #21
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.critedge, !llvm.loop !107
}

; Function Attrs: nounwind uwtable
define noundef ptr @Abc_NtkBddDecCharFunc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Cudd_ReadOne(ptr noundef %0) #21 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.a) #21
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.02730 = phi ptr [ %i.a, %.lr.ph ], [ %.128, %bb.d ] ; 3 uses
  %i.d = trunc nuw nsw i64 %indvars.iv to i32
  %i.e = shl nuw i32 1, %i.d
  %i.f = and i32 %i.e, %3
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.c, align 8, !tbaa !63
  %i.i = trunc i64 %indvars.iv to i32
  %i.j = sub i32 %i.i, %2
  %i.k = add i32 %i.j, %i.h
  %i.l = tail call ptr @Cudd_bddIthVar(ptr noundef %0, i32 noundef %i.k) #21
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.o = tail call ptr @Cudd_bddXor(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.l) #21 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.o) #21
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = xor i64 %i.p, 1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = tail call ptr @Cudd_bddAnd(ptr noundef %0, ptr noundef %.02730, ptr noundef %i.r) #21 ; 2 uses
  tail call void @Cudd_Ref(ptr noundef %i.s) #21
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %.02730) #21
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.o) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.128 = phi ptr [ %.02730, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.027.lcssa = phi ptr [ %i.a, %bb.a ], [ %.128, %bb.d ] ; 2 uses
  tail call void @Cudd_Deref(ptr noundef %.027.lcssa) #21
  ret ptr %.027.lcssa
}

declare ptr @Cudd_bddXor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef ptr @Abc_NtkBddDecTry(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Abc_NtkBddDecCharFunc(ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef %5, i32 poison) ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.a) #21
  tail call void @Cudd_Deref(ptr noundef %i.a) #21
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @Abc_NtkBddDecInt(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 32, %4
  %i.b = shl nuw i32 1, %i.a
  %i.c = xor i32 %i.b, -1
  %i.d = tail call ptr @Abc_NtkBddDecCharFunc(ptr noundef %1, ptr noundef readonly %2, i32 noundef %4, i32 noundef %i.c, i32 poison) ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.d) #21
  tail call void @Cudd_Deref(ptr noundef %i.d) #21
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkCreateFromCharFunc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Abc_NtkAlloc(i32 noundef 2, i32 noundef 2, i32 noundef 1) #21 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.d = tail call ptr @Extra_UtilStrsav(ptr noundef %i.c) #21
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !111
  %i.f = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.a, i32 noundef 7) #21 ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val40 = load ptr, ptr %i.g, align 8, !tbaa !36 ; 2 uses
  %i.h = getelementptr i8, ptr %.val40, i64 4
  %.val.val41 = load i32, ptr %i.h, align 4, !tbaa !35
  %i.i = icmp sgt i32 %.val.val41, 0
  br i1 %i.i, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val3844 = load ptr, ptr %i.j, align 8, !tbaa !46 ; 2 uses
  %i.k = getelementptr i8, ptr %.val3844, i64 4
  %.val38.val45 = load i32, ptr %i.k, align 4, !tbaa !35
  %i.l = icmp sgt i32 %.val38.val45, 0
  br i1 %i.l, label %.critedge, label %.critedge2

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.val43 = phi ptr [ %.val, %.lr.ph ], [ %.val40, %bb.a ]
  %i.m = getelementptr i8, ptr %.val43, i64 8
  %.val37.val = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val37.val, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38   ; 2 uses
  %i.p = tail call ptr @Abc_NtkCreateObj(ptr noundef nonnull %i.a, i32 noundef 2) #21 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !43
  tail call void @Abc_ObjAddFanin(ptr noundef %i.f, ptr noundef %i.p) #21
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.s = tail call ptr @Abc_ObjName(ptr noundef %i.o) #21
  %i.t = tail call ptr @Abc_ObjAssignName(ptr noundef %i.r, ptr noundef %i.s, ptr noundef null) #21 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load ptr, ptr %i.g, align 8, !tbaa !36  ; 2 uses
  %i.u = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.u, align 4, !tbaa !35
  %i.v = sext i32 %.val.val to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %.lr.ph, label %.critedge.preheader, !llvm.loop !109

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %.val3847 = phi ptr [ %.val38, %.critedge ], [ %.val3844, %.critedge.preheader ]
  %i.x = getelementptr i8, ptr %.val3847, i64 8
  %.val39.val = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val39.val, i64 %indvars.iv51
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38   ; 2 uses
  %i.aa = tail call ptr @Abc_NtkCreateObj(ptr noundef nonnull %i.a, i32 noundef 2) #21 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !43
  tail call void @Abc_ObjAddFanin(ptr noundef %i.f, ptr noundef %i.aa) #21
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = tail call ptr @Abc_ObjName(ptr noundef %i.z) #21
  %i.ae = tail call ptr @Abc_ObjAssignName(ptr noundef %i.ac, ptr noundef %i.ad, ptr noundef null) #21 ; 0 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %.val38 = load ptr, ptr %i.j, align 8, !tbaa !46 ; 2 uses
  %i.af = getelementptr i8, ptr %.val38, i64 4
  %.val38.val = load i32, ptr %i.af, align 4, !tbaa !35
  %i.ag = sext i32 %.val38.val to i64
  %i.ah = icmp slt i64 %indvars.iv.next52, %i.ag
  br i1 %i.ah, label %.critedge, label %.critedge2, !llvm.loop !110

.critedge2:                                       ; preds = %.critedge, %.critedge.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !112
  %i.ak = tail call ptr @Extra_TransferLevelByLevel(ptr noundef %1, ptr noundef %i.aj, ptr noundef %2) #21 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !43
  tail call void @Cudd_Ref(ptr noundef %i.ak) #21
  %i.am = tail call ptr @Abc_NtkCreateObj(ptr noundef nonnull %i.a, i32 noundef 3) #21 ; 2 uses
  tail call void @Abc_ObjAddFanin(ptr noundef %i.am, ptr noundef %i.f) #21
  %i.an = tail call ptr @Abc_ObjAssignName(ptr noundef %i.am, ptr noundef nonnull @.str.11, ptr noundef null) #21 ; 0 uses
  %i.ao = tail call i32 @Abc_NtkCheck(ptr noundef nonnull %i.a) #21
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge2
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !66
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %i.ap) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge2
  ret ptr %i.a
}

declare ptr @Abc_NtkAlloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Extra_UtilStrsav(ptr noundef) local_unnamed_addr #2

declare void @Abc_ObjAddFanin(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Abc_ObjAssignName(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Abc_ObjName(ptr noundef) local_unnamed_addr #2

declare ptr @Extra_TransferLevelByLevel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Abc_NtkCheck(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkBddDec(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x ptr], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call ptr @Abc_NtkBuildGlobalBdds(ptr noundef %0, i32 noundef 1000000, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef %1) #21 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 64         ; 4 uses
  %.val4347 = load ptr, ptr %i.d, align 8, !tbaa !46 ; 2 uses
  %i.e = getelementptr i8, ptr %.val4347, i64 4
  %.val43.val48 = load i32, ptr %i.e, align 4, !tbaa !35
  %i.f = icmp sgt i32 %.val43.val48, 0
  br i1 %i.f, label %.lr.ph, label %.critedge._crit_edge

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr nonnull poison)
  br label %bb.j

.critedge.preheader:                              ; preds = %Abc_ObjGlobalBdd.exit
  %i.g = icmp sgt i32 %.val43.val, 0
  br i1 %i.g, label %.lr.ph54, label %.critedge._crit_edge

.lr.ph54:                                         ; preds = %.critedge.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader, %Abc_ObjGlobalBdd.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Abc_ObjGlobalBdd.exit ], [ 0, %.preheader ] ; 3 uses
  %.val4350 = phi ptr [ %.val43, %Abc_ObjGlobalBdd.exit ], [ %.val4347, %.preheader ]
  %i.i = getelementptr i8, ptr %.val4350, i64 8
  %.val44.val = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val44.val, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38   ; 2 uses
  %.val45 = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %.val46 = load i32, ptr %i.l, align 8, !tbaa !41 ; 4 uses
  %i.m = getelementptr i8, ptr %.val45, i64 432
  %.val45.val = load ptr, ptr %i.m, align 8, !tbaa !116
  %i.n = getelementptr i8, ptr %.val45.val, i64 8
  %.val45.val.val = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.o = getelementptr i8, ptr %.val45.val.val, i64 56
  %.val45.val.val.val = load ptr, ptr %i.o, align 8, !tbaa !38 ; 7 uses
  %i.p = load i32, ptr %.val45.val.val.val, align 8, !tbaa !118 ; 4 uses
  %.not.i.i = icmp slt i32 %.val46, %i.p
  br i1 %.not.i.i, label %Vec_AttGrow.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.q = shl nsw i32 %i.p, 1                      ; 2 uses
  %i.r = icmp sgt i32 %i.q, %.val46
  %i.s = add nsw i32 %.val46, 10
  %i.t = select i1 %i.r, i32 %i.q, i32 %i.s       ; 4 uses
  %.not.i.i.i = icmp slt i32 %i.p, %i.t
  br i1 %.not.i.i.i, label %bb.d, label %Vec_AttGrow.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.val45.val.val.val, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !119  ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.v, null
  %i.w = sext i32 %i.t to i64
  %i.x = shl nsw i64 %i.w, 3                      ; 2 uses
  br i1 %.not13.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = tail call ptr @realloc(ptr noundef nonnull %i.v, i64 noundef %i.x) #22
  %.pre.i.i.i = load i32, ptr %.val45.val.val.val, align 8, !tbaa !118
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.x) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = phi i32 [ %.pre.i.i.i, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  %i.ab = phi ptr [ %i.y, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !119
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = sub nsw i32 %i.t, %i.aa
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ag, i1 false)
  store i32 %i.t, ptr %.val45.val.val.val, align 8, !tbaa !118
  br label %Vec_AttGrow.exit.i.i

Vec_AttGrow.exit.i.i:                             ; preds = %bb.g, %bb.c, %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.val45.val.val.val, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !119
  %i.aj = sext i32 %.val46 to i64                 ; 3 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.h, label %Abc_ObjGlobalBdd.exit

bb.h:                                             ; preds = %Vec_AttGrow.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.val45.val.val.val, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !120 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.ao, null
  br i1 %.not18.i.i, label %Abc_ObjGlobalBdd.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.val45.val.val.val, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !121
  %i.ar = tail call ptr %i.ao(ptr noundef %i.aq) #21, !inline_history !113
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !119
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.aj
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !38
  %.pre.i.i = load ptr, ptr %i.ah, align 8, !tbaa !119
  %.phi.trans.insert.i.i = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %i.aj
  %.pre19.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !38
  br label %Abc_ObjGlobalBdd.exit

Abc_ObjGlobalBdd.exit:                            ; preds = %Vec_AttGrow.exit.i.i, %bb.h, %bb.i
  %i.au = phi ptr [ %.pre19.i.i, %bb.i ], [ null, %bb.h ], [ %i.al, %Vec_AttGrow.exit.i.i ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.au, ptr %i.av, align 8, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val43 = load ptr, ptr %i.d, align 8, !tbaa !46 ; 2 uses
  %i.aw = getelementptr i8, ptr %.val43, i64 4
  %.val43.val = load i32, ptr %i.aw, align 4, !tbaa !35 ; 2 uses
  %i.ax = sext i32 %.val43.val to i64
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %.lr.ph, label %.critedge.preheader, !llvm.loop !114

.critedge:                                        ; preds = %.lr.ph54, %.critedge
  %.153 = phi i32 [ 0, %.lr.ph54 ], [ %i.bb, %.critedge ]
  %i.az = load i32, ptr %i.h, align 8, !tbaa !63
  %i.ba = tail call ptr @Cudd_addNewVarAtLevel(ptr noundef nonnull %i.b, i32 noundef %i.az) #21 ; 0 uses
  %i.bb = add nuw nsw i32 %.153, 1                ; 2 uses
  %.val42 = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.bc = getelementptr i8, ptr %.val42, i64 4
  %.val42.val = load i32, ptr %i.bc, align 4, !tbaa !35
  %i.bd = icmp slt i32 %i.bb, %.val42.val
  br i1 %i.bd, label %.critedge, label %.critedge._crit_edge, !llvm.loop !115

.critedge._crit_edge:                             ; preds = %.critedge, %.preheader, %.critedge.preheader
  %i.be = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %.val40 = load ptr, ptr %i.be, align 8, !tbaa !36
  %i.bf = getelementptr i8, ptr %.val40, i64 4
  %.val40.val = load i32, ptr %i.bf, align 4, !tbaa !35
  %i.bg = tail call ptr @Extra_ReorderInit(i32 noundef %.val40.val, i32 noundef 1000) #21 ; 4 uses
  tail call void @Extra_ReorderSetMinimizationType(ptr noundef %i.bg, i32 noundef 1) #21
  tail call void @Extra_ReorderSetVerification(ptr noundef %i.bg, i32 noundef 1) #21
  tail call void @Extra_ReorderSetVerbosity(ptr noundef %i.bg, i32 noundef 1) #21
  %.val41 = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.bh = getelementptr i8, ptr %.val41, i64 4
  %.val41.val = load i32, ptr %i.bh, align 4, !tbaa !35 ; 2 uses
  %i.bi = sub nsw i32 32, %.val41.val
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = xor i32 %i.bj, -1
  %i.bl = call ptr @Abc_NtkBddDecCharFunc(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.a, i32 noundef %.val41.val, i32 noundef %i.bk, i32 poison) ; 5 uses
  tail call void @Cudd_Ref(ptr noundef %i.bl) #21
  tail call void @Cudd_Deref(ptr noundef %i.bl) #21
  tail call void @Cudd_Ref(ptr noundef %i.bl) #21
  tail call void @Extra_ReorderQuit(ptr noundef %i.bg) #21
  %.val = load ptr, ptr %i.be, align 8, !tbaa !36
  %i.bm = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.bm, align 4, !tbaa !35
  tail call void @Abc_NtkExploreCofs(ptr noundef nonnull %i.b, ptr noundef %i.bl, ptr poison, i32 noundef %.val.val, i32 noundef 6)
  %i.bn = tail call ptr @Abc_NtkDup(ptr noundef nonnull %0) #21
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %i.b, ptr noundef %i.bl) #21
  %i.bo = tail call ptr @Abc_NtkFreeGlobalBdds(ptr noundef nonnull %0, i32 noundef 1) #21 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.critedge._crit_edge, %bb.b
  %.037 = phi ptr [ null, %bb.b ], [ %i.bn, %.critedge._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.037
}

declare ptr @Abc_NtkBuildGlobalBdds(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr nofree readnone captures(none) %1, ...) unnamed_addr #9 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !45
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #21
  %.not8 = icmp eq i32 %i.b, 0
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !66
  %i.e = tail call i32 @Gia_ManToBridgeText(ptr noundef %i.d, i32 noundef 7, ptr noundef nonnull @.str.14) #21 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.f = call i32 (...) @Abc_FrameIsBridgeMode() #21
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = call ptr @vnsprintf(ptr noundef nonnull @.str.13, ptr noundef nonnull %2) #21 ; 3 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !66
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #23
  %i.j = trunc i64 %i.i to i32
  %i.k = call i32 @Gia_ManToBridgeText(ptr noundef %i.h, i32 noundef %i.j, ptr noundef nonnull %i.g) #21 ; 0 uses
  call void @free(ptr noundef %i.g) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !66, !noalias !125
  %i.m = call i32 @vfprintf(ptr noundef %i.l, ptr noundef nonnull @.str.13, ptr noundef nonnull %2) #21, !inline_history !124 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

declare ptr @Cudd_addNewVarAtLevel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Extra_ReorderInit(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Extra_ReorderSetMinimizationType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Extra_ReorderSetVerification(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Extra_ReorderSetVerbosity(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Extra_ReorderQuit(ptr noundef) local_unnamed_addr #2

declare ptr @Abc_NtkDup(ptr noundef) local_unnamed_addr #2

declare ptr @Abc_NtkFreeGlobalBdds(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

declare ptr @Abc_NtkCreateObj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #2

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #14

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #14

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind }
attributes #22 = { nounwind allocsize(1) }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !42}
!1 = distinct !{!1, !42}
!2 = distinct !{!2, !42}
!3 = distinct !{!3, !42}
!4 = distinct !{!4, !42}
!5 = distinct !{!5, !42}
!6 = distinct !{!6, !42}
!7 = distinct !{!7, !42}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"p1 _ZTS9Nm_Man_t_", !16, i64 0}
!19 = !{!"p1 _ZTS10Vec_Ptr_t_", !16, i64 0}
!20 = !{!"p1 _ZTS10Abc_Ntk_t_", !16, i64 0}
!21 = !{!"p1 _ZTS10Abc_Des_t_", !16, i64 0}
!22 = !{!"double", !12, i64 0}
!23 = !{!"p1 int", !16, i64 0}
!24 = !{!"Vec_Int_t_", !13, i64 0, !13, i64 4, !23, i64 8}
!25 = !{!"p1 _ZTS12Mem_Fixed_t_", !16, i64 0}
!26 = !{!"p1 _ZTS11Mem_Step_t_", !16, i64 0}
!27 = !{!"p1 _ZTS14Abc_ManTime_t_", !16, i64 0}
!28 = !{!"float", !12, i64 0}
!29 = !{!"p1 _ZTS10Vec_Int_t_", !16, i64 0}
!30 = !{!"p1 _ZTS10Abc_Cex_t_", !16, i64 0}
!31 = !{!"p1 float", !16, i64 0}
!32 = !{!"Abc_Ntk_t_", !13, i64 0, !13, i64 4, !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !12, i64 96, !13, i64 140, !13, i64 144, !13, i64 148, !13, i64 152, !20, i64 160, !13, i64 168, !21, i64 176, !20, i64 184, !13, i64 192, !13, i64 196, !13, i64 200, !22, i64 208, !13, i64 216, !24, i64 224, !25, i64 240, !26, i64 248, !16, i64 256, !27, i64 264, !16, i64 272, !28, i64 280, !13, i64 284, !29, i64 288, !19, i64 296, !23, i64 304, !30, i64 312, !19, i64 320, !20, i64 328, !16, i64 336, !16, i64 344, !20, i64 352, !16, i64 360, !16, i64 368, !29, i64 376, !29, i64 384, !17, i64 392, !31, i64 400, !19, i64 408, !29, i64 416, !29, i64 424, !19, i64 432, !29, i64 440, !29, i64 448, !29, i64 456}
!33 = !{!"any p2 pointer", !16, i64 0}
!34 = !{!"Vec_Ptr_t_", !13, i64 0, !13, i64 4, !33, i64 8}
!35 = !{!34, !13, i64 4}
!36 = !{!32, !19, i64 56}
!37 = !{!34, !33, i64 8}
!38 = !{!16, !16, i64 0}
!39 = !{!"p1 _ZTS10Abc_Obj_t_", !16, i64 0}
!40 = !{!"Abc_Obj_t_", !20, i64 0, !39, i64 8, !13, i64 16, !13, i64 20, !13, i64 20, !13, i64 20, !13, i64 20, !13, i64 20, !13, i64 21, !13, i64 21, !13, i64 21, !13, i64 21, !13, i64 21, !24, i64 24, !24, i64 40, !16, i64 56, !12, i64 64, !12, i64 72}
!41 = !{!40, !13, i64 16}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!12, !12, i64 0}
!44 = !{!40, !20, i64 0}
!45 = !{!13, !13, i64 0}
!46 = !{!32, !19, i64 64}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!"p1 _ZTS6DdNode", !16, i64 0}
!49 = !{!"long", !12, i64 0}
!50 = !{!"DdNode", !13, i64 0, !13, i64 4, !48, i64 8, !12, i64 16, !49, i64 32}
!51 = !{!"p1 _ZTS7DdCache", !16, i64 0}
!52 = !{!"p1 _ZTS10DdSubtable", !16, i64 0}
!53 = !{!"p2 _ZTS6DdNode", !33, i64 0}
!54 = !{!"DdSubtable", !53, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48}
!55 = !{!"p1 long", !16, i64 0}
!56 = !{!"p1 _ZTS7MtrNode", !16, i64 0}
!57 = !{!"p1 _ZTS12DdLocalCache", !16, i64 0}
!58 = !{!"p1 _ZTS6DdHook", !16, i64 0}
!59 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!60 = !{!"DdManager", !50, i64 0, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !51, i64 80, !51, i64 88, !13, i64 96, !13, i64 100, !22, i64 104, !22, i64 112, !22, i64 120, !13, i64 128, !13, i64 132, !13, i64 136, !13, i64 140, !13, i64 144, !13, i64 148, !52, i64 152, !52, i64 160, !54, i64 168, !13, i64 224, !13, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !13, i64 248, !22, i64 256, !13, i64 264, !13, i64 268, !13, i64 272, !53, i64 280, !49, i64 288, !49, i64 296, !22, i64 304, !13, i64 312, !23, i64 320, !23, i64 328, !23, i64 336, !23, i64 344, !53, i64 352, !23, i64 360, !53, i64 368, !13, i64 376, !55, i64 384, !55, i64 392, !53, i64 400, !48, i64 408, !17, i64 416, !53, i64 424, !13, i64 432, !13, i64 436, !13, i64 440, !22, i64 448, !13, i64 456, !13, i64 460, !13, i64 464, !13, i64 468, !22, i64 472, !22, i64 480, !13, i64 488, !13, i64 492, !13, i64 496, !13, i64 500, !13, i64 504, !13, i64 508, !13, i64 512, !13, i64 516, !13, i64 520, !56, i64 528, !56, i64 536, !13, i64 544, !13, i64 548, !13, i64 552, !13, i64 556, !13, i64 560, !13, i64 564, !57, i64 568, !17, i64 576, !58, i64 584, !58, i64 592, !58, i64 600, !58, i64 608, !59, i64 616, !59, i64 624, !13, i64 632, !49, i64 640, !49, i64 648, !49, i64 656, !13, i64 664, !49, i64 672, !49, i64 680, !22, i64 688, !22, i64 696, !22, i64 704, !22, i64 712, !22, i64 720, !22, i64 728, !13, i64 736, !48, i64 744, !48, i64 752, !49, i64 760}
!61 = !{!60, !53, i64 352}
!62 = !{!48, !48, i64 0}
!63 = !{!60, !13, i64 136}
!64 = !{!53, !53, i64 0}
!65 = !{!50, !13, i64 0}
!66 = !{!59, !59, i64 0}
!67 = distinct !{!67, !42}
!68 = distinct !{!68, !42}
!69 = distinct !{!69, !42}
!70 = distinct !{!70, !42}
!71 = distinct !{!71, !42}
!72 = !{!32, !19, i64 32}
!73 = !{!40, !13, i64 28}
!74 = !{!40, !23, i64 32}
!75 = distinct !{!75, !47}
!76 = distinct !{!76, !47}
!77 = distinct !{!77, !42}
!78 = distinct !{!78, !42}
!79 = distinct !{!79, !42}
!80 = distinct !{!80, !42}
!81 = distinct !{!81, !42}
!82 = distinct !{!82, !42}
!83 = distinct !{!83, !42}
!84 = distinct !{!84, !42}
!85 = distinct !{!85, !42}
!86 = distinct !{!86, !42}
!87 = distinct !{!87, !42}
!88 = distinct !{!88, !42}
!89 = distinct !{!89, !42}
!90 = distinct !{!90, !42}
!91 = distinct !{!91, !42}
!92 = distinct !{!92, !47}
!93 = distinct !{!93, !47}
!94 = distinct !{!94, !42}
!95 = distinct !{!95, !42}
!96 = distinct !{!96, !42}
!97 = distinct !{!97, !42}
!98 = distinct !{!98, !42}
!99 = distinct !{!99, !42}
!100 = distinct !{!100, !42}
!101 = distinct !{!101, !42}
!102 = distinct !{!102, !42}
!103 = distinct !{!103, !42}
!104 = distinct !{!104, !42}
!105 = !{!60, !23, i64 336}
!106 = distinct !{!106, !42}
!107 = distinct !{!107, !42}
!108 = distinct !{!108, !42}
!109 = distinct !{!109, !42}
!110 = distinct !{!110, !42}
!111 = !{!32, !17, i64 8}
!112 = !{!32, !16, i64 256}
!113 = distinct !{null, null}
!114 = distinct !{!114, !42}
!115 = distinct !{!115, !42}
!116 = !{!32, !19, i64 432}
!117 = !{!"Vec_Att_t_", !13, i64 0, !33, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!118 = !{!117, !13, i64 0}
!119 = !{!117, !33, i64 8}
!120 = !{!117, !16, i64 32}
!121 = !{!117, !16, i64 16}
!122 = distinct !{!122, i1 false, !"vprintf"}
!123 = distinct !{!123, !122, !"vprintf: argument 0"}
!124 = distinct !{null}
!125 = !{!123}
end_hunk_2
