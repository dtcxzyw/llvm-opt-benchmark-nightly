Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_heat1D?download=true
inline.NumInlined: 29
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  br i1 %i.di, label %bb.w, label %check_flag.exit123

bb.w:                                             ; preds = %.loopexit
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.27, i32 noundef %i.dh) #10 ; 0 uses
  br label %check_flag.exit123

check_flag.exit123:                               ; preds = %.loopexit, %bb.w
  %i.dl = call i32 @ARKodeGetNumStepAttempts(ptr noundef nonnull %i.af, ptr noundef nonnull %i.d) #9 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.x, label %check_flag.exit125

bb.x:                                             ; preds = %check_flag.exit123
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.do = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dn, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.28, i32 noundef %i.dl) #10 ; 0 uses
  br label %check_flag.exit125

check_flag.exit125:                               ; preds = %check_flag.exit123, %bb.x
  %i.dp = call i32 @ARKodeGetNumRhsEvals(ptr noundef nonnull %i.af, i32 noundef 0, ptr noundef nonnull %i.e) #9 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.y, label %check_flag.exit127

bb.y:                                             ; preds = %check_flag.exit125
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.29, i32 noundef %i.dp) #10 ; 0 uses
  br label %check_flag.exit127

check_flag.exit127:                               ; preds = %check_flag.exit125, %bb.y
  %i.dt = call i32 @ARKodeGetNumRhsEvals(ptr noundef nonnull %i.af, i32 noundef 1, ptr noundef nonnull %i.f) #9 ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %bb.z, label %check_flag.exit129

bb.z:                                             ; preds = %check_flag.exit127
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.29, i32 noundef %i.dt) #10 ; 0 uses
  br label %check_flag.exit129

check_flag.exit129:                               ; preds = %check_flag.exit127, %bb.z
  %i.dx = call i32 @ARKodeGetNumLinSolvSetups(ptr noundef nonnull %i.af, ptr noundef nonnull %i.g) #9 ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.aa, label %check_flag.exit131

bb.aa:                                            ; preds = %check_flag.exit129
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.30, i32 noundef %i.dx) #10 ; 0 uses
  br label %check_flag.exit131

check_flag.exit131:                               ; preds = %check_flag.exit129, %bb.aa
  %i.eb = call i32 @ARKodeGetNumErrTestFails(ptr noundef nonnull %i.af, ptr noundef nonnull %i.m) #9 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %bb.ab, label %check_flag.exit133

bb.ab:                                            ; preds = %check_flag.exit131
  %i.ed = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ee = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ed, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.31, i32 noundef %i.eb) #10 ; 0 uses
  br label %check_flag.exit133

check_flag.exit133:                               ; preds = %check_flag.exit131, %bb.ab
  %i.ef = call i32 @ARKodeGetNumNonlinSolvIters(ptr noundef nonnull %i.af, ptr noundef nonnull %i.k) #9 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %bb.ac, label %check_flag.exit135

bb.ac:                                            ; preds = %check_flag.exit133
  %i.eh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ei = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eh, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.32, i32 noundef %i.ef) #10 ; 0 uses
  br label %check_flag.exit135

check_flag.exit135:                               ; preds = %check_flag.exit133, %bb.ac
  %i.ej = call i32 @ARKodeGetNumNonlinSolvConvFails(ptr noundef nonnull %i.af, ptr noundef nonnull %i.l) #9 ; 2 uses
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %bb.ad, label %check_flag.exit137

bb.ad:                                            ; preds = %check_flag.exit135
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.em = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.el, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.33, i32 noundef %i.ej) #10 ; 0 uses
  br label %check_flag.exit137

check_flag.exit137:                               ; preds = %check_flag.exit135, %bb.ad
  %i.en = call i32 @ARKodeGetNumLinIters(ptr noundef nonnull %i.af, ptr noundef nonnull %i.h) #9 ; 2 uses
  %i.eo = icmp slt i32 %i.en, 0
  br i1 %i.eo, label %bb.ae, label %check_flag.exit139

