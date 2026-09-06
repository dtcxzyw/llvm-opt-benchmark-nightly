Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_brusselator1D?download=true
inline.NumInlined: 35
inline.NumDeleted: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:bb.a
check_flag.exit283:                               ; preds = %check_flag.exit281, %bb.ag
  %i.im = call i32 @ARKodeGetNumNonlinSolvConvFails(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.k) #10 ; 2 uses
  %i.in = icmp slt i32 %i.im, 0
  br i1 %i.in, label %bb.ah, label %check_flag.exit285

bb.ah:                                            ; preds = %check_flag.exit283
  %i.io = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ip = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.io, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.37, i32 noundef %i.im) #11 ; 0 uses
  br label %check_flag.exit285

check_flag.exit285:                               ; preds = %check_flag.exit283, %bb.ah
  %i.iq = call i32 @ARKodeGetNumJacEvals(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.h) #10 ; 2 uses
  %i.ir = icmp slt i32 %i.iq, 0
  br i1 %i.ir, label %bb.ai, label %check_flag.exit287

bb.ai:                                            ; preds = %check_flag.exit285
  %i.is = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.it = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.is, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.38, i32 noundef %i.iq) #11 ; 0 uses
  br label %check_flag.exit287

check_flag.exit287:                               ; preds = %check_flag.exit285, %bb.ai
  %i.iu = call i32 @ARKodeGetNumLinRhsEvals(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.i) #10 ; 2 uses
  %i.iv = icmp slt i32 %i.iu, 0
  br i1 %i.iv, label %bb.aj, label %check_flag.exit289

bb.aj:                                            ; preds = %check_flag.exit287
  %i.iw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ix = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iw, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.39, i32 noundef %i.iu) #11 ; 0 uses
  br label %check_flag.exit289

check_flag.exit289:                               ; preds = %check_flag.exit287, %bb.aj
  %puts225 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
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

