Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/ortho?download=true
inline.NumInlined: 11
inline.NumDeleted: 2
begin_hunk_0_@_ZL15ortho_s_forward5PJ_LPP8PJconsts:bb.a
  %i.bd = phi <2 x double> [ %i.bc, %bb.l ], [ splat (double +inf), %bb.c ], [ splat (double +inf), %bb.f ], [ splat (double +inf), %bb.j ] ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %i.be, 0
  %i.bf = extractelement <2 x double> %i.bd, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.bf, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15ortho_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.e = load double, ptr %i.d, align 8, !tbaa !49
  %i.f = load <2 x double>, ptr %i.c, align 8, !tbaa !50 ; 3 uses
  %i.g = insertelement <2 x double> poison, double %1, i64 0
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x double> %i.h, %i.f
  %i.j = fneg <2 x double> %i.f
  %i.k = shufflevector <2 x double> %i.f, <2 x double> %i.j, <2 x i32> <i32 1, i32 2>
  %i.l = insertelement <2 x double> poison, double %0, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.m, <2 x double> %i.i)
  %i.o = insertelement <2 x double> poison, double %i.e, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.n, %i.p             ; 10 uses
  %i.r = extractelement <2 x double> %i.q, i64 0  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !43   ; 3 uses
  switch i32 %i.t, label %bb.n [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.u = fmul <2 x double> %i.q, %i.q             ; 2 uses
  %shift = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.u
  %i.v = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 4 uses
  %i.w = fcmp ult double %i.v, f0x3FEFFFFFFFFFFFF7
  br i1 %i.w, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = fadd double %i.v, -1.000000e+00
  %i.y = fcmp ogt double %i.x, 1.000000e-10
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !62
  %i.ac = fmul double %i.v, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !44
  %i.af = fneg double %i.ae
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.v, double 1.000000e+00)
  %i.ah = fdiv double %i.ac, %i.ag
  %i.ai = tail call double @sqrt(double noundef %i.ah) #6
  %i.aj = tail call double @acos(double noundef %i.ai) #6
  %i.ak = icmp eq i32 %i.t, 0
  %i.al = select i1 %i.ak, i32 1, i32 -1
  %i.am = sitofp i32 %i.al to double
  %i.an = fmul double %i.aj, %i.am
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.17.0 = phi double [ %i.an, %bb.e ], [ 0.000000e+00, %bb.c ]
  %i.ao = icmp eq i32 %i.t, 0
  %i.ap = select i1 %i.ao, i32 -1, i32 1
  %i.aq = sitofp i32 %i.ap to double
  %i.ar = extractelement <2 x double> %i.q, i64 1
  %i.as = fmul double %i.ar, %i.aq
  %i.at = tail call double @atan2(double noundef %i.r, double noundef %i.as) #6
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %foldExtExtBinop166 = fmul <2 x double> %i.q, %i.q
  %i.au = extractelement <2 x double> %foldExtExtBinop166, i64 0
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.aw = load double, ptr %i.av, align 8, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !64
  %i.az = fdiv double %i.aw, %i.ay
  %i.ba = extractelement <2 x double> %i.q, i64 1 ; 5 uses
  %i.bb = fmul double %i.ba, %i.az                ; 2 uses
  %i.bc = fmul double %i.bb, %i.bb
  %i.bd = fadd double %i.au, %i.bc
  %i.be = fcmp ogt double %i.bd, f0x3FF000000000AFEC
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.bg = fcmp oeq double %i.ba, 0.000000e+00
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 216
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !44 ; 3 uses
  br i1 %i.bg, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = fsub double 1.000000e+00, %.pre
  %i.bi = fdiv double %i.bh, %i.ba                ; 2 uses
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = fadd double %.pre, %i.bj
  %i.bl = fdiv double 1.000000e+00, %i.bk         ; 2 uses
  %i.bm = fcmp ogt double %i.bl, f0x3FEFFFFFFFFEA028
  br i1 %i.bm, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.bn = fcmp ogt double %i.ba, 0.000000e+00
  %i.bo = select i1 %i.bn, double f0x3FF921FB54442D18, double f0xBFF921FB54442D18
  br label %.loopexit

