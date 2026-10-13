Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_brusselator?download=true
inline.NumInlined: 24
inline.NumDeleted: 1
begin_hunk_0_@main:bb.a
  %i.df = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !19 ; 3 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !11
  %i.dn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bx, ptr noundef nonnull @.str.19, double noundef %i.de, double noundef %i.di, double noundef %i.dk, double noundef %i.dm) #7 ; 0 uses
  %i.do = fadd double %.069186, 1.000000e+00      ; 2 uses
  %i.dp = fcmp ogt double %i.do, 1.000000e+01
  %i.dq = select i1 %i.dp, double 1.000000e+01, double %i.do
  %i.dr = add nuw nsw i32 %.0187, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.dr, 10
  br i1 %exitcond.not, label %.loopexit, label %bb.n

.loopexit:                                        ; preds = %bb.o, %check_flag.exit117
  %puts92 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.ds = call i32 @fclose(ptr noundef %i.bx)     ; 0 uses
  %i.dt = call i32 @ARKodeGetNumSteps(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.d) #7 ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %bb.p, label %check_flag.exit119

bb.p:                                             ; preds = %.loopexit
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.dw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.25, i32 noundef %i.dt) #8 ; 0 uses
  br label %check_flag.exit119

check_flag.exit119:                               ; preds = %.loopexit, %bb.p
  %i.dx = call i32 @ARKodeGetNumStepAttempts(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.e) #7 ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.q, label %check_flag.exit121

bb.q:                                             ; preds = %check_flag.exit119
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.26, i32 noundef %i.dx) #8 ; 0 uses
  br label %check_flag.exit121

check_flag.exit121:                               ; preds = %check_flag.exit119, %bb.q
  %i.eb = call i32 @ARKodeGetNumRhsEvals(ptr noundef nonnull %i.ah, i32 noundef 0, ptr noundef nonnull %i.f) #7 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %bb.r, label %check_flag.exit123

bb.r:                                             ; preds = %check_flag.exit121
  %i.ed = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ee = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ed, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.27, i32 noundef %i.eb) #8 ; 0 uses
  br label %check_flag.exit123

check_flag.exit123:                               ; preds = %check_flag.exit121, %bb.r
  %i.ef = call i32 @ARKodeGetNumRhsEvals(ptr noundef nonnull %i.ah, i32 noundef 1, ptr noundef nonnull %i.g) #7 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %bb.s, label %check_flag.exit125

bb.s:                                             ; preds = %check_flag.exit123
  %i.eh = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ei = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eh, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.27, i32 noundef %i.ef) #8 ; 0 uses
  br label %check_flag.exit125

check_flag.exit125:                               ; preds = %check_flag.exit123, %bb.s
  %i.ej = call i32 @ARKodeGetNumLinSolvSetups(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.h) #7 ; 2 uses
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %bb.t, label %check_flag.exit127

bb.t:                                             ; preds = %check_flag.exit125
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.em = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.el, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.28, i32 noundef %i.ej) #8 ; 0 uses
  br label %check_flag.exit127

check_flag.exit127:                               ; preds = %check_flag.exit125, %bb.t
  %i.en = call i32 @ARKodeGetNumErrTestFails(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.n) #7 ; 2 uses
  %i.eo = icmp slt i32 %i.en, 0
  br i1 %i.eo, label %bb.u, label %check_flag.exit129

bb.u:                                             ; preds = %check_flag.exit127
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.eq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ep, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.29, i32 noundef %i.en) #8 ; 0 uses
  br label %check_flag.exit129

check_flag.exit129:                               ; preds = %check_flag.exit127, %bb.u
  %i.er = call i32 @ARKodeGetNumStepSolveFails(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.m) #7 ; 2 uses
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %bb.v, label %check_flag.exit131

bb.v:                                             ; preds = %check_flag.exit129
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.eu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.30, i32 noundef %i.er) #8 ; 0 uses
  br label %check_flag.exit131

check_flag.exit131:                               ; preds = %check_flag.exit129, %bb.v
  %i.ev = call i32 @ARKodeGetNumNonlinSolvIters(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.k) #7 ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %bb.w, label %check_flag.exit133

bb.w:                                             ; preds = %check_flag.exit131
  %i.ex = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ey = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ex, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.31, i32 noundef %i.ev) #8 ; 0 uses
  br label %check_flag.exit133

