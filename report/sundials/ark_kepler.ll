Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_kepler?download=true
inline.NumInlined: 38
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@SolveProblem:bb.a
  br label %Hamiltonian.exit211

Hamiltonian.exit211:                              ; preds = %Hamiltonian.exit210, %bb.am
  %i.ny = phi double [ %i.nx, %bb.am ], [ 0.000000e+00, %Hamiltonian.exit210 ]
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.oa = fdiv double -1.000000e+00, %i.ny
  %i.ob = load <2 x double>, ptr %i.nz, align 8, !tbaa !17 ; 2 uses
  %i.oc = call ptr @N_VGetArrayPointer(ptr noundef %i.aw) #14 ; 3 uses
  %i.od = load <2 x double>, ptr %i.oc, align 8, !tbaa !17 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.of = load double, ptr %i.oe, align 8, !tbaa !17
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %i.oh = load double, ptr %i.og, align 8, !tbaa !17
  %i.oi = fneg double %i.of
  %i.oj = shufflevector <2 x double> %i.ob, <2 x double> %i.od, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ok = insertelement <2 x double> %i.oj, double %i.oi, i64 1
  %i.ol = fmul <2 x double> %i.oj, %i.ok
  %i.om = shufflevector <2 x double> %i.ob, <2 x double> %i.od, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.on = insertelement <2 x double> %i.om, double %i.oh, i64 1
  %i.oo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.om, <2 x double> %i.on, <2 x double> %i.ol) ; 2 uses
  %i.op = extractelement <2 x double> %i.oo, i64 0
  %i.oq = call double @llvm.fmuladd.f64(double %i.op, double 5.000000e-01, double %i.oa)
  %i.or = fpext double %i.oq to x86_fp80
  %i.os = extractelement <2 x double> %i.oo, i64 1
  %i.ot = fpext double %i.os to x86_fp80
  %i.ou = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0154, ptr noundef nonnull @.str.59, x86_fp80 noundef %i.or, x86_fp80 noundef %i.ot) #14 ; 0 uses
  call void @N_VPrintFile(ptr noundef %i.aw, ptr noundef %.0153) #14
  %i.ov = fadd double %i.v, %.2245                ; 2 uses
  %i.ow = fcmp ogt double %i.ov, %i.t
  %i.ox = select i1 %i.ow, double %i.t, double %i.ov
  %i.oy = add nsw i32 %.2150243, 1
  br label %bb.an

bb.an:                                            ; preds = %Hamiltonian.exit211, %Hamiltonian.exit209
  %i.oz = phi ptr [ %i.kk, %Hamiltonian.exit209 ], [ %i.kf, %Hamiltonian.exit211 ]
  %.3151 = phi i32 [ %.2150243, %Hamiltonian.exit209 ], [ %i.oy, %Hamiltonian.exit211 ] ; 2 uses
  %.3147 = phi double [ %i.ki, %Hamiltonian.exit209 ], [ %.2146244, %Hamiltonian.exit211 ]
  %.3 = phi double [ %.2245, %Hamiltonian.exit209 ], [ %i.ox, %Hamiltonian.exit211 ]
  %i.pa = icmp slt i32 %.3151, %i.n
  br i1 %i.pa, label %bb.ae, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.aj, %bb.z
  %i.pb = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite171 = call i64 @fwrite(ptr nonnull @.str.63, i64 37, i64 1, ptr %i.pb) #17 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.an, %bb.ad, %.loopexit.sink.split, %.preheader241, %.preheader
  %i.pc = load ptr, ptr %1, align 8, !tbaa !22
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.aw, ptr noundef %i.pc) #14
  %i.pd = call ptr @N_VGetArrayPointer(ptr noundef %i.aw) #14 ; 4 uses
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !17 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !17 ; 2 uses
  %i.ph = fmul double %i.pg, %i.pg
  %i.pi = call double @llvm.fmuladd.f64(double %i.pe, double %i.pe, double %i.ph) ; 2 uses
  %i.pj = fcmp ugt double %i.pi, 0.000000e+00
  br i1 %i.pj, label %bb.ao, label %Hamiltonian.exit212

bb.ao:                                            ; preds = %.loopexit
  %i.pk = call double @sqrt(double noundef %i.pi) #14
  br label %Hamiltonian.exit212