.thread:                                          ; preds = %bb.i, %bb.j
  %i.bp = phi double [ %i.bl, %bb.j ], [ 0.000000e+00, %bb.i ] ; 3 uses
  %i.bq = tail call double @sqrt(double noundef %i.bp) #6
  %i.br = tail call double @asin(double noundef %i.bq) #6 ; 2 uses
  %i.bs = fcmp ogt double %i.ba, 0.000000e+00
  %i.bt = fneg double %i.br
  %i.bu = select i1 %i.bs, double %i.br, double %i.bt ; 2 uses
  %i.bv = fneg double %.pre
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bp, double 1.000000e+00)
  %i.bx = fsub double 1.000000e+00, %i.bp
  %i.by = fdiv double %i.bw, %i.bx
  %i.bz = tail call double @sqrt(double noundef %i.by) #6
  %i.ca = fmul double %i.r, %i.bz                 ; 2 uses
  %i.cb = tail call double @llvm.fabs.f64(double %i.ca)
  %i.cc = fadd double %i.cb, -1.000000e+00
  %i.cd = fcmp ogt double %i.cc, -1.000000e-15
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread
  %i.ce = fcmp ogt double %i.r, 0.000000e+00
  %i.cf = select i1 %i.ce, double f0x3FF921FB54442D18, double f0xBFF921FB54442D18
  br label %.loopexit

bb.m:                                             ; preds = %.thread
  %i.cg = tail call double @asin(double noundef %i.ca) #6
  br label %.loopexit

bb.n:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !46
  %i.cj = extractelement <2 x double> %i.q, i64 1 ; 2 uses
  %i.ck = fsub double %i.cj, %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !47
  %i.cn = fdiv double %i.ck, %i.cm                ; 3 uses
  %foldExtExtBinop168 = fmul <2 x double> %i.q, %i.q
  %i.co = extractelement <2 x double> %foldExtExtBinop168, i64 0
  %i.cp = fmul double %i.cn, %i.cn
  %i.cq = fadd double %i.co, %i.cp
  %i.cr = fcmp ogt double %i.cq, f0x3FF000000000AFEC
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cs = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.ct = tail call { double, double } @_ZL15ortho_s_inverse5PJ_XYP8PJconsts(double %i.r, double %i.cn, ptr noundef nonnull %2) ; 2 uses
  %i.cu = extractvalue { double, double } %i.ct, 0
  %i.cv = extractvalue { double, double } %i.ct, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.r

bb.q:                                             ; preds = %bb.v
  %i.cz = add nuw nsw i32 %.0153, 1               ; 2 uses
  %exitcond = icmp eq i32 %i.cz, 20
  br i1 %exitcond, label %bb.w, label %bb.r, !llvm.loop !61

bb.r:                                             ; preds = %bb.p, %bb.q
  %.0153 = phi i32 [ 0, %bb.p ], [ %i.cz, %bb.q ]
  %.sroa.17.3152 = phi double [ %i.cv, %bb.p ], [ %.sroa.17.4, %bb.q ] ; 3 uses
  %.sroa.0123.3151 = phi double [ %i.cu, %bb.p ], [ %i.ew, %bb.q ] ; 4 uses
  %i.da = tail call double @cos(double noundef %.sroa.17.3152) #6 ; 4 uses
  %i.db = tail call double @sin(double noundef %.sroa.17.3152) #6 ; 5 uses
  %i.dc = tail call double @cos(double noundef %.sroa.0123.3151) #6 ; 3 uses
  %i.dd = tail call double @sin(double noundef %.sroa.0123.3151) #6 ; 3 uses
  %i.de = load double, ptr %i.cw, align 8, !tbaa !44 ; 3 uses
  %i.df = fneg double %i.db                       ; 2 uses
  %i.dg = fmul double %i.de, %i.df
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.db, double 1.000000e+00) ; 2 uses
  %i.di = tail call double @sqrt(double noundef %i.dh) #6
  %i.dj = fdiv double 1.000000e+00, %i.di         ; 5 uses
  %3 = fsub double 1.000000e+00, %i.de
  %4 = fmul double %3, %i.dj
  %5 = fdiv double %4, %i.dh                      ; 2 uses
  %i.dk = fneg double %5
  %6 = insertelement <2 x double> poison, double %i.da, i64 0
  %7 = insertelement <2 x double> %6, double %i.db, i64 1
  %8 = insertelement <2 x double> poison, double %i.dj, i64 0
  %9 = insertelement <2 x double> %8, double %i.dk, i64 1
  %10 = fmul <2 x double> %7, %9                  ; 2 uses
  %11 = extractelement <2 x double> %10, i64 0
  %i.dl = fmul double %i.dd, %11
  %12 = load double, ptr %i.cx, align 8, !tbaa !42 ; 3 uses
  %13 = load double, ptr %i.b, align 8, !tbaa !41 ; 4 uses
  %i.dm = fmul double %i.da, %13
  %i.dn = fneg double %i.dc
  %i.do = fmul double %i.dm, %i.dn
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.db, double %12, double %i.do)
  %14 = load double, ptr %i.cy, align 8, !tbaa !45
  %i.dq = fmul double %i.dj, %i.df
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %13, double %i.dq)
  %16 = fmul double %i.de, %15
  %i.dr = fmul double %12, %16
  %17 = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.dp, double %i.dr)
  %18 = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.ds = insertelement <2 x double> %18, double %i.dd, i64 1
  %19 = fmul <2 x double> %i.ds, %10              ; 3 uses
  %20 = fmul double %i.db, %13
  %21 = fmul double %i.dc, %20
  %22 = tail call double @llvm.fmuladd.f64(double %i.da, double %12, double %21)
  %23 = fmul double %i.dj, %13
  %i.dt = fmul double %i.da, %23
  %i.du = fmul double %i.dd, %i.dt                ; 2 uses
  %24 = fneg double %22
  %i.dv = fmul double %5, %24                     ; 2 uses
  %i.dw = extractelement <2 x double> %19, i64 0
  %i.dx = fmul double %i.dw, %i.dv
  %i.dy = extractelement <2 x double> %19, i64 1
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.du, double %i.dx)
  %25 = fsub double %i.r, %i.dl
  %i.ea = fsub double %i.cj, %17                  ; 2 uses
  %26 = fneg double %i.ea
  %i.eb = insertelement <2 x double> poison, double %26, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.ea, i64 1
  %i.ed = fmul <2 x double> %19, %i.ec
  %i.ee = insertelement <2 x double> poison, double %i.du, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.dv, i64 1
  %i.eg = insertelement <2 x double> poison, double %25, i64 0
  %27 = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %27, <2 x double> %i.ed)
  %i.ei = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = fdiv <2 x double> %i.eh, %i.ej          ; 3 uses
  %i.el = extractelement <2 x double> %i.ek, i64 0
  %i.em = fadd double %.sroa.17.3152, %i.el       ; 5 uses
  %i.en = fcmp ogt double %i.em, f0x3FF921FB54442D18
  br i1 %i.en, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eo = fadd double %i.em, f0xBFF921FB54442D18
  %i.ep = fsub double f0x3FF921FB54442D18, %i.eo
  br label %.sink.split

