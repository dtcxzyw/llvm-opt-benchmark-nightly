Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/Contour?download=true
inline.NumInlined: 181
inline.NumDeleted: 67
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_default_appendEm = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen7Contour7addEdgeERKNS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7msdfgen10EdgeHolderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !13
  br label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7msdfgen10EdgeHolderC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !13
  br label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN7msdfgen7Contour7addEdgeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.not = icmp eq i64 %i.f, -8
  br i1 %.not, label %.lr.ph.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !16
  br label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE6resizeEm.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #12
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.c, ptr %i.a, align 8, !tbaa !13
  br label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE6resizeEm.exit: ; preds = %bb.b, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.h = phi ptr [ %.pre, %bb.b ], [ %i.c, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7msdfgen7Contour5boundERdS1_S1_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %.not8 = icmp eq ptr %i.a, %i.c
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.05.09) ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !16
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20
}

declare noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK7msdfgen7Contour11boundMitersERdS1_S1_S1_ddi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, double noundef %5, double noundef %6, i32 noundef %7) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.f = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call { double, double } %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.f, double noundef 1.000000e+00) ; 2 uses
  %8 = extractvalue { double, double } %i.j, 0    ; 3 uses
  %9 = extractvalue { double, double } %i.j, 1    ; 3 uses
  %10 = fmul double %9, %9
  %11 = tail call double @llvm.fmuladd.f64(double %8, double %8, double %10)
  %12 = tail call noundef double @sqrt(double noundef %11) #12 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !16
  %.not74 = icmp eq ptr %i.k, %i.l
  br i1 %.not74, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = fcmp une double %12, 0.000000e+00
  %i.n = insertelement <2 x double> poison, double %8, i64 0
  %i.o = insertelement <2 x double> %i.n, double %9, i64 1
  %i.p = insertelement <2 x double> poison, double %12, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x double> %i.o, %i.q
  %i.s = insertelement <2 x i1> poison, i1 %i.m, i64 0
  %i.t = shufflevector <2 x i1> %i.s, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.u = select <2 x i1> %i.t, <2 x double> %i.r, <2 x double> zeroinitializer
  %i.v = sitofp i32 %7 to double
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN7msdfgenL10boundPointERdS0_S0_S0_NS_7Vector2E.exit
  %.sroa.066.075 = phi ptr [ %i.k, %.lr.ph ], [ %i.dg, %_ZN7msdfgenL10boundPointERdS0_S0_S0_NS_7Vector2E.exit ] ; 4 uses
  %i.w = phi <2 x double> [ %i.u, %.lr.ph ], [ %i.df, %_ZN7msdfgenL10boundPointERdS0_S0_S0_NS_7Vector2E.exit ] ; 4 uses
  %i.x = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.066.075) ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call { double, double } %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.x, double noundef 0.000000e+00) ; 2 uses
  %i.ac = extractvalue { double, double } %i.ab, 0 ; 3 uses
  %i.ad = extractvalue { double, double } %i.ab, 1 ; 3 uses
  %i.ae = fmul double %i.ad, %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.ae)
  %sqrt.i.i38 = tail call noundef double @sqrt(double noundef %i.af) #12 ; 2 uses
  %i.ag = fcmp une double %sqrt.i.i38, 0.000000e+00
  %i.ah = fneg double %i.ad
  %i.ai = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1
  %i.ak = insertelement <2 x double> poison, double %sqrt.i.i38, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x double> %i.aj, %i.al
  %i.an = insertelement <2 x i1> poison, i1 %i.ag, i64 0
  %i.ao = shufflevector <2 x i1> %i.an, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ap = select <2 x i1> %i.ao, <2 x double> %i.am, <2 x double> <double 0.000000e+00, double -0.000000e+00> ; 4 uses
  %i.aq = extractelement <2 x double> %i.w, i64 1 ; 2 uses
  %i.ar = extractelement <2 x double> %i.ap, i64 0 ; 2 uses
  %i.as = fmul double %i.aq, %i.ar
  %i.at = extractelement <2 x double> %i.w, i64 0 ; 2 uses
  %i.au = extractelement <2 x double> %i.ap, i64 1 ; 2 uses
  %i.av = tail call noundef double @llvm.fmuladd.f64(double %i.at, double %i.au, double %i.as)
  %i.aw = fmul double %i.av, %i.v
  %i.ax = fcmp ult double %i.aw, 0.000000e+00
  br i1 %i.ax, label %_ZN7msdfgenL10boundPointERdS0_S0_S0_NS_7Vector2E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = fneg double %i.ar
  %i.az = fmul double %i.aq, %i.au
  %i.ba = tail call noundef double @llvm.fmuladd.f64(double %i.at, double %i.ay, double %i.az)
  %i.bb = fsub double 1.000000e+00, %i.ba
  %i.bc = fmul double %i.bb, 5.000000e-01         ; 2 uses
  %i.bd = fcmp ogt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.be = tail call double @sqrt(double noundef %i.bc) #12
  %i.bf = fdiv double 1.000000e+00, %i.be         ; 2 uses
  %i.bg = fcmp olt double %6, %i.bf
  %i.bh = select i1 %i.bg, double %6, double %i.bf
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi double [ %i.bh, %bb.e ], [ %6, %bb.d ]
  %i.bi = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.066.075) ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call { double, double } %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %i.bi, double noundef 0.000000e+00) ; 2 uses
  %i.bn = extractvalue { double, double } %i.bm, 0
  %i.bo = extractvalue { double, double } %i.bm, 1
  %i.bp = fmul double %5, %.0                     ; 2 uses
  %i.bq = fsub <2 x double> %i.w, %i.ap           ; 2 uses
  %i.br = fadd <2 x double> %i.w, %i.ap
  %i.bs = shufflevector <2 x double> %i.bq, <2 x double> %i.br, <2 x i32> <i32 0, i32 3> ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.bs, %i.bs
  %i.bt = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.bu = extractelement <2 x double> %i.bq, i64 0 ; 2 uses
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double %i.bt)
  %sqrt.i.i47 = tail call noundef double @sqrt(double noundef %i.bv) #12 ; 2 uses
  %i.bw = fcmp une double %sqrt.i.i47, 0.000000e+00 ; 2 uses
  %i.bx = insertelement <2 x double> poison, double %sqrt.i.i47, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = fdiv <2 x double> %i.bs, %i.by          ; 2 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 1
  %.sroa.3.1.i48 = select i1 %i.bw, double %i.ca, double 0.000000e+00
  %i.cb = extractelement <2 x double> %i.bz, i64 0
  %.sroa.0.1.i49 = select i1 %i.bw, double %i.cb, double 0.000000e+00
  %i.cc = fmul double %i.bp, %.sroa.0.1.i49
  %i.cd = fmul double %i.bp, %.sroa.3.1.i48
  %i.ce = fadd double %i.bn, %i.cc                ; 4 uses
  %i.cf = fadd double %i.bo, %i.cd                ; 4 uses
  %i.cg = load double, ptr %1, align 8, !tbaa !23
  %i.ch = fcmp olt double %i.ce, %i.cg
  br i1 %i.ch, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double %i.ce, ptr %1, align 8, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ci = load double, ptr %2, align 8, !tbaa !23
  %i.cj = fcmp olt double %i.cf, %i.ci
  br i1 %i.cj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %i.cf, ptr %2, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ck = load double, ptr %3, align 8, !tbaa !23
  %i.cl = fcmp ogt double %i.ce, %i.ck
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store double %i.ce, ptr %3, align 8, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cm = load double, ptr %4, align 8, !tbaa !23
  %i.cn = fcmp ogt double %i.cf, %i.cm
  br i1 %i.cn, label %bb.m, label %_ZN7msdfgenL10boundPointERdS0_S0_S0_NS_7Vector2E.exit

