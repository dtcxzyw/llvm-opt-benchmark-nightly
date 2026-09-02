Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_splittingstep_coefficients?download=true
inline.NumInlined: 17
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@SplittingStepCoefficients_LoadCoefficientsByName:bb.a
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !22
  store <2 x double> splat (double 1.000000e+00), ptr %i.be, align 8, !tbaa !26
  br label %SplittingStepCoefficients_LieTrotter.exit

bb.j:                                             ; preds = %bb.h
  %i.bf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(28) @.str.7, ptr noundef nonnull dereferenceable(1) %0) #19
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = tail call ptr @SplittingStepCoefficients_Alloc(i32 noundef 1, i32 noundef 3, i32 noundef 2) ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 28
  store i32 3, ptr %i.bi, align 4, !tbaa !17
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !18
  store double 1.000000e+00, ptr %i.bj, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !21 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !22
  store <2 x double> <double 1.000000e+00, double f0xBFA5555555555555>, ptr %i.bo, align 8, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !22
  store <2 x double> <double f0x3FD5555555555555, double f0x3FE6AAAAAAAAAAAB>, ptr %i.bq, align 8, !tbaa !26
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !22
  store <2 x double> splat (double 1.000000e+00), ptr %i.bs, align 8, !tbaa !26
  br label %SplittingStepCoefficients_LieTrotter.exit

bb.l:                                             ; preds = %bb.j
  %i.bt = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(31) @.str.8, ptr noundef nonnull dereferenceable(1) %0) #19
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bv = tail call i32 @SUNIpowerI(i32 noundef 3, i32 noundef 1) #18
  %i.bw = add nsw i32 %i.bv, 1
  %i.bx = tail call ptr @SplittingStepCoefficients_Alloc(i32 noundef 1, i32 noundef %i.bw, i32 noundef 2) ; 5 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %SplittingStepCoefficients_LieTrotter.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  store i32 4, ptr %i.bz, align 4, !tbaa !17
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !18
  store double 1.000000e+00, ptr %i.ca, align 8, !tbaa !26
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !19
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21
  %i.ce = tail call fastcc ptr @SplittingStepCoefficients_ComposeStrangHelper(i32 noundef 2, i32 noundef 4, i32 noundef 3, double noundef 0.000000e+00, double noundef 1.000000e+00, ptr noundef %i.cd) ; 0 uses
  br label %SplittingStepCoefficients_LieTrotter.exit

bb.o:                                             ; preds = %bb.l
  %i.cf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(31) @.str.9, ptr noundef nonnull dereferenceable(1) %0) #19
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ch = tail call ptr @SplittingStepCoefficients_TripleJump(i32 noundef 2, i32 noundef 6)
  br label %SplittingStepCoefficients_LieTrotter.exit

bb.q:                                             ; preds = %bb.o
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -22, i32 noundef 206, ptr noundef nonnull @__func__.SplittingStepCoefficients_LoadCoefficientsByName, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #18
  br label %SplittingStepCoefficients_LieTrotter.exit

