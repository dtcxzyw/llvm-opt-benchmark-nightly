inline.NumInlined: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lsrkStep_TakeStepSSPs2:bb.a
  store i32 %i.ec, ptr %i.h, align 8, !tbaa !72
  %i.ed = fmul double %i.s, %i.m
  %i.ee = fdiv double 1.000000e+00, %i.ed
  store double %i.ee, ptr %i.e, align 8, !tbaa !68
  %i.ef = load ptr, ptr %i.bi, align 8, !tbaa !91
  store ptr %i.ef, ptr %i.g, align 8, !tbaa !92
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store double %i.r, ptr %i.eg, align 8, !tbaa !68
  %i.eh = load ptr, ptr %i.be, align 8, !tbaa !88
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !92
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store double %i.u, ptr %i.ej, align 8, !tbaa !68
  %i.ek = load ptr, ptr %i.dq, align 8, !tbaa !70
  %i.el = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !92
  %i.em = load ptr, ptr %i.bi, align 8, !tbaa !91
  %i.en = tail call i32 @N_VLinearCombination(i32 noundef 3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef %i.em) #12
  %.not165 = icmp eq i32 %i.en, 0
  br i1 %.not165, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !93 ; 2 uses
  %.not166 = icmp eq ptr %i.ep, null
  br i1 %.not166, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eq = load double, ptr %i.bd, align 8, !tbaa !89
  %i.er = load ptr, ptr %i.bi, align 8, !tbaa !91
  %i.es = load ptr, ptr %i.ds, align 8, !tbaa !64
  %i.et = tail call i32 %i.ep(double noundef %i.eq, ptr noundef %i.er, ptr noundef %i.es) #12
  %.not167 = icmp eq i32 %i.et, 0
  br i1 %.not167, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.eu = load i32, ptr %i.bk, align 8, !tbaa !56
  %.not168 = icmp eq i32 %i.eu, 0
  br i1 %.not168, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !69 ; 2 uses
  %i.ex = load ptr, ptr %i.dq, align 8, !tbaa !70
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ew, double noundef %.0134, ptr noundef %i.ex, ptr noundef %i.ew) #12
  %i.ey = load ptr, ptr %i.bi, align 8, !tbaa !91
  %i.ez = load ptr, ptr %i.ev, align 8, !tbaa !69 ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ey, double noundef -1.000000e+00, ptr noundef %i.ez, ptr noundef %i.ez) #12
  %i.fa = load ptr, ptr %i.ev, align 8, !tbaa !69
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !94
  %i.fd = tail call double @N_VWrmsNorm(ptr noundef %i.fa, ptr noundef %i.fc) #12
  store double %i.fd, ptr %1, align 8, !tbaa !68
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.q, %bb.r, %bb.v, %lsrkStep_AccessStepMem.exit, %bb.g, %bb.h, %bb.m, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ac, %bb.ae, %bb.ad
  %.2 = phi i32 [ -21, %lsrkStep_AccessStepMem.exit ], [ -8, %bb.h ], [ -38, %bb.m ], [ -41, %bb.x ], [ -8, %bb.y ], [ 9, %bb.z ], [ -28, %bb.aa ], [ -37, %bb.ac ], [ 0, %bb.ad ], [ -41, %bb.g ], [ 0, %bb.ae ], [ -41, %bb.p ], [ -8, %bb.q ], [ 9, %bb.r ], [ -38, %bb.v ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 -41, 10) i32 @lsrkStep_TakeStepSSPs3(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !67
  store double 0.000000e+00, ptr %1, align 8, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 14 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %lsrkStep_AccessStepMem.exit, label %bb.b

lsrkStep_AccessStepMem.exit:                      ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 2847, ptr noundef nonnull @__func__.lsrkStep_TakeStepSSPs3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.47) #12
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 6 uses
  store i32 0, ptr %i.h, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !73   ; 2 uses
  %i.k = sitofp i32 %i.j to double                ; 3 uses
  %i.l = icmp slt i32 %i.j, 1
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call double @sqrt(double noundef %i.k) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi double [ %i.m, %bb.c ], [ 0.000000e+00, %bb.b ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !74 ; 2 uses
  %i.q = fsub double %i.k, %i.n
  %i.r = fdiv double %i.p, %i.q                   ; 10 uses
  %i.s = fdiv double %i.p, %i.k                   ; 5 uses
  %i.t = tail call double @llvm.round.f64(double %i.n)
  %i.u = fptosi double %i.t to i32                ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !62
  %.not251 = icmp eq i32 %i.w, 0
  br i1 %.not251, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63   ; 2 uses
  %.not252 = icmp eq ptr %i.y, null
  br i1 %.not252, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.aa = load double, ptr %i.z, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64
  %i.af = tail call i32 %i.y(double noundef %i.aa, ptr noundef %i.ac, ptr noundef %i.ae) #12
  %.not253 = icmp eq i32 %i.af, 0
  br i1 %.not253, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !87
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !88
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64
  %i.ap = tail call i32 %i.ag(double noundef %i.ai, ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.ao) #12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !65
  %i.as = add nsw i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !65
  %.not254 = icmp eq i32 %i.ap, 0
  br i1 %.not254, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.v, align 8, !tbaa !62
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 6 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !87
  %i.av = fadd double %i.r, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 18 uses
  store double %i.av, ptr %i.aw, align 8, !tbaa !89
  store i32 1, ptr %i.h, align 8, !tbaa !72
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 22 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !91
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ay, double noundef %i.r, ptr noundef %i.ba, ptr noundef %i.bc) #12
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 6 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !56
  %.not255 = icmp eq i32 %i.be, 0
  br i1 %.not255, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !88
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !69
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.bf, double noundef %i.s, ptr noundef %i.bg, ptr noundef %i.bi) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !90 ; 2 uses
  %.not256 = icmp eq ptr %i.bk, null
  br i1 %.not256, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load double, ptr %i.aw, align 8, !tbaa !89
  %i.bm = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !64
  %i.bp = tail call i32 %i.bk(double noundef %i.bl, ptr noundef %i.bm, ptr noundef %i.bo) #12
  %.not257 = icmp eq i32 %i.bp, 0
  br i1 %.not257, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bq = add nsw i32 %i.u, -1                    ; 2 uses
  %i.br = add nsw i32 %i.u, -2
  %i.bs = mul nsw i32 %i.bq, %i.br                ; 2 uses
  %i.bt = sdiv i32 %i.bs, 2                       ; 3 uses
  %.not258327 = icmp slt i32 %i.bs, 4
  br i1 %.not258327, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 656
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 2)
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.v
  %.0229328 = phi i32 [ 2, %.lr.ph ], [ %i.da, %bb.v ] ; 4 uses
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !63 ; 2 uses
  %.not259 = icmp eq ptr %i.bz, null
  br i1 %.not259, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = load double, ptr %i.aw, align 8, !tbaa !89
  %i.cb = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !64
  %i.cd = tail call i32 %i.bz(double noundef %i.ca, ptr noundef %i.cb, ptr noundef %i.cc) #12
  %.not260 = icmp eq i32 %i.cd, 0
  br i1 %.not260, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.cf = load double, ptr %i.aw, align 8, !tbaa !89
  %i.cg = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.ch = load ptr, ptr %i.bw, align 8, !tbaa !110
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !64
  %i.cj = tail call i32 %i.ce(double noundef %i.cf, ptr noundef %i.cg, ptr noundef %i.ch, ptr noundef %i.ci) #12 ; 2 uses
  %i.ck = load i64, ptr %i.bx, align 8, !tbaa !65
  %i.cl = add nsw i64 %i.ck, 1
  store i64 %i.cl, ptr %i.bx, align 8, !tbaa !65
  %i.cm = icmp slt i32 %i.cj, 0
  br i1 %i.cm, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not261 = icmp eq i32 %i.cj, 0
  br i1 %.not261, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.cn = load double, ptr %i.at, align 8, !tbaa !87
  %i.co = uitofp nneg i32 %.0229328 to double
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.co, double %i.r, double %i.cn)
  store double %i.cp, ptr %i.aw, align 8, !tbaa !89
  store i32 %.0229328, ptr %i.h, align 8, !tbaa !72
  %i.cq = load ptr, ptr %i.bb, align 8, !tbaa !91 ; 2 uses
  %i.cr = load ptr, ptr %i.bw, align 8, !tbaa !110
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.cq, double noundef %i.r, ptr noundef %i.cr, ptr noundef %i.cq) #12
  %i.cs = load i32, ptr %i.bd, align 8, !tbaa !56
  %.not262 = icmp eq i32 %i.cs, 0
  br i1 %.not262, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ct = load ptr, ptr %i.by, align 8, !tbaa !69 ; 2 uses
  %i.cu = load ptr, ptr %i.bw, align 8, !tbaa !110
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ct, double noundef %i.s, ptr noundef %i.cu, ptr noundef %i.ct) #12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cv = load ptr, ptr %i.bj, align 8, !tbaa !90 ; 2 uses
  %.not263 = icmp eq ptr %i.cv, null
  br i1 %.not263, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = load double, ptr %i.aw, align 8, !tbaa !89
  %i.cx = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.cy = load ptr, ptr %i.bv, align 8, !tbaa !64
  %i.cz = tail call i32 %i.cv(double noundef %i.cw, ptr noundef %i.cx, ptr noundef %i.cy) #12
  %.not264 = icmp eq i32 %i.cz, 0
  br i1 %.not264, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.da = add nuw nsw i32 %.0229328, 1
  %exitcond.not = icmp eq i32 %.0229328, %smax
  br i1 %exitcond.not, label %._crit_edge, label %bb.n