bb.m:                                             ; preds = %bb.l
  store double %i.cf, ptr %4, align 8, !tbaa !23
  br label %_ZN7msdfgenL10boundPointERdS0_S0_S0_NS_7Vector2E.exit

_ZN7msdfgenL10boundPointERdS0_S0_S0_NS_7Vector2E.exit: ; preds = %bb.m, %bb.l, %bb.c
  %i.co = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.066.075) ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !19
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call { double, double } %i.cr(ptr noundef nonnull align 8 dereferenceable(12) %i.co, double noundef 1.000000e+00) ; 2 uses
  %i.ct = extractvalue { double, double } %i.cs, 0 ; 3 uses
  %i.cu = extractvalue { double, double } %i.cs, 1 ; 3 uses
  %i.cv = fmul double %i.cu, %i.cu
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %i.cv)
  %sqrt.i.i56 = tail call noundef double @sqrt(double noundef %i.cw) #12 ; 2 uses
  %i.cx = fcmp une double %sqrt.i.i56, 0.000000e+00
  %i.cy = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cu, i64 1
  %i.da = insertelement <2 x double> poison, double %sqrt.i.i56, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fdiv <2 x double> %i.cz, %i.db
  %i.dd = insertelement <2 x i1> poison, i1 %i.cx, i64 0
  %i.de = shufflevector <2 x i1> %i.dd, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.df = select <2 x i1> %i.de, <2 x double> %i.dc, <2 x double> zeroinitializer
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.066.075, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !16
  %.not = icmp eq ptr %i.dg, %i.dh
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !21

