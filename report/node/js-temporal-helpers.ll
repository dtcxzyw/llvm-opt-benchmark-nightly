inline.NumInlined: 320
inline.NumDeleted: 176
begin_hunk_0_@_ZN2v88internal8temporal15IsValidDurationEPNS0_7IsolateERKNS1_14DurationRecordE:bb.a
  %i.v = fcmp olt double %i.u, 0.000000e+00
  br i1 %i.v, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = fcmp ogt double %i.u, 0.000000e+00
  br i1 %i.w, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load double, ptr %i.x, align 8           ; 2 uses
  %i.z = fcmp olt double %i.y, 0.000000e+00
  br i1 %i.z, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = fcmp ogt double %i.y, 0.000000e+00
  br i1 %i.aa, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load double, ptr %i.ab, align 8         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 0.000000e+00
  br i1 %i.ad, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = fcmp ogt double %i.ac, 0.000000e+00
  br i1 %i.ae, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load double, ptr %i.af, align 8         ; 2 uses
  %i.ah = fcmp olt double %i.ag, 0.000000e+00
  br i1 %i.ah, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = fcmp ogt double %i.ag, 0.000000e+00
  br i1 %i.ai, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ak = load double, ptr %i.aj, align 8         ; 2 uses
  %i.al = fcmp olt double %i.ak, 0.000000e+00
  br i1 %i.al, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = fcmp ogt double %i.ak, 0.000000e+00
  %..i = zext i1 %i.am to i32
  br label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit

_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.1.i = phi i32 [ 1, %bb.f ], [ -1, %bb.a ], [ 1, %bb.b ], [ -1, %bb.c ], [ 1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.s ], [ -1, %bb.g ], [ 1, %bb.h ], [ -1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.k ], [ 1, %bb.l ], [ -1, %bb.m ], [ 1, %bb.n ], [ -1, %bb.o ], [ 1, %bb.p ], [ -1, %bb.q ], [ 1, %bb.r ], [ %..i, %bb.t ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = tail call double @llvm.fabs.f64(double %.fr145) ; 4 uses
  %i.ap = fcmp ueq double %i.ao, +inf
  br i1 %i.ap, label %bb.al, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load double, ptr %i.aq, align 8
  %.fr149 = freeze double %i.ar                   ; 3 uses
  %i.as = tail call double @llvm.fabs.f64(double %.fr149) ; 4 uses
  %i.at = fcmp ueq double %i.as, +inf
  br i1 %i.at, label %bb.al, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load double, ptr %i.au, align 8         ; 3 uses
  %i.aw = tail call double @llvm.fabs.f64(double %i.av) ; 4 uses
  %i.ax = fcmp ueq double %i.aw, +inf
  br i1 %i.ax, label %bb.al, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = load double, ptr %i.an, align 8         ; 4 uses
  %i.az = tail call double @llvm.fabs.f64(double %i.ay)
  %i.ba = fcmp ueq double %i.az, +inf
  br i1 %i.ba, label %bb.al, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load double, ptr %i.bb, align 8         ; 4 uses
  %i.bd = tail call double @llvm.fabs.f64(double %i.bc)
  %i.be = fcmp ueq double %i.bd, +inf
  br i1 %i.be, label %bb.al, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load double, ptr %i.bf, align 8         ; 4 uses
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ueq double %i.bh, +inf
  br i1 %i.bi, label %bb.al, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load double, ptr %i.bj, align 8         ; 4 uses
  %i.bl = tail call double @llvm.fabs.f64(double %i.bk)
  %i.bm = fcmp ueq double %i.bl, +inf
  br i1 %i.bm, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bo = load double, ptr %i.bn, align 8         ; 5 uses
  %i.bp = tail call double @llvm.fabs.f64(double %i.bo)
  %i.bq = fcmp ueq double %i.bp, +inf
  br i1 %i.bq, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bs = load double, ptr %i.br, align 8         ; 5 uses
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs)
  %i.bu = fcmp ueq double %i.bt, +inf
  br i1 %i.bu, label %bb.al, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bw = load double, ptr %i.bv, align 8
  %.fr147 = freeze double %i.bw                   ; 5 uses
  %i.bx = tail call double @llvm.fabs.f64(double %.fr147)
  %i.by = fcmp ueq double %i.bx, +inf
  br i1 %i.by, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bz = icmp sgt i32 %.1.i, 0
  br i1 %i.bz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ca = insertelement <8 x double> poison, double %.fr149, i64 0
  %i.cb = insertelement <8 x double> %i.ca, double %i.av, i64 1
  %i.cc = insertelement <8 x double> %i.cb, double %i.ay, i64 2
  %i.cd = insertelement <8 x double> %i.cc, double %i.bc, i64 3
  %i.ce = insertelement <8 x double> %i.cd, double %i.bg, i64 4
  %i.cf = insertelement <8 x double> %i.ce, double %i.bk, i64 5
  %i.cg = insertelement <8 x double> %i.cf, double %i.bo, i64 6
  %i.ch = insertelement <8 x double> %i.cg, double %i.bs, i64 7
  %.fr143 = freeze <8 x double> %i.ch
  %i.ci = fcmp uge double %.fr147, 0.000000e+00
  %i.cj = fcmp ult double %i.ao, f0x41F0000000000000
  %.old100 = fcmp ult double %i.as, f0x41F0000000000000
  %.old104 = fcmp ult double %i.aw, f0x41F0000000000000
  %i.ck = fcmp olt <8 x double> %.fr143, zeroinitializer
  %i.cl = bitcast <8 x i1> %i.ck to i8
  %i.cm = icmp eq i8 %i.cl, 0
  %op.rdx = and i1 %i.cm, %i.ci
  %op.rdx138 = and i1 %i.cj, %.old100
  %op.rdx139 = and i1 %i.b, %.old104
  %op.rdx140 = and i1 %op.rdx, %op.rdx138
  %op.rdx141 = and i1 %op.rdx140, %op.rdx139
  br i1 %op.rdx141, label %bb.ah, label %bb.al

