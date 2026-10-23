Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj?download=true
inline.NumInlined: 1214
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 171
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@Abc_Print:bb.a
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !54
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #41
  %.not8 = icmp eq i32 %i.b, 0
  br i1 %.not8, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  switch i32 %0, label %bb.i [
    i32 -1, label %bb.d
    i32 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.207) ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.208) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  switch i32 %0, label %bb.i [
    i32 -1, label %bb.g
    i32 0, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !73
  %i.f = tail call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef 7, ptr noundef nonnull @.str.207) #41 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !73
  %i.h = tail call i32 @Gia_ManToBridgeText(ptr noundef %i.g, i32 noundef 9, ptr noundef nonnull @.str.208) #41 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.g, %bb.h, %bb.d, %bb.e
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.i = call i32 (...) @Abc_FrameIsBridgeMode() #41
  %.not9 = icmp eq i32 %i.i, 0
  br i1 %.not9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #41 ; 3 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !73
  %i.l = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #42
  %i.m = trunc i64 %i.l to i32
  %i.n = call i32 @Gia_ManToBridgeText(ptr noundef %i.k, i32 noundef %i.m, ptr noundef nonnull %i.j) #41 ; 0 uses
  call void @free(ptr noundef %i.j) #41
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !73, !noalias !464
  %i.p = call i32 @vfprintf(ptr noundef %i.o, ptr noundef %1, ptr noundef nonnull %2) #41, !inline_history !463 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void
}

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define noalias ptr @Exa4_ManSolve(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [1000 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #41
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %5, align 8, !tbaa !70
  %.neg30 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !71
  %.neg = sdiv i64 %i.f, -1000
  %.neg31 = add i64 %.neg, %.neg30
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg31, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.g = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.73, ptr noundef nonnull @.str.72, i32 noundef %2, ptr noundef nonnull @.str.74, ptr noundef %0, ptr noundef %1) #41 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %Abc_Clock.exit
  %i.h = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.74, ptr noundef %0, ptr noundef %1) #41 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = call i32 @system(ptr noundef nonnull %i.a) #41
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !73
  %i.l = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.76, ptr noundef nonnull %i.a) #41 ; 0 uses
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.m = call ptr @Exa4_ManParse(ptr noundef %1)  ; 3 uses
  %.not26 = icmp eq i32 %3, 0
  br i1 %.not26, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not27 = icmp eq ptr %i.m, null
  br i1 %.not27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77) ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.o = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.p = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %2) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.q = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #41
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %Abc_Clock.exit29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = load i64, ptr %4, align 8, !tbaa !70
  %i.t = mul nsw i64 %i.s, 1000000
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !71
  %i.w = sdiv i64 %i.v, 1000
  %i.x = add nsw i64 %i.w, %i.t
  br label %Abc_Clock.exit29

Abc_Clock.exit29:                                 ; preds = %bb.m, %bb.n
  %.0.i28 = phi i64 [ %i.x, %bb.n ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.y = add i64 %.0.i28, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.80)
  %i.z = sitofp i64 %i.y to double
  %i.aa = fdiv double %i.z, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.138, double noundef %i.aa)
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %Abc_Clock.exit29, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ %i.m, %Abc_Clock.exit29 ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret ptr %.0
}

