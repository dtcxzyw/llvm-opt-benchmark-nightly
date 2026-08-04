inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2v84base7ieee7544acosEd:bb.a
  %i.bo = insertelement <2 x double> %i.bn, double %i.bc, i64 1
  %i.bp = insertelement <2 x double> <double poison, double f0x3F023DE10DFDF709>, double %i.bk, i64 0
  %i.bq = insertelement <2 x double> <double poison, double f0x3F49EFE07501B288>, double %i.bc, i64 0
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bp, <2 x double> %i.bq) ; 2 uses
  %i.bs = extractelement <2 x double> %i.br, i64 1
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bs, double f0xBFA48228B5688F3B)
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bt, double f0x3FC9C1550E884455)
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bu, double f0xBFD4D61203EB6F7D)
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bv, double f0x3FC5555555555555)
  %i.bx = fmul double %i.bc, %i.bw
  %i.by = insertelement <2 x double> %i.br, double %i.bx, i64 1
  %i.bz = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.bj, i64 1
  %i.cb = fdiv <2 x double> %i.by, %i.ca          ; 2 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0
  %i.cd = extractelement <2 x double> %i.cb, i64 1
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.bd, double %i.cc)
  %i.cf = fadd double %i.ce, %i.bk
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
  %.082 = phi i32 [ %i.m, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %.081 = phi i32 [ -54, %bb.d ], [ 0, %bb.a ]
  %i.n = icmp sgt i32 %.082, 2146435071
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = fadd double %.091, %.091
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.p = ashr i32 %.082, 20
  %i.q = add nsw i32 %i.p, -1023
  %i.r = add nsw i32 %i.q, %.081
  %i.s = and i32 %.082, 1048575                   ; 4 uses
  %i.t = add nuw nsw i32 %i.s, 614244             ; 2 uses
  %i.u = and i32 %i.t, 1048576
  %i.v = bitcast double %.091 to i64
  %i.w = and i64 %i.v, 4294967295
  %i.x = or disjoint i32 %i.u, %i.s
  %i.y = xor i32 %i.x, 1072693248
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 32
  %i.ab = or disjoint i64 %i.aa, %i.w
  %i.ac = bitcast i64 %i.ab to double
  %i.ad = lshr i32 %i.t, 20
  %i.ae = add nsw i32 %i.r, %i.ad                 ; 7 uses
  %i.af = fadd double %i.ac, -1.000000e+00        ; 15 uses
  %i.ag = add nsw i32 %.082, 2
  %i.ah = and i32 %i.ag, 1048575
  %i.ai = icmp samesign ult i32 %i.ah, 3
  br i1 %i.ai, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.aj = fcmp oeq double %i.af, 0.000000e+00
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp eq i32 %i.ae, 0
  br i1 %i.ak, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = sitofp i32 %i.ae to double              ; 2 uses
  %i.am = fmul nnan double %i.al, f0x3DEA39EF35793C76
  %i.an = tail call double @llvm.fmuladd.f64(double %i.al, double f0x3FE62E42FEE00000, double %i.am)
  br label %bb.u

bb.k:                                             ; preds = %bb.h
  %i.ao = fmul double %i.af, %i.af
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.af, double f0xBFD5555555555555, double 5.000000e-01)
  %i.aq = fmul double %i.ao, %i.ap                ; 2 uses
  %i.ar = icmp eq i32 %i.ae, 0
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = fsub double %i.af, %i.aq
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.at = sitofp i32 %i.ae to double              ; 2 uses
  %i.au = fneg double %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double f0x3DEA39EF35793C76, double %i.aq)
  %i.aw = fsub double %i.av, %i.af
  %i.ax = fneg double %i.aw
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.at, double f0x3FE62E42FEE00000, double %i.ax)
  br label %bb.u

