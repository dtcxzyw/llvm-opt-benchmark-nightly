Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/xs_kernel?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@calculate_micro_xs_doppler:bb.a
  %i.cy = fmul double %i.cn, %i.ct
  %i.cz = fmul double %i.co, %i.cr
  %i.da = fadd double %i.cz, %i.cy
  %i.db = fcmp uno double %i.da, 0.000000e+00
  br i1 %i.db, label %bb.n, label %bb.o, !prof !8

bb.n:                                             ; preds = %bb.m
  %i.dc = tail call { double, double } @__muldc3(double noundef %i.cn, double noundef %i.co, double noundef %i.cr, double noundef %i.ct) #8
  %i.dd = extractvalue { double, double } %i.dc, 0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.de = phi double [ %i.cw, %bb.l ], [ %i.cw, %bb.m ], [ %i.dd, %bb.n ]
  %i.df = fadd double %.065, %i.de                ; 2 uses
  %i.dg = fmul double %.sroa.7.0.copyload, %i.ca
  %i.dh = fmul double %.sroa.8.0.copyload, %i.cb
  %i.di = fsub double %i.dg, %i.dh                ; 3 uses
  %i.dj = fcmp uno double %i.di, 0.000000e+00
  br i1 %i.dj, label %bb.p, label %bb.r, !prof !8

bb.p:                                             ; preds = %bb.o
  %i.dk = fmul double %.sroa.7.0.copyload, %i.cb
  %i.dl = fmul double %.sroa.8.0.copyload, %i.ca
  %i.dm = fadd double %i.dk, %i.dl
  %i.dn = fcmp uno double %i.dm, 0.000000e+00
  br i1 %i.dn, label %bb.q, label %bb.r, !prof !8

bb.q:                                             ; preds = %bb.p
  %i.do = tail call { double, double } @__muldc3(double noundef %.sroa.7.0.copyload, double noundef %.sroa.8.0.copyload, double noundef %i.ca, double noundef %i.cb) #8
  %i.dp = extractvalue { double, double } %i.do, 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.dq = phi double [ %i.di, %bb.o ], [ %i.di, %bb.p ], [ %i.dp, %bb.q ]
  %i.dr = fadd double %.05364, %i.dq              ; 2 uses
  %i.ds = fmul double %.sroa.9.0.copyload, %i.ca
  %i.dt = fmul double %.sroa.10.0.copyload, %i.cb
  %i.du = fsub double %i.ds, %i.dt                ; 3 uses
  %i.dv = fcmp uno double %i.du, 0.000000e+00
  br i1 %i.dv, label %bb.s, label %bb.u, !prof !8

bb.s:                                             ; preds = %bb.r
  %i.dw = fmul double %.sroa.9.0.copyload, %i.cb
  %i.dx = fmul double %.sroa.10.0.copyload, %i.ca
  %i.dy = fadd double %i.dw, %i.dx
  %i.dz = fcmp uno double %i.dy, 0.000000e+00
  br i1 %i.dz, label %bb.t, label %bb.u, !prof !8

bb.t:                                             ; preds = %bb.s
  %i.ea = tail call { double, double } @__muldc3(double noundef %.sroa.9.0.copyload, double noundef %.sroa.10.0.copyload, double noundef %i.ca, double noundef %i.cb) #8
  %i.eb = extractvalue { double, double } %i.ea, 0
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ec = phi double [ %i.du, %bb.r ], [ %i.du, %bb.s ], [ %i.eb, %bb.t ]
  %i.ed = fadd double %.05463, %i.ec              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %.sroa.720.0.copyload, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.g
}

