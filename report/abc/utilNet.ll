Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilNet?download=true
inline.NumInlined: 220
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Tn_ParseSolution:bb.a
  %i.aq = uitofp nneg i32 %i.ah to double
  %i.ar = fmul nnan double %i.aq, 4.000000e+00
  %i.as = fmul nnan double %i.ar, f0x3EB0000000000000
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.ap, double noundef %i.as) ; 0 uses
  %i.au = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.av = call i32 @fflush(ptr noundef %i.au)     ; 0 uses
  %.pre.pre = load ptr, ptr %i.x, align 8, !tbaa !16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre = phi ptr [ %.pre.pre, %bb.j ], [ %i.ak, %bb.i ]
  store i32 %i.ah, ptr %i.w, align 4, !tbaa !17
  %.pre.i = load i32, ptr %.01939, align 8, !tbaa !15
  br label %tn_vi_push.exit

tn_vi_push.exit:                                  ; preds = %.lr.ph, %bb.k
  %.pre4446 = phi ptr [ %.pre44, %.lr.ph ], [ %.pre, %bb.k ] ; 3 uses
  %i.aw = phi i32 [ %.019.val32, %.lr.ph ], [ %.pre.i, %bb.k ] ; 2 uses
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %.01939, align 8, !tbaa !15
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %.pre4446, i64 %i.ay
  store i32 -1, ptr %i.az, align 4, !tbaa !10
  %.019.val = load i32, ptr %.01939, align 8, !tbaa !15 ; 2 uses
  %.not25 = icmp sgt i32 %.019.val, %i.ab
  br i1 %.not25, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %tn_vi_push.exit, %bb.h
  %.019.val27 = phi ptr [ %.019.val27.pre, %bb.h ], [ %.pre4446, %tn_vi_push.exit ]
  %i.ba = icmp sgt i32 %i.z, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = zext nneg i32 %i.ab to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.019.val27, i64 %i.bc
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !10
  %i.be = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.8) #18 ; 2 uses
  %.not24 = icmp eq ptr %i.be, null
  br i1 %.not24, label %.thread, label %bb.g

.thread:                                          ; preds = %._crit_edge, %bb.g, %bb.f, %bb.c, %bb.e
  %.120 = phi ptr [ %i.r, %bb.e ], [ %.01939, %bb.c ], [ %.01939, %bb.f ], [ %.01939, %bb.g ], [ %.01939, %._crit_edge ] ; 2 uses
  %i.bf = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef nonnull %i.b)
  %.not = icmp eq ptr %i.bf, null
  br i1 %.not, label %._crit_edge41, label %bb.c, !llvm.loop !52

._crit_edge41:                                    ; preds = %.thread, %bb.d, %.preheader
  %.019.lcssa = phi ptr [ null, %.preheader ], [ %.01939, %bb.d ], [ %.120, %.thread ]
  %i.bg = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  %i.bh = call i32 @unlink(ptr noundef %0) #18    ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge41, %bb.b
  %.021 = phi ptr [ null, %bb.b ], [ %.019.lcssa, %._crit_edge41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.021
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noalias ptr @Tn_SolveSat(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [1000 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #18
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Tn_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %6, align 8, !tbaa !54
  %.neg32 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !55
  %.neg = sdiv i64 %i.f, -1000
  %.neg33 = add i64 %.neg, %.neg32
  br label %Tn_Clock.exit

Tn_Clock.exit:                                    ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg33, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %Tn_Clock.exit
  %i.g = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.9, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.12, ptr noundef %0, ptr noundef %1) #18 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %Tn_Clock.exit
  %i.h = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.9, i32 noundef %2, ptr noundef nonnull @.str.12, ptr noundef %0, ptr noundef %1) #18 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = call i32 @system(ptr noundef nonnull %i.a) #18
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.l = call ptr @Tn_ParseSolution(ptr noundef %1) ; 3 uses
  %.not28 = icmp eq i32 %4, 0
  br i1 %.not28, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not29 = icmp eq ptr %i.l, null
  br i1 %.not29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15) ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.o = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %3) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.p = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #18
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %Tn_Clock.exit31, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = load i64, ptr %5, align 8, !tbaa !54
  %i.s = mul nsw i64 %i.r, 1000000
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !55
  %i.v = sdiv i64 %i.u, 1000
  %i.w = add nsw i64 %i.v, %i.s
  br label %Tn_Clock.exit31