check_flag.exit133:                               ; preds = %check_flag.exit131, %bb.w
  %i.ez = call i32 @ARKodeGetNumNonlinSolvConvFails(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.l) #7 ; 2 uses
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %bb.x, label %check_flag.exit135

bb.x:                                             ; preds = %check_flag.exit133
  %i.fb = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.fc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fb, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.32, i32 noundef %i.ez) #8 ; 0 uses
  br label %check_flag.exit135

check_flag.exit135:                               ; preds = %check_flag.exit133, %bb.x
  %i.fd = call i32 @ARKodeGetNumJacEvals(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.i) #7 ; 2 uses
  %i.fe = icmp slt i32 %i.fd, 0
  br i1 %i.fe, label %bb.y, label %check_flag.exit137

bb.y:                                             ; preds = %check_flag.exit135
  %i.ff = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.fg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ff, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.33, i32 noundef %i.fd) #8 ; 0 uses
  br label %check_flag.exit137

check_flag.exit137:                               ; preds = %check_flag.exit135, %bb.y
  %i.fh = call i32 @ARKodeGetNumLinRhsEvals(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.j) #7 ; 2 uses
  %i.fi = icmp slt i32 %i.fh, 0
  br i1 %i.fi, label %bb.z, label %check_flag.exit139

bb.z:                                             ; preds = %check_flag.exit137
  %i.fj = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.fk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fj, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.34, i32 noundef %i.fh) #8 ; 0 uses
  br label %check_flag.exit139

check_flag.exit139:                               ; preds = %check_flag.exit137, %bb.z
  %puts93 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.fl = load i64, ptr %i.d, align 8, !tbaa !24
  %i.fm = load i64, ptr %i.e, align 8, !tbaa !24
  %i.fn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i64 noundef %i.fl, i64 noundef %i.fm) ; 0 uses
  %i.fo = load i64, ptr %i.f, align 8, !tbaa !24
  %i.fp = load i64, ptr %i.g, align 8, !tbaa !24
  %i.fq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i64 noundef %i.fo, i64 noundef %i.fp) ; 0 uses
  %i.fr = load i64, ptr %i.h, align 8, !tbaa !24
  %i.fs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %i.fr) ; 0 uses
  %i.ft = load i64, ptr %i.j, align 8, !tbaa !24
  %i.fu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i64 noundef %i.ft) ; 0 uses
  %i.fv = load i64, ptr %i.i, align 8, !tbaa !24
  %i.fw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i64 noundef %i.fv) ; 0 uses
  %i.fx = load i64, ptr %i.k, align 8, !tbaa !24
  %i.fy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i64 noundef %i.fx) ; 0 uses
  %i.fz = load i64, ptr %i.l, align 8, !tbaa !24
  %i.ga = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i64 noundef %i.fz) ; 0 uses
  %i.gb = load i64, ptr %i.n, align 8, !tbaa !24
  %i.gc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i64 noundef %i.gb) ; 0 uses
  %i.gd = load i64, ptr %i.m, align 8, !tbaa !24
  %i.ge = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %i.gd) ; 0 uses
  call void @N_VDestroy(ptr noundef nonnull %i.y) #7
  call void @ARKodeFree(ptr noundef nonnull %i.a) #7
  %i.gf = call i32 @SUNLinSolFree(ptr noundef nonnull %i.bh) #7 ; 0 uses
  call void @SUNMatDestroy(ptr noundef nonnull %i.bc) #7
  %i.gg = call i32 @SUNContext_Free(ptr noundef nonnull %i.o) #7 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %check_flag.exit115, %check_flag.exit113, %check_flag.exit111, %check_flag.exit109, %check_flag.exit107, %check_flag.exit105, %check_flag.exit103, %check_flag.exit101, %check_flag.exit99, %check_flag.exit97, %check_flag.exit95, %check_flag.exit, %check_flag.exit139
  %.076 = phi i32 [ 0, %check_flag.exit139 ], [ 1, %check_flag.exit ], [ 1, %check_flag.exit95 ], [ 1, %check_flag.exit97 ], [ 1, %check_flag.exit99 ], [ 1, %check_flag.exit101 ], [ 1, %check_flag.exit103 ], [ 1, %check_flag.exit105 ], [ 1, %check_flag.exit107 ], [ 1, %check_flag.exit109 ], [ 1, %check_flag.exit111 ], [ 1, %check_flag.exit113 ], [ 1, %check_flag.exit115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.076
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ARKStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @f(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #4 {
bb.a:
  %i.a = load double, ptr %3, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !11
  %i.f = load ptr, ptr %1, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %2, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19   ; 2 uses
  %4 = load double, ptr %i.h, align 8, !tbaa !11  ; 3 uses
  %5 = fmul double %4, %i.j                       ; 2 uses
  %i.o = fneg double %4
  %i.p = fmul double %5, %i.o
  %i.q = insertelement <2 x double> poison, double %5, i64 0
  %i.r = insertelement <2 x double> poison, double %4, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.t = load double, ptr %i.k, align 8, !tbaa !11 ; 3 uses
  %i.u = insertelement <2 x double> poison, double %i.t, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fadd <2 x double> %i.v, <double 1.000000e+00, double -0.000000e+00>
  %i.x = insertelement <2 x double> %i.q, double %i.t, i64 1
  %i.y = fsub double %i.c, %i.t
  %i.z = fdiv double %i.y, %i.e
  %i.aa = fneg <2 x double> %i.w
  %i.ab = insertelement <2 x double> poison, double %i.a, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.z, i64 1
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.s, <2 x double> %i.ac) ; 2 uses
  %i.ae = insertelement <2 x double> %i.ad, double %i.p, i64 1
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.s, <2 x double> %i.ae)
  store <2 x double> %i.af, ptr %i.n, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ah = extractelement <2 x double> %i.ad, i64 1
  store double %i.ah, ptr %i.ag, align 8, !tbaa !11
  ret i32 0
}