.loopexit:                                        ; preds = %_ZN7msdfgenL10boundPointERdS0_S0_S0_NS_7Vector2E.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZNK7msdfgen7Contour7windingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  switch i64 %i.h, label %bb.e [
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call { double, double } %i.l(ptr noundef nonnull align 8 dereferenceable(12) %i.i, double noundef 0.000000e+00) ; 2 uses
  %i.n = extractvalue { double, double } %i.m, 0  ; 2 uses
  %i.o = extractvalue { double, double } %i.m, 1  ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !15
  %i.q = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call { double, double } %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.q, double noundef f0x3FD5555555555555) ; 2 uses
  %i.v = extractvalue { double, double } %i.u, 0  ; 2 uses
  %i.w = extractvalue { double, double } %i.u, 1  ; 2 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call { double, double } %i.ab(ptr noundef nonnull align 8 dereferenceable(12) %i.y, double noundef f0x3FE5555555555555) ; 2 uses
  %i.ad = extractvalue { double, double } %i.ac, 0 ; 2 uses
  %i.ae = extractvalue { double, double } %i.ac, 1 ; 2 uses
  %i.af = fsub double %i.v, %i.n
  %i.ag = fadd double %i.o, %i.w
  %i.ah = fmul double %i.af, %i.ag
  %i.ai = fadd double %i.ah, 0.000000e+00
  %i.aj = fsub double %i.ad, %i.v
  %i.ak = fadd double %i.w, %i.ae
  %i.al = fmul double %i.aj, %i.ak
  %i.am = fadd double %i.ai, %i.al
  %i.an = fsub double %i.n, %i.ad
  %i.ao = fadd double %i.o, %i.ae
  %i.ap = fmul double %i.an, %i.ao
  %i.aq = fadd double %i.ap, %i.am
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.ar = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call { double, double } %i.au(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, double noundef 0.000000e+00) ; 2 uses
  %i.aw = extractvalue { double, double } %i.av, 0
  %i.ax = extractvalue { double, double } %i.av, 1
  %i.ay = load ptr, ptr %0, align 8, !tbaa !15
  %i.az = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call { double, double } %i.bc(ptr noundef nonnull align 8 dereferenceable(12) %i.az, double noundef 5.000000e-01) ; 2 uses
  %i.be = extractvalue { double, double } %i.bd, 0
  %i.bf = extractvalue { double, double } %i.bd, 1
  %i.bg = load ptr, ptr %0, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call { double, double } %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %i.bi, double noundef 0.000000e+00) ; 2 uses
  %i.bn = extractvalue { double, double } %i.bm, 0
  %i.bo = extractvalue { double, double } %i.bm, 1
  %i.bp = load ptr, ptr %0, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call { double, double } %i.bu(ptr noundef nonnull align 8 dereferenceable(12) %i.br, double noundef 5.000000e-01) ; 2 uses
  %i.bw = extractvalue { double, double } %i.bv, 0
  %i.bx = extractvalue { double, double } %i.bv, 1
  %i.by = insertelement <4 x double> poison, double %i.be, i64 0
  %i.bz = insertelement <4 x double> %i.by, double %i.bn, i64 1
  %i.ca = insertelement <4 x double> %i.bz, double %i.bw, i64 2
  %i.cb = insertelement <4 x double> %i.ca, double %i.aw, i64 3 ; 2 uses
  %i.cc = shufflevector <4 x double> %i.cb, <4 x double> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.cd = fsub <4 x double> %i.cb, %i.cc
  %i.ce = insertelement <4 x double> poison, double %i.ax, i64 0
  %i.cf = insertelement <4 x double> %i.ce, double %i.bf, i64 1
  %i.cg = insertelement <4 x double> %i.cf, double %i.bo, i64 2 ; 2 uses
  %i.ch = shufflevector <4 x double> %i.cg, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ci = insertelement <4 x double> poison, double %i.bx, i64 0
  %i.cj = shufflevector <4 x double> %i.cg, <4 x double> %i.ci, <4 x i32> <i32 1, i32 2, i32 4, i32 4>
  %i.ck = fadd <4 x double> %i.ch, %i.cj
  %i.cl = fmul <4 x double> %i.cd, %i.ck          ; 4 uses
  %i.cm = extractelement <4 x double> %i.cl, i64 0
  %i.cn = fadd double %i.cm, 0.000000e+00
  %i.co = extractelement <4 x double> %i.cl, i64 1
  %i.cp = fadd double %i.cn, %i.co
  %i.cq = extractelement <4 x double> %i.cl, i64 2
  %i.cr = fadd double %i.cp, %i.cq
  %i.cs = extractelement <4 x double> %i.cl, i64 3
  %i.ct = fadd double %i.cs, %i.cr
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.cu = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.cv = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cu) ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call { double, double } %i.cy(ptr noundef nonnull align 8 dereferenceable(12) %i.cv, double noundef 0.000000e+00) ; 2 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !16
  %.not62 = icmp eq ptr %i.da, %i.db
  br i1 %.not62, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.dc = extractvalue { double, double } %i.cz, 1
  %i.dd = extractvalue { double, double } %i.cz, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.066 = phi double [ %i.do, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.sroa.547.065 = phi double [ %i.dk, %.lr.ph ], [ %i.dc, %.lr.ph.preheader ]
  %.sroa.046.064 = phi double [ %i.dj, %.lr.ph ], [ %i.dd, %.lr.ph.preheader ]
  %.sroa.043.063 = phi ptr [ %i.dp, %.lr.ph ], [ %i.da, %.lr.ph.preheader ] ; 2 uses
  %i.de = tail call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.043.063) ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !19
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call { double, double } %i.dh(ptr noundef nonnull align 8 dereferenceable(12) %i.de, double noundef 0.000000e+00) ; 2 uses
  %i.dj = extractvalue { double, double } %i.di, 0 ; 2 uses
  %i.dk = extractvalue { double, double } %i.di, 1 ; 2 uses
  %i.dl = fsub double %i.dj, %.sroa.046.064
  %i.dm = fadd double %.sroa.547.065, %i.dk
  %i.dn = fmul double %i.dl, %i.dm
  %i.do = fadd double %.066, %i.dn                ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.043.063, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !16
  %.not = icmp eq ptr %i.dp, %i.dq
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !24

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.d, %bb.c
  %.1 = phi double [ %i.aq, %bb.c ], [ %i.ct, %bb.d ], [ 0.000000e+00, %bb.e ], [ %i.do, %.lr.ph ] ; 2 uses
  %i.dr = fcmp ogt double %.1, 0.000000e+00
  %i.ds = zext i1 %i.dr to i32
  %i.dt = fcmp olt double %.1, 0.000000e+00
  %.neg.i = sext i1 %i.dt to i32
  %i.du = add nsw i32 %.neg.i, %i.ds
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit
  %.010 = phi i32 [ %i.du, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen7Contour7reverseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = lshr exact i64 %i.f, 3
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #16
  invoke void @__cxa_rethrow() #13
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.aw

bb.o:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #15
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

declare void @_ZN7msdfgen10EdgeHolderC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN7msdfgen10EdgeHolderEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN7msdfgen10EdgeHolderEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !29
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !13
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
  unreachable

_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3                  ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #14 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 4 uses
  %i.w = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !29
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not14.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit49, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.u, %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  invoke void @_ZN7msdfgen10EdgeHolderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.e

_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i46, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #12 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.u, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ], [ %i.u, %bb.e ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #12
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.e
  invoke void @__cxa_rethrow() #13
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #15
  unreachable

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body:                                            ; preds = %bb.f
  %i.ag = extractvalue { ptr, i32 } %i.ad, 0
  %i.ah = tail call ptr @__cxa_begin_catch(ptr %i.ag) #12 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.body, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.v, %.body ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i, !llvm.loop !0

bb.i:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.m

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.t) #16
  invoke void @__cxa_rethrow() #13
          to label %bb.n unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ak

.lr.ph.i.i46:                                     ; preds = %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.al, %.lr.ph.i.i46 ], [ %i.c, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i47) #12
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 8 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit49, label %.lr.ph.i.i46, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit49: ; preds = %.lr.ph.i.i46, %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i50 = icmp eq ptr %i.c, null
  br i1 %.not.i50, label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit51, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit49
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ao) #16
  br label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit51

_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit51: ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit49, %bb.k
  store ptr %i.u, ptr %0, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7msdfgen10EdgeHolderEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit51, %bb.a
  ret void

bb.m:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #15
  unreachable

bb.n:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !17}
!1 = distinct !{!1, !17}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN7msdfgen10EdgeHolderE", !10, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 8}
!14 = !{!12, !11, i64 16}
!15 = !{!12, !11, i64 0}
!16 = !{!11, !11, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"vtable pointer", !5, i64 0}
!19 = !{!18, !18, i64 0}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = !{!"double", !6, i64 0}
!23 = !{!22, !22, i64 0}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = !{!"p1 _ZTSN7msdfgen11EdgeSegmentE", !10, i64 0}
!28 = !{!"_ZTSN7msdfgen10EdgeHolderE", !27, i64 0}
!29 = !{!28, !27, i64 0}
end_hunk_1
