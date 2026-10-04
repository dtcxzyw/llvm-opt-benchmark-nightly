Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_brusselator1D?download=true
inline.NumInlined: 35
inline.NumDeleted: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:bb.a
  %fputc224 = call i32 @fputc(i32 10, ptr %i.fe)  ; 0 uses
  %i.hg = add nuw nsw i32 %.0368, 1               ; 2 uses
  %exitcond380.not = icmp eq i32 %i.hg, 100
  br i1 %exitcond380.not, label %.loopexit, label %bb.w

.loopexit:                                        ; preds = %bb.z, %check_flag.exit272
  %puts227 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.hh = call i32 @fclose(ptr noundef %i.fc)     ; 0 uses
  %i.hi = call i32 @fclose(ptr noundef %i.fd)     ; 0 uses
  %i.hj = call i32 @fclose(ptr noundef %i.fe)     ; 0 uses
  %i.hk = call i32 @ARKodeGetNumSteps(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 0
  br i1 %i.hl, label %bb.aa, label %check_flag.exit274

bb.aa:                                            ; preds = %.loopexit
  %i.hm = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hm, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.31, i32 noundef %i.hk) #11 ; 0 uses
  br label %check_flag.exit274

check_flag.exit274:                               ; preds = %.loopexit, %bb.aa
  %i.ho = call i32 @ARKodeGetNumStepAttempts(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.d) #10 ; 2 uses
  %i.hp = icmp slt i32 %i.ho, 0
  br i1 %i.hp, label %bb.ab, label %check_flag.exit276

bb.ab:                                            ; preds = %check_flag.exit274
  %i.hq = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hq, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.32, i32 noundef %i.ho) #11 ; 0 uses
  br label %check_flag.exit276

check_flag.exit276:                               ; preds = %check_flag.exit274, %bb.ab
  %i.hs = call i32 @ARKodeGetNumRhsEvals(ptr noundef nonnull %i.dn, i32 noundef 0, ptr noundef nonnull %i.e) #10 ; 2 uses
  %i.ht = icmp slt i32 %i.hs, 0
  br i1 %i.ht, label %bb.ac, label %check_flag.exit278

bb.ac:                                            ; preds = %check_flag.exit276
  %i.hu = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hu, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.33, i32 noundef %i.hs) #11 ; 0 uses
  br label %check_flag.exit278

check_flag.exit278:                               ; preds = %check_flag.exit276, %bb.ac
  %i.hw = call i32 @ARKodeGetNumRhsEvals(ptr noundef nonnull %i.dn, i32 noundef 1, ptr noundef nonnull %i.f) #10 ; 2 uses
  %i.hx = icmp slt i32 %i.hw, 0
  br i1 %i.hx, label %bb.ad, label %check_flag.exit280

bb.ad:                                            ; preds = %check_flag.exit278
  %i.hy = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hy, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.33, i32 noundef %i.hw) #11 ; 0 uses
  br label %check_flag.exit280

check_flag.exit280:                               ; preds = %check_flag.exit278, %bb.ad
  %i.ia = call i32 @ARKodeGetNumLinSolvSetups(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.g) #10 ; 2 uses
  %i.ib = icmp slt i32 %i.ia, 0
  br i1 %i.ib, label %bb.ae, label %check_flag.exit282

bb.ae:                                            ; preds = %check_flag.exit280
  %i.ic = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.id = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ic, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.34, i32 noundef %i.ia) #11 ; 0 uses
  br label %check_flag.exit282

check_flag.exit282:                               ; preds = %check_flag.exit280, %bb.ae
  %i.ie = call i32 @ARKodeGetNumErrTestFails(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.l) #10 ; 2 uses
  %i.if = icmp slt i32 %i.ie, 0
  br i1 %i.if, label %bb.af, label %check_flag.exit284

