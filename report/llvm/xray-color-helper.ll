Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/xray-color-helper?download=true
inline.NumInlined: 223
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Tuple_impl.0", %"struct.std::_Head_base.3" }
%"struct.std::_Tuple_impl.0" = type { %"struct.std::_Tuple_impl.1", %"struct.std::_Head_base.2" }
%"struct.std::_Tuple_impl.1" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { i8 }
%"struct.std::_Head_base.2" = type { i8 }
%"struct.std::_Head_base.3" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.llvm::raw_string_ostream" = type { %"class.llvm::raw_ostream", ptr }
%"class.llvm::raw_ostream" = type { ptr, i32, ptr, ptr, ptr, i8, i32 }
%"class.llvm::formatv_object" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.12", %"struct.std::array" }
%"class.llvm::formatv_object_base.base" = type <{ %"class.llvm::StringRef", %"class.llvm::ArrayRef.11", i8 }>
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::ArrayRef.11" = type { ptr, i64 }
%"class.std::tuple.12" = type { %"struct.std::_Tuple_impl.13" }
%"struct.std::_Tuple_impl.13" = type { %"struct.std::_Tuple_impl.14", %"struct.std::_Head_base.18" }
%"struct.std::_Tuple_impl.14" = type { %"struct.std::_Tuple_impl.15", %"struct.std::_Head_base.17" }
%"struct.std::_Tuple_impl.15" = type { %"struct.std::_Head_base.16" }
%"struct.std::_Head_base.16" = type { %"class.llvm::support::detail::FormatFunctor" }
%"class.llvm::support::detail::FormatFunctor" = type { ptr }
%"struct.std::_Head_base.17" = type { %"class.llvm::support::detail::FormatFunctor" }
%"struct.std::_Head_base.18" = type { %"class.llvm::support::detail::FormatFunctor" }
%"struct.std::array" = type { [3 x %"class.llvm::function_ref"] }
%"class.llvm::function_ref" = type { ptr, i64 }

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRhEEEEvlS2_S3_ = comdat any

$_ZN4llvm15format_providerIhvE6formatERKhRNS_11raw_ostreamENS_9StringRefE = comdat any

$_ZN4llvm7support6detail15HelperFunctions15consumeHexStyleERNS_9StringRefE = comdat any

