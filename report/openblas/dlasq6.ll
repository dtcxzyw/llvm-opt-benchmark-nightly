Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasq6?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1

; Function Attrs: nounwind uwtable
define void @dlasq6_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %2, i64 -8 ; 9 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !10
  %i.c = load i32, ptr %0, align 4, !tbaa !10
  %i.d = sub i32 %i.c, %i.b
  %i.e = icmp sgt i32 %i.d, -2
  br i1 %i.e, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call double @dlamch_(ptr noundef nonnull @.str) #2 ; 8 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !10
  %i.h = shl i32 %i.g, 2                          ; 4 uses
  %i.i = load i32, ptr %3, align 4, !tbaa !10     ; 4 uses
  %i.j = add nsw i32 %i.h, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr [8 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !12 ; 4 uses
  %i.o = getelementptr i8, ptr %i.l, i64 -24
  %i.p = load double, ptr %i.o, align 8, !tbaa !12 ; 5 uses
  store double %i.p, ptr %4, align 8, !tbaa !12
  %i.q = icmp eq i32 %i.i, 0
  %i.r = load i32, ptr %1, align 4, !tbaa !10
  %i.s = shl i32 %i.r, 2                          ; 2 uses
  %i.t = add i32 %i.s, -12                        ; 3 uses
  %.not290308 = icmp sgt i32 %i.h, %i.t           ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  br i1 %.not290308, label %.loopexit, label %.lr.ph312.preheader

.lr.ph312.preheader:                              ; preds = %bb.c
  %i.u = sext i32 %i.h to i64
  %i.v = sext i32 %i.t to i64
  br label %.lr.ph312

.lr.ph312:                                        ; preds = %.lr.ph312.preheader, %bb.h
  %indvars.iv318 = phi i64 [ %i.u, %.lr.ph312.preheader ], [ %indvars.iv.next319, %bb.h ] ; 3 uses
  %.0269310 = phi double [ %i.p, %.lr.ph312.preheader ], [ %.1270, %bb.h ] ; 3 uses
  %.0271309 = phi double [ %i.n, %.lr.ph312.preheader ], [ %i.ba, %bb.h ] ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv318 ; 8 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = load double, ptr %i.x, align 8, !tbaa !12 ; 3 uses
  %i.z = fadd double %.0269310, %i.y              ; 6 uses
  %i.aa = getelementptr i8, ptr %i.w, i64 -16
  store double %i.z, ptr %i.aa, align 8, !tbaa !12
  %i.ab = fcmp oeq double %i.z, 0.000000e+00
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph312
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !12
  %i.ac = getelementptr i8, ptr %i.w, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !12 ; 2 uses
  store double %i.ad, ptr %4, align 8, !tbaa !12
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph312
  %i.ae = getelementptr i8, ptr %i.w, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !12 ; 4 uses
  %i.ag = fmul double %i.f, %i.af
  %i.ah = fcmp olt double %i.ag, %i.z
  %i.ai = fmul double %i.f, %i.z
  %i.aj = fcmp olt double %i.ai, %i.af
  %or.cond = and i1 %i.aj, %i.ah
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = fdiv double %i.af, %i.z                 ; 2 uses
  %i.al = fmul double %i.y, %i.ak
  store double %i.al, ptr %i.w, align 8, !tbaa !12
  %i.am = fmul double %.0269310, %i.ak
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.an = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %.0269310, i64 1
  %i.ap = insertelement <2 x double> poison, double %i.z, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fdiv <2 x double> %i.ao, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.af, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x double> %i.ar, %i.at          ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 0
  store double %i.av, ptr %i.w, align 8, !tbaa !12
  %i.aw = extractelement <2 x double> %i.au, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.1272 = phi double [ 0.000000e+00, %bb.d ], [ %.0271309, %bb.f ], [ %.0271309, %bb.g ] ; 2 uses
  %.1270 = phi double [ %i.ad, %bb.d ], [ %i.am, %bb.f ], [ %i.aw, %bb.g ] ; 4 uses
  %i.ax = load double, ptr %4, align 8, !tbaa !12 ; 2 uses
  %.inv299 = fcmp ole double %i.ax, %.1270
  %.1270. = select i1 %.inv299, double %i.ax, double %.1270
  store double %.1270., ptr %4, align 8, !tbaa !12
  %i.ay = load double, ptr %i.w, align 8, !tbaa !12 ; 2 uses
  %i.az = fcmp ole double %.1272, %i.ay
  %i.ba = select i1 %i.az, double %.1272, double %i.ay ; 2 uses
  %indvars.iv.next319 = add nsw i64 %indvars.iv318, 4
  %.not290.not = icmp slt i64 %indvars.iv318, %i.v
  br i1 %.not290.not, label %.lr.ph312, label %.loopexit, !llvm.loop !8

bb.i:                                             ; preds = %bb.b
  br i1 %.not290308, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.bb = sext i32 %i.h to i64
  %i.bc = sext i32 %i.t to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %indvars.iv = phi i64 [ %i.bb, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %.2305 = phi double [ %i.p, %.lr.ph.preheader ], [ %.3, %bb.n ] ; 3 uses
  %.2273304 = phi double [ %i.n, %.lr.ph.preheader ], [ %i.cj, %bb.n ] ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv ; 7 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !12 ; 3 uses
  %i.bf = fadd double %.2305, %i.be               ; 6 uses
  %i.bg = getelementptr i8, ptr %i.bd, i64 -24
  store double %i.bf, ptr %i.bg, align 8, !tbaa !12
  %i.bh = fcmp oeq double %i.bf, 0.000000e+00
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.bi = getelementptr i8, ptr %i.bd, i64 -8
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !12
  %i.bj = getelementptr i8, ptr %i.bd, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !12 ; 2 uses
  store double %i.bk, ptr %4, align 8, !tbaa !12
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph
  %i.bl = getelementptr i8, ptr %i.bd, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !12 ; 4 uses
  %i.bn = fmul double %i.f, %i.bm
  %i.bo = fcmp olt double %i.bn, %i.bf
  %i.bp = fmul double %i.f, %i.bf
  %i.bq = fcmp olt double %i.bp, %i.bm
  %or.cond293 = and i1 %i.bq, %i.bo
  %i.br = getelementptr i8, ptr %i.bd, i64 -8     ; 2 uses
  br i1 %or.cond293, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bs = fdiv double %i.bm, %i.bf                ; 2 uses
  %i.bt = fmul double %i.be, %i.bs
  store double %i.bt, ptr %i.br, align 8, !tbaa !12
  %i.bu = fmul double %.2305, %i.bs
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bv = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %.2305, i64 1
  %i.bx = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = fdiv <2 x double> %i.bw, %i.by
  %i.ca = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x double> %i.bz, %i.cb          ; 2 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 0
  store double %i.cd, ptr %i.br, align 8, !tbaa !12
  %i.ce = extractelement <2 x double> %i.cc, i64 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %.3274 = phi double [ 0.000000e+00, %bb.j ], [ %.2273304, %bb.l ], [ %.2273304, %bb.m ] ; 2 uses
  %.3 = phi double [ %i.bk, %bb.j ], [ %i.bu, %bb.l ], [ %i.ce, %bb.m ] ; 4 uses
  %i.cf = load double, ptr %4, align 8, !tbaa !12 ; 2 uses
  %.inv = fcmp ole double %i.cf, %.3
  %.3. = select i1 %.inv, double %i.cf, double %.3
  store double %.3., ptr %4, align 8, !tbaa !12
  %i.cg = getelementptr i8, ptr %i.bd, i64 -8
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !12 ; 2 uses
  %i.ci = fcmp ole double %.3274, %i.ch
  %i.cj = select i1 %i.ci, double %.3274, double %i.ch ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 4
  %.not.not = icmp slt i64 %indvars.iv, %i.bc
  br i1 %.not.not, label %.lr.ph, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %bb.n, %bb.h, %bb.i, %bb.c
  %.4275 = phi double [ %i.ba, %bb.h ], [ %i.n, %bb.c ], [ %i.n, %bb.i ], [ %i.cj, %bb.n ]
  %.4 = phi double [ %.1270, %bb.h ], [ %i.p, %bb.c ], [ %i.p, %bb.i ], [ %.3, %bb.n ]
  store double %.4, ptr %9, align 8, !tbaa !12
  %i.ck = load double, ptr %4, align 8, !tbaa !12
  store double %i.ck, ptr %6, align 8, !tbaa !12
  %reass.sub = sub i32 %i.s, %i.i                 ; 3 uses
  %i.cl = add i32 %reass.sub, -8                  ; 2 uses
  %i.cm = shl i32 %i.i, 1                         ; 2 uses
  %i.cn = add nsw i32 %i.cl, %i.cm
  %i.co = load double, ptr %9, align 8, !tbaa !12
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr [8 x i8], ptr %i.a, i64 %i.cp ; 3 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -8     ; 3 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !12
  %i.ct = fadd double %i.co, %i.cs                ; 7 uses
  %i.cu = sext i32 %i.cl to i64
  %i.cv = getelementptr [8 x i8], ptr %i.a, i64 %i.cu ; 6 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 -16
  store double %i.ct, ptr %i.cw, align 8, !tbaa !12
  %i.cx = fcmp oeq double %i.ct, 0.000000e+00
  br i1 %i.cx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit
  store double 0.000000e+00, ptr %i.cv, align 8, !tbaa !12
  %i.cy = getelementptr i8, ptr %i.cq, i64 8
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !12 ; 2 uses
  store double %i.cz, ptr %8, align 8, !tbaa !12
  store double %i.cz, ptr %4, align 8, !tbaa !12
  %.pre = load double, ptr %8, align 8, !tbaa !12
  br label %bb.s

bb.p:                                             ; preds = %.loopexit
  %i.da = getelementptr i8, ptr %i.cq, i64 8      ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !12 ; 4 uses
  %i.dc = fmul double %i.f, %i.db
  %i.dd = fcmp olt double %i.dc, %i.ct
  %i.de = fmul double %i.f, %i.ct
  %i.df = fcmp olt double %i.de, %i.db
  %or.cond295 = and i1 %i.df, %i.dd
  br i1 %or.cond295, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dg = fdiv double %i.db, %i.ct                ; 2 uses
  %i.dh = load double, ptr %i.cr, align 8, !tbaa !12
  %i.di = fmul double %i.dg, %i.dh
  store double %i.di, ptr %i.cv, align 8, !tbaa !12
  %i.dj = load double, ptr %9, align 8, !tbaa !12
  %i.dk = fmul double %i.dg, %i.dj
  br label %.sink.split

bb.r:                                             ; preds = %bb.p
  %i.dl = load double, ptr %i.cr, align 8, !tbaa !12
  %i.dm = fdiv double %i.dl, %i.ct
  %i.dn = fmul double %i.db, %i.dm
  store double %i.dn, ptr %i.cv, align 8, !tbaa !12
  %i.do = load double, ptr %i.da, align 8, !tbaa !12
  %i.dp = load double, ptr %9, align 8, !tbaa !12
  %i.dq = fdiv double %i.dp, %i.ct
  %i.dr = fmul double %i.do, %i.dq
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.q
  %.sink = phi double [ %i.dk, %bb.q ], [ %i.dr, %bb.r ] ; 2 uses
  store double %.sink, ptr %8, align 8, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.o
  %10 = phi double [ %.pre, %bb.o ], [ %.sink, %.sink.split ] ; 2 uses
  %.5 = phi double [ 0.000000e+00, %bb.o ], [ %.4275, %.sink.split ]
  %i.ds = load double, ptr %4, align 8, !tbaa !12 ; 2 uses
  %.inv300 = fcmp ole double %i.ds, %10
  %. = select i1 %.inv300, double %i.ds, double %10 ; 2 uses
  store double %., ptr %4, align 8, !tbaa !12
  store double %., ptr %5, align 8, !tbaa !12
  %i.dt = add i32 %reass.sub, -4                  ; 3 uses
  %i.du = add nsw i32 %i.dt, %i.cm
  %i.dv = load double, ptr %8, align 8, !tbaa !12
  %i.dw = sext i32 %i.du to i64
  %i.dx = getelementptr [8 x i8], ptr %i.a, i64 %i.dw ; 3 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 -8     ; 3 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !12
  %i.ea = fadd double %i.dv, %i.dz                ; 7 uses
  %i.eb = getelementptr i8, ptr %i.cv, i64 16
  store double %i.ea, ptr %i.eb, align 8, !tbaa !12
  %i.ec = fcmp oeq double %i.ea, 0.000000e+00
  br i1 %i.ec, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ed = sext i32 %i.dt to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ed
  store double 0.000000e+00, ptr %i.ee, align 8, !tbaa !12
  %i.ef = getelementptr i8, ptr %i.dx, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !12 ; 2 uses
  store double %i.eg, ptr %7, align 8, !tbaa !12
  store double %i.eg, ptr %4, align 8, !tbaa !12
  %.pre321 = load double, ptr %7, align 8, !tbaa !12
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.eh = getelementptr i8, ptr %i.dx, i64 8      ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !12 ; 4 uses
  %i.ej = fmul double %i.f, %i.ei
  %i.ek = fcmp olt double %i.ej, %i.ea
  %i.el = fmul double %i.f, %i.ea
  %i.em = fcmp olt double %i.el, %i.ei
  %or.cond297 = and i1 %i.em, %i.ek
  %i.en = sext i32 %i.dt to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.en ; 2 uses
  br i1 %or.cond297, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ep = fdiv double %i.ei, %i.ea                ; 2 uses
  %i.eq = load double, ptr %i.dy, align 8, !tbaa !12
  %i.er = fmul double %i.ep, %i.eq
  store double %i.er, ptr %i.eo, align 8, !tbaa !12
  %i.es = load double, ptr %8, align 8, !tbaa !12
  %i.et = fmul double %i.ep, %i.es
  br label %.sink.split334

bb.w:                                             ; preds = %bb.u
  %i.eu = load double, ptr %i.dy, align 8, !tbaa !12
  %i.ev = fdiv double %i.eu, %i.ea
  %i.ew = fmul double %i.ei, %i.ev
  store double %i.ew, ptr %i.eo, align 8, !tbaa !12
  %i.ex = load double, ptr %i.eh, align 8, !tbaa !12
  %i.ey = load double, ptr %8, align 8, !tbaa !12
  %i.ez = fdiv double %i.ey, %i.ea
  %i.fa = fmul double %i.ex, %i.ez
  br label %.sink.split334

.sink.split334:                                   ; preds = %bb.w, %bb.v
  %.sink336 = phi double [ %i.et, %bb.v ], [ %i.fa, %bb.w ] ; 2 uses
  store double %.sink336, ptr %7, align 8, !tbaa !12
  br label %bb.x

bb.x:                                             ; preds = %.sink.split334, %bb.t
  %11 = phi double [ %.pre321, %bb.t ], [ %.sink336, %.sink.split334 ] ; 2 uses
  %.6 = phi double [ 0.000000e+00, %bb.t ], [ %.5, %.sink.split334 ]
  %i.fb = load double, ptr %4, align 8, !tbaa !12 ; 2 uses
  %.inv301 = fcmp ole double %i.fb, %11
  %.298 = select i1 %.inv301, double %i.fb, double %11
  store double %.298, ptr %4, align 8, !tbaa !12
  %i.fc = load double, ptr %7, align 8, !tbaa !12
  %i.fd = getelementptr i8, ptr %i.cv, i64 48
  store double %i.fc, ptr %i.fd, align 8, !tbaa !12
  %i.fe = sext i32 %reass.sub to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fe
  store double %.6, ptr %i.ff, align 8, !tbaa !12
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %bb.x
  ret void
}

declare double @dlamch_(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !13}
!9 = distinct !{!9, !13}
!10 = !{!5, !5, i64 0}
!11 = !{!"double", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_0