SplittingStepCoefficients_LieTrotter.exit:        ; preds = %.preheader36.i, %.preheader.i.i, %SplittingStepCoefficients_LieTrotter.exit.loopexit, %bb.n, %bb.m, %bb.i, %bb.e, %bb.c, %bb.a, %bb.q, %bb.p, %bb.k, %bb.g
  %.0 = phi ptr [ null, %bb.q ], [ null, %bb.a ], [ %i.bx, %bb.n ], [ %i.ae, %bb.g ], [ %i.e, %SplittingStepCoefficients_LieTrotter.exit.loopexit ], [ %i.bh, %bb.k ], [ %i.r, %.preheader.i.i ], [ %i.ch, %bb.p ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.i ], [ null, %bb.m ], [ %i.aq, %.preheader36.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define noundef ptr @SplittingStepCoefficients_IDToName(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %switch.tableidx = add i32 %0, 1                ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 8
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -22, i32 noundef 228, ptr noundef nonnull @__func__.SplittingStepCoefficients_IDToName, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #18
  br label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.SplittingStepCoefficients_IDToName, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %switch.load, %switch.lookup ]
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @SplittingStepCoefficients_Parallel(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = tail call ptr @SplittingStepCoefficients_Alloc(i32 noundef %i.a, i32 noundef 1, i32 noundef %0) ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 1, ptr %i.d, align 4, !tbaa !17
  %i.e = icmp sgt i32 %0, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !18  ; 4 uses
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 3 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %0, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod22 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.epil.init
  store double 1.000000e+00, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil.init
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.epil.init
  store double 1.000000e+00, ptr %i.n, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %i.o = sub nsw i32 1, %0
  %i.p = sitofp i32 %i.o to double
  %i.q = sext i32 %0 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.q
  store double %i.p, ptr %i.r, align 8, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.x, align 8, !tbaa !26
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.next
  store double 1.000000e+00, ptr %i.y, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next
  store double 1.000000e+00, ptr %i.ad, align 8, !tbaa !26
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret ptr %i.b
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @SplittingStepCoefficients_SymmetricParallel(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SplittingStepCoefficients_Alloc(i32 noundef 2, i32 noundef %0, i32 noundef %0) ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 2, ptr %i.c, align 4, !tbaa !17
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !18
  store <2 x double> splat (double 5.000000e-01), ptr %i.d, align 8, !tbaa !26
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph28, label %.loopexit

.lr.ph28:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = zext nneg i32 %0 to i64                  ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %1 = load ptr, ptr %i.l, align 8, !tbaa !21
  %2 = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph28, %._crit_edge
  %indvars.iv32 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next33, %._crit_edge ] ; 3 uses
  %indvars.iv.in = phi i32 [ %0, %.lr.ph28 ], [ %indvars.iv, %._crit_edge ]
  %indvars.iv = add i32 %indvars.iv.in, -1        ; 2 uses
  %3 = sext i32 %indvars.iv to i64                ; 5 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv32
  store double 1.000000e+00, ptr %4, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv32
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22   ; 2 uses
  %i.p = add nsw i64 %3, 1
  %i.q = tail call i64 @llvm.smax.i64(i64 %i.p, i64 %i.i)
  %i.r = sub i64 %i.q, %3                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.r, -4                       ; 3 uses
  %i.s = add i64 %n.vec, %3
  %invariant.gep = getelementptr [8 x i8], ptr %i.o, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %gep, align 8, !tbaa !26
  store <2 x double> splat (double 1.000000e+00), ptr %i.t, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv29.ph = phi i64 [ %3, %.lr.ph ], [ %i.s, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next33, %i.i
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %scalar.ph ], [ %indvars.iv29.ph, %scalar.ph.preheader ] ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv29
  store double 1.000000e+00, ptr %i.v, align 8, !tbaa !26
  %indvars.iv.next30 = add nsw i64 %indvars.iv29, 1 ; 2 uses
  %i.w = icmp slt i64 %indvars.iv.next30, %2
  br i1 %i.w, label %scalar.ph, label %._crit_edge, !llvm.loop !42

.loopexit:                                        ; preds = %._crit_edge, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @SplittingStepCoefficients_SuzukiFractal(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  %i.b = and i32 %1, 1
  %.not.i = icmp eq i32 %i.b, 0
  %or.cond.i = and i1 %i.a, %.not.i
  br i1 %or.cond.i, label %bb.b, label %SplittingStepCoefficients_ComposeStrang.exit

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %0, -1
  %i.d = lshr exact i32 %1, 1
  %i.e = add nsw i32 %i.d, -1
  %i.f = tail call i32 @SUNIpowerI(i32 noundef 5, i32 noundef %i.e) #18
  %i.g = mul nsw i32 %i.f, %i.c
  %i.h = add nsw i32 %i.g, 1
  %i.i = tail call ptr @SplittingStepCoefficients_Alloc(i32 noundef 1, i32 noundef %i.h, i32 noundef %0) ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %SplittingStepCoefficients_ComposeStrang.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 %1, ptr %i.k, align 4, !tbaa !17
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !18
  store double 1.000000e+00, ptr %i.l, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = tail call fastcc ptr @SplittingStepCoefficients_ComposeStrangHelper(i32 noundef %0, i32 noundef %1, i32 noundef 5, double noundef 0.000000e+00, double noundef 1.000000e+00, ptr noundef %i.o) ; 0 uses
  br label %SplittingStepCoefficients_ComposeStrang.exit

SplittingStepCoefficients_ComposeStrang.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %.1.i = phi ptr [ null, %bb.a ], [ %i.i, %bb.c ], [ null, %bb.b ]
  ret ptr %.1.i
}

; Function Attrs: nofree nounwind uwtable
define void @SplittingStepCoefficients_Write(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !14
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, i32 noundef %i.m) #18 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !15
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, i32 noundef %i.p) #18 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !16
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, i32 noundef %i.s) #18 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !17
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, i32 noundef %i.v) #18 ; 0 uses
  %i.x = tail call i64 @fwrite(ptr nonnull @.str.14, i64 10, i64 1, ptr nonnull %1) ; 0 uses
  %i.y = load i32, ptr %i.l, align 8, !tbaa !14
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %fputc = tail call i32 @fputc(i32 10, ptr nonnull %1) ; 0 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !14
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph62, label %.loopexit

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.f ] ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !26
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, double noundef %i.ae) #18 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr %i.l, align 8, !tbaa !14
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph62:                                         ; preds = %._crit_edge, %._crit_edge59
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %._crit_edge59 ], [ 0, %._crit_edge ] ; 3 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv70 to i32
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, i32 noundef %i.aj) #18 ; 0 uses
  %i.al = load i32, ptr %i.o, align 4, !tbaa !15
  %.not55 = icmp slt i32 %i.al, 0
  br i1 %.not55, label %._crit_edge59, label %.lr.ph58

