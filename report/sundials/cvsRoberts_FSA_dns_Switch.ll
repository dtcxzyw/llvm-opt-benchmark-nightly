Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsRoberts_FSA_dns_Switch?download=true
inline.NumInlined: 32
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@f:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %i.z, ptr %i.aa, align 8, !tbaa !14
  ret i32 0
}

declare i32 @CVodeSVtolerances(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetMaxNumSteps(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SUNDenseMatrix(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_Dense(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetJacFn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @Jac(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !14 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !14 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !14 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = load double, ptr %i.l, align 8, !tbaa !14
  %i.n = fneg double %i.i
  %i.o = load ptr, ptr %3, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35   ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39   ; 2 uses
  store double %i.n, ptr %i.r, align 8, !tbaa !14
  %i.s = fmul double %i.g, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39   ; 3 uses
  store double %i.s, ptr %i.u, align 8, !tbaa !14
  %i.v = fmul double %i.e, %i.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39   ; 2 uses
  store double %i.v, ptr %i.x, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store double %i.i, ptr %i.y, align 8, !tbaa !14
  %i.z = fneg double %i.k                         ; 2 uses
  %i.aa = fmul double %i.m, 2.000000e+00
  %i.ab = fmul double %i.e, %i.aa                 ; 2 uses
  %i.ac = fneg double %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.z, double %i.g, double %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %i.ad, ptr %i.ae, align 8, !tbaa !14
  %i.af = fmul double %i.e, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double %i.af, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.ab, ptr %i.ah, align 8, !tbaa !14
  ret i32 0
}

declare ptr @N_VCloneVectorArray(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSensInit1(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fS(i32 %0, double %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree readnone captures(none) %8, ptr nofree readnone captures(none) %9) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.f = load double, ptr %i.e, align 8, !tbaa !14
  %i.g = load ptr, ptr %2, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !14 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !14 ; 3 uses
  %i.n = load ptr, ptr %5, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 3 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !14 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !14
  %i.v = fneg double %i.b
  %i.w = fmul double %i.d, %i.m
  %i.x = fmul double %i.w, %i.s
  %i.y = tail call double @llvm.fmuladd.f64(double %i.v, double %i.q, double %i.x)
  %i.z = fmul double %i.d, %i.k
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.u, double %i.y) ; 5 uses
  %i.ab = fmul double %i.f, 2.000000e+00
  %i.ac = fmul double %i.ab, %i.k
  %i.ad = fmul double %i.ac, %i.s                 ; 5 uses
  %i.ae = fneg double %i.aa
  %i.af = fsub double %i.ae, %i.ad                ; 4 uses
  switch i32 %4, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.ag = load double, ptr %i.i, align 8, !tbaa !14 ; 2 uses
  %i.ah = fsub double %i.aa, %i.ag
  %i.ai = fadd double %i.af, %i.ag
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.k, double %i.m, double %i.aa)
  %i.ak = fneg double %i.k
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.m, double %i.af)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.am = fneg double %i.k
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.k, double %i.af)
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.ad)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.046 = phi double [ %i.aa, %bb.a ], [ %i.ah, %bb.b ], [ %i.aj, %bb.c ], [ %i.aa, %bb.d ]
  %.045 = phi double [ %i.af, %bb.a ], [ %i.ai, %bb.b ], [ %i.al, %bb.c ], [ %i.an, %bb.d ]
  %.0 = phi double [ %i.ad, %bb.a ], [ %i.ad, %bb.b ], [ %i.ad, %bb.c ], [ %i.ao, %bb.d ]
  %i.ap = load ptr, ptr %6, align 8, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19 ; 3 uses
  store double %.046, ptr %i.ar, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store double %.045, ptr %i.as, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store double %.0, ptr %i.at, align 8, !tbaa !14
  ret i32 0
}

