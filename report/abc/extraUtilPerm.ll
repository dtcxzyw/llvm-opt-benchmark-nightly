Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilPerm?download=true
inline.NumInlined: 140
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 36
begin_hunk_0_@Abc_ZddPermTestInt:.lr.ph.i
  %i.do = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.dn) ; 0 uses
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %indvars.iv.next.i71, %wide.trip.count.i68
  br i1 %exitcond.not.i72, label %Abc_ZddPermPrint.exit73, label %.lr.ph.i69, !llvm.loop !4

Abc_ZddPermPrint.exit73:                          ; preds = %.lr.ph.i69, %._crit_edge.thread
  %.1.i.4101105109 = phi i32 [ 0, %._crit_edge.thread ], [ %.1.i.4102, %.lr.ph.i69 ]
  %puts.i66 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.dp = call i32 @Abc_ZddBuildSet(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %.1.i.4101105109)
  %i.dq = tail call i32 @Abc_ZddUnion(ptr noundef %0, i32 noundef %.080, i32 noundef %i.dp) ; 6 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 3
  br i1 %exitcond90.not, label %bb.b, label %.lr.ph.i50, !llvm.loop !97

bb.b:                                             ; preds = %Abc_ZddPermPrint.exit73
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.dr = load i32, ptr %0, align 8, !tbaa !37
  %i.ds = sext i32 %i.dr to i64
  %i.dt = tail call noalias ptr @calloc(i64 noundef %i.ds, i64 noundef 4) #22 ; 3 uses
  tail call void @Abc_ZddPrint_rec(ptr noundef nonnull readonly %0, i32 noundef %i.dq, ptr noundef %i.dt, i32 noundef 0)
  %.not.i74 = icmp eq ptr %i.dt, null
  br i1 %.not.i74, label %Abc_ZddPrint.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.dt) #24
  br label %Abc_ZddPrint.exit

Abc_ZddPrint.exit:                                ; preds = %bb.b, %bb.c
  %i.du = tail call i32 @Abc_ZddCount_rec(ptr noundef nonnull readonly %0, i32 noundef %i.dq)
  tail call void @Abc_ZddUnmark_rec(ptr noundef nonnull readonly %0, i32 noundef %i.dq)
  %i.dv = tail call i32 @Abc_ZddCountPaths(ptr noundef nonnull %0, i32 noundef %i.dq)
  %i.dw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.du, i32 noundef %i.dv) ; 0 uses
  %.val = load i32, ptr %i.r, align 4, !tbaa !41
  %.val46 = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.dx = mul nsw i32 %.val, 3
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr [4 x i8], ptr %.val46, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !17
  %i.ec = tail call i32 @Abc_ZddPerm(ptr noundef nonnull %0, i32 noundef %i.dq, i32 noundef %i.eb) ; 4 uses
  %puts45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.ed = load i32, ptr %0, align 8, !tbaa !37
  %i.ee = sext i32 %i.ed to i64
  %i.ef = tail call noalias ptr @calloc(i64 noundef %i.ee, i64 noundef 4) #22 ; 3 uses
  tail call void @Abc_ZddPrint_rec(ptr noundef nonnull readonly %0, i32 noundef %i.ec, ptr noundef %i.ef, i32 noundef 0)
  %.not.i75 = icmp eq ptr %i.ef, null
  br i1 %.not.i75, label %Abc_ZddPrint.exit76, label %bb.d

bb.d:                                             ; preds = %Abc_ZddPrint.exit
  tail call void @free(ptr noundef nonnull %i.ef) #24
  br label %Abc_ZddPrint.exit76

Abc_ZddPrint.exit76:                              ; preds = %Abc_ZddPrint.exit, %bb.d
  %i.eg = tail call i32 @Abc_ZddCount_rec(ptr noundef nonnull readonly %0, i32 noundef %i.ec)
  tail call void @Abc_ZddUnmark_rec(ptr noundef nonnull readonly %0, i32 noundef %i.ec)
  %i.eh = tail call i32 @Abc_ZddCountPaths(ptr noundef nonnull %0, i32 noundef %i.ec)
  %i.ei = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.eg, i32 noundef %i.eh) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_ZddPermTest() local_unnamed_addr #7 {
