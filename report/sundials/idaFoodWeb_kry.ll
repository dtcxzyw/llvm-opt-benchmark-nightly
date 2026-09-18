Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idaFoodWeb_kry?download=true
inline.NumInlined: 31
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@SetInitialProfiles:bb.a
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.14, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.bd = getelementptr i8, ptr %i.b, i64 %i.ao
  %scevgep.15 = getelementptr i8, ptr %i.bd, i64 240
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.15, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.be = getelementptr i8, ptr %i.b, i64 %i.ao
  %scevgep.16 = getelementptr i8, ptr %i.be, i64 256
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.16, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.bf = getelementptr i8, ptr %i.b, i64 %i.ao
  %scevgep.17 = getelementptr i8, ptr %i.bf, i64 272
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.17, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.bg = getelementptr i8, ptr %i.b, i64 %i.ao
  %scevgep.18 = getelementptr i8, ptr %i.bg, i64 288
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.18, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.bh = getelementptr i8, ptr %i.b, i64 %i.ao
  %scevgep.19 = getelementptr i8, ptr %i.bh, i64 304
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.19, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.bi = add nuw nsw i64 %.165, 1                ; 2 uses
  %exitcond70.not = icmp eq i64 %i.bi, 20
  br i1 %exitcond70.not, label %.split67, label %.preheader59

.split67:                                         ; preds = %.preheader59, %bb.h
  ret void
}

declare ptr @IDACreate(ptr noundef) local_unnamed_addr #2