bb.af:                                            ; preds = %check_flag.exit282
  %i.ig = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ih = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ig, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.35, i32 noundef %i.ie) #11 ; 0 uses
  br label %check_flag.exit284

check_flag.exit284:                               ; preds = %check_flag.exit282, %bb.af
  %i.ii = call i32 @ARKodeGetNumNonlinSolvIters(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.j) #10 ; 2 uses
  %i.ij = icmp slt i32 %i.ii, 0
  br i1 %i.ij, label %bb.ag, label %check_flag.exit286

bb.ag:                                            ; preds = %check_flag.exit284
  %i.ik = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.il = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ik, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.36, i32 noundef %i.ii) #11 ; 0 uses
  br label %check_flag.exit286

check_flag.exit286:                               ; preds = %check_flag.exit284, %bb.ag
  %i.im = call i32 @ARKodeGetNumNonlinSolvConvFails(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.k) #10 ; 2 uses
  %i.in = icmp slt i32 %i.im, 0
  br i1 %i.in, label %bb.ah, label %check_flag.exit288

bb.ah:                                            ; preds = %check_flag.exit286
  %i.io = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ip = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.io, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.37, i32 noundef %i.im) #11 ; 0 uses
  br label %check_flag.exit288

check_flag.exit288:                               ; preds = %check_flag.exit286, %bb.ah
  %i.iq = call i32 @ARKodeGetNumJacEvals(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.h) #10 ; 2 uses
  %i.ir = icmp slt i32 %i.iq, 0
  br i1 %i.ir, label %bb.ai, label %check_flag.exit290

bb.ai:                                            ; preds = %check_flag.exit288
  %i.is = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.it = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.is, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.38, i32 noundef %i.iq) #11 ; 0 uses
  br label %check_flag.exit290

check_flag.exit290:                               ; preds = %check_flag.exit288, %bb.ai
  %i.iu = call i32 @ARKodeGetNumLinRhsEvals(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.i) #10 ; 2 uses
  %i.iv = icmp slt i32 %i.iu, 0
  br i1 %i.iv, label %bb.aj, label %check_flag.exit292

bb.aj:                                            ; preds = %check_flag.exit290
  %i.iw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ix = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iw, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.39, i32 noundef %i.iu) #11 ; 0 uses
  br label %check_flag.exit292

