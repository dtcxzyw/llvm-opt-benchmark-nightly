Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_heat1D?download=true
inline.NumInlined: 29
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a

bb.u:                                             ; preds = %bb.t, %bb.u
  %.2195 = phi i64 [ 0, %bb.t ], [ %i.db, %bb.u ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.2195
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !17
  %i.da = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.20, double noundef %i.cz) #9 ; 0 uses
  %i.db = add nuw nsw i64 %.2195, 1               ; 2 uses
  %exitcond200.not = icmp eq i64 %i.db, 201
  br i1 %exitcond200.not, label %bb.v, label %bb.u

bb.v:                                             ; preds = %bb.u
  %i.dc = fadd double %.074196, 1.000000e-01      ; 2 uses
  %i.dd = fcmp ogt double %i.dc, 1.000000e+00
  %i.de = select i1 %i.dd, double 1.000000e+00, double %i.dc
  %fputc92 = call i32 @fputc(i32 10, ptr %i.cf)   ; 0 uses
  %i.df = add nuw nsw i32 %.0197, 1               ; 2 uses
  %exitcond201.not = icmp eq i32 %i.df, 10
  br i1 %exitcond201.not, label %.loopexit, label %bb.s

.loopexit:                                        ; preds = %bb.v, %check_flag.exit120
  %puts93 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.dg = call i32 @fclose(ptr noundef %i.cf)     ; 0 uses
  %i.dh = call i32 @ARKodeGetNumSteps(ptr noundef nonnull %i.af, ptr noundef nonnull %i.c) #9 ; 2 uses
  %i.di = icmp slt i32 %i.dh, 0
  br i1 %i.di, label %bb.w, label %check_flag.exit122

bb.w:                                             ; preds = %.loopexit
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.27, i32 noundef %i.dh) #10 ; 0 uses
  br label %check_flag.exit122

check_flag.exit122:                               ; preds = %.loopexit, %bb.w
  %i.dl = call i32 @ARKodeGetNumStepAttempts(ptr noundef nonnull %i.af, ptr noundef nonnull %i.d) #9 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.x, label %check_flag.exit124

bb.x:                                             ; preds = %check_flag.exit122
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.do = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dn, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.28, i32 noundef %i.dl) #10 ; 0 uses
  br label %check_flag.exit124

check_flag.exit124:                               ; preds = %check_flag.exit122, %bb.x
  %i.dp = call i32 @ARKodeGetNumRhsEvals(ptr noundef nonnull %i.af, i32 noundef 0, ptr noundef nonnull %i.e) #9 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.y, label %check_flag.exit126

bb.y:                                             ; preds = %check_flag.exit124
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.29, i32 noundef %i.dp) #10 ; 0 uses
  br label %check_flag.exit126

check_flag.exit126:                               ; preds = %check_flag.exit124, %bb.y
  %i.dt = call i32 @ARKodeGetNumRhsEvals(ptr noundef nonnull %i.af, i32 noundef 1, ptr noundef nonnull %i.f) #9 ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %bb.z, label %check_flag.exit128

bb.z:                                             ; preds = %check_flag.exit126
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.29, i32 noundef %i.dt) #10 ; 0 uses
  br label %check_flag.exit128

check_flag.exit128:                               ; preds = %check_flag.exit126, %bb.z
  %i.dx = call i32 @ARKodeGetNumLinSolvSetups(ptr noundef nonnull %i.af, ptr noundef nonnull %i.g) #9 ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.aa, label %check_flag.exit130

bb.aa:                                            ; preds = %check_flag.exit128
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.30, i32 noundef %i.dx) #10 ; 0 uses
  br label %check_flag.exit130

check_flag.exit130:                               ; preds = %check_flag.exit128, %bb.aa
  %i.eb = call i32 @ARKodeGetNumErrTestFails(ptr noundef nonnull %i.af, ptr noundef nonnull %i.m) #9 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %bb.ab, label %check_flag.exit132

bb.ab:                                            ; preds = %check_flag.exit130
  %i.ed = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ee = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ed, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.31, i32 noundef %i.eb) #10 ; 0 uses
  br label %check_flag.exit132

check_flag.exit132:                               ; preds = %check_flag.exit130, %bb.ab
  %i.ef = call i32 @ARKodeGetNumNonlinSolvIters(ptr noundef nonnull %i.af, ptr noundef nonnull %i.k) #9 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %bb.ac, label %check_flag.exit134