; Function Attrs: nounwind uwtable
define dso_local void @calculate_micro_xs(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, double noundef %2, ptr nofree noundef readonly byval(%struct.Input) align 8 captures(none) %3, ptr nofree noundef readonly byval(%struct.CalcDataPtrs) align 8 captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = sext i32 %1 to i64                       ; 4 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7    ; 2 uses
  %i.f = sitofp i32 %i.e to double
  %i.g = fdiv double 1.000000e+00, %i.f
  %i.h = fdiv double %2, %i.g
  %i.i = fptosi double %i.h to i32                ; 2 uses
  %i.j = icmp eq i32 %i.e, %i.i
  %i.k = sext i1 %i.j to i32
  %spec.select = add nsw i32 %i.k, %i.i
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.l = icmp sgt i32 %.sroa.3.0.copyload, 0
  br i1 %i.l, label %.lr.ph.i, label %calculate_sig_T.exit

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.354.0.copyload = load ptr, ptr %.sroa.354.0..sroa_idx, align 8
  %i.m = getelementptr inbounds [8 x i8], ptr %.sroa.354.0.copyload, i64 %i.c
  %wide.trip.count.i = zext nneg i32 %.sroa.3.0.copyload to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.p = load double, ptr %i.o, align 8, !tbaa !10
  %i.q = tail call double @sqrt(double noundef %2) #8, !tbaa !7
  %i.r = fmul double %i.p, %i.q                   ; 12 uses
  %i.s = trunc nuw nsw i64 %indvars.iv.i to i32
  switch i32 %i.s, label %bb.f [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.t = tail call double @atan(double noundef %i.r) #8, !tbaa !7
  %i.u = fadd double %i.r, %i.t
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.v = fmul double %i.r, 3.000000e+00
  %i.w = fneg double %i.r
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double %i.r, double 3.000000e+00)
  %i.y = fdiv double %i.v, %i.x
  %i.z = tail call double @atan(double noundef %i.y) #8, !tbaa !7
  %i.aa = fsub double %i.r, %i.z
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ab = fneg double %i.r
  %i.ac = fmul double %i.r, -6.000000e+00
  %i.ad = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ac, i64 1
  %i.af = insertelement <2 x double> poison, double %i.r, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ag, <2 x double> splat (double 1.500000e+01)) ; 2 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0
  %i.aj = fmul double %i.r, %i.ai
  %i.ak = extractelement <2 x double> %i.ah, i64 1
  %i.al = fdiv double %i.aj, %i.ak
  %i.am = tail call double @atan(double noundef %i.al) #8, !tbaa !7
  %i.an = fsub double %i.r, %i.am
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.024.i = phi double [ %i.u, %bb.c ], [ %i.aa, %bb.d ], [ %i.an, %bb.e ], [ %i.r, %bb.b ]
  %i.ao = fmul double %.024.i, 2.000000e+00       ; 2 uses
  %i.ap = tail call double @cos(double noundef %i.ao) #8, !tbaa !7
  %i.aq = tail call double @sin(double noundef %i.ao) #8, !tbaa !7 ; 2 uses
  %i.ar = fmul double %i.aq, 0.000000e+00
  %i.as = fsub double %i.ap, %i.ar
  %i.at = fneg double %i.aq
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store double %i.as, ptr %i.au, align 8
  store double %i.at, ptr %i.av, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %calculate_sig_T.exit, label %bb.b

calculate_sig_T.exit:                             ; preds = %bb.f, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !22
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.c
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !23
  %i.ba = sext i32 %spec.select to i64
  %i.bb = getelementptr inbounds [32 x i8], ptr %i.az, i64 %i.ba ; 5 uses
  %.sroa.011.0.copyload = load double, ptr %i.bb, align 8, !tbaa !10
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.412.0.copyload = load double, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !10
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.513.0.copyload = load double, ptr %.sroa.513.0..sroa_idx, align 8, !tbaa !10
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.614.0.copyload = load i32, ptr %.sroa.614.0..sroa_idx, align 8, !tbaa !7 ; 2 uses
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %.sroa.715.0.copyload = load i32, ptr %.sroa.715.0..sroa_idx, align 4, !tbaa !7 ; 2 uses
  %i.bc = fmul double %2, %.sroa.011.0.copyload   ; 2 uses
  %i.bd = fmul double %2, %.sroa.412.0.copyload   ; 2 uses
  %i.be = fmul double %2, %.sroa.513.0.copyload   ; 2 uses
  %i.bf = icmp slt i32 %.sroa.614.0.copyload, %.sroa.715.0.copyload
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %calculate_sig_T.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !24
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.c
  %i.bj = sext i32 %.sroa.614.0.copyload to i64
  %i.bk = insertelement <2 x double> poison, double %2, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.g

