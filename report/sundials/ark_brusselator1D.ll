Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_brusselator1D?download=true
inline.NumInlined: 35
inline.NumDeleted: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@printf

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
  %i.y = fdiv <2 x double> %i.x, %i.w             ; 4 uses
  %i.z = fdiv double %i.k, %i.m
  %i.aa = fdiv double %i.z, %i.m                  ; 2 uses
  %i.ab = add i64 %i.a, -1                        ; 2 uses
  %i.ac = icmp sgt i64 %i.a, 2
  br i1 %i.ac, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ad = add nsw i64 %i.a, -2                    ; 4 uses
  %min.iters.check = icmp ult i64 %i.ad, 2
  br i1 %min.iters.check, label %.lr.ph.preheader114, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ae = getelementptr i8, ptr %i.r, i64 24
  %i.af = mul i64 %i.a, 24                        ; 2 uses
  %i.ag = getelementptr i8, ptr %i.r, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = getelementptr i8, ptr %i.n, i64 %i.af
  %bound0 = icmp ult ptr %i.ae, %i.ai
  %bound1 = icmp ult ptr %i.n, %i.ah
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader114, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, -2                      ; 2 uses
  %i.aj = or i64 %i.ad, 1
  %broadcast.splat = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert101 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat102 = shufflevector <2 x double> %broadcast.splatinsert101, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert105 = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat106 = shufflevector <2 x double> %broadcast.splatinsert105, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert107 = insertelement <2 x double> poison, double %i.g, i64 0
  %broadcast.splat108 = shufflevector <2 x double> %broadcast.splatinsert107, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <2 x double> poison, double %i.aa, i64 0
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
  %i.dh = fmul <2 x double> %i.at, %i.cl
  %i.di = fneg <2 x double> %i.dd
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> splat (double -2.000000e+00), <2 x double> %i.cr)
  %i.dk = fadd <2 x double> %i.dj, %i.cx
  %i.dl = fsub <2 x double> %broadcast.splat106, %i.cl
  %i.dm = fdiv <2 x double> %i.dl, %broadcast.splat108
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %broadcast.splat110, <2 x double> %i.dm)
  %i.do = fneg <2 x double> %i.cl
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.at, <2 x double> %i.dn)
  %i.dq = shufflevector <2 x double> %i.dd, <2 x double> %i.di, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dr = shufflevector <2 x double> %i.at, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ds = shufflevector <2 x double> %i.dc, <2 x double> %i.dg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dt = shufflevector <2 x double> %i.at, <2 x double> %i.y, <4 x i32> <i32 0, i32 1, i32 3, i32 3>
  %i.du = shufflevector <2 x double> %i.da, <2 x double> %i.dh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ds, <4 x double> %i.dt, <4 x double> %i.du)
  %i.dw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dq, <4 x double> %i.dr, <4 x double> %i.dv)
  %i.dx = shufflevector <2 x double> %i.dp, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.dw, <4 x double> %i.dx, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.de, align 8, !tbaa !16, !alias.scope !34, !noalias !33
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader114

.lr.ph.preheader114:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.097.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  %4 = extractelement <2 x double> %i.y, i64 0
  %5 = shufflevector <2 x double> <double poison, double -2.000000e+00>, <2 x double> %i.y, <2 x i32> <i32 3, i32 1>
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader114, %.lr.ph
  %.097 = phi i64 [ %i.ec, %.lr.ph ], [ %.097.ph, %.lr.ph.preheader114 ] ; 2 uses
  %i.dz = mul nuw nsw i64 %.097, 3                ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dz ; 4 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 -24
  %6 = load double, ptr %i.eb, align 8, !tbaa !16
  %i.ec = add nuw nsw i64 %.097, 1                ; 3 uses
  %.idx96 = mul nuw nsw i64 %i.ec, 24
  %7 = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx96 ; 3 uses
  %8 = load double, ptr %7, align 8, !tbaa !16
  %i.ed = getelementptr i8, ptr %i.ea, i64 -16
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load double, ptr %i.ee, align 8, !tbaa !16
  %i.ef = add nuw nsw i64 %i.dz, 2                ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ef
  %10 = load double, ptr %i.eg, align 8, !tbaa !16 ; 5 uses
  %i.eh = getelementptr i8, ptr %i.ea, i64 -8
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !16
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %12 = load double, ptr %11, align 8, !tbaa !16
  %13 = fadd double %10, 1.000000e+00
  %14 = fneg double %13
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dz
  %16 = load <2 x double>, ptr %i.ea, align 8, !tbaa !16 ; 5 uses
  %17 = extractelement <2 x double> %16, i64 0    ; 3 uses
  %18 = load double, ptr %i.ed, align 8, !tbaa !16
  %19 = tail call double @llvm.fmuladd.f64(double %17, double -2.000000e+00, double %6)
  %20 = fadd double %19, %8
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %4, double %i.c)
  %shift = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %16, %shift ; 2 uses
  %22 = insertelement <2 x double> <double poison, double -2.000000e+00>, double %14, i64 0
  %i.ej = insertelement <2 x double> poison, double %21, i64 0
  %23 = insertelement <2 x double> %i.ej, double %18, i64 1
  %24 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %22, <2 x double> %16, <2 x double> %23) ; 2 uses
  %25 = extractelement <2 x double> %24, i64 1
  %26 = fadd double %25, %9
  %27 = fmul double %17, %10
  %i.ek = insertelement <2 x double> poison, double %26, i64 0
  %28 = insertelement <2 x double> %i.ek, double %10, i64 1
  %29 = insertelement <2 x double> poison, double %27, i64 0
  %30 = insertelement <2 x double> %29, double %i.ei, i64 1
  %31 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %5, <2 x double> %30) ; 2 uses
  %32 = fneg <2 x double> %foldExtExtBinop
  %i.el = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %32, <2 x i32> <i32 0, i32 2>
  %33 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %34 = shufflevector <2 x double> %24, <2 x double> %31, <2 x i32> <i32 0, i32 2>
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %33, <2 x double> %34)
  store <2 x double> %i.em, ptr %15, align 8, !tbaa !16
  %35 = extractelement <2 x double> %31, i64 1
  %36 = fadd double %35, %12
  %37 = fsub double %i.e, %10
  %38 = fdiv double %37, %i.g
  %i.en = tail call double @llvm.fmuladd.f64(double %36, double %i.aa, double %38)
  %i.eo = fneg double %10
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.eo, double %17, double %i.en)
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ef
  store double %i.ep, ptr %i.eq, align 8, !tbaa !16
  %exitcond.not = icmp eq i64 %i.ec, %i.ab
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  %.idx = mul i64 %i.ab, 24
  %i.er = getelementptr i8, ptr %i.r, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.er, i8 0, i64 24, i1 false)
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
  %i.du = fneg double %i.do
  %i.dv = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.du, i64 1
  %i.dx = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.dn, i64 1
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.dy, <2 x double> %i.ea)
end_hunk_0