$_ZN4llvm9StringRef13consume_frontES0_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [23 x i8] c"#{0:X-2}{1:X-2}{2:X-2}\00", align 1
@_ZL14SequentialMaps = internal constant [3 x [9 x { i8, i8, i8 }]] [[9 x { i8, i8, i8 }] [{ i8, i8, i8 } { i8 -1, i8 -1, i8 -1 }, { i8, i8, i8 } { i8 -16, i8 -16, i8 -16 }, { i8, i8, i8 } { i8 -39, i8 -39, i8 -39 }, { i8, i8, i8 } { i8 -67, i8 -67, i8 -67 }, { i8, i8, i8 } { i8 -106, i8 -106, i8 -106 }, { i8, i8, i8 } { i8 115, i8 115, i8 115 }, { i8, i8, i8 } { i8 82, i8 82, i8 82 }, { i8, i8, i8 } { i8 37, i8 37, i8 37 }, { i8, i8, i8 } zeroinitializer], [9 x { i8, i8, i8 }] [{ i8, i8, i8 } { i8 -20, i8 -9, i8 -1 }, { i8, i8, i8 } { i8 -56, i8 -24, i8 -2 }, { i8, i8, i8 } { i8 -98, i8 -44, i8 -3 }, { i8, i8, i8 } { i8 -124, i8 -69, i8 -3 }, { i8, i8, i8 } { i8 89, i8 -115, i8 -4 }, { i8, i8, i8 } { i8 72, i8 101, i8 -17 }, { i8, i8, i8 } { i8 31, i8 48, i8 -41 }, { i8, i8, i8 } { i8 0, i8 0, i8 -77 }, { i8, i8, i8 } { i8 0, i8 0, i8 127 }], [9 x { i8, i8, i8 }] [{ i8, i8, i8 } { i8 -5, i8 -9, i8 -1 }, { i8, i8, i8 } { i8 -14, i8 -25, i8 -20 }, { i8, i8, i8 } { i8 -26, i8 -47, i8 -48 }, { i8, i8, i8 } { i8 -37, i8 -67, i8 -90 }, { i8, i8, i8 } { i8 -49, i8 -87, i8 116 }, { i8, i8, i8 } { i8 -64, i8 -112, i8 54 }, { i8, i8, i8 } { i8 -80, i8 112, i8 5 }, { i8, i8, i8 } { i8 -115, i8 90, i8 4 }, { i8, i8, i8 } { i8 88, i8 56, i8 2 }]], align 16
@_ZL16SequentialBounds = internal constant [3 x [2 x { i8, i8, i8 }]] [[2 x { i8, i8, i8 }] [{ i8, i8, i8 } { i8 -1, i8 -1, i8 -1 }, { i8, i8, i8 } zeroinitializer], [2 x { i8, i8, i8 }] [{ i8, i8, i8 } { i8 -20, i8 -9, i8 -1 }, { i8, i8, i8 } { i8 0, i8 0, i8 127 }], [2 x { i8, i8, i8 }] [{ i8, i8, i8 } { i8 -5, i8 -9, i8 -1 }, { i8, i8, i8 } { i8 88, i8 56, i8 2 }]], align 16
@_ZL15DivergingCoeffs = internal constant [1 x [11 x { i8, i8, i8 }]] [[11 x { i8, i8, i8 }] [{ i8, i8, i8 } { i8 82, i8 1, i8 -114 }, { i8, i8, i8 } { i8 125, i8 27, i8 -59 }, { i8, i8, i8 } { i8 -82, i8 119, i8 -34 }, { i8, i8, i8 } { i8 -38, i8 -74, i8 -15 }, { i8, i8, i8 } { i8 -17, i8 -32, i8 -3 }, { i8, i8, i8 } { i8 -9, i8 -9, i8 -9 }, { i8, i8, i8 } { i8 -48, i8 -11, i8 -26 }, { i8, i8, i8 } { i8 -122, i8 -31, i8 -72 }, { i8, i8, i8 } { i8 65, i8 -68, i8 127 }, { i8, i8, i8 } { i8 33, i8 -110, i8 77 }, { i8, i8, i8 } { i8 25, i8 100, i8 39 }]], align 16
@_ZL15DivergingBounds = internal constant [1 x [2 x { i8, i8, i8 }]] [[2 x { i8, i8, i8 }] [{ i8, i8, i8 } { i8 0, i8 0, i8 -1 }, { i8, i8, i8 } { i8 0, i8 -1, i8 0 }]], align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8