check_flag.exit292:                               ; preds = %check_flag.exit290, %bb.aj
  %puts228 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.iy = load i64, ptr %i.c, align 8, !tbaa !27
  %i.iz = load i64, ptr %i.d, align 8, !tbaa !27
  %i.ja = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i64 noundef %i.iy, i64 noundef %i.iz) ; 0 uses
  %i.jb = load i64, ptr %i.e, align 8, !tbaa !27
  %i.jc = load i64, ptr %i.f, align 8, !tbaa !27
  %i.jd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i64 noundef %i.jb, i64 noundef %i.jc) ; 0 uses
  %i.je = load i64, ptr %i.g, align 8, !tbaa !27
  %i.jf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i64 noundef %i.je) ; 0 uses
  %i.jg = load i64, ptr %i.i, align 8, !tbaa !27
  %i.jh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %i.jg) ; 0 uses
  %i.ji = load i64, ptr %i.h, align 8, !tbaa !27
  %i.jj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i64 noundef %i.ji) ; 0 uses
  %i.jk = load i64, ptr %i.j, align 8, !tbaa !27
  %i.jl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i64 noundef %i.jk) ; 0 uses
  %i.jm = load i64, ptr %i.k, align 8, !tbaa !27
  %i.jn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i64 noundef %i.jm) ; 0 uses
  %i.jo = load i64, ptr %i.l, align 8, !tbaa !27
  %i.jp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i64 noundef %i.jo) ; 0 uses
  call void @N_VDestroy(ptr noundef nonnull %i.an) #10
  call void @N_VDestroy(ptr noundef nonnull %i.ar) #10
  call void @N_VDestroy(ptr noundef nonnull %i.av) #10
  call void @N_VDestroy(ptr noundef nonnull %i.az) #10
  call void @free(ptr noundef %i.r) #10
  call void @ARKodeFree(ptr noundef nonnull %i.a) #10
  %i.jq = call i32 @SUNLinSolFree(ptr noundef nonnull %i.ef) #10 ; 0 uses
  call void @SUNMatDestroy(ptr noundef nonnull %i.ea) #10
  %i.jr = call i32 @SUNContext_Free(ptr noundef nonnull %i.m) #10 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %check_flag.exit270.thread, %check_flag.exit268, %check_flag.exit266, %check_flag.exit264, %check_flag.exit262, %check_flag.exit260, %check_flag.exit258, %check_flag.exit256, %check_flag.exit254, %check_flag.exit252.thread, %check_flag.exit250.thread, %check_flag.exit248.thread, %check_flag.exit246.thread, %check_flag.exit244, %check_flag.exit242, %check_flag.exit240, %check_flag.exit238, %check_flag.exit236, %check_flag.exit, %check_flag.exit292
  %.0195 = phi i32 [ 0, %check_flag.exit292 ], [ 1, %check_flag.exit ], [ 1, %check_flag.exit236 ], [ 1, %check_flag.exit238 ], [ 1, %check_flag.exit240 ], [ 1, %check_flag.exit242 ], [ 1, %check_flag.exit244 ], [ 1, %check_flag.exit246.thread ], [ 1, %check_flag.exit248.thread ], [ 1, %check_flag.exit250.thread ], [ 1, %check_flag.exit252.thread ], [ 1, %check_flag.exit254 ], [ 1, %check_flag.exit256 ], [ 1, %check_flag.exit258 ], [ 1, %check_flag.exit260 ], [ 1, %check_flag.exit262 ], [ 1, %check_flag.exit264 ], [ 1, %check_flag.exit266 ], [ 1, %check_flag.exit268 ], [ 1, %check_flag.exit270.thread ]
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
  ret i32 %.0195
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ARKStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @f(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !15     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !17 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.g = load double, ptr %i.f, align 8, !tbaa !19 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load <2 x double>, ptr %i.h, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = load double, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !24 ; 3 uses
  %i.n = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 14 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %check_flag.exit, label %bb.b

check_flag.exit:                                  ; preds = %bb.a
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.9) #11 ; 0 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.r = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 8 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %check_flag.exit91, label %bb.c

