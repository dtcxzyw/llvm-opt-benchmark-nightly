Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ieee754?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2v84base7ieee7544acosEd:bb.a
  %i.bn = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bc, i64 1
  %i.bp = insertelement <2 x double> <double poison, double f0x3F023DE10DFDF709>, double %i.bg, i64 0
  %i.bq = insertelement <2 x double> <double poison, double f0x3F49EFE07501B288>, double %i.bc, i64 0
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bp, <2 x double> %i.bq) ; 2 uses
  %i.bs = extractelement <2 x double> %i.br, i64 1
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bs, double f0xBFA48228B5688F3B)
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bt, double f0x3FC9C1550E884455)
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bu, double f0xBFD4D61203EB6F7D)
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bv, double f0x3FC5555555555555)
  %i.bx = fmul double %i.bc, %i.bw
  %i.by = insertelement <2 x double> %i.br, double %i.bx, i64 1
  %i.bz = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.bm, i64 1
  %i.cb = fdiv <2 x double> %i.by, %i.ca          ; 2 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0
  %i.cd = extractelement <2 x double> %i.cb, i64 1
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.bd, double %i.cc)
  %i.cf = fadd double %i.ce, %i.bg
  %i.cg = fmul double %i.cf, 2.000000e+00
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.e, %bb.c, %bb.i, %bb.h, %bb.f
  %.1 = phi double [ %i.cg, %bb.i ], [ f0x3FF921FB54442D18, %bb.e ], [ %i.af, %bb.f ], [ %i.ba, %bb.h ], [ %., %bb.c ], [ +snan(0x4000000000000), %bb.b ]
  ret double %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN2v84base7ieee7545acoshEd(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 5 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 2 uses
  %i.d = trunc i64 %i.a to i32
  %i.e = icmp slt i32 %i.c, 1072693248
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.a, 4733283208366391295
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.a, 9218868437227405311
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = fadd double %0, %0
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noundef double @_ZN2v84base7ieee7543logEd(double noundef %0)
  %i.j = fadd double %i.i, f0x3FE62E42FEFA39EF
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.c, -1072693248
  %i.l = or i32 %i.k, %i.d
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp samesign ugt i64 %i.a, 4611686022722355199
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = fmul double %0, %0
  %i.p = fadd double %i.o, -1.000000e+00
  %i.q = tail call double @sqrt(double noundef %i.p) #12
  %i.r = fadd double %0, %i.q
  %i.s = fdiv double -1.000000e+00, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double %i.s)
  %i.u = tail call noundef double @_ZN2v84base7ieee7543logEd(double noundef %i.t)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.v = fadd double %0, -1.000000e+00            ; 4 uses
  %i.w = fmul double %i.v, %i.v
  %i.x = tail call double @llvm.fmuladd.f64(double %i.v, double 2.000000e+00, double %i.w)
  %i.y = tail call double @sqrt(double noundef %i.x) #12
  %i.z = fadd double %i.v, %i.y
  %i.aa = tail call noundef double @_ZN2v84base7ieee7545log1pEd(double noundef %i.z)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.f, %bb.i, %bb.h, %bb.e, %bb.d
  %.0 = phi double [ 0.000000e+00, %bb.f ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.aa, %bb.i ], [ %i.u, %bb.h ], [ +snan(0x4000000000000), %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN2v84base7ieee7543logEd(double noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 3 uses
  %i.d = icmp slt i32 %i.c, 1048576
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.a to i32
  %i.f = and i32 %i.c, 2147483647
  %i.g = or i32 %i.f, %i.e
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.a, 0
  br i1 %i.i, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = fmul double %0, f0x4350000000000000      ; 2 uses
  %i.k = bitcast double %i.j to i64
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.091 = phi double [ %i.j, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %.082 = phi i32 [ -1077, %bb.d ], [ -1023, %bb.a ]
  %.081 = phi i32 [ %i.m, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %i.n = icmp sgt i32 %.081, 2146435071
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = fadd double %.091, %.091
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.p = ashr i32 %.081, 20
  %i.q = and i32 %.081, 1048575                   ; 4 uses
  %i.r = add nuw nsw i32 %i.q, 614244             ; 2 uses
  %i.s = and i32 %i.r, 1048576
  %i.t = bitcast double %.091 to i64
  %i.u = and i64 %i.t, 4294967295
  %i.v = or disjoint i32 %i.s, %i.q
  %i.w = xor i32 %i.v, 1072693248
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = or disjoint i64 %i.y, %i.u
  %i.aa = bitcast i64 %i.z to double
  %i.ab = lshr i32 %i.r, 20
  %i.ac = add nsw i32 %.082, %i.p
  %i.ad = add nsw i32 %i.ac, %i.ab                ; 7 uses
  %i.ae = fadd double %i.aa, -1.000000e+00        ; 15 uses
  %i.af = add nsw i32 %.081, 2
  %i.ag = and i32 %i.af, 1048575
  %i.ah = icmp samesign ult i32 %i.ag, 3
  br i1 %i.ah, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ai = fcmp oeq double %i.ae, 0.000000e+00
  br i1 %i.ai, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp eq i32 %i.ad, 0
  br i1 %i.aj, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = sitofp i32 %i.ad to double              ; 2 uses
  %i.al = fmul nnan double %i.ak, f0x3DEA39EF35793C76
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ak, double f0x3FE62E42FEE00000, double %i.al)
  br label %bb.u

bb.k:                                             ; preds = %bb.h
  %i.an = fmul double %i.ae, %i.ae
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ae, double f0xBFD5555555555555, double 5.000000e-01)
  %i.ap = fmul double %i.an, %i.ao                ; 2 uses
  %i.aq = icmp eq i32 %i.ad, 0
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = fsub double %i.ae, %i.ap
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.as = sitofp i32 %i.ad to double              ; 2 uses
  %i.at = fneg double %i.as
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double f0x3DEA39EF35793C76, double %i.ap)
  %i.av = fsub double %i.au, %i.ae
  %i.aw = fneg double %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.as, double f0x3FE62E42FEE00000, double %i.aw)
  br label %bb.u