bb.n:                                             ; preds = %bb.g
  %i.az = fadd double %i.af, 2.000000e+00
  %i.ba = fdiv double %i.af, %i.az                ; 6 uses
  %i.bb = sitofp i32 %i.ae to double              ; 4 uses
  %i.bc = fmul double %i.ba, %i.ba                ; 3 uses
  %i.bd = add nsw i32 %i.s, -398458
  %i.be = fmul double %i.bc, %i.bc                ; 2 uses
  %i.bf = sub nsw i32 440401, %i.s
  %i.bg = insertelement <2 x double> poison, double %i.be, i64 0 ; 2 uses
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> <double f0x3FC39A09D078C69F, double f0x3FC2F112DF3E5244>, <2 x double> <double f0x3FCC71C51D8E78AF, double f0x3FC7466496CB03DE>) ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 1
  %1 = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bj, double f0x3FD2492494229359)
  %2 = insertelement <2 x double> %i.bi, double %1, i64 1
  %3 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %2, <2 x double> <double f0x3FD999999997FA04, double f0x3FE5555555555593>)
  %4 = insertelement <2 x double> %i.bg, double %i.bc, i64 1
  %5 = fmul <2 x double> %4, %3                   ; 2 uses
  %i.bk = or i32 %i.bd, %i.bf
  %shift = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %5, %shift
  %6 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bm = fmul double %i.af, 5.000000e-01
  %i.bn = fmul double %i.af, %i.bm                ; 3 uses
  %i.bo = icmp eq i32 %i.ae, 0
  %i.bp = fadd double %i.bn, %6                   ; 2 uses
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bq = fneg double %i.ba
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bp, double %i.bn)
  %i.bs = fsub double %i.af, %i.br
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.bt = fmul nnan double %i.bb, f0x3DEA39EF35793C76
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.bp, double %i.bt)
  %i.bv = fsub double %i.bn, %i.bu
  %i.bw = fsub double %i.bv, %i.af
  %i.bx = fneg double %i.bw
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bb, double f0x3FE62E42FEE00000, double %i.bx)
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.bz = icmp eq i32 %i.ae, 0
  %i.ca = fsub double %i.af, %6                   ; 2 uses
  br i1 %i.bz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = fneg double %i.ba
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.ca, double %i.af)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cd = fmul nnan double %i.bb, f0xBDEA39EF35793C76
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ca, double %i.cd)
  %i.cf = fsub double %i.ce, %i.af
  %i.cg = fneg double %i.cf
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.bb, double f0x3FE62E42FEE00000, double %i.cg)
  br label %bb.u

bb.u:                                             ; preds = %bb.c, %bb.b, %bb.i, %bb.t, %bb.s, %bb.q, %bb.p, %bb.m, %bb.l, %bb.j, %bb.f
  %.0 = phi double [ 0.000000e+00, %bb.i ], [ -inf, %bb.b ], [ %i.o, %bb.f ], [ %i.ch, %bb.t ], [ %i.an, %bb.j ], [ %i.as, %bb.l ], [ %i.ay, %bb.m ], [ %i.bs, %bb.p ], [ %i.by, %bb.q ], [ %i.cc, %bb.s ], [ +snan(0x4000000000000), %bb.c ]
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
  %.176.in = phi i32 [ %i.y, %.thread107 ], [ %i.ag, %bb.j ] ; 2 uses
  %.174 = phi i32 [ %i.x, %.thread107 ], [ %i.c, %bb.j ]
  %.071 = phi double [ %i.af, %.thread107 ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %i.ah = and i32 %.174, 1048575                  ; 5 uses
  %i.ai = icmp samesign ult i32 %i.ah, 434334
  %i.aj = bitcast double %.0101 to i64
  %i.ak = and i64 %i.aj, 4294967295
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.176 = add nsw i32 %.176.in, -1023
  %i.al = or disjoint i32 %i.ah, 1072693248
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.am = add nsw i32 %.176.in, -1022
  %i.an = or disjoint i32 %i.ah, 1071644672
  %i.ao = sub nuw nsw i32 1048576, %i.ah
  %i.ap = lshr i32 %i.ao, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.pn.in.in = phi i32 [ %i.al, %bb.l ], [ %i.an, %bb.m ]
  %.277 = phi i32 [ %.176, %bb.l ], [ %i.am, %bb.m ] ; 5 uses
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
  %i.av = icmp eq i32 %.277, 0
  br i1 %i.av, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = sitofp i32 %.277 to double              ; 2 uses
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double f0x3DEA39EF35793C76, double %.071)
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.aw, double f0x3FE62E42FEE00000, double %i.ax)
  br label %bb.x