._crit_edge:                                      ; preds = %bb.v, %bb.m
  %i.db = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !70
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.db, ptr noundef %i.dd) #12
  %i.de = add nsw i32 %i.u, 1
  %i.df = mul nsw i32 %i.de, %i.u
  %i.dg = sdiv i32 %i.df, 2                       ; 4 uses
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  %.not265.not.not331 = icmp slt i32 %i.bt, %i.dh
  br i1 %.not265.not.not331, label %.lr.ph334, label %._crit_edge335

.lr.ph334:                                        ; preds = %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 656
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph334, %bb.ae
  %.0228332.in = phi i32 [ %i.bt, %.lr.ph334 ], [ %.0228332, %bb.ae ]
  %.0228332 = add i32 %.0228332.in, 1             ; 4 uses
  %i.dn = load ptr, ptr %i.di, align 8, !tbaa !63 ; 2 uses
  %.not266 = icmp eq ptr %i.dn, null
  br i1 %.not266, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = load double, ptr %i.aw, align 8, !tbaa !89
  %i.dp = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.dq = load ptr, ptr %i.dj, align 8, !tbaa !64
  %i.dr = tail call i32 %i.dn(double noundef %i.do, ptr noundef %i.dp, ptr noundef %i.dq) #12
  %.not267 = icmp eq i32 %i.dr, 0
  br i1 %.not267, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.dt = load double, ptr %i.aw, align 8, !tbaa !89
  %i.du = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.dv = load ptr, ptr %i.dk, align 8, !tbaa !110
  %i.dw = load ptr, ptr %i.dj, align 8, !tbaa !64
  %i.dx = tail call i32 %i.ds(double noundef %i.dt, ptr noundef %i.du, ptr noundef %i.dv, ptr noundef %i.dw) #12 ; 2 uses
  %i.dy = load i64, ptr %i.dl, align 8, !tbaa !65
  %i.dz = add nsw i64 %i.dy, 1
  store i64 %i.dz, ptr %i.dl, align 8, !tbaa !65
  %i.ea = icmp slt i32 %i.dx, 0
  br i1 %i.ea, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not268 = icmp eq i32 %i.dx, 0
  br i1 %.not268, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.eb = load double, ptr %i.at, align 8, !tbaa !87
  %i.ec = sitofp i32 %.0228332 to double
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.r, double %i.eb)
  store double %i.ed, ptr %i.aw, align 8, !tbaa !89
  store i32 %.0228332, ptr %i.h, align 8, !tbaa !72
  %i.ee = load ptr, ptr %i.bb, align 8, !tbaa !91 ; 2 uses
  %i.ef = load ptr, ptr %i.dk, align 8, !tbaa !110
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ee, double noundef %i.r, ptr noundef %i.ef, ptr noundef %i.ee) #12
  %i.eg = load i32, ptr %i.bd, align 8, !tbaa !56
  %.not269 = icmp eq i32 %i.eg, 0
  br i1 %.not269, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eh = load ptr, ptr %i.dm, align 8, !tbaa !69 ; 2 uses
  %i.ei = load ptr, ptr %i.dk, align 8, !tbaa !110
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.eh, double noundef %i.s, ptr noundef %i.ei, ptr noundef %i.eh) #12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ej = load ptr, ptr %i.bj, align 8, !tbaa !90 ; 2 uses
  %.not270 = icmp eq ptr %i.ej, null
  br i1 %.not270, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ek = load double, ptr %i.aw, align 8, !tbaa !89
  %i.el = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.em = load ptr, ptr %i.dj, align 8, !tbaa !64
  %i.en = tail call i32 %i.ej(double noundef %i.ek, ptr noundef %i.el, ptr noundef %i.em) #12
  %.not271 = icmp eq i32 %i.en, 0
  br i1 %.not271, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %exitcond347.not = icmp eq i32 %.0228332, %i.dh
  br i1 %exitcond347.not, label %._crit_edge335, label %bb.w