bb.ac:                                            ; preds = %check_flag.exit132
  %i.eh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ei = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eh, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.32, i32 noundef %i.ef) #10 ; 0 uses
  br label %check_flag.exit134

check_flag.exit134:                               ; preds = %check_flag.exit132, %bb.ac
  %i.ej = call i32 @ARKodeGetNumNonlinSolvConvFails(ptr noundef nonnull %i.af, ptr noundef nonnull %i.l) #9 ; 2 uses
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %bb.ad, label %check_flag.exit136

bb.ad:                                            ; preds = %check_flag.exit134
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.em = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.el, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.33, i32 noundef %i.ej) #10 ; 0 uses
  br label %check_flag.exit136

check_flag.exit136:                               ; preds = %check_flag.exit134, %bb.ad
  %i.en = call i32 @ARKodeGetNumLinIters(ptr noundef nonnull %i.af, ptr noundef nonnull %i.h) #9 ; 2 uses
  %i.eo = icmp slt i32 %i.en, 0
  br i1 %i.eo, label %bb.ae, label %check_flag.exit138

bb.ae:                                            ; preds = %check_flag.exit136
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ep, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.34, i32 noundef %i.en) #10 ; 0 uses
  br label %check_flag.exit138

check_flag.exit138:                               ; preds = %check_flag.exit136, %bb.ae
  %i.er = call i32 @ARKodeGetNumJtimesEvals(ptr noundef nonnull %i.af, ptr noundef nonnull %i.i) #9 ; 2 uses
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %bb.af, label %check_flag.exit140

bb.af:                                            ; preds = %check_flag.exit138
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.35, i32 noundef %i.er) #10 ; 0 uses
  br label %check_flag.exit140

check_flag.exit140:                               ; preds = %check_flag.exit138, %bb.af
  %i.ev = call i32 @ARKodeGetNumLinConvFails(ptr noundef nonnull %i.af, ptr noundef nonnull %i.j) #9 ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %bb.ag, label %check_flag.exit142

bb.ag:                                            ; preds = %check_flag.exit140
  %i.ex = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ey = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ex, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.36, i32 noundef %i.ev) #10 ; 0 uses
  br label %check_flag.exit142