; Function Attrs: nofree
declare noundef i32 @system(ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind uwtable
define i32 @Exa4_ManMarkup(ptr nofree noundef captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !127  ; 5 uses
  %i.c = mul nsw i32 %i.b, 5
  %i.d = add nsw i32 %i.c, 1                      ; 7 uses
  %i.e = mul nsw i32 %i.b, 3
  %i.f = load ptr, ptr %0, align 8, !tbaa !128
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val = load i32, ptr %i.g, align 4, !tbaa !47
  %i.h = mul nsw i32 %i.e, %.val                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !129  ; 3 uses
  %i.k = add nsw i32 %i.b, %i.j
  %i.l = icmp sgt i32 %i.b, 0
  br i1 %i.l, label %.preheader49.lr.ph, label %.preheader

.preheader49.lr.ph:                               ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = sext i32 %i.j to i64                     ; 4 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = add nsw i64 %i.n, -2
  %broadcast.splatinsert118 = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat119 = shufflevector <4 x i32> %broadcast.splatinsert118, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat119
  %1 = add nsw i64 %i.n, -2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op150 = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.lr.ph, %._crit_edge.1
  %indvar = phi i64 [ 0, %.preheader49.lr.ph ], [ %indvar.next, %._crit_edge.1 ] ; 3 uses
  %indvars.iv78 = phi i64 [ %i.n, %.preheader49.lr.ph ], [ %indvars.iv.next79, %._crit_edge.1 ] ; 4 uses
  %indvars.iv = phi i64 [ %i.o, %.preheader49.lr.ph ], [ %indvars.iv.next, %._crit_edge.1 ] ; 2 uses
  %.sroa.8.055 = phi i32 [ 0, %.preheader49.lr.ph ], [ %.sroa.8.2.lcssa.1, %._crit_edge.1 ] ; 4 uses
  %i.q = getelementptr inbounds [512 x i8], ptr %i.m, i64 %indvars.iv78 ; 3 uses
  %i.r = icmp sgt i64 %indvars.iv78, 2
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge.1

.lr.ph.preheader:                                 ; preds = %.preheader49
  %2 = add i64 %i.p, %indvar                      ; 3 uses
  %min.iters.check115 = icmp ult i64 %2, 8
  br i1 %min.iters.check115, label %.lr.ph.preheader136, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.preheader
  %n.vec117 = and i64 %2, -8                      ; 4 uses
  %i.s = or disjoint i64 %n.vec117, 2
  %i.t = trunc i64 %n.vec117 to i32
  %i.u = add i32 %.sroa.8.055, %i.t               ; 2 uses
  %broadcast.splatinsert120 = insertelement <4 x i32> poison, i32 %.sroa.8.055, i64 0
  %broadcast.splat121 = shufflevector <4 x i32> %broadcast.splatinsert120, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction122 = add nsw <4 x i32> %broadcast.splat121, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph116
  %index124 = phi i64 [ 0, %vector.ph116 ], [ %index.next127, %vector.body123 ] ; 2 uses
  %vec.ind125 = phi <4 x i32> [ %induction122, %vector.ph116 ], [ %vec.ind.next128, %vector.body123 ] ; 3 uses
  %i.v = add nsw <4 x i32> %vec.ind125, %broadcast.splat119
  %.reass = add <4 x i32> %vec.ind125, %invariant.op
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index124 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store <4 x i32> %i.v, ptr %i.x, align 4, !tbaa !54
  store <4 x i32> %.reass, ptr %i.y, align 4, !tbaa !54
  %index.next127 = add nuw i64 %index124, 8       ; 2 uses
  %vec.ind.next128 = add nsw <4 x i32> %vec.ind125, splat (i32 8)
  %i.z = icmp eq i64 %index.next127, %n.vec117
  br i1 %i.z, label %middle.block129, label %vector.body123, !llvm.loop !465

middle.block129:                                  ; preds = %vector.body123
  %cmp.n130 = icmp eq i64 %2, %n.vec117
  br i1 %cmp.n130, label %.lr.ph.1, label %.lr.ph.preheader136

.lr.ph.preheader136:                              ; preds = %.lr.ph.preheader, %middle.block129
  %indvars.iv72.ph = phi i64 [ 2, %.lr.ph.preheader ], [ %i.s, %middle.block129 ]
  %.sroa.8.251.ph = phi i32 [ %.sroa.8.055, %.lr.ph.preheader ], [ %i.u, %middle.block129 ]
  br label %.lr.ph

.preheader:                                       ; preds = %._crit_edge.1, %bb.a
  %i.aa = phi i32 [ %i.b, %bb.a ], [ %i.ay, %._crit_edge.1 ]
  %i.ab = phi i32 [ %i.j, %bb.a ], [ %i.ax, %._crit_edge.1 ]
  %.sroa.8.0.lcssa = phi i32 [ 0, %bb.a ], [ %.sroa.8.2.lcssa.1, %._crit_edge.1 ] ; 2 uses
  %.lcssa = phi i32 [ %i.k, %bb.a ], [ %i.az, %._crit_edge.1 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !130 ; 2 uses
  %i.ae = icmp slt i32 %.lcssa, %i.ad
  br i1 %i.ae, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = sext i32 %.lcssa to i64
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader136, %.lr.ph
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %.lr.ph ], [ %indvars.iv72.ph, %.lr.ph.preheader136 ] ; 2 uses
  %.sroa.8.251 = phi i32 [ %i.ai, %.lr.ph ], [ %.sroa.8.251.ph, %.lr.ph.preheader136 ] ; 2 uses
  %i.ai = add nsw i32 %.sroa.8.251, 1             ; 2 uses
  %i.aj = add nsw i32 %.sroa.8.251, %i.d
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv72
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !54
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next73, %indvars.iv78
  br i1 %exitcond80.not, label %.lr.ph.1, label %.lr.ph, !llvm.loop !466

.lr.ph.1:                                         ; preds = %.lr.ph, %middle.block129
  %.lcssa106 = phi i32 [ %i.u, %middle.block129 ], [ %i.ai, %.lr.ph ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 256 ; 2 uses
  %3 = add i64 %1, %indvar                        ; 3 uses
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.1
  %n.vec = and i64 %3, -8                         ; 4 uses
  %i.am = or disjoint i64 %n.vec, 1
  %i.an = trunc i64 %n.vec to i32
  %i.ao = add i32 %.lcssa106, %i.an               ; 2 uses
  %broadcast.splatinsert111 = insertelement <4 x i32> poison, i32 %.lcssa106, i64 0
  %broadcast.splat112 = shufflevector <4 x i32> %broadcast.splatinsert111, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat112, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ap = add nsw <4 x i32> %vec.ind, %broadcast.splat
  %.reass151 = add <4 x i32> %vec.ind, %invariant.op150
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  store <4 x i32> %i.ap, ptr %i.ar, align 4, !tbaa !54
  store <4 x i32> %.reass151, ptr %i.as, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !467

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge.1, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.1, %middle.block
  %indvars.iv72.1.ph = phi i64 [ 1, %.lr.ph.1 ], [ %i.am, %middle.block ]
  %.sroa.8.251.1.ph = phi i32 [ %.lcssa106, %.lr.ph.1 ], [ %i.ao, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv72.1 = phi i64 [ %indvars.iv.next73.1, %scalar.ph ], [ %indvars.iv72.1.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.8.251.1 = phi i32 [ %i.au, %scalar.ph ], [ %.sroa.8.251.1.ph, %scalar.ph.preheader ] ; 2 uses
  %i.au = add nsw i32 %.sroa.8.251.1, 1           ; 2 uses
  %i.av = add nsw i32 %.sroa.8.251.1, %i.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv72.1
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !54
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72.1, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next73.1, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge.1, label %scalar.ph, !llvm.loop !468

._crit_edge.1:                                    ; preds = %scalar.ph, %middle.block, %.preheader49
  %.sroa.8.2.lcssa.1 = phi i32 [ %.sroa.8.055, %.preheader49 ], [ %i.ao, %middle.block ], [ %i.au, %scalar.ph ] ; 2 uses
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.ax = load i32, ptr %i.i, align 8, !tbaa !129 ; 2 uses
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !127 ; 2 uses
  %i.az = add nsw i32 %i.ay, %i.ax                ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next79, %i.ba
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bb, label %.preheader49, label %.preheader, !llvm.loop !469

bb.b:                                             ; preds = %.lr.ph66, %._crit_edge62
  %i.bc = phi i32 [ %i.ad, %.lr.ph66 ], [ %i.bw, %._crit_edge62 ]
  %i.bd = phi i32 [ %i.aa, %.lr.ph66 ], [ %i.bx, %._crit_edge62 ] ; 3 uses
  %i.be = phi i32 [ %i.ab, %.lr.ph66 ], [ %i.by, %._crit_edge62 ] ; 3 uses
  %indvars.iv85 = phi i64 [ %i.ah, %.lr.ph66 ], [ %indvars.iv.next86, %._crit_edge62 ] ; 2 uses
  %.sroa.8.365 = phi i32 [ %.sroa.8.0.lcssa, %.lr.ph66 ], [ %.sroa.8.4.lcssa, %._crit_edge62 ] ; 2 uses
  %i.bf = load i32, ptr %i.af, align 8, !tbaa !131
  %i.bg = icmp eq i32 %i.bf, 1
  %i.bh = add i32 %i.be, -1
  %i.bi = add i32 %i.bh, %i.bd
  %i.bj = select i1 %i.bg, i32 %i.bi, i32 0       ; 2 uses
  %i.bk = add nsw i32 %i.bd, %i.be
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %bb.b
  %i.bm = getelementptr inbounds [512 x i8], ptr %i.ag, i64 %indvars.iv85
  %i.bn = sext i32 %i.bj to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph61, %bb.c
  %indvars.iv82 = phi i64 [ %i.bn, %.lr.ph61 ], [ %indvars.iv.next83, %bb.c ] ; 2 uses
  %.sroa.8.459 = phi i32 [ %.sroa.8.365, %.lr.ph61 ], [ %i.bo, %bb.c ] ; 2 uses
  %i.bo = add nsw i32 %.sroa.8.459, 1             ; 2 uses
  %i.bp = add nsw i32 %.sroa.8.459, %i.d
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv82
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !54
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.br = load i32, ptr %i.i, align 8, !tbaa !129 ; 2 uses
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !127 ; 2 uses
  %i.bt = add nsw i32 %i.bs, %i.br
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next83, %i.bu
  br i1 %i.bv, label %bb.c, label %._crit_edge62.loopexit, !llvm.loop !470

._crit_edge62.loopexit:                           ; preds = %bb.c
  %.pre = load i32, ptr %i.ac, align 4, !tbaa !130
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %._crit_edge62.loopexit, %bb.b
  %i.bw = phi i32 [ %i.bc, %bb.b ], [ %.pre, %._crit_edge62.loopexit ] ; 2 uses
  %i.bx = phi i32 [ %i.bd, %bb.b ], [ %i.bs, %._crit_edge62.loopexit ]
  %i.by = phi i32 [ %i.be, %bb.b ], [ %i.br, %._crit_edge62.loopexit ]
  %.sroa.8.4.lcssa = phi i32 [ %.sroa.8.365, %bb.b ], [ %i.bo, %._crit_edge62.loopexit ] ; 2 uses
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.bz = sext i32 %i.bw to i64
  %i.ca = icmp slt i64 %indvars.iv.next86, %i.bz
  br i1 %i.ca, label %bb.b, label %._crit_edge67, !llvm.loop !471

._crit_edge67:                                    ; preds = %._crit_edge62, %.preheader
  %.sroa.8.3.lcssa = phi i32 [ %.sroa.8.0.lcssa, %.preheader ], [ %.sroa.8.4.lcssa, %._crit_edge62 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !132
  %.not = icmp eq i32 %i.cc, 0
  %.pre88 = add i32 %i.h, %i.d
  %.pre89 = add i32 %.pre88, %.sroa.8.3.lcssa     ; 2 uses
  br i1 %.not, label %._crit_edge67._crit_edge, label %bb.d

bb.d:                                             ; preds = %._crit_edge67
  %i.cd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i32 noundef %i.d, i32 noundef %.sroa.8.3.lcssa, i32 noundef %i.h, i32 noundef %.pre89) ; 0 uses
  br label %._crit_edge67._crit_edge

._crit_edge67._crit_edge:                         ; preds = %._crit_edge67, %bb.d
  ret i32 %.pre89
}

; Function Attrs: nofree nounwind uwtable
define noalias noundef ptr @Exa4_ManAlloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32824) ptr @calloc(i64 noundef 1, i64 noundef 32824) #40 ; 11 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %6, ptr %i.c, align 8, !tbaa !132
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %2, ptr %i.d, align 4, !tbaa !134
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %3, ptr %i.e, align 8, !tbaa !129
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %5, ptr %i.f, align 4, !tbaa !127
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %4, ptr %i.g, align 8, !tbaa !131
  %i.h = add i32 %4, %3
  %i.i = add i32 %i.h, %5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %i.i, ptr %i.j, align 4, !tbaa !130
  %i.k = tail call i32 @Exa4_ManMarkup(ptr noundef nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32808
  store i32 %i.k, ptr %i.l, align 8, !tbaa !135
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @Exa4_ManFree(ptr noundef captures(address_is_null) %0) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @Exa4_ManGenStart(ptr nofree noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = alloca [4 x i32], align 16               ; 8 uses
  %i.c = alloca [4 x i32], align 16               ; 24 uses
  %i.d = alloca [4 x i32], align 16               ; 8 uses
  %i.e = alloca [4 x i32], align 16               ; 17 uses
  %i.f = alloca [4 x i32], align 16               ; 8 uses
  %i.g = alloca [4 x i32], align 16               ; 8 uses
  %i.h = alloca [4 x i32], align 16               ; 8 uses
  %i.i = alloca [128 x i32], align 16             ; 42 uses
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !129
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !127
  %i.n = tail call ptr @Gia_ManKSatGenLevels(ptr noundef nonnull %6, i32 noundef %i.k, i32 noundef %i.m) #41 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  %.not294 = icmp eq ptr %i.n, null
  br i1 %.not294, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.j, align 8, !tbaa !129  ; 2 uses
  %i.p = shl nsw i32 %i.o, 1                      ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 4        ; 2 uses
  %i.r = or disjoint i32 %i.p, 1                  ; 2 uses
  %.val686 = load i32, ptr %i.q, align 4, !tbaa !63
  %i.s = icmp slt i32 %i.r, %.val686
  br i1 %i.s, label %.critedge.lr.ph, label %._crit_edge689

.critedge.lr.ph:                                  ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.n, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32808 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32816 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32812 ; 6 uses
  %i.y = sext i32 %i.o to i64
  %i.z = sext i32 %i.p to i64
  %i.aa = sext i32 %i.r to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %.split
  %indvars.iv793 = phi i64 [ %i.z, %.critedge.lr.ph ], [ %indvars.iv.next794, %.split ] ; 2 uses
  %indvars.iv791 = phi i64 [ %i.y, %.critedge.lr.ph ], [ %indvars.iv.next792, %.split ] ; 5 uses
  %i.ab = phi i64 [ %i.aa, %.critedge.lr.ph ], [ %i.bl, %.split ]
  %.val314 = load ptr, ptr %i.t, align 8, !tbaa !65 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %.val314, i64 %indvars.iv793
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !54 ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %.val314, i64 %i.ab
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !54
  %i.ag = icmp sgt i32 %i.ad, 0
  br i1 %i.ag, label %.lr.ph, label %.preheader678

.lr.ph:                                           ; preds = %.critedge
  %i.ah = getelementptr inbounds [512 x i8], ptr %i.u, i64 %indvars.iv791
end_hunk_0
begin_hunk_1_@Gia_ManDupMini:Vec_IntAlloc.exit.i

..critedge6_crit_edge:                            ; preds = %.lr.ph248
  br label %.critedge6, !llvm.loop !607

.critedge6:                                       ; preds = %.lr.ph198, %..critedge6_crit_edge, %.lr.ph198.preheader
  %.val200.pre = phi i32 [ %.val119196, %.lr.ph198.preheader ], [ %.val119, %..critedge6_crit_edge ], [ %.val119, %.lr.ph198 ]
  %i.ig = phi ptr [ %i.gx, %.lr.ph198.preheader ], [ %i.ic, %..critedge6_crit_edge ], [ %i.ic, %.lr.ph198 ]
  %i.ih = icmp sgt i32 %.val200.pre, 0
  br i1 %i.ih, label %.lr.ph202, label %Vec_IntFree.exit

.lr.ph202:                                        ; preds = %.critedge6
  %i.ii = getelementptr i8, ptr %i.j, i64 32      ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph202, %Gia_ManAppendCo.exit
  %indvars.iv220 = phi i64 [ 0, %.lr.ph202 ], [ %indvars.iv.next221, %Gia_ManAppendCo.exit ] ; 2 uses
  %i.il = phi ptr [ %i.ig, %.lr.ph202 ], [ %i.lh, %Gia_ManAppendCo.exit ]
  %.val148 = load ptr, ptr %i.y, align 8, !tbaa !168 ; 2 uses
  %.not116 = icmp eq ptr %.val148, null
  br i1 %.not116, label %Vec_IntFree.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.im = getelementptr i8, ptr %i.il, i64 8
  %.val149.val = load ptr, ptr %i.im, align 8, !tbaa !65
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.val149.val, i64 %indvars.iv220
  %i.io = load i32, ptr %i.in, align 4, !tbaa !54
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [12 x i8], ptr %.val148, i64 %i.ip ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 4            ; 2 uses
  %i.is = and i64 %i.ir, 536870911
  %i.it = sub nsw i64 0, %i.is
  %i.iu = getelementptr inbounds [12 x i8], ptr %i.iq, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !155 ; 2 uses
  %i.ix = trunc i64 %i.ir to i32
  %i.iy = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %i.j) ; 8 uses
  %i.iz = load i64, ptr %i.iy, align 4
  %i.ja = or i64 %i.iz, 2147483648                ; 2 uses
  store i64 %i.ja, ptr %i.iy, align 4
  %.val20.i = load ptr, ptr %i.ii, align 8, !tbaa !168
  %i.jb = ptrtoint ptr %i.iy to i64               ; 2 uses
  %i.jc = ptrtoint ptr %.val20.i to i64
  %i.jd = sub i64 %i.jb, %i.jc
  %i.je = sdiv exact i64 %i.jd, 12
  %i.jf = trunc i64 %i.je to i32
  %i.jg = lshr i32 %i.iw, 1
  %i.jh = sub i32 %i.jf, %i.jg
  %i.ji = and i32 %i.jh, 536870911
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = and i64 %i.ja, -1073741824
  %i.jl = shl i32 %i.iw, 29
  %i.jm = xor i32 %i.jl, %i.ix
  %i.jn = and i32 %i.jm, 536870912
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = or disjoint i64 %i.jk, %i.jo
  %i.jq = or disjoint i64 %i.jp, %i.jj            ; 2 uses
  store i64 %i.jq, ptr %i.iy, align 4
  %i.jr = load ptr, ptr %i.ij, align 8, !tbaa !613
  %i.js = getelementptr i8, ptr %i.jr, i64 4
  %.val.i161 = load i32, ptr %i.js, align 4, !tbaa !63
  %i.jt = and i32 %.val.i161, 536870911
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = shl nuw nsw i64 %i.ju, 32
  %i.jw = and i64 %i.jq, -2305843004918726657
  %i.jx = or disjoint i64 %i.jw, %i.jv
  store i64 %i.jx, ptr %i.iy, align 4
  %i.jy = load ptr, ptr %i.ij, align 8, !tbaa !613 ; 6 uses
  %.val19.i = load ptr, ptr %i.ii, align 8, !tbaa !168
  %i.jz = ptrtoint ptr %.val19.i to i64
  %i.ka = sub i64 %i.jb, %i.jz
  %i.kb = sdiv exact i64 %i.ka, 12
  %i.kc = trunc i64 %i.kb to i32
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 4 ; 3 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !63 ; 7 uses
  %i.kf = load i32, ptr %i.jy, align 8, !tbaa !64
  %i.kg = icmp eq i32 %i.ke, %i.kf
  br i1 %i.kg, label %bb.ab, label %Vec_IntPush.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.kh = icmp slt i32 %i.ke, 16
  br i1 %i.kh, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !65 ; 2 uses
  %.not9.i.i.i169 = icmp eq ptr %i.kj, null
  br i1 %.not9.i.i.i169, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kk = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.kj, i64 noundef 64) #39
  br label %Vec_IntGrow.exit.i.i170

bb.ae:                                            ; preds = %bb.ac
  %i.kl = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #38
  br label %Vec_IntGrow.exit.i.i170

Vec_IntGrow.exit.i.i170:                          ; preds = %bb.ae, %bb.ad
  %i.km = phi ptr [ %i.kk, %bb.ad ], [ %i.kl, %bb.ae ]
  store ptr %i.km, ptr %i.ki, align 8, !tbaa !65
  br label %Vec_IntGrow.exit11.sink.split.i.i166

bb.af:                                            ; preds = %bb.ab
  %i.kn = icmp samesign ult i32 %i.ke, 1073741823
  %i.ko = shl nuw nsw i32 %i.ke, 1
  %spec.select.i.i163 = select i1 %i.kn, i32 %i.ko, i32 2147483647 ; 3 uses
  %.not.i9.i.i164 = icmp samesign ult i32 %i.ke, %spec.select.i.i163
  br i1 %.not.i9.i.i164, label %bb.ag, label %Vec_IntPush.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !65 ; 2 uses
  %.not9.i10.i.i165 = icmp eq ptr %i.kq, null
  %i.kr = zext nneg i32 %spec.select.i.i163 to i64
  %i.ks = shl nuw nsw i64 %i.kr, 2                ; 2 uses
  br i1 %.not9.i10.i.i165, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kt = tail call ptr @realloc(ptr noundef nonnull %i.kq, i64 noundef %i.ks) #39
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ku = tail call noalias ptr @malloc(i64 noundef %i.ks) #38
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.kv = phi ptr [ %i.kt, %bb.ah ], [ %i.ku, %bb.ai ]
  store ptr %i.kv, ptr %i.kp, align 8, !tbaa !65
  br label %Vec_IntGrow.exit11.sink.split.i.i166

Vec_IntGrow.exit11.sink.split.i.i166:             ; preds = %bb.aj, %Vec_IntGrow.exit.i.i170
  %spec.select.sink.i.i167 = phi i32 [ %spec.select.i.i163, %bb.aj ], [ 16, %Vec_IntGrow.exit.i.i170 ]
  store i32 %spec.select.sink.i.i167, ptr %i.jy, align 8, !tbaa !64
  %.pre.i168 = load i32, ptr %i.kd, align 4, !tbaa !63
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i166, %bb.af, %bb.aa
  %i.kw = phi i32 [ %i.ke, %bb.aa ], [ %i.ke, %bb.af ], [ %.pre.i168, %Vec_IntGrow.exit11.sink.split.i.i166 ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !65
  %i.kz = add nsw i32 %i.kw, 1
  store i32 %i.kz, ptr %i.kd, align 4, !tbaa !63
  %i.la = sext i32 %i.kw to i64
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.ky, i64 %i.la
  store i32 %i.kc, ptr %i.lb, align 4, !tbaa !54
  %i.lc = load ptr, ptr %i.ik, align 8, !tbaa !169
  %.not.i162 = icmp eq ptr %i.lc, null
  br i1 %.not.i162, label %Gia_ManAppendCo.exit, label %bb.ak

bb.ak:                                            ; preds = %Vec_IntPush.exit.i
  %i.ld = load i64, ptr %i.iy, align 4
  %i.le = and i64 %i.ld, 536870911
  %i.lf = sub nsw i64 0, %i.le
  %i.lg = getelementptr inbounds [12 x i8], ptr %i.iy, i64 %i.lf
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %i.j, ptr noundef nonnull %i.lg, ptr noundef nonnull %i.iy) #41
  br label %Gia_ManAppendCo.exit

Gia_ManAppendCo.exit:                             ; preds = %Vec_IntPush.exit.i, %bb.ak
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %i.lh = load ptr, ptr %i.gw, align 8, !tbaa !613 ; 2 uses
  %i.li = getelementptr i8, ptr %i.lh, i64 4
  %.val = load i32, ptr %i.li, align 4, !tbaa !63
  %i.lj = sext i32 %.val to i64
  %i.lk = icmp slt i64 %indvars.iv.next221, %i.lj
  br i1 %i.lk, label %bb.z, label %Vec_IntFree.exit, !llvm.loop !608

Vec_IntFree.exit:                                 ; preds = %bb.z, %Gia_ManAppendCo.exit, %.preheader, %.critedge6
  %i.ll = getelementptr i8, ptr %0, i64 16
  %.val152 = load i32, ptr %i.ll, align 8, !tbaa !614
  tail call void @Gia_ManSetRegNum(ptr noundef nonnull %i.j, i32 noundef %.val152) #41
  tail call void @free(ptr noundef nonnull %i.f) #41
  ret ptr %i.j
}

declare void @Gia_ManFillValue(ptr noundef) local_unnamed_addr #7

declare ptr @Gia_ManStart(i32 noundef) local_unnamed_addr #7

declare void @Gia_ManSetRegNum(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define i32 @Exa6_ManMarkup(ptr nofree noundef captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !172  ; 4 uses
  %i.c = mul nsw i32 %i.b, 3                      ; 2 uses
  %i.d = add nsw i32 %i.c, 1                      ; 7 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !173
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val = load i32, ptr %i.f, align 4, !tbaa !47
  %i.g = mul nsw i32 %.val, %i.c                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !174  ; 3 uses
  %i.j = add nsw i32 %i.b, %i.i
  %i.k = icmp sgt i32 %i.b, 0
  br i1 %i.k, label %.preheader47.lr.ph, label %.preheader46

.preheader47.lr.ph:                               ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = sext i32 %i.i to i64                     ; 4 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = add nsw i64 %i.m, -2
  %broadcast.splatinsert113 = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat114 = shufflevector <4 x i32> %broadcast.splatinsert113, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat114
  %1 = add nsw i64 %i.m, -2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op145 = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %.preheader47

.preheader47:                                     ; preds = %.preheader47.lr.ph, %._crit_edge.1
  %indvar = phi i64 [ 0, %.preheader47.lr.ph ], [ %indvar.next, %._crit_edge.1 ] ; 3 uses
  %indvars.iv74 = phi i64 [ %i.m, %.preheader47.lr.ph ], [ %indvars.iv.next75, %._crit_edge.1 ] ; 4 uses
  %indvars.iv = phi i64 [ %i.n, %.preheader47.lr.ph ], [ %indvars.iv.next, %._crit_edge.1 ] ; 2 uses
  %.sroa.8.053 = phi i32 [ 0, %.preheader47.lr.ph ], [ %.sroa.8.2.lcssa.1, %._crit_edge.1 ] ; 4 uses
  %i.p = getelementptr inbounds [512 x i8], ptr %i.l, i64 %indvars.iv74 ; 3 uses
  %i.q = icmp sgt i64 %indvars.iv74, 2
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge.1

.lr.ph.preheader:                                 ; preds = %.preheader47
  %2 = add i64 %i.o, %indvar                      ; 3 uses
  %min.iters.check110 = icmp ult i64 %2, 8
  br i1 %min.iters.check110, label %.lr.ph.preheader131, label %vector.ph111

vector.ph111:                                     ; preds = %.lr.ph.preheader
  %n.vec112 = and i64 %2, -8                      ; 4 uses
  %i.r = or disjoint i64 %n.vec112, 2
  %i.s = trunc i64 %n.vec112 to i32
  %i.t = add i32 %.sroa.8.053, %i.s               ; 2 uses
  %broadcast.splatinsert115 = insertelement <4 x i32> poison, i32 %.sroa.8.053, i64 0
  %broadcast.splat116 = shufflevector <4 x i32> %broadcast.splatinsert115, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction117 = add nsw <4 x i32> %broadcast.splat116, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph111
  %index119 = phi i64 [ 0, %vector.ph111 ], [ %index.next122, %vector.body118 ] ; 2 uses
  %vec.ind120 = phi <4 x i32> [ %induction117, %vector.ph111 ], [ %vec.ind.next123, %vector.body118 ] ; 3 uses
  %i.u = add nsw <4 x i32> %vec.ind120, %broadcast.splat114
  %.reass = add <4 x i32> %vec.ind120, %invariant.op
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index119 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store <4 x i32> %i.u, ptr %i.w, align 4, !tbaa !54
  store <4 x i32> %.reass, ptr %i.x, align 4, !tbaa !54
  %index.next122 = add nuw i64 %index119, 8       ; 2 uses
  %vec.ind.next123 = add nsw <4 x i32> %vec.ind120, splat (i32 8)
  %i.y = icmp eq i64 %index.next122, %n.vec112
  br i1 %i.y, label %middle.block124, label %vector.body118, !llvm.loop !615

middle.block124:                                  ; preds = %vector.body118
  %cmp.n125 = icmp eq i64 %2, %n.vec112
  br i1 %cmp.n125, label %.lr.ph.1, label %.lr.ph.preheader131

.lr.ph.preheader131:                              ; preds = %.lr.ph.preheader, %middle.block124
  %indvars.iv68.ph = phi i64 [ 2, %.lr.ph.preheader ], [ %i.r, %middle.block124 ]
  %.sroa.8.249.ph = phi i32 [ %.sroa.8.053, %.lr.ph.preheader ], [ %i.t, %middle.block124 ]
  br label %.lr.ph

.preheader46:                                     ; preds = %._crit_edge.1, %bb.a
  %i.z = phi i32 [ %i.b, %bb.a ], [ %i.aw, %._crit_edge.1 ]
  %i.aa = phi i32 [ %i.i, %bb.a ], [ %i.av, %._crit_edge.1 ]
  %.sroa.8.0.lcssa = phi i32 [ 0, %bb.a ], [ %.sroa.8.2.lcssa.1, %._crit_edge.1 ] ; 2 uses
  %.lcssa = phi i32 [ %i.j, %bb.a ], [ %i.ax, %._crit_edge.1 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !175 ; 2 uses
  %i.ad = icmp slt i32 %.lcssa, %i.ac
  br i1 %i.ad, label %.preheader.lr.ph, label %._crit_edge63

.preheader.lr.ph:                                 ; preds = %.preheader46
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = sext i32 %.lcssa to i64
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader131, %.lr.ph
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.lr.ph ], [ %indvars.iv68.ph, %.lr.ph.preheader131 ] ; 2 uses
  %.sroa.8.249 = phi i32 [ %i.ag, %.lr.ph ], [ %.sroa.8.249.ph, %.lr.ph.preheader131 ] ; 2 uses
  %i.ag = add nsw i32 %.sroa.8.249, 1             ; 2 uses
  %i.ah = add nsw i32 %.sroa.8.249, %i.d
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv68
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !54
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next69, %indvars.iv74
  br i1 %exitcond76.not, label %.lr.ph.1, label %.lr.ph, !llvm.loop !616

.lr.ph.1:                                         ; preds = %.lr.ph, %middle.block124
  %.lcssa101 = phi i32 [ %i.t, %middle.block124 ], [ %i.ag, %.lr.ph ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 256 ; 2 uses
  %3 = add i64 %1, %indvar                        ; 3 uses
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.1
  %n.vec = and i64 %3, -8                         ; 4 uses
  %i.ak = or disjoint i64 %n.vec, 1
  %i.al = trunc i64 %n.vec to i32
  %i.am = add i32 %.lcssa101, %i.al               ; 2 uses
  %broadcast.splatinsert106 = insertelement <4 x i32> poison, i32 %.lcssa101, i64 0
  %broadcast.splat107 = shufflevector <4 x i32> %broadcast.splatinsert106, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat107, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.an = add nsw <4 x i32> %vec.ind, %broadcast.splat
  %.reass146 = add <4 x i32> %vec.ind, %invariant.op145
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store <4 x i32> %i.an, ptr %i.ap, align 4, !tbaa !54
  store <4 x i32> %.reass146, ptr %i.aq, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !617

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge.1, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.1, %middle.block
  %indvars.iv68.1.ph = phi i64 [ 1, %.lr.ph.1 ], [ %i.ak, %middle.block ]
  %.sroa.8.249.1.ph = phi i32 [ %.lcssa101, %.lr.ph.1 ], [ %i.am, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv68.1 = phi i64 [ %indvars.iv.next69.1, %scalar.ph ], [ %indvars.iv68.1.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.8.249.1 = phi i32 [ %i.as, %scalar.ph ], [ %.sroa.8.249.1.ph, %scalar.ph.preheader ] ; 2 uses
  %i.as = add nsw i32 %.sroa.8.249.1, 1           ; 2 uses
  %i.at = add nsw i32 %.sroa.8.249.1, %i.d
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv68.1
  store i32 %i.at, ptr %i.au, align 4, !tbaa !54
  %indvars.iv.next69.1 = add nuw nsw i64 %indvars.iv68.1, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next69.1, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge.1, label %scalar.ph, !llvm.loop !618

._crit_edge.1:                                    ; preds = %scalar.ph, %middle.block, %.preheader47
  %.sroa.8.2.lcssa.1 = phi i32 [ %.sroa.8.053, %.preheader47 ], [ %i.am, %middle.block ], [ %i.as, %scalar.ph ] ; 2 uses
  %indvars.iv.next75 = add nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.av = load i32, ptr %i.h, align 8, !tbaa !174 ; 2 uses
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !172 ; 2 uses
  %i.ax = add nsw i32 %i.aw, %i.av                ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next75, %i.ay
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.az, label %.preheader47, label %.preheader46, !llvm.loop !619

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge59
  %i.ba = phi i32 [ %i.ac, %.preheader.lr.ph ], [ %i.bo, %._crit_edge59 ]
  %i.bb = phi i32 [ %i.z, %.preheader.lr.ph ], [ %i.bp, %._crit_edge59 ] ; 2 uses
  %i.bc = phi i32 [ %i.aa, %.preheader.lr.ph ], [ %i.bq, %._crit_edge59 ] ; 2 uses
  %indvars.iv81 = phi i64 [ %i.af, %.preheader.lr.ph ], [ %indvars.iv.next82, %._crit_edge59 ] ; 2 uses
  %.sroa.8.362 = phi i32 [ %.sroa.8.0.lcssa, %.preheader.lr.ph ], [ %.sroa.8.4.lcssa, %._crit_edge59 ] ; 2 uses
  %i.bd = add nsw i32 %i.bb, %i.bc
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.bf = getelementptr inbounds [512 x i8], ptr %i.ae, i64 %indvars.iv81
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph58, %bb.b
  %indvars.iv78 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next79, %bb.b ] ; 2 uses
  %.sroa.8.457 = phi i32 [ %.sroa.8.362, %.lr.ph58 ], [ %i.bg, %bb.b ] ; 2 uses
  %i.bg = add nsw i32 %.sroa.8.457, 1             ; 2 uses
  %i.bh = add nsw i32 %.sroa.8.457, %i.d
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv78
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !54
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.bj = load i32, ptr %i.h, align 8, !tbaa !174 ; 2 uses
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !172 ; 2 uses
  %i.bl = add nsw i32 %i.bk, %i.bj
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next79, %i.bm
  br i1 %i.bn, label %bb.b, label %._crit_edge59.loopexit, !llvm.loop !620

._crit_edge59.loopexit:                           ; preds = %bb.b
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !175
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %i.bo = phi i32 [ %i.ba, %.preheader ], [ %.pre, %._crit_edge59.loopexit ] ; 2 uses
  %i.bp = phi i32 [ %i.bb, %.preheader ], [ %i.bk, %._crit_edge59.loopexit ]
  %i.bq = phi i32 [ %i.bc, %.preheader ], [ %i.bj, %._crit_edge59.loopexit ]
  %.sroa.8.4.lcssa = phi i32 [ %.sroa.8.362, %.preheader ], [ %i.bg, %._crit_edge59.loopexit ] ; 2 uses
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.br = sext i32 %i.bo to i64
  %i.bs = icmp slt i64 %indvars.iv.next82, %i.br
  br i1 %i.bs, label %.preheader, label %._crit_edge63, !llvm.loop !621

._crit_edge63:                                    ; preds = %._crit_edge59, %.preheader46
  %.sroa.8.3.lcssa = phi i32 [ %.sroa.8.0.lcssa, %.preheader46 ], [ %.sroa.8.4.lcssa, %._crit_edge59 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !176
  %.not = icmp eq i32 %i.bu, 0
  %.pre84 = add i32 %i.g, %i.d
  %.pre85 = add i32 %.pre84, %.sroa.8.3.lcssa     ; 2 uses
  br i1 %.not, label %._crit_edge63._crit_edge, label %bb.c

bb.c:                                             ; preds = %._crit_edge63
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i32 noundef %i.d, i32 noundef %.sroa.8.3.lcssa, i32 noundef %i.g, i32 noundef %.pre85) ; 0 uses
  br label %._crit_edge63._crit_edge

._crit_edge63._crit_edge:                         ; preds = %._crit_edge63, %bb.c
  ret i32 %.pre85
}

; Function Attrs: nofree nounwind uwtable
define noalias noundef ptr @Exa6_ManAlloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32832) ptr @calloc(i64 noundef 1, i64 noundef 32832) #40 ; 12 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !173
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %6, ptr %i.c, align 8, !tbaa !176
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %2, ptr %i.d, align 4, !tbaa !178
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %3, ptr %i.e, align 8, !tbaa !174
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %5, ptr %i.f, align 4, !tbaa !172
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %4, ptr %i.g, align 8, !tbaa !179
  %i.h = add i32 %4, %3
  %i.i = add i32 %i.h, %5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %i.i, ptr %i.j, align 4, !tbaa !175
  %i.k = tail call i32 @Exa6_ManMarkup(ptr noundef nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32808
  store i32 %i.k, ptr %i.l, align 8, !tbaa !180
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32812
  store i32 0, ptr %i.m, align 4, !tbaa !181
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @Exa6_ManFree(ptr noundef captures(address_is_null) %0) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind uwtable
define noundef i32 @Exa6_ManGenStart(ptr nofree noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = alloca [4 x i32], align 16               ; 8 uses
  %i.c = alloca [4 x i32], align 16               ; 24 uses
  %i.d = alloca [4 x i32], align 16               ; 8 uses
  %i.e = alloca [4 x i32], align 16               ; 17 uses
  %i.f = alloca [4 x i32], align 16               ; 8 uses
  %i.g = alloca [4 x i32], align 16               ; 8 uses
  %i.h = alloca [4 x i32], align 16               ; 8 uses
  %i.i = alloca [128 x i32], align 16             ; 39 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !174  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !172  ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph544, label %..preheader480_crit_edge

..preheader480_crit_edge:                         ; preds = %bb.a
  %.pre749 = add nsw i32 %i.m, %i.k
  br label %.preheader480

.lr.ph544:                                        ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32824 ; 35 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32816 ; 26 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32808 ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32812 ; 19 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.not241 = icmp eq i32 %3, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 4 uses
  %.not242 = icmp eq i32 %2, 0
  %i.ag = sub i32 5, %1                           ; 2 uses
  %i.ah = icmp slt i32 %1, 5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 6 uses
  %.not243 = icmp eq i32 %1, 0
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 1) ; 3 uses
  %i.ao = sext i32 %i.k to i64
  %wide.trip.count644 = zext nneg i32 %smax to i64 ; 3 uses
  %wide.trip.count.i320 = zext nneg i32 %smax to i64
  %i.ap = zext nneg i32 %smax to i64              ; 3 uses
  %min.iters.check = icmp slt i32 %i.ag, 8
  %n.vec = and i64 %wide.trip.count644, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count644
  br label %bb.k

.preheader480:                                    ; preds = %.loopexit496, %..preheader480_crit_edge
  %.pre-phi = phi i32 [ %.pre749, %..preheader480_crit_edge ], [ %i.st, %.loopexit496 ] ; 4 uses
  %i.aq = phi i32 [ %i.m, %..preheader480_crit_edge ], [ %i.ss, %.loopexit496 ]
end_hunk_1