._crit_edge335:                                   ; preds = %bb.ae, %._crit_edge
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !63 ; 2 uses
  %.not272 = icmp eq ptr %i.ep, null
  br i1 %.not272, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %._crit_edge335
  %i.eq = load double, ptr %i.aw, align 8, !tbaa !89
  %i.er = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !64
  %i.eu = tail call i32 %i.ep(double noundef %i.eq, ptr noundef %i.er, ptr noundef %i.et) #12
  %.not273 = icmp eq i32 %i.eu, 0
  br i1 %.not273, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af, %._crit_edge335
  %i.ev = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.ew = load double, ptr %i.aw, align 8, !tbaa !89
  %i.ex = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 6 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !110
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !64
  %i.fc = tail call i32 %i.ev(double noundef %i.ew, ptr noundef %i.ex, ptr noundef %i.ez, ptr noundef %i.fb) #12 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !65
  %i.ff = add nsw i64 %i.fe, 1
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !65
  %i.fg = icmp slt i32 %i.fc, 0
  br i1 %i.fg, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not274 = icmp eq i32 %i.fc, 0
  br i1 %.not274, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.fh = load double, ptr %i.at, align 8, !tbaa !87
  %i.fi = mul nsw i32 %i.bq, %i.u
  %i.fj = sdiv i32 %i.fi, 2
  %i.fk = sitofp i32 %i.fj to double
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.fk, double %i.r, double %i.fh)
  store double %i.fl, ptr %i.aw, align 8, !tbaa !89
  store i32 %i.dg, ptr %i.h, align 8, !tbaa !72
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.n, double 2.000000e+00, double -1.000000e+00) ; 2 uses
  %i.fn = load ptr, ptr %i.bb, align 8, !tbaa !91
  store ptr %i.fn, ptr %i.g, align 8, !tbaa !92
  %i.fo = insertelement <2 x double> poison, double %i.n, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fq = fadd <2 x double> %i.fp, <double -1.000000e+00, double -0.000000e+00> ; 2 uses
  %i.fr = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = fdiv <2 x double> %i.fq, %i.fs
  store <2 x double> %i.ft, ptr %i.e, align 8, !tbaa !68
  %i.fu = load ptr, ptr %i.dc, align 8, !tbaa !70
  %i.fv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !92
  %i.fw = extractelement <2 x double> %i.fq, i64 0
  %i.fx = fmul double %i.fw, %i.r
  %i.fy = fdiv double %i.fx, %i.fm
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store double %i.fy, ptr %i.fz, align 8, !tbaa !68
  %i.ga = load ptr, ptr %i.ey, align 8, !tbaa !110
  %i.gb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !92
  %i.gc = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.gd = tail call i32 @N_VLinearCombination(i32 noundef 3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef %i.gc) #12
  %.not275 = icmp eq i32 %i.gd, 0
  br i1 %.not275, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.ge = load i32, ptr %i.bd, align 8, !tbaa !56
  %.not276 = icmp eq i32 %i.ge, 0
  br i1 %.not276, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !69 ; 2 uses
  %i.gh = load ptr, ptr %i.ey, align 8, !tbaa !110
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.gg, double noundef %i.s, ptr noundef %i.gh, ptr noundef %i.gg) #12
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gi = load ptr, ptr %i.bj, align 8, !tbaa !90 ; 2 uses
  %.not277 = icmp eq ptr %i.gi, null
  br i1 %.not277, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gj = load double, ptr %i.aw, align 8, !tbaa !89
  %i.gk = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.gl = load ptr, ptr %i.fa, align 8, !tbaa !64
  %i.gm = tail call i32 %i.gi(double noundef %i.gj, ptr noundef %i.gk, ptr noundef %i.gl) #12
  %.not278 = icmp eq i32 %i.gm, 0
  br i1 %.not278, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gn = load i32, ptr %i.i, align 4, !tbaa !73
  %.not279.not.not338 = icmp slt i32 %i.dg, %i.gn
  br i1 %.not279.not.not338, label %.lr.ph341, label %._crit_edge342

