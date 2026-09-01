Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/labrd?download=true
begin_hunk_0_@_Z6pj_newv

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 8 uses
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
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !55 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.af = load double, ptr %i.ae, align 8, !tbaa !57 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !58 ; 2 uses
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
  %i.as = load double, ptr %i.ar, align 8, !tbaa !49 ; 2 uses
  %i.at = load double, ptr %i.b, align 8, !tbaa !53 ; 5 uses
  %i.au = fdiv double %i.aq, %i.at
  %i.av = fadd double %i.as, %i.au                ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !43
  %i.ay = fadd double %i.ax, %i.av
  %i.az = fsub double %i.ay, %i.as
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !51 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !52 ; 3 uses
  %i.be = fmul double %i.bd, 5.000000e-01
  %i.bf = fmul double %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !54
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
  %i.co = load double, ptr %i.cn, align 8, !tbaa !47
  %i.cp = tail call double @sqrt(double noundef %i.cm) #8
  %i.cq = fmul double %i.cm, %i.cp
  %i.cr = fmul double %i.at, %i.at                ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.ct = tail call double @tan(double noundef %i.av) #8 ; 3 uses
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !48
  %i.cv = tail call double @cos(double noundef %i.av) #8
  %i.cw = fmul double %i.at, %i.cv
  %i.cx = fdiv double %i.co, %i.cq
  %i.cy = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cw, i64 1
  %i.da = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.bb, i64 1
  %i.dc = fmul <2 x double> %i.cz, %i.db          ; 2 uses
  %i.dd = insertelement <2 x double> poison, double %i.at, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.cr, i64 1
  %i.df = fmul <2 x double> %i.de, %i.dc          ; 2 uses
  %i.dg = fmul <2 x double> %i.df, <double 2.000000e+00, double 6.000000e+00>
  %i.dh = fmul <2 x double> %i.df, <double 2.400000e+01, double 1.200000e+02> ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0
  %i.dj = fmul double %i.cr, %i.di
  %i.dk = extractelement <2 x double> %i.dh, i64 1
  %i.dl = fmul double %i.cr, %i.dk
  %i.dm = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dn = insertelement <2 x double> %i.dm, double %i.dl, i64 1
  %i.do = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.ci, i64 1 ; 2 uses
  %i.dq = fmul <2 x double> %i.dp, %i.dp          ; 5 uses
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> <double 3.000000e+00, double 2.000000e+00>, <2 x double> <double 5.000000e+00, double 1.000000e+00>) ; 2 uses
  %i.dt = extractelement <2 x double> %i.ds, i64 0
  %i.du = fmul double %i.ct, %i.dt
  %i.dv = fdiv double %i.du, %i.dj
  %i.dw = insertelement <2 x double> %i.ds, double %i.ct, i64 0
  %i.dx = fneg <2 x double> %i.dw
  %i.dy = fdiv <2 x double> %i.dx, %i.dg          ; 2 uses
  %i.dz = insertelement <2 x double> <double 2.400000e+01, double poison>, double %i.dv, i64 1
  %i.ea = shufflevector <2 x double> %i.dy, <2 x double> <double 2.800000e+01, double poison>, <2 x i32> <i32 2, i32 0>
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %i.dz, <2 x double> %i.ea) ; 2 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 0
  %i.ed = extractelement <2 x double> %i.dq, i64 0
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ec, double 5.000000e+00)
  %i.ef = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ee, i64 1
  %i.eg = fdiv <2 x double> %i.ef, %i.dn          ; 2 uses
  %i.eh = extractelement <2 x double> %i.dq, i64 1
  %i.ei = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ej = shufflevector <2 x double> %i.eb, <2 x double> %i.eg, <2 x i32> <i32 1, i32 3>
  %i.ek = insertelement <2 x double> %i.dy, double %i.bz, i64 0
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ej, <2 x double> %i.ek) ; 2 uses
  %i.em = extractelement <2 x double> %i.eg, i64 0
  %i.en = extractelement <2 x double> %i.el, i64 1
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.en, double %i.em)
  %i.ep = fmul double %i.ci, %i.eo
  %.fca.0.insert = insertvalue { double, double } poison, double %i.ep, 0
  %i.eq = extractelement <2 x double> %i.el, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.eq, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal { double, double } @_ZL15labrd_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call double @llvm.fmuladd.f64(double %1, double 5.000000e-01, double f0x3FE921FB54442D18)
  %i.e = tail call double @tan(double noundef %i.d) #8
  %i.f = tail call double @log(double noundef %i.e) #8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.h = load double, ptr %i.g, align 8, !tbaa !52 ; 2 uses
  %i.i = tail call double @sin(double noundef %1) #8
  %i.j = fmul double %i.h, %i.i                   ; 2 uses
  %i.k = fmul double %i.h, 5.000000e-01
  %i.l = fadd double %i.j, 1.000000e+00
  %i.m = fsub double 1.000000e+00, %i.j
  %i.n = fdiv double %i.l, %i.m
  %i.o = tail call double @log(double noundef %i.n) #8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load double, ptr %i.c, align 8, !tbaa !51 ; 8 uses
  %i.u = fmul double %i.t, %i.f
  %i.v = fmul double %i.t, %i.k
  %i.w = fmul double %i.v, %i.o
  %i.x = fsub double %i.u, %i.w
  %i.y = fadd double %i.q, %i.x
  %i.z = tail call double @exp(double noundef %i.y) #8
  %i.aa = tail call double @atan(double noundef %i.z) #8
  %i.ab = fadd double %i.aa, f0xBFE921FB54442D18
  %i.ac = fmul double %i.ab, 2.000000e+00         ; 3 uses
  %i.ad = load double, ptr %i.r, align 8, !tbaa !49
  %i.ae = tail call double @cos(double noundef %i.ac) #8 ; 3 uses
  %i.af = fmul double %i.ae, %i.ae                ; 4 uses
  %i.ag = tail call double @sin(double noundef %i.ac) #8 ; 3 uses
  %i.ah = fmul double %i.ag, %i.ag                ; 4 uses
  %i.ai = fsub double %i.ac, %i.ad
  %i.aj = fmul double %i.t, %i.ae                 ; 3 uses
  %i.ak = fmul double %i.t, 5.000000e-01
  %i.al = fmul double %i.ak, %i.aj
  %i.am = fmul double %i.ag, %i.al                ; 2 uses
  %i.an = fmul double %i.t, %i.am
  %i.ao = fneg double %i.ah
  %i.ap = fmul double %i.t, %i.aj
  %i.aq = fmul double %i.t, %i.ap                 ; 2 uses
  %i.ar = fsub double %i.af, %i.ah
  %i.as = fmul double %i.aq, %i.ar
  %i.at = fdiv double %i.as, 6.000000e+00
  %i.au = fmul double %i.af, 5.000000e+00
  %i.av = tail call double @llvm.fmuladd.f64(double %i.af, double -1.800000e+01, double %i.ah)
  %i.aw = fmul double %i.ah, %i.av
  %i.ax = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.az = insertelement <2 x double> %i.ay, double %i.an, i64 1
  %i.ba = fmul <2 x double> %i.ay, %i.az
  %i.bb = insertelement <2 x double> poison, double %i.af, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x double> <double poison, double 5.000000e+00>, double %i.au, i64 0
  %i.be = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.ao, i64 1
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bd, <2 x double> %i.bf)
  %i.bh = fmul <2 x double> %i.ba, %i.bg
  %i.bi = fdiv <2 x double> %i.bh, <double 1.200000e+02, double 1.200000e+01> ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0
  %i.bk = fmul double %i.aq, %i.bj
  %i.bl = fmul double %0, %0
  %i.bm = load double, ptr %i.b, align 8, !tbaa !53 ; 2 uses
  %i.bn = fmul double %0, %i.bm
  %i.bo = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = insertelement <2 x double> %i.bi, double %i.bk, i64 0
  %i.br = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.am, i64 1
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bq, <2 x double> %i.bs)
  %i.bu = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.ai, i64 1
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bt, <2 x double> %i.bv)
  %i.bx = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bm, i64 1
  %i.bz = fmul <2 x double> %i.by, %i.bw          ; 7 uses
  %foldExtExtBinop = fmul <2 x double> %i.bz, %i.bz
  %i.ca = fmul <2 x double> %i.bz, <double 3.000000e+00, double 1.000000e+00>
  %i.cb = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.bz, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cc = insertelement <2 x double> %i.bz, double 3.000000e+00, i64 0
  %i.cd = fmul <2 x double> %i.cb, %i.cc          ; 2 uses
  %i.ce = fneg <2 x double> %i.cb
  %i.cf = shufflevector <2 x double> %i.bz, <2 x double> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.cg = fmul <2 x double> %i.cf, %i.ce
  %3 = load <2 x double>, ptr %i.s, align 8, !tbaa !63 ; 2 uses
  %4 = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %5 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %4, <2 x double> %i.cg) ; 3 uses
  %6 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ch = fneg <2 x double> %5
  %i.ci = shufflevector <2 x double> %5, <2 x double> %i.ch, <2 x i32> <i32 1, i32 2>
  %i.cj = fmul <2 x double> %6, %i.ci
  %i.ck = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %5, <2 x double> %i.cj)
  %i.cm = fadd <2 x double> %i.bz, %i.cl          ; 2 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.cn, 0
  %i.co = extractelement <2 x double> %i.cm, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.co, 1
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"_ZTS8PJconsts", !10, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !14, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !15, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !16, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !17, i64 380, !17, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !16, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !16, i64 480, !16, i64 488, !16, i64 496, !16, i64 504, !16, i64 512, !16, i64 520, !5, i64 528, !6, i64 536, !5, i64 592, !11, i64 600, !11, i64 608, !16, i64 616, !16, i64 624, !5, i64 632, !6, i64 636, !18, i64 640, !23, i64 656, !16, i64 664, !23, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !23, i64 776, !27, i64 784, !32, i64 808, !33, i64 816, !5, i64 840, !23, i64 844, !23, i64 845, !23, i64 846, !14, i64 848}
!10 = !{!"p1 _ZTS6pj_ctx", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS8ARG_list", !11, i64 0}
!14 = !{!"p1 _ZTS8PJconsts", !11, i64 0}
!15 = !{!"p1 _ZTS13geod_geodesic", !11, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!"_ZTS11pj_io_units", !6, i64 0}
!18 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0, !21, i64 8}
!20 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !11, i64 0}
!21 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!22 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!23 = !{!"bool", !6, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !11, i64 0}
!32 = !{!"_ZTS7PJ_TYPE", !6, i64 0}
!33 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTS16PJCoordOperation", !11, i64 0}
!38 = !{!9, !12, i64 16}
!39 = !{!9, !5, i64 360}
!40 = !{!9, !17, i64 380}
!41 = !{!9, !17, i64 384}
!42 = !{!9, !11, i64 88}
!43 = !{!9, !16, i64 448}
!44 = !{!9, !10, i64 0}
!45 = !{!9, !13, i64 24}
!46 = !{!9, !16, i64 216}
!47 = !{!9, !16, i64 256}
!48 = !{!9, !16, i64 488}
!49 = !{!50, !16, i64 8}
!50 = !{!"_ZTSN12_GLOBAL__N_19pj_opaqueE", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56}
!51 = !{!50, !16, i64 16}
!52 = !{!9, !16, i64 208}
!53 = !{!50, !16, i64 0}
!54 = !{!50, !16, i64 24}
!55 = !{!50, !16, i64 32}
!56 = !{!50, !16, i64 40}
!57 = !{!50, !16, i64 48}
!58 = !{!50, !16, i64 56}
!59 = !{!9, !11, i64 112}
!60 = !{!9, !11, i64 104}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!16, !16, i64 0}
end_hunk_0