Hamiltonian.exit212:                              ; preds = %.loopexit, %bb.ao
  %i.pl = phi double [ %i.pk, %bb.ao ], [ 0.000000e+00, %.loopexit ]
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !17 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  %i.pp = load double, ptr %i.po, align 8, !tbaa !17 ; 2 uses
  %i.pq = fmul double %i.pp, %i.pp
  %i.pr = call double @llvm.fmuladd.f64(double %i.pn, double %i.pn, double %i.pq)
  %i.ps = fdiv double -1.000000e+00, %i.pl
  %i.pt = call double @llvm.fmuladd.f64(double %i.pr, double 5.000000e-01, double %i.ps)
  %i.pu = fsub double %i.pt, %i.es
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.pu, ptr %i.pv, align 8, !tbaa !26
  call void @free(ptr noundef %i.av) #14
  %i.pw = call i32 @fclose(ptr noundef %.0152)    ; 0 uses
  %i.px = call i32 @fclose(ptr noundef %.0154)    ; 0 uses
  %i.py = call i32 @fclose(ptr noundef %.0153)    ; 0 uses
  call void @N_VDestroy(ptr noundef %i.aw) #14
  %i.pz = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.qa = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.qb = call i32 @ARKodePrintAllStats(ptr noundef %i.pz, ptr noundef %i.qa, i32 noundef 0) #14 ; 0 uses
  call void @ARKodeFree(ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.ap

bb.ap:                                            ; preds = %check_retval.exit205, %check_retval.exit203, %check_retval.exit201, %check_retval.exit197, %check_retval.exit195, %check_retval.exit193, %check_retval.exit191, %check_retval.exit189, %check_retval.exit187, %Hamiltonian.exit212, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare ptr @ARKodeSPRKTable_LoadByName(ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

declare void @ARKodeSPRKTable_Free(ptr noundef) local_unnamed_addr #2

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @N_VDotProd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare i64 @N_VGetLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ComputeConvergence(ptr nofree noundef nonnull readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %7, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %8, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %9) unnamed_addr #6 {
bb.a:
  store double 0.000000e+00, ptr %7, align 8, !tbaa !17
  store double 0.000000e+00, ptr %8, align 8, !tbaa !17
  store double 0.000000e+00, ptr %9, align 8, !tbaa !17
  %i.a = load double, ptr %0, align 8, !tbaa !17
  %i.b = load double, ptr %7, align 8, !tbaa !17
  %i.c = fadd double %i.a, %i.b
  store double %i.c, ptr %7, align 8, !tbaa !17
  %i.d = load double, ptr %8, align 8, !tbaa !17  ; 2 uses
  %i.e = load double, ptr %0, align 8, !tbaa !17  ; 2 uses
  %i.f = fcmp ogt double %i.d, %i.e
  %. = select i1 %i.f, double %i.d, double %i.e
  store double %., ptr %8, align 8, !tbaa !17
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !17
  %i.i = load double, ptr %7, align 8, !tbaa !17
  %i.j = fadd double %i.h, %i.i
  store double %i.j, ptr %7, align 8, !tbaa !17
  %i.k = load double, ptr %8, align 8, !tbaa !17  ; 2 uses
  %i.l = load double, ptr %i.g, align 8, !tbaa !17 ; 2 uses
  %i.m = fcmp ogt double %i.k, %i.l
  %..1 = select i1 %i.m, double %i.k, double %i.l
  store double %..1, ptr %8, align 8, !tbaa !17
  %i.n = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !17
  %i.p = load double, ptr %7, align 8, !tbaa !17
  %i.q = fadd double %i.o, %i.p
  store double %i.q, ptr %7, align 8, !tbaa !17
  %i.r = load double, ptr %8, align 8, !tbaa !17  ; 2 uses
  %i.s = load double, ptr %i.n, align 8, !tbaa !17 ; 2 uses
  %i.t = fcmp ogt double %i.r, %i.s
  %..2 = select i1 %i.t, double %i.r, double %i.s
  store double %..2, ptr %8, align 8, !tbaa !17
  %i.u = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !17
  %i.w = load double, ptr %7, align 8, !tbaa !17
  %i.x = fadd double %i.v, %i.w
  store double %i.x, ptr %7, align 8, !tbaa !17
  %i.y = load double, ptr %8, align 8, !tbaa !17  ; 2 uses
  %i.z = load double, ptr %i.u, align 8, !tbaa !17 ; 2 uses
  %i.aa = fcmp ogt double %i.y, %i.z
  %..3 = select i1 %i.aa, double %i.y, double %i.z
  store double %..3, ptr %8, align 8, !tbaa !17
  %i.ab = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !17
  %i.ad = load double, ptr %7, align 8, !tbaa !17
  %i.ae = fadd double %i.ac, %i.ad
  store double %i.ae, ptr %7, align 8, !tbaa !17
  %i.af = load double, ptr %8, align 8, !tbaa !17 ; 2 uses
  %i.ag = load double, ptr %i.ab, align 8, !tbaa !17 ; 2 uses
  %i.ah = fcmp ogt double %i.af, %i.ag
  %..4 = select i1 %i.ah, double %i.af, double %i.ag
  store double %..4, ptr %8, align 8, !tbaa !17
  %i.ai = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !17
  %i.ak = load double, ptr %7, align 8, !tbaa !17
  %i.al = fadd double %i.aj, %i.ak
  store double %i.al, ptr %7, align 8, !tbaa !17
  %i.am = load double, ptr %8, align 8, !tbaa !17 ; 2 uses
  %i.an = load double, ptr %i.ai, align 8, !tbaa !17 ; 2 uses
  %i.ao = fcmp ogt double %i.am, %i.an
  %..5 = select i1 %i.ao, double %i.am, double %i.an
  store double %..5, ptr %8, align 8, !tbaa !17
  %i.ap = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !17
  %i.ar = load double, ptr %7, align 8, !tbaa !17
  %i.as = fadd double %i.aq, %i.ar
  store double %i.as, ptr %7, align 8, !tbaa !17
  %i.at = load double, ptr %8, align 8, !tbaa !17 ; 2 uses
  %i.au = load double, ptr %i.ap, align 8, !tbaa !17 ; 2 uses
  %i.av = fcmp ogt double %i.at, %i.au
  %..6 = select i1 %i.av, double %i.at, double %i.au
  store double %..6, ptr %8, align 8, !tbaa !17
  %10 = load double, ptr %7, align 8, !tbaa !17
  %i.aw = insertelement <2 x double> poison, double %5, i64 0
  %11 = insertelement <2 x double> %i.aw, double %3, i64 1
  %12 = fneg <2 x double> %11
  %i.ax = insertelement <2 x double> poison, double %3, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %2, i64 1
  %i.az = fmul <2 x double> %i.ay, %12
  %i.ba = insertelement <2 x double> poison, double %1, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = insertelement <2 x double> poison, double %6, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %4, i64 1
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bd, <2 x double> %i.az) ; 2 uses
  %13 = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bf = insertelement <2 x double> %13, double %10, i64 0
  %14 = insertelement <2 x double> %i.be, double 7.000000e+00, i64 0
  %i.bg = fdiv <2 x double> %i.bf, %14            ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  store double %i.bh, ptr %7, align 8, !tbaa !17
  %i.bi = extractelement <2 x double> %i.bg, i64 1
  store double %i.bi, ptr %9, align 8, !tbaa !17
  ret void
}

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @PrintHelp() unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.31, i64 105, i64 1, ptr %i.a) #17 ; 0 uses
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite1 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 100, i64 1, ptr %i.b) #17 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite2 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 98, i64 1, ptr %i.c) #17 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite3 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 86, i64 1, ptr %i.d) #17 ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite4 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 88, i64 1, ptr %i.e) #17 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 51, i64 1, ptr %i.f) #17 ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite6 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 113, i64 1, ptr %i.g) #17 ; 0 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite7 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 78, i64 1, ptr %i.h) #17 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite8 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 71, i64 1, ptr %i.i) #17 ; 0 uses
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite9 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 86, i64 1, ptr %i.j) #17 ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite10 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 115, i64 1, ptr %i.k) #17 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