bb.n:                                             ; preds = %bb.g
  %i.ay = fadd double %i.ae, 2.000000e+00
  %i.az = fdiv double %i.ae, %i.ay                ; 6 uses
  %i.ba = sitofp i32 %i.ad to double              ; 4 uses
  %i.bb = fmul double %i.az, %i.az                ; 3 uses
  %i.bc = add nsw i32 %i.q, -398458
  %i.bd = fmul double %i.bb, %i.bb                ; 2 uses
  %i.be = sub nsw i32 440401, %i.q
  %i.bf = insertelement <2 x double> poison, double %i.bd, i64 0 ; 2 uses
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> <double f0x3FC39A09D078C69F, double f0x3FC2F112DF3E5244>, <2 x double> <double f0x3FCC71C51D8E78AF, double f0x3FC7466496CB03DE>) ; 2 uses
  %1 = extractelement <2 x double> %i.bh, i64 1
  %2 = tail call double @llvm.fmuladd.f64(double %i.bd, double %1, double f0x3FD2492494229359)
  %3 = insertelement <2 x double> %i.bh, double %2, i64 1
  %4 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %3, <2 x double> <double f0x3FD999999997FA04, double f0x3FE5555555555593>)
  %5 = insertelement <2 x double> %i.bf, double %i.bb, i64 1
  %6 = fmul <2 x double> %5, %4                   ; 2 uses
  %i.bi = or i32 %i.bc, %i.be
  %shift = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %6, %shift
  %7 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bk = fmul double %i.ae, 5.000000e-01
  %i.bl = fmul double %i.ae, %i.bk                ; 3 uses
  %i.bm = icmp eq i32 %i.ad, 0
  %i.bn = fadd double %i.bl, %7                   ; 2 uses
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bo = fneg double %i.az
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bn, double %i.bl)
  %i.bq = fsub double %i.ae, %i.bp
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.br = fmul nnan double %i.ba, f0x3DEA39EF35793C76
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.az, double %i.bn, double %i.br)
  %i.bt = fsub double %i.bl, %i.bs
  %i.bu = fsub double %i.bt, %i.ae
  %i.bv = fneg double %i.bu
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.ba, double f0x3FE62E42FEE00000, double %i.bv)
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.bx = icmp eq i32 %i.ad, 0
  %i.by = fsub double %i.ae, %7                   ; 2 uses
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = fneg double %i.az
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.by, double %i.ae)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cb = fmul nnan double %i.ba, f0xBDEA39EF35793C76
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.az, double %i.by, double %i.cb)
  %i.cd = fsub double %i.cc, %i.ae
  %i.ce = fneg double %i.cd
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ba, double f0x3FE62E42FEE00000, double %i.ce)
  br label %bb.u