@_ZN4llvm4xray11ColorHelperC1ENS1_16SequentialSchemeE = unnamed_addr alias void (ptr, i32), ptr @_ZN4llvm4xray11ColorHelperC2ENS1_16SequentialSchemeE
@_ZN4llvm4xray11ColorHelperC1ENS1_15DivergingSchemeE = unnamed_addr alias void (ptr, i32), ptr @_ZN4llvm4xray11ColorHelperC2ENS1_15DivergingSchemeE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm4xray11ColorHelperC2ENS1_16SequentialSchemeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [27 x i8], ptr @_ZL14SequentialMaps, i64 %i.b
  store ptr %i.c, ptr %i.a, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 9, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds [6 x i8], ptr @_ZL16SequentialBounds, i64 %i.b
  store ptr %i.f, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2, ptr %i.g, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm4xray11ColorHelperC2ENS1_15DivergingSchemeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store <2 x double> <double -1.000000e+00, double 1.000000e+00>, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [33 x i8], ptr @_ZL15DivergingCoeffs, i64 %i.b
  store ptr %i.c, ptr %i.a, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 11, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds [6 x i8], ptr @_ZL15DivergingBounds, i64 %i.b
  store ptr %i.f, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2, ptr %i.g, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZNK4llvm4xray11ColorHelper13getColorTupleEd(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::tuple") align 1 captures(none) initializes((0, 3)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, double noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 7 uses
  %i.b = alloca [3 x double], align 16            ; 9 uses
  %i.c = alloca [3 x double], align 16            ; 9 uses
  %i.d = load double, ptr %1, align 8, !tbaa !54  ; 3 uses
  %i.e = fcmp olt double %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 1 dereferenceable(3) %i.g, i64 3, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !55 ; 2 uses
  %i.j = fcmp ogt double %2, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 1 dereferenceable(3) %i.m, i64 3, i1 false)
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15
  %i.q = add i64 %i.p, -1                         ; 2 uses
  %i.r = fsub double %i.i, %i.d
  %i.s = fsub double %2, %i.d                     ; 2 uses
  %i.t = uitofp i64 %i.q to double
  %i.u = fdiv double %i.r, %i.t                   ; 3 uses
  %i.v = fdiv double %i.s, %i.u
  %i.w = tail call double @llvm.floor.f64(double %i.v)
  %i.x = fptoui double %i.w to i64                ; 3 uses
  %i.y = uitofp i64 %i.x to double
  %i.z = fneg double %i.y
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !14  ; 2 uses
  %i.ab = getelementptr inbounds nuw [3 x i8], ptr %i.aa, i64 %i.x ; 2 uses
  %i.ac = add i64 %i.x, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.ac)
  %i.ad = getelementptr inbounds nuw [3 x i8], ptr %i.aa, i64 %.sroa.speculated ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11, !noalias !56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16, !noalias !56
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.z, double %i.u, double %i.s)
  %i.ah = uitofp i8 %i.af to double
  %i.ai = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1
  %i.ak = insertelement <2 x double> <double poison, double 2.550000e+02>, double %i.u, i64 0
  %i.al = fdiv <2 x double> %i.aj, %i.ak          ; 3 uses
  %i.am = extractelement <2 x double> %i.al, i64 1 ; 5 uses
  store double %i.am, ptr %i.c, align 16, !tbaa !9, !noalias !56
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ao = load <2 x i8>, ptr %i.ab, align 1, !tbaa !16, !noalias !56
  %i.ap = uitofp <2 x i8> %i.ao to <2 x double>
  %i.aq = fdiv <2 x double> %i.ap, splat (double 2.550000e+02) ; 2 uses
  %4 = extractelement <2 x double> %i.aq, i64 1   ; 5 uses
  store double %4, ptr %i.an, align 8, !tbaa !9, !noalias !56
  %i.ar = extractelement <2 x double> %i.aq, i64 0 ; 3 uses
  store double %i.ar, ptr %3, align 16, !tbaa !9, !noalias !56
  %i.as = fcmp olt double %4, %i.am               ; 2 uses
  %i.at = fcmp ogt double %4, %i.am               ; 2 uses
  %.1.i = zext i1 %i.at to i32
  %i.au = select i1 %i.as, double %4, double %i.am
  %i.av = fcmp olt double %i.ar, %i.au
  %i.aw = select i1 %i.at, double %4, double %i.am
  %i.ax = fcmp ogt double %i.ar, %i.aw
  %.1.1.i = select i1 %i.ax, i32 2, i32 %.1.i
  %.1.1.fr.i = freeze i32 %.1.1.i                 ; 4 uses
  %i.ay = zext nneg i32 %.1.1.fr.i to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !9, !noalias !56 ; 4 uses
  %i.bb = zext i1 %i.as to i64
  %i.bc = select i1 %i.av, i64 2, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !9, !noalias !56
  %i.bf = fsub double %i.ba, %i.be                ; 3 uses
  %i.bg = fcmp oeq double %i.bf, 0.000000e+00
  br i1 %i.bg, label %_ZL12convertToHSVRKSt5tupleIJhhhEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = add nuw nsw i32 %.1.1.fr.i, 1           ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 3
  %i.bj = select i1 %i.bi, i32 0, i32 %i.bh
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !9, !noalias !56
  %i.bn = add nuw nsw i32 %.1.1.fr.i, 2
  %i.bo = urem i32 %i.bn, 3
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !9, !noalias !56
  %i.bs = fsub double %i.bm, %i.br
  %i.bt = fdiv double %i.bs, %i.bf
  br label %_ZL12convertToHSVRKSt5tupleIJhhhEE.exit