._crit_edge:                                      ; preds = %bb.s, %calculate_sig_T.exit
  %.049.lcssa = phi double [ %i.bc, %calculate_sig_T.exit ], [ %i.cv, %bb.s ] ; 2 uses
  %.048.lcssa = phi double [ %i.bd, %calculate_sig_T.exit ], [ %i.di, %bb.s ] ; 2 uses
  %.047.lcssa = phi double [ %i.be, %calculate_sig_T.exit ], [ %i.dv, %bb.s ]
  %i.bm = fsub double %.049.lcssa, %.048.lcssa
  store double %.049.lcssa, ptr %0, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.048.lcssa, ptr %i.bn, align 8, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.047.lcssa, ptr %i.bo, align 8, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.bm, ptr %i.bp, align 8, !tbaa !10
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.04757 = phi double [ %i.be, %.lr.ph ], [ %i.dv, %bb.s ]
  %.04856 = phi double [ %i.bd, %.lr.ph ], [ %i.di, %bb.s ]
  %.04955 = phi double [ %i.bc, %.lr.ph ], [ %i.cv, %bb.s ]
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !23
  %i.br = getelementptr inbounds [72 x i8], ptr %i.bq, i64 %indvars.iv ; 6 uses
  %.sroa.0.0.copyload = load double, ptr %i.br, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !25
  %.sroa.5.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bs = load <2 x double>, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %.sroa.11.0.copyload = load i16, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !27
  %i.bt = tail call double @sqrt(double noundef %2) #8, !tbaa !7
  %i.bu = fsub double %.sroa.0.0.copyload, %i.bt
  %i.bv = load <2 x double>, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  %6 = load <2 x double>, ptr %.sroa.5.0..sroa_idx.a, align 8 ; 4 uses
  %i.bw = tail call { double, double } @__divdc3(double noundef -0.000000e+00, double noundef 1.000000e+00, double noundef %i.bu, double noundef %.sroa.4.0.copyload) #8 ; 2 uses
  %i.bx = extractvalue { double, double } %i.bw, 0
  %i.by = extractvalue { double, double } %i.bw, 1
  %i.bz = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.by, i64 1
  %i.cb = fdiv <2 x double> %i.ca, %i.bl          ; 8 uses
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.cd = extractelement <2 x double> %i.cb, i64 0 ; 3 uses
  %i.ce = fmul <2 x double> %6, %i.cb             ; 2 uses
  %i.cf = fmul <2 x double> %6, %i.cc
  %shift = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fsub <2 x double> %i.ce, %shift
  %i.cg = extractelement <2 x double> %foldExtExtBinop.a, i64 0 ; 3 uses
  %7 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cf) ; 3 uses
  %i.ch = fcmp uno double %i.cg, 0.000000e+00
  br i1 %i.ch, label %bb.h, label %bb.j, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.ci = fcmp uno double %7, 0.000000e+00
  br i1 %i.ci, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.cj = extractelement <2 x double> %i.cb, i64 1
  %8 = extractelement <2 x double> %6, i64 0
  %9 = extractelement <2 x double> %6, i64 1
  %10 = tail call { double, double } @__muldc3(double noundef %8, double noundef %9, double noundef %i.cd, double noundef %i.cj) #8 ; 2 uses
  %11 = extractvalue { double, double } %10, 0
  %12 = extractvalue { double, double } %10, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ck = phi double [ %i.cg, %bb.g ], [ %i.cg, %bb.h ], [ %11, %bb.i ] ; 3 uses
  %i.cl = phi double [ %7, %bb.g ], [ %7, %bb.h ], [ %12, %bb.i ] ; 3 uses
  %i.cm = sext i16 %.sroa.11.0.copyload to i64
  %i.cn = getelementptr inbounds [16 x i8], ptr %5, i64 %i.cm ; 2 uses
  %13 = load double, ptr %i.cn, align 8           ; 3 uses
  %14 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %15 = load double, ptr %14, align 8             ; 3 uses
  %16 = fmul double %i.ck, %13
  %i.co = fmul double %i.cl, %15
  %i.cp = fsub double %16, %i.co                  ; 3 uses
  %i.cq = fcmp uno double %i.cp, 0.000000e+00
  br i1 %i.cq, label %bb.k, label %bb.m, !prof !8

bb.k:                                             ; preds = %bb.j
  %17 = fmul double %i.ck, %15
  %18 = fmul double %i.cl, %13
  %19 = fadd double %18, %17
  %i.cr = fcmp uno double %19, 0.000000e+00
  br i1 %i.cr, label %bb.l, label %bb.m, !prof !8

bb.l:                                             ; preds = %bb.k
  %i.cs = tail call { double, double } @__muldc3(double noundef %i.ck, double noundef %i.cl, double noundef %13, double noundef %15) #8
  %i.ct = extractvalue { double, double } %i.cs, 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.cu = phi double [ %i.cp, %bb.j ], [ %i.cp, %bb.k ], [ %i.ct, %bb.l ]
  %i.cv = fadd double %.04955, %i.cu              ; 2 uses
  %i.cw = fmul <2 x double> %i.bs, %i.cb          ; 2 uses
  %shift76.a = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop77.a = fsub <2 x double> %i.cw, %shift76.a
  %i.cx = extractelement <2 x double> %foldExtExtBinop77.a, i64 0 ; 3 uses
  %i.cy = fcmp uno double %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.n, label %bb.p, !prof !8

bb.n:                                             ; preds = %bb.m
  %i.cz = fmul <2 x double> %i.bs, %i.cc
  %i.da = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cz)
  %i.db = fcmp uno double %i.da, 0.000000e+00
  br i1 %i.db, label %bb.o, label %bb.p, !prof !8