bb.r:                                             ; preds = %bb.o
  %i.az = tail call double @llvm.fmuladd.f64(double %i.aq, double f0xBFE5555555555555, double 1.000000e+00)
  %i.ba = fmul double %i.az, %i.at                ; 2 uses
  %i.bb = icmp eq i32 %.277, 0
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = fsub double %i.aq, %i.ba
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bd = sitofp i32 %.277 to double              ; 2 uses
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double f0x3DEA39EF35793C76, double %.071)
  %i.bf = fsub double %i.ba, %i.be
  %i.bg = fsub double %i.bf, %i.aq
  %i.bh = fneg double %i.bg
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bd, double f0x3FE62E42FEE00000, double %i.bh)
  br label %bb.x

bb.u:                                             ; preds = %.thread108, %bb.n
  %i.bj = phi double [ %i.s, %.thread108 ], [ %i.at, %bb.n ] ; 4 uses
  %.1115 = phi double [ %0, %.thread108 ], [ %i.aq, %bb.n ] ; 4 uses
  %.172114 = phi double [ undef, %.thread108 ], [ %.071, %bb.n ]
  %.378113 = phi i32 [ 0, %.thread108 ], [ %.277, %bb.n ] ; 2 uses
  %i.bk = fadd double %.1115, 2.000000e+00
  %i.bl = fdiv double %.1115, %i.bk               ; 4 uses
  %i.bm = fmul double %i.bl, %i.bl                ; 7 uses
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double f0x3FC2F112DF3E5244, double f0x3FC39A09D078C69F)
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bn, double f0x3FC7466496CB03DE)
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bo, double f0x3FCC71C51D8E78AF)
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bp, double f0x3FD2492494229359)
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bq, double f0x3FD999999997FA04)
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.br, double f0x3FE5555555555593)
  %i.bt = fmul double %i.bm, %i.bs                ; 2 uses
  %i.bu = icmp eq i32 %.378113, 0
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bv = fadd double %i.bj, %i.bt
  %i.bw = fneg double %i.bl
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bv, double %i.bj)
  %i.by = fsub double %.1115, %i.bx
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bz = sitofp i32 %.378113 to double           ; 2 uses
  %i.ca = fadd double %i.bj, %i.bt
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bz, double f0x3DEA39EF35793C76, double %.172114)
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.ca, double %i.cb)
  %i.cd = fsub double %i.bj, %i.cc
end_hunk_0
begin_hunk_1_@_ZN2v84base7ieee7545expm1Ed:bb.a
bb.l:                                             ; preds = %bb.k
  %i.w = icmp eq i32 %i.d, 0
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.x = fadd double %0, f0xBFE62E42FEE00000
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.y = fadd double %0, f0x3FE62E42FEE00000
  br label %bb.o

