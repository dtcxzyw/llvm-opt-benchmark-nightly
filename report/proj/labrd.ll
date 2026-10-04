Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/labrd?download=true
begin_hunk_0_@_Z34pj_projection_specific_setup_labrdP8PJconsts:bb.a
  %i.bp = tail call double @tan(double noundef %i.aw) #8
  %i.bq = tail call double @log(double noundef %i.bp) #8
  %i.br = fadd double %i.bo, %i.bq
  store double %i.br, ptr %i.ax, align 8, !tbaa !46
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bt = tail call double @cos(double noundef %i.ay) #8
  %i.bu = fsub double 1.000000e+00, %i.bt
  %i.bv = extractelement <2 x double> %i.bi, i64 1 ; 2 uses
  %i.bw = fmul double %i.bv, %i.bu                ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %i.bw, ptr %i.bx, align 8, !tbaa !47
  %i.by = tail call double @sin(double noundef %i.ay) #8
  %i.bz = fmul double %i.bv, %i.by                ; 4 uses
  store double %i.bz, ptr %i.bs, align 8, !tbaa !48
  %i.ca = fneg double %i.bz
  %i.cb = fmul double %i.bz, %i.ca
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.cb)
  %i.cd = fmul double %i.cc, 3.000000e+00
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %i.cd, ptr %i.ce, align 8, !tbaa !49
  %i.cf = fmul double %i.bw, 6.000000e+00
  %i.cg = fmul double %i.cf, %i.bz
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %i.cg, ptr %i.ch, align 8, !tbaa !50
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL15labrd_e_inverse5PJ_XYP8PJconsts, ptr %i.ci, align 8, !tbaa !59
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL15labrd_e_forward5PJ_LPP8PJconsts, ptr %i.cj, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.h, %bb.d ], [ %0, %bb.e ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal { double, double } @_ZL15labrd_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %i.c = fmul double %1, %1                       ; 6 uses
  %i.d = insertelement <2 x double> poison, double %0, i64 0
  %i.e = insertelement <2 x double> %i.d, double %1, i64 1 ; 4 uses
  %i.f = insertelement <2 x double> %i.e, double 1.000000e+00, i64 1
  %i.g = fmul <2 x double> %i.e, %i.f             ; 2 uses
  %i.h = fmul <2 x double> %i.e, <double 3.000000e+00, double 1.000000e+00>
  %i.i = extractelement <2 x double> %i.g, i64 0  ; 6 uses
  %i.j = fmul double %i.i, 3.000000e+00
  %i.k = fneg <2 x double> %i.g
  %i.l = insertelement <2 x double> %i.e, double %i.j, i64 1
  %i.m = fmul <2 x double> %i.l, %i.k
  %i.n = insertelement <2 x double> poison, double %i.c, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.o, <2 x double> %i.m) ; 2 uses
  %i.q = fmul double %i.c, 5.000000e+00
  %i.r = tail call double @llvm.fmuladd.f64(double %i.c, double -1.000000e+01, double %i.i)
  %i.s = fmul double %i.i, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.q, double %i.c, double %i.s)
  %i.u = fmul double %0, %i.t                     ; 2 uses
  %i.v = fmul double %i.i, 5.000000e+00
  %i.w = tail call double @llvm.fmuladd.f64(double %i.i, double -1.000000e+01, double %i.c)
  %i.x = fmul double %i.c, %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.v, double %i.i, double %i.x)
  %i.z = fmul double %1, %i.y                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !47 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.af = load double, ptr %i.ae, align 8, !tbaa !49 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !50 ; 2 uses
  %i.ai = extractelement <2 x double> %i.p, i64 1
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fmul double %i.ab, %i.aj
  %i.al = extractelement <2 x double> %i.p, i64 0 ; 2 uses
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.al, double %i.ak)
  %i.an = fneg double %i.ah
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %i.u, double %i.am)
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.af, double %i.z, double %i.ao)
  %i.aq = fadd double %1, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.at = load double, ptr %i.b, align 8, !tbaa !45 ; 5 uses
  %i.au = fdiv double %i.aq, %i.at
  %i.av = fadd double %i.as, %i.au                ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !38
  %i.ay = fadd double %i.ax, %i.av
  %i.az = fsub double %i.ay, %i.as
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !43 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !44 ; 3 uses
  %i.be = fmul double %i.bd, 5.000000e-01
  %i.bf = fmul double %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !46
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0112 = phi i32 [ 20, %bb.a ], [ %i.cc, %bb.b ]
  %.0110111 = phi double [ %i.az, %bb.a ], [ %i.bz, %bb.b ] ; 3 uses
  %i.bi = tail call double @llvm.fmuladd.f64(double %.0110111, double 5.000000e-01, double f0x3FE921FB54442D18)
  %i.bj = tail call double @tan(double noundef %i.bi) #8
  %i.bk = tail call double @log(double noundef %i.bj) #8
  %i.bl = fmul double %i.bb, %i.bk
  %i.bm = tail call double @sin(double noundef %.0110111) #8
  %i.bn = fmul double %i.bd, %i.bm                ; 2 uses
  %i.bo = fadd double %i.bn, 1.000000e+00
  %i.bp = fsub double 1.000000e+00, %i.bn
  %i.bq = fdiv double %i.bo, %i.bp
  %i.br = tail call double @log(double noundef %i.bq) #8
  %i.bs = fmul double %i.bf, %i.br
  %i.bt = fsub double %i.bl, %i.bs
  %i.bu = fadd double %i.bh, %i.bt
  %i.bv = tail call double @exp(double noundef %i.bu) #8
  %i.bw = tail call double @atan(double noundef %i.bv) #8
  %i.bx = fadd double %i.bw, f0xBFE921FB54442D18
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double -2.000000e+00, double %i.av) ; 2 uses
  %i.bz = fadd double %.0110111, %i.by            ; 3 uses
  %i.ca = tail call double @llvm.fabs.f64(double %i.by)
  %i.cb = fcmp olt double %i.ca, 1.000000e-10
  %i.cc = add nsw i32 %.0112, -1                  ; 2 uses
  %.not = icmp eq i32 %i.cc, 0
  %or.cond = select i1 %i.cb, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b, !llvm.loop !61