.lr.ph341:                                        ; preds = %bb.an
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1080
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph341, %bb.ba
  %.0339.in = phi i32 [ %i.dg, %.lr.ph341 ], [ %.0339, %bb.ba ]
  %.0339 = add nsw i32 %.0339.in, 1               ; 6 uses
  %i.gq = load ptr, ptr %i.eo, align 8, !tbaa !63 ; 2 uses
  %.not280 = icmp eq ptr %i.gq, null
  br i1 %.not280, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gr = load double, ptr %i.aw, align 8, !tbaa !89
  %i.gs = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.gt = load ptr, ptr %i.fa, align 8, !tbaa !64
  %i.gu = tail call i32 %i.gq(double noundef %i.gr, ptr noundef %i.gs, ptr noundef %i.gt) #12
  %.not281 = icmp eq i32 %i.gu, 0
  br i1 %.not281, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gv = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.gw = load double, ptr %i.aw, align 8, !tbaa !89
  %i.gx = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.gy = load ptr, ptr %i.ey, align 8, !tbaa !110
  %i.gz = load ptr, ptr %i.fa, align 8, !tbaa !64
  %i.ha = tail call i32 %i.gv(double noundef %i.gw, ptr noundef %i.gx, ptr noundef %i.gy, ptr noundef %i.gz) #12 ; 2 uses
  %i.hb = load i64, ptr %i.fd, align 8, !tbaa !65
  %i.hc = add nsw i64 %i.hb, 1
  store i64 %i.hc, ptr %i.fd, align 8, !tbaa !65
  %i.hd = icmp slt i32 %i.ha, 0
  br i1 %i.hd, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not282 = icmp eq i32 %i.ha, 0
  br i1 %.not282, label %bb.as, label %.thread

