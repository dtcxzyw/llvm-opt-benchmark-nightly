inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hypre_StructGridRef:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !18
  store ptr %0, ptr %1, align 8, !tbaa !19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructGridDestroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18
  %i.c = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !18
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = tail call i32 @hypre_BoxDestroy(ptr noundef %i.f) #10 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = tail call i32 @hypre_BoxNeighborsDestroy(ptr noundef %i.i) #10 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  tail call void @hypre_Free(ptr noundef %i.l) #10
  store ptr null, ptr %i.k, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.o = tail call i32 @hypre_BoxArrayDestroy(ptr noundef %i.n) #10 ; 0 uses
  tail call void @hypre_Free(ptr noundef nonnull %0) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 0
}

declare i32 @hypre_BoxDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxNeighborsDestroy(ptr noundef) local_unnamed_addr #2

declare void @hypre_Free(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxArrayDestroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_StructGridSetHoodInfo(ptr nofree noundef writeonly captures(none) initializes((32, 36)) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.a, align 8, !tbaa !17
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_StructGridSetPeriodic(ptr nofree noundef writeonly captures(none) initializes((56, 68)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.a, ptr %i.b, align 8, !tbaa !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.d, ptr %i.e, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.g, ptr %i.h, align 8, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructGridSetExtents(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @hypre_BoxCreate() #10     ; 3 uses
  %i.b = tail call i32 @hypre_BoxSetExtents(ptr noundef %i.a, ptr noundef %1, ptr noundef %2) #10 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = tail call i32 @hypre_AppendBox(ptr noundef %i.a, ptr noundef %i.d) #10 ; 0 uses
  %i.f = tail call i32 @hypre_BoxDestroy(ptr noundef %i.a) #10 ; 0 uses
  ret i32 0
}

declare ptr @hypre_BoxCreate() local_unnamed_addr #2

declare i32 @hypre_BoxSetExtents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_AppendBox(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructGridSetBoxes(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  tail call void @hypre_Free(ptr noundef %i.b) #10
  store ptr %1, ptr %i.a, align 8, !tbaa !16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructGridSetHood(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call ptr @hypre_BoxArrayCreate(i32 noundef %5) #10 ; 2 uses
  %i.c = shl i32 %5, 2
  %i.d = tail call ptr @hypre_MAlloc(i32 noundef %i.c) #10 ; 2 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !24
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.h = sext i32 %4 to i64
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.i = add nsw i64 %indvars.iv, %i.h            ; 2 uses
  %i.j = getelementptr inbounds [24 x i8], ptr %i.f, i64 %i.i ; 6 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv ; 6 uses
  store i32 %i.k, ptr %i.l, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.n, ptr %i.o, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.q, ptr %i.r, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 %i.t, ptr %i.u, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !4
  %i.ab = getelementptr inbounds [4 x i8], ptr %3, i64 %i.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  tail call void @hypre_Free(ptr noundef %i.af) #10
  store ptr null, ptr %i.ae, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23
  tail call void @hypre_Free(ptr noundef %i.ah) #10
  store ptr %i.b, ptr %i.ae, align 8, !tbaa !16
  store ptr %i.d, ptr %i.ag, align 8, !tbaa !23
  %i.ai = call i32 @hypre_BoxNeighborsCreate(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.an = call i32 @hypre_BoxDestroy(ptr noundef %i.am) #10 ; 0 uses
  store ptr %7, ptr %i.al, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 0
}

declare i32 @hypre_BoxNeighborsCreate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructGridAssemble(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.n = call i32 @hypre_GatherAllBoxes(i32 noundef %i.k, ptr noundef %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !29
  %i.q = tail call ptr @hypre_BoxCreate() #10     ; 6 uses
  %i.r = icmp sgt i32 %i.m, 0
  br i1 %i.r, label %.lr.ph129, label %.lr.ph131

.lr.ph129:                                        ; preds = %bb.b
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %wide.trip.count159 = zext nneg i32 %i.m to i64
  br label %bb.c

.preheader:                                       ; preds = %._crit_edge
  %i.x = icmp slt i32 %i.m, 3
  br i1 %i.x, label %.lr.ph131, label %._crit_edge132

.lr.ph131:                                        ; preds = %bb.b, %.preheader
  %1 = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %2 = sext i32 %i.m to i64                       ; 4 uses
  %3 = add i32 %i.m, 1
  %4 = zext i32 %3 to i64
  %5 = sub nsw i64 4, %4                          ; 3 uses
  %min.iters.check = icmp ult i64 %5, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph131
  %6 = add i32 %i.m, 1
  %7 = zext i32 %6 to i64
  %8 = sub nsw i64 3, %7                          ; 2 uses
  %9 = trunc i64 %8 to i32
  %10 = sub i32 -2, %i.m
  %11 = icmp ult i32 %10, %9
  %12 = icmp ugt i64 %8, 4294967295
  %13 = or i1 %11, %12
  br i1 %13, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %5, -2                         ; 3 uses
  %14 = add nsw i64 %n.vec, %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %15 = add i64 %index, %2                        ; 2 uses
  %16 = getelementptr inbounds [4 x i8], ptr %i.q, i64 %15
  store <2 x i32> zeroinitializer, ptr %16, align 4, !tbaa !4
  %17 = getelementptr inbounds [4 x i8], ptr %1, i64 %15
  store <2 x i32> zeroinitializer, ptr %17, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %._crit_edge132, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph131, %middle.block
  %indvars.iv161.ph = phi i64 [ %2, %vector.scevcheck ], [ %2, %.lr.ph131 ], [ %14, %middle.block ]
  br label %scalar.ph

bb.c:                                             ; preds = %.lr.ph129, %._crit_edge
  %indvars.iv156 = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next157, %._crit_edge ] ; 11 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv156
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4    ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv156
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4  ; 3 uses
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !29  ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.ac to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ae = icmp eq i32 %i.ac, 1
  br i1 %i.ae, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.0125 = phi i32 [ %i.ab, %.lr.ph.preheader.new ], [ %i.at, %.lr.ph ]
  %.0102124 = phi i32 [ %i.z, %.lr.ph.preheader.new ], [ %.0102..1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv156
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %.0102. = tail call i32 @llvm.smin.i32(i32 %.0102124, i32 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv156
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = tail call i32 @llvm.smax.i32(i32 %.0125, i32 %i.ak)
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv156
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %.0102..1 = tail call i32 @llvm.smin.i32(i32 %.0102., i32 %i.ap) ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv156
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %i.as) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !34

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0125.epil.init = phi i32 [ %i.ab, %.lr.ph.preheader ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ]
  %.0102124.epil.init = phi i32 [ %i.z, %.lr.ph.preheader ], [ %.0102..1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod193 = trunc i32 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv.epil.init ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv156
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %.0102..epil = tail call i32 @llvm.smin.i32(i32 %.0102124.epil.init, i32 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv156
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = tail call i32 @llvm.smax.i32(i32 %.0125.epil.init, i32 %i.az)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  %.0102.lcssa = phi i32 [ %i.z, %bb.c ], [ %.0102..1, %._crit_edge.loopexit.unr-lcssa ], [ %.0102..epil, %.lr.ph.epil.preheader ]
  %.0.lcssa = phi i32 [ %i.ab, %bb.c ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ], [ %i.ba, %.lr.ph.epil.preheader ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv156
  store i32 %.0102.lcssa, ptr %i.bb, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv156
  store i32 %.0.lcssa, ptr %i.bc, align 4, !tbaa !4
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %.preheader, label %bb.c, !llvm.loop !35

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %scalar.ph ], [ %indvars.iv161.ph, %scalar.ph.preheader ] ; 3 uses
  %19 = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv161
  store i32 0, ptr %19, align 4, !tbaa !4
  %20 = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv161
  store i32 0, ptr %20, align 4, !tbaa !4
  %indvars.iv.next162 = add nsw i64 %indvars.iv161, 1 ; 2 uses
  %21 = and i64 %indvars.iv.next162, 4294967295
  %exitcond164.not = icmp eq i64 %21, 3
  br i1 %exitcond164.not, label %._crit_edge132, label %scalar.ph, !llvm.loop !36

._crit_edge132:                                   ; preds = %scalar.ph, %middle.block, %.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.q, ptr %i.bd, align 8, !tbaa !21
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !29 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph136, label %._crit_edge137

.lr.ph136:                                        ; preds = %._crit_edge132
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !24
  %wide.trip.count168 = zext nneg i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph136, %bb.d
  %indvars.iv165 = phi i64 [ 0, %.lr.ph136 ], [ %indvars.iv.next166, %bb.d ] ; 2 uses
  %.0104134 = phi i32 [ 0, %.lr.ph136 ], [ %i.cf, %bb.d ]
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %indvars.iv165 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bn = sub nsw i32 %i.bl, %i.bm
  %i.bo = tail call i32 @llvm.smax.i32(i32 %i.bn, i32 -1)
  %spec.select = add nsw i32 %i.bo, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = sub nsw i32 %i.bq, %i.bs                ; 2 uses
  %i.bu = add nuw nsw i32 %i.bt, 1
  %i.bv = mul nsw i32 %i.bu, %spec.select
  %.inv121 = icmp slt i32 %i.bt, 0
  %i.bw = select i1 %.inv121, i32 0, i32 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = sub nsw i32 %i.by, %i.ca                ; 2 uses
  %i.cc = add nuw nsw i32 %i.cb, 1
  %i.cd = mul nsw i32 %i.bw, %i.cc
  %.inv122 = icmp slt i32 %i.cb, 0
  %i.ce = select i1 %.inv122, i32 0, i32 %i.cd
  %i.cf = add nuw nsw i32 %i.ce, %.0104134        ; 2 uses
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %._crit_edge137, label %bb.d, !llvm.loop !37

._crit_edge137:                                   ; preds = %bb.d, %._crit_edge132
  %.0104.lcssa = phi i32 [ 0, %._crit_edge132 ], [ %i.cf, %bb.d ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.0104.lcssa, ptr %i.cg, align 4, !tbaa !38
  %i.ch = call i32 @hypre_StructGridPeriodicAllBoxes(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 0 uses
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !29
  %i.cl = shl i32 %i.ck, 2
  %i.cm = tail call ptr @hypre_MAlloc(i32 noundef %i.cl) #10 ; 3 uses
  %i.cn = load i32, ptr %i.cj, align 8, !tbaa !29
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph141, label %._crit_edge142

.lr.ph141:                                        ; preds = %._crit_edge137, %.lr.ph141
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %.lr.ph141 ], [ 0, %._crit_edge137 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv170
  %i.cq = trunc nuw nsw i64 %indvars.iv170 to i32
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !4
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %i.cr = load i32, ptr %i.cj, align 8, !tbaa !29
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next171, %i.cs
  br i1 %i.ct, label %.lr.ph141, label %._crit_edge142, !llvm.loop !39

._crit_edge142:                                   ; preds = %.lr.ph141, %._crit_edge137
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.cv = load i32, ptr %i.d, align 4, !tbaa !4   ; 2 uses
  %i.cw = load i32, ptr %i.e, align 4, !tbaa !4
  %i.cx = call i32 @hypre_BoxNeighborsCreate(ptr noundef nonnull %i.ci, ptr noundef %i.cu, ptr noundef %i.cm, i32 noundef %i.cv, i32 noundef %i.p, i32 noundef %i.cw, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !28
  store ptr %i.cy, ptr %i.h, align 8, !tbaa !22
  %i.cz = load i32, ptr %i.o, align 8, !tbaa !29
  %i.da = shl i32 %i.cz, 2
  %i.db = call ptr @hypre_MAlloc(i32 noundef %i.da) #10 ; 2 uses
  %i.dc = load i32, ptr %i.o, align 8, !tbaa !29
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph145.preheader, label %._crit_edge146

.lr.ph145.preheader:                              ; preds = %._crit_edge142
  %i.de = sext i32 %i.cv to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.cm, i64 %i.de
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %.lr.ph145
  %indvars.iv173 = phi i64 [ 0, %.lr.ph145.preheader ], [ %indvars.iv.next174, %.lr.ph145 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv173
  %i.df = load i32, ptr %gep, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv173
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !4
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.dh = load i32, ptr %i.o, align 8, !tbaa !29
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next174, %i.di
  br i1 %i.dj, label %.lr.ph145, label %._crit_edge146, !llvm.loop !41

._crit_edge146:                                   ; preds = %.lr.ph145, %._crit_edge142
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.db, ptr %i.dk, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge146, %bb.a
  %i.dl = phi ptr [ %.pre, %._crit_edge146 ], [ %i.i, %bb.a ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !17
  %i.do = call i32 @hypre_BoxNeighborsAssemble(ptr noundef %i.dl, i32 noundef %i.dn, i32 noundef 1) #10 ; 0 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !29 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph150, label %._crit_edge151

.lr.ph150:                                        ; preds = %bb.e
  %i.ds = load ptr, ptr %i.g, align 8, !tbaa !24
  %wide.trip.count179 = zext nneg i32 %i.dq to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph150, %bb.f
  %indvars.iv176 = phi i64 [ 0, %.lr.ph150 ], [ %indvars.iv.next177, %bb.f ] ; 2 uses
  %.1105148 = phi i32 [ 0, %.lr.ph150 ], [ %i.ep, %bb.f ]
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %indvars.iv176 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4
  %i.dw = load i32, ptr %i.dt, align 4, !tbaa !4
  %i.dx = sub nsw i32 %i.dv, %i.dw
  %i.dy = call i32 @llvm.smax.i32(i32 %i.dx, i32 -1)
  %spec.select118 = add nsw i32 %i.dy, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4
  %i.ed = sub nsw i32 %i.ea, %i.ec                ; 2 uses
  %i.ee = add nuw nsw i32 %i.ed, 1
  %i.ef = mul nsw i32 %i.ee, %spec.select118
  %.inv = icmp slt i32 %i.ed, 0
  %i.eg = select i1 %.inv, i32 0, i32 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.el = sub nsw i32 %i.ei, %i.ek                ; 2 uses
  %i.em = add nuw nsw i32 %i.el, 1
  %i.en = mul nsw i32 %i.eg, %i.em
  %.inv119 = icmp slt i32 %i.el, 0
  %i.eo = select i1 %.inv119, i32 0, i32 %i.en
  %i.ep = add nuw nsw i32 %i.eo, %.1105148        ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %._crit_edge151, label %bb.f, !llvm.loop !42

._crit_edge151:                                   ; preds = %bb.f, %bb.e
  %.1105.lcssa = phi i32 [ 0, %bb.e ], [ %i.ep, %bb.f ]
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.1105.lcssa, ptr %i.eq, align 8, !tbaa !43
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_GatherAllBoxes(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.f = call i32 @hypre_MPI_Comm_size(i32 noundef %0, ptr noundef nonnull %i.c) #10 ; 0 uses
  %i.g = call i32 @hypre_MPI_Comm_rank(i32 noundef %0, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !29
  %i.j = mul nsw i32 %i.i, 7
  store i32 %i.j, ptr %i.e, align 4, !tbaa !4
  %i.k = load i32, ptr %i.c, align 4, !tbaa !4
  %i.l = shl i32 %i.k, 2
  %i.m = call ptr @hypre_MAlloc(i32 noundef %i.l) #10 ; 5 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !4
  %i.o = shl i32 %i.n, 2
  %i.p = call ptr @hypre_MAlloc(i32 noundef %i.o) #10 ; 4 uses
  %i.q = call i32 @hypre_MPI_Allgather(ptr noundef nonnull %i.e, i32 noundef 1, i32 noundef 1, ptr noundef %i.m, i32 noundef 1, i32 noundef 1, i32 noundef %0) #10 ; 0 uses
  store i32 0, ptr %i.p, align 4, !tbaa !4
  %i.r = load i32, ptr %i.m, align 4, !tbaa !4    ; 3 uses
  %i.s = load i32, ptr %i.c, align 4, !tbaa !4
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.u = phi i32 [ %i.z, %.lr.ph ], [ %i.r, %bb.a ]
  %i.v = phi i32 [ %i.w, %.lr.ph ], [ 0, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %.0102103 = phi i32 [ %i.aa, %.lr.ph ], [ %i.r, %bb.a ]
  %i.w = add nsw i32 %i.u, %i.v                   ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4    ; 2 uses
  %i.aa = add nsw i32 %i.z, %.0102103             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0102.lcssa = phi i32 [ %i.r, %bb.a ], [ %i.aa, %.lr.ph ] ; 4 uses
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !4
  %i.af = shl i32 %i.ae, 2
  %i.ag = call ptr @hypre_MAlloc(i32 noundef %i.af) #10 ; 9 uses
  %i.ah = shl i32 %.0102.lcssa, 2
  %i.ai = call ptr @hypre_MAlloc(i32 noundef %i.ah) #10 ; 9 uses
  %i.aj = load i32, ptr %i.h, align 8, !tbaa !29
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph112, label %._crit_edge113

.lr.ph112:                                        ; preds = %._crit_edge
  %i.al = load ptr, ptr %1, align 8, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph112, %bb.b
  %indvars.iv135 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next136, %bb.b ] ; 2 uses
  %.0100109 = phi i32 [ 0, %.lr.ph112 ], [ %i.bq, %bb.b ] ; 5 uses
  %i.am = load i32, ptr %i.d, align 4, !tbaa !4
  %i.an = sext i32 %.0100109 to i64               ; 4 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.an
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv135 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.as = sext i32 %.0100109 to i64
  %i.at = getelementptr [4 x i8], ptr %i.ag, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 4
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !4
  %i.av = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.aw = getelementptr [4 x i8], ptr %i.ag, i64 %i.an
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !4
  %i.ay = add i32 %.0100109, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = sext i32 %i.ay to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bb
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = getelementptr [4 x i8], ptr %i.ag, i64 %i.an
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !4
  %i.bh = add i32 %.0100109, 5
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = sext i32 %i.bh to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bk
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = getelementptr [4 x i8], ptr %i.ag, i64 %i.an
  %i.bp = getelementptr i8, ptr %i.bo, i64 24
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !4
  %i.bq = add i32 %.0100109, 7
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.br = load i32, ptr %i.h, align 8, !tbaa !29
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next136, %i.bs
  br i1 %i.bt, label %bb.b, label %._crit_edge113, !llvm.loop !45

._crit_edge113:                                   ; preds = %bb.b, %._crit_edge
  %i.bu = load i32, ptr %i.e, align 4, !tbaa !4
  %i.bv = call i32 @hypre_MPI_Allgatherv(ptr noundef %i.ag, i32 noundef %i.bu, i32 noundef 1, ptr noundef %i.ai, ptr noundef nonnull %i.m, ptr noundef nonnull %i.p, i32 noundef 1, i32 noundef %0) #10 ; 0 uses
  %i.bw = sdiv i32 %.0102.lcssa, 7                ; 2 uses
  %i.bx = call ptr @hypre_BoxArrayCreate(i32 noundef %i.bw) #10 ; 2 uses
  %i.by = shl nsw i32 %i.bw, 2
  %i.bz = call ptr @hypre_MAlloc(i32 noundef %i.by) #10 ; 2 uses
  %i.ca = call ptr @hypre_BoxCreate() #10         ; 8 uses
  %i.cb = icmp sgt i32 %.0102.lcssa, 0
  br i1 %i.cb, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %._crit_edge113
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph123, %bb.e
  %indvars.iv146 = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next147, %bb.e ] ; 4 uses
  %.0121 = phi i32 [ -1, %.lr.ph123 ], [ %.1, %bb.e ] ; 3 uses
  %.2118 = phi i32 [ 0, %.lr.ph123 ], [ %i.dk, %bb.e ] ; 5 uses
  %i.cl = sext i32 %.2118 to i64                  ; 4 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv146 ; 2 uses
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !4
  %i.cp = sext i32 %.2118 to i64
  %i.cq = getelementptr [4 x i8], ptr %i.ai, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  store i32 %i.cs, ptr %i.a, align 4, !tbaa !4
  %i.ct = getelementptr [4 x i8], ptr %i.ai, i64 %i.cl
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  store i32 %i.cv, ptr %i.b, align 4, !tbaa !4
  %i.cw = add i32 %.2118, 3
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  store i32 %i.cz, ptr %i.ch, align 4, !tbaa !4
  %i.da = getelementptr [4 x i8], ptr %i.ai, i64 %i.cl
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4
  store i32 %i.dc, ptr %i.ci, align 4, !tbaa !4
  %i.dd = add i32 %.2118, 5
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  store i32 %i.dg, ptr %i.cj, align 4, !tbaa !4
  %i.dh = getelementptr [4 x i8], ptr %i.ai, i64 %i.cl
  %i.di = getelementptr i8, ptr %i.dh, i64 24
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  store i32 %i.dj, ptr %i.ck, align 4, !tbaa !4
  %i.dk = add i32 %.2118, 7                       ; 2 uses
  %i.dl = call i32 @hypre_BoxSetExtents(ptr noundef %i.ca, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10 ; 0 uses
  %i.dm = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.dn = load ptr, ptr %i.bx, align 8, !tbaa !24
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %indvars.iv146 ; 6 uses
  store i32 %i.dm, ptr %i.do, align 4, !tbaa !4
  %i.dp = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !4
  %i.dr = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !4
  %i.dt = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !4
  %i.dv = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !4
  %i.dx = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !4
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %i.dz = icmp slt i32 %.0121, 0
  br i1 %i.dz, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ea = load i32, ptr %i.co, align 4, !tbaa !4
  %i.eb = load i32, ptr %i.d, align 4, !tbaa !4
  %i.ec = icmp eq i32 %i.ea, %i.eb
  %i.ed = trunc nuw nsw i64 %indvars.iv146 to i32
  %spec.select = select i1 %i.ec, i32 %i.ed, i32 %.0121
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.0121, %bb.c ], [ %spec.select, %bb.d ] ; 2 uses
  %i.ee = icmp slt i32 %i.dk, %.0102.lcssa
  br i1 %i.ee, label %bb.c, label %._crit_edge124, !llvm.loop !46

._crit_edge124:                                   ; preds = %bb.e, %._crit_edge113
  %.0.lcssa = phi i32 [ -1, %._crit_edge113 ], [ %.1, %bb.e ]
  %i.ef = call i32 @hypre_BoxDestroy(ptr noundef %i.ca) #10 ; 0 uses
  call void @hypre_Free(ptr noundef %i.ag) #10
  call void @hypre_Free(ptr noundef %i.ai) #10
  call void @hypre_Free(ptr noundef nonnull %i.m) #10
  call void @hypre_Free(ptr noundef nonnull %i.p) #10
  store ptr %i.bx, ptr %2, align 8, !tbaa !30
  store ptr %i.bz, ptr %3, align 8, !tbaa !40
  store i32 %.0.lcssa, ptr %4, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructGridPeriodicAllBoxes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !4    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !4    ; 3 uses
  %.not = icmp ne i32 %i.b, 0                     ; 3 uses
  %spec.select.neg = sext i1 %.not to i32         ; 2 uses
  %.not176 = icmp ne i32 %i.d, 0                  ; 5 uses
  %.0171.neg = sext i1 %.not176 to i32            ; 2 uses
  %.not177 = icmp ne i32 %i.f, 0                  ; 3 uses
  %.0172.neg = sext i1 %.not177 to i32            ; 4 uses
  %i.g = or i32 %i.d, %i.b
  %i.h = or i32 %i.g, %i.f
  %or.cond3 = icmp eq i32 %i.h, 0
  br i1 %or.cond3, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !30     ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !40     ; 4 uses
  %i.k = load i32, ptr %3, align 4, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29   ; 5 uses
  %i.n = select i1 %.not, i32 3, i32 1
  %i.o = select i1 %.not176, i32 3, i32 1
  %i.p = mul nuw nsw i32 %i.o, %i.n
  %i.q = select i1 %.not177, i32 3, i32 1
  %i.r = mul nuw nsw i32 %i.p, %i.q
  %i.s = mul nsw i32 %i.r, %i.m                   ; 2 uses
  %i.t = tail call ptr @hypre_BoxArrayCreate(i32 noundef %i.s) #10 ; 4 uses
  %i.u = shl i32 %i.s, 2
  %i.v = tail call ptr @hypre_MAlloc(i32 noundef %i.u) #10 ; 3 uses
  %i.w = icmp sgt i32 %i.m, 0
  br i1 %i.w, label %.preheader184.preheader, label %._crit_edge

.preheader184.preheader:                          ; preds = %bb.b
  %i.x = zext nneg i32 %i.m to i64
  %i.y = select i1 %.not177, i32 2, i32 1         ; 4 uses
  %i.z = select i1 %.not176, i32 2, i32 1         ; 2 uses
  %i.aa = select i1 %.not, i32 2, i32 1           ; 2 uses
  %not..not176 = xor i1 %.not176, true
  %i.ab = zext i1 %not..not176 to i32
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader184.preheader, %.split206.us
  %.0211 = phi i32 [ %.1, %.split206.us ], [ 0, %.preheader184.preheader ]
  %.0161210 = phi i32 [ %.us-phi207, %.split206.us ], [ 0, %.preheader184.preheader ] ; 3 uses
  %.0164209 = phi i32 [ %.us-phi, %.split206.us ], [ 0, %.preheader184.preheader ] ; 9 uses
  %.0173208 = phi i32 [ %.1174, %.split206.us ], [ undef, %.preheader184.preheader ]
  %i.ac = sext i32 %.0164209 to i64               ; 3 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = sext i32 %.0161210 to i64
  %i.af = add nsw i32 %.0164209, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %i.af)
  br label %bb.c

bb.c:                                             ; preds = %.preheader184, %bb.d
  %indvars.iv217 = phi i64 [ %i.ac, %.preheader184 ], [ %indvars.iv.next218, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ %i.ae, %.preheader184 ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv217 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !4
  %.not178 = icmp eq i32 %i.ah, %i.ai
  br i1 %.not178, label %bb.d, label %.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.ak = getelementptr inbounds [24 x i8], ptr %i.aj, i64 %indvars.iv217 ; 6 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.an = getelementptr inbounds [24 x i8], ptr %i.am, i64 %indvars.iv ; 6 uses
  store i32 %i.al, ptr %i.an, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !4
  %i.bd = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.be = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %indvars.iv.next218 = add nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.bf = icmp slt i64 %indvars.iv.next218, %i.x
  br i1 %i.bf, label %bb.c, label %.split.loop.exit241, !llvm.loop !47

.split.loop.exit:                                 ; preds = %bb.c
  %i.bg = trunc nsw i64 %indvars.iv217 to i32
  br label %.split.loop.exit241

.split.loop.exit241:                              ; preds = %bb.d, %.split.loop.exit
  %.1165.lcssa = phi i32 [ %i.bg, %.split.loop.exit ], [ %smax, %bb.d ] ; 5 uses
  %.1162.lcssa.in = phi i64 [ %indvars.iv, %.split.loop.exit ], [ %indvars.iv.next, %bb.d ]
  %.1162.lcssa = trunc i64 %.1162.lcssa.in to i32 ; 2 uses
  %i.bh = icmp slt i32 %.0164209, %.1165.lcssa
  %.fr = freeze i1 %i.bh
  br i1 %.fr, label %.preheader183.us.preheader, label %.preheader183

.preheader183.us.preheader:                       ; preds = %.split.loop.exit241
  %i.bi = sext i32 %.1165.lcssa to i64
  br label %.preheader183.us

.preheader183.us:                                 ; preds = %.preheader183.us.preheader, %.split198.us.us
  %.0160203.us = phi i32 [ %i.cx, %.split198.us.us ], [ %spec.select.neg, %.preheader183.us.preheader ] ; 3 uses
  %.2163202.us = phi i32 [ %.6.us.us.us, %.split198.us.us ], [ %.1162.lcssa, %.preheader183.us.preheader ]
  %.2166201.us = phi i32 [ %.6170.us.us.us, %.split198.us.us ], [ %.1165.lcssa, %.preheader183.us.preheader ]
  %i.bj = mul nsw i32 %.0160203.us, %i.b          ; 2 uses
  br label %.preheader182.us.us

.preheader182.us.us:                              ; preds = %.split.us.us.us, %.preheader183.us
  %.0159196.us.us = phi i32 [ %.0171.neg, %.preheader183.us ], [ %i.cw, %.split.us.us.us ] ; 3 uses
  %.3195.us.us = phi i32 [ %.2163202.us, %.preheader183.us ], [ %.6.us.us.us, %.split.us.us.us ]
  %.3167194.us.us = phi i32 [ %.2166201.us, %.preheader183.us ], [ %.6170.us.us.us, %.split.us.us.us ]
  %i.bk = or i32 %.0159196.us.us, %.0160203.us
  %i.bl = mul nsw i32 %.0159196.us.us, %i.d       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %..loopexit_crit_edge.us.us.us, %.preheader182.us.us
  %.0158192.us.us.us = phi i32 [ %.0172.neg, %.preheader182.us.us ], [ %i.cr, %..loopexit_crit_edge.us.us.us ] ; 3 uses
  %.4191.us.us.us = phi i32 [ %.3195.us.us, %.preheader182.us.us ], [ %.6.us.us.us, %..loopexit_crit_edge.us.us.us ] ; 2 uses
  %.4168190.us.us.us = phi i32 [ %.3167194.us.us, %.preheader182.us.us ], [ %.6170.us.us.us, %..loopexit_crit_edge.us.us.us ]
  %i.bm = or i32 %i.bk, %.0158192.us.us.us
  %or.cond7.us.us.us = icmp eq i32 %i.bm, 0
  br i1 %or.cond7.us.us.us, label %..loopexit_crit_edge.us.us.us, label %.preheader.us.us.us

bb.f:                                             ; preds = %.preheader.us.us.us, %bb.f
  %indvars.iv226 = phi i64 [ %i.ac, %.preheader.us.us.us ], [ %indvars.iv.next227, %bb.f ] ; 3 uses
  %indvars.iv224 = phi i64 [ %i.cv, %.preheader.us.us.us ], [ %indvars.iv.next225, %bb.f ] ; 3 uses
  %i.bn = getelementptr inbounds [24 x i8], ptr %i.cs, i64 %indvars.iv224 ; 7 uses
  %i.bo = getelementptr inbounds [24 x i8], ptr %i.ct, i64 %indvars.iv226 ; 6 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4  ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 2 uses
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.cf = add nsw i32 %i.bp, %i.bj
  store i32 %i.cf, ptr %i.bn, align 4, !tbaa !4
  %i.cg = add nsw i32 %i.br, %i.bl
  store i32 %i.cg, ptr %i.bs, align 4, !tbaa !4
  %i.ch = add nsw i32 %i.bu, %i.cu
  store i32 %i.ch, ptr %i.bv, align 4, !tbaa !4
  %i.ci = add nsw i32 %i.bx, %i.bj
  store i32 %i.ci, ptr %i.by, align 4, !tbaa !4
  %i.cj = add nsw i32 %i.ca, %i.bl
  store i32 %i.cj, ptr %i.cb, align 4, !tbaa !4
  %i.ck = add nsw i32 %i.cd, %i.cu
  store i32 %i.ck, ptr %i.ce, align 4, !tbaa !4
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv226
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv224
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !4
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, 1 ; 2 uses
  %indvars.iv.next227 = add nsw i64 %indvars.iv226, 1 ; 3 uses
  %i.co = icmp slt i64 %indvars.iv.next227, %i.bi
  br i1 %i.co, label %bb.f, label %..loopexit_crit_edge.us.us.us.loopexit, !llvm.loop !48

..loopexit_crit_edge.us.us.us.loopexit:           ; preds = %bb.f
  %i.cp = trunc nsw i64 %indvars.iv.next227 to i32
  %i.cq = trunc nsw i64 %indvars.iv.next225 to i32
  br label %..loopexit_crit_edge.us.us.us

..loopexit_crit_edge.us.us.us:                    ; preds = %..loopexit_crit_edge.us.us.us.loopexit, %bb.e
  %.6170.us.us.us = phi i32 [ %.4168190.us.us.us, %bb.e ], [ %i.cp, %..loopexit_crit_edge.us.us.us.loopexit ] ; 4 uses
  %.6.us.us.us = phi i32 [ %.4191.us.us.us, %bb.e ], [ %i.cq, %..loopexit_crit_edge.us.us.us.loopexit ] ; 4 uses
  %i.cr = add nsw i32 %.0158192.us.us.us, 1       ; 2 uses
  %exitcond232.not = icmp eq i32 %i.cr, %i.y
  br i1 %exitcond232.not, label %.split.us.us.us, label %bb.e, !llvm.loop !49

.preheader.us.us.us:                              ; preds = %bb.e
  %i.cs = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.ct = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.cu = mul nsw i32 %.0158192.us.us.us, %i.f    ; 2 uses
  %i.cv = sext i32 %.4191.us.us.us to i64
  br label %bb.f

.split.us.us.us:                                  ; preds = %..loopexit_crit_edge.us.us.us
  %i.cw = add nsw i32 %.0159196.us.us, 1          ; 2 uses
  %exitcond233.not = icmp eq i32 %i.cw, %i.z
  br i1 %exitcond233.not, label %.split198.us.us, label %.preheader182.us.us, !llvm.loop !50

.split198.us.us:                                  ; preds = %.split.us.us.us
  %i.cx = add nsw i32 %.0160203.us, 1             ; 2 uses
  %exitcond234.not = icmp eq i32 %i.cx, %i.aa
  br i1 %exitcond234.not, label %.split206.us, label %.preheader183.us, !llvm.loop !51

.preheader183:                                    ; preds = %.split.loop.exit241, %.split198
  %.0160203 = phi i32 [ %i.dg, %.split198 ], [ %spec.select.neg, %.split.loop.exit241 ] ; 3 uses
  %.2166201 = phi i32 [ %spec.select214.lcssa.lcssa, %.split198 ], [ %.1165.lcssa, %.split.loop.exit241 ]
  %i.cy = or i32 %.0160203, %.0171.neg
  br label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.prol, %.preheader183
  %.0158192.prol = phi i32 [ %.0172.neg, %.preheader183 ], [ %i.da, %.preheader.prol ] ; 2 uses
  %.4168190.prol = phi i32 [ %.2166201, %.preheader183 ], [ %spec.select214.prol, %.preheader.prol ]
  %i.cz = or i32 %i.cy, %.0158192.prol
  %or.cond7.prol = icmp eq i32 %i.cz, 0
  %spec.select214.prol = select i1 %or.cond7.prol, i32 %.4168190.prol, i32 %.0164209 ; 3 uses
  %i.da = add nsw i32 %.0158192.prol, 1           ; 2 uses
  %exitcond.not.prol = icmp eq i32 %i.da, %i.y
  br i1 %exitcond.not.prol, label %.preheader182.prol.loopexit, label %.preheader.prol, !llvm.loop !52

.preheader182.prol.loopexit:                      ; preds = %.preheader.prol
  br i1 %.not176, label %.preheader182, label %.split198

.preheader182:                                    ; preds = %.preheader182.prol.loopexit, %.split.1
  %.0159196 = phi i32 [ %i.df, %.split.1 ], [ %i.ab, %.preheader182.prol.loopexit ] ; 2 uses
  %.3167194 = phi i32 [ %.0164209, %.split.1 ], [ %spec.select214.prol, %.preheader182.prol.loopexit ]
  %i.db = or i32 %.0159196, %.0160203
  br label %.preheader

.preheader:                                       ; preds = %.preheader182, %.preheader
  %.0158192 = phi i32 [ %.0172.neg, %.preheader182 ], [ %i.dd, %.preheader ] ; 2 uses
  %.4168190 = phi i32 [ %.3167194, %.preheader182 ], [ %spec.select214, %.preheader ]
  %i.dc = or i32 %i.db, %.0158192
  %or.cond7 = icmp eq i32 %i.dc, 0
  %spec.select214 = select i1 %or.cond7, i32 %.4168190, i32 %.0164209
  %i.dd = add nsw i32 %.0158192, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dd, %i.y
  br i1 %exitcond.not, label %.preheader.1, label %.preheader, !llvm.loop !52

.preheader.1:                                     ; preds = %.preheader, %.preheader.1
  %.0158192.1 = phi i32 [ %i.de, %.preheader.1 ], [ %.0172.neg, %.preheader ]
  %i.de = add nsw i32 %.0158192.1, 1              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.de, %i.y
  br i1 %exitcond.not.1, label %.split.1, label %.preheader.1, !llvm.loop !52

.split.1:                                         ; preds = %.preheader.1
  %i.df = add nsw i32 %.0159196, 2                ; 2 uses
  %exitcond222.not.1 = icmp eq i32 %i.df, %i.z
  br i1 %exitcond222.not.1, label %.split198, label %.preheader182, !llvm.loop !50

.split198:                                        ; preds = %.split.1, %.preheader182.prol.loopexit
  %spec.select214.lcssa.lcssa = phi i32 [ %spec.select214.prol, %.preheader182.prol.loopexit ], [ %.0164209, %.split.1 ] ; 2 uses
  %i.dg = add nsw i32 %.0160203, 1                ; 2 uses
  %exitcond223.not = icmp eq i32 %i.dg, %i.aa
  br i1 %exitcond223.not, label %.split206.us, label %.preheader183, !llvm.loop !51

.split206.us:                                     ; preds = %.split198, %.split198.us.us
  %.us-phi = phi i32 [ %.6170.us.us.us, %.split198.us.us ], [ %spec.select214.lcssa.lcssa, %.split198 ] ; 2 uses
  %.us-phi207 = phi i32 [ %.6.us.us.us, %.split198.us.us ], [ %.1162.lcssa, %.split198 ] ; 3 uses
  %i.dh = icmp eq i32 %.0164209, %i.k             ; 2 uses
  %i.di = add i32 %.0161210, %.1165.lcssa
  %.neg = sub i32 %.0164209, %i.di
  %i.dj = add i32 %.neg, %.us-phi207
  %.1174 = select i1 %i.dh, i32 %.0161210, i32 %.0173208 ; 2 uses
  %.1 = select i1 %i.dh, i32 %i.dj, i32 %.0211    ; 2 uses
  %i.dk = icmp slt i32 %.us-phi, %i.m
  br i1 %i.dk, label %.preheader184, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.split206.us, %bb.b
  %.0173.lcssa = phi i32 [ undef, %bb.b ], [ %.1174, %.split206.us ]
  %.0161.lcssa = phi i32 [ 0, %bb.b ], [ %.us-phi207, %.split206.us ]
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %.1, %.split206.us ]
  %i.dl = tail call i32 @hypre_BoxArraySetSize(ptr noundef %i.t, i32 noundef %.0161.lcssa) #10 ; 0 uses
  %i.dm = tail call i32 @hypre_BoxArrayDestroy(ptr noundef %i.i) #10 ; 0 uses
  tail call void @hypre_Free(ptr noundef %i.j) #10
  store ptr %i.t, ptr %1, align 8, !tbaa !30
  store ptr %i.v, ptr %2, align 8, !tbaa !40
  store i32 %.0173.lcssa, ptr %3, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %._crit_edge
  %.2 = phi i32 [ 0, %bb.a ], [ %.0.lcssa, %._crit_edge ]
  store i32 %.2, ptr %4, align 4, !tbaa !4
  ret i32 0
}

declare i32 @hypre_BoxNeighborsAssemble(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hypre_MPI_Comm_size(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_MPI_Comm_rank(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_MPI_Allgather(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hypre_MPI_Allgatherv(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @hypre_StructGridPrint(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.b) #10 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !29
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.g) #10 ; 0 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !29
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %i.x, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.u, i32 noundef %i.w) #10 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %i.f, align 8, !tbaa !29
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructGridRead(i32 noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.f = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %i.c) #10 ; 0 uses
  %i.g = load i32, ptr %i.c, align 4, !tbaa !4
  %i.h = call ptr @hypre_MAlloc(i32 noundef 72) #10 ; 9 uses
  store i32 %0, ptr %i.h, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.g, ptr %i.i, align 4, !tbaa !15
  %i.j = call ptr @hypre_BoxArrayCreate(i32 noundef 0) #10
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.m, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.n, i8 0, i64 28, i1 false)
  store i32 1, ptr %i.o, align 4, !tbaa !18
  %i.p = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !4
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.09 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.b ]
  %i.w = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v) #10 ; 0 uses
  %i.x = call ptr @hypre_BoxCreate() #10          ; 3 uses
  %i.y = call i32 @hypre_BoxSetExtents(ptr noundef %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10 ; 0 uses
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.aa = call i32 @hypre_AppendBox(ptr noundef %i.x, ptr noundef %i.z) #10 ; 0 uses
  %i.ab = call i32 @hypre_BoxDestroy(ptr noundef %i.x) #10 ; 0 uses
  %i.ac = add nuw nsw i32 %.09, 1                 ; 2 uses
  %i.ad = load i32, ptr %i.d, align 4, !tbaa !4
  %i.ae = icmp slt i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.b, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.af = call i32 @hypre_StructGridAssemble(ptr noundef nonnull %i.h) ; 0 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 0
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @hypre_BoxArraySetSize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"hypre_StructGrid_struct", !5, i64 0, !5, i64 4, !10, i64 8, !12, i64 16, !13, i64 24, !5, i64 32, !14, i64 40, !5, i64 48, !5, i64 52, !6, i64 56, !5, i64 68}
!10 = !{!"p1 _ZTS21hypre_BoxArray_struct", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !11, i64 0}
!14 = !{!"p1 _ZTS16hypre_Box_struct", !11, i64 0}
!15 = !{!9, !5, i64 4}
!16 = !{!9, !10, i64 8}
!17 = !{!9, !5, i64 32}
!18 = !{!9, !5, i64 68}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS23hypre_StructGrid_struct", !11, i64 0}
!21 = !{!9, !14, i64 40}
!22 = !{!9, !13, i64 24}
!23 = !{!9, !12, i64 16}
!24 = !{!25, !14, i64 0}
!25 = !{!"hypre_BoxArray_struct", !14, i64 0, !5, i64 8, !5, i64 12}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!13, !13, i64 0}
!29 = !{!25, !5, i64 8}
!30 = !{!10, !10, i64 0}
!31 = distinct !{!31, !27, !32, !33}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = distinct !{!34, !27}
!35 = distinct !{!35, !27}
!36 = distinct !{!36, !27, !32}
!37 = distinct !{!37, !27}
!38 = !{!9, !5, i64 52}
!39 = distinct !{!39, !27}
!40 = !{!12, !12, i64 0}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
!43 = !{!9, !5, i64 48}
!44 = distinct !{!44, !27}
!45 = distinct !{!45, !27}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !27}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !27, !33, !32}
!53 = distinct !{!53, !27}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !27}
end_hunk_0