check_flag.exit91:                                ; preds = %bb.b
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.9) #11 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #10
  %i.v = insertelement <2 x double> poison, double %i.m, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = fdiv <2 x double> %i.i, %i.w
  %4 = fdiv <2 x double> %i.x, %i.w               ; 4 uses
  %i.y = fdiv double %i.k, %i.m
  %i.z = fdiv double %i.y, %i.m                   ; 2 uses
  %i.aa = add i64 %i.a, -1                        ; 2 uses
  %i.ab = icmp sgt i64 %i.a, 2
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ac = add nsw i64 %i.a, -2                    ; 4 uses
  %min.iters.check = icmp ult i64 %i.ac, 2
  br i1 %min.iters.check, label %.lr.ph.preheader114, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ad = getelementptr i8, ptr %i.r, i64 24
  %i.ae = mul i64 %i.a, 24                        ; 2 uses
  %i.af = getelementptr i8, ptr %i.r, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.ae
  %bound0 = icmp ult ptr %i.ad, %i.ah
  %bound1 = icmp ult ptr %i.n, %i.ag
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader114, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, -2                      ; 2 uses
  %i.ai = or i64 %i.ac, 1
  %broadcast.splat = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert101 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat102 = shufflevector <2 x double> %broadcast.splatinsert101, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert105 = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat106 = shufflevector <2 x double> %broadcast.splatinsert105, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert107 = insertelement <2 x double> poison, double %i.g, i64 0
  %broadcast.splat108 = shufflevector <2 x double> %broadcast.splatinsert107, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <2 x double> poison, double %i.z, i64 0
  %broadcast.splat110 = shufflevector <2 x double> %broadcast.splatinsert109, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.aj = mul nuw i64 %index, 3                   ; 3 uses
  %i.ak = add nuw i64 %i.aj, 3                    ; 2 uses
  %i.al = mul i64 %index, 3                       ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ak ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.n, i64 %i.al ; 4 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 48
  %i.ap = load double, ptr %i.am, align 8, !tbaa !16, !alias.scope !33
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !16, !alias.scope !33
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1 ; 6 uses
  %i.at = getelementptr i8, ptr %i.am, i64 -24
  %i.au = getelementptr i8, ptr %i.an, i64 24
  %i.av = load double, ptr %i.at, align 8, !tbaa !16, !alias.scope !33
  %i.aw = load double, ptr %i.au, align 8, !tbaa !16, !alias.scope !33
  %i.ax = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.aw, i64 1
  %i.az = mul nuw i64 %index, 24
  %i.ba = mul i64 %index, 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.az ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = getelementptr i8, ptr %i.n, i64 %i.ba   ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 72
  %i.bf = load double, ptr %i.bc, align 8, !tbaa !16, !alias.scope !33
  %i.bg = load double, ptr %i.be, align 8, !tbaa !16, !alias.scope !33
  %i.bh = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.bg, i64 1
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = getelementptr [8 x i8], ptr %i.n, i64 %i.al
  %i.bm = getelementptr i8, ptr %i.bl, i64 56
  %i.bn = load double, ptr %i.bk, align 8, !tbaa !16, !alias.scope !33
  %i.bo = load double, ptr %i.bm, align 8, !tbaa !16, !alias.scope !33
  %i.bp = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bo, i64 1 ; 2 uses
  %i.br = getelementptr i8, ptr %i.am, i64 -16
  %i.bs = getelementptr i8, ptr %i.an, i64 32
  %i.bt = load double, ptr %i.br, align 8, !tbaa !16, !alias.scope !33
  %i.bu = load double, ptr %i.bs, align 8, !tbaa !16, !alias.scope !33
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bu, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.by = getelementptr i8, ptr %i.bd, i64 80
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !16, !alias.scope !33
  %i.ca = load double, ptr %i.by, align 8, !tbaa !16, !alias.scope !33
  %i.cb = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ca, i64 1
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = getelementptr [8 x i8], ptr %i.n, i64 %i.al
  %i.cg = getelementptr i8, ptr %i.cf, i64 64
  %i.ch = load double, ptr %i.ce, align 8, !tbaa !16, !alias.scope !33
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !16, !alias.scope !33
  %i.cj = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ci, i64 1 ; 5 uses
  %i.cl = getelementptr i8, ptr %i.am, i64 -8
  %i.cm = getelementptr i8, ptr %i.an, i64 40
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !16, !alias.scope !33
  %i.co = load double, ptr %i.cm, align 8, !tbaa !16, !alias.scope !33
  %i.cp = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.co, i64 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.cs = getelementptr i8, ptr %i.bd, i64 88
  %i.ct = load double, ptr %i.cr, align 8, !tbaa !16, !alias.scope !33
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !16, !alias.scope !33
  %i.cv = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cu, i64 1
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ay)
  %i.cy = fadd <2 x double> %i.cx, %i.bi
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat102)
  %i.da = fadd <2 x double> %i.ck, splat (double 1.000000e+00)
  %i.db = fneg <2 x double> %i.da
  %i.dc = fmul <2 x double> %i.as, %i.bq          ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ak
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> splat (double -2.000000e+00), <2 x double> %i.bw)
  %i.df = fadd <2 x double> %i.de, %i.cc
  %i.dg = fmul <2 x double> %i.as, %i.ck
  %i.dh = fneg <2 x double> %i.dc
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> splat (double -2.000000e+00), <2 x double> %i.cq)
  %i.dj = fadd <2 x double> %i.di, %i.cw
  %i.dk = fsub <2 x double> %broadcast.splat106, %i.ck
  %i.dl = fdiv <2 x double> %i.dk, %broadcast.splat108
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %broadcast.splat110, <2 x double> %i.dl)
  %i.dn = fneg <2 x double> %i.ck
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.as, <2 x double> %i.dm)
  %i.dp = shufflevector <2 x double> %i.dc, <2 x double> %i.dh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dq = shufflevector <2 x double> %i.as, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dr = shufflevector <2 x double> %i.db, <2 x double> %i.df, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %5 = shufflevector <2 x double> %i.as, <2 x double> %4, <4 x i32> <i32 0, i32 1, i32 3, i32 3>
  %i.ds = shufflevector <2 x double> %i.cz, <2 x double> %i.dg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dt = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dr, <4 x double> %5, <4 x double> %i.ds)
  %i.du = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dp, <4 x double> %i.dq, <4 x double> %i.dt)
  %i.dv = shufflevector <2 x double> %i.do, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.du, <4 x double> %i.dv, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.dd, align 8, !tbaa !16, !alias.scope !34, !noalias !33
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader114