check_flag.exit142:                               ; preds = %check_flag.exit140, %bb.ag
  %puts94 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.ez = load i64, ptr %i.c, align 8, !tbaa !22
  %i.fa = load i64, ptr %i.d, align 8, !tbaa !22
  %i.fb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %i.ez, i64 noundef %i.fa) ; 0 uses
  %i.fc = load i64, ptr %i.e, align 8, !tbaa !22
  %i.fd = load i64, ptr %i.f, align 8, !tbaa !22
  %i.fe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i64 noundef %i.fc, i64 noundef %i.fd) ; 0 uses
  %i.ff = load i64, ptr %i.g, align 8, !tbaa !22
  %i.fg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i64 noundef %i.ff) ; 0 uses
  %i.fh = load i64, ptr %i.h, align 8, !tbaa !22
  %i.fi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i64 noundef %i.fh) ; 0 uses
  %i.fj = load i64, ptr %i.i, align 8, !tbaa !22
  %i.fk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i64 noundef %i.fj) ; 0 uses
  %i.fl = load i64, ptr %i.j, align 8, !tbaa !22
  %i.fm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i64 noundef %i.fl) ; 0 uses
  %i.fn = load i64, ptr %i.k, align 8, !tbaa !22
  %i.fo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %i.fn) ; 0 uses
  %i.fp = load i64, ptr %i.l, align 8, !tbaa !22
  %i.fq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i64 noundef %i.fp) ; 0 uses
  %i.fr = load i64, ptr %i.m, align 8, !tbaa !22
  %i.fs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i64 noundef %i.fr) ; 0 uses
  call void @N_VDestroy(ptr noundef nonnull %i.aa) #9
  call void @free(ptr noundef %i.s) #9
  call void @ARKodeFree(ptr noundef nonnull %i.a) #9
  %i.ft = call i32 @SUNLinSolFree(ptr noundef nonnull %i.ba) #9 ; 0 uses
  %i.fu = call i32 @SUNContext_Free(ptr noundef nonnull %i.n) #9 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %check_flag.exit118, %check_flag.exit116, %check_flag.exit114, %check_flag.exit112, %check_flag.exit110, %check_flag.exit108, %check_flag.exit106, %check_flag.exit104, %check_flag.exit102, %check_flag.exit100, %check_flag.exit98, %check_flag.exit96, %check_flag.exit, %check_flag.exit142
  %.076 = phi i32 [ 0, %check_flag.exit142 ], [ 1, %check_flag.exit ], [ 1, %check_flag.exit96 ], [ 1, %check_flag.exit98 ], [ 1, %check_flag.exit100 ], [ 1, %check_flag.exit102 ], [ 1, %check_flag.exit104 ], [ 1, %check_flag.exit106 ], [ 1, %check_flag.exit108 ], [ 1, %check_flag.exit110 ], [ 1, %check_flag.exit112 ], [ 1, %check_flag.exit114 ], [ 1, %check_flag.exit116 ], [ 1, %check_flag.exit118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.076
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ARKStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @f(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !13     ; 7 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %5 = load double, ptr %4, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = load double, ptr %i.b, align 8, !tbaa !21  ; 4 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %check_flag.exit, label %bb.b

check_flag.exit:                                  ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #10 ; 0 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 10 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %check_flag.exit40, label %bb.c

check_flag.exit40:                                ; preds = %bb.b
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #10 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #9
  %7 = insertelement <2 x double> poison, double %5, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x double> %8, <double 1.000000e+00, double -2.000000e+00>
  %9 = insertelement <2 x double> poison, double %6, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fdiv <2 x double> %i.k, %10               ; 2 uses
  %i.l = extractelement <2 x double> %11, i64 0
  %i.m = fdiv double %i.l, %6                     ; 7 uses
  %i.n = extractelement <2 x double> %11, i64 1
  %i.o = fdiv double %i.n, %6                     ; 4 uses
  %i.p = sdiv i64 %i.a, 2
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !17
  %i.q = add i64 %i.a, -1                         ; 2 uses
  %i.r = icmp sgt i64 %i.a, 2
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = add nsw i64 %i.a, -2                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.s, 4
  br i1 %min.iters.check, label %.lr.ph.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.g, i64 8
  %i.t = shl i64 %i.a, 3                          ; 2 uses
  %i.u = getelementptr i8, ptr %i.g, i64 %i.t
  %scevgep47 = getelementptr i8, ptr %i.u, i64 -8
  %scevgep48 = getelementptr i8, ptr %i.c, i64 %i.t
  %bound0 = icmp ult ptr %scevgep, %scevgep48
  %bound1 = icmp ult ptr %i.c, %scevgep47
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, -4                       ; 3 uses
  %i.v = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.o, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert49 = insertelement <2 x double> poison, double %i.m, i64 0
  %broadcast.splat50 = shufflevector <2 x double> %broadcast.splatinsert49, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = or disjoint i64 %index, 1                ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.c, i64 %i.w ; 4 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %i.z = getelementptr i8, ptr %i.x, i64 8
  %wide.load = load <2 x double>, ptr %i.y, align 8, !tbaa !17, !alias.scope !23
  %wide.load51 = load <2 x double>, ptr %i.z, align 8, !tbaa !17, !alias.scope !23
  %i.aa = getelementptr i8, ptr %i.x, i64 16
  %wide.load52 = load <2 x double>, ptr %i.x, align 8, !tbaa !17, !alias.scope !23
  %wide.load53 = load <2 x double>, ptr %i.aa, align 8, !tbaa !17, !alias.scope !23
  %i.ab = fmul <2 x double> %broadcast.splat, %wide.load52
  %i.ac = fmul <2 x double> %broadcast.splat, %wide.load53
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat50, <2 x double> %wide.load, <2 x double> %i.ab)
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat50, <2 x double> %wide.load51, <2 x double> %i.ac)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %wide.load54 = load <2 x double>, ptr %i.ag, align 8, !tbaa !17, !alias.scope !23
  %wide.load55 = load <2 x double>, ptr %i.ah, align 8, !tbaa !17, !alias.scope !23
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat50, <2 x double> %wide.load54, <2 x double> %i.ad)
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat50, <2 x double> %wide.load55, <2 x double> %i.ae)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.w ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x double> %i.ai, ptr %i.ak, align 8, !tbaa !17, !alias.scope !26, !noalias !23
  store <2 x double> %i.aj, ptr %i.al, align 8, !tbaa !17, !alias.scope !26, !noalias !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader56