declare ptr @SPRKStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @force(double %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #14
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #14
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !17 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.c, %i.c
  %i.d = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.e = extractelement <2 x double> %i.c, i64 0  ; 2 uses
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.d) ; 2 uses
  %i.g = fcmp ugt double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call double @sqrt(double noundef %i.f) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi double [ %i.h, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.j = fneg <2 x double> %i.c
  %i.k = tail call double @pow(double noundef %i.i, double noundef 3.000000e+00) #14
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = insertelement <2 x double> poison, double %i.k, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x double> %i.j, %i.n
  store <2 x double> %i.o, ptr %i.l, align 8, !tbaa !17
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @velocity(double %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #14
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #14
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 8, !tbaa !17
  store <2 x double> %i.d, ptr %i.b, align 8, !tbaa !17
  ret i32 0
}

declare i32 @ARKodeRootInit(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @rootfn(double %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !17
  store double %i.c, ptr %2, align 8, !tbaa !17
  ret i32 0
}

declare i32 @SPRKStepSetMethodName(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetUseCompensatedSums(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ARKodeSetFixedStep(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @ARKodeSetMaxNumSteps(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #5

declare i32 @ARKodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ARKStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @dydt(double %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #14
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #14
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !17 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.c, %i.c
  %i.d = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.e = extractelement <2 x double> %i.c, i64 0  ; 2 uses
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.d) ; 2 uses
  %i.g = fcmp ugt double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %force.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call double @sqrt(double noundef %i.f) #14
  br label %force.exit

force.exit:                                       ; preds = %bb.a, %bb.b
  %i.i = phi double [ %i.h, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.j = fneg <2 x double> %i.c
  %i.k = tail call double @pow(double noundef %i.i, double noundef 3.000000e+00) #14
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = insertelement <2 x double> poison, double %i.k, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x double> %i.j, %i.n
  store <2 x double> %i.o, ptr %i.l, align 8, !tbaa !17
  %i.p = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #14
  %i.q = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #14
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load <2 x double>, ptr %i.r, align 8, !tbaa !17
  store <2 x double> %i.s, ptr %i.q, align 8, !tbaa !17
  ret i32 0
}

declare i32 @ARKStepSetTableName(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

declare void @N_VPrintFile(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetStopTime(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @ARKodeEvolve(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ARKodeGetRootInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @ARKodePrintAllStats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ARKodeFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #12
end_hunk_0
