Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ieee754?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2v84base7ieee7543sinEd:bb.a
  %i.ae = fmul double %i.w, %i.w                  ; 6 uses
  %i.af = fmul double %i.w, %i.ae                 ; 2 uses
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double f0x3DE5D93A5ACFD57C, double f0xBE5AE5E68A2B9CEB)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ag, double f0x3EC71DE357B1FE7D)
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ah, double f0xBF2A01A019C161D5)
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ai, double f0x3F8111111110F8A6)
  %i.ak = fneg double %i.aj
  %i.al = fmul double %i.af, %i.ak
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ad, double 5.000000e-01, double %i.al)
  %i.an = fneg double %i.ad
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.am, double %i.an)
  %i.ap = fneg double %i.af
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double f0xBFC5555555555549, double %i.ao)
  %i.ar = fsub double %i.w, %i.aq
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14

bb.i:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = load double, ptr %i.as, align 8         ; 2 uses
  %i.au = bitcast double %i.w to i64
  %i.av = lshr i64 %i.au, 32
  %i.aw = trunc nuw i64 %i.av to i32
  %i.ax = and i32 %i.aw, 2147483647               ; 4 uses
  %i.ay = icmp samesign ult i32 %i.ax, 1044381696
  %i.az = fptosi double %i.w to i32
  %i.ba = icmp eq i32 %i.az, 0
  %or.cond40 = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond40, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = fmul double %i.w, %i.w                  ; 10 uses
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double f0xBDA8FAE9BE8838D4, double f0x3E21EE9EBDB4B1C4)
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bc, double f0xBE927E4F809C52AD)
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bd, double f0x3EFA01A019CB1590)
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.be, double f0xBF56C16C16C15177)
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bf, double f0x3FA555555555554C)
  %i.bh = fmul double %i.bb, %i.bg                ; 2 uses
  %i.bi = icmp samesign ult i32 %i.ax, 1070805811
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = fneg double %i.at
  %i.bk = fmul double %i.w, %i.bj
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bh, double %i.bk)
  %i.bm = fneg double %i.bl
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bb, double 5.000000e-01, double %i.bm)
  %i.bo = fsub double 1.000000e+00, %i.bn
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp samesign ugt i32 %i.ax, 1072234496
  %i.bq = add nsw i32 %i.ax, -2097152
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 32
  %i.bt = bitcast i64 %i.bs to double
  %.024.i7 = select i1 %i.bp, double 2.812500e-01, double %i.bt ; 2 uses
  %i.bu = fneg double %.024.i7
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bb, double 5.000000e-01, double %i.bu)
  %i.bw = fsub double 1.000000e+00, %.024.i7
  %i.bx = fneg double %i.at
  %i.by = fmul double %i.w, %i.bx
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bh, double %i.by)
  %i.ca = fsub double %i.bz, %i.bv
  %i.cb = fadd double %i.bw, %i.ca
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14

bb.m:                                             ; preds = %bb.f
  %i.cc = bitcast double %i.w to i64
  %i.cd = and i64 %i.cc, 9205357638345293824
  %i.ce = icmp samesign ult i64 %i.cd, 4485585228861014016
  %i.cf = fptosi double %i.w to i32
  %i.cg = icmp eq i32 %i.cf, 0
  %or.cond42 = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %or.cond42, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ci = load double, ptr %i.ch, align 8         ; 2 uses
  %i.cj = fmul double %i.w, %i.w                  ; 6 uses
  %i.ck = fmul double %i.w, %i.cj                 ; 2 uses
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cj, double f0x3DE5D93A5ACFD57C, double f0xBE5AE5E68A2B9CEB)
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cl, double f0x3EC71DE357B1FE7D)
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cm, double f0xBF2A01A019C161D5)
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cn, double f0x3F8111111110F8A6)
  %i.cp = fneg double %i.co
  %i.cq = fmul double %i.ck, %i.cp
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.ci, double 5.000000e-01, double %i.cq)
  %i.cs = fneg double %i.ci
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cr, double %i.cs)
  %i.cu = fneg double %i.ck
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cu, double f0xBFC5555555555549, double %i.ct)
  %i.cw = fsub double %i.w, %i.cv
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit

_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit: ; preds = %bb.m, %bb.n
  %.0.i10 = phi double [ %i.cw, %bb.n ], [ %i.w, %bb.m ]
  %i.cx = fneg double %.0.i10
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14

default.unreachable48:                            ; preds = %bb.f
  unreachable

bb.o:                                             ; preds = %bb.f
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cz = load double, ptr %i.cy, align 8         ; 2 uses
  %i.da = bitcast double %i.w to i64
  %i.db = lshr i64 %i.da, 32
  %i.dc = trunc nuw i64 %i.db to i32
  %i.dd = and i32 %i.dc, 2147483647               ; 4 uses
  %i.de = icmp samesign ult i32 %i.dd, 1044381696
  %i.df = fptosi double %i.w to i32
  %i.dg = icmp eq i32 %i.df, 0
  %or.cond44 = select i1 %i.de, i1 %i.dg, i1 false
  br i1 %or.cond44, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dh = fmul double %i.w, %i.w                  ; 10 uses
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double f0xBDA8FAE9BE8838D4, double f0x3E21EE9EBDB4B1C4)
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.di, double f0xBE927E4F809C52AD)
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dj, double f0x3EFA01A019CB1590)
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dk, double f0xBF56C16C16C15177)
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dl, double f0x3FA555555555554C)
  %i.dn = fmul double %i.dh, %i.dm                ; 2 uses
  %i.do = icmp samesign ult i32 %i.dd, 1070805811
  br i1 %i.do, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dp = fneg double %i.cz
  %i.dq = fmul double %i.w, %i.dp
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dn, double %i.dq)
  %i.ds = fneg double %i.dr
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dh, double 5.000000e-01, double %i.ds)
  %i.du = fsub double 1.000000e+00, %i.dt
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit

bb.r:                                             ; preds = %bb.p
  %i.dv = icmp samesign ugt i32 %i.dd, 1072234496
  %i.dw = add nsw i32 %i.dd, -2097152
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 32
  %i.dz = bitcast i64 %i.dy to double
  %.024.i = select i1 %i.dv, double 2.812500e-01, double %i.dz ; 2 uses
  %i.ea = fneg double %.024.i
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.dh, double 5.000000e-01, double %i.ea)
  %i.ec = fsub double 1.000000e+00, %.024.i
  %i.ed = fneg double %i.cz
  %i.ee = fmul double %i.w, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dn, double %i.ee)
  %i.eg = fsub double %i.ef, %i.eb
  %i.eh = fadd double %i.ec, %i.eg
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit

_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit: ; preds = %bb.o, %bb.q, %bb.r
  %.0.i = phi double [ %i.eh, %bb.r ], [ %i.du, %bb.q ], [ 1.000000e+00, %bb.o ]
  %i.ei = fneg double %.0.i
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14