declare i32 @IDASetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetId(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAInit(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @resweb(double %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #12 ; 2 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  tail call fastcc void @Fweb(ptr noundef %1, ptr noundef %3, ptr noundef %4)
  %i.e = icmp sgt i64 %i.d, 0
  %i.f = icmp samesign ugt i64 %i.d, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.h
  %.03337 = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.h ] ; 2 uses
  %i.g = mul nuw nsw i64 %.03337, 40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.g
  %.03436 = phi i64 [ 0, %bb.b ], [ %i.z, %bb.g ] ; 2 uses
  %i.h = shl nuw nsw i64 %.03436, 1
  %i.i = add nuw nsw i64 %i.h, %i.g               ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.i ; 5 uses
  br i1 %i.e, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.k = load double, ptr %i.j, align 8, !tbaa !26
  %i.l = fneg double %i.k
  store double %i.l, ptr %i.j, align 8, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.i
  %i.n = load double, ptr %i.m, align 8, !tbaa !26
  %i.o = load double, ptr %i.j, align 8, !tbaa !26
  %i.p = fsub double %i.n, %i.o
  store double %i.p, ptr %i.j, align 8, !tbaa !26
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !26
  %i.s = fneg double %i.r
  store double %i.s, ptr %i.q, align 8, !tbaa !26
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !26
  %i.y = fsub double %i.v, %i.x
  store double %i.y, ptr %i.w, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = add nuw nsw i64 %.03436, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, 20
  br i1 %exitcond.not, label %bb.h, label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.aa = add nuw nsw i64 %.03337, 1              ; 2 uses
  %exitcond38.not = icmp eq i64 %i.aa, 20
  br i1 %exitcond38.not, label %bb.i, label %bb.b

bb.i:                                             ; preds = %bb.h
  ret i32 0
}

declare i32 @IDASStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_SPGMR(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSol_SPGMRSetMaxRestarts(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IDASetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetPreconditioner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Precond(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, double noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.c = load double, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.e = load double, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 6528
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 6520
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = tail call i32 @IDAGetErrWeights(ptr noundef %i.g, ptr noundef %i.i) #12 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.13, i32 noundef %i.j) #13 ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.n = call i32 @IDAGetCurrentStep(ptr noundef %i.g, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %check_retval.exit99.thread, label %check_retval.exit99.preheader

check_retval.exit99.preheader:                    ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 6512
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 3312
  br label %bb.c

check_retval.exit99.thread:                       ; preds = %bb.b
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.v = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.14, i32 noundef %i.n) #13 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %check_retval.exit99.preheader, %check_retval.exit99
  %indvars.iv116 = phi i64 [ 0, %check_retval.exit99.preheader ], [ %indvars.iv.next117, %check_retval.exit99 ] ; 5 uses
  %i.w = trunc nuw nsw i64 %indvars.iv116 to i32
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = fmul double %i.e, %i.x                   ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv116
  %i.z = mul nuw nsw i64 %indvars.iv116, 40
  %i.aa = fmul double %i.y, f0x402921FB54442D28   ; 2 uses
  %invariant.gep108 = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv116
  %i.ab = insertelement <2 x double> poison, double %i.y, i64 0
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond.not, label %check_retval.exit99, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  %i.ad = uitofp nneg i32 %i.ac to double
  %gep = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ae = load ptr, ptr %gep, align 8, !tbaa !24  ; 3 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36
  %i.ai = shl nuw nsw i64 %indvars.iv, 1
  %i.aj = add nuw nsw i64 %i.ai, %i.z             ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aj ; 2 uses
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aj ; 2 uses
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.aj ; 3 uses
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !20  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !28 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !28 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load double, ptr %i.ak, align 8, !tbaa !26 ; 5 uses
  %i.bg = call double @llvm.fabs.f64(double %i.bf) ; 2 uses
  %i.bh = load double, ptr %i.a, align 8, !tbaa !26
  %i.bi = load double, ptr %i.ao, align 8, !tbaa !26
  %i.bj = call double @llvm.fabs.f64(double %i.bi)
  %i.bk = fmul double %i.bh, %i.bj                ; 2 uses
  %i.bl = load double, ptr %i.as, align 8, !tbaa !26
  %i.bm = fdiv double 1.000000e+00, %i.bl         ; 2 uses
  %i.bn = fcmp ogt double %i.bk, %i.bm
  %. = select i1 %i.bn, double %i.bk, double %i.bm ; 2 uses
  %i.bo = fcmp ogt double %i.bg, %.
  %i.bp = select i1 %i.bo, double %i.bg, double %.
  %i.bq = fmul double %i.bp, f0x3E50000000000000  ; 2 uses
  %i.br = fmul double %i.c, %i.ad                 ; 2 uses
  %i.bs = fmul double %i.br, f0x402921FB54442D28  ; 2 uses
  %i.bt = fadd double %i.bf, %i.bq                ; 4 uses
  %i.bu = fmul double %i.br, 5.000000e+01
  store double %i.bt, ptr %i.ak, align 8, !tbaa !26
  %i.bv = fdiv double -1.000000e+00, %i.bq        ; 2 uses
  %i.bw = load double, ptr %i.ba, align 8, !tbaa !26
  %i.bx = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bt, i64 1
  %i.bz = insertelement <2 x double> %i.ab, double %i.bw, i64 1
  %i.ca = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.bz, <2 x double> <double 1.000000e+00, double 0.000000e+00>) ; 2 uses
  %i.cb = load double, ptr %i.az, align 8, !tbaa !26 ; 2 uses
  %i.cc = load double, ptr %i.bb, align 8, !tbaa !26
  %i.cd = call double @sin(double noundef %i.bs) #12
  %i.ce = fmul double %i.cd, 1.000000e+03
  %i.cf = call double @sin(double noundef %i.aa) #12
  %i.cg = extractelement <2 x double> %i.ca, i64 0 ; 2 uses
  %i.ch = call double @llvm.fmuladd.f64(double %i.ce, double %i.cf, double %i.cg)
  %i.ci = load double, ptr %i.be, align 8, !tbaa !26
  %i.cj = load double, ptr %i.bd, align 8, !tbaa !26
  %i.ck = call double @llvm.fmuladd.f64(double %i.bt, double %i.cj, double 0.000000e+00)
  %i.cl = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.ci, i64 1
  %i.cp = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cq = insertelement <2 x double> %i.cp, double %i.ck, i64 1
  %i.cr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.co, <2 x double> %i.cq)
  %i.cs = load <2 x double>, ptr %i.s, align 8, !tbaa !26
  %i.ct = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cu, <2 x double> %i.cr) ; 2 uses
  %i.cw = extractelement <2 x double> %i.cv, i64 0
  %i.cx = fmul double %i.bt, %i.cw
  %i.cy = extractelement <2 x double> %i.cv, i64 1
  %i.cz = fmul double %i.cb, %i.cy
  %i.da = load ptr, ptr %i.ae, align 8, !tbaa !28 ; 3 uses
  %i.db = load double, ptr %i.ax, align 8, !tbaa !26
  %i.dc = fsub double %i.cx, %i.db
  %i.dd = fmul double %i.bv, %i.dc                ; 2 uses
  store double %i.dd, ptr %i.da, align 8, !tbaa !26
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !26
  %i.dg = fsub double %i.cz, %i.df
  %i.dh = fmul double %i.bv, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store double %i.dh, ptr %i.di, align 8, !tbaa !26
  %i.dj = fadd double %4, %i.dd
  store double %i.dj, ptr %i.da, align 8, !tbaa !26
  store double %i.bf, ptr %i.ak, align 8, !tbaa !26
  %i.dk = load double, ptr %i.az, align 8, !tbaa !26 ; 3 uses
  %i.dl = call double @llvm.fabs.f64(double %i.dk) ; 2 uses
  %i.dm = load double, ptr %i.a, align 8, !tbaa !26
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.do = load double, ptr %i.dn, align 8, !tbaa !26
  %i.dp = call double @llvm.fabs.f64(double %i.do)
  %i.dq = fmul double %i.dm, %i.dp                ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !26
  %i.dt = fdiv double 1.000000e+00, %i.ds         ; 2 uses
  %i.du = fcmp ogt double %i.dq, %i.dt
  %..1 = select i1 %i.du, double %i.dq, double %i.dt ; 2 uses
  %i.dv = fcmp ogt double %i.dl, %..1
  %i.dw = select i1 %i.dv, double %i.dl, double %..1
  %i.dx = fmul double %i.dw, f0x3E50000000000000  ; 2 uses
  %i.dy = fadd double %i.dk, %i.dx                ; 2 uses
  store double %i.dy, ptr %i.az, align 8, !tbaa !26
  %i.dz = fdiv double -1.000000e+00, %i.dx        ; 2 uses
  %i.ea = load double, ptr %i.ba, align 8, !tbaa !26
  %i.eb = load double, ptr %i.bb, align 8, !tbaa !26
  %i.ec = load double, ptr %i.bd, align 8, !tbaa !26
  %i.ed = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %i.ec, i64 1
  %i.eh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.eg, <2 x double> zeroinitializer)
  %i.ei = load double, ptr %i.be, align 8, !tbaa !26
  %i.ej = call double @sin(double noundef %i.bs) #12
  %i.ek = fmul double %i.ej, 1.000000e+03
  %i.el = call double @sin(double noundef %i.aa) #12
  %i.em = call double @llvm.fmuladd.f64(double %i.ek, double %i.el, double %i.cg)
  %i.en = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ep = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.ei, i64 1
  %i.er = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.eq, <2 x double> %i.eh)
  %i.es = load <2 x double>, ptr %i.s, align 8, !tbaa !26
  %i.et = insertelement <2 x double> poison, double %i.em, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.eu, <2 x double> %i.er)
  %i.ew = insertelement <2 x double> %i.eo, double %i.bf, i64 0
  %i.ex = fmul <2 x double> %i.ew, %i.ev          ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !28 ; 2 uses
  %i.fa = load double, ptr %i.ax, align 8, !tbaa !26
  %i.fb = extractelement <2 x double> %i.ex, i64 0
  %i.fc = fsub double %i.fb, %i.fa
  %i.fd = fmul double %i.dz, %i.fc
  store double %i.fd, ptr %i.ez, align 8, !tbaa !26
  %i.fe = load double, ptr %i.de, align 8, !tbaa !26
  %i.ff = extractelement <2 x double> %i.ex, i64 1
  %i.fg = fsub double %i.ff, %i.fe
  %i.fh = fmul double %i.dz, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store double %i.fh, ptr %i.fi, align 8, !tbaa !26
  store double %i.dk, ptr %i.az, align 8, !tbaa !26
  %gep109 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep108, i64 %indvars.iv
  %i.fj = load ptr, ptr %gep109, align 8, !tbaa !23
  %i.fk = call i64 @SUNDlsMat_denseGETRF(ptr noundef nonnull %i.ae, i64 noundef 2, i64 noundef 2, ptr noundef %i.fj) #12
  %.not96 = icmp eq i64 %i.fk, 0
  br i1 %.not96, label %bb.d, label %.loopexit