._crit_edge59:                                    ; preds = %._crit_edge54, %.lr.ph62
  %fputc48 = tail call i32 @fputc(i32 10, ptr nonnull %1) ; 0 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.am = load i32, ptr %i.l, align 8, !tbaa !14
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next71, %i.an
  br i1 %i.ao, label %.lr.ph62, label %.loopexit

.lr.ph58:                                         ; preds = %.lr.ph62, %._crit_edge54
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %._crit_edge54 ], [ 0, %.lr.ph62 ] ; 3 uses
  %i.ap = tail call i64 @fwrite(ptr nonnull @.str.18, i64 6, i64 1, ptr nonnull %1) ; 0 uses
  %i.aq = load i32, ptr %i.r, align 8, !tbaa !16
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph53, label %._crit_edge54

._crit_edge54:                                    ; preds = %.lr.ph53, %.lr.ph58
  %fputc49 = tail call i32 @fputc(i32 10, ptr nonnull %1) ; 0 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %i.as = load i32, ptr %i.o, align 4, !tbaa !15
  %i.at = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv67, %i.at
  br i1 %.not.not, label %.lr.ph58, label %._crit_edge59

.lr.ph53:                                         ; preds = %.lr.ph58, %.lr.ph53
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.lr.ph53 ], [ 0, %.lr.ph58 ] ; 2 uses
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv70
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv67
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv64
  %i.ba = load double, ptr %i.az, align 8, !tbaa !26
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, double noundef %i.ba) #18 ; 0 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.bc = load i32, ptr %i.r, align 8, !tbaa !16
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next65, %i.bd
  br i1 %i.be, label %.lr.ph53, label %._crit_edge54

.loopexit:                                        ; preds = %._crit_edge59, %._crit_edge, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare i32 @SUNIpowerI(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @SplittingStepCoefficients_ComposeStrangHelper(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 3, 6) %2, double noundef %3, double noundef %4, ptr noundef %5) unnamed_addr #11 {
bb.a:
  %i.a = fsub double %4, %3                       ; 2 uses
  %i.b = icmp eq i32 %1, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fmul double %i.a, 5.000000e-01
  %i.d = fadd double %3, %i.c                     ; 2 uses
  %.not5560 = icmp slt i32 %0, 1
  br i1 %.not5560, label %._crit_edge62.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.e = add nuw i32 %0, 1
  %wide.trip.count68 = zext i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert73 = insertelement <2 x i32> poison, i32 %0, i64 0
  %broadcast.splat74 = shufflevector <2 x i32> %broadcast.splatinsert73, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert75 = insertelement <2 x double> poison, double %i.d, i64 0
  %broadcast.splat76 = shufflevector <2 x double> %broadcast.splatinsert75, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert77 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat78 = shufflevector <2 x double> %broadcast.splatinsert77, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv65 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next66, %._crit_edge ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv65
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv65, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_0
