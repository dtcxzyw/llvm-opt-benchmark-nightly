Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_brusselator1D_imexmri?download=true
inline.NumInlined: 102
inline.NumDeleted: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@SUNContext_Create
; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @SetIC(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !25 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load double, ptr %i.h, align 8, !tbaa !52
  %i.j = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #14
  %i.k = icmp sgt i64 %i.a, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = fdiv double %i.e, %i.c
  %i.m = insertelement <2 x double> poison, double %i.c, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.l, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.028 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.b ] ; 3 uses
  %i.o = uitofp nneg i64 %.028 to double
  %i.p = fmul double %i.i, %i.o
  %i.q = fmul double %i.g, %i.p
  %i.r = tail call double @sin(double noundef %i.q) #14 ; 2 uses
  %.idx = mul nuw nsw i64 %.028, 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> splat (double 1.000000e-01), <2 x double> %i.n)
  store <2 x double> %i.v, ptr %i.s, align 8, !tbaa !17
  %i.w = tail call double @llvm.fmuladd.f64(double %i.r, double 1.000000e-01, double %i.e)
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store double %i.w, ptr %i.x, align 8, !tbaa !17
  %i.y = add nuw nsw i64 %.028, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #3

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #3

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #3

declare ptr @ARKStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ff(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !16     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !25 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.g = load double, ptr %i.f, align 8, !tbaa !18 ; 2 uses
  %i.h = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #14 ; 12 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #14 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %check_retval.exit54, label %bb.c

check_retval.exit54:                              ; preds = %bb.b
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #14
  %i.p = add i64 %i.a, -1                         ; 2 uses
  %i.q = icmp sgt i64 %i.a, 2
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.r = add nsw i64 %i.a, -2                     ; 4 uses
  %min.iters.check = icmp ult i64 %i.r, 2
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.s = getelementptr i8, ptr %i.l, i64 24
  %i.t = mul i64 %i.a, 24
  %i.u = add i64 %i.t, -24                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.l, i64 %i.u
  %i.w = getelementptr i8, ptr %i.h, i64 24
  %i.x = getelementptr i8, ptr %i.h, i64 %i.u
  %bound0 = icmp ult ptr %i.s, %i.x
  %bound1 = icmp ult ptr %i.w, %i.v
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, -2                       ; 2 uses
  %i.y = or i64 %i.r, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert64 = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat65 = shufflevector <2 x double> %broadcast.splatinsert64, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert66 = insertelement <2 x double> poison, double %i.g, i64 0
  %broadcast.splat67 = shufflevector <2 x double> %broadcast.splatinsert66, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = mul nuw i64 %index, 3                    ; 3 uses
  %i.aa = add nuw i64 %i.z, 3                     ; 2 uses
  %i.ab = mul i64 %index, 3                       ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aa
  %i.ad = getelementptr [8 x i8], ptr %i.h, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.ad, i64 48
  %i.af = load double, ptr %i.ac, align 8, !tbaa !17, !alias.scope !58
  %i.ag = load double, ptr %i.ae, align 8, !tbaa !17, !alias.scope !58
  %i.ah = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.ag, i64 1 ; 5 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.z
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = getelementptr [8 x i8], ptr %i.h, i64 %i.ab
  %i.am = getelementptr i8, ptr %i.al, i64 56
  %i.an = load double, ptr %i.ak, align 8, !tbaa !17, !alias.scope !58
  %i.ao = load double, ptr %i.am, align 8, !tbaa !17, !alias.scope !58
  %i.ap = insertelement <2 x double> poison, double %i.an, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ao, i64 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.z
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = getelementptr [8 x i8], ptr %i.h, i64 %i.ab
  %i.au = getelementptr i8, ptr %i.at, i64 64
  %i.av = load double, ptr %i.as, align 8, !tbaa !17, !alias.scope !58
  %i.aw = load double, ptr %i.au, align 8, !tbaa !17, !alias.scope !58
  %i.ax = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.aw, i64 1 ; 4 uses
  %i.az = fadd <2 x double> %i.ay, splat (double 1.000000e+00)
  %i.ba = fneg <2 x double> %i.az
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.ai, <2 x double> %broadcast.splat)
  %i.bc = fmul <2 x double> %i.ai, %i.aq          ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aa
  %i.be = fneg <2 x double> %i.ai
  %i.bf = fmul <2 x double> %i.bc, %i.be
  %i.bg = fsub <2 x double> %broadcast.splat65, %i.ay
  %i.bh = fdiv <2 x double> %i.bg, %broadcast.splat67
  %i.bi = fneg <2 x double> %i.ay
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.ai, <2 x double> %i.bh)
  %i.bk = shufflevector <2 x double> %i.bc, <2 x double> %i.ay, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bl = shufflevector <2 x double> %i.ai, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bm = shufflevector <2 x double> %i.bb, <2 x double> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bk, <4 x double> %i.bl, <4 x double> %i.bm)
  %i.bo = shufflevector <2 x double> %i.bj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.bn, <4 x double> %i.bo, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.bd, align 8, !tbaa !17, !alias.scope !59, !noalias !58
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68