check_retval.exit99:                              ; preds = %bb.d
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next117, 20
  br i1 %exitcond119.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %check_retval.exit99, %bb.e, %check_retval.exit99.thread, %check_retval.exit
  %.090 = phi i32 [ 1, %bb.e ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit99.thread ], [ 0, %check_retval.exit99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.090
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PSolve(double %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr noundef %5, double %6, double %7, ptr nofree noundef readonly captures(none) %8) #0 {
bb.a:
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %4, ptr noundef %5) #12
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 3312
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 4 uses
  %i.c = shl nuw nsw i64 %indvars.iv, 1           ; 20 uses
  %i.d = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %indvars.iv ; 20 uses
  %i.e = getelementptr inbounds nuw [160 x i8], ptr %i.b, i64 %indvars.iv ; 20 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.c
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !23
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.j, i64 noundef 2, ptr noundef %i.k, ptr noundef %i.i) #12
  %i.l = load ptr, ptr %5, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.r, i64 noundef 2, ptr noundef %i.t, ptr noundef nonnull %i.p) #12
  %i.u = load ptr, ptr %5, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 640
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.aa, i64 noundef 2, ptr noundef %i.ac, ptr noundef nonnull %i.y) #12
  %i.ad = load ptr, ptr %5, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 960
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !23
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.aj, i64 noundef 2, ptr noundef %i.al, ptr noundef nonnull %i.ah) #12
  %i.am = load ptr, ptr %5, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1280
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !23
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.as, i64 noundef 2, ptr noundef %i.au, ptr noundef nonnull %i.aq) #12
  %i.av = load ptr, ptr %5, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1600
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !23
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.bb, i64 noundef 2, ptr noundef %i.bd, ptr noundef nonnull %i.az) #12
  %i.be = load ptr, ptr %5, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !36
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.c
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1920
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !23
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.bk, i64 noundef 2, ptr noundef %i.bm, ptr noundef nonnull %i.bi) #12
  %i.bn = load ptr, ptr %5, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !36
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.c
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2240
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !23
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.bt, i64 noundef 2, ptr noundef %i.bv, ptr noundef nonnull %i.br) #12
  %i.bw = load ptr, ptr %5, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !36
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.c
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2560
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !23
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.cc, i64 noundef 2, ptr noundef %i.ce, ptr noundef nonnull %i.ca) #12
  %i.cf = load ptr, ptr %5, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !36
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.c
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2880
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !23
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.cl, i64 noundef 2, ptr noundef %i.cn, ptr noundef nonnull %i.cj) #12
  %i.co = load ptr, ptr %5, align 8, !tbaa !34
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !36
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.c
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 3200
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !23
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.cu, i64 noundef 2, ptr noundef %i.cw, ptr noundef nonnull %i.cs) #12
  %i.cx = load ptr, ptr %5, align 8, !tbaa !34
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !36
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.c
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 3520
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !24
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !23
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.dd, i64 noundef 2, ptr noundef %i.df, ptr noundef nonnull %i.db) #12
  %i.dg = load ptr, ptr %5, align 8, !tbaa !34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !36
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.c
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 3840
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !24
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !23
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.dm, i64 noundef 2, ptr noundef %i.do, ptr noundef nonnull %i.dk) #12
  %i.dp = load ptr, ptr %5, align 8, !tbaa !34
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !36
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.c
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4160
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !23
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.dv, i64 noundef 2, ptr noundef %i.dx, ptr noundef nonnull %i.dt) #12
  %i.dy = load ptr, ptr %5, align 8, !tbaa !34
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !36
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.c
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4480
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !23
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.ee, i64 noundef 2, ptr noundef %i.eg, ptr noundef nonnull %i.ec) #12
  %i.eh = load ptr, ptr %5, align 8, !tbaa !34
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !36
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.c
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4800
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 120
end_hunk_0