bb.ak:                                            ; preds = %check_flag.exit267.thread, %check_flag.exit265, %check_flag.exit263, %check_flag.exit261, %check_flag.exit259, %check_flag.exit257, %check_flag.exit255, %check_flag.exit253, %check_flag.exit251, %check_flag.exit249.thread, %check_flag.exit247.thread, %check_flag.exit245.thread, %check_flag.exit243.thread, %check_flag.exit241, %check_flag.exit239, %check_flag.exit237, %check_flag.exit235, %check_flag.exit233, %check_flag.exit, %check_flag.exit289
  %.0195 = phi i32 [ 0, %check_flag.exit289 ], [ 1, %check_flag.exit ], [ 1, %check_flag.exit233 ], [ 1, %check_flag.exit235 ], [ 1, %check_flag.exit237 ], [ 1, %check_flag.exit239 ], [ 1, %check_flag.exit241 ], [ 1, %check_flag.exit243.thread ], [ 1, %check_flag.exit245.thread ], [ 1, %check_flag.exit247.thread ], [ 1, %check_flag.exit249.thread ], [ 1, %check_flag.exit251 ], [ 1, %check_flag.exit253 ], [ 1, %check_flag.exit255 ], [ 1, %check_flag.exit257 ], [ 1, %check_flag.exit259 ], [ 1, %check_flag.exit261 ], [ 1, %check_flag.exit263 ], [ 1, %check_flag.exit265 ], [ 1, %check_flag.exit267.thread ]
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
  %i.m = load double, ptr %i.l, align 8, !tbaa !24 ; 5 uses
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
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fdiv <2 x double> %i.i, %i.w             ; 2 uses
  %i.y = extractelement <2 x double> %i.x, i64 0
  %i.z = fdiv double %i.y, %i.m                   ; 2 uses
  %i.aa = extractelement <2 x double> %i.x, i64 1
  %i.ab = fdiv double %i.aa, %i.m                 ; 2 uses
  %i.ac = fdiv double %i.k, %i.m
  %i.ad = fdiv double %i.ac, %i.m                 ; 2 uses
  %i.ae = add i64 %i.a, -1                        ; 2 uses
  %i.af = icmp sgt i64 %i.a, 2
  br i1 %i.af, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ag = add nsw i64 %i.a, -2                    ; 4 uses
  %min.iters.check = icmp ult i64 %i.ag, 2
  br i1 %min.iters.check, label %.lr.ph.preheader114, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.r, i64 24
  %i.ah = mul i64 %i.a, 24                        ; 2 uses
  %i.ai = getelementptr i8, ptr %i.r, i64 %i.ah
  %scevgep99 = getelementptr i8, ptr %i.ai, i64 -24
  %scevgep100 = getelementptr i8, ptr %i.n, i64 %i.ah
  %bound0 = icmp ult ptr %scevgep, %scevgep100
  %bound1 = icmp ult ptr %i.n, %scevgep99
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader114, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, -2                      ; 2 uses
  %i.aj = or i64 %i.ag, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.z, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert101 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat102 = shufflevector <2 x double> %broadcast.splatinsert101, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <2 x double> poison, double %i.ab, i64 0
  %broadcast.splatinsert105 = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat106 = shufflevector <2 x double> %broadcast.splatinsert105, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert107 = insertelement <2 x double> poison, double %i.g, i64 0
  %broadcast.splat108 = shufflevector <2 x double> %broadcast.splatinsert107, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <2 x double> poison, double %i.ad, i64 0
  %broadcast.splat110 = shufflevector <2 x double> %broadcast.splatinsert109, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ak = mul nuw i64 %index, 3                   ; 3 uses
  %i.al = add nuw i64 %i.ak, 3                    ; 2 uses
  %i.am = mul i64 %index, 3                       ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.al ; 4 uses
  %i.ao = getelementptr [8 x i8], ptr %i.n, i64 %i.am ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 48
  %i.aq = load double, ptr %i.an, align 8, !tbaa !16, !alias.scope !33
  %i.ar = load double, ptr %i.ap, align 8, !tbaa !16, !alias.scope !33
  %i.as = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ar, i64 1 ; 6 uses
  %i.au = getelementptr i8, ptr %i.an, i64 -24
  %i.av = getelementptr i8, ptr %i.ao, i64 24
  %i.aw = load double, ptr %i.au, align 8, !tbaa !16, !alias.scope !33
  %i.ax = load double, ptr %i.av, align 8, !tbaa !16, !alias.scope !33
  %i.ay = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ax, i64 1
  %i.ba = mul nuw i64 %index, 24
  %i.bb = mul i64 %index, 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ba ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = getelementptr i8, ptr %i.n, i64 %i.bb   ; 3 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 72
  %i.bg = load double, ptr %i.bd, align 8, !tbaa !16, !alias.scope !33
  %i.bh = load double, ptr %i.bf, align 8, !tbaa !16, !alias.scope !33
  %i.bi = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bh, i64 1
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ak
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr [8 x i8], ptr %i.n, i64 %i.am
  %i.bn = getelementptr i8, ptr %i.bm, i64 56
  %i.bo = load double, ptr %i.bl, align 8, !tbaa !16, !alias.scope !33
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !16, !alias.scope !33
  %i.bq = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.bp, i64 1 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.an, i64 -16
  %i.bt = getelementptr i8, ptr %i.ao, i64 32
  %i.bu = load double, ptr %i.bs, align 8, !tbaa !16, !alias.scope !33
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !16, !alias.scope !33
  %i.bw = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bv, i64 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bz = getelementptr i8, ptr %i.be, i64 80
  %i.ca = load double, ptr %i.by, align 8, !tbaa !16, !alias.scope !33
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !16, !alias.scope !33
  %i.cc = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.cb, i64 1
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ak
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = getelementptr [8 x i8], ptr %i.n, i64 %i.am
  %i.ch = getelementptr i8, ptr %i.cg, i64 64
  %i.ci = load double, ptr %i.cf, align 8, !tbaa !16, !alias.scope !33
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !16, !alias.scope !33
  %i.ck = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.cj, i64 1 ; 5 uses
  %i.cm = getelementptr i8, ptr %i.an, i64 -8
  %i.cn = getelementptr i8, ptr %i.ao, i64 40
  %i.co = load double, ptr %i.cm, align 8, !tbaa !16, !alias.scope !33
  %i.cp = load double, ptr %i.cn, align 8, !tbaa !16, !alias.scope !33
  %i.cq = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cp, i64 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.ct = getelementptr i8, ptr %i.be, i64 88
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !16, !alias.scope !33
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !16, !alias.scope !33
  %i.cw = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.cv, i64 1
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> splat (double -2.000000e+00), <2 x double> %i.az)
  %i.cz = fadd <2 x double> %i.cy, %i.bj
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat102)
  %i.db = fadd <2 x double> %i.cl, splat (double 1.000000e+00)
  %i.dc = fneg <2 x double> %i.db
  %i.dd = fmul <2 x double> %i.at, %i.br          ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.al
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> splat (double -2.000000e+00), <2 x double> %i.bx)
  %i.dg = fadd <2 x double> %i.df, %i.cd
  %4 = fmul <2 x double> %i.at, %i.cl
  %5 = fneg <2 x double> %i.dd
  %6 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> splat (double -2.000000e+00), <2 x double> %i.cr)
  %7 = fadd <2 x double> %6, %i.cx
  %8 = fsub <2 x double> %broadcast.splat106, %i.cl
  %9 = fdiv <2 x double> %8, %broadcast.splat108
  %10 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %broadcast.splat110, <2 x double> %9)
  %11 = fneg <2 x double> %i.cl
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> %i.at, <2 x double> %10)
  %12 = shufflevector <2 x double> %i.dd, <2 x double> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %13 = shufflevector <2 x double> %i.at, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %14 = shufflevector <2 x double> %i.dc, <2 x double> %i.dg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %15 = shufflevector <2 x double> %i.at, <2 x double> %broadcast.splatinsert103, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %16 = shufflevector <2 x double> %i.da, <2 x double> %4, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %17 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %14, <4 x double> %15, <4 x double> %16)
  %i.di = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %12, <4 x double> %13, <4 x double> %17)
  %i.dj = shufflevector <2 x double> %i.dh, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.di, <4 x double> %i.dj, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.de, align 8, !tbaa !16, !alias.scope !34, !noalias !33
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader114