bb.af:                                            ; preds = %bb.ad
  %i.cn = icmp slt i32 %.1.i, 0
  br i1 %i.cn, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.co = insertelement <8 x double> poison, double %.fr145, i64 0
  %i.cp = insertelement <8 x double> %i.co, double %.fr149, i64 1
  %i.cq = insertelement <8 x double> %i.cp, double %i.av, i64 2
  %i.cr = insertelement <8 x double> %i.cq, double %i.ay, i64 3
  %i.cs = insertelement <8 x double> %i.cr, double %i.bc, i64 4
  %i.ct = insertelement <8 x double> %i.cs, double %i.bg, i64 5
  %i.cu = insertelement <8 x double> %i.ct, double %i.bk, i64 6
  %i.cv = insertelement <8 x double> %i.cu, double %i.bo, i64 7
  %.fr = freeze <8 x double> %i.cv
  %i.cw = fcmp ule <8 x double> %.fr, zeroinitializer ; 2 uses
  %i.cx = insertelement <4 x double> poison, double %i.bs, i64 0
  %i.cy = insertelement <4 x double> %i.cx, double %.fr147, i64 1
  %i.cz = insertelement <4 x double> %i.cy, double %i.ao, i64 2
  %i.da = insertelement <4 x double> %i.cz, double %i.as, i64 3 ; 2 uses
  %i.db = fcmp ule <4 x double> %i.da, <double 0.000000e+00, double 0.000000e+00, double f0x41F0000000000000, double f0x41F0000000000000>
  %i.dc = fcmp ult <4 x double> %i.da, <double 0.000000e+00, double 0.000000e+00, double f0x41F0000000000000, double f0x41F0000000000000>
  %i.dd = shufflevector <4 x i1> %i.db, <4 x i1> %i.dc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %.old104.old = fcmp ult double %i.aw, f0x41F0000000000000
  %i.de = freeze <4 x i1> %i.dd
  %i.df = shufflevector <8 x i1> %i.cw, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.df, %i.de
  %i.dg = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dh = shufflevector <8 x i1> %i.dg, <8 x i1> %i.cw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.di = bitcast <8 x i1> %i.dh to i8
  %i.dj = icmp eq i8 %i.di, -1
  %op.rdx142 = and i1 %i.dj, %.old104.old
  br i1 %op.rdx142, label %bb.ah, label %bb.al