.lr.ph.preheader56:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.045.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.v, %middle.block ] ; 5 uses
  %i.an = add nsw i64 %i.a, -2
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader56
  %i.ao = getelementptr [8 x i8], ptr %i.c, i64 %.045.ph ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !17
  %i.ar = load double, ptr %i.ao, align 8, !tbaa !17
  %i.as = fmul double %i.o, %i.ar
  %i.at = tail call double @llvm.fmuladd.f64(double %i.m, double %i.aq, double %i.as)
  %i.au = add nuw nsw i64 %.045.ph, 1             ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !17
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.m, double %i.aw, double %i.at)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.045.ph
  store double %i.ax, ptr %i.ay, align 8, !tbaa !17
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader56
  %.045.unr = phi i64 [ %.045.ph, %.lr.ph.preheader56 ], [ %i.au, %.lr.ph.prol ]
  %i.az = icmp eq i64 %i.an, %.045.ph
  br i1 %i.az, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.045 = phi i64 [ %i.br, %.lr.ph ], [ %.045.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ba = getelementptr [8 x i8], ptr %i.c, i64 %.045 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !17
  %i.bd = load double, ptr %i.ba, align 8, !tbaa !17
  %i.be = fmul double %i.o, %i.bd
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.m, double %i.bc, double %i.be)
  %i.bg = add nuw nsw i64 %.045, 1                ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !17
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.m, double %i.bi, double %i.bf)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.045
  store double %i.bj, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr [8 x i8], ptr %i.c, i64 %i.bg ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !17
  %i.bo = load double, ptr %i.bl, align 8, !tbaa !17
  %i.bp = fmul double %i.o, %i.bo
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.m, double %i.bn, double %i.bp)
  %i.br = add nuw nsw i64 %.045, 2                ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !17
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.m, double %i.bt, double %i.bq)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bg
  store double %i.bu, ptr %i.bv, align 8, !tbaa !17
  %exitcond.not.1 = icmp eq i64 %i.br, %i.q
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.q
  store double 0.000000e+00, ptr %i.bw, align 8, !tbaa !17
  %i.bx = fdiv double 1.000000e-02, %6
  %i.by = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.p ; 2 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !17
  %i.ca = fadd double %i.bx, %i.bz
  store double %i.ca, ptr %i.by, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %check_flag.exit40, %check_flag.exit, %._crit_edge
  %.036 = phi i32 [ 0, %._crit_edge ], [ 1, %check_flag.exit ], [ 1, %check_flag.exit40 ]
  ret i32 %.036
}

declare i32 @ARKodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetMaxNumSteps(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ARKodeSetPredictorMethod(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ARKodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_PCG(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetJacTimes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Jac(ptr noundef %0, ptr noundef %1, double %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  %i.a = load i64, ptr %5, align 8, !tbaa !13     ; 6 uses
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %8 = load double, ptr %7, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %9 = load double, ptr %i.b, align 8, !tbaa !21  ; 3 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #9 ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %check_flag.exit, label %bb.b

check_flag.exit:                                  ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #10 ; 0 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %check_flag.exit36, label %bb.c

check_flag.exit36:                                ; preds = %bb.b
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #10 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %1) #9
  %10 = insertelement <2 x double> poison, double %8, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x double> %11, <double 1.000000e+00, double -2.000000e+00>
  %12 = insertelement <2 x double> poison, double %9, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = fdiv <2 x double> %i.k, %13               ; 2 uses
  %i.l = extractelement <2 x double> %14, i64 0
  %i.m = fdiv double %i.l, %9                     ; 7 uses
  %i.n = extractelement <2 x double> %14, i64 1
  %i.o = fdiv double %i.n, %9                     ; 4 uses
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !17
  %i.p = add i64 %i.a, -1                         ; 2 uses
  %i.q = icmp sgt i64 %i.a, 2
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.r = add nsw i64 %i.a, -2                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph.preheader52, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.g, i64 8
  %i.s = shl i64 %i.a, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.g, i64 %i.s
  %scevgep43 = getelementptr i8, ptr %i.t, i64 -8
  %scevgep44 = getelementptr i8, ptr %i.c, i64 %i.s
  %bound0 = icmp ult ptr %scevgep, %scevgep44
  %bound1 = icmp ult ptr %i.c, %scevgep43
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader52, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, -4                       ; 3 uses
  %i.u = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.o, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <2 x double> poison, double %i.m, i64 0
  %broadcast.splat46 = shufflevector <2 x double> %broadcast.splatinsert45, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = or disjoint i64 %index, 1                ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.c, i64 %i.v ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = getelementptr i8, ptr %i.w, i64 8
  %wide.load = load <2 x double>, ptr %i.x, align 8, !tbaa !17, !alias.scope !32
  %wide.load47 = load <2 x double>, ptr %i.y, align 8, !tbaa !17, !alias.scope !32
  %i.z = getelementptr i8, ptr %i.w, i64 16
  %wide.load48 = load <2 x double>, ptr %i.w, align 8, !tbaa !17, !alias.scope !32
  %wide.load49 = load <2 x double>, ptr %i.z, align 8, !tbaa !17, !alias.scope !32
  %i.aa = fmul <2 x double> %broadcast.splat, %wide.load48
  %i.ab = fmul <2 x double> %broadcast.splat, %wide.load49
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat46, <2 x double> %wide.load, <2 x double> %i.aa)
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat46, <2 x double> %wide.load47, <2 x double> %i.ab)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %wide.load50 = load <2 x double>, ptr %i.af, align 8, !tbaa !17, !alias.scope !32
  %wide.load51 = load <2 x double>, ptr %i.ag, align 8, !tbaa !17, !alias.scope !32
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat46, <2 x double> %wide.load50, <2 x double> %i.ac)
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat46, <2 x double> %wide.load51, <2 x double> %i.ad)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.v ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x double> %i.ah, ptr %i.aj, align 8, !tbaa !17, !alias.scope !35, !noalias !32
  store <2 x double> %i.ai, ptr %i.ak, align 8, !tbaa !17, !alias.scope !35, !noalias !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader52

