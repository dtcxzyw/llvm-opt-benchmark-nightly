Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlagv2?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@c__2 = internal global i32 2, align 4
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @dlagv2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) initializes((0, 16)) %4, ptr nofree noundef captures(none) initializes((0, 16)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 9 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = alloca double, align 8                   ; 6 uses
  %i.e = alloca double, align 8                   ; 6 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca double, align 8                   ; 8 uses
  %i.h = alloca double, align 8                   ; 3 uses
  %i.i = alloca double, align 8                   ; 8 uses
  %i.j = alloca double, align 8                   ; 4 uses
  %i.k = alloca double, align 8                   ; 6 uses
  %i.l = alloca double, align 8                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  %i.m = load i32, ptr %1, align 4, !tbaa !8      ; 3 uses
  %narrow = xor i32 %i.m, -1
  %i.n = sext i32 %narrow to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %3, align 4, !tbaa !8      ; 7 uses
  %narrow387 = xor i32 %i.p, -1
  %i.q = sext i32 %narrow387 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %i.q ; 7 uses
  %i.s = tail call double @dlamch_(ptr noundef nonnull @.str) #5 ; 5 uses
  store double %i.s, ptr %i.j, align 8, !tbaa !9
  %i.t = tail call double @dlamch_(ptr noundef nonnull @.str.1) #5 ; 3 uses
  %i.u = load double, ptr %0, align 8, !tbaa !9   ; 5 uses
  store double %i.u, ptr %i.a, align 8, !tbaa !9
  %i.v = fcmp oge double %i.u, 0.000000e+00
  %i.w = fneg double %i.u
  %i.x = select i1 %i.v, double %i.u, double %i.w
  %i.y = sext i32 %i.m to i64
  %i.z = getelementptr [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 16      ; 19 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !9 ; 3 uses
  %i.ac = fcmp oge double %i.ab, 0.000000e+00
  %i.ad = fneg double %i.ab
  %i.ae = select i1 %i.ac, double %i.ab, double %i.ad
  %i.af = fadd double %i.x, %i.ae                 ; 2 uses
  %i.ag = shl i32 %i.m, 1
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [8 x i8], ptr %i.o, i64 %i.ah ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8      ; 10 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 16     ; 5 uses
  %i.al = load <2 x double>, ptr %i.aj, align 8, !tbaa !9 ; 3 uses
  %i.am = fcmp oge <2 x double> %i.al, zeroinitializer
  %i.an = fneg <2 x double> %i.al
  %i.ao = select <2 x i1> %i.am, <2 x double> %i.al, <2 x double> %i.an ; 2 uses
  %shift = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ao, %shift
  %i.ap = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.aq = fcmp oge double %i.af, %i.ap
  %i.ar = select i1 %i.aq, double %i.af, double %i.ap ; 2 uses
  %i.as = fcmp oge double %i.ar, %i.s
  %11 = shl i32 %i.p, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr [8 x i8], ptr %i.r, i64 %12 ; 2 uses
  %14 = getelementptr i8, ptr %13, i64 8          ; 12 uses
  %15 = getelementptr i8, ptr %13, i64 16         ; 4 uses
  %i.at = select i1 %i.as, double %i.ar, double %i.s ; 4 uses
  %i.au = fdiv double 1.000000e+00, %i.at         ; 4 uses
  %i.av = fmul double %i.u, %i.au
  store double %i.av, ptr %0, align 8, !tbaa !9
  %i.aw = load double, ptr %i.aj, align 8, !tbaa !9
  %i.ax = fmul double %i.aw, %i.au
  store double %i.ax, ptr %i.aj, align 8, !tbaa !9
  %i.ay = load double, ptr %i.aa, align 8, !tbaa !9
  %i.az = fmul double %i.ay, %i.au
  store double %i.az, ptr %i.aa, align 8, !tbaa !9
  %i.ba = load double, ptr %i.ak, align 8, !tbaa !9
  %i.bb = fmul double %i.ba, %i.au
  store double %i.bb, ptr %i.ak, align 8, !tbaa !9
  %i.bc = load double, ptr %2, align 8, !tbaa !9  ; 4 uses
  %i.bd = fcmp oge double %i.bc, 0.000000e+00
  %i.be = fneg double %i.bc
  %i.bf = select i1 %i.bd, double %i.bc, double %i.be ; 2 uses
  %i.bg = load <2 x double>, ptr %14, align 8, !tbaa !9 ; 3 uses
  %i.bh = fcmp oge <2 x double> %i.bg, zeroinitializer
  %i.bi = fneg <2 x double> %i.bg
  %i.bj = select <2 x i1> %i.bh, <2 x double> %i.bg, <2 x double> %i.bi ; 2 uses
  %shift390 = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop391 = fadd <2 x double> %i.bj, %shift390
  %i.bk = extractelement <2 x double> %foldExtExtBinop391, i64 0 ; 2 uses
  %i.bl = fcmp oge double %i.bf, %i.bk
  %i.bm = select i1 %i.bl, double %i.bf, double %i.bk ; 2 uses
  %i.bn = fcmp oge double %i.bm, %i.s
  %i.bo = select i1 %i.bn, double %i.bm, double %i.s ; 4 uses
  %i.bp = fdiv double 1.000000e+00, %i.bo         ; 2 uses
  %i.bq = fmul double %i.bc, %i.bp
  store double %i.bq, ptr %2, align 8, !tbaa !9
  %i.br = load <2 x double>, ptr %14, align 8, !tbaa !9
  %i.bs = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x double> %i.br, %i.bt          ; 2 uses
  store <2 x double> %i.bu, ptr %14, align 8, !tbaa !9
  %i.bv = load double, ptr %i.aa, align 8, !tbaa !9
  %i.bw = tail call double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp ugt double %i.bw, %i.t
  br i1 %i.bx, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+00, ptr %7, align 8, !tbaa !9
  store double 0.000000e+00, ptr %8, align 8, !tbaa !9
  store double 1.000000e+00, ptr %9, align 8, !tbaa !9
  store double 0.000000e+00, ptr %10, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !9
  %i.by = sext i32 %i.p to i64                    ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %i.r, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store double 0.000000e+00, ptr %i.ca, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !9
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.cb = load double, ptr %2, align 8, !tbaa !9  ; 2 uses
  store double %i.cb, ptr %i.a, align 8, !tbaa !9
  %i.cc = tail call double @llvm.fabs.f64(double %i.cb)
  %i.cd = fcmp ugt double %i.cc, %i.t
  br i1 %i.cd, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @dlartg_(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %i.b) #5
  store double 1.000000e+00, ptr %9, align 8, !tbaa !9
  store double 0.000000e+00, ptr %10, align 8, !tbaa !9
  call void @drot_(ptr noundef nonnull @c__2, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.aa, ptr noundef nonnull %1, ptr noundef %7, ptr noundef %8) #5
  %i.ce = sext i32 %i.p to i64                    ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.r, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 16     ; 2 uses
  call void @drot_(ptr noundef nonnull @c__2, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %i.cg, ptr noundef nonnull %3, ptr noundef %7, ptr noundef %8) #5
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !9
  store double 0.000000e+00, ptr %2, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.cg, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !9
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.ch = extractelement <2 x double> %i.bu, i64 1
  %i.ci = tail call double @llvm.fabs.f64(double %i.ch)
  %i.cj = fcmp ugt double %i.ci, %i.t
  br i1 %i.cj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @dlartg_(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.aa, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %i.c) #5
  %i.ck = load double, ptr %10, align 8, !tbaa !9
  %i.cl = fneg double %i.ck
  store double %i.cl, ptr %10, align 8, !tbaa !9
  call void @drot_(ptr noundef nonnull @c__2, ptr noundef nonnull %0, ptr noundef nonnull @c__1, ptr noundef nonnull %i.aj, ptr noundef nonnull @c__1, ptr noundef %9, ptr noundef nonnull %10) #5
  call void @drot_(ptr noundef nonnull @c__2, ptr noundef nonnull %2, ptr noundef nonnull @c__1, ptr noundef nonnull %14, ptr noundef nonnull @c__1, ptr noundef %9, ptr noundef nonnull %10) #5
  store double 1.000000e+00, ptr %7, align 8, !tbaa !9
  store double 0.000000e+00, ptr %8, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !9
  %i.cm = sext i32 %i.p to i64                    ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.r, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  store double 0.000000e+00, ptr %i.co, align 8, !tbaa !9
  store double 0.000000e+00, ptr %15, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !9
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  call void @dlag2_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %i.j, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.i) #5
  %i.cp = load double, ptr %i.i, align 8, !tbaa !9
  %i.cq = fcmp oeq double %i.cp, 0.000000e+00
  br i1 %i.cq, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.cr = load double, ptr %i.g, align 8, !tbaa !9 ; 3 uses
  %i.cs = load double, ptr %0, align 8, !tbaa !9
  %i.ct = load double, ptr %i.k, align 8, !tbaa !9 ; 3 uses
  %i.cu = load double, ptr %2, align 8, !tbaa !9
  %i.cv = fneg double %i.cu
  %i.cw = fmul double %i.ct, %i.cv
  %i.cx = call double @llvm.fmuladd.f64(double %i.cr, double %i.cs, double %i.cw)
  store double %i.cx, ptr %i.d, align 8, !tbaa !9
  %i.cy = load double, ptr %i.aj, align 8, !tbaa !9
  %i.cz = load double, ptr %14, align 8, !tbaa !9
  %i.da = fneg double %i.cz
  %i.db = fmul double %i.ct, %i.da
  %i.dc = call double @llvm.fmuladd.f64(double %i.cr, double %i.cy, double %i.db)
  store double %i.dc, ptr %i.e, align 8, !tbaa !9
  %i.dd = load double, ptr %i.ak, align 8, !tbaa !9
  %i.de = load double, ptr %15, align 8, !tbaa !9
  %i.df = fneg double %i.de
  %i.dg = fmul double %i.ct, %i.df
  %i.dh = call double @llvm.fmuladd.f64(double %i.cr, double %i.dd, double %i.dg)
  store double %i.dh, ptr %i.f, align 8, !tbaa !9
  %i.di = call double @dlapy2_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  %i.dj = load double, ptr %i.g, align 8, !tbaa !9
  %i.dk = load double, ptr %i.aa, align 8, !tbaa !9
  %i.dl = fmul double %i.dj, %i.dk
  store double %i.dl, ptr %i.a, align 8, !tbaa !9
  %i.dm = call double @dlapy2_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f) #5
  %i.dn = fcmp ogt double %i.di, %i.dm
  br i1 %i.dn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @dlartg_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %i.c) #5
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.do = load double, ptr %i.g, align 8, !tbaa !9
  %i.dp = load double, ptr %i.aa, align 8, !tbaa !9
  %i.dq = fmul double %i.do, %i.dp
  store double %i.dq, ptr %i.a, align 8, !tbaa !9
  call void @dlartg_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %i.c) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dr = load double, ptr %10, align 8, !tbaa !9
  %i.ds = fneg double %i.dr
  store double %i.ds, ptr %10, align 8, !tbaa !9
  call void @drot_(ptr noundef nonnull @c__2, ptr noundef nonnull %0, ptr noundef nonnull @c__1, ptr noundef nonnull %i.aj, ptr noundef nonnull @c__1, ptr noundef %9, ptr noundef nonnull %10) #5
  call void @drot_(ptr noundef nonnull @c__2, ptr noundef nonnull %2, ptr noundef nonnull @c__1, ptr noundef nonnull %14, ptr noundef nonnull @c__1, ptr noundef %9, ptr noundef nonnull %10) #5
  %i.dt = load double, ptr %0, align 8, !tbaa !9
  %i.du = load double, ptr %i.aa, align 8, !tbaa !9
  %i.dv = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.du, i64 1 ; 3 uses
  %i.dx = fcmp oge <2 x double> %i.dw, zeroinitializer
  %i.dy = fneg <2 x double> %i.dw
  %i.dz = select <2 x i1> %i.dx, <2 x double> %i.dw, <2 x double> %i.dy
  %i.ea = load <2 x double>, ptr %i.aj, align 8, !tbaa !9 ; 3 uses
  %i.eb = fcmp oge <2 x double> %i.ea, zeroinitializer
  %i.ec = fneg <2 x double> %i.ea
  %i.ed = select <2 x i1> %i.eb, <2 x double> %i.ea, <2 x double> %i.ec
  %i.ee = fadd <2 x double> %i.dz, %i.ed          ; 2 uses
  %i.ef = load double, ptr %2, align 8, !tbaa !9  ; 2 uses
  store double %i.ef, ptr %i.a, align 8, !tbaa !9
  %i.eg = sext i32 %i.p to i64                    ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %i.r, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.eh, i64 16     ; 4 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !9
  %i.ek = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.ej, i64 1 ; 3 uses
  %i.em = fcmp oge <2 x double> %i.el, zeroinitializer
  %i.en = fneg <2 x double> %i.el
  %i.eo = select <2 x i1> %i.em, <2 x double> %i.el, <2 x double> %i.en
  %i.ep = load <2 x double>, ptr %14, align 8, !tbaa !9 ; 3 uses
  %i.eq = fcmp oge <2 x double> %i.ep, zeroinitializer
  %i.er = fneg <2 x double> %i.ep
  %i.es = select <2 x i1> %i.eq, <2 x double> %i.ep, <2 x double> %i.er
  %i.et = fadd <2 x double> %i.eo, %i.es          ; 2 uses
  %i.eu = shufflevector <2 x double> %i.ee, <2 x double> %i.et, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ev = shufflevector <2 x double> %i.ee, <2 x double> %i.et, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ew = fcmp oge <2 x double> %i.eu, %i.ev
  %i.ex = select <2 x i1> %i.ew, <2 x double> %i.eu, <2 x double> %i.ev ; 2 uses
  %i.ey = extractelement <2 x double> %i.ex, i64 0 ; 2 uses
  store double %i.ey, ptr %i.d, align 8, !tbaa !9
  %i.ez = extractelement <2 x double> %i.ex, i64 1 ; 2 uses
  store double %i.ez, ptr %i.e, align 8, !tbaa !9
  %i.fa = load double, ptr %i.g, align 8, !tbaa !9
  %i.fb = fmul double %i.ey, %i.fa
  %i.fc = load double, ptr %i.k, align 8, !tbaa !9 ; 3 uses
  %i.fd = fcmp oge double %i.fc, 0.000000e+00
  %i.fe = fneg double %i.fc
  %i.ff = select i1 %i.fd, double %i.fc, double %i.fe
  %i.fg = fmul double %i.ff, %i.ez
  %i.fh = fcmp ult double %i.fb, %i.fg
  br i1 %i.fh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @dlartg_(ptr noundef nonnull %2, ptr noundef nonnull %i.ei, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %i.b) #5
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @dlartg_(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %i.b) #5
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @drot_(ptr noundef nonnull @c__2, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.aa, ptr noundef nonnull %1, ptr noundef %7, ptr noundef %8) #5
  call void @drot_(ptr noundef nonnull @c__2, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %i.ei, ptr noundef nonnull %3, ptr noundef %7, ptr noundef %8) #5
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.ei, align 8, !tbaa !9
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  call void @dlasv2_(ptr noundef nonnull %2, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %10, ptr noundef %9, ptr noundef %8, ptr noundef %7) #5
end_hunk_0