bb.u:                                             ; preds = %bb.c, %bb.b, %bb.i, %bb.t, %bb.s, %bb.q, %bb.p, %bb.m, %bb.l, %bb.j, %bb.f
  %.0 = phi double [ 0.000000e+00, %bb.i ], [ -inf, %bb.b ], [ %i.o, %bb.f ], [ %i.cf, %bb.t ], [ %i.am, %bb.j ], [ %i.ar, %bb.l ], [ %i.ax, %bb.m ], [ %i.bq, %bb.p ], [ %i.bw, %bb.q ], [ %i.ca, %bb.s ], [ +snan(0x4000000000000), %bb.c ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN2v84base7ieee7545log1pEd(double noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 5 uses
  %i.d = and i32 %i.c, 2147483647                 ; 3 uses
  %i.e = icmp slt i32 %i.c, 1071284858
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ugt i32 %i.d, 1072693247
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = fcmp oeq double %0, -1.000000e+00
  br i1 %i.g, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %bb.x

bb.e:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i32 %i.d, 1042284544
  br i1 %i.h, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.i = fadd double %0, f0x4350000000000000
  %i.j = fcmp ogt double %i.i, 0.000000e+00
  %i.k = icmp samesign ult i32 %i.d, 1016070144
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = fneg double %0
  %i.m = fmul double %0, %i.l
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double 5.000000e-01, double %0)
  br label %bb.x

bb.h:                                             ; preds = %bb.e
  %i.o = add i32 %i.c, -1
  %or.cond3 = icmp ult i32 %i.o, -1076707644
  br i1 %or.cond3, label %.thread108, label %.thread107

.thread:                                          ; preds = %bb.a
  %i.p = icmp ugt i64 %i.a, 9218868437227405311
  br i1 %i.p, label %bb.i, label %.thread121

bb.i:                                             ; preds = %.thread
  %i.q = fadd double %0, %0
  br label %bb.x

.thread108:                                       ; preds = %bb.h
  %i.r = fmul double %0, 5.000000e-01
  %i.s = fmul double %0, %i.r
  br label %bb.u

.thread121:                                       ; preds = %.thread
  %i.t = icmp ult i64 %i.a, 4845873199050653696
  br i1 %i.t, label %.thread107, label %bb.j

.thread107:                                       ; preds = %bb.h, %.thread121
  %i.u = fadd double %0, 1.000000e+00             ; 5 uses
  %i.v = bitcast double %i.u to i64
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc nuw i64 %i.w to i32                ; 2 uses
  %i.y = ashr i32 %i.x, 20                        ; 2 uses
  %i.z = icmp sgt i32 %i.y, 1023
  %i.aa = fsub double %0, %i.u
  %i.ab = fadd double %i.aa, 1.000000e+00
  %i.ac = fadd double %i.u, -1.000000e+00
  %i.ad = fsub double %0, %i.ac
  %i.ae = select i1 %i.z, double %i.ab, double %i.ad
  %i.af = fdiv double %i.ae, %i.u
  br label %bb.k

bb.j:                                             ; preds = %.thread121
  %i.ag = lshr i32 %i.c, 20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread107
  %.0101 = phi double [ %i.u, %.thread107 ], [ %0, %bb.j ]
  %.077 = phi double [ %i.af, %.thread107 ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %.174.in = phi i32 [ %i.y, %.thread107 ], [ %i.ag, %bb.j ] ; 2 uses
  %.172 = phi i32 [ %i.x, %.thread107 ], [ %i.c, %bb.j ]
  %i.ah = and i32 %.172, 1048575                  ; 5 uses
  %i.ai = icmp samesign ult i32 %i.ah, 434334
  %i.aj = bitcast double %.0101 to i64
  %i.ak = and i64 %i.aj, 4294967295
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.174 = add nsw i32 %.174.in, -1023
  %i.al = or disjoint i32 %i.ah, 1072693248
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.am = add nsw i32 %.174.in, -1022
  %i.an = or disjoint i32 %i.ah, 1071644672
  %i.ao = sub nuw nsw i32 1048576, %i.ah
  %i.ap = lshr i32 %i.ao, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.pn.in.in = phi i32 [ %i.al, %bb.l ], [ %i.an, %bb.m ]
  %.275 = phi i32 [ %.174, %bb.l ], [ %i.am, %bb.m ] ; 5 uses
  %.2 = phi i32 [ %i.ah, %bb.l ], [ %i.ap, %bb.m ]
  %.pn.in = zext i32 %.pn.in.in to i64
  %.pn = shl nuw nsw i64 %.pn.in, 32
  %.1102.in = or disjoint i64 %.pn, %i.ak
  %.1102 = bitcast i64 %.1102.in to double
  %i.aq = fadd double %.1102, -1.000000e+00       ; 7 uses
  %i.ar = icmp eq i32 %.2, 0
  %i.as = fmul double %i.aq, 5.000000e-01
  %i.at = fmul double %i.aq, %i.as                ; 2 uses
  br i1 %i.ar, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.au = fcmp oeq double %i.aq, 0.000000e+00
  br i1 %i.au, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.av = icmp eq i32 %.275, 0
  br i1 %i.av, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = sitofp i32 %.275 to double              ; 2 uses
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double f0x3DEA39EF35793C76, double %.077)
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.aw, double f0x3FE62E42FEE00000, double %i.ax)
  br label %bb.x

bb.r:                                             ; preds = %bb.o
  %i.az = tail call double @llvm.fmuladd.f64(double %i.aq, double f0xBFE5555555555555, double 1.000000e+00)
  %i.ba = fmul double %i.az, %i.at                ; 2 uses
  %i.bb = icmp eq i32 %.275, 0
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = fsub double %i.aq, %i.ba
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bd = sitofp i32 %.275 to double              ; 2 uses
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double f0x3DEA39EF35793C76, double %.077)
  %i.bf = fsub double %i.ba, %i.be
  %i.bg = fsub double %i.bf, %i.aq
  %i.bh = fneg double %i.bg
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bd, double f0x3FE62E42FEE00000, double %i.bh)
  br label %bb.x

bb.u:                                             ; preds = %.thread108, %bb.n
  %i.bj = phi double [ %i.s, %.thread108 ], [ %i.at, %bb.n ] ; 4 uses
  %.1115 = phi double [ %0, %.thread108 ], [ %i.aq, %bb.n ] ; 4 uses
end_hunk_0