bb.o:                                             ; preds = %bb.n
  %i.dc = extractelement <2 x double> %i.bs, i64 0
  %i.dd = extractelement <2 x double> %i.bs, i64 1
  %i.de = extractelement <2 x double> %i.cb, i64 1
  %i.df = tail call { double, double } @__muldc3(double noundef %i.dc, double noundef %i.dd, double noundef %i.cd, double noundef %i.de) #8
  %i.dg = extractvalue { double, double } %i.df, 0
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.dh = phi double [ %i.cx, %bb.m ], [ %i.cx, %bb.n ], [ %i.dg, %bb.o ]
  %i.di = fadd double %.04856, %i.dh              ; 2 uses
  %i.dj = fmul <2 x double> %i.bv, %i.cb          ; 2 uses
  %shift79 = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop80 = fsub <2 x double> %i.dj, %shift79
  %i.dk = extractelement <2 x double> %foldExtExtBinop80, i64 0 ; 3 uses
  %i.dl = fcmp uno double %i.dk, 0.000000e+00
  br i1 %i.dl, label %bb.q, label %bb.s, !prof !8

bb.q:                                             ; preds = %bb.p
  %i.dm = fmul <2 x double> %i.bv, %i.cc
  %i.dn = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.dm)
  %i.do = fcmp uno double %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.r, label %bb.s, !prof !8

bb.r:                                             ; preds = %bb.q
  %i.dp = extractelement <2 x double> %i.bv, i64 0
  %i.dq = extractelement <2 x double> %i.bv, i64 1
  %i.dr = extractelement <2 x double> %i.cb, i64 1
  %i.ds = tail call { double, double } @__muldc3(double noundef %i.dp, double noundef %i.dq, double noundef %i.cd, double noundef %i.dr) #8
  %i.dt = extractvalue { double, double } %i.ds, 0
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.du = phi double [ %i.dk, %bb.p ], [ %i.dk, %bb.q ], [ %i.dt, %bb.r ]
  %i.dv = fadd double %.04757, %i.du              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %.sroa.715.0.copyload, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.g
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @calculate_sig_T(i32 noundef %0, double noundef %1, ptr nofree noundef readonly byval(%struct.Input) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.CalcDataPtrs) align 8 captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = sext i32 %0 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load double, ptr %i.i, align 8, !tbaa !10
  %i.k = tail call double @sqrt(double noundef %1) #8, !tbaa !7
  %i.l = fmul double %i.j, %i.k                   ; 12 uses
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.m, label %bb.f [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = tail call double @atan(double noundef %i.l) #8, !tbaa !7
  %i.o = fadd double %i.l, %i.n
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.p = fmul double %i.l, 3.000000e+00
  %i.q = fneg double %i.l
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.l, double 3.000000e+00)
  %i.s = fdiv double %i.p, %i.r
  %i.t = tail call double @atan(double noundef %i.s) #8, !tbaa !7
  %i.u = fsub double %i.l, %i.t
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.v = fneg double %i.l
  %i.w = fmul double %i.l, -6.000000e+00
  %i.x = insertelement <2 x double> poison, double %i.v, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.w, i64 1
  %i.z = insertelement <2 x double> poison, double %i.l, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.aa, <2 x double> splat (double 1.500000e+01)) ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0
  %i.ad = fmul double %i.l, %i.ac
  %i.ae = extractelement <2 x double> %i.ab, i64 1
  %i.af = fdiv double %i.ad, %i.ae
  %i.ag = tail call double @atan(double noundef %i.af) #8, !tbaa !7
  %i.ah = fsub double %i.l, %i.ag
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e, %bb.c
  %.024 = phi double [ %i.o, %bb.c ], [ %i.u, %bb.d ], [ %i.ah, %bb.e ], [ %i.l, %bb.b ]
  %i.ai = fmul double %.024, 2.000000e+00         ; 2 uses
  %i.aj = tail call double @cos(double noundef %i.ai) #8, !tbaa !7
  %i.ak = tail call double @sin(double noundef %i.ai) #8, !tbaa !7 ; 2 uses
  %i.al = fmul double %i.ak, 0.000000e+00
  %i.am = fsub double %i.aj, %i.al
  %i.an = fneg double %i.ak
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store double %i.am, ptr %i.ao, align 8
  store double %i.an, ptr %i.ap, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"any p2 pointer", !11, i64 0}
!14 = !{!"p2 int", !13, i64 0}
!15 = !{!"p2 double", !13, i64 0}
!16 = !{!"", !12, i64 0, !14, i64 8, !15, i64 16}
!17 = !{!"", !12, i64 0, !12, i64 8, !16, i64 16, !13, i64 40, !13, i64 48, !15, i64 56}
!18 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!19 = !{!"p1 double", !11, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!17, !12, i64 8}
end_hunk_0