_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14: ; preds = %bb.i, %bb.g, %bb.b, %bb.l, %bb.k, %bb.h, %bb.c, %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit, %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit, %bb.e
  %.0 = phi double [ %i.ei, %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit ], [ %i.t, %bb.e ], [ %i.r, %bb.c ], [ %i.w, %bb.g ], [ %i.cx, %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit ], [ %0, %bb.b ], [ %i.ar, %bb.h ], [ %i.cb, %bb.l ], [ %i.bo, %bb.k ], [ 1.000000e+00, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define dso_local noundef double @_ZN2v84base7ieee7543tanEd(double noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = bitcast double %0 to i64
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 2 uses
  %i.e = and i32 %i.d, 2147483647                 ; 4 uses
  %i.f = icmp samesign ult i32 %i.e, 1072243196
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = icmp samesign ult i32 %i.e, 1043333120
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = fptosi double %0 to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit, label %.thread.i

bb.d:                                             ; preds = %bb.b
  %i.j = icmp samesign ugt i32 %i.e, 1072010279
  br i1 %i.j, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %.0.i = tail call double @llvm.fabs.f64(double %0)
  %.054.i = tail call double @llvm.copysign.f64(double 0.000000e+00, double %0)
  %i.k = fsub double f0x3FE921FB54442D18, %.0.i
  %i.l = fsub double f0x3C81A62633145C07, %.054.i
  %i.m = fadd double %i.k, %i.l
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d, %bb.c
  %i.n = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %.177.i = phi double [ %i.m, %bb.e ], [ %0, %bb.d ], [ %0, %bb.c ] ; 5 uses
  %i.o = fmul double %.177.i, %.177.i             ; 5 uses
  %i.p = fmul double %i.o, %i.o                   ; 5 uses
  %1 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.p, i64 0 ; 5 uses
  %2 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1, <2 x double> <double f0xBEF375CBDB605373, double 0.000000e+00>, <2 x double> <double f0x3F147E88A03792A6, double 0.000000e+00>)
  %3 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1, <2 x double> %2, <2 x double> <double f0x3F4344D8F2F26501, double 0.000000e+00>)
  %4 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1, <2 x double> %3, <2 x double> <double f0x3F6D6D22C9560328, double 0.000000e+00>)
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1, <2 x double> %4, <2 x double> <double f0x3F9664F48406D637, double f0x3EFB2A7074BF7AD4>)
  %5 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %i.q, <2 x double> <double f0x3FC111111110FE7A, double f0x3F12B80F32F0A7E9>) ; 2 uses
  %6 = extractelement <2 x double> %i.r, i64 1
  %7 = tail call double @llvm.fmuladd.f64(double %i.p, double %6, double f0x3F3026F71A8D1068)
  %8 = tail call double @llvm.fmuladd.f64(double %i.p, double %7, double f0x3F57DBC8FEE08315)
  %9 = tail call double @llvm.fmuladd.f64(double %i.p, double %8, double f0x3F8226E3E96E8493)
  %10 = tail call double @llvm.fmuladd.f64(double %i.p, double %9, double f0x3FABA1BA1BB341FE)
  %11 = fmul double %i.o, %10
  %i.s = fmul double %.177.i, %i.o                ; 2 uses
  %12 = extractelement <2 x double> %i.r, i64 0
  %13 = fadd double %12, %11
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %13, double 0.000000e+00)
  %i.u = tail call double @llvm.fmuladd.f64(double %i.o, double %i.t, double 0.000000e+00)
  %i.v = tail call double @llvm.fmuladd.f64(double %i.s, double f0x3FD5555555555563, double %i.u) ; 2 uses
  %i.w = fadd double %.177.i, %i.v                ; 4 uses
  br i1 %i.n, label %bb.f, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit

bb.f:                                             ; preds = %.thread.i
  %i.x = lshr i32 %i.d, 30
  %i.y = and i32 %i.x, 2
  %i.z = sub nsw i32 1, %i.y
  %i.aa = sitofp i32 %i.z to double
  %i.ab = fmul double %i.w, %i.w
  %i.ac = fadd double %i.w, 1.000000e+00
  %i.ad = fdiv double %i.ab, %i.ac
  %i.ae = fsub double %i.ad, %i.v
  %i.af = fsub double %.177.i, %i.ae
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double -2.000000e+00, double 1.000000e+00)
  %i.ah = fmul double %i.ag, %i.aa
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp samesign ugt i32 %i.e, 2146435071
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = fsub double %0, %0
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = call fastcc noundef i32 @_ZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPd(double noundef %0, ptr noundef %i.a)
  %i.al = load double, ptr %i.a, align 16         ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = load double, ptr %i.am, align 8         ; 6 uses
  %i.ao = shl i32 %i.ak, 1
  %i.ap = and i32 %i.ao, 2                        ; 4 uses
  %i.aq = sub nsw i32 1, %i.ap
  %i.ar = bitcast double %i.al to i64             ; 3 uses
  %i.as = lshr i64 %i.ar, 32
  %i.at = trunc nuw i64 %i.as to i32              ; 2 uses
  %i.au = and i32 %i.at, 2147483647               ; 3 uses
  %i.av = icmp samesign ult i32 %i.au, 1043333120
  br i1 %i.av, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.aw = fptosi double %i.al to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %.thread.i7

