inline.NumInlined: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mriStep_PrintMem:bb.a
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !210
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.33, i64 noundef %i.ba) #14 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !211
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.34, i64 noundef %i.bd) #14 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !212
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.35, i64 noundef %i.bg) #14 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !213
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %i.bj) #14 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !214
  %i.bn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %i.bm) #14 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !143
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %i.bp) #14 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !110
  %i.bt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %i.bs) #14 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !215
  %i.bw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %i.bv) #14 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !83
  %i.bz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %i.by) #14 ; 0 uses
  %i.ca = tail call i64 @fwrite(ptr nonnull @.str.42, i64 29, i64 1, ptr %1) ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !120
  tail call void @MRIStepCoupling_Write(ptr noundef %i.cc, ptr noundef %1) #14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !111
  %i.cf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.43, double noundef %i.ce) #14 ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !216
  %i.ci = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.44, double noundef %i.ch) #14 ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !112
  %i.cl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.45, double noundef %i.ck) #14 ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !217
  %i.co = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.46, double noundef %i.cn) #14 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !218
  %i.cr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.47, double noundef %i.cq) #14 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !85
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.48, double noundef %i.ct) #14 ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !219
  %i.cx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.49, double noundef %i.cw) #14 ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !220
  %i.da = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.50, double noundef %i.cz) #14 ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.dc = load double, ptr %i.db, align 8, !tbaa !221
  %i.dd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.51, double noundef %i.dc) #14 ; 0 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.df = load double, ptr %i.de, align 8, !tbaa !114
  %i.dg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.52, double noundef %i.df) #14 ; 0 uses
  %i.dh = tail call i64 @fwrite(ptr nonnull @.str.53, i64 17, i64 1, ptr %1) ; 0 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 4 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !145
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph100, label %._crit_edge101

.lr.ph100:                                        ; preds = %._crit_edge
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph100, %bb.d
  %indvars.iv107 = phi i64 [ 0, %.lr.ph100 ], [ %indvars.iv.next108, %bb.d ] ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !140
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv107
  %i.do = load double, ptr %i.dn, align 8, !tbaa !92
  %i.dp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.54, double noundef %i.do) #14 ; 0 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.dq = load i32, ptr %i.di, align 4, !tbaa !145
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next108, %i.dr
  br i1 %i.ds, label %bb.d, label %._crit_edge101

._crit_edge101:                                   ; preds = %bb.d, %._crit_edge
  %fputc55 = tail call i32 @fputc(i32 10, ptr %1) ; 0 uses
  %i.dt = tail call i64 @fwrite(ptr nonnull @.str.55, i64 17, i64 1, ptr %1) ; 0 uses
  %i.du = load i32, ptr %i.di, align 4, !tbaa !145
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %._crit_edge101
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph104, %bb.e
  %indvars.iv110 = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next111, %bb.e ] ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !141
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv110
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !92
  %i.ea = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.54, double noundef %i.dz) #14 ; 0 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.eb = load i32, ptr %i.di, align 4, !tbaa !145
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp slt i64 %indvars.iv.next111, %i.ec
  br i1 %i.ed, label %bb.e, label %._crit_edge105

._crit_edge105:                                   ; preds = %bb.e, %._crit_edge101
  %fputc56 = tail call i32 @fputc(i32 10, ptr %1) ; 0 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !98 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %mriStepInnerStepper_PrintMem.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge105
  %i.eh = tail call i64 @fwrite(ptr nonnull @.str.98, i64 25, i64 1, ptr %1) ; 0 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !222
  %i.ek = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef %i.ej) #14 ; 0 uses
  br label %mriStepInnerStepper_PrintMem.exit

mriStepInnerStepper_PrintMem.exit:                ; preds = %bb.f, %._crit_edge105, %mriStep_AccessStepMem.exit
  ret void
}

declare i32 @mriStep_SetDefaults(ptr noundef) #2

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @mriStep_ComputeState(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %mriStep_AccessStepMem.exit, label %bb.b

mriStep_AccessStepMem.exit:                       ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 3290, ptr noundef nonnull @__func__.mriStep_ComputeState, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #14
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !205
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.e, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %2) #14
  br label %bb.c