.thread95:                                        ; preds = %bb.i, %bb.k
  %i.z = icmp eq i32 %i.d, 0
  %i.aa = select i1 %i.z, double 5.000000e-01, double -5.000000e-01
  %i.ab = tail call double @llvm.fmuladd.f64(double %0, double f0x3FF71547652B82FE, double %i.aa)
  %i.ac = fptosi double %i.ab to i32              ; 2 uses
  %i.ad = sitofp i32 %i.ac to double              ; 2 uses
  %i.ae = fneg double %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double f0x3FE62E42FEE00000, double %0)
  %i.ag = fmul nnan double %i.ad, f0x3DEA39EF35793C76
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %.thread95
  %.069 = phi i32 [ 1, %bb.m ], [ -1, %bb.n ], [ %i.ac, %.thread95 ]
  %.068 = phi double [ f0x3DEA39EF35793C76, %bb.m ], [ f0xBDEA39EF35793C76, %bb.n ], [ %i.ag, %.thread95 ] ; 2 uses
  %.067 = phi double [ %i.x, %bb.m ], [ %i.y, %bb.n ], [ %i.af, %.thread95 ] ; 2 uses
  %i.ah = fsub double %.067, %.068                ; 2 uses
  %i.ai = fsub double %.067, %i.ah
  %i.aj = fsub double %i.ai, %.068
  br label %bb.r

bb.p:                                             ; preds = %bb.j
  %i.ak = icmp samesign ult i32 %i.e, 1016070144
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.al = load volatile double, ptr @_ZZN2v84base7ieee7545expm1EdE4huge, align 8
  %i.am = fadd double %0, %i.al
  %i.an = load volatile double, ptr @_ZZN2v84base7ieee7545expm1EdE4huge, align 8
  %i.ao = fadd double %0, %i.an
  %i.ap = fsub double %i.am, %i.ao
  %i.aq = fsub double %0, %i.ap
  br label %bb.ae

bb.r:                                             ; preds = %bb.p, %bb.o
  %.0 = phi double [ %i.ah, %bb.o ], [ %0, %bb.p ] ; 12 uses
  %.071 = phi double [ %i.aj, %bb.o ], [ undef, %bb.p ] ; 2 uses
  %.170 = phi i32 [ %.069, %bb.o ], [ 0, %bb.p ]  ; 7 uses
  %i.ar = fmul double %.0, 5.000000e-01           ; 2 uses
  %i.as = fmul double %.0, %i.ar                  ; 8 uses
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double f0xBE8AFDB76E09C32D, double f0x3ED0CFCA86E65239)
  %i.au = tail call double @llvm.fmuladd.f64(double %i.as, double %i.at, double f0xBF14CE199EAADBB7)
  %i.av = tail call double @llvm.fmuladd.f64(double %i.as, double %i.au, double f0x3F5A01A019FE5585)
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.as, double %i.av, double f0xBFA11111111110F4)
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.as, double %i.aw, double 1.000000e+00) ; 2 uses
  %i.ay = fneg double %i.ax
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ar, double 3.000000e+00) ; 2 uses
  %i.ba = fsub double %i.ax, %i.az
  %i.bb = fneg double %.0
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.az, double 6.000000e+00)
  %i.bd = fdiv double %i.ba, %i.bc
  %i.be = fmul double %i.as, %i.bd                ; 2 uses
  %i.bf = icmp eq i32 %.170, 0
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = fneg double %i.as
  %i.bh = tail call double @llvm.fmuladd.f64(double %.0, double %i.be, double %i.bg)
  %i.bi = fsub double %.0, %i.bh
  br label %bb.ae

bb.t:                                             ; preds = %bb.r
  %i.bj = shl i32 %.170, 20                       ; 2 uses
  %i.bk = add nsw i32 %i.bj, 1072693248
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 32
  %i.bn = bitcast i64 %i.bm to double             ; 2 uses
  %i.bo = fsub double %i.be, %.071
  %i.bp = fneg double %.071
  %i.bq = tail call double @llvm.fmuladd.f64(double %.0, double %i.bo, double %i.bp)
  %i.br = fsub double %i.bq, %i.as                ; 6 uses
  switch i32 %.170, label %bb.y [
    i32 -1, label %bb.u
    i32 1, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bs = fsub double %.0, %i.br
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bs, double 5.000000e-01, double -5.000000e-01)
  br label %bb.ae