.lr.ph.preheader114:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.097.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  %i.dl = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.z, i64 0
  %i.dm = insertelement <2 x double> poison, double %i.c, i64 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader114, %.lr.ph
  %.097 = phi i64 [ %i.dq, %.lr.ph ], [ %.097.ph, %.lr.ph.preheader114 ] ; 2 uses
  %i.dn = mul nuw nsw i64 %.097, 3                ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dn ; 3 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  %i.dq = add nuw nsw i64 %.097, 1                ; 3 uses
  %.idx96 = mul nuw nsw i64 %i.dq, 24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx96
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = add nuw nsw i64 %i.dn, 2                ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.do, i64 -8
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !16
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dn
  %i.dy = load <2 x double>, ptr %i.do, align 8, !tbaa !16 ; 7 uses
  %i.dz = load <2 x double>, ptr %i.dp, align 8, !tbaa !16
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> splat (double -2.000000e+00), <2 x double> %i.dz) ; 2 uses
  %i.eb = load <2 x double>, ptr %i.du, align 8, !tbaa !16 ; 4 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 0 ; 2 uses
  %i.ed = shufflevector <2 x double> %i.ea, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ee = fadd <2 x double> %i.ed, %i.eb          ; 2 uses
  %i.ef = extractelement <2 x double> %i.ee, i64 0
  %i.eg = fneg double %i.ef
  %i.eh = extractelement <2 x double> %i.dy, i64 0
  %shift = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.dy, %shift ; 2 uses
  %foldExtExtBinop112 = fmul <2 x double> %i.dy, %i.eb
  %i.ei = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ej = insertelement <2 x double> %i.dy, double %i.ab, i64 1
  %i.ek = fneg <2 x double> %foldExtExtBinop
  %i.el = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.ek, <2 x i32> <i32 0, i32 2>
  %i.em = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = shufflevector <2 x double> %i.ee, <2 x double> %i.eb, <2 x i32> <i32 1, i32 2>
  %i.eo = insertelement <2 x double> %i.dm, double %i.dw, i64 1
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.dl, <2 x double> %i.eo) ; 2 uses
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> %foldExtExtBinop112, <2 x i32> <i32 0, i32 2>
  %i.er = load <2 x double>, ptr %i.ds, align 8, !tbaa !16
  %i.es = shufflevector <2 x double> %i.ea, <2 x double> %i.ep, <2 x i32> <i32 1, i32 3>
  %i.et = fadd <2 x double> %i.es, %i.er          ; 2 uses
  %i.eu = shufflevector <2 x double> %i.ei, <2 x double> %i.et, <2 x i32> <i32 0, i32 2>
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.ej, <2 x double> %i.eq)
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.em, <2 x double> %i.ev)
  store <2 x double> %i.ew, ptr %i.dx, align 8, !tbaa !16
  %i.ex = fsub double %i.e, %i.ec
  %i.ey = fdiv double %i.ex, %i.g
  %i.ez = extractelement <2 x double> %i.et, i64 1
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.ad, double %i.ey)
  %i.fb = fneg double %i.ec
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.fb, double %i.eh, double %i.fa)
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dt
  store double %i.fc, ptr %i.fd, align 8, !tbaa !16
  %exitcond.not = icmp eq i64 %i.dq, %i.ae
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  %.idx = mul i64 %i.ae, 24
  %i.fe = getelementptr i8, ptr %i.r, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i8 0, i64 24, i1 false)
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
end_hunk_0