bb.c:                                             ; preds = %mriStep_AccessStepMem.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -21, %mriStep_AccessStepMem.exit ]
  ret i32 %.0
}

declare i32 @mriStep_SetOptions(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @mriStep_SetOrder(ptr noundef, i32 noundef) #2

declare i32 @mriStep_SetNonlinearSolver(ptr noundef, ptr noundef) #2

declare i32 @mriStep_SetLinear(ptr noundef, i32 noundef) #2

declare i32 @mriStep_SetNonlinear(ptr noundef) #2

declare i32 @mriStep_SetNlsRhsFn(ptr noundef, ptr noundef) #2

declare i32 @mriStep_SetDeduceImplicitRhs(ptr noundef, i32 noundef) #2

declare i32 @mriStep_SetNonlinCRDown(ptr noundef, double noundef) #2

declare i32 @mriStep_SetNonlinRDiv(ptr noundef, double noundef) #2

declare i32 @mriStep_SetDeltaGammaMax(ptr noundef, double noundef) #2

declare i32 @mriStep_SetLSetupFrequency(ptr noundef, i32 noundef) #2

declare i32 @mriStep_SetPredictorMethod(ptr noundef, i32 noundef) #2

declare i32 @mriStep_SetMaxNonlinIters(ptr noundef, i32 noundef) #2

declare i32 @mriStep_SetNonlinConvCoef(ptr noundef, double noundef) #2

declare i32 @mriStep_SetStagePredictFn(ptr noundef, ptr noundef) #2

declare i32 @mriStep_GetNumRhsEvals(ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @mriStep_GetNumLinSolvSetups(ptr noundef, ptr noundef) #2

declare i32 @mriStep_GetCurrentGamma(ptr noundef, ptr noundef) #2

declare i32 @mriStep_SetAdaptController(ptr noundef, ptr noundef) #2

declare i32 @mriStep_GetEstLocalErrors(ptr noundef, ptr noundef) #2

declare i32 @mriStep_GetNonlinearSystemData(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @mriStep_GetNumNonlinSolvIters(ptr noundef, ptr noundef) #2

declare i32 @mriStep_GetNumNonlinSolvConvFails(ptr noundef, ptr noundef) #2

declare i32 @mriStep_GetNonlinSolvStats(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @mriStep_SetInnerForcing(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 18 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %mriStep_AccessStepMem.exit, label %bb.b

mriStep_AccessStepMem.exit:                       ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 3290, ptr noundef nonnull @__func__.mriStep_SetInnerForcing, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #14
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %4, 0
  br i1 %i.d, label %5, label %bb.l

5:                                                ; preds = %bb.b
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %.not20 = icmp eq i32 %7, 0
  br i1 %.not20, label %10, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 0, ptr %9, align 4, !tbaa !78
  br label %bb.c

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 0, ptr %11, align 8, !tbaa !79
  br label %bb.c

bb.c:                                             ; preds = %10, %8
  %12 = phi <2 x i32> [ <i32 0, i32 1>, %10 ], [ <i32 1, i32 0>, %8 ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 468
  store <2 x i32> %12, ptr %i.e, align 4, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store double %1, ptr %i.f, align 8, !tbaa !194
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  store double %2, ptr %i.g, align 8, !tbaa !195
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store ptr %3, ptr %i.h, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  store i32 %4, ptr %i.i, align 8, !tbaa !97
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 0, ptr %i.j, align 8, !tbaa !188
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !120  ; 2 uses
  %.not21 = icmp eq ptr %i.l, null
  br i1 %.not21, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 464 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !87
  %i.o = sub nsw i32 %i.n, %4
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !127
  %i.r = shl nsw i32 %i.q, 1
  %i.s = add nsw i32 %i.r, 2
  %i.t = icmp slt i32 %i.o, %i.s
  br i1 %i.t, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88   ; 2 uses
  %.not22 = icmp eq ptr %i.v, null
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.v) #14
  %i.w = load i32, ptr %i.m, align 8, !tbaa !87
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !89
  %i.aa = sub nsw i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !89
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 520 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !90 ; 2 uses
  %.not23 = icmp eq ptr %i.ac, null
  br i1 %.not23, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.ac) #14
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !87
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !91
  %i.ah = sub nsw i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !91
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !120
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !127
  %i.al = shl nsw i32 %i.ak, 1
  %i.am = add nuw i32 %4, 2
  %i.an = add i32 %i.am, %i.al                    ; 2 uses
  store i32 %i.an, ptr %i.m, align 8, !tbaa !87
  %i.ao = sext i32 %i.an to i64                   ; 4 uses
  %i.ap = tail call noalias ptr @calloc(i64 noundef %i.ao, i64 noundef 8) #15 ; 2 uses
  store ptr %i.ap, ptr %i.u, align 8, !tbaa !88
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !89
  %i.at = add nsw i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !89
  %i.au = tail call noalias ptr @calloc(i64 noundef %i.ao, i64 noundef 8) #15 ; 2 uses
  store ptr %i.au, ptr %i.ab, align 8, !tbaa !90
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !91
  %i.ay = add nsw i64 %i.ax, %i.ao
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !91
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 468
  store i32 0, ptr %i.az, align 4, !tbaa !94
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  store i32 0, ptr %i.ba, align 8, !tbaa !95
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.bb, align 8, !tbaa !92
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store ptr null, ptr %i.bc, align 8, !tbaa !96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  store i32 0, ptr %i.bd, align 8, !tbaa !97
  br label %bb.m

bb.m:                                             ; preds = %mriStep_AccessStepMem.exit, %bb.l, %bb.d, %bb.k, %bb.c, %bb.j, %bb.i
  %.0 = phi i32 [ -20, %bb.j ], [ -21, %mriStep_AccessStepMem.exit ], [ -20, %bb.i ], [ 0, %bb.c ], [ 0, %bb.k ], [ 0, %bb.d ], [ 0, %bb.l ]
  ret i32 %.0
}

declare i32 @mriStep_GetStageIndex(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @SUNNonlinSol_Newton(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetNonlinearSolver(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @arkInit(ptr noundef, double noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -22, 1) i32 @mriStepInnerStepper_HasRequiredOps(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !102
  %.not = icmp eq ptr %i.e, null
  %. = select i1 %.not, i32 -22, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -22, %bb.b ], [ -22, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @MRIStepReInit(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3261, ptr noundef nonnull @__func__.MRIStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #14
  br label %mriStep_AccessARKODEStepMem.exit.thread

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 11 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %mriStep_AccessARKODEStepMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 3270, ptr noundef nonnull @__func__.MRIStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #14
  br label %mriStep_AccessARKODEStepMem.exit.thread

mriStep_AccessARKODEStepMem.exit:                 ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.g = load i32, ptr %i.f, align 8, !tbaa !223
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %mriStep_AccessARKODEStepMem.exit
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -23, i32 noundef 314, ptr noundef nonnull @__func__.MRIStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #14
  br label %mriStep_AccessARKODEStepMem.exit.thread

bb.f:                                             ; preds = %mriStep_AccessARKODEStepMem.exit
  %i.i = insertelement <2 x ptr> poison, ptr %1, i64 0
  %i.j = insertelement <2 x ptr> %i.i, ptr %2, i64 1
  %i.k = icmp eq <2 x ptr> %i.j, splat (ptr null) ; 3 uses
  %i.l = extractelement <2 x i1> %i.k, i64 0
  %i.m = extractelement <2 x i1> %i.k, i64 1      ; 2 uses
  %or.cond = and i1 %i.l, %i.m
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 322, ptr noundef nonnull @__func__.MRIStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  br label %mriStep_AccessARKODEStepMem.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.n = icmp eq ptr %4, null
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 330, ptr noundef nonnull @__func__.MRIStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #14
  br label %mriStep_AccessARKODEStepMem.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.o = xor <2 x i1> %i.k, splat (i1 true)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.q = zext <2 x i1> %i.o to <2 x i32>
  store <2 x i32> %i.q, ptr %i.p, align 8, !tbaa !80
end_hunk_0