_ZL12convertToHSVRKSt5tupleIJhhhEE.exit:          ; preds = %bb.e, %bb.f
  %i.bu = phi double [ %i.bt, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.bv = uitofp nneg i32 %.1.1.fr.i to double
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bv, double 2.000000e+00, double %i.bu) ; 3 uses
  %i.bx = fcmp olt double %i.bw, 0.000000e+00
  %i.by = fadd nnan double %i.bw, 6.000000e+00
  %.in.i = select i1 %i.bx, double %i.by, double %i.bw
  %i.bz = fmul double %.in.i, 6.000000e+01        ; 4 uses
  %i.ca = fcmp oeq double %i.ba, 0.000000e+00
  %i.cb = fdiv double %i.bf, %i.ba
  %i.cc = select i1 %i.ca, double 0.000000e+00, double %i.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11, !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11, !noalias !57
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !16, !noalias !57
  %i.cf = uitofp i8 %i.ce to double
  %i.cg = fdiv double %i.cf, 2.550000e+02         ; 5 uses
  store double %i.cg, ptr %i.b, align 16, !tbaa !9, !noalias !57
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ci = load <2 x i8>, ptr %i.ad, align 1, !tbaa !16, !noalias !57
  %i.cj = uitofp <2 x i8> %i.ci to <2 x double>
  %i.ck = fdiv <2 x double> %i.cj, splat (double 2.550000e+02) ; 2 uses
  %6 = extractelement <2 x double> %i.ck, i64 1   ; 5 uses
  store double %6, ptr %i.ch, align 8, !tbaa !9, !noalias !57
  %i.cl = extractelement <2 x double> %i.ck, i64 0 ; 3 uses
  store double %i.cl, ptr %5, align 16, !tbaa !9, !noalias !57
  %i.cm = fcmp olt double %6, %i.cg               ; 2 uses
  %i.cn = fcmp ogt double %6, %i.cg               ; 2 uses
  %.1.i15 = zext i1 %i.cn to i32
  %i.co = select i1 %i.cm, double %6, double %i.cg
  %i.cp = fcmp olt double %i.cl, %i.co
  %i.cq = select i1 %i.cn, double %6, double %i.cg
  %i.cr = fcmp ogt double %i.cl, %i.cq
  %.1.1.i16 = select i1 %i.cr, i32 2, i32 %.1.i15
  %.1.1.fr.i17 = freeze i32 %.1.1.i16             ; 4 uses
  %i.cs = zext nneg i32 %.1.1.fr.i17 to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !9, !noalias !57 ; 4 uses
  %i.cv = zext i1 %i.cm to i64
  %i.cw = select i1 %i.cp, i64 2, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !9, !noalias !57
  %i.cz = fsub double %i.cu, %i.cy                ; 3 uses
  %i.da = fcmp oeq double %i.cz, 0.000000e+00
  br i1 %i.da, label %_ZL12convertToHSVRKSt5tupleIJhhhEE.exit19, label %bb.g

bb.g:                                             ; preds = %_ZL12convertToHSVRKSt5tupleIJhhhEE.exit
  %i.db = add nuw nsw i32 %.1.1.fr.i17, 1         ; 2 uses
  %i.dc = icmp eq i32 %i.db, 3
  %i.dd = select i1 %i.dc, i32 0, i32 %i.db
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !9, !noalias !57
  %i.dh = add nuw nsw i32 %.1.1.fr.i17, 2
  %i.di = urem i32 %i.dh, 3
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !9, !noalias !57
  %i.dm = fsub double %i.dg, %i.dl
  %i.dn = fdiv double %i.dm, %i.cz
  br label %_ZL12convertToHSVRKSt5tupleIJhhhEE.exit19