.lr.ph.preheader114:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.097.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.ai, %middle.block ]
  %i.dx = insertelement <2 x double> %4, double -2.000000e+00, i64 1
  %i.dy = insertelement <2 x double> poison, double %i.c, i64 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader114, %.lr.ph
  %.097 = phi i64 [ %i.ec, %.lr.ph ], [ %.097.ph, %.lr.ph.preheader114 ] ; 2 uses
  %i.dz = mul nuw nsw i64 %.097, 3                ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dz ; 3 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 -24
  %i.ec = add nuw nsw i64 %.097, 1                ; 3 uses
  %.idx96 = mul nuw nsw i64 %i.ec, 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx96
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = add nuw nsw i64 %i.dz, 2                ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.ea, i64 -8
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !16
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dz
  %i.ek = load <2 x double>, ptr %i.ea, align 8, !tbaa !16 ; 7 uses
  %i.el = load <2 x double>, ptr %i.eb, align 8, !tbaa !16
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> splat (double -2.000000e+00), <2 x double> %i.el) ; 2 uses
  %i.en = load <2 x double>, ptr %i.eg, align 8, !tbaa !16 ; 4 uses
  %i.eo = extractelement <2 x double> %i.en, i64 0 ; 2 uses
  %i.ep = shufflevector <2 x double> %i.em, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.eq = fadd <2 x double> %i.ep, %i.en          ; 2 uses
  %i.er = extractelement <2 x double> %i.eq, i64 0
  %i.es = fneg double %i.er
  %i.et = extractelement <2 x double> %i.ek, i64 0
  %shift = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.ek, %shift ; 2 uses
  %foldExtExtBinop112 = fmul <2 x double> %i.ek, %i.en
  %i.eu = insertelement <2 x double> poison, double %i.es, i64 0
  %6 = shufflevector <2 x double> %i.ek, <2 x double> %4, <2 x i32> <i32 0, i32 3>
  %i.ev = fneg <2 x double> %foldExtExtBinop
  %i.ew = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.ev, <2 x i32> <i32 0, i32 2>
  %i.ex = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = shufflevector <2 x double> %i.eq, <2 x double> %i.en, <2 x i32> <i32 1, i32 2>
  %i.ez = insertelement <2 x double> %i.dy, double %i.ei, i64 1
  %i.fa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.dx, <2 x double> %i.ez) ; 2 uses
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> %foldExtExtBinop112, <2 x i32> <i32 0, i32 2>
  %i.fc = load <2 x double>, ptr %i.ee, align 8, !tbaa !16
  %i.fd = shufflevector <2 x double> %i.em, <2 x double> %i.fa, <2 x i32> <i32 1, i32 3>
  %i.fe = fadd <2 x double> %i.fd, %i.fc          ; 2 uses
  %i.ff = shufflevector <2 x double> %i.eu, <2 x double> %i.fe, <2 x i32> <i32 0, i32 2>
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %6, <2 x double> %i.fb)
  %i.fh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ex, <2 x double> %i.fg)
  store <2 x double> %i.fh, ptr %i.ej, align 8, !tbaa !16
  %i.fi = fsub double %i.e, %i.eo
  %i.fj = fdiv double %i.fi, %i.g
  %i.fk = extractelement <2 x double> %i.fe, i64 1
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.fk, double %i.z, double %i.fj)
  %i.fm = fneg double %i.eo
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.et, double %i.fl)
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ef
  store double %i.fn, ptr %i.fo, align 8, !tbaa !16
  %exitcond.not = icmp eq i64 %i.ec, %i.aa
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  %.idx = mul i64 %i.aa, 24
  %i.fp = getelementptr i8, ptr %i.r, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %check_flag.exit91, %check_flag.exit, %._crit_edge
  %.087 = phi i32 [ 0, %._crit_edge ], [ 1, %check_flag.exit ], [ 1, %check_flag.exit91 ]
  ret i32 %.087
}

