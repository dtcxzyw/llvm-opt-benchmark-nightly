inline.NumInlined: 45
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%c%d-%d %c%d %c%d:%02d:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%d %d:%02d:\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%d:%02d:\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PT0S\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"mon\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"%s%s%02d:%02d:\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c" sec%s\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c" 0\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c" ago\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%02d\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"%02d.%0*d\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"%d.%0*d\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"%s%s%d %s%s\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c" %d %s%s\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1

; Function Attrs: nounwind uwtable
define i32 @DecodeInterval(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr noundef initializes((0, 24)) %4, ptr noundef initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 21 uses
  %i.c = alloca i32, align 4                      ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 17, ptr %3, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 0, ptr %5, align 4
  %.0166222 = add i32 %2, -1                      ; 2 uses
  %i.d = icmp sgt i32 %.0166222, -1
  br i1 %i.d, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 7 uses
  %i.j = zext nneg i32 %.0166222 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.at
  %indvars.iv = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next, %bb.at ] ; 8 uses
  %.0163226 = phi i1 [ false, %.lr.ph ], [ %.2165, %bb.at ] ; 18 uses
  %.0168225 = phi i32 [ 8, %.lr.ph ], [ %.5173, %bb.at ] ; 2 uses
  %.0174223 = phi i32 [ 0, %.lr.ph ], [ %.1175, %bb.at ] ; 9 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4
  switch i32 %i.l, label %.thread [
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 2, label %bb.i
    i32 0, label %bb.i
    i32 1, label %bb.am
    i32 6, label %bb.am
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i32 @DecodeTime(ptr noundef %i.n, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5) #13 ; 2 uses
  %.not200 = icmp eq i32 %i.o, 0
  br i1 %.not200, label %._crit_edge229, label %.thread

._crit_edge229:                                   ; preds = %bb.c
  %.pre = load i32, ptr %i.b, align 4
  br label %bb.ar

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.s = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.r, i32 noundef 58) #14
  %.not190 = icmp eq ptr %i.s, null
  br i1 %.not190, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = call i32 @DecodeTime(ptr noundef nonnull %i.r, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = load i8, ptr %i.v, align 1
  %i.x = icmp eq i8 %i.w, 45
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.e, align 8
  %i.z = sub i32 0, %i.y
  store i32 %i.z, ptr %i.e, align 8
  %i.aa = load <2 x i32>, ptr %4, align 8
  %i.ab = sub <2 x i32> zeroinitializer, %i.aa
  store <2 x i32> %i.ab, ptr %4, align 8
  %i.ac = load i32, ptr %5, align 4
  %i.ad = sub i32 0, %i.ac
  store i32 %i.ad, ptr %5, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 32, ptr %i.b, align 4
  br label %bb.ar

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.b
  %6 = icmp eq i32 %.0168225, 8
  %.1169 = select i1 %6, i32 18, i32 %.0168225
  %i.ae = tail call ptr @__errno_location() #15   ; 5 uses
  store i32 0, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call i32 @strtoint(ptr noundef %i.ag, ptr noundef nonnull %i.a, i32 noundef 10) #13
  store i32 %i.ah, ptr %i.c, align 4
  %i.ai = load i32, ptr %i.ae, align 4
  %i.aj = icmp eq i32 %i.ai, 34
  br i1 %i.aj, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1
  switch i8 %i.al, label %.thread [
    i8 45, label %bb.k
    i8 46, label %bb.m
    i8 0, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.an = call i32 @strtoint(ptr noundef nonnull %i.am, ptr noundef nonnull %i.a, i32 noundef 10) #13 ; 3 uses
  %i.ao = load i32, ptr %i.ae, align 4
  %i.ap = icmp eq i32 %i.ao, 34
  %i.aq = icmp ugt i32 %i.an, 11
  %or.cond3 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond3, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.a, align 8
  %i.as = load i8, ptr %i.ar, align 1
  %.not193 = icmp eq i8 %i.as, 0
  br i1 %.not193, label %.thread215, label %.thread

.thread215:                                       ; preds = %bb.l
  %i.at = load ptr, ptr %i.af, align 8
  %i.au = load i8, ptr %i.at, align 1
  %i.av = icmp eq i8 %i.au, 45
  %i.aw = sub nsw i32 0, %i.an
  %spec.select = select i1 %i.av, i32 %i.aw, i32 %i.an
  %i.ax = load i32, ptr %i.c, align 4
  %i.ay = mul i32 %i.ax, 12
  %i.az = add i32 %i.ay, %spec.select             ; 2 uses
  store i32 %i.az, ptr %i.c, align 4
  %i.ba = load i32, ptr %i.h, align 8
  %i.bb = add i32 %i.ba, %i.az
  store i32 %i.bb, ptr %i.h, align 8
  br label %AdjustFractDays.exit204

bb.m:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 4
  %i.bc = load ptr, ptr %i.a, align 8
  %i.bd = call double @strtod(ptr noundef %i.bc, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.be = load ptr, ptr %i.a, align 8
  %i.bf = load i8, ptr %i.be, align 1
  %.not191 = icmp eq i8 %i.bf, 0
  br i1 %.not191, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bg = load i32, ptr %i.ae, align 4
  %.not192 = icmp eq i32 %i.bg, 0
  br i1 %.not192, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bh = load ptr, ptr %i.af, align 8
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp eq i8 %i.bi, 45
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = fneg double %i.bd
  br label %bb.q

bb.q:                                             ; preds = %bb.j, %bb.p, %bb.o
  %.2160 = phi double [ 0.000000e+00, %bb.j ], [ %i.bk, %bb.p ], [ %i.bd, %bb.o ] ; 18 uses
  switch i32 %.1169, label %.thread [
    i32 30, label %bb.r
    i32 29, label %bb.s
    i32 18, label %bb.t
    i32 19, label %bb.w
    i32 20, label %bb.y
    i32 21, label %bb.aa
    i32 22, label %bb.ac
    i32 23, label %bb.af
    i32 25, label %bb.ai
    i32 26, label %bb.aj
    i32 27, label %bb.ak
    i32 28, label %bb.al
  ]

bb.r:                                             ; preds = %bb.q
  %i.bl = load i32, ptr %i.c, align 4
  %i.bm = sitofp i32 %i.bl to double
  %i.bn = fadd double %.2160, %i.bm
  %i.bo = call double @llvm.rint.f64(double %i.bn)
  %i.bp = load i32, ptr %5, align 4
  %i.bq = sitofp i32 %i.bp to double
  %i.br = fadd double %i.bo, %i.bq
  %i.bs = fptosi double %i.br to i32
  store i32 %i.bs, ptr %5, align 4
  store i32 16384, ptr %i.b, align 4
  br label %bb.ar

bb.s:                                             ; preds = %bb.q
  %i.bt = load i32, ptr %i.c, align 4
  %i.bu = sitofp i32 %i.bt to double
  %i.bv = fadd double %.2160, %i.bu
  %i.bw = fmul double %i.bv, 1.000000e+03
  %i.bx = call double @llvm.rint.f64(double %i.bw)
  %i.by = load i32, ptr %5, align 4
  %i.bz = sitofp i32 %i.by to double
  %i.ca = fadd double %i.bx, %i.bz
  %i.cb = fptosi double %i.ca to i32
  store i32 %i.cb, ptr %5, align 4
  store i32 8192, ptr %i.b, align 4
  br label %bb.ar

bb.t:                                             ; preds = %bb.q
  %i.cc = load i32, ptr %i.c, align 4
  %i.cd = load i32, ptr %4, align 8
  %i.ce = add i32 %i.cd, %i.cc
  store i32 %i.ce, ptr %4, align 8
  %i.cf = fmul double %.2160, 1.000000e+06
  %i.cg = call double @llvm.rint.f64(double %i.cf)
  %i.ch = load i32, ptr %5, align 4
  %i.ci = sitofp i32 %i.ch to double
  %i.cj = fadd double %i.cg, %i.ci
  %i.ck = fptosi double %i.cj to i32
  store i32 %i.ck, ptr %5, align 4
  %i.cl = fcmp oeq double %.2160, 0.000000e+00
  br i1 %i.cl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 4096, ptr %i.b, align 4
  br label %bb.ar

bb.v:                                             ; preds = %bb.t
  store i32 28672, ptr %i.b, align 4
  br label %bb.ar

bb.w:                                             ; preds = %bb.q
  %i.cm = load i32, ptr %i.c, align 4
  %i.cn = load i32, ptr %i.f, align 4
  %i.co = add i32 %i.cn, %i.cm
  store i32 %i.co, ptr %i.f, align 4
  %i.cp = fcmp oeq double %.2160, 0.000000e+00
  br i1 %i.cp, label %AdjustFractSeconds.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = fmul double %.2160, 6.000000e+01        ; 2 uses
  %i.cr = fptosi double %i.cq to i32              ; 2 uses
  %i.cs = load i32, ptr %4, align 8
  %i.ct = add i32 %i.cs, %i.cr
  store i32 %i.ct, ptr %4, align 8
  %i.cu = sitofp i32 %i.cr to double
  %i.cv = fsub double %i.cq, %i.cu
  %i.cw = fmul double %i.cv, 1.000000e+06
  %i.cx = call double @llvm.rint.f64(double %i.cw)
  %i.cy = load i32, ptr %5, align 4
  %i.cz = sitofp i32 %i.cy to double
  %i.da = fadd double %i.cx, %i.cz
  %i.db = fptosi double %i.da to i32
  store i32 %i.db, ptr %5, align 4
  br label %AdjustFractSeconds.exit

AdjustFractSeconds.exit:                          ; preds = %bb.w, %bb.x
  store i32 2048, ptr %i.b, align 4
  br label %bb.ar

bb.y:                                             ; preds = %bb.q
  %i.dc = load i32, ptr %i.c, align 4
  %i.dd = load i32, ptr %i.e, align 8
  %i.de = add i32 %i.dd, %i.dc
  store i32 %i.de, ptr %i.e, align 8
  %i.df = fcmp oeq double %.2160, 0.000000e+00
  br i1 %i.df, label %AdjustFractSeconds.exit202, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = fmul double %.2160, 3.600000e+03        ; 2 uses
  %i.dh = fptosi double %i.dg to i32              ; 2 uses
  %i.di = load i32, ptr %4, align 8
  %i.dj = add i32 %i.di, %i.dh
  store i32 %i.dj, ptr %4, align 8
  %i.dk = sitofp i32 %i.dh to double
  %i.dl = fsub double %i.dg, %i.dk
  %i.dm = fmul double %i.dl, 1.000000e+06
  %i.dn = call double @llvm.rint.f64(double %i.dm)
  %i.do = load i32, ptr %5, align 4
  %i.dp = sitofp i32 %i.do to double
  %i.dq = fadd double %i.dn, %i.dp
  %i.dr = fptosi double %i.dq to i32
  store i32 %i.dr, ptr %5, align 4
  br label %AdjustFractSeconds.exit202

AdjustFractSeconds.exit202:                       ; preds = %bb.y, %bb.z
  store i32 1024, ptr %i.b, align 4
  br label %bb.ar

bb.aa:                                            ; preds = %bb.q
  %i.ds = load i32, ptr %i.c, align 4
  %i.dt = load i32, ptr %i.i, align 4
  %i.du = add i32 %i.dt, %i.ds
  store i32 %i.du, ptr %i.i, align 4
  %i.dv = fcmp oeq double %.2160, 0.000000e+00
  br i1 %i.dv, label %AdjustFractSeconds.exit203, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = fmul double %.2160, 8.640000e+04        ; 2 uses
  %i.dx = fptosi double %i.dw to i32              ; 2 uses
  %i.dy = load i32, ptr %4, align 8
  %i.dz = add i32 %i.dy, %i.dx
  store i32 %i.dz, ptr %4, align 8
  %i.ea = sitofp i32 %i.dx to double
  %i.eb = fsub double %i.dw, %i.ea
  %i.ec = fmul double %i.eb, 1.000000e+06
  %i.ed = call double @llvm.rint.f64(double %i.ec)
  %i.ee = load i32, ptr %5, align 4
  %i.ef = sitofp i32 %i.ee to double
  %i.eg = fadd double %i.ed, %i.ef
  %i.eh = fptosi double %i.eg to i32
  store i32 %i.eh, ptr %5, align 4
  br label %AdjustFractSeconds.exit203

AdjustFractSeconds.exit203:                       ; preds = %bb.aa, %bb.ab
  %i.ei = and i32 %.0174223, 8
  %i.ej = xor i32 %i.ei, 8                        ; 2 uses
  store i32 %i.ej, ptr %i.b, align 4
  br label %bb.ar

bb.ac:                                            ; preds = %bb.q
  %i.ek = load i32, ptr %i.c, align 4
  %i.el = mul i32 %i.ek, 7
  %i.em = load i32, ptr %i.i, align 4
  %i.en = add i32 %i.em, %i.el                    ; 2 uses
  store i32 %i.en, ptr %i.i, align 4
  %i.eo = fcmp oeq double %.2160, 0.000000e+00
  br i1 %i.eo, label %AdjustFractDays.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = fmul double %.2160, 7.000000e+00        ; 2 uses
  %i.eq = fptosi double %i.ep to i32              ; 2 uses
  %i.er = add i32 %i.en, %i.eq
  store i32 %i.er, ptr %i.i, align 4
  %i.es = sitofp i32 %i.eq to double
  %i.et = fsub double %i.ep, %i.es                ; 2 uses
  %i.eu = fcmp oeq double %i.et, 0.000000e+00
  br i1 %i.eu, label %AdjustFractDays.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ev = fmul double %i.et, 8.640000e+04         ; 2 uses
  %i.ew = fptosi double %i.ev to i32              ; 2 uses
  %i.ex = load i32, ptr %4, align 8
  %i.ey = add i32 %i.ex, %i.ew
  store i32 %i.ey, ptr %4, align 8
  %i.ez = sitofp i32 %i.ew to double
  %i.fa = fsub double %i.ev, %i.ez
  %i.fb = fmul double %i.fa, 1.000000e+06
  %i.fc = call double @llvm.rint.f64(double %i.fb)
  %i.fd = load i32, ptr %5, align 4
  %i.fe = sitofp i32 %i.fd to double
  %i.ff = fadd double %i.fc, %i.fe
  %i.fg = fptosi double %i.ff to i32
  store i32 %i.fg, ptr %5, align 4
  br label %AdjustFractDays.exit

AdjustFractDays.exit:                             ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.fh = and i32 %.0174223, 8
  %i.fi = xor i32 %i.fh, 8                        ; 2 uses
  store i32 %i.fi, ptr %i.b, align 4
  br label %bb.ar

bb.af:                                            ; preds = %bb.q
  %i.fj = load i32, ptr %i.c, align 4
  %i.fk = load i32, ptr %i.h, align 8
  %i.fl = add i32 %i.fk, %i.fj
  store i32 %i.fl, ptr %i.h, align 8
  %i.fm = fcmp oeq double %.2160, 0.000000e+00
  br i1 %i.fm, label %AdjustFractDays.exit204, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fn = fmul double %.2160, 3.000000e+01        ; 2 uses
  %i.fo = fptosi double %i.fn to i32              ; 2 uses
  %i.fp = load i32, ptr %i.i, align 4
  %i.fq = add i32 %i.fp, %i.fo
  store i32 %i.fq, ptr %i.i, align 4
  %i.fr = sitofp i32 %i.fo to double
  %i.fs = fsub double %i.fn, %i.fr                ; 2 uses
  %i.ft = fcmp oeq double %i.fs, 0.000000e+00
  br i1 %i.ft, label %AdjustFractDays.exit204, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fu = fmul double %i.fs, 8.640000e+04         ; 2 uses
  %i.fv = fptosi double %i.fu to i32              ; 2 uses
  %i.fw = load i32, ptr %4, align 8
  %i.fx = add i32 %i.fw, %i.fv
  store i32 %i.fx, ptr %4, align 8
  %i.fy = sitofp i32 %i.fv to double
  %i.fz = fsub double %i.fu, %i.fy
  %i.ga = fmul double %i.fz, 1.000000e+06
  %i.gb = call double @llvm.rint.f64(double %i.ga)
  %i.gc = load i32, ptr %5, align 4
  %i.gd = sitofp i32 %i.gc to double
  %i.ge = fadd double %i.gb, %i.gd
  %i.gf = fptosi double %i.ge to i32
  store i32 %i.gf, ptr %5, align 4
  br label %AdjustFractDays.exit204

AdjustFractDays.exit204:                          ; preds = %.thread215, %bb.af, %bb.ag, %bb.ah
  store i32 2, ptr %i.b, align 4
  br label %bb.ar

bb.ai:                                            ; preds = %bb.q
  %i.gg = load i32, ptr %i.c, align 4
  %i.gh = load i32, ptr %i.g, align 4
  %i.gi = add i32 %i.gh, %i.gg
  store i32 %i.gi, ptr %i.g, align 4
  %i.gj = fmul double %.2160, 1.200000e+01
  %i.gk = call double @llvm.rint.f64(double %i.gj)
  %i.gl = load i32, ptr %i.h, align 8
  %i.gm = sitofp i32 %i.gl to double
  %i.gn = fadd double %i.gk, %i.gm
  %i.go = fptosi double %i.gn to i32
  store i32 %i.go, ptr %i.h, align 8
  %i.gp = and i32 %.0174223, 4
  %i.gq = xor i32 %i.gp, 4                        ; 2 uses
  store i32 %i.gq, ptr %i.b, align 4
  br label %bb.ar

bb.aj:                                            ; preds = %bb.q
  %i.gr = load i32, ptr %i.c, align 4
  %i.gs = mul i32 %i.gr, 10
  %i.gt = load i32, ptr %i.g, align 4
  %i.gu = add i32 %i.gt, %i.gs
  store i32 %i.gu, ptr %i.g, align 4
  %i.gv = fmul double %.2160, 1.200000e+01
  %i.gw = fmul double %i.gv, 1.000000e+01
  %i.gx = call double @llvm.rint.f64(double %i.gw)
  %i.gy = load i32, ptr %i.h, align 8
  %i.gz = sitofp i32 %i.gy to double
  %i.ha = fadd double %i.gx, %i.gz
  %i.hb = fptosi double %i.ha to i32
  store i32 %i.hb, ptr %i.h, align 8
  %i.hc = and i32 %.0174223, 4
  %i.hd = xor i32 %i.hc, 4                        ; 2 uses
  store i32 %i.hd, ptr %i.b, align 4
  br label %bb.ar

bb.ak:                                            ; preds = %bb.q
  %i.he = load i32, ptr %i.c, align 4
  %i.hf = mul i32 %i.he, 100
  %i.hg = load i32, ptr %i.g, align 4
  %i.hh = add i32 %i.hg, %i.hf
  store i32 %i.hh, ptr %i.g, align 4
  %i.hi = fmul double %.2160, 1.200000e+01
  %i.hj = fmul double %i.hi, 1.000000e+02
  %i.hk = call double @llvm.rint.f64(double %i.hj)
  %i.hl = load i32, ptr %i.h, align 8
  %i.hm = sitofp i32 %i.hl to double
  %i.hn = fadd double %i.hk, %i.hm
  %i.ho = fptosi double %i.hn to i32
  store i32 %i.ho, ptr %i.h, align 8
  %i.hp = and i32 %.0174223, 4
  %i.hq = xor i32 %i.hp, 4                        ; 2 uses
  store i32 %i.hq, ptr %i.b, align 4
  br label %bb.ar

bb.al:                                            ; preds = %bb.q
  %i.hr = load i32, ptr %i.c, align 4
  %i.hs = mul i32 %i.hr, 1000
  %i.ht = load i32, ptr %i.g, align 4
  %i.hu = add i32 %i.ht, %i.hs
  store i32 %i.hu, ptr %i.g, align 4
  %i.hv = fmul double %.2160, 1.200000e+01
  %i.hw = fmul double %i.hv, 1.000000e+03
  %i.hx = call double @llvm.rint.f64(double %i.hw)
  %i.hy = load i32, ptr %i.h, align 8
  %i.hz = sitofp i32 %i.hy to double
  %i.ia = fadd double %i.hx, %i.hz
  %i.ib = fptosi double %i.ia to i32
  store i32 %i.ib, ptr %i.h, align 8
  %i.ic = and i32 %.0174223, 4
  %i.id = xor i32 %i.ic, 4                        ; 2 uses
  store i32 %i.id, ptr %i.b, align 4
  br label %bb.ar

bb.am:                                            ; preds = %bb.b, %bb.b
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = trunc nuw nsw i64 %indvars.iv to i32
  %i.ih = call i32 @DecodeUnits(i32 noundef %i.ig, ptr noundef %i.if, ptr noundef nonnull %i.c) #13 ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 8
  br i1 %i.ii, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.b, align 4
  switch i32 %i.ih, label %.thread [
    i32 17, label %bb.ao
    i32 19, label %bb.ap
    i32 0, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ij = load i32, ptr %i.c, align 4
  br label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %i.ik = load i32, ptr %i.c, align 4
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  store i32 7182, ptr %i.b, align 4
  %i.il = load i32, ptr %i.c, align 4
  store i32 %i.il, ptr %3, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge229, %bb.ao, %bb.ap, %bb.aq, %bb.r, %bb.s, %AdjustFractSeconds.exit, %AdjustFractSeconds.exit202, %AdjustFractSeconds.exit203, %AdjustFractDays.exit, %AdjustFractDays.exit204, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.v, %bb.u, %bb.h
  %i.im = phi i32 [ 7182, %bb.aq ], [ 32, %bb.h ], [ 16384, %bb.r ], [ 8192, %bb.s ], [ 4096, %bb.u ], [ 28672, %bb.v ], [ 2048, %AdjustFractSeconds.exit ], [ 1024, %AdjustFractSeconds.exit202 ], [ %i.ej, %AdjustFractSeconds.exit203 ], [ %i.fi, %AdjustFractDays.exit ], [ 2, %AdjustFractDays.exit204 ], [ %i.gq, %bb.ai ], [ %i.hd, %bb.aj ], [ %i.hq, %bb.ak ], [ %i.id, %bb.al ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ %.pre, %._crit_edge229 ] ; 2 uses
  %.4172 = phi i32 [ 0, %bb.aq ], [ 21, %bb.h ], [ 30, %bb.r ], [ 29, %bb.s ], [ 18, %bb.u ], [ 18, %bb.v ], [ 19, %AdjustFractSeconds.exit ], [ 21, %AdjustFractSeconds.exit202 ], [ 21, %AdjustFractSeconds.exit203 ], [ 22, %AdjustFractDays.exit ], [ 23, %AdjustFractDays.exit204 ], [ 25, %bb.ai ], [ 26, %bb.aj ], [ 27, %bb.ak ], [ 28, %bb.al ], [ %i.ij, %bb.ao ], [ %i.ik, %bb.ap ], [ 21, %._crit_edge229 ]
  %.1164 = phi i1 [ %.0163226, %bb.aq ], [ %.0163226, %bb.h ], [ %.0163226, %bb.r ], [ %.0163226, %bb.s ], [ %.0163226, %bb.u ], [ %.0163226, %bb.v ], [ %.0163226, %AdjustFractSeconds.exit ], [ %.0163226, %AdjustFractSeconds.exit202 ], [ %.0163226, %AdjustFractSeconds.exit203 ], [ %.0163226, %AdjustFractDays.exit ], [ %.0163226, %AdjustFractDays.exit204 ], [ %.0163226, %bb.ai ], [ %.0163226, %bb.aj ], [ %.0163226, %bb.ak ], [ %.0163226, %bb.al ], [ %.0163226, %bb.ao ], [ true, %bb.ap ], [ %.0163226, %._crit_edge229 ]
  %i.in = and i32 %i.im, %.0174223
  %.not201 = icmp eq i32 %i.in, 0
  br i1 %.not201, label %bb.as, label %.thread

bb.as:                                            ; preds = %bb.ar
  %i.io = or i32 %i.im, %.0174223
  br label %bb.at

bb.at:                                            ; preds = %bb.am, %bb.as
  %.1175 = phi i32 [ %i.io, %bb.as ], [ %.0174223, %bb.am ] ; 2 uses
  %.5173 = phi i32 [ %.4172, %bb.as ], [ 8, %bb.am ]
  %.2165 = phi i1 [ %.1164, %bb.as ], [ %.0163226, %bb.am ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ip = icmp sgt i64 %indvars.iv, 0
  br i1 %i.ip, label %bb.b, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.at
  %i.iq = icmp eq i32 %.1175, 0
  br i1 %i.iq, label %.thread, label %bb.au

bb.au:                                            ; preds = %._crit_edge
  %i.ir = load i32, ptr %5, align 4               ; 3 uses
  %.not = icmp eq i32 %i.ir, 0
  br i1 %.not, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.is = sdiv i32 %i.ir, 1000000                 ; 2 uses
  %i.it = mul nsw i32 %i.is, -1000000
  %i.iu = add i32 %i.it, %i.ir
  store i32 %i.iu, ptr %5, align 4
  %i.iv = load i32, ptr %4, align 8
  %i.iw = add i32 %i.iv, %i.is
  store i32 %i.iw, ptr %4, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  br i1 %.2165, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %bb.aw
  %i.ix = load i32, ptr %5, align 4
  %i.iy = sub i32 0, %i.ix
  store i32 %i.iy, ptr %5, align 4
  %i.iz = load <4 x i32>, ptr %4, align 8
  %i.ja = sub <4 x i32> zeroinitializer, %i.iz
  store <4 x i32> %i.ja, ptr %4, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jc = load <2 x i32>, ptr %i.jb, align 8
  %i.jd = sub <2 x i32> zeroinitializer, %i.jc
  store <2 x i32> %i.jd, ptr %i.jb, align 8
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.k, %bb.ar, %bb.b, %bb.an, %bb.q, %bb.j, %bb.m, %bb.n, %bb.i, %bb.c, %bb.a, %bb.aw, %bb.ax, %._crit_edge
  %.5 = phi i32 [ 0, %bb.aw ], [ -1, %._crit_edge ], [ 0, %bb.ax ], [ -1, %bb.a ], [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.ar ], [ -1, %bb.q ], [ -1, %bb.m ], [ -2, %bb.i ], [ -1, %bb.j ], [ %i.o, %bb.c ], [ -1, %bb.b ], [ -1, %bb.an ], [ -2, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @DecodeTime(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @strtoint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @AdjustFractDays(double noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 7, 31) %3) unnamed_addr #7 {
bb.a:
  %i.a = fcmp oeq double %0, 0.000000e+00
  br i1 %i.a, label %AdjustFractSeconds.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = uitofp nneg i32 %3 to double
  %i.c = fmul double %0, %i.b                     ; 2 uses
  %i.d = fptosi double %i.c to i32                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i32 %i.f, %i.d
  store i32 %i.g, ptr %i.e, align 4
  %i.h = sitofp i32 %i.d to double
  %i.i = fsub double %i.c, %i.h                   ; 2 uses
  %i.j = fcmp oeq double %i.i, 0.000000e+00
  br i1 %i.j, label %AdjustFractSeconds.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = fmul double %i.i, 8.640000e+04           ; 2 uses
  %i.l = fptosi double %i.k to i32                ; 2 uses
  %i.m = load i32, ptr %1, align 8
  %i.n = add i32 %i.m, %i.l
  store i32 %i.n, ptr %1, align 8
  %i.o = sitofp i32 %i.l to double
  %i.p = fsub double %i.k, %i.o
  %i.q = fmul double %i.p, 1.000000e+06
  %i.r = tail call double @llvm.rint.f64(double %i.q)
  %i.s = load i32, ptr %2, align 4
  %i.t = sitofp i32 %i.s to double
  %i.u = fadd double %i.r, %i.t
  %i.v = fptosi double %i.u to i32
  store i32 %i.v, ptr %2, align 4
  br label %AdjustFractSeconds.exit

AdjustFractSeconds.exit:                          ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare i32 @DecodeUnits(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @EncodeInterval(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4              ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4              ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8              ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 16 uses
  %i.k = load i32, ptr %0, align 8                ; 13 uses
  switch i32 %2, label %bb.al [
    i32 2, label %bb.b
    i32 3, label %bb.q
    i32 0, label %bb.ae
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %i.b, 0
  %i.m = icmp slt i32 %i.d, 0
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  %i.n = icmp slt i32 %i.f, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.n
  %i.o = icmp slt i32 %i.h, 0
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.o
  %i.p = icmp slt i32 %i.j, 0
  %or.cond7 = select i1 %or.cond5, i1 true, i1 %i.p
  %i.q = or i32 %i.k, %1
  %i.r = icmp slt i32 %i.q, 0
  %i.s = select i1 %or.cond7, i1 true, i1 %i.r    ; 3 uses
  %i.t = icmp sgt i32 %i.b, 0
  %i.u = icmp sgt i32 %i.d, 0
  %or.cond11 = select i1 %i.t, i1 true, i1 %i.u
  %i.v = icmp sgt i32 %i.f, 0
  %or.cond13 = select i1 %or.cond11, i1 true, i1 %i.v
  %i.w = icmp sgt i32 %i.h, 0
  %or.cond15 = select i1 %or.cond13, i1 true, i1 %i.w
  %i.x = icmp sgt i32 %i.j, 0
  %or.cond17 = select i1 %or.cond15, i1 true, i1 %i.x
  %i.y = icmp sgt i32 %i.k, 0
  %or.cond19 = select i1 %or.cond17, i1 true, i1 %i.y
  %i.z = icmp sgt i32 %1, 0
  %i.aa = or i1 %i.z, %or.cond19                  ; 2 uses
  %i.ab = icmp ne i32 %i.b, 0
  %i.ac = icmp ne i32 %i.d, 0
  %i.ad = select i1 %i.ab, i1 true, i1 %i.ac      ; 3 uses
  %i.ae = icmp ne i32 %i.f, 0                     ; 2 uses
  %i.af = icmp ne i32 %i.h, 0
  %or.cond21 = select i1 %i.ae, i1 true, i1 %i.af
  %i.ag = icmp ne i32 %i.j, 0
  %or.cond23 = select i1 %or.cond21, i1 true, i1 %i.ag
  %i.ah = icmp ne i32 %i.k, 0
  %or.cond25 = select i1 %or.cond23, i1 true, i1 %i.ah
  br i1 %or.cond25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp ne i32 %1, 0
  %i.aj = and i1 %i.ai, %i.ad
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ak = phi i1 [ %i.aj, %bb.c ], [ %i.ad, %bb.b ]
  %or.cond27 = select i1 %i.s, i1 %i.aa, i1 false
  %i.al = select i1 %or.cond27, i1 true, i1 %i.ak ; 2 uses
  %not. = xor i1 %i.s, true
  %i.am = select i1 %not., i1 true, i1 %i.al
  br i1 %i.am, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 45, ptr %3, align 1
  %i.ao = sub i32 0, %i.b
  %i.ap = sub i32 0, %i.d
  %i.aq = sub i32 0, %i.f
  %i.ar = sub i32 0, %i.h
  %i.as = sub i32 0, %i.j
  %i.at = sub i32 0, %i.k
  %i.au = sub i32 0, %1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0258 = phi i32 [ %i.at, %bb.e ], [ %i.k, %bb.d ] ; 4 uses
  %.0257 = phi i32 [ %i.as, %bb.e ], [ %i.j, %bb.d ] ; 4 uses
  %.0256 = phi i32 [ %i.ar, %bb.e ], [ %i.h, %bb.d ] ; 4 uses
  %.0255 = phi i32 [ %i.aq, %bb.e ], [ %i.f, %bb.d ] ; 3 uses
  %.0254 = phi i32 [ %i.ap, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %.0253 = phi i32 [ %i.ao, %bb.e ], [ %i.b, %bb.d ] ; 3 uses
  %.0252 = phi ptr [ %i.an, %bb.e ], [ %3, %bb.d ] ; 11 uses
  %.0 = phi i32 [ %i.au, %bb.e ], [ %1, %bb.d ]   ; 5 uses
  %or.cond31 = select i1 %i.s, i1 true, i1 %i.aa
  br i1 %or.cond31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0252, ptr noundef nonnull @.str) #13 ; 0 uses
  br label %AppendSeconds.exit

bb.h:                                             ; preds = %bb.f
  br i1 %i.al, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp slt i32 %.0253, 0
  %i.ax = icmp slt i32 %.0254, 0
  %i.ay = select i1 %i.aw, i1 true, i1 %i.ax
  %i.az = icmp slt i32 %.0255, 0
  %i.ba = icmp slt i32 %.0256, 0
  %i.bb = icmp slt i32 %.0257, 0
  %or.cond33 = select i1 %i.ba, i1 true, i1 %i.bb
  %i.bc = or i32 %.0, %.0258
  %i.bd = icmp slt i32 %i.bc, 0
  %i.be = select i1 %or.cond33, i1 true, i1 %i.bd
  %i.bf = select i1 %i.ay, i32 45, i32 43
  %i.bg = tail call i32 @llvm.abs.i32(i32 %.0253, i1 false)
  %i.bh = tail call i32 @llvm.abs.i32(i32 %.0254, i1 false)
  %i.bi = select i1 %i.az, i32 45, i32 43
  %i.bj = tail call i32 @llvm.abs.i32(i32 %.0255, i1 false)
  %i.bk = select i1 %i.be, i32 45, i32 43
  %i.bl = tail call i32 @llvm.abs.i32(i32 %.0256, i1 false)
  %i.bm = tail call i32 @llvm.abs.i32(i32 %.0257, i1 false)
  %i.bn = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.0252, ptr noundef nonnull @.str.1, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bh, i32 noundef %i.bi, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %i.bl, i32 noundef %i.bm) #13 ; 0 uses
  %i.bo = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0252) #14
  %i.bp = getelementptr inbounds nuw i8, ptr %.0252, i64 %i.bo ; 3 uses
  %i.bq = icmp eq i32 %.0, 0
  %i.br = tail call i32 @llvm.abs.i32(i32 %.0258, i1 false) ; 2 uses
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
end_hunk_0