bb.ae:                                            ; preds = %check_flag.exit137
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ep, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.34, i32 noundef %i.en) #10 ; 0 uses
  br label %check_flag.exit139

check_flag.exit139:                               ; preds = %check_flag.exit137, %bb.ae
  %i.er = call i32 @ARKodeGetNumJtimesEvals(ptr noundef nonnull %i.af, ptr noundef nonnull %i.i) #9 ; 2 uses
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %bb.af, label %check_flag.exit141

bb.af:                                            ; preds = %check_flag.exit139
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.35, i32 noundef %i.er) #10 ; 0 uses
  br label %check_flag.exit141

check_flag.exit141:                               ; preds = %check_flag.exit139, %bb.af
  %i.ev = call i32 @ARKodeGetNumLinConvFails(ptr noundef nonnull %i.af, ptr noundef nonnull %i.j) #9 ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %bb.ag, label %check_flag.exit143

bb.ag:                                            ; preds = %check_flag.exit141
  %i.ex = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ey = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ex, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.36, i32 noundef %i.ev) #10 ; 0 uses
  br label %check_flag.exit143

check_flag.exit143:                               ; preds = %check_flag.exit141, %bb.ag
  %puts95 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.ez = load i64, ptr %i.c, align 8, !tbaa !24
  %i.fa = load i64, ptr %i.d, align 8, !tbaa !24
  %i.fb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %i.ez, i64 noundef %i.fa) ; 0 uses
  %i.fc = load i64, ptr %i.e, align 8, !tbaa !24
  %i.fd = load i64, ptr %i.f, align 8, !tbaa !24
  %i.fe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i64 noundef %i.fc, i64 noundef %i.fd) ; 0 uses
  %i.ff = load i64, ptr %i.g, align 8, !tbaa !24
  %i.fg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i64 noundef %i.ff) ; 0 uses
  %i.fh = load i64, ptr %i.h, align 8, !tbaa !24
  %i.fi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i64 noundef %i.fh) ; 0 uses
  %i.fj = load i64, ptr %i.i, align 8, !tbaa !24
  %i.fk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i64 noundef %i.fj) ; 0 uses
  %i.fl = load i64, ptr %i.j, align 8, !tbaa !24
  %i.fm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i64 noundef %i.fl) ; 0 uses
  %i.fn = load i64, ptr %i.k, align 8, !tbaa !24
  %i.fo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %i.fn) ; 0 uses
  %i.fp = load i64, ptr %i.l, align 8, !tbaa !24
  %i.fq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i64 noundef %i.fp) ; 0 uses
  %i.fr = load i64, ptr %i.m, align 8, !tbaa !24
  %i.fs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i64 noundef %i.fr) ; 0 uses
  call void @N_VDestroy(ptr noundef nonnull %i.aa) #9
  call void @free(ptr noundef %i.s) #9
  call void @ARKodeFree(ptr noundef nonnull %i.a) #9
  %i.ft = call i32 @SUNLinSolFree(ptr noundef nonnull %i.ba) #9 ; 0 uses
  %i.fu = call i32 @SUNContext_Free(ptr noundef nonnull %i.n) #9 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %check_flag.exit119, %check_flag.exit117, %check_flag.exit115, %check_flag.exit113, %check_flag.exit111, %check_flag.exit109, %check_flag.exit107, %check_flag.exit105, %check_flag.exit103, %check_flag.exit101, %check_flag.exit99, %check_flag.exit97, %check_flag.exit, %check_flag.exit143
  %.076 = phi i32 [ 0, %check_flag.exit143 ], [ 1, %check_flag.exit ], [ 1, %check_flag.exit97 ], [ 1, %check_flag.exit99 ], [ 1, %check_flag.exit101 ], [ 1, %check_flag.exit103 ], [ 1, %check_flag.exit105 ], [ 1, %check_flag.exit107 ], [ 1, %check_flag.exit109 ], [ 1, %check_flag.exit111 ], [ 1, %check_flag.exit113 ], [ 1, %check_flag.exit115 ], [ 1, %check_flag.exit117 ], [ 1, %check_flag.exit119 ]
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
  %i.a = load i64, ptr %3, align 8, !tbaa !15     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !16 ; 3 uses
  %i.d = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 11 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %check_flag.exit, label %bb.b