Tn_Clock.exit31:                                  ; preds = %bb.m, %bb.n
  %.0.i30 = phi i64 [ %i.w, %bb.n ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.x = add i64 %.0.i30, %.0.i.neg
  %i.y = sitofp i64 %i.x to double
  %i.z = fdiv double %i.y, 1.000000e+06
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull @.str.18, double noundef %i.z) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %Tn_Clock.exit31, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ %i.l, %Tn_Clock.exit31 ], [ %i.l, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @system(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @Tn_SolveProblem(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 7 uses
  %i.b = alloca [15 x i32], align 16              ; 9 uses
  %i.c = alloca [15 x i32], align 16              ; 6 uses
  %i.d = alloca [4 x i32], align 16               ; 7 uses
  %i.e = alloca [4 x i32], align 16               ; 7 uses
  %i.f = alloca [4 x i32], align 16               ; 7 uses
  %i.g = alloca [4 x i32], align 16               ; 7 uses
  %i.h = alloca [4 x i32], align 16               ; 7 uses
  %i.i = alloca [4 x i32], align 16               ; 7 uses
  %i.j = alloca [4 x i32], align 16               ; 7 uses
  %i.k = alloca [4 x i32], align 16               ; 7 uses
  %i.l = alloca [15 x i32], align 16              ; 6 uses
  %i.m = alloca [15 x i32], align 16              ; 11 uses
  %i.n = alloca [15 x i32], align 16              ; 8 uses
  %i.o = alloca [2 x i32], align 8                ; 8 uses
  %i.p = alloca [2 x [15 x i32]], align 16        ; 8 uses
  %i.q = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 264, i64 noundef 1) #22 ; 80 uses
  store i32 %0, ptr %i.q, align 8, !tbaa !132
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 13 uses
  store i32 %1, ptr %i.r, align 4, !tbaa !133
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #21
  %i.t = trunc i64 %i.s to i32                    ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 36 uses
  store i32 %i.t, ptr %i.u, align 8, !tbaa !134
  %i.v = mul nsw i32 %i.t, %i.t                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 22 uses
  store i32 %i.v, ptr %i.w, align 4, !tbaa !135
  %i.x = shl nuw i32 1, %0                        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 %i.x, ptr %i.y, align 8, !tbaa !136
  %i.z = add nsw i32 %i.x, %0
  %i.aa = mul nsw i32 %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 216 ; 3 uses
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  store ptr %3, ptr %i.ac, align 8, !tbaa !137
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 20 ; 3 uses
  store i32 %4, ptr %i.ad, align 4, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store i32 %5, ptr %i.ae, align 8, !tbaa !138
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  store i32 %9, ptr %i.af, align 4, !tbaa !139
  %i.ag = icmp sgt i32 %1, 0
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ai = zext nneg i32 %1 to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr readonly align 8 %2, i64 %i.aj, i1 false), !tbaa !33
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %i.ak = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 1000, ptr %i.al, align 4, !tbaa !17
  %i.am = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #19
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 248 ; 4 uses
  store ptr %i.ak, ptr %i.ao, align 8, !tbaa !30
  %i.ap = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  store i32 1000, ptr %i.aq, align 4, !tbaa !17
  %i.ar = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #19 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %i.n, i8 0, i64 60, i1 false)
  %i.at = add nsw i32 %i.t, -1                    ; 5 uses
  %.02936.i.i = add nsw i32 %0, 1                 ; 7 uses
  %i.au = icmp slt i32 %.02936.i.i, %i.at
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %.lr.ph55.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i
  %reass.sub.i = sub i32 %i.t, %0
  %i.av = add i32 %reass.sub.i, -2                ; 4 uses
  %wide.trip.count.i.i = zext i32 %i.av to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.av, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967288 ; 4 uses
  %i.aw = trunc nuw i64 %n.vec to i32
  %i.ax = add i32 %.02936.i.i, %i.aw
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.02936.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %vec.ind, ptr %i.ay, align 16, !tbaa !10
  store <4 x i32> %step.add, ptr %i.az, align 16, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.lr.ph55.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.02938.i.i.ph = phi i32 [ %.02936.i.i, %.lr.ph.preheader.i.i ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph55.i.i:                                     ; preds = %.lr.ph.i.i, %middle.block, %._crit_edge.i
  %.0.lcssa98.i.i = phi i32 [ 0, %._crit_edge.i ], [ %i.av, %middle.block ], [ %i.av, %.lr.ph.i.i ] ; 5 uses
  %i.bb = shl nuw nsw i32 1, %.0.lcssa98.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 60 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %wide.trip.count74.i.i = zext i32 %.0.lcssa98.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count74.i.i, 1
  %i.be = icmp eq i32 %.0.lcssa98.i.i, 1          ; 0 uses
  %unroll_iter = and i64 %wide.trip.count74.i.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod888 = trunc i32 %.0.lcssa98.i.i to i1
  br label %bb.b

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.02938.i.i = phi i32 [ %.029.i.i, %.lr.ph.i.i ], [ %.02938.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.i
  store i32 %.02938.i.i, ptr %i.bf, align 4, !tbaa !10
  %.029.i.i = add nsw i32 %.02938.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph55.i.i, label %.lr.ph.i.i, !llvm.loop !57

bb.b:                                             ; preds = %._crit_edge50.split.i.i, %.lr.ph55.i.i
  %i.bg = phi ptr [ %i.ar, %.lr.ph55.i.i ], [ %i.gb, %._crit_edge50.split.i.i ]
  %i.bh = phi ptr [ %i.ar, %.lr.ph55.i.i ], [ %i.gc, %._crit_edge50.split.i.i ] ; 2 uses
  %.lcssa48.lcssa62.i.i = phi i32 [ 1000, %.lr.ph55.i.i ], [ %.lcssa48.lcssa63.i.i, %._crit_edge50.split.i.i ] ; 5 uses
  %.lcssa46.lcssa58.i.i = phi i32 [ 0, %.lr.ph55.i.i ], [ %.lcssa46.lcssa59.i.i, %._crit_edge50.split.i.i ] ; 3 uses
  %.02754.i.i = phi i32 [ 0, %.lr.ph55.i.i ], [ %i.gd, %._crit_edge50.split.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18
  store i64 1, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #18
  store i32 0, ptr %i.p, align 16, !tbaa !10
  switch i32 %.0.lcssa98.i.i, label %.lr.ph41.i.i [
    i32 0, label %._crit_edge.i.i
    i32 1, label %.lr.ph41.i.i.epil.preheader
  ]

.lr.ph41.i.i:                                     ; preds = %bb.b, %.lr.ph41.i.i
  %indvars.iv71.i.i = phi i64 [ %indvars.iv.next72.i.i.1, %.lr.ph41.i.i ], [ 0, %bb.b ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph41.i.i ], [ 0, %bb.b ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv71.i.i
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !10
  %i.bk = trunc nuw nsw i64 %indvars.iv71.i.i to i32
  %i.bl = lshr i32 %.02754.i.i, %i.bk
  %i.bm = and i32 %i.bl, 1
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.bo = getelementptr inbounds nuw [60 x i8], ptr %i.p, i64 %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bn ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !10 ; 2 uses
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !10
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bs
  store i32 %i.bj, ptr %i.bt, align 4, !tbaa !10
  %indvars.iv.next72.i.i = or disjoint i64 %indvars.iv71.i.i, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next72.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !10
  %i.bw = trunc nuw nsw i64 %indvars.iv.next72.i.i to i32
  %i.bx = lshr i32 %.02754.i.i, %i.bw
  %i.by = and i32 %i.bx, 1
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = getelementptr inbounds nuw [60 x i8], ptr %i.p, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bz ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !10 ; 2 uses
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !10
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.ce
  store i32 %i.bv, ptr %i.cf, align 4, !tbaa !10
  %indvars.iv.next72.i.i.1 = add nuw nsw i64 %indvars.iv71.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph41.i.i, !llvm.loop !58

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph41.i.i
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph41.i.i.epil.preheader

.lr.ph41.i.i.epil.preheader:                      ; preds = %bb.b, %._crit_edge.loopexit.i.i.unr-lcssa
  %indvars.iv71.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next72.i.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod888)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv71.i.i.epil.init
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !10
  %i.ci = trunc nuw nsw i64 %indvars.iv71.i.i.epil.init to i32
  %i.cj = lshr i32 %.02754.i.i, %i.ci
  %i.ck = and i32 %i.cj, 1
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = getelementptr inbounds nuw [60 x i8], ptr %i.p, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cl ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !10 ; 2 uses
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !10
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cq
  store i32 %i.ch, ptr %i.cr, align 4, !tbaa !10
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph41.i.i.epil.preheader
  %.pre.i.i = load i32, ptr %i.bd, align 4, !tbaa !10
  %.pre91.i.i = load i32, ptr %i.o, align 8, !tbaa !10
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %._crit_edge.loopexit.i.i
  %i.cs = phi i32 [ %.pre91.i.i, %._crit_edge.loopexit.i.i ], [ 1, %bb.b ] ; 3 uses
  %i.ct = phi i32 [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.cu = add i32 %i.ct, 1                        ; 2 uses
  %i.cv = sext i32 %i.ct to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.cv
  store i32 %i.at, ptr %i.cw, align 4, !tbaa !10
end_hunk_0
begin_hunk_1_@Tn_SolveProblem:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.uy, ptr readonly align 4 %.val63.i, i64 %i.qm, i1 false)
  %i.va = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  store ptr %i.uw, ptr %i.va, align 8, !tbaa !21
  br i1 %i.qq, label %.lr.ph33.i117.i.preheader, label %Tn_Init.exit

.lr.ph33.i117.i.preheader:                        ; preds = %Tn_SetSwap.exit115.i
  %broadcast.splatinsert736 = insertelement <4 x i32> poison, i32 %i.oi, i64 0
  %broadcast.splat737 = shufflevector <4 x i32> %broadcast.splatinsert736, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert738 = insertelement <4 x i32> poison, i32 %i.sw, i64 0
  %broadcast.splat739 = shufflevector <4 x i32> %broadcast.splatinsert738, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %.lr.ph33.i117.i

.lr.ph33.i117.i:                                  ; preds = %.lr.ph33.i117.i.preheader, %._crit_edge.i119.i
  %.02531.i118.i = phi i32 [ %i.wx, %._crit_edge.i119.i ], [ 0, %.lr.ph33.i117.i.preheader ] ; 2 uses
  %i.vb = add nsw i32 %.02531.i118.i, 1           ; 2 uses
  %i.vc = sext i32 %.02531.i118.i to i64
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.vc
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !10 ; 4 uses
  %i.vf = icmp sgt i32 %i.ve, 0
  br i1 %i.vf, label %.lr.ph.preheader.i120.i, label %._crit_edge.i119.i

.lr.ph.preheader.i120.i:                          ; preds = %.lr.ph33.i117.i
  %i.vg = sext i32 %i.vb to i64
  %wide.trip.count.i121.i = zext nneg i32 %i.ve to i64 ; 3 uses
  %invariant.gep.i122.i = getelementptr [4 x i8], ptr %i.uy, i64 %i.vg ; 9 uses
  %min.iters.check733 = icmp ult i32 %i.ve, 8
  br i1 %min.iters.check733, label %.lr.ph.i123.i.preheader, label %vector.ph734

vector.ph734:                                     ; preds = %.lr.ph.preheader.i120.i
  %n.vec735 = and i64 %wide.trip.count.i121.i, 2147483640 ; 3 uses
  br label %vector.body740

vector.body740:                                   ; preds = %pred.store.continue761, %vector.ph734
  %index741 = phi i64 [ 0, %vector.ph734 ], [ %index.next762, %pred.store.continue761 ] ; 9 uses
  %i.vh = getelementptr [4 x i8], ptr %invariant.gep.i122.i, i64 %index741 ; 3 uses
  %i.vi = getelementptr i8, ptr %i.vh, i64 16
  %wide.load742 = load <4 x i32>, ptr %i.vh, align 4, !tbaa !10 ; 2 uses
  %wide.load743 = load <4 x i32>, ptr %i.vi, align 4, !tbaa !10 ; 2 uses
  %i.vj = icmp eq <4 x i32> %wide.load742, %broadcast.splat737 ; 2 uses
  %i.vk = icmp eq <4 x i32> %wide.load743, %broadcast.splat737 ; 2 uses
  %i.vl = icmp eq <4 x i32> %wide.load742, %broadcast.splat739
  %i.vm = icmp eq <4 x i32> %wide.load743, %broadcast.splat739
  %i.vn = select <4 x i1> %i.vj, <4 x i1> splat (i1 true), <4 x i1> %i.vl ; 4 uses
  %i.vo = select <4 x i1> %i.vk, <4 x i1> splat (i1 true), <4 x i1> %i.vm ; 4 uses
  %predphi744 = select <4 x i1> %i.vj, <4 x i32> %broadcast.splat739, <4 x i32> %broadcast.splat737 ; 4 uses
  %predphi745 = select <4 x i1> %i.vk, <4 x i32> %broadcast.splat739, <4 x i32> %broadcast.splat737 ; 4 uses
  %i.vp = extractelement <4 x i1> %i.vn, i64 0
  br i1 %i.vp, label %pred.store.if746, label %pred.store.continue747

pred.store.if746:                                 ; preds = %vector.body740
  %i.vq = extractelement <4 x i32> %predphi744, i64 0
  store i32 %i.vq, ptr %i.vh, align 4, !tbaa !10
  br label %pred.store.continue747

pred.store.continue747:                           ; preds = %pred.store.if746, %vector.body740
  %i.vr = extractelement <4 x i1> %i.vn, i64 1
  br i1 %i.vr, label %pred.store.if748, label %pred.store.continue749

pred.store.if748:                                 ; preds = %pred.store.continue747
  %i.vs = getelementptr [4 x i8], ptr %invariant.gep.i122.i, i64 %index741
  %i.vt = getelementptr i8, ptr %i.vs, i64 4
  %i.vu = extractelement <4 x i32> %predphi744, i64 1
  store i32 %i.vu, ptr %i.vt, align 4, !tbaa !10
  br label %pred.store.continue749

pred.store.continue749:                           ; preds = %pred.store.if748, %pred.store.continue747
  %i.vv = extractelement <4 x i1> %i.vn, i64 2
  br i1 %i.vv, label %pred.store.if750, label %pred.store.continue751

pred.store.if750:                                 ; preds = %pred.store.continue749
  %i.vw = getelementptr [4 x i8], ptr %invariant.gep.i122.i, i64 %index741
  %i.vx = getelementptr i8, ptr %i.vw, i64 8
  %i.vy = extractelement <4 x i32> %predphi744, i64 2
  store i32 %i.vy, ptr %i.vx, align 4, !tbaa !10
  br label %pred.store.continue751

pred.store.continue751:                           ; preds = %pred.store.if750, %pred.store.continue749
  %i.vz = extractelement <4 x i1> %i.vn, i64 3
  br i1 %i.vz, label %pred.store.if752, label %pred.store.continue753

pred.store.if752:                                 ; preds = %pred.store.continue751
  %i.wa = getelementptr [4 x i8], ptr %invariant.gep.i122.i, i64 %index741
  %i.wb = getelementptr i8, ptr %i.wa, i64 12
  %i.wc = extractelement <4 x i32> %predphi744, i64 3
  store i32 %i.wc, ptr %i.wb, align 4, !tbaa !10
  br label %pred.store.continue753

pred.store.continue753:                           ; preds = %pred.store.if752, %pred.store.continue751
  %i.wd = extractelement <4 x i1> %i.vo, i64 0
  br i1 %i.wd, label %pred.store.if754, label %pred.store.continue755

pred.store.if754:                                 ; preds = %pred.store.continue753
  %i.we = getelementptr [4 x i8], ptr %invariant.gep.i122.i, i64 %index741
  %i.wf = getelementptr i8, ptr %i.we, i64 16
  %i.wg = extractelement <4 x i32> %predphi745, i64 0
  store i32 %i.wg, ptr %i.wf, align 4, !tbaa !10
  br label %pred.store.continue755

pred.store.continue755:                           ; preds = %pred.store.if754, %pred.store.continue753
  %i.wh = extractelement <4 x i1> %i.vo, i64 1
  br i1 %i.wh, label %pred.store.if756, label %pred.store.continue757

pred.store.if756:                                 ; preds = %pred.store.continue755
  %i.wi = getelementptr [4 x i8], ptr %invariant.gep.i122.i, i64 %index741
  %i.wj = getelementptr i8, ptr %i.wi, i64 20
  %i.wk = extractelement <4 x i32> %predphi745, i64 1
  store i32 %i.wk, ptr %i.wj, align 4, !tbaa !10
  br label %pred.store.continue757

pred.store.continue757:                           ; preds = %pred.store.if756, %pred.store.continue755
  %i.wl = extractelement <4 x i1> %i.vo, i64 2
  br i1 %i.wl, label %pred.store.if758, label %pred.store.continue759

pred.store.if758:                                 ; preds = %pred.store.continue757
  %i.wm = getelementptr [4 x i8], ptr %invariant.gep.i122.i, i64 %index741
  %i.wn = getelementptr i8, ptr %i.wm, i64 24
  %i.wo = extractelement <4 x i32> %predphi745, i64 2
  store i32 %i.wo, ptr %i.wn, align 4, !tbaa !10
  br label %pred.store.continue759

pred.store.continue759:                           ; preds = %pred.store.if758, %pred.store.continue757
  %i.wp = extractelement <4 x i1> %i.vo, i64 3
  br i1 %i.wp, label %pred.store.if760, label %pred.store.continue761

pred.store.if760:                                 ; preds = %pred.store.continue759
  %i.wq = getelementptr [4 x i8], ptr %invariant.gep.i122.i, i64 %index741
  %i.wr = getelementptr i8, ptr %i.wq, i64 28
  %i.ws = extractelement <4 x i32> %predphi745, i64 3
  store i32 %i.ws, ptr %i.wr, align 4, !tbaa !10
  br label %pred.store.continue761

pred.store.continue761:                           ; preds = %pred.store.if760, %pred.store.continue759
  %index.next762 = add nuw i64 %index741, 8       ; 2 uses
  %i.wt = icmp eq i64 %index.next762, %n.vec735
  br i1 %i.wt, label %middle.block763, label %vector.body740, !llvm.loop !82

middle.block763:                                  ; preds = %pred.store.continue761
  %cmp.n764 = icmp eq i64 %n.vec735, %wide.trip.count.i121.i
  br i1 %cmp.n764, label %._crit_edge.i119.i, label %.lr.ph.i123.i.preheader

.lr.ph.i123.i.preheader:                          ; preds = %.lr.ph.preheader.i120.i, %middle.block763
  %indvars.iv.i124.i.ph = phi i64 [ 0, %.lr.ph.preheader.i120.i ], [ %n.vec735, %middle.block763 ]
  br label %.lr.ph.i123.i

.lr.ph.i123.i:                                    ; preds = %.lr.ph.i123.i.preheader, %bb.aj
  %indvars.iv.i124.i = phi i64 [ %indvars.iv.next.i126.i, %bb.aj ], [ %indvars.iv.i124.i.ph, %.lr.ph.i123.i.preheader ] ; 2 uses
  %gep.i125.i = getelementptr [4 x i8], ptr %invariant.gep.i122.i, i64 %indvars.iv.i124.i ; 2 uses
  %i.wu = load i32, ptr %gep.i125.i, align 4, !tbaa !10 ; 2 uses
  %i.wv = icmp eq i32 %i.wu, %i.oi
  br i1 %i.wv, label %.sink.split.i130.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i123.i
  %i.ww = icmp eq i32 %i.wu, %i.sw
  br i1 %i.ww, label %.sink.split.i130.i, label %bb.aj

.sink.split.i130.i:                               ; preds = %bb.ai, %.lr.ph.i123.i
  %.sink.i131.i = phi i32 [ %i.sw, %.lr.ph.i123.i ], [ %i.oi, %bb.ai ]
  store i32 %.sink.i131.i, ptr %gep.i125.i, align 4, !tbaa !10
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i130.i, %bb.ai
  %indvars.iv.next.i126.i = add nuw nsw i64 %indvars.iv.i124.i, 1 ; 2 uses
  %exitcond.not.i127.i = icmp eq i64 %indvars.iv.next.i126.i, %wide.trip.count.i121.i
  br i1 %exitcond.not.i127.i, label %._crit_edge.i119.i, label %.lr.ph.i123.i, !llvm.loop !83

._crit_edge.i119.i:                               ; preds = %bb.aj, %middle.block763, %.lr.ph33.i117.i
  %i.wx = add nsw i32 %i.ve, %i.vb                ; 2 uses
  %i.wy = icmp slt i32 %i.wx, %.val.i
  br i1 %i.wy, label %.lr.ph33.i117.i, label %Tn_Init.exit, !llvm.loop !77

Tn_Init.exit:                                     ; preds = %._crit_edge.i119.i, %Tn_PathGen.exit.i, %Tn_SetSwap.exit98.i, %Tn_SetSwap.exit115.i
  %i.wz = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  store i32 0, ptr %i.wz, align 8, !tbaa !15
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 4
  store i32 100, ptr %i.xa, align 4, !tbaa !17
  %i.xb = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #19
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  store ptr %i.xb, ptr %i.xc, align 8, !tbaa !16
  %i.xd = getelementptr inbounds nuw i8, ptr %i.q, i64 232 ; 14 uses
  store ptr %i.wz, ptr %i.xd, align 8, !tbaa !21
  %i.xe = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  store i32 0, ptr %i.xe, align 8, !tbaa !15
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 4
  store i32 100, ptr %i.xf, align 4, !tbaa !17
  %i.xg = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #19
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store ptr %i.xg, ptr %i.xh, align 8, !tbaa !16
  %i.xi = getelementptr inbounds nuw i8, ptr %i.q, i64 240 ; 4 uses
  store ptr %i.xe, ptr %i.xi, align 8, !tbaa !21
  %i.xj = load i32, ptr %i.q, align 8, !tbaa !132 ; 3 uses
  %i.xk = icmp sgt i32 %i.xj, 0
  br i1 %i.xk, label %.preheader164.preheader.i.i, label %._crit_edge175.i.i

.preheader164.preheader.i.i:                      ; preds = %Tn_Init.exit
  %i.xl = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.xm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.xo = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.xp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  br label %.preheader164.i.i

.preheader164.i.i:                                ; preds = %._crit_edge168.i.i, %.preheader164.preheader.i.i
  %i.xr = phi i32 [ %13, %._crit_edge168.i.i ], [ %i.xj, %.preheader164.preheader.i.i ] ; 5 uses
  %.0169.i.i = phi i32 [ %i.za, %._crit_edge168.i.i ], [ 0, %.preheader164.preheader.i.i ] ; 3 uses
  %.not127166.i.i = icmp slt i32 %i.xr, 1
  br i1 %.not127166.i.i, label %._crit_edge168.i.i, label %.preheader163.lr.ph.i.i

.preheader163.lr.ph.i.i:                          ; preds = %.preheader164.i.i
  %10 = load i32, ptr %i.u, align 8, !tbaa !134   ; 3 uses
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %.preheader163.i.i, label %._crit_edge168.i.i

.preheader162.i.i:                                ; preds = %._crit_edge168.i.i
  %i.xs = icmp sgt i32 %13, 0
  br i1 %i.xs, label %.preheader161.lr.ph.i.i, label %._crit_edge175.i.i

.preheader161.lr.ph.i.i:                          ; preds = %.preheader162.i.i
  %i.xt = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.xu = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %12 = load i32, ptr %i.u, align 8, !tbaa !134   ; 2 uses
  %i.xw = icmp sgt i32 %12, 0
  br i1 %i.xw, label %.preheader161.i.i, label %._crit_edge175.i.i

.preheader163.i.i:                                ; preds = %.preheader163.lr.ph.i.i, %._crit_edge.i.i42
  %i.xx = phi i32 [ %i.yv, %._crit_edge.i.i42 ], [ %i.xr, %.preheader163.lr.ph.i.i ]
  %i.xy = phi i32 [ %i.yw, %._crit_edge.i.i42 ], [ %i.xr, %.preheader163.lr.ph.i.i ]
  %i.xz = phi i32 [ %i.yx, %._crit_edge.i.i42 ], [ %10, %.preheader163.lr.ph.i.i ] ; 2 uses
  %i.ya = phi i32 [ %i.yy, %._crit_edge.i.i42 ], [ %10, %.preheader163.lr.ph.i.i ] ; 3 uses
  %.0120167.i.i = phi i32 [ %i.yz, %._crit_edge.i.i42 ], [ 1, %.preheader163.lr.ph.i.i ] ; 5 uses
  %i.yb = icmp sgt i32 %i.ya, 0
  br i1 %i.yb, label %.lr.ph.i.i43, label %._crit_edge.i.i42

.lr.ph.i.i43:                                     ; preds = %.preheader163.i.i, %bb.al
  %i.yc = phi i32 [ %i.ys, %bb.al ], [ %i.xz, %.preheader163.i.i ]
  %i.yd = phi i32 [ %i.ys, %bb.al ], [ %i.ya, %.preheader163.i.i ]
  %.0117165.i.i = phi i32 [ %i.yt, %bb.al ], [ 0, %.preheader163.i.i ] ; 4 uses
  %.not128.i.i = icmp eq i32 %.0120167.i.i, %.0117165.i.i
  br i1 %.not128.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i43
  %.val13.i.i.i = load i32, ptr %i.w, align 4, !tbaa !135
  %i.ye = tail call noundef i32 @llvm.smin.i32(i32 %.0120167.i.i, i32 %.0117165.i.i) ; 2 uses
  %i.yf = tail call noundef i32 @llvm.smax.i32(i32 %.0120167.i.i, i32 %.0117165.i.i) ; 2 uses
  %i.yg = mul nsw i32 %.val13.i.i.i, %.0169.i.i
  %i.yh = mul nuw nsw i32 %i.ye, %i.yd
  %i.yi = add i32 %i.yh, %i.yf
  %i.yj = add i32 %i.yi, %i.yg
  %i.yk = shl nsw i32 %i.yj, 1
  %i.yl = or disjoint i32 %i.yk, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  store i32 %i.yl, ptr %i.k, align 16, !tbaa !10
  store i32 0, ptr %i.xl, align 4, !tbaa !10
  store i32 0, ptr %i.xm, align 8, !tbaa !10
  store i32 0, ptr %i.xn, align 4, !tbaa !10
  call fastcc void @Tn_GenClause(ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  %.val.i130.i.i = load i32, ptr %i.u, align 8, !tbaa !134
  %.val13.i131.i.i = load i32, ptr %i.w, align 4, !tbaa !135
  %i.ym = mul nsw i32 %.val13.i131.i.i, %.0169.i.i
  %i.yn = mul nsw i32 %.val.i130.i.i, %i.yf
  %i.yo = add i32 %i.yn, %i.ye
  %i.yp = add i32 %i.yo, %i.ym
  %i.yq = shl nsw i32 %i.yp, 1
  %i.yr = or disjoint i32 %i.yq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  store i32 %i.yr, ptr %i.j, align 16, !tbaa !10
  store i32 0, ptr %i.xo, align 4, !tbaa !10
  store i32 0, ptr %i.xp, align 8, !tbaa !10
  store i32 0, ptr %i.xq, align 4, !tbaa !10
  call fastcc void @Tn_GenClause(ptr noundef nonnull %i.q, ptr noundef nonnull %i.j, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  %.pre.i.i44 = load i32, ptr %i.u, align 8, !tbaa !134
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i.i43
  %i.ys = phi i32 [ %i.yc, %.lr.ph.i.i43 ], [ %.pre.i.i44, %bb.ak ] ; 5 uses
  %i.yt = add nuw nsw i32 %.0117165.i.i, 1        ; 2 uses
  %i.yu = icmp slt i32 %i.yt, %i.ys
  br i1 %i.yu, label %.lr.ph.i.i43, label %._crit_edge.loopexit.i.i45, !llvm.loop !84

._crit_edge.loopexit.i.i45:                       ; preds = %bb.al
  %.pre200.i.i = load i32, ptr %i.q, align 8, !tbaa !132 ; 2 uses
  br label %._crit_edge.i.i42

._crit_edge.i.i42:                                ; preds = %._crit_edge.loopexit.i.i45, %.preheader163.i.i
  %i.yv = phi i32 [ %.pre200.i.i, %._crit_edge.loopexit.i.i45 ], [ %i.xx, %.preheader163.i.i ] ; 2 uses
  %i.yw = phi i32 [ %.pre200.i.i, %._crit_edge.loopexit.i.i45 ], [ %i.xy, %.preheader163.i.i ] ; 2 uses
  %i.yx = phi i32 [ %i.ys, %._crit_edge.loopexit.i.i45 ], [ %i.xz, %.preheader163.i.i ]
  %i.yy = phi i32 [ %i.ys, %._crit_edge.loopexit.i.i45 ], [ %i.ya, %.preheader163.i.i ]
  %i.yz = add nuw nsw i32 %.0120167.i.i, 1
  %.not127.not.i.i = icmp slt i32 %.0120167.i.i, %i.yw
  br i1 %.not127.not.i.i, label %.preheader163.i.i, label %._crit_edge168.i.i, !llvm.loop !85

._crit_edge168.i.i:                               ; preds = %._crit_edge.i.i42, %.preheader163.lr.ph.i.i, %.preheader164.i.i
  %13 = phi i32 [ %i.xr, %.preheader164.i.i ], [ %i.xr, %.preheader163.lr.ph.i.i ], [ %i.yv, %._crit_edge.i.i42 ] ; 6 uses
  %i.za = add nuw nsw i32 %.0169.i.i, 1           ; 2 uses
  %i.zb = icmp slt i32 %i.za, %13
  br i1 %i.zb, label %.preheader164.i.i, label %.preheader162.i.i, !llvm.loop !86

.preheader161.i.i:                                ; preds = %.preheader161.lr.ph.i.i, %._crit_edge173.i.i
  %i.zc = phi i32 [ %i.zp, %._crit_edge173.i.i ], [ %13, %.preheader161.lr.ph.i.i ]
  %i.zd = phi i32 [ %i.zq, %._crit_edge173.i.i ], [ %12, %.preheader161.lr.ph.i.i ] ; 3 uses
  %.1174.i.i = phi i32 [ %i.zr, %._crit_edge173.i.i ], [ 0, %.preheader161.lr.ph.i.i ] ; 2 uses
  %i.ze = icmp sgt i32 %i.zd, 0
  br i1 %i.ze, label %.lr.ph172.i.i, label %._crit_edge173.i.i

.lr.ph172.i.i:                                    ; preds = %.preheader161.i.i, %.lr.ph172.i.i
  %i.zf = phi i32 [ %i.zn, %.lr.ph172.i.i ], [ %i.zd, %.preheader161.i.i ]
  %.1121171.i.i = phi i32 [ %i.zm, %.lr.ph172.i.i ], [ 0, %.preheader161.i.i ] ; 2 uses
  %.val129.i.i = load i32, ptr %i.w, align 4, !tbaa !135
  %i.zg = mul nsw i32 %.val129.i.i, %.1174.i.i
  %i.zh = add i32 %i.zf, 1
  %i.zi = mul i32 %i.zh, %.1121171.i.i
  %i.zj = add i32 %i.zg, %i.zi
  %i.zk = shl nsw i32 %i.zj, 1
  %i.zl = or disjoint i32 %i.zk, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  store i32 %i.zl, ptr %i.i, align 16, !tbaa !10
  store i32 0, ptr %i.xt, align 4, !tbaa !10
  store i32 0, ptr %i.xu, align 8, !tbaa !10
  store i32 0, ptr %i.xv, align 4, !tbaa !10
  call fastcc void @Tn_GenClause(ptr noundef nonnull %i.q, ptr noundef nonnull %i.i, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  %i.zm = add nuw nsw i32 %.1121171.i.i, 1        ; 2 uses
  %i.zn = load i32, ptr %i.u, align 8, !tbaa !134 ; 3 uses
  %i.zo = icmp slt i32 %i.zm, %i.zn
  br i1 %i.zo, label %.lr.ph172.i.i, label %._crit_edge173.loopexit.i.i, !llvm.loop !87

._crit_edge173.loopexit.i.i:                      ; preds = %.lr.ph172.i.i
  %.pre201.i.i = load i32, ptr %i.q, align 8, !tbaa !132
  br label %._crit_edge173.i.i

._crit_edge173.i.i:                               ; preds = %._crit_edge173.loopexit.i.i, %.preheader161.i.i
  %i.zp = phi i32 [ %.pre201.i.i, %._crit_edge173.loopexit.i.i ], [ %i.zc, %.preheader161.i.i ] ; 3 uses
  %i.zq = phi i32 [ %i.zn, %._crit_edge173.loopexit.i.i ], [ %i.zd, %.preheader161.i.i ]
  %i.zr = add nuw nsw i32 %.1174.i.i, 1           ; 2 uses
  %i.zs = icmp slt i32 %i.zr, %i.zp
  br i1 %i.zs, label %.preheader161.i.i, label %._crit_edge175.i.i, !llvm.loop !88

._crit_edge175.i.i:                               ; preds = %._crit_edge173.i.i, %.preheader161.lr.ph.i.i, %.preheader162.i.i, %Tn_Init.exit
  %i.zt = phi i32 [ %i.xj, %Tn_Init.exit ], [ %13, %.preheader161.lr.ph.i.i ], [ %13, %.preheader162.i.i ], [ %i.zp, %._crit_edge173.i.i ] ; 3 uses
  %i.zu = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 10 uses
  store i32 0, ptr %i.zu, align 8, !tbaa !15
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 4 ; 6 uses
  store i32 100, ptr %i.zv, align 4, !tbaa !17
  %i.zw = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #19 ; 7 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 8 ; 5 uses
  store ptr %i.zw, ptr %i.zx, align 8, !tbaa !16
  %i.zy = icmp sgt i32 %i.zt, 0
  br i1 %i.zy, label %.preheader160.lr.ph.i.i, label %.preheader.lr.ph.i

.preheader160.lr.ph.i.i:                          ; preds = %._crit_edge175.i.i
  %i.zz = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aab = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.aac = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aae = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.aag = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aah = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.aai = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aak = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.aal = load i32, ptr %i.u, align 8, !tbaa !134 ; 3 uses
  %i.aam = icmp sgt i32 %i.aal, 0
  br i1 %i.aam, label %.preheader160.i.i, label %Tn_GenCnfStart.exit.i

.preheader160.i.i:                                ; preds = %.preheader160.lr.ph.i.i, %._crit_edge184.i.i
  %i.aan = phi i32 [ %i.aii, %._crit_edge184.i.i ], [ %i.zt, %.preheader160.lr.ph.i.i ]
  %i.aao = phi i32 [ %.pr.i, %._crit_edge184.i.i ], [ %i.aal, %.preheader160.lr.ph.i.i ] ; 2 uses
  %i.aap = phi ptr [ %i.aij, %._crit_edge184.i.i ], [ %i.zw, %.preheader160.lr.ph.i.i ] ; 2 uses
  %i.aaq = phi i32 [ %i.aik, %._crit_edge184.i.i ], [ 100, %.preheader160.lr.ph.i.i ] ; 2 uses
  %i.aar = phi ptr [ %i.ail, %._crit_edge184.i.i ], [ %i.zw, %.preheader160.lr.ph.i.i ] ; 2 uses
  %i.aas = phi i32 [ %i.aim, %._crit_edge184.i.i ], [ 100, %.preheader160.lr.ph.i.i ] ; 2 uses
  %i.aat = phi ptr [ %i.ain, %._crit_edge184.i.i ], [ %i.zw, %.preheader160.lr.ph.i.i ] ; 2 uses
  %i.aau = phi ptr [ %i.aio, %._crit_edge184.i.i ], [ %i.zw, %.preheader160.lr.ph.i.i ] ; 2 uses
  %i.aav = phi i32 [ %i.aip, %._crit_edge184.i.i ], [ 100, %.preheader160.lr.ph.i.i ] ; 2 uses
  %i.aaw = phi i32 [ %i.aiq, %._crit_edge184.i.i ], [ 0, %.preheader160.lr.ph.i.i ] ; 2 uses
  %i.aax = phi i32 [ %i.air, %._crit_edge184.i.i ], [ %i.aal, %.preheader160.lr.ph.i.i ] ; 3 uses
  %indvars.iv.i.i37 = phi i64 [ %indvars.iv.next.i.i38, %._crit_edge184.i.i ], [ 0, %.preheader160.lr.ph.i.i ] ; 3 uses
  %i.aay = icmp sgt i32 %i.aax, 0
  br i1 %i.aay, label %.lr.ph183.i.i, label %._crit_edge184.i.i

.lr.ph183.i.i:                                    ; preds = %.preheader160.i.i
  %i.aaz = trunc nuw nsw i64 %indvars.iv.i.i37 to i32 ; 8 uses
  br label %bb.am

.preheader158.i.i:                                ; preds = %._crit_edge184.i.i
  %i.aba = icmp sgt i32 %i.aii, 0
  br i1 %i.aba, label %.preheader.lr.ph.i.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader158.i.i
  %i.abb = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.abc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.abd = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.abe = icmp sgt i32 %.pr.i, 0
  br i1 %i.abe, label %.preheader.i.i39, label %Tn_GenCnfStart.exit.i

bb.am:                                            ; preds = %.loopexit159.i.i, %.lr.ph183.i.i
  %i.abf = phi i32 [ %i.aao, %.lr.ph183.i.i ], [ %i.ahy, %.loopexit159.i.i ] ; 2 uses
  %i.abg = phi ptr [ %i.aap, %.lr.ph183.i.i ], [ %i.ahz, %.loopexit159.i.i ] ; 3 uses
  %i.abh = phi i32 [ %i.aaq, %.lr.ph183.i.i ], [ %i.aia, %.loopexit159.i.i ] ; 3 uses
  %i.abi = phi ptr [ %i.aar, %.lr.ph183.i.i ], [ %i.aib, %.loopexit159.i.i ] ; 3 uses
  %i.abj = phi i32 [ %i.aas, %.lr.ph183.i.i ], [ %i.aic, %.loopexit159.i.i ] ; 3 uses
  %i.abk = phi ptr [ %i.aat, %.lr.ph183.i.i ], [ %i.aid, %.loopexit159.i.i ] ; 3 uses
  %i.abl = phi ptr [ %i.aau, %.lr.ph183.i.i ], [ %i.aie, %.loopexit159.i.i ] ; 3 uses
  %i.abm = phi i32 [ %i.aav, %.lr.ph183.i.i ], [ %i.aif, %.loopexit159.i.i ] ; 3 uses
  %i.abn = phi i32 [ %i.aaw, %.lr.ph183.i.i ], [ %i.aig, %.loopexit159.i.i ] ; 3 uses
  %i.abo = phi i32 [ %i.aax, %.lr.ph183.i.i ], [ %i.ahy, %.loopexit159.i.i ] ; 2 uses
  %.2122181.i.i = phi i32 [ 0, %.lr.ph183.i.i ], [ %.pre-phi.i.i40, %.loopexit159.i.i ] ; 13 uses
  %.not.i.i = icmp eq i32 %.2122181.i.i, 0
  br i1 %.not.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.abp = load i32, ptr %i.q, align 8, !tbaa !132
  %.not125.i.i = icmp sgt i32 %.2122181.i.i, %i.abp
  br i1 %.not125.i.i, label %bb.ao, label %..loopexit159_crit_edge.i.i

..loopexit159_crit_edge.i.i:                      ; preds = %bb.an
  %.pre204.i.i = add nuw nsw i32 %.2122181.i.i, 1
  br label %.loopexit159.i.i

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.1118176.i.i = add nuw nsw i32 %.2122181.i.i, 1 ; 4 uses
  %i.abq = icmp slt i32 %.1118176.i.i, %i.abo
  br i1 %i.abq, label %.lr.ph180.i.i, label %.loopexit159.i.i

.lr.ph180.i.i:                                    ; preds = %bb.ao, %bb.bg
  %i.abr = phi ptr [ %i.aho, %bb.bg ], [ %i.abg, %bb.ao ] ; 6 uses
  %i.abs = phi i32 [ %i.ahp, %bb.bg ], [ %i.abh, %bb.ao ] ; 9 uses
  %i.abt = phi ptr [ %i.ahq, %bb.bg ], [ %i.abi, %bb.ao ] ; 6 uses
  %i.abu = phi i32 [ %i.ahr, %bb.bg ], [ %i.abj, %bb.ao ] ; 8 uses
  %i.abv = phi ptr [ %i.ahs, %bb.bg ], [ %i.abk, %bb.ao ] ; 5 uses
  %i.abw = phi ptr [ %i.aht, %bb.bg ], [ %i.abl, %bb.ao ] ; 5 uses
  %i.abx = phi i32 [ %i.ahu, %bb.bg ], [ %i.abm, %bb.ao ] ; 7 uses
  %i.aby = phi i32 [ %i.ahv, %bb.bg ], [ %i.abn, %bb.ao ] ; 13 uses
  %i.abz = phi i32 [ %i.ahw, %bb.bg ], [ %i.abo, %bb.ao ] ; 4 uses
  %.1118178.i.i = phi i32 [ %.1118.i.i, %bb.bg ], [ %.1118176.i.i, %bb.ao ] ; 10 uses
  %.1118.in177.i.i = phi i32 [ %.1118178.i.i, %bb.bg ], [ %.2122181.i.i, %bb.ao ]
  %i.aca = load i32, ptr %i.q, align 8, !tbaa !132
  %.not126.not.i.i = icmp slt i32 %.1118.in177.i.i, %i.aca
  br i1 %.not126.not.i.i, label %bb.bg, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph180.i.i
  %i.acb = load ptr, ptr %i.ac, align 8, !tbaa !137
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 %indvars.iv.i.i37
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 1
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !31
  switch i8 %i.ace, label %bb.bg [
    i8 48, label %bb.aq
    i8 49, label %bb.au
    i8 45, label %bb.ay
    i8 42, label %bb.ay
    i8 50, label %bb.az
  ]

bb.aq:                                            ; preds = %bb.ap
  %.val13.i133.i.i = load i32, ptr %i.w, align 4, !tbaa !135
  %i.acf = mul nsw i32 %.val13.i133.i.i, %i.aaz
  %i.acg = mul nuw nsw i32 %i.abz, %.2122181.i.i
  %i.ach = add i32 %i.acg, %.1118178.i.i
  %i.aci = add i32 %i.ach, %i.acf
  %i.acj = shl nsw i32 %i.aci, 1
  %i.ack = or disjoint i32 %i.acj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store i32 %i.ack, ptr %i.h, align 16, !tbaa !10
  store i32 0, ptr %i.aai, align 4, !tbaa !10
  store i32 0, ptr %i.aaj, align 8, !tbaa !10
  store i32 0, ptr %i.aak, align 4, !tbaa !10
  call fastcc void @Tn_GenClause(ptr noundef nonnull %i.q, ptr noundef nonnull %i.h, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  %.val.i134.i.i = load i32, ptr %i.u, align 8, !tbaa !134
  %.val13.i135.i.i = load i32, ptr %i.w, align 4, !tbaa !135
  %i.acl = mul nsw i32 %.val13.i135.i.i, %i.aaz
  %i.acm = mul nsw i32 %.val.i134.i.i, %.1118178.i.i
  %i.acn = add i32 %i.acm, %.2122181.i.i
  %i.aco = add i32 %i.acn, %i.acl
  %i.acp = icmp slt i32 %i.aby, %i.abs
  br i1 %i.acp, label %tn_vi_push.exit.i.i41, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.acq = icmp slt i32 %i.abs, 4
  %i.acr = lshr i32 %i.abs, 1
  %i.acs = mul nuw nsw i32 %i.acr, 3
  %i.act = select i1 %i.acq, i32 8, i32 %i.acs    ; 4 uses
  %i.acu = zext nneg i32 %i.act to i64
  %i.acv = shl nuw nsw i64 %i.acu, 2
  %i.acw = tail call ptr @realloc(ptr noundef %i.abt, i64 noundef %i.acv) #20 ; 3 uses
  store ptr %i.acw, ptr %i.zx, align 8, !tbaa !16
  %i.acx = icmp eq ptr %i.acw, null
  br i1 %i.acx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.acy = sitofp i32 %i.abs to double
  %i.acz = fmul nnan double %i.acy, 4.000000e+00
  %i.ada = fmul nnan double %i.acz, f0x3EB0000000000000
  %i.adb = uitofp nneg i32 %i.act to double
  %i.adc = fmul nnan double %i.adb, 4.000000e+00
  %i.add = fmul nnan double %i.adc, f0x3EB0000000000000
  %i.ade = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.ada, double noundef %i.add) ; 0 uses
  %i.adf = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.adg = tail call i32 @fflush(ptr noundef %i.adf) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  store i32 %i.act, ptr %i.zv, align 4, !tbaa !17
  br label %tn_vi_push.exit.i.i41

tn_vi_push.exit.i.i41:                            ; preds = %bb.at, %bb.aq
  %i.adh = phi ptr [ %i.abr, %bb.aq ], [ %i.acw, %bb.at ] ; 5 uses
  %i.adi = phi i32 [ %i.abs, %bb.aq ], [ %i.act, %bb.at ] ; 3 uses
  %i.adj = add nsw i32 %i.aby, 1                  ; 2 uses
  store i32 %i.adj, ptr %i.zu, align 8, !tbaa !15
  %i.adk = sext i32 %i.aby to i64
  %i.adl = getelementptr inbounds [4 x i8], ptr %i.adh, i64 %i.adk
  store i32 %i.aco, ptr %i.adl, align 4, !tbaa !10
  br label %bb.bg

bb.au:                                            ; preds = %bb.ap
  %.val13.i137.i.i = load i32, ptr %i.w, align 4, !tbaa !135
  %i.adm = mul nsw i32 %.val13.i137.i.i, %i.aaz
  %i.adn = mul nuw nsw i32 %.1118178.i.i, %i.abz
  %i.ado = add i32 %i.adn, %.2122181.i.i
  %i.adp = add i32 %i.ado, %i.adm
  %i.adq = shl nsw i32 %i.adp, 1
  %i.adr = or disjoint i32 %i.adq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i32 %i.adr, ptr %i.g, align 16, !tbaa !10
  store i32 0, ptr %i.aaf, align 4, !tbaa !10
  store i32 0, ptr %i.aag, align 8, !tbaa !10
  store i32 0, ptr %i.aah, align 4, !tbaa !10
  call fastcc void @Tn_GenClause(ptr noundef nonnull %i.q, ptr noundef nonnull %i.g, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %.val.i138.i.i = load i32, ptr %i.u, align 8, !tbaa !134
  %.val13.i139.i.i = load i32, ptr %i.w, align 4, !tbaa !135
  %i.ads = mul nsw i32 %.val13.i139.i.i, %i.aaz
  %i.adt = mul nsw i32 %.val.i138.i.i, %.2122181.i.i
  %i.adu = add i32 %i.adt, %.1118178.i.i
  %i.adv = add i32 %i.adu, %i.ads
  %i.adw = icmp slt i32 %i.aby, %i.abu
end_hunk_1