.thread:                                          ; preds = %bb.af
  %.old.old = fcmp ult double %i.ao, f0x41F0000000000000
  %.old100.old = fcmp ult double %i.as, f0x41F0000000000000
  %or.cond103 = and i1 %.old.old, %.old100.old
  %i.dk = fcmp ult double %i.aw, f0x41F0000000000000
  %or.cond105 = and i1 %or.cond103, %i.dk
  br i1 %or.cond105, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag, %bb.ae, %.thread
  %i.dl = fmul nnan double %i.bc, 3.600000e+03
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.ay, double 8.640000e+04, double %i.dl)
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.bg, double 6.000000e+01, double %i.dm)
  %i.do = fadd double %i.dn, %i.bk
  %i.dp = tail call noundef double @llvm.fabs.f64(double %i.do) ; 2 uses
  %i.dq = fcmp ult double %i.dp, f0x4340000000000000
  br i1 %i.dq, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.dr = fsub double f0x4340000000000000, %i.dp
  %i.ds = fptosi double %i.dr to i64
  %2 = insertelement <2 x double> poison, double %i.bo, i64 0
  %3 = insertelement <2 x double> %2, double %i.bs, i64 1
  %4 = fdiv <2 x double> %3, <double 1.000000e+03, double 1.000000e+06>
  %5 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %4)
  %6 = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %5) ; 2 uses
  %shift = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %6, %shift
  %7 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dt = fdiv double %.fr147, 1.000000e+09
  %i.du = tail call noundef double @llvm.fabs.f64(double %i.dt)
  %i.dv = tail call double @llvm.floor.f64(double %i.du)
  %i.dw = fadd double %7, %i.dv                   ; 2 uses
  %i.dx = sitofp i64 %i.ds to double              ; 2 uses
  %i.dy = fcmp ult double %i.dw, %i.dx
  br i1 %i.dy, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.dz = fsub double %i.dx, %i.dw
  %i.ea = fptosi double %i.dz to i64              ; 2 uses
  %i.eb = icmp sgt i64 %i.ea, 3
  br i1 %i.eb, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = mul nsw i64 %i.ea, 1000000000
  %i.ed = frem double %i.bo, 1.000000e+03
  %i.ee = tail call noundef double @llvm.fabs.f64(double %i.ed)
  %i.ef = frem double %i.bs, 1.000000e+06
  %i.eg = tail call noundef double @llvm.fabs.f64(double %i.ef)
  %i.eh = fmul nnan double %i.eg, 1.000000e+03
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.ee, double 1.000000e+06, double %i.eh)
  %i.ej = frem double %.fr147, 1.000000e+09
  %i.ek = tail call noundef double @llvm.fabs.f64(double %i.ej)
  %i.el = fadd double %i.ei, %i.ek
  %i.em = fptosi double %i.el to i64
  %.not = icmp sgt i64 %i.ec, %i.em
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah, %bb.ai, %bb.aj, %.thread, %bb.ae, %bb.ag, %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.2 = phi i1 [ false, %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit ], [ false, %bb.ae ], [ false, %.thread ], [ true, %bb.aj ], [ false, %bb.ai ], [ false, %bb.ac ], [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.ag ], [ %.not, %bb.ak ], [ false, %bb.ah ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN2v88internal8temporal14DurationRecord4SignERKS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8             ; 2 uses
  %i.b = fcmp olt double %i.a, 0.000000e+00
  br i1 %i.b, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp ogt double %i.a, 0.000000e+00
  br i1 %i.c, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8           ; 2 uses
  %i.f = fcmp olt double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = fcmp ogt double %i.e, 0.000000e+00
  br i1 %i.g, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load double, ptr %i.h, align 8           ; 2 uses
  %i.j = fcmp olt double %i.i, 0.000000e+00
  br i1 %i.j, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = fcmp ogt double %i.i, 0.000000e+00
  br i1 %i.k, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load double, ptr %i.l, align 8           ; 2 uses
  %i.n = fcmp olt double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = fcmp ogt double %i.m, 0.000000e+00
  br i1 %i.o, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load double, ptr %i.p, align 8           ; 2 uses
  %i.r = fcmp olt double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = fcmp ogt double %i.q, 0.000000e+00
  br i1 %i.s, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load double, ptr %i.t, align 8           ; 2 uses
  %i.v = fcmp olt double %i.u, 0.000000e+00
  br i1 %i.v, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = fcmp ogt double %i.u, 0.000000e+00
  br i1 %i.w, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load double, ptr %i.x, align 8           ; 2 uses
  %i.z = fcmp olt double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = fcmp ogt double %i.y, 0.000000e+00
  br i1 %i.aa, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load double, ptr %i.ab, align 8         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = fcmp ogt double %i.ac, 0.000000e+00
  br i1 %i.ae, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load double, ptr %i.af, align 8         ; 2 uses
  %i.ah = fcmp olt double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = fcmp ogt double %i.ag, 0.000000e+00
  br i1 %i.ai, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load double, ptr %i.aj, align 8         ; 2 uses
  %i.al = fcmp olt double %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = fcmp ogt double %i.ak, 0.000000e+00
  %. = zext i1 %i.am to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 1, %bb.f ], [ -1, %bb.a ], [ 1, %bb.b ], [ -1, %bb.c ], [ 1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.s ], [ -1, %bb.g ], [ 1, %bb.h ], [ -1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.k ], [ 1, %bb.l ], [ -1, %bb.m ], [ 1, %bb.n ], [ -1, %bb.o ], [ 1, %bb.p ], [ -1, %bb.q ], [ 1, %bb.r ], [ %., %bb.t ]
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8temporal18TimeDurationRecord6CreateEPNS0_7IsolateEddddddd(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::Maybe") align 8 captures(none) %0, ptr noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8) local_unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %10 = alloca %"struct.v8::internal::temporal::DurationRecord", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store double %2, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store double %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  store double %4, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 48
  store double %5, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 56
  store double %6, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 64
  store double %7, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 72
  store double %8, ptr %.sroa.10.0..sroa_idx, align 8
  %i.b = call noundef zeroext i1 @_ZN2v88internal8temporal15IsValidDurationEPNS0_7IsolateERKNS1_14DurationRecordE(ptr poison, ptr noundef nonnull align 8 dereferenceable(80) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull @.str, i64 17, i8 noundef zeroext 0) #9 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_ZN2v88internal7Factory24NewStringFromStaticCharsILm18EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  unreachable

_ZN2v88internal7Factory24NewStringFromStaticCharsILm18EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  store ptr %i.c, ptr %9, align 8
  %i.e = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 211, ptr nonnull %9, i64 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %i.f = load i64, ptr %i.e, align 8
  %i.g = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.f, ptr noundef null) #9 ; 0 uses
  store i8 0, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !alias.scope !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.h, align 8
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %.sroa.5.0..sroa_idx18, align 8
  %.sroa.6.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_ZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordE:bb.a
  br i1 %i.dk, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i.i.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i.i.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i
  %i.dl = call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %1, ptr nonnull %.sroa.07.0.i16.i.i) #9 ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i8.i.i, label %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50_crit_edge.i.i.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50_crit_edge.i.i.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %i.dl, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50_crit_edge.i.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i, %bb.i
  %i.dm = phi i64 [ %.pre.i.i.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50_crit_edge.i.i.i ], [ %i.cv, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i ], [ %i.cv, %bb.i ] ; 8 uses
  %i.dn = trunc i64 %i.dm to i1
  br i1 %i.dn, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i
  %i.do = add nsw i64 %i.dm, -1
  %i.dp = inttoptr i64 %i.do to ptr               ; 2 uses
  %i.dq = load atomic volatile i64, ptr %i.dp monotonic, align 8
  %i.dr = add i64 %i.dq, 11
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load atomic volatile i16, ptr %i.ds monotonic, align 2
  %i.du = icmp eq i16 %i.dt, 130
  br i1 %i.du, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.dv, align 8
  %i.dw = fcmp uno double %.0.copyload.i.i.i.i.i.i.i, 0.000000e+00
  br i1 %i.dw, label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread", label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread50.i.i.i
  %i.dx = and i64 %i.dm, 1
  %i.dy = icmp eq i64 %i.dx, 0                    ; 2 uses
  br i1 %i.dy, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread.i.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i: ; preds = %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.dz = icmp ult i64 %i.dm, 4294967296
  br i1 %i.dz, label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread", label %bb.j

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.ea = add nsw i64 %i.dm, -1
  %i.eb = inttoptr i64 %i.ea to ptr               ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %i.ec, align 1 ; 2 uses
  %i.ed = fcmp oeq double %.0.copyload.i.i.i.i.i.i.i.i, 0.000000e+00
  br i1 %i.ed, label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread", label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread.i.i.i
  %i.ee = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.ef = add i64 %i.ee, 11
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load atomic volatile i16, ptr %i.eg monotonic, align 2
  %i.ei = icmp eq i16 %i.eh, 130
  br i1 %i.ei, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i.i, label %_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i