bb.t:                                             ; preds = %bb.r
  %i.eq = fcmp olt double %i.em, f0xBFF921FB54442D18
  br i1 %i.eq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.er = fsub double f0xBFF921FB54442D18, %i.em
  %i.es = fadd double %i.er, f0xBFF921FB54442D18
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.u
  %.sroa.17.4.ph = phi double [ %i.es, %bb.u ], [ %i.ep, %bb.s ]
  %i.et = fadd double %.sroa.0123.3151, f0x400921FB54442D18
  %i.eu = tail call noundef double @_Z6adjlond(double noundef %i.et)
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.t
  %.sroa.0123.4 = phi double [ %.sroa.0123.3151, %bb.t ], [ %i.eu, %.sink.split ]
  %.sroa.17.4 = phi double [ %i.em, %bb.t ], [ %.sroa.17.4.ph, %.sink.split ] ; 3 uses
  %i.ev = extractelement <2 x double> %i.ek, i64 1
  %i.ew = fadd double %i.ev, %.sroa.0123.4        ; 3 uses
  %i.ex = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ek)
  %i.ey = fcmp uge <2 x double> %i.ex, splat (double f0x3D719799812DEA11)
  %28 = bitcast <2 x i1> %i.ey to i2
  %.not = icmp eq i2 %28, 0
  br i1 %.not, label %.loopexit, label %bb.q