bb.v:                                             ; preds = %bb.t
  %i.bu = fcmp olt double %.0, -2.500000e-01
  br i1 %i.bu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bv = fadd nnan double %.0, 5.000000e-01
  %i.bw = fsub double %i.br, %i.bv
  %i.bx = fmul double %i.bw, -2.000000e+00
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  %i.by = fsub double %.0, %i.br
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.by, double 2.000000e+00, double 1.000000e+00)
  br label %bb.ae

bb.y:                                             ; preds = %bb.t
  %i.ca = add i32 %.170, -57
  %or.cond = icmp ult i32 %i.ca, -58
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cb = fsub double %.0, %i.br
  %i.cc = fadd double %i.cb, 1.000000e+00         ; 2 uses
  %i.cd = icmp eq i32 %.170, 1024
  %i.ce = fmul double %i.cc, 2.000000e+00
  %i.cf = fmul double %i.ce, f0x7FE0000000000000
  %i.cg = fmul double %i.cc, %i.bn
  %.065 = select i1 %i.cd, double %i.cf, double %i.cg
  %i.ch = fadd double %.065, -1.000000e+00
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.ci = icmp samesign ult i32 %.170, 20
  br i1 %i.ci, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cj = lshr i32 2097152, %.170
  %i.ck = sub nuw nsw i32 1072693248, %i.cj
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 32
  %i.cn = bitcast i64 %i.cm to double
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.co = sub i32 1072693248, %i.bj
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 32
  %i.cr = bitcast i64 %i.cq to double
  %i.cs = fadd double %i.br, %i.cr
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.sink100 = phi double [ %i.br, %bb.ab ], [ %i.cs, %bb.ac ]
  %.sink99 = phi double [ %i.cn, %bb.ab ], [ 1.000000e+00, %bb.ac ]
  %i.ct = fsub double %.0, %.sink100
  %i.cu = fadd double %i.ct, %.sink99
  %.166 = fmul double %i.cu, %i.bn
  br label %bb.ae