bb.j:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  %i.ej = lshr i64 %i.dm, 32
  %i.ek = trunc nuw i64 %i.ej to i32
  %i.el = sitofp i32 %i.ek to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i.i: ; preds = %bb.j, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i
  %i.em = phi double [ %i.el, %bb.j ], [ %.0.copyload.i.i.i.i.i.i.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i ]
  %i.en = call double @llvm.fabs.f64(double %i.em) ; 3 uses
  %i.eo = fcmp one double %i.en, +inf
  %i.ep = call double @llvm.trunc.f64(double %i.en)
  %i.eq = fcmp oeq double %i.ep, %i.en
  %or.cond.i.i.i = and i1 %i.eo, %i.eq
  br i1 %or.cond.i.i.i, label %bb.l, label %_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i
  %i.er = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull @.str.3, i64 20, i8 noundef zeroext 0) #9 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.k, label %_ZN2v88internal7Factory24NewStringFromStaticCharsILm21EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit.i.i.i, !prof !5

bb.k:                                             ; preds = %_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  unreachable

_ZN2v88internal7Factory24NewStringFromStaticCharsILm21EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit.i.i.i: ; preds = %_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.er, ptr %4, align 8
  %i.et = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 211, ptr nonnull %4, i64 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.eu, ptr noundef null) #9 ; 0 uses
  br label %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread

bb.l:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i.i
  br i1 %i.dy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ew = lshr i64 %i.dm, 32
  %i.ex = trunc nuw i64 %i.ew to i32
  %i.ey = sitofp i32 %i.ex to double
  br label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread"

bb.n:                                             ; preds = %bb.l
  %i.ez = add nsw i64 %i.dm, -1
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.0.copyload.i.i.i.i.i17.i.i.i = load double, ptr %i.fb, align 1
  br label %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread"

_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i.i.i, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i.i, %_ZN2v88internal7Factory24NewStringFromStaticCharsILm21EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  store i8 0, ptr %0, align 8
  br label %bb.r

"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit": ; preds = %bb.h
  %.0.add.i = add nuw nsw i64 %.0.idx39.i, 16     ; 2 uses
  %.not.i = icmp eq i64 %.0.add.i, 160
  br i1 %.not.i, label %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit, label %bb.d

"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread": ; preds = %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread.i.i.i, %bb.m, %bb.n
  %.sroa.5.0.i.ph.i.i = phi double [ %.0.copyload.i.i.i.i.i17.i.i.i, %bb.n ], [ %i.ey, %bb.m ], [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 0.000000e+00, %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i ], [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread.i.i.i ]
  store double %.sroa.5.0.i.ph.i.i, ptr %i.bq, align 8
  %.0.add.i56 = add nuw nsw i64 %.0.idx39.i, 16   ; 2 uses
  %.not.i57 = icmp eq i64 %.0.add.i56, 160
  br i1 %.not.i57, label %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread59, label %.outer

_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread59: ; preds = %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.q

_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit: ; preds = %"_ZZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordEEN3$_08__invokeES3_NS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEPd.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br i1 %.02538.i.ph, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit
  %i.fc = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull @.str.2, i64 60, i8 noundef zeroext 0) #9 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.p, label %_ZN2v88internal7Factory24NewStringFromStaticCharsILm61EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit, !prof !5

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  unreachable

_ZN2v88internal7Factory24NewStringFromStaticCharsILm61EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store ptr %i.fc, ptr %6, align 8
  %i.fe = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 211, ptr nonnull %6, i64 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.ff, ptr noundef null) #9 ; 0 uses
  store i8 0, ptr %0, align 8
  br label %bb.r

bb.q:                                             ; preds = %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread59, %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit
  store i8 1, ptr %0, align 8, !alias.scope !14
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fh, ptr noundef nonnull align 8 dereferenceable(80) %9, i64 80, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN2v88internal7Factory24NewStringFromStaticCharsILm61EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit, %_ZN2v88internal8temporal12_GLOBAL__N_132IterateDurationRecordFieldsTableEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPFNS_5MaybeIbEES4_S7_NS5_INS0_6StringEEEPdEPNS1_14DurationRecordE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN2v88internal7Factory24NewStringFromStaticCharsILm37EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

declare ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #6 comdat {
bb.a:
  tail call void @abort() #10
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #4

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #8

declare ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #4

declare ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN2v84JustINS_8internal8temporal18TimeDurationRecordEEENS_5MaybeIT_EERKS5_: argument 0"}
!8 = distinct !{!8, !"_ZN2v84JustINS_8internal8temporal18TimeDurationRecordEEENS_5MaybeIT_EERKS5_"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN2v84JustINS_8internal8temporal14DurationRecordEEENS_5MaybeIT_EERKS5_: argument 0"}
!11 = distinct !{!11, !"_ZN2v84JustINS_8internal8temporal14DurationRecordEEENS_5MaybeIT_EERKS5_"}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN2v84JustINS_8internal8temporal14DurationRecordEEENS_5MaybeIT_EERKS5_: argument 0"}
!16 = distinct !{!16, !"_ZN2v84JustINS_8internal8temporal14DurationRecordEEENS_5MaybeIT_EERKS5_"}
end_hunk_1