bb.c:                                             ; preds = %bb.b
  %i.cd = fneg double %i.ab
  %i.ce = fmul double %i.ad, %i.aj
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.al, double %i.ce)
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.af, double %i.u, double %i.cf)
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.z, double %i.cg)
  %i.ci = fadd double %0, %i.ch                   ; 2 uses
  %i.cj = tail call double @sin(double noundef %i.bz) #8
  %i.ck = fmul double %i.bd, %i.cj                ; 2 uses
  %i.cl = fneg double %i.ck
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.ck, double 1.000000e+00) ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.co = load double, ptr %i.cn, align 8, !tbaa !39
  %i.cp = tail call double @sqrt(double noundef %i.cm) #8
  %i.cq = fmul double %i.cm, %i.cp
  %i.cr = tail call double @tan(double noundef %i.av) #8 ; 3 uses
  %i.cs = fmul double %i.at, %i.at                ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !40
  %i.cv = tail call double @cos(double noundef %i.av) #8
  %i.cw = fdiv double %i.co, %i.cq
  %i.cx = fmul double %i.at, %i.cv
  %i.cy = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cx, i64 1
  %i.da = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.bb, i64 1
  %i.dc = fmul <2 x double> %i.cz, %i.db          ; 2 uses
  %i.dd = insertelement <2 x double> poison, double %i.at, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.cs, i64 1
  %i.df = fmul <2 x double> %i.de, %i.dc          ; 2 uses
  %i.dg = fmul <2 x double> %i.df, <double 2.000000e+00, double 6.000000e+00>
  %i.dh = fmul <2 x double> %i.df, <double 2.400000e+01, double 1.200000e+02> ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0
  %i.dj = fmul double %i.cs, %i.di
  %i.dk = extractelement <2 x double> %i.dh, i64 1
  %i.dl = fmul double %i.cs, %i.dk
  %i.dm = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dn = insertelement <2 x double> %i.dm, double %i.dl, i64 1
  %i.do = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.ci, i64 1 ; 2 uses
  %i.dq = fmul <2 x double> %i.dp, %i.dp          ; 5 uses
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> <double 3.000000e+00, double 2.000000e+00>, <2 x double> <double 5.000000e+00, double 1.000000e+00>) ; 2 uses
  %i.dt = extractelement <2 x double> %i.ds, i64 0
  %i.du = fmul double %i.cr, %i.dt
  %i.dv = fdiv double %i.du, %i.dj
  %i.dw = insertelement <2 x double> %i.ds, double %i.cr, i64 0
  %i.dx = fneg <2 x double> %i.dw
  %i.dy = fdiv <2 x double> %i.dx, %i.dg          ; 2 uses
  %i.dz = insertelement <2 x double> <double 2.400000e+01, double poison>, double %i.dv, i64 1
  %i.ea = shufflevector <2 x double> %i.dy, <2 x double> <double 2.800000e+01, double poison>, <2 x i32> <i32 2, i32 0>
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %i.dz, <2 x double> %i.ea) ; 2 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 0
  %3 = extractelement <2 x double> %i.dq, i64 0
  %4 = tail call double @llvm.fmuladd.f64(double %3, double %i.ec, double 5.000000e+00)
  %5 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %4, i64 1
  %i.ed = fdiv <2 x double> %5, %i.dn             ; 2 uses
  %i.ee = extractelement <2 x double> %i.dq, i64 1
  %6 = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %7 = shufflevector <2 x double> %i.eb, <2 x double> %i.ed, <2 x i32> <i32 1, i32 3>
  %8 = insertelement <2 x double> %i.dy, double %i.bz, i64 0
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %7, <2 x double> %8) ; 2 uses
  %10 = extractelement <2 x double> %i.ed, i64 0
  %i.ef = extractelement <2 x double> %9, i64 1
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ef, double %10)
  %i.eh = fmul double %i.ci, %i.eg
  %.fca.0.insert = insertvalue { double, double } poison, double %i.eh, 0
  %i.ei = extractelement <2 x double> %9, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ei, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal { double, double } @_ZL15labrd_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call double @llvm.fmuladd.f64(double %1, double 5.000000e-01, double f0x3FE921FB54442D18)
  %i.e = tail call double @tan(double noundef %i.d) #8
  %i.f = tail call double @log(double noundef %i.e) #8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.h = load double, ptr %i.g, align 8, !tbaa !44 ; 2 uses
  %i.i = tail call double @sin(double noundef %1) #8
  %i.j = fmul double %i.h, %i.i                   ; 2 uses
  %i.k = fmul double %i.h, 5.000000e-01
  %i.l = fadd double %i.j, 1.000000e+00
  %i.m = fsub double 1.000000e+00, %i.j
  %i.n = fdiv double %i.l, %i.m
  %i.o = tail call double @log(double noundef %i.n) #8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load double, ptr %i.c, align 8, !tbaa !43 ; 8 uses
  %i.u = fmul double %i.t, %i.f
  %i.v = fmul double %i.t, %i.k
  %i.w = fmul double %i.v, %i.o
  %i.x = fsub double %i.u, %i.w
  %i.y = fadd double %i.q, %i.x
  %i.z = tail call double @exp(double noundef %i.y) #8
  %i.aa = tail call double @atan(double noundef %i.z) #8
  %i.ab = fadd double %i.aa, f0xBFE921FB54442D18
  %i.ac = fmul double %i.ab, 2.000000e+00         ; 3 uses
  %i.ad = load double, ptr %i.r, align 8, !tbaa !42
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = tail call double @cos(double noundef %i.ac) #8 ; 3 uses
  %i.ag = tail call double @sin(double noundef %i.ac) #8 ; 3 uses
  %i.ah = fmul double %i.t, %i.af                 ; 3 uses
  %i.ai = fmul double %i.t, 5.000000e-01
  %i.aj = fmul double %i.ai, %i.ah
  %i.ak = fmul double %i.ag, %i.aj                ; 2 uses
  %i.al = fmul double %i.t, %i.ak
  %i.am = fmul double %i.t, %i.al
  %i.an = fmul double %i.t, %i.ah
  %i.ao = fmul double %i.af, %i.af                ; 5 uses
  %i.ap = fmul double %i.ag, %i.ag                ; 4 uses
  %i.aq = fneg double %i.ap
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ao, double 5.000000e+00, double %i.aq)
  %i.as = fmul double %i.ar, %i.am
  %i.at = fdiv double %i.as, 1.200000e+01
  %i.au = fsub double %i.ao, %i.ap
  %i.av = insertelement <2 x double> poison, double %i.t, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ax = insertelement <2 x double> %i.aw, double %i.an, i64 0
  %i.ay = fmul <2 x double> %i.aw, %i.ax          ; 2 uses
  %i.az = fmul double %i.ao, 5.000000e+00
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ao, double -1.800000e+01, double %i.ap)
  %i.bb = fmul double %i.ap, %i.ba
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.az, double %i.ao, double %i.bb)
  %i.bd = insertelement <2 x double> poison, double %i.au, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1
  %i.bf = fmul <2 x double> %i.ay, %i.be
  %i.bg = fdiv <2 x double> %i.bf, <double 6.000000e+00, double 1.200000e+02> ; 2 uses
  %i.bh = fmul double %0, %0
  %i.bi = load double, ptr %i.b, align 8, !tbaa !45 ; 2 uses
  %i.bj = fmul double %0, %i.bi
  %i.bk = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bm = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bn = fmul <2 x double> %i.ay, %i.bm
  %i.bo = insertelement <2 x double> %i.bn, double %i.at, i64 1
  %i.bp = insertelement <2 x double> %i.bg, double %i.ak, i64 1
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bo, <2 x double> %i.bp)
  %i.br = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.ae, i64 1
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bq, <2 x double> %i.bs)
  %i.bu = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bi, i64 1
  %i.bw = fmul <2 x double> %i.bv, %i.bt          ; 7 uses
  %foldExtExtBinop79 = fmul <2 x double> %i.bw, %i.bw
  %i.bx = shufflevector <2 x double> %foldExtExtBinop79, <2 x double> %i.bw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.by = insertelement <2 x double> %i.bw, double 3.000000e+00, i64 0
  %i.bz = fmul <2 x double> %i.bx, %i.by          ; 2 uses
  %i.ca = fmul <2 x double> %i.bw, <double 3.000000e+00, double 1.000000e+00>
  %i.cb = fneg <2 x double> %i.bx
  %i.cc = shufflevector <2 x double> %i.bw, <2 x double> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.cd = fmul <2 x double> %i.cc, %i.cb
  %i.ce = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.ce, <2 x double> %i.cd) ; 3 uses
  %i.cg = load <2 x double>, ptr %i.s, align 8, !tbaa !63 ; 2 uses
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ci = fneg <2 x double> %i.cf
  %i.cj = shufflevector <2 x double> %i.cf, <2 x double> %i.ci, <2 x i32> <i32 1, i32 2>
  %i.ck = fmul <2 x double> %i.ch, %i.cj
  %i.cl = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.cf, <2 x double> %i.ck)
  %i.cn = fadd <2 x double> %i.bw, %i.cm          ; 2 uses
  %i.co = extractelement <2 x double> %i.cn, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.co, 0
  %i.cp = extractelement <2 x double> %i.cn, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.cp, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { nounwind }

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
!39 = !{!36, !14, i64 256}
!40 = !{!36, !14, i64 488}
!41 = !{!"_ZTSN12_GLOBAL__N_19pj_opaqueE", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56}
!42 = !{!41, !14, i64 8}
!43 = !{!41, !14, i64 16}
!44 = !{!36, !14, i64 208}
!45 = !{!41, !14, i64 0}
!46 = !{!41, !14, i64 24}
!47 = !{!41, !14, i64 32}
!48 = !{!41, !14, i64 40}
!49 = !{!41, !14, i64 48}
!50 = !{!41, !14, i64 56}
!51 = !{!36, !10, i64 8}
!52 = !{!36, !10, i64 16}
!53 = !{!36, !5, i64 360}
!54 = !{!36, !15, i64 380}
!55 = !{!36, !15, i64 384}
!56 = !{!36, !9, i64 0}
!57 = !{!36, !11, i64 24}
!58 = !{!36, !14, i64 216}
!59 = !{!36, !8, i64 112}
!60 = !{!36, !8, i64 104}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!14, !14, i64 0}
end_hunk_0
