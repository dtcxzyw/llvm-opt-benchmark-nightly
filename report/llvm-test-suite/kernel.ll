Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/kernel?download=true
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@kernel_measureFFT:bb.a
bb.t:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.12 = phi i64 [ 0, %bb.s ], [ %indvars.iv.next.12, %bb.t ]
  tail call void @FFT_transform(i32 noundef %i.a, ptr noundef %i.b) #6
  tail call void @FFT_inverse(i32 noundef %i.a, ptr noundef %i.b) #6
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.12, 1 ; 2 uses
  %exitcond.12.not = icmp eq i64 %indvars.iv.next.12, 32768
  br i1 %exitcond.12.not, label %bb.u, label %bb.t, !llvm.loop !8

bb.u:                                             ; preds = %bb.t
  tail call void @Stopwatch_stop(ptr noundef %i.c) #6
  tail call void @Stopwatch_start(ptr noundef %i.c) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.13 = phi i64 [ 0, %bb.u ], [ %indvars.iv.next.13, %bb.v ]
  tail call void @FFT_transform(i32 noundef %i.a, ptr noundef %i.b) #6
  tail call void @FFT_inverse(i32 noundef %i.a, ptr noundef %i.b) #6
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.13, 1 ; 2 uses
  %exitcond.13.not = icmp eq i64 %indvars.iv.next.13, 65536
  br i1 %exitcond.13.not, label %bb.w, label %bb.v, !llvm.loop !8

bb.w:                                             ; preds = %bb.v
  tail call void @Stopwatch_stop(ptr noundef %i.c) #6
  %i.d = tail call double @FFT_num_flops(i32 noundef %0) #6
  %i.e = fmul double %i.d, 8.192000e+03
  %i.f = tail call double @Stopwatch_read(ptr noundef %i.c) #6
  %i.g = fdiv double %i.e, %i.f
  %i.h = fmul double %i.g, f0x3EB0C6F7A0B5ED8D
  tail call void @Stopwatch_delete(ptr noundef %i.c) #6
  tail call void @free(ptr noundef %i.b) #6
  ret double %i.h
}

