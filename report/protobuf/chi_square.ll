inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef double @_ZN4absl12lts_2025051215random_internal14ChiSquareValueEid(i32 noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fsub double 1.000000e+00, %1             ; 5 uses
  %i.b = icmp slt i32 %0, 1
  %i.c = fcmp ogt double %i.a, 1.000000e+00
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i32 %0, 150
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef double @_ZN4absl12lts_2025051215random_internal21InverseNormalSurvivalEd(double noundef %i.a)
  %i.f = mul nuw nsw i32 %0, 9
  %i.g = uitofp nneg i32 %i.f to double
  %i.h = fdiv double 2.000000e+00, %i.g           ; 3 uses
  %i.i = fcmp oeq double %i.h, 0.000000e+00
  br i1 %i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = fsub double 1.000000e+00, %i.h
  %sqrt = tail call double @llvm.sqrt.f64(double %i.h)
  %i.k = tail call double @llvm.fmuladd.f64(double %i.e, double %sqrt, double %i.j) ; 3 uses
  %i.l = uitofp nneg i32 %0 to double
  %i.m = fmul double %i.k, %i.k
  %i.n = fmul double %i.k, %i.m
  %i.o = fmul double %i.n, %i.l
  br label %.loopexit

.thread:                                          ; preds = %bb.c, %bb.b
  %i.p = fcmp ugt double %i.a, 0.000000e+00
  br i1 %i.p, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.thread
  %i.q = uitofp nneg i32 %0 to double
  %i.r = tail call double @sqrt(double noundef %i.a) #5, !tbaa !3
  %i.s = fdiv double %i.q, %i.r
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %.042 = phi double [ %i.s, %bb.e ], [ %i.w, %bb.f ] ; 3 uses
  %.03041 = phi double [ 9.999900e+04, %bb.e ], [ %.0..030, %bb.f ]
  %.03140 = phi double [ 0.000000e+00, %bb.e ], [ %.031..0, %bb.f ]
  %i.t = tail call noundef double @_ZN4absl12lts_2025051215random_internal15ChiSquarePValueEdi(double noundef %.042, i32 noundef %0)
  %i.u = fcmp olt double %i.t, %i.a               ; 2 uses
  %.031..0 = select i1 %i.u, double %.03140, double %.042 ; 3 uses
  %.0..030 = select i1 %i.u, double %.042, double %.03041 ; 3 uses
  %i.v = fadd double %.0..030, %.031..0
  %i.w = fmul double %i.v, 5.000000e-01           ; 2 uses
  %i.x = fsub double %.0..030, %.031..0
  %i.y = fcmp ogt double %i.x, f0x3EB0C6F7A0B5ED8D
  br i1 %i.y, label %bb.f, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %bb.f, %bb.d, %.thread, %bb.a
  %.134 = phi double [ %i.o, %bb.d ], [ 0.000000e+00, %bb.a ], [ 9.999900e+04, %.thread ], [ %i.w, %bb.f ]
  ret double %.134
}