check_flag.exit:                                  ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #10 ; 0 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 10 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %check_flag.exit40, label %bb.c

check_flag.exit40:                                ; preds = %bb.b
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #10 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #9
  %i.l = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.m = fmul <2 x double> %i.l, <double 1.000000e+00, double -2.000000e+00>
  %i.n = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x double> %i.m, %i.n             ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = extractelement <2 x double> %i.c, i64 0  ; 3 uses
  %i.r = fdiv double %i.p, %i.q                   ; 7 uses
  %i.s = extractelement <2 x double> %i.o, i64 1
  %i.t = fdiv double %i.s, %i.q                   ; 4 uses
  %i.u = sdiv i64 %i.a, 2
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !16
  %i.v = add i64 %i.a, -1                         ; 2 uses
  %i.w = icmp sgt i64 %i.a, 2
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.x = add nsw i64 %i.a, -2                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 4
  br i1 %min.iters.check, label %.lr.ph.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.h, i64 8
  %i.y = shl i64 %i.a, 3                          ; 2 uses
  %i.z = getelementptr i8, ptr %i.h, i64 %i.y
  %scevgep47 = getelementptr i8, ptr %i.z, i64 -8
  %scevgep48 = getelementptr i8, ptr %i.d, i64 %i.y
  %bound0 = icmp ult ptr %scevgep, %scevgep48
  %bound1 = icmp ult ptr %i.d, %scevgep47
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, -4                       ; 3 uses
  %i.aa = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert49 = insertelement <2 x double> poison, double %i.r, i64 0
  %broadcast.splat50 = shufflevector <2 x double> %broadcast.splatinsert49, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = or disjoint i64 %index, 1               ; 2 uses
  %i.ac = getelementptr [8 x i8], ptr %i.d, i64 %i.ab ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8
  %i.ae = getelementptr i8, ptr %i.ac, i64 8
  %wide.load = load <2 x double>, ptr %i.ad, align 8, !tbaa !16, !alias.scope !30
  %wide.load51 = load <2 x double>, ptr %i.ae, align 8, !tbaa !16, !alias.scope !30
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  %wide.load52 = load <2 x double>, ptr %i.ac, align 8, !tbaa !16, !alias.scope !30
  %wide.load53 = load <2 x double>, ptr %i.af, align 8, !tbaa !16, !alias.scope !30
  %i.ag = fmul <2 x double> %broadcast.splat, %wide.load52
  %i.ah = fmul <2 x double> %broadcast.splat, %wide.load53
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat50, <2 x double> %wide.load, <2 x double> %i.ag)
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat50, <2 x double> %wide.load51, <2 x double> %i.ah)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %wide.load54 = load <2 x double>, ptr %i.al, align 8, !tbaa !16, !alias.scope !30
  %wide.load55 = load <2 x double>, ptr %i.am, align 8, !tbaa !16, !alias.scope !30
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat50, <2 x double> %wide.load54, <2 x double> %i.ai)
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat50, <2 x double> %wide.load55, <2 x double> %i.aj)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x double> %i.an, ptr %i.ap, align 8, !tbaa !16, !alias.scope !31, !noalias !30
  store <2 x double> %i.ao, ptr %i.aq, align 8, !tbaa !16, !alias.scope !31, !noalias !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader56