_ZL12convertToHSVRKSt5tupleIJhhhEE.exit19:        ; preds = %_ZL12convertToHSVRKSt5tupleIJhhhEE.exit, %bb.g
  %i.do = phi double [ %i.dn, %bb.g ], [ 0.000000e+00, %_ZL12convertToHSVRKSt5tupleIJhhhEE.exit ]
  %i.dp = uitofp nneg i32 %.1.1.fr.i17 to double
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dp, double 2.000000e+00, double %i.do) ; 3 uses
  %i.dr = fcmp olt double %i.dq, 0.000000e+00
  %i.ds = fadd nnan double %i.dq, 6.000000e+00
  %.in.i18 = select i1 %i.dr, double %i.ds, double %i.dq
  %i.dt = fmul double %.in.i18, 6.000000e+01      ; 4 uses
  %i.du = fcmp oeq double %i.cu, 0.000000e+00
  %i.dv = fdiv double %i.cz, %i.cu
  %i.dw = select i1 %i.du, double 0.000000e+00, double %i.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11, !noalias !57
  %i.dx = fsub double %i.dt, %i.bz                ; 2 uses
  %i.dy = fcmp ogt double %i.bz, %i.dt
  %i.dz = extractelement <2 x double> %i.al, i64 0 ; 2 uses
  br i1 %i.dy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZL12convertToHSVRKSt5tupleIJhhhEE.exit19
  %i.ea = fneg double %i.dx
  %i.eb = fsub double 1.000000e+00, %i.dz
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZL12convertToHSVRKSt5tupleIJhhhEE.exit19
  %.014.i.i = phi double [ %i.dt, %bb.h ], [ %i.bz, %_ZL12convertToHSVRKSt5tupleIJhhhEE.exit19 ] ; 3 uses
  %.013.i.i = phi double [ %i.bz, %bb.h ], [ %i.dt, %_ZL12convertToHSVRKSt5tupleIJhhhEE.exit19 ] ; 2 uses
  %.06.i.i = phi double [ %i.eb, %bb.h ], [ %i.dz, %_ZL12convertToHSVRKSt5tupleIJhhhEE.exit19 ] ; 2 uses
  %.0.i.i = phi double [ %i.ea, %bb.h ], [ %i.dx, %_ZL12convertToHSVRKSt5tupleIJhhhEE.exit19 ]
  %i.ec = fcmp ugt double %.0.i.i, 1.800000e+02
  br i1 %i.ec, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ed = fsub double %.013.i.i, %.014.i.i
  %i.ee = tail call double @llvm.fmuladd.f64(double %.06.i.i, double %i.ed, double %.014.i.i)
  br label %_ZL14interpolateHSVRKSt5tupleIJdddEES2_d.exit

bb.k:                                             ; preds = %bb.i
  %i.ef = fadd double %.014.i.i, 3.600000e+02     ; 2 uses
  %i.eg = fsub double %.013.i.i, %i.ef
  %i.eh = tail call double @llvm.fmuladd.f64(double %.06.i.i, double %i.eg, double %i.ef)
  %i.ei = fadd double %i.eh, 7.200000e+02
  %i.ej = tail call noundef double @fmod(double noundef %i.ei, double noundef 3.600000e+02) #11, !noalias !58
  br label %_ZL14interpolateHSVRKSt5tupleIJdddEES2_d.exit

_ZL14interpolateHSVRKSt5tupleIJdddEES2_d.exit:    ; preds = %bb.j, %bb.k
  %.07.i.i = phi double [ %i.ee, %bb.j ], [ %i.ej, %bb.k ]
  %i.ek = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.cu, i64 1
  %i.em = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.ba, i64 1 ; 2 uses
  %i.eo = fsub <2 x double> %i.el, %i.en
  %i.ep = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.eo, <2 x double> %i.en) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.er = extractelement <2 x double> %i.eq, i64 0
  %i.es = extractelement <2 x double> %i.eq, i64 1 ; 2 uses
  %i.et = fmul double %i.es, %i.er                ; 4 uses
  %i.eu = fdiv double %.07.i.i, 6.000000e+01      ; 2 uses
  %i.ev = tail call double @fmod(double noundef %i.eu, double noundef 2.000000e+00) #11, !noalias !59
  %i.ew = fadd double %i.ev, -1.000000e+00
  %i.ex = tail call noundef double @llvm.fabs.f64(double %i.ew)
  %i.ey = fsub double 1.000000e+00, %i.ex
  %i.ez = fmul double %i.et, %i.ey                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11, !noalias !59
  %i.fa = fptosi double %i.eu to i32              ; 3 uses
  %i.fb = and i32 %i.fa, 1
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZL14interpolateHSVRKSt5tupleIJdddEES2_d.exit
  %i.fd = ashr exact i32 %i.fa, 1
  br label %_ZL12convertToRGBRKSt5tupleIJdddEE.exit