declare i32 @CVodeSetSensParams(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSensEEtolerances(ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetSensErrCon(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @runCVode(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca double, align 8                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #10
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20) ; 0 uses
  %i.q = load i32, ptr %2, align 8, !tbaa !30
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %PrintHeader.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27
  %switch.tableidx = add i32 %i.t, -1             ; 2 uses
  %i.u = icmp ult i32 %switch.tableidx, 3
  br i1 %i.u, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.v = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.runCVode, i64 %i.v
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %switch.load) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !29
  %.not7.i = icmp eq i32 %i.y, 0
  %.str.26..str.25.i = select i1 %.not7.i, ptr @.str.26, ptr @.str.25
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.26..str.25.i) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !31
  %.not8.i = icmp eq i32 %i.ab, 0
  %spec.select.i = select i1 %.not8.i, ptr @str.1, ptr @str.2
  br label %PrintHeader.exit

PrintHeader.exit:                                 ; preds = %bb.a, %bb.c
  %str.2.sink.i = phi ptr [ %spec.select.i, %bb.c ], [ @str, %bb.a ]
  %puts10.i = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink.i) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !14
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, double noundef %i.ad, double noundef %i.af, double noundef %i.ah) ; 0 uses
  %i.aj = call i32 @CVode(ptr noundef %0, double noundef 4.000000e+10, ptr noundef %1, ptr noundef nonnull %i.o, i32 noundef 1) #10 ; 2 uses
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %PrintHeader.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  %i.ak = call i32 @CVodeGetNumSteps(ptr noundef %0, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.al = call i32 @CVodeGetNumRhsEvals(ptr noundef %0, ptr noundef nonnull %i.b) #10 ; 0 uses
  %i.am = call i32 @CVodeGetNumLinSolvSetups(ptr noundef %0, ptr noundef nonnull %i.c) #10 ; 0 uses
  %i.an = call i32 @CVodeGetNumErrTestFails(ptr noundef %0, ptr noundef nonnull %i.f) #10 ; 0 uses
  %i.ao = call i32 @CVodeGetNumNonlinSolvIters(ptr noundef %0, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.ap = call i32 @CVodeGetNumNonlinSolvConvFails(ptr noundef %0, ptr noundef nonnull %i.e) #10 ; 0 uses
  %i.aq = load i32, ptr %2, align 8, !tbaa !30
  %.not.i9 = icmp eq i32 %i.aq, 0
  br i1 %.not.i9, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = call i32 @CVodeGetSensNumRhsEvals(ptr noundef %0, ptr noundef nonnull %i.g) #10 ; 0 uses
  %i.as = call i32 @CVodeGetNumRhsEvalsSens(ptr noundef %0, ptr noundef nonnull %i.h) #10 ; 0 uses
  %i.at = call i32 @CVodeGetSensNumLinSolvSetups(ptr noundef %0, ptr noundef nonnull %i.i) #10 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !29
  %.not18.i = icmp eq i32 %i.av, 0
  br i1 %.not18.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = call i32 @CVodeGetSensNumErrTestFails(ptr noundef %0, ptr noundef nonnull %i.l) #10 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i64 0, ptr %i.l, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !27
  %i.az = icmp eq i32 %i.ay, 2
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = call i32 @CVodeGetSensNumNonlinSolvIters(ptr noundef %0, ptr noundef nonnull %i.j) #10 ; 0 uses
  %i.bb = call i32 @CVodeGetSensNumNonlinSolvConvFails(ptr noundef %0, ptr noundef nonnull %i.k) #10 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i64 0, ptr %i.j, align 8, !tbaa !40
  store i64 0, ptr %i.k, align 8, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.d
  %i.bc = call i32 @CVodeGetNumJacEvals(ptr noundef %0, ptr noundef nonnull %i.m) #10 ; 0 uses
  %i.bd = call i32 @CVodeGetNumLinRhsEvals(ptr noundef %0, ptr noundef nonnull %i.n) #10
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.be = load i64, ptr %i.a, align 8, !tbaa !40
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i64 noundef %i.be) ; 0 uses
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !40
  %i.bh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i64 noundef %i.bg) ; 0 uses
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !40
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !40
  %i.bk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i64 noundef %i.bi, i64 noundef %i.bj) ; 0 uses
  %i.bl = load i64, ptr %i.d, align 8, !tbaa !40
  %i.bm = load i64, ptr %i.e, align 8, !tbaa !40
  %i.bn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i64 noundef %i.bl, i64 noundef %i.bm) ; 0 uses
  %i.bo = load i64, ptr %i.m, align 8, !tbaa !40
  %i.bp = load i64, ptr %i.n, align 8, !tbaa !40
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i64 noundef %i.bo, i64 noundef %i.bp) ; 0 uses
  %i.br = load i32, ptr %2, align 8, !tbaa !30
  %.not19.i = icmp eq i32 %i.br, 0
  br i1 %.not19.i, label %PrintFinalStats.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %puts20.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.bs = load i64, ptr %i.g, align 8, !tbaa !40
  %i.bt = load i64, ptr %i.h, align 8, !tbaa !40
  %i.bu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %i.bs, i64 noundef %i.bt) ; 0 uses
  %i.bv = load i64, ptr %i.l, align 8, !tbaa !40
  %i.bw = load i64, ptr %i.i, align 8, !tbaa !40
  %i.bx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i64 noundef %i.bv, i64 noundef %i.bw) ; 0 uses
  %i.by = load i64, ptr %i.j, align 8, !tbaa !40
  %i.bz = load i64, ptr %i.k, align 8, !tbaa !40
  %i.ca = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i64 noundef %i.by, i64 noundef %i.bz) ; 0 uses
  br label %PrintFinalStats.exit

PrintFinalStats.exit:                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %PrintHeader.exit, %PrintFinalStats.exit
  %.0 = phi i32 [ %i.bd, %PrintFinalStats.exit ], [ %i.aj, %PrintHeader.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  ret i32 %.0
}

declare i32 @CVodeReInit(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSensToggleOff(ptr noundef) local_unnamed_addr #2

declare void @CVodeSensFree(ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare void @N_VDestroyVectorArray(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @CVodeFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2

declare void @SUNMatDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @CVode(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare i32 @CVodeGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumRhsEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumLinSolvSetups(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumErrTestFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumNonlinSolvIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumNonlinSolvConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetSensNumRhsEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumRhsEvalsSens(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetSensNumLinSolvSetups(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetSensNumErrTestFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetSensNumNonlinSolvIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetSensNumNonlinSolvConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumJacEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumLinRhsEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

end_hunk_0