bb.ae:                                            ; preds = %bb.i, %bb.e, %bb.f, %bb.ad, %bb.z, %bb.x, %bb.w, %bb.u, %bb.s, %bb.q, %bb.h
  %.1 = phi double [ %i.aq, %bb.q ], [ %i.r, %bb.h ], [ %i.n, %bb.f ], [ %i.bi, %bb.s ], [ %i.bt, %bb.u ], [ %i.bx, %bb.w ], [ %i.bz, %bb.x ], [ %i.ch, %bb.z ], [ %.166, %bb.ad ], [ %i.l, %bb.e ], [ -1.000000e+00, %bb.i ]
  ret double %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN2v84base7ieee7544cbrtEd(double noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 2 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 2 uses
  %i.d = trunc i64 %i.a to i32
  %i.e = and i32 %i.c, -2147483648
  %i.f = and i32 %i.c, 2147483647                 ; 4 uses
  %i.g = icmp samesign ugt i32 %i.f, 2146435071
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = fadd double %0, %0
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i32 %i.f, 1048576
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = or i32 %i.f, %i.d
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = fmul double %0, f0x4350000000000000
  %i.m = bitcast double %i.l to i64
  %i.n = lshr i64 %i.m, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = and i32 %i.o, 2147483647
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sink41 = phi i32 [ %i.p, %bb.e ], [ %i.f, %bb.c ]
  %.sink40 = phi i32 [ 696219795, %bb.e ], [ 715094163, %bb.c ]
  %i.q = udiv i32 %.sink41, 3
  %i.r = add nuw nsw i32 %i.q, %.sink40
  %.038.in.in.in = or disjoint i32 %i.r, %i.e
  %.038.in.in = zext i32 %.038.in.in.in to i64
  %.038.in = shl nuw i64 %.038.in.in, 32
  %.038 = bitcast i64 %.038.in to double          ; 4 uses
  %i.s = fmul double %.038, %.038
  %i.t = fdiv double %.038, %0
  %i.u = fmul double %i.s, %i.t                   ; 5 uses
  %i.v = fmul double %i.u, %i.u
  %i.w = fmul double %i.u, %i.v
  %i.x = insertelement <2 x double> poison, double %i.u, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> <double f0x3FF9F1604A49D6C2, double f0x3FC2B000D4E4EDD7>, <2 x double> <double f0xBFFE28E092F02420, double f0xBFE844CBBEE751D9>) ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %1 = tail call double @llvm.fmuladd.f64(double %i.u, double %i.aa, double f0x3FFE03E60F61E692)
  %i.ab = extractelement <2 x double> %i.z, i64 1
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.w, double %i.ab, double %1)
  %i.ad = fmul double %i.ac, %.038
  %i.ae = bitcast double %i.ad to i64
  %i.af = and i64 %i.ae, -1073741824
  %i.ag = add i64 %i.af, 2147483648
  %i.ah = bitcast i64 %i.ag to double             ; 7 uses
  %i.ai = fmul double %i.ah, %i.ah
  %i.aj = fdiv double %0, %i.ai                   ; 2 uses
  %i.ak = fadd double %i.ah, %i.ah
  %i.al = fsub double %i.aj, %i.ah
  %i.am = fadd double %i.ak, %i.aj
  %i.an = fdiv double %i.al, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.an, double %i.ah)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  %.0 = phi double [ %i.h, %bb.b ], [ %i.ao, %bb.f ], [ %0, %bb.d ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define dso_local noundef double @_ZN2v84base7ieee7543sinEd(double noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = bitcast double %0 to i64                 ; 2 uses
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = and i32 %i.d, 2147483647                 ; 2 uses
  %i.f = icmp samesign ult i32 %i.e, 1072243196
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.b, 9205357638345293824
  %i.h = icmp samesign ult i64 %i.g, 4485585228861014016
  %i.i = fptosi double %0 to i32
  %i.j = icmp eq i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = fmul double %0, %0                       ; 6 uses
  %i.l = fmul double %0, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.k, double f0x3DE5D93A5ACFD57C, double f0xBE5AE5E68A2B9CEB)
  %i.n = tail call double @llvm.fmuladd.f64(double %i.k, double %i.m, double f0x3EC71DE357B1FE7D)
  %i.o = tail call double @llvm.fmuladd.f64(double %i.k, double %i.n, double f0xBF2A01A019C161D5)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.k, double %i.o, double f0x3F8111111110F8A6)
  %i.q = tail call double @llvm.fmuladd.f64(double %i.k, double %i.p, double f0xBFC5555555555549)
  %i.r = tail call double @llvm.fmuladd.f64(double %i.l, double %i.q, double %0)
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14

bb.d:                                             ; preds = %bb.a
  %i.s = icmp samesign ugt i32 %i.e, 2146435071
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = fsub double %0, %0
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14

bb.f:                                             ; preds = %bb.d
  %i.u = call fastcc noundef i32 @_ZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPd(double noundef %0, ptr noundef %i.a)
  %i.v = and i32 %i.u, 3
  %i.w = load double, ptr %i.a, align 16          ; 26 uses
  switch i32 %i.v, label %default.unreachable48 [
    i32 0, label %bb.g
    i32 1, label %bb.i
    i32 2, label %bb.m
    i32 3, label %bb.o
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = bitcast double %i.w to i64
  %i.y = and i64 %i.x, 9205357638345293824
  %i.z = icmp samesign ult i64 %i.y, 4485585228861014016
  %i.aa = fptosi double %i.w to i32
  %i.ab = icmp eq i32 %i.aa, 0
  %or.cond38 = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond38, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load double, ptr %i.ac, align 8         ; 2 uses
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
end_hunk_1