bb.m:                                             ; preds = %_ZL14interpolateHSVRKSt5tupleIJdddEES2_d.exit
  %i.fe = sdiv i32 %i.fa, 2
  br label %_ZL12convertToRGBRKSt5tupleIJdddEE.exit

_ZL12convertToRGBRKSt5tupleIJdddEE.exit:          ; preds = %bb.l, %bb.m
  %.sink40.i = phi i32 [ %i.fe, %bb.m ], [ %i.fd, %bb.l ] ; 3 uses
  %.sink36.i = phi double [ %i.ez, %bb.m ], [ %i.et, %bb.l ]
  %.sink30.i = phi double [ %i.et, %bb.m ], [ %i.ez, %bb.l ]
  %i.ff = srem i32 %.sink40.i, 3
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fg
  store double %.sink36.i, ptr %i.fh, align 8, !tbaa !9, !noalias !59
  %i.fi = add nsw i32 %.sink40.i, 1
  %i.fj = srem i32 %i.fi, 3
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fk
  store double %.sink30.i, ptr %i.fl, align 8, !tbaa !9, !noalias !59
  %i.fm = add nsw i32 %.sink40.i, 2
  %i.fn = srem i32 %i.fm, 3
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fo
  store double 0.000000e+00, ptr %i.fp, align 8, !tbaa !9, !noalias !59
  %i.fq = fsub double %i.es, %i.et                ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fs = load double, ptr %i.fr, align 16, !tbaa !9, !noalias !59
  %i.ft = fadd double %i.fq, %i.fs                ; 2 uses
  %i.fu = load <2 x double>, ptr %i.a, align 16, !tbaa !9, !noalias !59
  %i.fv = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = fadd <2 x double> %i.fw, %i.fu          ; 2 uses
  %i.fy = fcmp olt <2 x double> %i.fx, zeroinitializer
  %i.fz = select <2 x i1> %i.fy, <2 x double> zeroinitializer, <2 x double> %i.fx ; 2 uses
  %i.ga = fcmp ogt <2 x double> %i.fz, splat (double 1.000000e+00)
  %i.gb = select <2 x i1> %i.ga, <2 x double> splat (double 1.000000e+00), <2 x double> %i.fz
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> splat (double 2.550000e+02), <2 x double> splat (double 5.000000e-01)) ; 2 uses
  %i.gd = extractelement <2 x double> %i.gc, i64 0
  %i.ge = fptoui double %i.gd to i8
  %i.gf = extractelement <2 x double> %i.gc, i64 1
  %i.gg = fptoui double %i.gf to i8
  %i.gh = fcmp olt double %i.ft, 0.000000e+00
  %i.gi = select i1 %i.gh, double 0.000000e+00, double %i.ft ; 2 uses
  %i.gj = fcmp ogt double %i.gi, 1.000000e+00
  %.sroa.speculated.i25.i = select i1 %i.gj, double 1.000000e+00, double %i.gi
  %i.gk = tail call double @llvm.fmuladd.f64(double %.sroa.speculated.i25.i, double 2.550000e+02, double 5.000000e-01)
  %i.gl = fptoui double %i.gk to i8
  store i8 %i.gl, ptr %0, align 1, !tbaa !61, !alias.scope !62
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.gg, ptr %i.gm, align 1, !tbaa !64, !alias.scope !62
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ge, ptr %i.gn, align 1, !tbaa !66, !alias.scope !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11, !noalias !59
  br label %bb.n

bb.n:                                             ; preds = %_ZL12convertToRGBRKSt5tupleIJdddEE.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4xray11ColorHelper14getColorStringB5cxx11ESt5tupleIJhhhEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef align 1 dead_on_return dereferenceable(3) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %3 = alloca %"class.llvm::formatv_object", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store ptr @.str, ptr %3, align 8, !tbaa !18, !alias.scope !75
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 22, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !19, !alias.scope !75
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !21, !alias.scope !75
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !19, !alias.scope !75
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.h, align 8, !tbaa !26, !alias.scope !75
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i64 %i.e, ptr %i.i, align 8, !tbaa !18, !alias.scope !75
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i64 %i.d, ptr %i.j, align 8, !tbaa !18, !alias.scope !75
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store i64 %i.c, ptr %i.k, align 8, !tbaa !18, !alias.scope !75
end_hunk_0