bb.k:                                             ; preds = %bb.j
  %i.ay = trunc i64 %i.ar to i32
  %i.az = sub nuw nsw i32 2, %i.ap
  %i.ba = or i32 %i.az, %i.ay
  %i.bb = or i32 %i.ba, %i.au
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = tail call double @llvm.fabs.f64(double %i.al)
  %i.be = fdiv double 1.000000e+00, %i.bd
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = icmp eq i32 %i.ap, 0
  br i1 %i.bf, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = fadd double %i.al, %i.an                ; 2 uses
  %i.bh = bitcast double %i.bg to i64
  %i.bi = and i64 %i.bh, -4294967296
  %i.bj = bitcast i64 %i.bi to double             ; 2 uses
  %i.bk = fsub double %i.bj, %i.al
  %i.bl = fsub double %i.an, %i.bk
  %i.bm = fdiv double -1.000000e+00, %i.bg        ; 2 uses
  %i.bn = bitcast double %i.bm to i64
  %i.bo = and i64 %i.bn, -4294967296
  %i.bp = bitcast i64 %i.bo to double             ; 3 uses
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bj, double 1.000000e+00)
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bl, double %i.bq)
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.br, double %i.bp)
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit

bb.o:                                             ; preds = %bb.i
  %i.bt = icmp samesign ugt i32 %i.au, 1072010279
  br i1 %i.bt, label %bb.p, label %.thread.i7

bb.p:                                             ; preds = %bb.o
  %i.bu = icmp slt i64 %i.ar, 0
  %i.bv = fneg double %i.an
  %.0.i10 = tail call double @llvm.fabs.f64(double %i.al)
  %.054.i11 = select i1 %i.bu, double %i.bv, double %i.an
  %i.bw = fsub double f0x3FE921FB54442D18, %.0.i10
  %i.bx = fsub double f0x3C81A62633145C07, %.054.i11
  %i.by = fadd double %i.bw, %i.bx
  br label %.thread.i7

.thread.i7:                                       ; preds = %bb.p, %bb.o, %bb.j
  %i.bz = phi i1 [ true, %bb.p ], [ false, %bb.o ], [ false, %bb.j ]
  %.177.i8 = phi double [ %i.by, %bb.p ], [ %i.al, %bb.o ], [ %i.al, %bb.j ] ; 6 uses
  %.155.i = phi double [ 0.000000e+00, %bb.p ], [ %i.an, %bb.o ], [ %i.an, %bb.j ] ; 2 uses
  %i.ca = fmul double %.177.i8, %.177.i8          ; 5 uses
  %i.cb = fmul double %i.ca, %i.ca                ; 5 uses
  %i.cc = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.cb, i64 0 ; 5 uses
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> <double f0xBEF375CBDB605373, double 0.000000e+00>, <2 x double> <double f0x3F147E88A03792A6, double 0.000000e+00>)
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.cd, <2 x double> <double f0x3F4344D8F2F26501, double 0.000000e+00>)
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.ce, <2 x double> <double f0x3F6D6D22C9560328, double 0.000000e+00>)
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.cf, <2 x double> <double f0x3F9664F48406D637, double f0x3EFB2A7074BF7AD4>)
  %i.ch = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.cg, <2 x double> <double f0x3FC111111110FE7A, double f0x3F12B80F32F0A7E9>) ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 1
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.cj, double f0x3F3026F71A8D1068)
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.ck, double f0x3F57DBC8FEE08315)
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.cl, double f0x3F8226E3E96E8493)
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.cm, double f0x3FABA1BA1BB341FE)
  %i.co = fmul double %i.ca, %i.cn
  %i.cp = fmul double %.177.i8, %i.ca             ; 2 uses
  %i.cq = extractelement <2 x double> %i.ci, i64 0
  %i.cr = fadd double %i.cq, %i.co
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cr, double %.155.i)
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.cs, double %.155.i)
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cp, double f0x3FD5555555555563, double %i.ct) ; 3 uses
  %i.cv = fadd double %.177.i8, %i.cu             ; 6 uses
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread.i7
  %i.cw = sitofp i32 %i.aq to double              ; 2 uses
  %i.cx = lshr i32 %i.at, 30
  %i.cy = and i32 %i.cx, 2
  %i.cz = sub nsw i32 1, %i.cy
  %i.da = sitofp i32 %i.cz to double
  %i.db = fmul double %i.cv, %i.cv
  %i.dc = fadd double %i.cv, %i.cw
  %i.dd = fdiv double %i.db, %i.dc
  %i.de = fsub double %i.dd, %i.cu
  %i.df = fsub double %.177.i8, %i.de
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double -2.000000e+00, double %i.cw)
  %i.dh = fmul double %i.dg, %i.da
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit

bb.r:                                             ; preds = %.thread.i7
  %i.di = icmp eq i32 %i.ap, 0
  br i1 %i.di, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = bitcast double %i.cv to i64
  %i.dk = and i64 %i.dj, -4294967296
  %i.dl = bitcast i64 %i.dk to double             ; 2 uses
  %i.dm = fsub double %i.dl, %.177.i8
  %i.dn = fsub double %i.cu, %i.dm
  %i.do = fdiv double -1.000000e+00, %i.cv        ; 2 uses
  %i.dp = bitcast double %i.do to i64
  %i.dq = and i64 %i.dp, -4294967296
  %i.dr = bitcast i64 %i.dq to double             ; 3 uses
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.dl, double 1.000000e+00)
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.dn, double %i.ds)
  %i.du = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dt, double %i.dr)
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit

_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit: ; preds = %bb.c, %bb.s, %bb.r, %bb.q, %bb.n, %bb.m, %bb.l, %bb.f, %.thread.i, %bb.h
  %.0 = phi double [ %i.w, %.thread.i ], [ %i.aj, %bb.h ], [ %i.al, %bb.m ], [ %i.ah, %bb.f ], [ %i.du, %bb.s ], [ %i.dh, %bb.q ], [ %i.bs, %bb.n ], [ %i.be, %bb.l ], [ %i.cv, %bb.r ], [ %0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef double @_ZN2v84base7ieee7544coshEd(double noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = bitcast double %0 to i64
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = and i32 %i.c, 2147483647                 ; 5 uses
  %i.e = icmp samesign ult i32 %i.d, 1071001155
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call double @llvm.fabs.f64(double %0)
  %i.g = tail call noundef double @_ZN2v84base7ieee7545expm1Ed(double noundef %i.f) ; 3 uses
  %i.h = fadd double %i.g, 1.000000e+00           ; 3 uses
  %i.i = icmp samesign ult i32 %i.d, 1015021568
  %i.j = fmul double %i.g, %i.g
  %i.k = fadd double %i.h, %i.h
  %i.l = fdiv double %i.j, %i.k
  %i.m = fadd double %i.l, 1.000000e+00
  %.0 = select i1 %i.i, double %i.h, double %i.m
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.n = icmp samesign ult i32 %i.d, 1077280768
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call double @llvm.fabs.f64(double %0)
  %i.p = tail call noundef double @_ZN2v84base7ieee7543expEd(double noundef %i.o) ; 2 uses
  %i.q = fdiv double 5.000000e-01, %i.p
  %i.r = tail call double @llvm.fmuladd.f64(double %i.p, double 5.000000e-01, double %i.q)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.s = icmp samesign ult i32 %i.d, 1082535490
  %i.t = tail call double @llvm.fabs.f64(double %0) ; 3 uses
  br i1 %i.s, label %bb.f, label %bb.g

end_hunk_0
begin_hunk_1_@_ZN2v84base7ieee7546legacy3powEdd:bb.a
  %.0.i208 = phi double [ %i.jo, %bb.bm ], [ -inf, %bb.bp ], [ +qnan, %bb.bn ], [ +inf, %bb.bo ]
  %i.jq = fsub double %i.iz, %.0.i208
  %i.jr = fadd double %i.jq, 1.000000e+00         ; 2 uses
  %i.js = bitcast double %i.jr to i64             ; 2 uses
  %i.jt = lshr i64 %i.js, 32
  %i.ju = trunc nuw i64 %i.jt to i32
  %i.jv = shl i32 %.3, 20
  %i.jw = add nsw i32 %i.jv, %i.ju                ; 2 uses
  %i.jx = icmp slt i32 %i.jw, 1048576
  br i1 %i.jx, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_ZN2v84base6DivideIdEET_S2_S2_.exit209
  %i.jy = tail call double @scalbn(double noundef %i.jr, i32 noundef %.3) #12
  br label %bb.bs

bb.br:                                            ; preds = %_ZN2v84base6DivideIdEET_S2_S2_.exit209
  %i.jz = and i64 %i.js, 4294967295
  %i.ka = zext nneg i32 %i.jw to i64
  %i.kb = shl nuw nsw i64 %i.ka, 32
  %i.kc = or disjoint i64 %i.kb, %i.jz
  %i.kd = bitcast i64 %i.kc to double
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.2 = phi double [ %i.jy, %bb.bq ], [ %i.kd, %bb.br ]
  %i.ke = fmul double %spec.store.select, %.2
  br label %_ZN2v84base6DivideIdEET_S2_S2_.exit

_ZN2v84base6DivideIdEET_S2_S2_.exit:              ; preds = %bb.al, %_ZN2v84base6DivideIdEET_S2_S2_.exit205, %bb.aj, %bb.ak, %bb.ai, %bb.v, %bb.z, %bb.y, %bb.x, %bb.a, %bb.bs, %bb.bi, %bb.bg, %bb.bd, %bb.bb, %bb.au, %bb.as, %bb.aq, %bb.ap, %bb.ad, %bb.ab, %bb.u, %bb.t, %bb.r, %bb.e
  %.0 = phi double [ %i.hw, %bb.bi ], [ %i.s, %bb.e ], [ %i.ap, %bb.r ], [ %i.as, %bb.t ], [ %i.av, %bb.u ], [ 1.000000e+00, %bb.a ], [ +inf, %bb.y ], [ %i.bb, %bb.ab ], [ %i.bd, %bb.ad ], [ %0, %bb.v ], [ +snan(0x4000000000000), %bb.ai ], [ %i.by, %bb.ap ], [ %i.ca, %bb.aq ], [ %i.ch, %bb.as ], [ %i.co, %bb.au ], [ %i.hh, %bb.bb ], [ %i.hm, %bb.bd ], [ %i.ke, %bb.bs ], [ %i.hs, %bb.bg ], [ %i.az, %bb.x ], [ -inf, %bb.z ], [ %.0269, %_ZN2v84base6DivideIdEET_S2_S2_.exit205 ], [ %i.bn, %bb.ak ], [ %.0269, %bb.aj ], [ +snan(0x4000000000000), %bb.al ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @scalbn(double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef double @_ZN2v84base7ieee7544sinhEd(double noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00
  %i.b = select i1 %i.a, double -5.000000e-01, double 5.000000e-01 ; 3 uses
  %i.c = tail call double @llvm.fabs.f64(double %0) ; 8 uses
  %i.d = fcmp olt double %i.c, 2.200000e+01
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp olt double %i.c, f0x3E30000000000000
  br i1 %i.e, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef double @_ZN2v84base7ieee7545expm1Ed(double noundef %i.c) ; 6 uses
  %i.g = fcmp olt double %i.c, 1.000000e+00
  %i.h = fadd double %i.f, 1.000000e+00           ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = fneg double %i.f
  %i.j = fmul double %i.f, %i.i
  %i.k = fdiv double %i.j, %i.h
  %i.l = tail call double @llvm.fmuladd.f64(double %i.f, double 2.000000e+00, double %i.k)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = fdiv double %i.f, %i.h
  %i.n = fadd double %i.f, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi double [ %i.l, %bb.d ], [ %i.n, %bb.e ]
  %.0 = fmul double %i.b, %.pn
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.o = fcmp olt double %i.c, f0x40862E4200000000
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = tail call noundef double @_ZN2v84base7ieee7543expEd(double noundef %i.c)
  %i.q = fmul double %i.b, %i.p
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.r = fcmp ugt double %i.c, f0x408633CE8FB9F87D
  br i1 %i.r, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = fmul nnan double %i.c, 5.000000e-01
  %i.t = tail call noundef double @_ZN2v84base7ieee7543expEd(double noundef %i.s) ; 2 uses
  %i.u = fmul double %i.b, %i.t
  %i.v = fmul double %i.t, %i.u
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.w = fmul double %0, f0x7FAC7B1F3CAC7433
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.k, %bb.j, %bb.h, %bb.f
  %.1 = phi double [ %i.w, %bb.k ], [ %.0, %bb.f ], [ %i.q, %bb.h ], [ %i.v, %bb.j ], [ %0, %bb.b ]
  ret double %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef double @_ZN2v84base7ieee7544tanhEd(double noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = and i32 %i.c, 2147483647                 ; 4 uses
  %i.e = icmp samesign ugt i32 %i.d, 2146435071
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %i.a, -1
  %i.g = fdiv double 1.000000e+00, %0             ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = fadd double %i.g, 1.000000e+00
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = fadd double %i.g, -1.000000e+00
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.j = icmp samesign ult i32 %i.d, 1077280768
  br i1 %i.j, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.k = icmp samesign ult i32 %i.d, 1043333120
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = fadd double %0, 1.000000e+300
  %i.m = fcmp ogt double %i.l, 1.000000e+00
  br i1 %i.m, label %bb.l, label %.thread

bb.h:                                             ; preds = %bb.f
  %i.n = icmp samesign ugt i32 %i.d, 1072693247
  br i1 %i.n, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.o = tail call double @llvm.fabs.f64(double %0)
  %i.p = fmul double %i.o, 2.000000e+00
  %i.q = tail call noundef double @_ZN2v84base7ieee7545expm1Ed(double noundef %i.p)
  %i.r = fadd double %i.q, 2.000000e+00
  %i.s = fdiv double 2.000000e+00, %i.r
  %i.t = fsub double 1.000000e+00, %i.s
  br label %bb.k

.thread:                                          ; preds = %bb.g, %bb.h
  %i.u = tail call double @llvm.fabs.f64(double %0)
  %i.v = fmul double %i.u, -2.000000e+00
  %i.w = tail call noundef double @_ZN2v84base7ieee7545expm1Ed(double noundef %i.v) ; 2 uses
  %i.x = fneg double %i.w
  %i.y = fadd double %i.w, 2.000000e+00
  %i.z = fdiv double %i.x, %i.y
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.aa = load volatile double, ptr @_ZZN2v84base7ieee7544tanhEdE4tiny, align 8
  %i.ab = fsub double 1.000000e+00, %i.aa
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %.thread, %bb.j
  %.013 = phi double [ %i.t, %bb.i ], [ %i.z, %.thread ], [ %i.ab, %bb.j ] ; 2 uses
  %i.ac = fneg double %.013
  %i.ad = icmp slt i64 %i.a, 0
  %i.ae = select i1 %i.ad, double %i.ac, double %.013
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k, %bb.d, %bb.c
  %.0 = phi double [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.ae, %bb.k ], [ %0, %bb.g ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = distinct !{!5, !24}
!6 = distinct !{!6, !24}
!7 = distinct !{!7, !24}
!8 = distinct !{!8, !24}
!9 = distinct !{!9, !24}
!10 = distinct !{!10, !24}
!11 = distinct !{!11, !24, !25, !26}
!12 = distinct !{!12, !24, !26, !25}
!13 = distinct !{!13, !24, !25, !26}
!14 = distinct !{!14, !24}
!15 = distinct !{!15, !27}
!16 = distinct !{!16, !24, !25}
!17 = distinct !{!17, !24}
!18 = distinct !{!18, !24}
!19 = distinct !{!19, !24, !28}
!20 = distinct !{!20, !27}
!21 = distinct !{!21, !24}
!22 = distinct !{!22, !24}
!23 = distinct !{!23, !27}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!"llvm.loop.peeled.count", i32 4}
end_hunk_1