.lr.ph.preheader68:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.059.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.y, %middle.block ]
  %i.bq = insertelement <2 x double> poison, double %i.c, i64 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.059 = phi i64 [ %i.co, %.lr.ph ], [ %.059.ph, %.lr.ph.preheader68 ] ; 2 uses
  %i.br = mul nuw nsw i64 %.059, 3                ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !17
  %i.bw = add nuw nsw i64 %i.br, 2                ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.br
  %i.bz = load double, ptr %i.bs, align 8, !tbaa !17 ; 3 uses
  %i.ca = fmul double %i.bz, %i.bv                ; 2 uses
  %i.cb = fneg double %i.bz
  %i.cc = fmul double %i.ca, %i.cb
  %i.cd = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.ce = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cg = load double, ptr %i.bx, align 8, !tbaa !17 ; 3 uses
  %4 = insertelement <2 x double> poison, double %i.cg, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fadd <2 x double> %5, <double 1.000000e+00, double -0.000000e+00>
  %7 = insertelement <2 x double> %i.cd, double %i.cg, i64 1
  %8 = fsub double %i.e, %i.cg
  %9 = fdiv double %8, %i.g
  %i.ch = fneg <2 x double> %6
  %i.ci = insertelement <2 x double> %i.bq, double %9, i64 1
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.cf, <2 x double> %i.ci) ; 2 uses
  %i.ck = insertelement <2 x double> %i.cj, double %i.cc, i64 1
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %i.cf, <2 x double> %i.ck)
  store <2 x double> %i.cl, ptr %i.by, align 8, !tbaa !17
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bw
  %i.cn = extractelement <2 x double> %i.cj, i64 1
  store double %i.cn, ptr %i.cm, align 8, !tbaa !17
  %i.co = add nuw nsw i64 %.059, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.co, %i.p
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  %.idx = mul i64 %i.p, 24
  %i.cp = getelementptr i8, ptr %i.l, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %check_retval.exit54, %check_retval.exit, %._crit_edge
  %.050 = phi i32 [ 0, %._crit_edge ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit54 ]
  ret i32 %.050
}