.lr.ph.preheader56:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.045.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.aa, %middle.block ] ; 5 uses
  %i.as = add nsw i64 %i.a, -2
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader56
  %i.at = getelementptr [8 x i8], ptr %i.d, i64 %.045.ph ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %i.av = load double, ptr %i.au, align 8, !tbaa !16
  %i.aw = load double, ptr %i.at, align 8, !tbaa !16
  %i.ax = fmul double %i.t, %i.aw
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.r, double %i.av, double %i.ax)
  %i.az = add nuw nsw i64 %.045.ph, 1             ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !16
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.r, double %i.bb, double %i.ay)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.045.ph
  store double %i.bc, ptr %i.bd, align 8, !tbaa !16
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader56
  %.045.unr = phi i64 [ %.045.ph, %.lr.ph.preheader56 ], [ %i.az, %.lr.ph.prol ]
  %i.be = icmp eq i64 %i.as, %.045.ph
  br i1 %i.be, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.045 = phi i64 [ %i.bw, %.lr.ph ], [ %.045.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bf = getelementptr [8 x i8], ptr %i.d, i64 %.045 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !16
  %i.bi = load double, ptr %i.bf, align 8, !tbaa !16
  %i.bj = fmul double %i.t, %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.r, double %i.bh, double %i.bj)
  %i.bl = add nuw nsw i64 %.045, 1                ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !16
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.r, double %i.bn, double %i.bk)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.045
  store double %i.bo, ptr %i.bp, align 8, !tbaa !16
  %i.bq = getelementptr [8 x i8], ptr %i.d, i64 %i.bl ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !16
  %i.bt = load double, ptr %i.bq, align 8, !tbaa !16
  %i.bu = fmul double %i.t, %i.bt
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.r, double %i.bs, double %i.bu)
  %i.bw = add nuw nsw i64 %.045, 2                ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !16
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.r, double %i.by, double %i.bv)
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bl
  store double %i.bz, ptr %i.ca, align 8, !tbaa !16
  %exitcond.not.1 = icmp eq i64 %i.bw, %i.v
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.v
  store double 0.000000e+00, ptr %i.cb, align 8, !tbaa !16
  %i.cc = fdiv double 1.000000e-02, %i.q
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.u ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !16
  %i.cf = fadd double %i.cc, %i.ce
  store double %i.cf, ptr %i.cd, align 8, !tbaa !16
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
  %i.a = load i64, ptr %5, align 8, !tbaa !15     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !16 ; 3 uses
  %i.d = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #9 ; 11 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %check_flag.exit, label %bb.b

check_flag.exit:                                  ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #10 ; 0 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 9 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %check_flag.exit36, label %bb.c