.loopexit.i.4:
  %i.a = tail call ptr @Abc_ZddManAlloc(i32 noundef 10, i32 noundef 1048576) ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 5, ptr %i.b, align 4, !tbaa !41
  %i.c = load i32, ptr %i.a, align 8, !tbaa !37
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 4 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #23 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 -1, i64 %i.e, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.f, ptr %i.g, align 8, !tbaa !42
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.e) #23 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 -1, i64 %i.e, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.h, ptr %i.i, align 8, !tbaa !43
  %i.j = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #23 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %i.j, i8 -1, i64 100, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.j, ptr %i.k, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !tbaa !17
  %gep.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr %i.h, align 4, !tbaa !17
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %gep.i, align 4, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 4, ptr %gep.i.1, align 4, !tbaa !17
  %gep.i.1.1 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 5, ptr %gep.i.1.1, align 4, !tbaa !17
  %gep.i.1.2 = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 6, ptr %gep.i.1.2, align 4, !tbaa !17
  store <4 x i32> <i32 1, i32 1, i32 1, i32 2>, ptr %i.l, align 4, !tbaa !17
  store <4 x i32> <i32 2, i32 3, i32 4, i32 3>, ptr %i.m, align 4, !tbaa !17
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  store i32 7, ptr %gep.i.2, align 4, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 2, ptr %i.n, align 4, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 4, ptr %i.o, align 4, !tbaa !17
  %gep.i.2.1 = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i32 8, ptr %gep.i.2.1, align 4, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 3, ptr %i.p, align 4, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 4, ptr %i.q, align 4, !tbaa !17
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  store i32 9, ptr %gep.i.3, align 4, !tbaa !17
  tail call void @Abc_ZddPermTestInt(ptr noundef nonnull %i.a)
  tail call void @Abc_ZddManFree(ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_EnumerateCubeStatesZdd() local_unnamed_addr #7 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [9 x i32], align 16               ; 14 uses
  %i.b = alloca [24 x i32], align 16              ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #24
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %3, align 8, !tbaa !103
  %i.f = mul nsw i64 %i.e, 1000000
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !104
  %i.i = sdiv i64 %i.h, 1000
  %i.j = add nsw i64 %i.i, %i.f
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.j, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.k = call ptr @Abc_ZddManAlloc(i32 noundef 276, i32 noundef 134217728) ; 20 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  store i32 24, ptr %i.l, align 4, !tbaa !41
  %i.m = load i32, ptr %i.k, align 8, !tbaa !37
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2                      ; 4 uses
  %i.p = call noalias ptr @malloc(i64 noundef %i.o) #23 ; 4 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.p, i8 -1, i64 %i.o, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store ptr %i.p, ptr %i.q, align 8, !tbaa !42
  %i.r = call noalias ptr @malloc(i64 noundef %i.o) #23 ; 4 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 -1, i64 %i.o, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr %i.r, ptr %i.s, align 8, !tbaa !43
  %i.t = call noalias dereferenceable_or_null(2304) ptr @malloc(i64 noundef 2304) #23 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2304) %i.t, i8 -1, i64 2304, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !44
  br label %.lr.ph37.i

.loopexit.loopexit.i:                             ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.i.lcssa = phi i64 [ %i.ab, %middle.block ], [ %indvars.iv.next.i, %scalar.ph ]
  %i.v = trunc nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph37.i, %.loopexit.loopexit.i
  %.1.lcssa.i = phi i32 [ %.036.i, %.lr.ph37.i ], [ %i.v, %.loopexit.loopexit.i ]
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond45.not.i, label %Abc_ZddManCreatePerms.exit, label %.lr.ph37.i, !llvm.loop !1

.lr.ph37.i:                                       ; preds = %.loopexit.i, %Abc_Clock.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.i ], [ 0, %Abc_Clock.exit ] ; 6 uses
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %.loopexit.i ], [ 1, %Abc_Clock.exit ] ; 5 uses
  %.036.i = phi i32 [ %.1.lcssa.i, %.loopexit.i ], [ 0, %Abc_Clock.exit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = icmp samesign ult i64 %indvars.iv, 23
  br i1 %i.w, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.lr.ph37.i
  %i.x = sext i32 %.036.i to i64                  ; 3 uses
  %invariant.gep.i.idx = mul nuw nsw i64 %indvars.iv, 96
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.t, i64 %invariant.gep.i.idx ; 2 uses
  %i.y = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.z = sub nuw nsw i64 23, %indvars.iv          ; 2 uses
  %min.iters.check = icmp samesign ugt i64 %indvars.iv, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.z, 24                       ; 4 uses
  %i.aa = add nuw i64 %indvars.iv38.i, %n.vec
  %i.ab = add nsw i64 %n.vec, %i.x                ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %4 = trunc i64 %indvars.iv38.i to i32
  %broadcast.splatinsert108 = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat109 = shufflevector <4 x i32> %broadcast.splatinsert108, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat109, <i32 0, i32 1, i32 2, i32 3>
  %broadcast.splatinsert110 = insertelement <4 x i32> poison, i32 %.036.i, i64 0
  %broadcast.splat111 = shufflevector <4 x i32> %broadcast.splatinsert110, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction112 = add <4 x i32> %broadcast.splat111, <i32 0, i32 1, i32 2, i32 3>
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv38.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind113 = phi <4 x i32> [ %induction112, %vector.ph ], [ %vec.ind.next115, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add114 = add <4 x i32> %vec.ind113, splat (i32 4)
  %i.ad = add i64 %index, %i.x                    ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ae, align 4, !tbaa !17
  store <4 x i32> %broadcast.splat, ptr %i.af, align 4, !tbaa !17
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x i32> %vec.ind, ptr %i.ag, align 4, !tbaa !17
  store <4 x i32> %step.add, ptr %i.ah, align 4, !tbaa !17
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %vec.ind113, ptr %i.ai, align 4, !tbaa !17
  store <4 x i32> %step.add114, ptr %i.aj, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next115 = add <4 x i32> %vec.ind113, splat (i32 8)
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv40.i.ph = phi i64 [ %indvars.iv38.i, %.lr.ph.i ], [ %i.aa, %middle.block ]
  %indvars.iv.i.ph = phi i64 [ %i.x, %.lr.ph.i ], [ %i.ab, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %scalar.ph ], [ %indvars.iv40.i.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.i
  store i32 %i.y, ptr %i.al, align 4, !tbaa !17
  %i.am = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.an = trunc nuw nsw i64 %indvars.iv40.i to i32
  store i32 %i.an, ptr %i.am, align 4, !tbaa !17
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv40.i
  %i.ao = trunc nsw i64 %indvars.iv.i to i32
  store i32 %i.ao, ptr %gep.i, align 4, !tbaa !17
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next41.i, 24
  br i1 %exitcond.not.i, label %.loopexit.loopexit.i, label %scalar.ph, !llvm.loop !99

Abc_ZddManCreatePerms.exit:                       ; preds = %.loopexit.i
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.aq = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #24
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %Abc_Clock.exit72, label %bb.c

bb.c:                                             ; preds = %Abc_ZddManCreatePerms.exit
  %i.as = load i64, ptr %2, align 8, !tbaa !103
  %i.at = mul nsw i64 %i.as, 1000000
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !104
  %i.aw = sdiv i64 %i.av, 1000
  %i.ax = add nsw i64 %i.aw, %i.at
  br label %Abc_Clock.exit72

Abc_Clock.exit72:                                 ; preds = %Abc_ZddManCreatePerms.exit, %bb.c
  %.0.i71 = phi i64 [ %i.ax, %bb.c ], [ -1, %Abc_ZddManCreatePerms.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ay = sub nsw i64 %.0.i71, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15)
  %i.az = sitofp i64 %i.ay to double
  %i.ba = fdiv double %i.az, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, double noundef %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  br label %.preheader81

.preheader81:                                     ; preds = %Abc_Clock.exit72, %Abc_ZddPerm2Comb.exit.preheader
  %indvars.iv99 = phi i64 [ 0, %Abc_Clock.exit72 ], [ %indvars.iv.next100, %Abc_ZddPerm2Comb.exit.preheader ] ; 2 uses
  %.06686 = phi i32 [ 1, %Abc_Clock.exit72 ], [ %i.jh, %Abc_ZddPerm2Comb.exit.preheader ]
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.b, align 16, !tbaa !17
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.bb, align 16, !tbaa !17
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %i.bc, align 16, !tbaa !17
  store <4 x i32> <i32 12, i32 13, i32 14, i32 15>, ptr %i.bd, align 16, !tbaa !17
  store <4 x i32> <i32 16, i32 17, i32 18, i32 19>, ptr %i.be, align 16, !tbaa !17
  store <4 x i32> <i32 20, i32 21, i32 22, i32 23>, ptr %i.bf, align 16, !tbaa !17
  %i.bo = getelementptr inbounds nuw [72 x i8], ptr @__const.Abc_EnumerateCubeStatesZdd.pXYZ, i64 %indvars.iv99 ; 18 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !17
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [4 x i8], ptr %i.b, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -4     ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !17
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr [4 x i8], ptr %i.b, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 -4     ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !17
  store i32 %i.bz, ptr %i.bs, align 4, !tbaa !17
  store i32 %i.bt, ptr %i.by, align 4, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !17
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr [4 x i8], ptr %i.b, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4     ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !17
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !17
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr [4 x i8], ptr %i.b, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -4     ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !17
  store i32 %i.cl, ptr %i.ce, align 4, !tbaa !17
  store i32 %i.cf, ptr %i.ck, align 4, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !17
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [4 x i8], ptr %i.b, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 -4     ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !17
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !17
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [4 x i8], ptr %i.b, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 -4     ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !17
  store i32 %i.cx, ptr %i.cq, align 4, !tbaa !17
  store i32 %i.cr, ptr %i.cw, align 4, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !17
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr [4 x i8], ptr %i.b, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 -4     ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.df = load i32, ptr %i.de, align 4, !tbaa !17
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.b, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -4     ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !17
  store i32 %i.dj, ptr %i.dc, align 4, !tbaa !17
  store i32 %i.dd, ptr %i.di, align 4, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !17
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr [4 x i8], ptr %i.b, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -4     ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !17
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr [4 x i8], ptr %i.b, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 -4     ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !17
  store i32 %i.dv, ptr %i.do, align 4, !tbaa !17
  store i32 %i.dp, ptr %i.du, align 4, !tbaa !17
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !17
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr [4 x i8], ptr %i.b, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 -4     ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !17
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !17
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr [4 x i8], ptr %i.b, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.ef, i64 -4     ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !17
  store i32 %i.eh, ptr %i.ea, align 4, !tbaa !17
  store i32 %i.eb, ptr %i.eg, align 4, !tbaa !17
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !17
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr [4 x i8], ptr %i.b, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 -4     ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !17
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bo, i64 52
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !17
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr [4 x i8], ptr %i.b, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 -4     ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !17
  store i32 %i.et, ptr %i.em, align 4, !tbaa !17
  store i32 %i.en, ptr %i.es, align 4, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !17
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr [4 x i8], ptr %i.b, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 -4     ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !17
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bo, i64 60
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !17
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr [4 x i8], ptr %i.b, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 -4     ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !17
  store i32 %i.ff, ptr %i.ey, align 4, !tbaa !17
  store i32 %i.ez, ptr %i.fe, align 4, !tbaa !17
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !17
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr [4 x i8], ptr %i.b, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.fj, i64 -4     ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !17
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bo, i64 68
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !17
end_hunk_0