declare i32 @ARKodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @ARKodeSetInterpolantType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ARKodeSetDeduceImplicitRhs(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SUNDenseMatrix(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_Dense(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetJacFn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @Jac(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !11
  %i.c = load ptr, ptr %1, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !11 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !11 ; 3 uses
  %i.k = fadd double %i.j, 1.000000e+00
  %i.l = fneg double %i.k
  %i.m = fmul double %i.f, 2.000000e+00           ; 2 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.h, double %i.l)
  %i.o = load ptr, ptr %3, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31   ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 3 uses
  store double %i.n, ptr %i.r, align 8, !tbaa !11
  %i.s = fmul double %i.f, %i.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32   ; 3 uses
  store double %i.s, ptr %i.u, align 8, !tbaa !11
  %i.v = fneg double %i.f                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32   ; 3 uses
  store double %i.v, ptr %i.x, align 8, !tbaa !11
  %i.y = fneg double %i.m
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.h, double %i.j)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store double %i.z, ptr %i.aa, align 8, !tbaa !11
  %i.ab = fmul double %i.f, %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %i.ab, ptr %i.ac, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double %i.f, ptr %i.ad, align 8, !tbaa !11
  %i.ae = fneg double %i.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store double %i.ae, ptr %i.af, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !11
  %i.ah = fdiv double -1.000000e+00, %i.b
  %i.ai = fsub double %i.ah, %i.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store double %i.ai, ptr %i.aj, align 8, !tbaa !11
  ret i32 0
}

declare i32 @ARKodeSetAutonomous(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @ARKodeEvolve(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @ARKodeGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumStepAttempts(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumRhsEvals(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumLinSolvSetups(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumErrTestFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumStepSolveFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumNonlinSolvIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumNonlinSolvConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumJacEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumLinRhsEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare void @ARKodeFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2

declare void @SUNMatDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS11SUNContext_", !9, i64 0}
!13 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !9, i64 0}
!14 = !{!"_generic_N_Vector", !9, i64 0, !13, i64 8, !12, i64 16}
!15 = !{!14, !9, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"p1 double", !9, i64 0}
!18 = !{!"_N_VectorContent_Serial", !16, i64 0, !6, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 16}
!20 = !{!9, !9, i64 0}
!21 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!12, !12, i64 0}
!24 = !{!16, !16, i64 0}
!25 = !{!"p1 _ZTS22_generic_SUNMatrix_Ops", !9, i64 0}
!26 = !{!"_generic_SUNMatrix", !9, i64 0, !25, i64 8, !12, i64 16}
!27 = !{!26, !9, i64 0}
!28 = !{!"any p2 pointer", !9, i64 0}
!29 = !{!"p2 double", !28, i64 0}
!30 = !{!"_SUNMatrixContent_Dense", !16, i64 0, !16, i64 8, !17, i64 16, !16, i64 24, !29, i64 32}
!31 = !{!30, !29, i64 32}
!32 = !{!17, !17, i64 0}
end_hunk_0