bb.w:                                             ; preds = %bb.q
  %i.ez = load ptr, ptr %2, align 8, !tbaa !48
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.ez, i32 noundef 2050)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %bb.o, %bb.w, %bb.k, %bb.m, %bb.l, %bb.d, %bb.f, %bb.h
  %.sroa.0123.7 = phi double [ %i.cg, %bb.m ], [ +inf, %bb.h ], [ %i.at, %bb.f ], [ +inf, %bb.d ], [ 0.000000e+00, %bb.k ], [ %i.cf, %bb.l ], [ +inf, %bb.o ], [ %i.ew, %bb.w ], [ %i.ew, %bb.v ]
  %.sroa.17.7 = phi double [ %i.bu, %bb.m ], [ +inf, %bb.h ], [ %.sroa.17.0, %bb.f ], [ +inf, %bb.d ], [ %i.bo, %bb.k ], [ %i.bu, %bb.l ], [ +inf, %bb.o ], [ %.sroa.17.4, %bb.w ], [ %.sroa.17.4, %bb.v ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.0123.7, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.17.7, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15ortho_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 4 uses
  %i.c = tail call double @cos(double noundef %1) #6 ; 3 uses
  %i.d = tail call double @sin(double noundef %1) #6 ; 4 uses
  %i.e = tail call double @cos(double noundef %0) #6 ; 2 uses
  %i.f = tail call double @sin(double noundef %0) #6
  %i.g = load double, ptr %i.b, align 8, !tbaa !41 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !42 ; 3 uses
  %i.j = fmul double %i.c, %i.i
  %i.k = fmul double %i.e, %i.j
  %i.l = tail call double @llvm.fmuladd.f64(double %i.g, double %i.d, double %i.k)
  %i.m = fcmp olt double %i.l, -1.000000e-10
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  %i.o = tail call double @proj_todeg(double noundef %0)
  %i.p = tail call double @proj_todeg(double noundef %1)
  tail call void (ptr, ptr, ...) @_Z14proj_log_traceP8PJconstsPKcz(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, double noundef %i.o, double noundef %i.p)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.r = load double, ptr %i.q, align 8, !tbaa !44 ; 2 uses
  %i.s = fneg double %i.d                         ; 2 uses
  %i.t = fmul double %i.r, %i.s
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double %i.d, double 1.000000e+00)
  %i.v = tail call double @sqrt(double noundef %i.u) #6
  %i.w = fdiv double 1.000000e+00, %i.v           ; 3 uses
  %i.x = fmul double %i.c, %i.w
  %i.y = fmul double %i.f, %i.x
  %i.z = fmul double %i.c, %i.g
  %i.aa = fneg double %i.e
  %i.ab = fmul double %i.z, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.d, double %i.i, double %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !45
  %i.af = fmul double %i.w, %i.s
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.g, double %i.af)
  %i.ah = fmul double %i.r, %i.ag
  %i.ai = fmul double %i.i, %i.ah
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.w, double %i.ac, double %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.al = fneg double %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.an = load double, ptr %i.am, align 8, !tbaa !49
  %i.ao = load <2 x double>, ptr %i.ak, align 8, !tbaa !50 ; 2 uses
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aq = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.aj, i64 1
  %i.as = fmul <2 x double> %i.ao, %i.ar
  %i.at = insertelement <2 x double> poison, double %i.y, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.au, <2 x double> %i.as)
  %i.aw = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x double> %i.ax, %i.av
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.az = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.ay, %bb.c ] ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.ba, 0
  %i.bb = extractelement <2 x double> %i.az, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.bb, 1
  ret { double, double } %.fca.1.insert
}

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #3

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #3

declare void @_Z14proj_log_traceP8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare double @proj_todeg(double noundef) local_unnamed_addr #1

declare noundef double @_Z6adjlond(double noundef) local_unnamed_addr #1

declare void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind allocsize(0,1) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6pj_ctx", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS8ARG_list", !8, i64 0}
!12 = !{!"p1 _ZTS8PJconsts", !8, i64 0}
!13 = !{!"p1 _ZTS13geod_geodesic", !8, i64 0}
!14 = !{!"double", !4, i64 0}
!15 = !{!"_ZTS11pj_io_units", !4, i64 0}
!16 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !8, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !18, i64 8}
!20 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !4, i64 16}
!25 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !8, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!31 = !{!"p1 _ZTS16PJCoordOperation", !8, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!36 = !{!"_ZTS8PJconsts", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !10, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !13, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !15, i64 380, !15, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !14, i64 520, !5, i64 528, !4, i64 536, !5, i64 592, !8, i64 600, !8, i64 608, !14, i64 616, !14, i64 624, !5, i64 632, !4, i64 636, !20, i64 640, !21, i64 656, !14, i64 664, !21, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !21, i64 776, !29, i64 784, !30, i64 808, !35, i64 816, !5, i64 840, !21, i64 844, !21, i64 845, !21, i64 846, !12, i64 848}
!37 = !{!36, !8, i64 88}
!38 = !{!36, !14, i64 448}
!39 = !{!"_ZTSN11pj_ortho_ns4ModeE", !4, i64 0}
!40 = !{!"_ZTSN12_GLOBAL__N_113pj_ortho_dataE", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !39, i64 40, !14, i64 48, !14, i64 56}
!41 = !{!40, !14, i64 0}
!42 = !{!40, !14, i64 8}
!43 = !{!40, !39, i64 40}
!44 = !{!36, !14, i64 216}
!45 = !{!40, !14, i64 16}
!46 = !{!40, !14, i64 24}
!47 = !{!40, !14, i64 32}
!48 = !{!36, !9, i64 0}
!49 = !{!36, !14, i64 488}
!50 = !{!14, !14, i64 0}
!51 = !{!36, !10, i64 8}
!52 = !{!36, !10, i64 16}
!53 = !{!36, !5, i64 360}
!54 = !{!36, !15, i64 380}
!55 = !{!36, !15, i64 384}
!56 = !{!36, !8, i64 112}
!57 = !{!36, !8, i64 104}
!58 = !{!36, !11, i64 24}
!59 = !{!40, !14, i64 48}
!60 = !{!40, !14, i64 56}
!61 = distinct !{!61, !65}
!62 = !{!36, !14, i64 256}
!63 = !{!36, !14, i64 168}
!64 = !{!36, !14, i64 176}
!65 = !{!"llvm.loop.mustprogress"}
end_hunk_0