bb.as:                                            ; preds = %bb.ar
  %i.he = load double, ptr %i.at, align 8, !tbaa !87
  %i.hf = sub nsw i32 %.0339, %i.u
  %i.hg = sitofp i32 %i.hf to double
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.r, double %i.he)
  store double %i.hh, ptr %i.aw, align 8, !tbaa !89
  store i32 %.0339, ptr %i.h, align 8, !tbaa !72
  %i.hi = load ptr, ptr %i.bb, align 8, !tbaa !91 ; 2 uses
  %i.hj = load ptr, ptr %i.ey, align 8, !tbaa !110
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.hi, double noundef %i.r, ptr noundef %i.hj, ptr noundef %i.hi) #12
  %i.hk = load i32, ptr %i.bd, align 8, !tbaa !56
  %.not283 = icmp eq i32 %i.hk, 0
  br i1 %.not283, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hl = load ptr, ptr %i.go, align 8, !tbaa !69 ; 2 uses
  %i.hm = load ptr, ptr %i.ey, align 8, !tbaa !110
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.hl, double noundef %i.s, ptr noundef %i.hm, ptr noundef %i.hl) #12
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hn = load i32, ptr %i.i, align 4, !tbaa !73  ; 2 uses
  %i.ho = icmp slt i32 %.0339, %i.hn
  br i1 %i.ho, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.hp = load ptr, ptr %i.bj, align 8, !tbaa !90 ; 2 uses
  %.not284 = icmp eq ptr %i.hp, null
  br i1 %.not284, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hq = load double, ptr %i.aw, align 8, !tbaa !89
  %i.hr = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.hs = load ptr, ptr %i.fa, align 8, !tbaa !64
  %i.ht = tail call i32 %i.hp(double noundef %i.hq, ptr noundef %i.hr, ptr noundef %i.hs) #12
  %.not287 = icmp eq i32 %i.ht, 0
  br i1 %.not287, label %bb.ba, label %.thread

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.hu = icmp eq i32 %.0339, %i.hn
  br i1 %i.hu, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.hv = load ptr, ptr %i.gp, align 8, !tbaa !93 ; 2 uses
  %.not285 = icmp eq ptr %i.hv, null
  br i1 %.not285, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hw = load double, ptr %i.at, align 8, !tbaa !87
  %i.hx = load double, ptr %i.o, align 8, !tbaa !74
  %i.hy = fadd double %i.hw, %i.hx
  %i.hz = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.ia = load ptr, ptr %i.fa, align 8, !tbaa !64
  %i.ib = tail call i32 %i.hv(double noundef %i.hy, ptr noundef %i.hz, ptr noundef %i.ia) #12
  %.not286 = icmp eq i32 %i.ib, 0
  br i1 %.not286, label %bb.ba, label %.thread

bb.ba:                                            ; preds = %bb.aw, %bb.az, %bb.ay, %bb.ax
  %i.ic = load i32, ptr %i.i, align 4, !tbaa !73
  %.not279.not.not = icmp slt i32 %.0339, %i.ic
  br i1 %.not279.not.not, label %bb.ao, label %._crit_edge342

._crit_edge342:                                   ; preds = %bb.ba, %bb.an
end_hunk_0