.lr.ph.preheader52:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.041.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.u, %middle.block ] ; 5 uses
  %i.am = add nsw i64 %i.a, -2
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader52
  %i.an = getelementptr [8 x i8], ptr %i.c, i64 %.041.ph ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !17
  %i.aq = load double, ptr %i.an, align 8, !tbaa !17
  %i.ar = fmul double %i.o, %i.aq
  %i.as = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ap, double %i.ar)
  %i.at = add nuw nsw i64 %.041.ph, 1             ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !17
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.m, double %i.av, double %i.as)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.041.ph
  store double %i.aw, ptr %i.ax, align 8, !tbaa !17
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader52
  %.041.unr = phi i64 [ %.041.ph, %.lr.ph.preheader52 ], [ %i.at, %.lr.ph.prol ]
  %i.ay = icmp eq i64 %i.am, %.041.ph
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.041 = phi i64 [ %i.bq, %.lr.ph ], [ %.041.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.az = getelementptr [8 x i8], ptr %i.c, i64 %.041 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !17
  %i.bc = load double, ptr %i.az, align 8, !tbaa !17
  %i.bd = fmul double %i.o, %i.bc
  %i.be = tail call double @llvm.fmuladd.f64(double %i.m, double %i.bb, double %i.bd)
  %i.bf = add nuw nsw i64 %.041, 1                ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !17
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.m, double %i.bh, double %i.be)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.041
  store double %i.bi, ptr %i.bj, align 8, !tbaa !17
  %i.bk = getelementptr [8 x i8], ptr %i.c, i64 %i.bf ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !17
  %i.bn = load double, ptr %i.bk, align 8, !tbaa !17
  %i.bo = fmul double %i.o, %i.bn
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.m, double %i.bm, double %i.bo)
  %i.bq = add nuw nsw i64 %.041, 2                ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !17
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.m, double %i.bs, double %i.bp)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bf
  store double %i.bt, ptr %i.bu, align 8, !tbaa !17
  %exitcond.not.1 = icmp eq i64 %i.bq, %i.p
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.p
  store double 0.000000e+00, ptr %i.bv, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %check_flag.exit36, %check_flag.exit, %._crit_edge
  %.032 = phi i32 [ 0, %._crit_edge ], [ 1, %check_flag.exit ], [ 1, %check_flag.exit36 ]
  ret i32 %.032
}

declare i32 @ARKodeSetLinear(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ARKodeSetOptions(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolSetOptions(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

declare double @N_VDotProd(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeEvolve(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumStepAttempts(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumRhsEvals(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumLinSolvSetups(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumErrTestFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumNonlinSolvIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumNonlinSolvConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumLinIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumJtimesEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumLinConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare void @ARKodeFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

end_hunk_0