declare ptr @ARKodeButcherTable_Alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare i32 @ARKStepSetTables(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SUNBandMatrix(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SUNLinSol_Band(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ARKodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @ARKodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ARKodeSetMaxNonlinIters(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ARKodeSetJacFn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @Jf(double %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = tail call i32 @SUNMatZero(ptr noundef %3) #14 ; 0 uses
  %.val = load i64, ptr %4, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %4, i64 88
  %.val5 = load double, ptr %i.b, align 8, !tbaa !18
  tail call fastcc void @ReactionJac(ptr noundef %1, ptr noundef %3, i64 %.val, double %.val5)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @f(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !16     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !25 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.g = load double, ptr %i.f, align 8, !tbaa !18 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load <2 x double>, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !23 ; 2 uses
  %i.p = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #14 ; 14 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #14 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %check_retval.exit109, label %bb.c

check_retval.exit109:                             ; preds = %bb.b
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #14
  %i.x = insertelement <2 x double> poison, double %i.o, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.z = fdiv <2 x double> %i.i, %i.y
  %i.aa = fdiv <2 x double> %i.z, %i.y            ; 4 uses
  %i.ab = fmul <2 x double> %i.k, <double 1.000000e+00, double -5.000000e-01>
  %i.ac = fdiv <2 x double> %i.ab, %i.y           ; 3 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = fdiv double %i.ad, %i.o                 ; 2 uses
  %i.af = fmul <2 x double> %i.m, splat (double -5.000000e-01)
  %i.ag = fdiv <2 x double> %i.af, %i.y           ; 4 uses
  %i.ah = add i64 %i.a, -1                        ; 2 uses
  %i.ai = icmp sgt i64 %i.a, 2
  br i1 %i.ai, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.aj = add nsw i64 %i.a, -2                    ; 4 uses
  %min.iters.check = icmp ult i64 %i.aj, 2
  br i1 %min.iters.check, label %.lr.ph.preheader138, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ak = getelementptr i8, ptr %i.t, i64 24
  %i.al = mul i64 %i.a, 24                        ; 2 uses
  %i.am = getelementptr i8, ptr %i.t, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = getelementptr i8, ptr %i.p, i64 %i.al
  %bound0 = icmp ult ptr %i.ak, %i.ao
  %bound1 = icmp ult ptr %i.p, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader138, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, -2                      ; 2 uses
  %i.ap = or i64 %i.aj, 1
  %broadcast.splat = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat120 = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat122 = shufflevector <2 x double> %broadcast.splatinsert121, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat124 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat126 = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat128 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert129 = insertelement <2 x double> poison, double %i.ae, i64 0
  %broadcast.splat130 = shufflevector <2 x double> %broadcast.splatinsert129, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert131 = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat132 = shufflevector <2 x double> %broadcast.splatinsert131, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert133 = insertelement <2 x double> poison, double %i.g, i64 0
  %broadcast.splat134 = shufflevector <2 x double> %broadcast.splatinsert133, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.aq = mul nuw i64 %index, 3                   ; 3 uses
  %i.ar = add nuw i64 %i.aq, 3                    ; 2 uses
  %i.as = mul i64 %index, 3                       ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ar ; 4 uses
  %i.au = getelementptr [8 x i8], ptr %i.p, i64 %i.as ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 48
  %i.aw = load double, ptr %i.at, align 8, !tbaa !17, !alias.scope !65
  %i.ax = load double, ptr %i.av, align 8, !tbaa !17, !alias.scope !65
  %i.ay = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ax, i64 1 ; 5 uses
  %i.ba = getelementptr i8, ptr %i.at, i64 -24
  %i.bb = getelementptr i8, ptr %i.au, i64 24
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !17, !alias.scope !65
  %i.bd = load double, ptr %i.bb, align 8, !tbaa !17, !alias.scope !65
  %i.be = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1 ; 2 uses
  %i.bg = mul nuw i64 %index, 24
  %i.bh = mul i64 %index, 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bg ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = getelementptr i8, ptr %i.p, i64 %i.bh   ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  %i.bm = load double, ptr %i.bj, align 8, !tbaa !17, !alias.scope !65
  %i.bn = load double, ptr %i.bl, align 8, !tbaa !17, !alias.scope !65
  %i.bo = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bn, i64 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aq
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = getelementptr [8 x i8], ptr %i.p, i64 %i.as
  %i.bt = getelementptr i8, ptr %i.bs, i64 56
  %i.bu = load double, ptr %i.br, align 8, !tbaa !17, !alias.scope !65
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !17, !alias.scope !65
  %i.bw = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bv, i64 1 ; 2 uses
  %i.by = getelementptr i8, ptr %i.at, i64 -16
  %i.bz = getelementptr i8, ptr %i.au, i64 32
  %i.ca = load double, ptr %i.by, align 8, !tbaa !17, !alias.scope !65
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !17, !alias.scope !65
  %i.cc = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.cb, i64 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.cf = getelementptr i8, ptr %i.bk, i64 80
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !17, !alias.scope !65
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !17, !alias.scope !65
  %i.ci = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.ch, i64 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aq
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = getelementptr [8 x i8], ptr %i.p, i64 %i.as
  %i.cn = getelementptr i8, ptr %i.cm, i64 64
  %i.co = load double, ptr %i.cl, align 8, !tbaa !17, !alias.scope !65
  %i.cp = load double, ptr %i.cn, align 8, !tbaa !17, !alias.scope !65
  %i.cq = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cp, i64 1 ; 5 uses
  %i.cs = getelementptr i8, ptr %i.at, i64 -8
  %i.ct = getelementptr i8, ptr %i.au, i64 40
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !17, !alias.scope !65
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !17, !alias.scope !65
  %i.cw = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.cv, i64 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
end_hunk_0