check_flag.exit36:                                ; preds = %bb.b
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #10 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %1) #9
  %i.l = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.m = fmul <2 x double> %i.l, <double 1.000000e+00, double -2.000000e+00>
  %i.n = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x double> %i.m, %i.n             ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = extractelement <2 x double> %i.c, i64 0  ; 2 uses
  %i.r = fdiv double %i.p, %i.q                   ; 7 uses
  %i.s = extractelement <2 x double> %i.o, i64 1
  %i.t = fdiv double %i.s, %i.q                   ; 4 uses
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !16
  %i.u = add i64 %i.a, -1                         ; 2 uses
  %i.v = icmp sgt i64 %i.a, 2
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.w = add nsw i64 %i.a, -2                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.w, 4
  br i1 %min.iters.check, label %.lr.ph.preheader52, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.h, i64 8
  %i.x = shl i64 %i.a, 3                          ; 2 uses
  %i.y = getelementptr i8, ptr %i.h, i64 %i.x
  %scevgep43 = getelementptr i8, ptr %i.y, i64 -8
  %scevgep44 = getelementptr i8, ptr %i.d, i64 %i.x
  %bound0 = icmp ult ptr %scevgep, %scevgep44
  %bound1 = icmp ult ptr %i.d, %scevgep43
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader52, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, -4                       ; 3 uses
  %i.z = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <2 x double> poison, double %i.r, i64 0
  %broadcast.splat46 = shufflevector <2 x double> %broadcast.splatinsert45, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aa = or disjoint i64 %index, 1               ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.d, i64 %i.aa ; 4 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %wide.load = load <2 x double>, ptr %i.ac, align 8, !tbaa !16, !alias.scope !37
  %wide.load47 = load <2 x double>, ptr %i.ad, align 8, !tbaa !16, !alias.scope !37
  %i.ae = getelementptr i8, ptr %i.ab, i64 16
  %wide.load48 = load <2 x double>, ptr %i.ab, align 8, !tbaa !16, !alias.scope !37
  %wide.load49 = load <2 x double>, ptr %i.ae, align 8, !tbaa !16, !alias.scope !37
  %i.af = fmul <2 x double> %broadcast.splat, %wide.load48
  %i.ag = fmul <2 x double> %broadcast.splat, %wide.load49
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat46, <2 x double> %wide.load, <2 x double> %i.af)
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat46, <2 x double> %wide.load47, <2 x double> %i.ag)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %wide.load50 = load <2 x double>, ptr %i.ak, align 8, !tbaa !16, !alias.scope !37
  %wide.load51 = load <2 x double>, ptr %i.al, align 8, !tbaa !16, !alias.scope !37
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat46, <2 x double> %wide.load50, <2 x double> %i.ah)
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat46, <2 x double> %wide.load51, <2 x double> %i.ai)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aa ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x double> %i.am, ptr %i.ao, align 8, !tbaa !16, !alias.scope !38, !noalias !37
  store <2 x double> %i.an, ptr %i.ap, align 8, !tbaa !16, !alias.scope !38, !noalias !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader52

.lr.ph.preheader52:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.041.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.z, %middle.block ] ; 5 uses
  %i.ar = add nsw i64 %i.a, -2
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader52
  %i.as = getelementptr [8 x i8], ptr %i.d, i64 %.041.ph ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = load double, ptr %i.at, align 8, !tbaa !16
  %i.av = load double, ptr %i.as, align 8, !tbaa !16
  %i.aw = fmul double %i.t, %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.r, double %i.au, double %i.aw)
  %i.ay = add nuw nsw i64 %.041.ph, 1             ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !16
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.r, double %i.ba, double %i.ax)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.041.ph
  store double %i.bb, ptr %i.bc, align 8, !tbaa !16
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader52
  %.041.unr = phi i64 [ %.041.ph, %.lr.ph.preheader52 ], [ %i.ay, %.lr.ph.prol ]
  %i.bd = icmp eq i64 %i.ar, %.041.ph
  br i1 %i.bd, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.041 = phi i64 [ %i.bv, %.lr.ph ], [ %.041.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.be = getelementptr [8 x i8], ptr %i.d, i64 %.041 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !16
  %i.bh = load double, ptr %i.be, align 8, !tbaa !16
  %i.bi = fmul double %i.t, %i.bh
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.r, double %i.bg, double %i.bi)
  %i.bk = add nuw nsw i64 %.041, 1                ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !16
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.r, double %i.bm, double %i.bj)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.041
  store double %i.bn, ptr %i.bo, align 8, !tbaa !16
  %i.bp = getelementptr [8 x i8], ptr %i.d, i64 %i.bk ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -8
  %i.br = load double, ptr %i.bq, align 8, !tbaa !16
  %i.bs = load double, ptr %i.bp, align 8, !tbaa !16
  %i.bt = fmul double %i.t, %i.bs
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.r, double %i.br, double %i.bt)
  %i.bv = add nuw nsw i64 %.041, 2                ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !16
  %i.by = tail call double @llvm.fmuladd.f64(double %i.r, double %i.bx, double %i.bu)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bk
  store double %i.by, ptr %i.bz, align 8, !tbaa !16
  %exitcond.not.1 = icmp eq i64 %i.bv, %i.u
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.u
  store double 0.000000e+00, ptr %i.ca, align 8, !tbaa !16
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