declare ptr @RandomVector(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @new_Stopwatch() local_unnamed_addr #1

declare void @Stopwatch_start(ptr noundef) local_unnamed_addr #1

declare void @FFT_transform(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @FFT_inverse(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @Stopwatch_stop(ptr noundef) local_unnamed_addr #1

declare double @FFT_num_flops(i32 noundef) local_unnamed_addr #1

declare double @Stopwatch_read(ptr noundef) local_unnamed_addr #1

declare void @Stopwatch_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @kernel_measureSOR(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @RandomMatrix(i32 noundef %0, i32 noundef %0, ptr noundef %2) #6 ; 15 uses
  %i.b = tail call ptr @new_Stopwatch() #6        ; 30 uses
  tail call void @Stopwatch_start(ptr noundef %i.b) #6
  tail call void @SOR_execute(i32 noundef %0, i32 noundef %0, double noundef 1.250000e+00, ptr noundef %i.a, i32 noundef 16) #6
  tail call void @Stopwatch_stop(ptr noundef %i.b) #6
  tail call void @Stopwatch_start(ptr noundef %i.b) #6
  tail call void @SOR_execute(i32 noundef %0, i32 noundef %0, double noundef 1.250000e+00, ptr noundef %i.a, i32 noundef 32) #6
  tail call void @Stopwatch_stop(ptr noundef %i.b) #6
  tail call void @Stopwatch_start(ptr noundef %i.b) #6
  tail call void @SOR_execute(i32 noundef %0, i32 noundef %0, double noundef 1.250000e+00, ptr noundef %i.a, i32 noundef 64) #6
  tail call void @Stopwatch_stop(ptr noundef %i.b) #6
  tail call void @Stopwatch_start(ptr noundef %i.b) #6
  tail call void @SOR_execute(i32 noundef %0, i32 noundef %0, double noundef 1.250000e+00, ptr noundef %i.a, i32 noundef 128) #6
  tail call void @Stopwatch_stop(ptr noundef %i.b) #6
  tail call void @Stopwatch_start(ptr noundef %i.b) #6
  tail call void @SOR_execute(i32 noundef %0, i32 noundef %0, double noundef 1.250000e+00, ptr noundef %i.a, i32 noundef 256) #6
  tail call void @Stopwatch_stop(ptr noundef %i.b) #6
  tail call void @Stopwatch_start(ptr noundef %i.b) #6
  tail call void @SOR_execute(i32 noundef %0, i32 noundef %0, double noundef 1.250000e+00, ptr noundef %i.a, i32 noundef 512) #6
  tail call void @Stopwatch_stop(ptr noundef %i.b) #6
  tail call void @Stopwatch_start(ptr noundef %i.b) #6
  tail call void @SOR_execute(i32 noundef %0, i32 noundef %0, double noundef 1.250000e+00, ptr noundef %i.a, i32 noundef 1024) #6
  tail call void @Stopwatch_stop(ptr noundef %i.b) #6
  tail call void @Stopwatch_start(ptr noundef %i.b) #6
  tail call void @SOR_execute(i32 noundef %0, i32 noundef %0, double noundef 1.250000e+00, ptr noundef %i.a, i32 noundef 2048) #6
  tail call void @Stopwatch_stop(ptr noundef %i.b) #6
  tail call void @Stopwatch_start(ptr noundef %i.b) #6
  tail call void @SOR_execute(i32 noundef %0, i32 noundef %0, double noundef 1.250000e+00, ptr noundef %i.a, i32 noundef 4096) #6
  tail call void @Stopwatch_stop(ptr noundef %i.b) #6
  tail call void @Stopwatch_start(ptr noundef %i.b) #6
  tail call void @SOR_execute(i32 noundef %0, i32 noundef %0, double noundef 1.250000e+00, ptr noundef %i.a, i32 noundef 8192) #6
  tail call void @Stopwatch_stop(ptr noundef %i.b) #6
  tail call void @Stopwatch_start(ptr noundef %i.b) #6
  tail call void @SOR_execute(i32 noundef %0, i32 noundef %0, double noundef 1.250000e+00, ptr noundef %i.a, i32 noundef 16384) #6
  tail call void @Stopwatch_stop(ptr noundef %i.b) #6
  tail call void @Stopwatch_start(ptr noundef %i.b) #6
  tail call void @SOR_execute(i32 noundef %0, i32 noundef %0, double noundef 1.250000e+00, ptr noundef %i.a, i32 noundef 32768) #6
  tail call void @Stopwatch_stop(ptr noundef %i.b) #6
  tail call void @Stopwatch_start(ptr noundef %i.b) #6
  tail call void @SOR_execute(i32 noundef %0, i32 noundef %0, double noundef 1.250000e+00, ptr noundef %i.a, i32 noundef 65536) #6
  tail call void @Stopwatch_stop(ptr noundef %i.b) #6
  tail call void @Stopwatch_start(ptr noundef %i.b) #6
  tail call void @SOR_execute(i32 noundef %0, i32 noundef %0, double noundef 1.250000e+00, ptr noundef %i.a, i32 noundef 131072) #6
  tail call void @Stopwatch_stop(ptr noundef %i.b) #6
  %i.c = tail call double @SOR_num_flops(i32 noundef %0, i32 noundef %0, i32 noundef 8192) #6
  %i.d = tail call double @Stopwatch_read(ptr noundef %i.b) #6
  %i.e = fdiv double %i.c, %i.d
  %i.f = fmul double %i.e, f0x3EB0C6F7A0B5ED8D
  tail call void @Stopwatch_delete(ptr noundef %i.b) #6
  tail call void @Array2D_double_delete(i32 noundef %0, i32 noundef %0, ptr noundef %i.a) #6
  ret double %i.f
}

declare ptr @RandomMatrix(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @SOR_execute(i32 noundef, i32 noundef, double noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare double @SOR_num_flops(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Array2D_double_delete(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @kernel_measureMonteCarlo(double noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @new_Stopwatch() #6        ; 30 uses
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  %i.b = tail call double @MonteCarlo_integrate(i32 noundef 65536) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  %i.c = tail call double @MonteCarlo_integrate(i32 noundef 131072) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  %i.d = tail call double @MonteCarlo_integrate(i32 noundef 262144) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  %i.e = tail call double @MonteCarlo_integrate(i32 noundef 524288) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  %i.f = tail call double @MonteCarlo_integrate(i32 noundef 1048576) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  %i.g = tail call double @MonteCarlo_integrate(i32 noundef 2097152) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  %i.h = tail call double @MonteCarlo_integrate(i32 noundef 4194304) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  %i.i = tail call double @MonteCarlo_integrate(i32 noundef 8388608) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  %i.j = tail call double @MonteCarlo_integrate(i32 noundef 16777216) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  %i.k = tail call double @MonteCarlo_integrate(i32 noundef 33554432) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  %i.l = tail call double @MonteCarlo_integrate(i32 noundef 67108864) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  %i.m = tail call double @MonteCarlo_integrate(i32 noundef 134217728) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  %i.n = tail call double @MonteCarlo_integrate(i32 noundef 268435456) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  %i.o = tail call double @MonteCarlo_integrate(i32 noundef 536870912) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  %i.p = tail call double @MonteCarlo_num_flops(i32 noundef 8192) #6
  %i.q = tail call double @Stopwatch_read(ptr noundef %i.a) #6
  %i.r = fdiv double %i.p, %i.q
  %i.s = fmul double %i.r, f0x3EB0C6F7A0B5ED8D
  tail call void @Stopwatch_delete(ptr noundef %i.a) #6
  ret double %i.s
}

declare double @MonteCarlo_integrate(i32 noundef) local_unnamed_addr #1

declare double @MonteCarlo_num_flops(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @kernel_measureSparseMatMult(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @RandomVector(i32 noundef %0, ptr noundef %3) #6 ; 15 uses
  %i.b = sext i32 %0 to i64
  %i.c = shl nsw i64 %i.b, 3
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #7 ; 15 uses
  %i.e = sdiv i32 %1, %0                          ; 9 uses
  %i.f = mul nsw i32 %i.e, %0
  %i.g = tail call ptr @RandomVector(i32 noundef %i.f, ptr noundef %3) #6 ; 15 uses
  %i.h = sext i32 %1 to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #7 ; 16 uses
  %i.k = add nsw i32 %0, 1
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #7 ; 19 uses
  %i.o = tail call ptr @new_Stopwatch() #6        ; 30 uses
  store i32 0, ptr %i.n, align 4, !tbaa !4
  %i.p = icmp sgt i32 %0, 0
  br i1 %i.p, label %.lr.ph57, label %.preheader

.lr.ph57:                                         ; preds = %bb.a
  %i.q = icmp sgt i32 %i.e, 0
  %wide.trip.count68 = zext nneg i32 %0 to i64    ; 4 uses
  br i1 %i.q, label %.lr.ph.us.preheader, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %.lr.ph57
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.loopexit.preheader89, label %vector.ph

vector.ph:                                        ; preds = %.loopexit.preheader
  %n.vec = and i64 %wide.trip.count68, 2147483640 ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.r = trunc nuw nsw i64 %n.vec to i32
  %i.s = mul i32 %i.e, %i.r
  %i.t = shl <4 x i32> %broadcast.splat, splat (i32 2) ; 3 uses
  %i.u = mul nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %invariant.op = add <4 x i32> %i.t, %broadcast.splat
  %invariant.op91 = add <4 x i32> %i.t, %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %i.u, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %i.v = add nsw <4 x i32> %vec.ind, %broadcast.splat
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store <4 x i32> %i.v, ptr %i.x, align 4, !tbaa !4
  store <4 x i32> %.reass, ptr %i.y, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next.reass = add <4 x i32> %vec.ind, %invariant.op91
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count68
  br i1 %cmp.n, label %.preheader, label %.loopexit.preheader89

.loopexit.preheader89:                            ; preds = %.loopexit.preheader, %middle.block
  %.ph = phi i32 [ 0, %.loopexit.preheader ], [ %i.s, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.loopexit.preheader ], [ %n.vec, %middle.block ]
  br label %.loopexit

.lr.ph.us.preheader:                              ; preds = %.lr.ph57
  %wide.trip.count63 = zext nneg i32 %i.e to i64  ; 3 uses
  %min.iters.check75 = icmp ult i32 %i.e, 8
  %n.vec77 = and i64 %wide.trip.count63, 2147483640 ; 3 uses
  %cmp.n87 = icmp eq i64 %n.vec77, %wide.trip.count63
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %..loopexit_crit_edge.us
  %i.aa = phi i32 [ 0, %.lr.ph.us.preheader ], [ %i.ad, %..loopexit_crit_edge.us ] ; 2 uses
  %indvars.iv65 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next66, %..loopexit_crit_edge.us ] ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv65 to i32
  %i.ac = udiv i32 %i.ab, %i.e
  %i.ad = add nuw nsw i32 %i.aa, %i.e             ; 2 uses
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next66
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !4
  %spec.store.select.us = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1) ; 2 uses
  %i.af = zext nneg i32 %i.aa to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.af ; 2 uses
  br i1 %min.iters.check75, label %scalar.ph74.preheader, label %vector.ph76

vector.ph76:                                      ; preds = %.lr.ph.us
  %broadcast.splatinsert78 = insertelement <4 x i32> poison, i32 %spec.store.select.us, i64 0
  %broadcast.splat79 = shufflevector <4 x i32> %broadcast.splatinsert78, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph76
  %index81 = phi i64 [ 0, %vector.ph76 ], [ %index.next84, %vector.body80 ] ; 2 uses
  %vec.ind82 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph76 ], [ %vec.ind.next85, %vector.body80 ] ; 3 uses
  %step.add83 = add <4 x i32> %vec.ind82, splat (i32 4)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index81 ; 2 uses
  %i.ah = mul <4 x i32> %broadcast.splat79, %vec.ind82
  %i.ai = mul <4 x i32> %broadcast.splat79, %step.add83
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x i32> %i.ah, ptr %i.ag, align 4, !tbaa !4
  store <4 x i32> %i.ai, ptr %i.aj, align 4, !tbaa !4
  %index.next84 = add nuw i64 %index81, 8         ; 2 uses
  %vec.ind.next85 = add <4 x i32> %vec.ind82, splat (i32 8)
  %i.ak = icmp eq i64 %index.next84, %n.vec77
  br i1 %i.ak, label %middle.block86, label %vector.body80, !llvm.loop !13

middle.block86:                                   ; preds = %vector.body80
  br i1 %cmp.n87, label %..loopexit_crit_edge.us, label %scalar.ph74.preheader

scalar.ph74.preheader:                            ; preds = %.lr.ph.us, %middle.block86
  %indvars.iv60.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec77, %middle.block86 ]
  br label %scalar.ph74

scalar.ph74:                                      ; preds = %scalar.ph74.preheader, %scalar.ph74
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %scalar.ph74 ], [ %indvars.iv60.ph, %scalar.ph74.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv60
  %i.al = trunc i64 %indvars.iv60 to i32
  %i.am = mul i32 %spec.store.select.us, %i.al
  store i32 %i.am, ptr %gep, align 4, !tbaa !4
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %..loopexit_crit_edge.us, label %scalar.ph74, !llvm.loop !14

..loopexit_crit_edge.us:                          ; preds = %scalar.ph74, %middle.block86
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %.preheader, label %.lr.ph.us, !llvm.loop !15

.preheader:                                       ; preds = %.loopexit, %..loopexit_crit_edge.us, %middle.block, %bb.a
  tail call void @Stopwatch_start(ptr noundef %i.o) #6
  tail call void @SparseCompRow_matmult(i32 noundef %0, ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.a, i32 noundef 64) #6
  tail call void @Stopwatch_stop(ptr noundef %i.o) #6
  tail call void @Stopwatch_start(ptr noundef %i.o) #6
  tail call void @SparseCompRow_matmult(i32 noundef %0, ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.a, i32 noundef 128) #6
  tail call void @Stopwatch_stop(ptr noundef %i.o) #6
  tail call void @Stopwatch_start(ptr noundef %i.o) #6
  tail call void @SparseCompRow_matmult(i32 noundef %0, ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.a, i32 noundef 256) #6
  tail call void @Stopwatch_stop(ptr noundef %i.o) #6
  tail call void @Stopwatch_start(ptr noundef %i.o) #6
  tail call void @SparseCompRow_matmult(i32 noundef %0, ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.a, i32 noundef 512) #6
  tail call void @Stopwatch_stop(ptr noundef %i.o) #6
  tail call void @Stopwatch_start(ptr noundef %i.o) #6
  tail call void @SparseCompRow_matmult(i32 noundef %0, ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.a, i32 noundef 1024) #6
  tail call void @Stopwatch_stop(ptr noundef %i.o) #6
  tail call void @Stopwatch_start(ptr noundef %i.o) #6
  tail call void @SparseCompRow_matmult(i32 noundef %0, ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.a, i32 noundef 2048) #6
  tail call void @Stopwatch_stop(ptr noundef %i.o) #6
  tail call void @Stopwatch_start(ptr noundef %i.o) #6
  tail call void @SparseCompRow_matmult(i32 noundef %0, ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.a, i32 noundef 4096) #6
  tail call void @Stopwatch_stop(ptr noundef %i.o) #6
  tail call void @Stopwatch_start(ptr noundef %i.o) #6
  tail call void @SparseCompRow_matmult(i32 noundef %0, ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.a, i32 noundef 8192) #6
  tail call void @Stopwatch_stop(ptr noundef %i.o) #6
  tail call void @Stopwatch_start(ptr noundef %i.o) #6
  tail call void @SparseCompRow_matmult(i32 noundef %0, ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.a, i32 noundef 16384) #6
  tail call void @Stopwatch_stop(ptr noundef %i.o) #6
  tail call void @Stopwatch_start(ptr noundef %i.o) #6
  tail call void @SparseCompRow_matmult(i32 noundef %0, ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.a, i32 noundef 32768) #6
  tail call void @Stopwatch_stop(ptr noundef %i.o) #6
  tail call void @Stopwatch_start(ptr noundef %i.o) #6
  tail call void @SparseCompRow_matmult(i32 noundef %0, ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.a, i32 noundef 65536) #6
  tail call void @Stopwatch_stop(ptr noundef %i.o) #6
  tail call void @Stopwatch_start(ptr noundef %i.o) #6
  tail call void @SparseCompRow_matmult(i32 noundef %0, ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.a, i32 noundef 131072) #6
  tail call void @Stopwatch_stop(ptr noundef %i.o) #6
  tail call void @Stopwatch_start(ptr noundef %i.o) #6
  tail call void @SparseCompRow_matmult(i32 noundef %0, ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.a, i32 noundef 262144) #6
  tail call void @Stopwatch_stop(ptr noundef %i.o) #6
  tail call void @Stopwatch_start(ptr noundef %i.o) #6
  tail call void @SparseCompRow_matmult(i32 noundef %0, ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.a, i32 noundef 524288) #6
  tail call void @Stopwatch_stop(ptr noundef %i.o) #6
  %i.an = tail call double @SparseCompRow_num_flops(i32 noundef %0, i32 noundef %1, i32 noundef 8192) #6
  %i.ao = tail call double @Stopwatch_read(ptr noundef %i.o) #6
  %i.ap = fdiv double %i.an, %i.ao
  %i.aq = fmul double %i.ap, f0x3EB0C6F7A0B5ED8D
  tail call void @Stopwatch_delete(ptr noundef %i.o) #6
  tail call void @free(ptr noundef nonnull %i.n) #6
  tail call void @free(ptr noundef %i.j) #6
  tail call void @free(ptr noundef %i.g) #6
  tail call void @free(ptr noundef %i.d) #6
  tail call void @free(ptr noundef %i.a) #6
  ret double %i.aq

.loopexit:                                        ; preds = %.loopexit.preheader89, %.loopexit
  %i.ar = phi i32 [ %i.as, %.loopexit ], [ %.ph, %.loopexit.preheader89 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %indvars.iv.ph, %.loopexit.preheader89 ]
  %i.as = add nsw i32 %i.ar, %i.e                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count68
  br i1 %exitcond.not, label %.preheader, label %.loopexit, !llvm.loop !16
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare void @SparseCompRow_matmult(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare double @SparseCompRow_num_flops(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @kernel_measureLU(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @new_Stopwatch() #6        ; 30 uses
  %i.b = tail call ptr @RandomMatrix(i32 noundef %0, i32 noundef %0, ptr noundef %2) #6 ; 42 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @new_Array2D_double(i32 noundef %0, i32 noundef %0) #6 ; 82 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @exit(i32 noundef 1) #8
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = sext i32 %0 to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #7 ; 42 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.j = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.k = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.l = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.m = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.n = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.o = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.p = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.q = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.r = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.s = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.t = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.u = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.v = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.w = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.x = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.y = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.z = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.aa = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.ab = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.ac = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.ad = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.ae = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.af = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.ag = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.ah = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.ai = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.aj = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.ak = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.al = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.am = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.an = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @exit(i32 noundef 1) #8
  unreachable

bb.g:                                             ; preds = %bb.g, %.preheader.preheader
  %.03235.5 = phi i32 [ 0, %.preheader.preheader ], [ %i.ap, %bb.g ]
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.ao = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.ap = add nuw nsw i32 %.03235.5, 1            ; 2 uses
  %exitcond.5.not = icmp eq i32 %i.ap, 32
  br i1 %exitcond.5.not, label %.preheader.6, label %bb.g, !llvm.loop !17

.preheader.6:                                     ; preds = %bb.g
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader.6
  %.03235.6 = phi i32 [ 0, %.preheader.6 ], [ %i.ar, %bb.h ]
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.aq = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.ar = add nuw nsw i32 %.03235.6, 1            ; 2 uses
  %exitcond.6.not = icmp eq i32 %i.ar, 64
  br i1 %exitcond.6.not, label %.preheader.7, label %bb.h, !llvm.loop !17

.preheader.7:                                     ; preds = %bb.h
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.7
  %.03235.7 = phi i32 [ 0, %.preheader.7 ], [ %i.at, %bb.i ]
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.as = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.at = add nuw nsw i32 %.03235.7, 1            ; 2 uses
  %exitcond.7.not = icmp eq i32 %i.at, 128
  br i1 %exitcond.7.not, label %.preheader.8, label %bb.i, !llvm.loop !17

.preheader.8:                                     ; preds = %bb.i
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.8
  %.03235.8 = phi i32 [ 0, %.preheader.8 ], [ %i.av, %bb.j ]
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.au = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.av = add nuw nsw i32 %.03235.8, 1            ; 2 uses
  %exitcond.8.not = icmp eq i32 %i.av, 256
  br i1 %exitcond.8.not, label %.preheader.9, label %bb.j, !llvm.loop !17

.preheader.9:                                     ; preds = %bb.j
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.9
  %.03235.9 = phi i32 [ 0, %.preheader.9 ], [ %i.ax, %bb.k ]
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.aw = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.ax = add nuw nsw i32 %.03235.9, 1            ; 2 uses
  %exitcond.9.not = icmp eq i32 %i.ax, 512
  br i1 %exitcond.9.not, label %.preheader.10, label %bb.k, !llvm.loop !17

.preheader.10:                                    ; preds = %bb.k
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.10
  %.03235.10 = phi i32 [ 0, %.preheader.10 ], [ %i.az, %bb.l ]
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.ay = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.az = add nuw nsw i32 %.03235.10, 1           ; 2 uses
  %exitcond.10.not = icmp eq i32 %i.az, 1024
  br i1 %exitcond.10.not, label %.preheader.11, label %bb.l, !llvm.loop !17

.preheader.11:                                    ; preds = %bb.l
  tail call void @Stopwatch_stop(ptr noundef %i.a) #6
  tail call void @Stopwatch_start(ptr noundef %i.a) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.11
  %.03235.11 = phi i32 [ 0, %.preheader.11 ], [ %i.bb, %bb.m ]
  tail call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #6
  %i.ba = tail call i32 @LU_factor(i32 noundef %0, i32 noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #6 ; 0 uses
end_hunk_0