declare noundef double @_ZN4absl12lts_2025051215random_internal21InverseNormalSurvivalEd(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define noundef double @_ZN4absl12lts_2025051215random_internal15ChiSquarePValueEdi(double noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 150
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %2 = mul nuw nsw i32 %1, 9
  %3 = uitofp nneg i32 %2 to double
  %i.b = uitofp nneg i32 %1 to double
  %4 = insertelement <2 x double> <double poison, double 2.000000e+00>, double %0, i64 0
  %5 = insertelement <2 x double> poison, double %i.b, i64 0
  %6 = insertelement <2 x double> %5, double %3, i64 1
  %7 = fdiv <2 x double> %4, %6                   ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0
  %9 = tail call double @pow(double noundef %8, double noundef f0x3FD5555555555555) #5, !tbaa !3
  %10 = extractelement <2 x double> %7, i64 1     ; 3 uses
  %i.c = fcmp une double %10, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = fsub double 1.000000e+00, %10
  %i.e = fsub double %9, %i.d
  %sqrt = tail call double @llvm.sqrt.f64(double %10)
  %i.f = fdiv double %i.e, %sqrt                  ; 7 uses
  %i.g = fcmp ogt double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call double @llvm.fma.f64(double %i.f, double 1.952700e-02, double 3.440000e-04)
  %i.i = tail call double @llvm.fma.f64(double %i.h, double %i.f, double 1.151940e-01)
  %i.j = tail call double @llvm.fma.f64(double %i.i, double %i.f, double 1.968540e-01)
  %i.k = tail call noundef double @llvm.fma.f64(double %i.j, double %i.f, double 1.000000e+00) ; 2 uses
  %i.l = fmul double %i.k, %i.k                   ; 2 uses
  %i.m = fmul double %i.l, %i.l
  %i.n = fdiv double 5.000000e-01, %i.m
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.o = fcmp olt double %i.f, 0.000000e+00
  br i1 %i.o, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.p = fneg double %i.f                         ; 4 uses
  %i.q = tail call double @llvm.fma.f64(double %i.p, double 1.952700e-02, double 3.440000e-04)
  %i.r = tail call double @llvm.fma.f64(double %i.q, double %i.p, double 1.151940e-01)
  %i.s = tail call double @llvm.fma.f64(double %i.r, double %i.p, double 1.968540e-01)
  %i.t = tail call noundef double @llvm.fma.f64(double %i.s, double %i.p, double 1.000000e+00) ; 2 uses
  %i.u = fmul double %i.t, %i.t                   ; 2 uses
  %i.v = fmul double %i.u, %i.u
  %i.w = fdiv double 5.000000e-01, %i.v
  %i.x = fsub double 1.000000e+00, %i.w
  br label %.thread

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.y = fcmp ugt double %0, 0.000000e+00
  br i1 %i.y, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.z = icmp slt i32 %1, 1
  br i1 %i.z, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = fmul double %0, 5.000000e-01            ; 5 uses
  %i.ab = and i32 %1, 1
  %.not = icmp eq i32 %i.ab, 0                    ; 4 uses
  %i.ac = fneg double %i.aa                       ; 2 uses
  %i.ad = fcmp ogt double %i.aa, 2.000000e+01     ; 2 uses
  br i1 %i.ad, label %"_ZZN4absl12lts_2025051215random_internal15ChiSquarePValueEdiENK3$_0clEd.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call double @exp(double noundef %i.ac) #5, !tbaa !3
  br label %"_ZZN4absl12lts_2025051215random_internal15ChiSquarePValueEdiENK3$_0clEd.exit"

"_ZZN4absl12lts_2025051215random_internal15ChiSquarePValueEdiENK3$_0clEd.exit": ; preds = %bb.i, %bb.j
  %i.af = phi double [ %i.ae, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  br i1 %.not, label %_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_13POZEd.exit, label %bb.k

bb.k:                                             ; preds = %"_ZZN4absl12lts_2025051215random_internal15ChiSquarePValueEdiENK3$_0clEd.exit"
  %i.ag = tail call double @sqrt(double noundef %0) #5, !tbaa !3 ; 3 uses
  %i.ah = fcmp oeq double %i.ag, 0.000000e+00
  br i1 %i.ah, label %_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_13POZEd.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call double @llvm.fabs.f64(double %i.ag)
  %i.aj = fmul double %i.ai, 5.000000e-01         ; 6 uses
  %i.ak = fcmp ult double %i.aj, 3.000000e+00
  br i1 %i.ak, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.al = fcmp olt double %i.aj, 1.000000e+00
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = fmul nnan double %i.aj, %i.aj           ; 8 uses
  %i.an = tail call double @llvm.fma.f64(double %i.am, double f0x3F205C3AEF25BECF, double f0xBF519DBB8DFA21CC)
  %i.ao = tail call double @llvm.fma.f64(double %i.an, double %i.am, double f0x3F754B4F8AF94F71)
  %i.ap = tail call double @llvm.fma.f64(double %i.ao, double %i.am, double f0xBF93A8B7912F5918)
  %i.aq = tail call double @llvm.fma.f64(double %i.ap, double %i.am, double f0x3FAE3C549F8EF466)
  %i.ar = tail call double @llvm.fma.f64(double %i.aq, double %i.am, double f0xBFC373B6488FA8B0)
  %i.as = tail call double @llvm.fma.f64(double %i.ar, double %i.am, double f0x3FD46D006C15F74E)
  %i.at = tail call double @llvm.fma.f64(double %i.as, double %i.am, double f0xBFE10583660AFDB3)
  %i.au = tail call noundef double @llvm.fma.f64(double %i.at, double %i.am, double f0x3FE9884533B75E55)
  %i.av = fmul double %i.aj, %i.au
  %i.aw = fmul double %i.av, 2.000000e+00
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ax = fadd double %i.aj, -2.000000e+00        ; 14 uses
  %i.ay = tail call double @llvm.fma.f64(double %i.ax, double f0xBF07BA1C9A586733, double f0x3F23FE089FDCE2C3)
  %i.az = tail call double @llvm.fma.f64(double %i.ay, double %i.ax, double f0xBEF47CBA351AB72F)
  %i.ba = tail call double @llvm.fma.f64(double %i.az, double %i.ax, double f0xBF462E4A6380D6A6)
  %i.bb = tail call double @llvm.fma.f64(double %i.ba, double %i.ax, double f0x3F56C89DFAF928DD)
  %i.bc = tail call double @llvm.fma.f64(double %i.bb, double %i.ax, double f0xBF4A09C337A1A6B4)
  %i.bd = tail call double @llvm.fma.f64(double %i.bc, double %i.ax, double f0xBF60AA2444FA5608)
  %i.be = tail call double @llvm.fma.f64(double %i.bd, double %i.ax, double f0x3F7AD3F430F4C4F3)
  %i.bf = tail call double @llvm.fma.f64(double %i.be, double %i.ax, double f0xBF859F3C70FE5D84)
  %i.bg = tail call double @llvm.fma.f64(double %i.bf, double %i.ax, double f0x3F87D1B436FBD04B)
  %i.bh = tail call double @llvm.fma.f64(double %i.bg, double %i.ax, double f0xBF83011B24FEACC1)
  %i.bi = tail call double @llvm.fma.f64(double %i.bh, double %i.ax, double f0x3F75EDA272F76F46)
  %i.bj = tail call double @llvm.fma.f64(double %i.bi, double %i.ax, double f0xBF618A90E6DD8762)
  %i.bk = tail call double @llvm.fma.f64(double %i.bj, double %i.ax, double f0x3F418A834B799E45)
  %i.bl = tail call noundef double @llvm.fma.f64(double %i.bk, double %i.ax, double f0x3FEFFF7B29446363)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.014.i = phi double [ %i.bl, %bb.o ], [ %i.aw, %bb.n ], [ 1.000000e+00, %bb.l ] ; 2 uses
  %i.bm = fcmp olt double %i.ag, 0.000000e+00
  %i.bn = fneg double %.014.i
  %.in.p.i = select i1 %i.bm, double %.014.i, double %i.bn
  %.in.i = fadd double %.in.p.i, 1.000000e+00
  %i.bo = fmul double %.in.i, 5.000000e-01
  %i.bp = fmul double %i.bo, 2.000000e+00
  br label %_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_13POZEd.exit

_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_13POZEd.exit: ; preds = %bb.p, %bb.k, %"_ZZN4absl12lts_2025051215random_internal15ChiSquarePValueEdiENK3$_0clEd.exit"
  %i.bq = phi double [ %i.af, %"_ZZN4absl12lts_2025051215random_internal15ChiSquarePValueEdiENK3$_0clEd.exit" ], [ %i.bp, %bb.p ], [ 1.000000e+00, %bb.k ] ; 4 uses
  %i.br = icmp samesign ult i32 %1, 3
  br i1 %i.br, label %.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_13POZEd.exit
  %i.bs = add nsw i32 %1, -1
  %i.bt = uitofp nneg i32 %i.bs to double
  %i.bu = fmul nnan double %i.bt, 5.000000e-01    ; 4 uses
  %i.bv = select i1 %.not, double 1.000000e+00, double 5.000000e-01 ; 4 uses
  br i1 %i.ad, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bw = tail call double @llvm.log.f64(double %i.aa), !tbaa !3
  %i.bx = fcmp ugt double %i.bv, %i.bu
  br i1 %i.bx, label %.thread, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %bb.r
  %i.by = select i1 %.not, double 0.000000e+00, double f0x3FE250D048E7A1BD
  br label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %"_ZZN4absl12lts_2025051215random_internal15ChiSquarePValueEdiENK3$_0clEd.exit69"
  %.05576 = phi double [ %i.ca, %"_ZZN4absl12lts_2025051215random_internal15ChiSquarePValueEdiENK3$_0clEd.exit69" ], [ %i.by, %.lr.ph78.preheader ]
  %.05675 = phi double [ %i.ch, %"_ZZN4absl12lts_2025051215random_internal15ChiSquarePValueEdiENK3$_0clEd.exit69" ], [ %i.bv, %.lr.ph78.preheader ] ; 3 uses
  %.05874 = phi double [ %i.cg, %"_ZZN4absl12lts_2025051215random_internal15ChiSquarePValueEdiENK3$_0clEd.exit69" ], [ %i.bq, %.lr.ph78.preheader ]
  %i.bz = tail call double @log(double noundef %.05675) #5, !tbaa !3
  %i.ca = fadd double %.05576, %i.bz              ; 2 uses
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bw, double %.05675, double %i.ac)
  %i.cc = fsub double %i.cb, %i.ca                ; 2 uses
  %i.cd = fcmp olt double %i.cc, -2.000000e+01
  br i1 %i.cd, label %"_ZZN4absl12lts_2025051215random_internal15ChiSquarePValueEdiENK3$_0clEd.exit69", label %bb.s

bb.s:                                             ; preds = %.lr.ph78
  %i.ce = tail call double @exp(double noundef %i.cc) #5, !tbaa !3
  br label %"_ZZN4absl12lts_2025051215random_internal15ChiSquarePValueEdiENK3$_0clEd.exit69"

"_ZZN4absl12lts_2025051215random_internal15ChiSquarePValueEdiENK3$_0clEd.exit69": ; preds = %.lr.ph78, %bb.s
  %i.cf = phi double [ %i.ce, %bb.s ], [ 0.000000e+00, %.lr.ph78 ]
  %i.cg = fadd double %.05874, %i.cf              ; 2 uses
  %i.ch = fadd double %.05675, 1.000000e+00       ; 2 uses
  %i.ci = fcmp ugt double %i.ch, %i.bu
  br i1 %i.ci, label %.thread, label %.lr.ph78, !llvm.loop !9

bb.t:                                             ; preds = %bb.q
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = tail call double @sqrt(double noundef %i.aa) #5, !tbaa !3
  %i.ck = fdiv double f0x3FE20DD750429B6D, %i.cj
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.cl = phi double [ %i.ck, %bb.u ], [ 1.000000e+00, %bb.t ]
  %i.cm = fcmp ugt double %i.bv, %i.bu
  br i1 %i.cm, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %.lr.ph
  %.073 = phi double [ %i.cp, %.lr.ph ], [ 0.000000e+00, %bb.v ]
  %.05372 = phi double [ %i.co, %.lr.ph ], [ %i.cl, %bb.v ]
  %.15771 = phi double [ %i.cq, %.lr.ph ], [ %i.bv, %bb.v ] ; 2 uses
  %i.cn = fdiv double %i.aa, %.15771
  %i.co = fmul double %.05372, %i.cn              ; 2 uses
  %i.cp = fadd double %.073, %i.co                ; 2 uses
  %i.cq = fadd double %.15771, 1.000000e+00       ; 2 uses
  %i.cr = fcmp ugt double %i.cq, %i.bu
  br i1 %i.cr, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.v
  %.0.lcssa = phi double [ 0.000000e+00, %bb.v ], [ %i.cp, %.lr.ph ]
  %i.cs = tail call double @llvm.fmuladd.f64(double %.0.lcssa, double %i.af, double %i.bq)
  br label %.thread

.thread:                                          ; preds = %"_ZZN4absl12lts_2025051215random_internal15ChiSquarePValueEdiENK3$_0clEd.exit69", %bb.r, %bb.e, %bb.f, %bb.d, %_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_13POZEd.exit, %._crit_edge, %bb.h, %bb.g
  %.4 = phi double [ 5.000000e-01, %bb.e ], [ 1.000000e+00, %bb.g ], [ 0.000000e+00, %bb.h ], [ %i.bq, %_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_13POZEd.exit ], [ %i.cs, %._crit_edge ], [ %i.x, %bb.f ], [ %i.n, %bb.d ], [ %i.bq, %bb.r ], [ %i.cg, %"_ZZN4absl12lts_2025051215random_internal15ChiSquarePValueEdiENK3$_0clEd.exit69" ]
  ret double %.4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #2

end_hunk_0