declare i32 @ARKodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @SUNBandMatrix(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_Band(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetJacFn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @Jac(double %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = tail call i32 @SUNMatZero(ptr noundef %3) #10 ; 0 uses
  %i.b = load i64, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !24 ; 18 uses
  %i.e = icmp sgt i64 %i.b, 2
  br i1 %i.e, label %.lr.ph.i, label %LaplaceMatrix.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !45   ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.n = add nsw i64 %i.b, -2                     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.085.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bt, %bb.b ] ; 3 uses
  %i.o = load double, ptr %i.f, align 8, !tbaa !20
  %i.p = fdiv double %i.o, %i.d
  %i.q = fdiv double %i.p, %i.d
  %.idx86.i = mul i64 %.085.i, 24
  %i.r = getelementptr i8, ptr %i.i, i64 %.idx86.i ; 6 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %i.k ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !16
  %i.x = fadd double %i.q, %i.w
  store double %i.x, ptr %i.v, align 8, !tbaa !16
  %i.y = load double, ptr %i.l, align 8, !tbaa !21
  %i.z = fdiv double %i.y, %i.d
  %i.aa = fdiv double %i.z, %i.d
  %i.ab = getelementptr i8, ptr %i.r, i64 -16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.ad = getelementptr i8, ptr %i.ac, i64 24
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.k ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !16
  %i.ag = fadd double %i.af, %i.aa
  store double %i.ag, ptr %i.ae, align 8, !tbaa !16
  %i.ah = load double, ptr %i.m, align 8, !tbaa !22
  %i.ai = fdiv double %i.ah, %i.d
  %i.aj = fdiv double %i.ai, %i.d
  %i.ak = getelementptr i8, ptr %i.r, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.k ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !16
  %i.ap = fadd double %i.ao, %i.aj
  store double %i.ap, ptr %i.an, align 8, !tbaa !16
  %i.aq = load double, ptr %i.f, align 8, !tbaa !20
  %i.ar = fmul double %i.aq, 2.000000e+00
  %i.as = fdiv double %i.ar, %i.d
  %i.at = fdiv double %i.as, %i.d
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.k ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !16
  %i.ax = fsub double %i.aw, %i.at
  store double %i.ax, ptr %i.av, align 8, !tbaa !16
  %i.ay = load double, ptr %i.l, align 8, !tbaa !21
  %i.az = fmul double %i.ay, 2.000000e+00
  %i.ba = fdiv double %i.az, %i.d
  %i.bb = fdiv double %i.ba, %i.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !46
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.k ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !16
  %i.bg = fsub double %i.bf, %i.bb
  store double %i.bg, ptr %i.be, align 8, !tbaa !16
  %i.bh = load double, ptr %i.m, align 8, !tbaa !22
  %i.bi = fmul double %i.bh, 2.000000e+00
  %i.bj = fdiv double %i.bi, %i.d
  %i.bk = fdiv double %i.bj, %i.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !46
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.k ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !16
  %i.bp = fsub double %i.bo, %i.bk
  store double %i.bp, ptr %i.bn, align 8, !tbaa !16
  %i.bq = load double, ptr %i.f, align 8, !tbaa !20
  %i.br = fdiv double %i.bq, %i.d
  %i.bs = fdiv double %i.br, %i.d
  %i.bt = add nuw nsw i64 %.085.i, 1              ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.bt, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !46
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %i.k
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24    ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !16
  %i.bz = fadd double %i.by, %i.bs
  store double %i.bz, ptr %i.bx, align 8, !tbaa !16
  %i.ca = load double, ptr %i.l, align 8, !tbaa !21
  %i.cb = fdiv double %i.ca, %i.d
  %i.cc = fdiv double %i.cb, %i.d
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !46
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.k
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24    ; 2 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !16
  %i.ci = fadd double %i.ch, %i.cc
  store double %i.ci, ptr %i.cg, align 8, !tbaa !16
  %i.cj = load double, ptr %i.m, align 8, !tbaa !22
  %i.ck = fdiv double %i.cj, %i.d
  %i.cl = fdiv double %i.ck, %i.d
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !46
  %i.co = getelementptr [8 x i8], ptr %i.cn, i64 %i.k
  %i.cp = getelementptr i8, ptr %i.co, i64 -24    ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !16
  %i.cr = fadd double %i.cq, %i.cl
  store double %i.cr, ptr %i.cp, align 8, !tbaa !16
  %exitcond.not.i = icmp eq i64 %.085.i, %i.n
  br i1 %exitcond.not.i, label %LaplaceMatrix.exit, label %bb.b

LaplaceMatrix.exit:                               ; preds = %bb.b
  %i.cs = getelementptr i8, ptr %4, i64 56
  %.val7 = load double, ptr %i.cs, align 8, !tbaa !19
  %i.ct = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 4 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %check_flag.exit.thread.i, label %.lr.ph.i8

LaplaceMatrix.exit.thread:                        ; preds = %bb.a
  %i.cv = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %check_flag.exit.thread.i, label %ReactionJac.exit

.lr.ph.i8:                                        ; preds = %LaplaceMatrix.exit
  %i.cx = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !44 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.db = load i64, ptr %i.da, align 8, !tbaa !45 ; 3 uses
  %i.dc = fdiv double -1.000000e+00, %.val7
  br label %check_flag.exit.i

check_flag.exit.thread.i:                         ; preds = %LaplaceMatrix.exit.thread, %LaplaceMatrix.exit
  %i.dd = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.de = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dd, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.9) #11 ; 0 uses
  br label %ReactionJac.exit

check_flag.exit.i:                                ; preds = %check_flag.exit.i, %.lr.ph.i8
  %.03.i = phi i64 [ 1, %.lr.ph.i8 ], [ %i.fc, %check_flag.exit.i ] ; 3 uses
  %i.df = mul nuw nsw i64 %.03.i, 3               ; 4 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !16 ; 6 uses
  %i.di = add nuw nsw i64 %i.df, 1                ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !16
  %i.dl = add nuw nsw i64 %i.df, 2                ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !16 ; 3 uses
  %i.do = fmul double %i.dh, 2.000000e+00         ; 2 uses
  %i.dp = fadd double %i.dn, 1.000000e+00
  %i.dq = fneg double %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.df
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !46
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.db ; 3 uses
end_hunk_0
