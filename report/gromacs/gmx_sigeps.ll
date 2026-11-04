Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_sigeps?download=true
inline.NumInlined: 141
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.t_pargs = type { ptr, i8, i32, %union.anon, ptr }
%union.anon = type { ptr }
%struct.t_filenm = type { i32, ptr, ptr, i64, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::array" = type { [2 x %"class.std::__cxx11::basic_string"] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.3 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.3 = type { i64, [8 x i8] }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.5" }
%"struct.std::_Head_base.5" = type { ptr }

$_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev = comdat any

$_ZN8t_filenmD2Ev = comdat any

@.str = private unnamed_addr constant [76 x i8] c"[THISMODULE] is a simple utility that converts C6/C12 or C6/Cn combinations\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"to [GRK]sigma[grk] and [GRK]epsilon[grk], or vice versa. It can also plot the potential\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"in  file. In addition, it makes an approximation of a Buckingham potential\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"to a Lennard-Jones potential.\00", align 1
@__const._Z10gmx_sigepsiPPc.desc = private unnamed_addr constant [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], align 16
@_ZZ10gmx_sigepsiPPcE2c6 = internal global float 1.000000e-03, align 4
@_ZZ10gmx_sigepsiPPcE2cn = internal global float f0x358637BD, align 4
@_ZZ10gmx_sigepsiPPcE2qi = internal global float 0.000000e+00, align 4
@_ZZ10gmx_sigepsiPPcE2qj = internal global float 0.000000e+00, align 4
@_ZZ10gmx_sigepsiPPcE3sig = internal global float 3.000000e-01, align 4
@_ZZ10gmx_sigepsiPPcE3eps = internal global float 1.000000e+00, align 4
@_ZZ10gmx_sigepsiPPcE6sigfac = internal global float f0x3F333333, align 4
@_ZZ10gmx_sigepsiPPcE3Abh = internal global float 1.000000e+05, align 4
@_ZZ10gmx_sigepsiPPcE3Bbh = internal global float 3.200000e+01, align 4
@_ZZ10gmx_sigepsiPPcE3Cbh = internal global float 1.000000e-03, align 4
@_ZZ10gmx_sigepsiPPcE4npow = internal global i32 12, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"-c6\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"C6\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-cn\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Constant for repulsion\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"-pow\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Power of the repulsion term\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"-sig\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"[GRK]sigma[grk]\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"-eps\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"[GRK]epsilon[grk]\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Buckingham A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Buckingham B\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Buckingham C\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"-qi\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"qi\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"-qj\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"qj\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"-sigfac\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"Factor in front of [GRK]sigma[grk] for starting the plot\00", align 1
@__const._Z10gmx_sigepsiPPc.pa = private unnamed_addr constant [11 x %struct.t_pargs] [%struct.t_pargs { ptr @.str.4, i8 0, i32 2, %union.anon { ptr @_ZZ10gmx_sigepsiPPcE2c6 }, ptr @.str.5 }, %struct.t_pargs { ptr @.str.6, i8 0, i32 2, %union.anon { ptr @_ZZ10gmx_sigepsiPPcE2cn }, ptr @.str.7 }, %struct.t_pargs { ptr @.str.8, i8 0, i32 0, %union.anon { ptr @_ZZ10gmx_sigepsiPPcE4npow }, ptr @.str.9 }, %struct.t_pargs { ptr @.str.10, i8 0, i32 2, %union.anon { ptr @_ZZ10gmx_sigepsiPPcE3sig }, ptr @.str.11 }, %struct.t_pargs { ptr @.str.12, i8 0, i32 2, %union.anon { ptr @_ZZ10gmx_sigepsiPPcE3eps }, ptr @.str.13 }, %struct.t_pargs { ptr @.str.14, i8 0, i32 2, %union.anon { ptr @_ZZ10gmx_sigepsiPPcE3Abh }, ptr @.str.15 }, %struct.t_pargs { ptr @.str.16, i8 0, i32 2, %union.anon { ptr @_ZZ10gmx_sigepsiPPcE3Bbh }, ptr @.str.17 }, %struct.t_pargs { ptr @.str.18, i8 0, i32 2, %union.anon { ptr @_ZZ10gmx_sigepsiPPcE3Cbh }, ptr @.str.19 }, %struct.t_pargs { ptr @.str.20, i8 0, i32 2, %union.anon { ptr @_ZZ10gmx_sigepsiPPcE2qi }, ptr @.str.21 }, %struct.t_pargs { ptr @.str.22, i8 0, i32 2, %union.anon { ptr @_ZZ10gmx_sigepsiPPcE2qj }, ptr @.str.23 }, %struct.t_pargs { ptr @.str.24, i8 0, i32 2, %union.anon { ptr @_ZZ10gmx_sigepsiPPcE6sigfac }, ptr @.str.25 }], align 16
@.str.26 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"potje\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Lennard-Jones\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"Buckingham\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"c6    = %12.5e, c%d    = %12.5e\0A\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"sigma = %12.5f, epsilon = %12.5f\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"Van der Waals minimum at %g, V = %g\0A\0A\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"Fit of Lennard Jones (%d-6) to Buckingham:\0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"A = %g, B = %g, C = %g\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"Potential\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"r (nm)\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"E (kJ/mol)\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"%10g  %10g  %10g\0A\00", align 1
@.str.39 = private unnamed_addr constant [69 x i8] c"Van der Waals + Coulomb minimum at r = %g (nm). Value = %g (kJ/mol)\0A\00", align 1

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z10gmx_sigepsiPPc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca [4 x ptr], align 16               ; 5 uses
  %2 = alloca [11 x %struct.t_pargs], align 16    ; 13 uses
  %3 = alloca [1 x %struct.t_filenm], align 16    ; 15 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %"struct.std::array", align 8       ; 15 uses
  %5 = alloca [2 x float], align 4                ; 6 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) @__const._Z10gmx_sigepsiPPc.desc, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %2, ptr noundef nonnull align 16 dereferenceable(352) @__const._Z10gmx_sigepsiPPc.pa, i64 352, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i32 21, ptr %3, align 16, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.26, ptr %i.e, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.27, ptr %i.f, align 16, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 4, ptr %i.g, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.i, ptr noundef nonnull align 1 dereferenceable(13) @.str.28, i64 13, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 13, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 29
  store i8 0, ptr %i.k, align 1, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.m, ptr noundef nonnull align 1 dereferenceable(10) @.str.29, i64 10, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 10, ptr %i.n, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 58
  store i8 0, ptr %i.o, align 2, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.p = invoke noundef zeroext i1 @_Z17parse_common_argsPiPPcmiP8t_filenmiP7t_pargsiPPKciS8_PP16gmx_output_env_t(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef 32, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 11, ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull %i.b, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.c)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  br i1 %i.p, label %bb.c, label %bb.am

bb.b:                                             ; preds = %bb.al, %bb.ak, %.loopexit, %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %bb.s, %bb.q, %bb.o, %bb.l, %bb.j, %bb.g, %bb.e, %bb.c, %._crit_edge.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  %i.r = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.14, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  br i1 %i.r, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.16, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.18, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.g
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.d, %bb.f
  %i.u = load float, ptr @_ZZ10gmx_sigepsiPPcE3Cbh, align 4, !tbaa !39 ; 2 uses
  store float %i.u, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !39
  %i.v = load float, ptr @_ZZ10gmx_sigepsiPPcE3Bbh, align 4, !tbaa !39
  %i.w = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !29 ; 2 uses
  %i.x = sitofp i32 %i.w to float
  %i.y = fdiv float %i.x, %i.v
  %i.z = insertelement <2 x i32> poison, i32 %i.w, i64 0
  %i.aa = shufflevector <2 x i32> %i.z, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ab = add nsw <2 x i32> %i.aa, <i32 0, i32 -6>
  %i.ac = fpext float %i.y to double
  %i.ad = sitofp <2 x i32> %i.ab to <2 x double>  ; 3 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 1
  %i.af = call noundef double @pow(double noundef %i.ac, double noundef %i.ae) #12
  %i.ag = fdiv <2 x double> <double 6.000000e+00, double 1.000000e+00>, %i.ad ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = fmul double %i.ah, %i.af
  %i.aj = extractelement <2 x double> %i.ag, i64 1
  %i.ak = call double @pow(double noundef %i.ai, double noundef %i.aj) #12
  %i.al = fptrunc double %i.ak to float           ; 5 uses
  store float %i.al, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !39
  %i.am = fmul float %i.al, %i.al
  %i.an = fmul float %i.am, %i.al                 ; 2 uses
  %i.ao = fmul float %i.an, %i.an
  %i.ap = fmul float %i.ao, 4.000000e+00
  %i.aq = fdiv float %i.u, %i.ap                  ; 2 uses
  store float %i.aq, ptr @_ZZ10gmx_sigepsiPPcE3eps, align 4, !tbaa !39
  %i.ar = fmul float %i.aq, 4.000000e+00
  %i.as = fpext float %i.ar to double
  %i.at = fpext float %i.al to double
  %i.au = extractelement <2 x double> %i.ad, i64 0
  %i.av = call noundef double @pow(double noundef %i.at, double noundef %i.au) #12
  %i.aw = fmul double %i.av, %i.as
  %i.ax = fptrunc double %i.aw to float
  store float %i.ax, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !39
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.ay = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.10, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  br i1 %i.ay, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.12, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.m unwind label %bb.b

bb.m:                                             ; preds = %bb.l
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.m
  %i.ba = load float, ptr @_ZZ10gmx_sigepsiPPcE3eps, align 4, !tbaa !39
  %i.bb = load float, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !39 ; 4 uses
  %i.bc = fmul float %i.bb, %i.bb
  %i.bd = fmul float %i.bb, %i.bc                 ; 2 uses
  %i.be = fmul float %i.bd, %i.bd
  %i.bf = fmul float %i.ba, 4.000000e+00          ; 2 uses
  %i.bg = fmul float %i.bf, %i.be                 ; 2 uses
  store float %i.bg, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !39
  %i.bh = fpext float %i.bf to double
  %i.bi = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !29 ; 2 uses
  %i.bj = fpext float %i.bb to double
  %i.bk = sitofp i32 %i.bi to double
  %i.bl = call noundef double @pow(double noundef %i.bj, double noundef %i.bk) #12
  %i.bm = fmul double %i.bl, %i.bh
  %i.bn = fptrunc double %i.bm to float           ; 2 uses
  store float %i.bn, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !39
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  %i.bo = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.4, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.p unwind label %bb.b

bb.p:                                             ; preds = %bb.o
  br i1 %i.bo, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.6, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.r unwind label %bb.b

bb.r:                                             ; preds = %bb.q
  br i1 %i.bp, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.8, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.t unwind label %bb.b

bb.t:                                             ; preds = %bb.s
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.p, %bb.r, %bb.t
  %i.br = load float, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !39 ; 2 uses
  %i.bs = load float, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !39 ; 3 uses
  %i.bt = fdiv float %i.br, %i.bs
  %i.bu = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !29 ; 2 uses
  %i.bv = add nsw i32 %i.bu, -6
  %i.bw = sitofp i32 %i.bv to double
  %i.bx = fdiv double 1.000000e+00, %i.bw
  %i.by = fptrunc double %i.bx to float
  %i.bz = call noundef float @powf(float noundef %i.bt, float noundef %i.by) #12 ; 4 uses
  store float %i.bz, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !39
  %i.ca = fmul float %i.bz, %i.bz
  %i.cb = fmul float %i.bz, %i.ca                 ; 2 uses
  %i.cc = fmul float %i.cb, %i.cb
  %i.cd = fpext float %i.bs to double
  %i.ce = fmul double %i.cd, 2.500000e-01
  %i.cf = fpext float %i.cc to double
  %i.cg = fdiv double %i.ce, %i.cf
  %i.ch = fptrunc double %i.cg to float
  store float %i.ch, ptr @_ZZ10gmx_sigepsiPPcE3eps, align 4, !tbaa !39
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store float 0.000000e+00, ptr @_ZZ10gmx_sigepsiPPcE3eps, align 4, !tbaa !39
  store float 0.000000e+00, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !39
  %.pre = load float, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !39
  %.pre98 = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !29
  %.pre99 = load float, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !39
  br label %bb.w

bb.w:                                             ; preds = %bb.n, %bb.v, %bb.u
  %i.ci = phi float [ %i.bn, %bb.n ], [ %.pre99, %bb.v ], [ %i.br, %bb.u ]
  %i.cj = phi i32 [ %i.bi, %bb.n ], [ %.pre98, %bb.v ], [ %i.bu, %bb.u ]
  %i.ck = phi float [ %i.bg, %bb.n ], [ %.pre, %bb.v ], [ %i.bs, %bb.u ]
  %i.cl = fpext float %i.ck to double
  %i.cm = fpext float %i.ci to double
  %i.cn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, double noundef %i.cl, i32 noundef %i.cj, double noundef %i.cm) ; 0 uses
  %i.co = load float, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !39
  %i.cp = fpext float %i.co to double
  %i.cq = load float, ptr @_ZZ10gmx_sigepsiPPcE3eps, align 4, !tbaa !39
  %i.cr = fpext float %i.cq to double
  %i.cs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %i.cp, double noundef %i.cr) ; 0 uses
  %i.ct = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !29 ; 3 uses
  %i.cu = sitofp i32 %i.ct to double
  %i.cv = fdiv nnan double %i.cu, 6.000000e+00
  %i.cw = load float, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !39
  %i.cx = add nsw i32 %i.ct, -6
  %i.cy = fpext float %i.cw to double
  %i.cz = sitofp i32 %i.cx to double              ; 2 uses
  %i.da = call noundef double @pow(double noundef %i.cy, double noundef %i.cz) #12
  %i.db = fmul double %i.cv, %i.da
  %i.dc = fdiv double 1.000000e+00, %i.cz
  %i.dd = call double @pow(double noundef %i.db, double noundef %i.dc) #12
  %i.de = fptrunc double %i.dd to float           ; 6 uses
  %i.df = load float, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !39
  %i.dg = load float, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !39
  %i.dh = fpext float %i.dg to double
  %i.di = sub nsw i32 0, %i.ct
  %i.dj = fpext float %i.de to double             ; 3 uses
  %i.dk = sitofp i32 %i.di to double
  %i.dl = call noundef double @pow(double noundef %i.dj, double noundef %i.dk) #12
  %i.dm = fmul float %i.de, %i.de
  %i.dn = fmul float %i.dm, %i.de                 ; 2 uses
  %i.do = fmul float %i.dn, %i.dn
  %i.dp = fdiv float %i.df, %i.do
  %i.dq = fpext float %i.dp to double
  %i.dr = fneg double %i.dq
  %i.ds = call double @llvm.fmuladd.f64(double %i.dh, double %i.dl, double %i.dr)
  %i.dt = fdiv double 0.000000e+00, %i.dj
  %i.du = fadd double %i.dt, %i.ds
  %i.dv = fptrunc double %i.du to float
  %i.dw = fpext float %i.dv to double
  %i.dx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, double noundef %i.dj, double noundef %i.dw) ; 0 uses
  %i.dy = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !29
  %i.dz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %i.dy) ; 0 uses
  %i.ea = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !29
  %i.eb = sitofp i32 %i.ea to float               ; 3 uses
  %i.ec = fdiv float %i.eb, %i.de                 ; 2 uses
  store float %i.ec, ptr @_ZZ10gmx_sigepsiPPcE3Bbh, align 4, !tbaa !39
  %i.ed = load float, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !39 ; 2 uses
  store float %i.ed, ptr @_ZZ10gmx_sigepsiPPcE3Cbh, align 4, !tbaa !39
  %i.ee = load float, ptr @_ZZ10gmx_sigepsiPPcE3eps, align 4, !tbaa !39
  %i.ef = fmul float %i.ee, 4.000000e+00
  %i.eg = load float, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !39
  %i.eh = fdiv float %i.eg, %i.de
  %i.ei = call noundef float @powf(float noundef %i.eh, float noundef %i.eb) #12
  %i.ej = fmul float %i.ef, %i.ei
  %i.ek = call noundef float @expf(float noundef %i.eb) #12
  %i.el = fmul float %i.ej, %i.ek                 ; 2 uses
  store float %i.el, ptr @_ZZ10gmx_sigepsiPPcE3Abh, align 4, !tbaa !39
  %i.em = fpext float %i.el to double
  %i.en = fpext float %i.ec to double
  %i.eo = fpext float %i.ed to double
  %i.ep = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, double noundef %i.em, double noundef %i.en, double noundef %i.eo) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.i
  %i.eq = load float, ptr @_ZZ10gmx_sigepsiPPcE2qi, align 4, !tbaa !39
  %i.er = load float, ptr @_ZZ10gmx_sigepsiPPcE2qj, align 4, !tbaa !39
  %i.es = fmul float %i.eq, %i.er                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.et = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 21, i32 noundef 1, ptr noundef nonnull %3)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  store ptr %i.et, ptr %i.d, align 8, !tbaa !20
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext 2)
          to label %._crit_edge.i.i66 unwind label %bb.ad

._crit_edge.i.i66:                                ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.eu, ptr %7, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.eu, ptr noundef nonnull align 1 dereferenceable(6) @.str.36, i64 6, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 6, ptr %i.ev, align 8, !tbaa !18
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i8 0, ptr %i.ew, align 2, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ex, ptr %8, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ex, ptr noundef nonnull align 1 dereferenceable(10) @.str.37, i64 10, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 10, ptr %i.ey, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 26
  store i8 0, ptr %i.ez, align 2, !tbaa !19
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.fb = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.fa)
          to label %bb.z unwind label %bb.ae      ; 4 uses

bb.z:                                             ; preds = %._crit_edge.i.i66
  %i.fc = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ex
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.z
  %i.fe = load i64, ptr %i.ex, align 8, !tbaa !19
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.fg = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.eu
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.fi = load i64, ptr %i.eu, align 8, !tbaa !19
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull %i.fl) #12
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.fm = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !19
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #13
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fs = load ptr, ptr %i.c, align 8, !tbaa !41
  invoke void @_Z10xvgrLegendP8_IO_FILEN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK16gmx_output_env_t(ptr noundef %i.fb, ptr nonnull %4, ptr nonnull %i.fr, ptr noundef %i.fs)
          to label %bb.ab unwind label %bb.b

bb.ab:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.ft = load float, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !39 ; 2 uses
  %i.fu = fcmp oeq float %i.ft, 0.000000e+00
  br i1 %i.fu, label %bb.ac, label %.peel.next

bb.ac:                                            ; preds = %bb.ab
  store float 2.500000e-01, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !39
  br label %.peel.next

bb.ad:                                            ; preds = %bb.y, %bb.x
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i66
  %i.fw = landingpad { ptr, i32 }
          cleanup
  %i.fx = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.ex
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.ae
  %i.fz = load i64, ptr %i.ex, align 8, !tbaa !19
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.gb = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.eu
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.gd = load i64, ptr %i.eu, align 8, !tbaa !19
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #12
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.ad
  %.pn55.pn.pn = phi { ptr, i32 } [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.fv, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.an

.peel.next:                                       ; preds = %bb.ac, %bb.ab
  %i.gf = phi float [ 2.500000e-01, %bb.ac ], [ %i.ft, %bb.ab ] ; 2 uses
  %i.gg = fpext float %i.es to double
  %i.gh = fmul double %i.gg, f0x40615DEF44DEAD3D  ; 2 uses
  %i.gi = fcmp une float %i.es, 0.000000e+00
  %i.gj = load float, ptr @_ZZ10gmx_sigepsiPPcE6sigfac, align 4, !tbaa !39
  %i.gk = fmul float %i.gj, %i.gf
  %i.gl = fpext float %i.gk to double
  %i.gm = fmul float %i.gf, 0.000000e+00
  %i.gn = fpext float %i.gm to double
  %i.go = call double @llvm.fmuladd.f64(double %i.gn, double 2.000000e-02, double %i.gl)
  %i.gp = fptrunc double %i.go to float           ; 8 uses
  %i.gq = load float, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !39 ; 2 uses
  %i.gr = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !29 ; 3 uses
  %i.gs = sitofp i32 %i.gr to float
  %i.gt = fmul float %i.gq, %i.gs
  %i.gu = xor i32 %i.gr, -1
  %i.gv = sitofp i32 %i.gu to double
  %i.gw = fmul float %i.gp, %i.gp                 ; 2 uses
  %i.gx = fmul float %i.gw, %i.gp                 ; 2 uses
  %i.gy = fmul float %i.gx, %i.gx                 ; 3 uses
  %i.gz = fmul float %i.gy, %i.gp
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ha = sub nsw i32 0, %i.gr
  %i.hb = sitofp i32 %i.ha to double
  %i.hc = fpext float %i.gp to double             ; 3 uses
  %i.hd = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.he = insertelement <2 x float> %i.hd, float %i.gp, i64 1
  %i.hf = fpext <2 x float> %i.he to <2 x double>
  %i.hg = call noundef double @pow(double noundef %i.hc, double noundef %i.gv) #12
  %i.hh = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hj = fdiv <2 x double> %i.hi, %i.hf
  %i.hk = call noundef double @pow(double noundef %i.hc, double noundef %i.hb) #12
  %i.hl = load float, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !39
  %i.hm = insertelement <2 x float> poison, float %i.hl, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = fmul <2 x float> %i.hn, <float 6.000000e+00, float 1.000000e+00>
  %i.hp = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.hq = insertelement <2 x float> %i.hp, float %i.gq, i64 1
  %i.hr = fpext <2 x float> %i.hq to <2 x double>
  %i.hs = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.ht = insertelement <2 x float> %i.hs, float %i.gy, i64 1
  %i.hu = fdiv <2 x float> %i.ho, %i.ht
  %i.hv = fpext <2 x float> %i.hu to <2 x double>
  %i.hw = fneg <2 x double> %i.hv
  %i.hx = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %i.hk, i64 1
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.hy, <2 x double> %i.hw)
  %i.ia = fadd <2 x double> %i.hj, %i.hz
  %i.ib = fptrunc <2 x double> %i.ia to <2 x float> ; 2 uses
  %i.ic = extractelement <2 x float> %i.ib, i64 0
  %i.id = fneg float %i.ic
  store float %i.id, ptr %9, align 4, !tbaa !39
  %i.ie = load float, ptr @_ZZ10gmx_sigepsiPPcE3Abh, align 4, !tbaa !39
  %i.if = load float, ptr @_ZZ10gmx_sigepsiPPcE3Bbh, align 4, !tbaa !39
  %i.ig = load float, ptr @_ZZ10gmx_sigepsiPPcE3Cbh, align 4, !tbaa !39
  %i.ih = fneg float %i.if
  %i.ii = fmul float %i.gp, %i.ih
  %i.ij = call noundef float @expf(float noundef %i.ii) #12
  %i.ik = fneg float %i.ig
  %i.il = fdiv float %i.ik, %i.gy
  %i.im = call noundef float @llvm.fmuladd.f32(float %i.ie, float %i.ij, float %i.il)
  %i.in = extractelement <2 x float> %i.ib, i64 1
  %i.io = fpext float %i.in to double
  %i.ip = fpext float %i.im to double
  %i.iq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fb, ptr noundef nonnull @.str.38, double noundef %i.hc, double noundef %i.io, double noundef %i.ip) #12 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.peel.next, %bb.aj
  %.096 = phi i32 [ 1, %.peel.next ], [ %i.jk, %bb.aj ] ; 2 uses
  %.04295 = phi float [ %i.gp, %.peel.next ], [ %i.iz, %bb.aj ] ; 2 uses
  %.04394 = phi i32 [ 1, %.peel.next ], [ %i.mc, %bb.aj ] ; 2 uses
  %i.ir = load float, ptr @_ZZ10gmx_sigepsiPPcE6sigfac, align 4, !tbaa !39
  %i.is = load float, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !39 ; 2 uses
  %i.it = fmul float %i.ir, %i.is
  %i.iu = fpext float %i.it to double
  %i.iv = uitofp nneg i32 %.04394 to float
  %i.iw = fmul float %i.is, %i.iv
  %i.ix = fpext float %i.iw to double
  %i.iy = call double @llvm.fmuladd.f64(double %i.ix, double 2.000000e-02, double %i.iu)
  %i.iz = fptrunc double %i.iy to float           ; 9 uses
  %i.ja = load float, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !39 ; 2 uses
  %i.jb = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !29 ; 3 uses
  %i.jc = sitofp i32 %i.jb to float
  %i.jd = fmul float %i.ja, %i.jc
  %i.je = xor i32 %i.jb, -1
  %i.jf = sitofp i32 %i.je to double
  %i.jg = fmul float %i.iz, %i.iz                 ; 2 uses
  %i.jh = fmul float %i.jg, %i.iz                 ; 2 uses
  %i.ji = fmul float %i.jh, %i.jh                 ; 3 uses
  %i.jj = fmul float %i.ji, %i.iz
  %i.jk = xor i32 %.096, 1                        ; 2 uses
  %10 = zext nneg i32 %i.jk to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %10
  %i.jl = sub nsw i32 0, %i.jb
  %i.jm = sitofp i32 %i.jl to double
  %i.jn = load float, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !39
  %i.jo = insertelement <2 x float> poison, float %i.jn, i64 0
  %i.jp = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jq = fmul <2 x float> %i.jp, <float 6.000000e+00, float 1.000000e+00>
  %i.jr = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.js = insertelement <2 x float> %i.jr, float %i.ji, i64 1
  %i.jt = fdiv <2 x float> %i.jq, %i.js
  %i.ju = fpext <2 x float> %i.jt to <2 x double>
  %i.jv = fneg <2 x double> %i.ju
  %i.jw = fpext float %i.iz to double             ; 3 uses
  %i.jx = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.jy = insertelement <2 x float> %i.jx, float %i.iz, i64 1
  %i.jz = fpext <2 x float> %i.jy to <2 x double>
  %i.ka = call noundef double @pow(double noundef %i.jw, double noundef %i.jf) #12
  %i.kb = fdiv <2 x double> %i.hi, %i.jz
  %i.kc = call noundef double @pow(double noundef %i.jw, double noundef %i.jm) #12
  %i.kd = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.ke = insertelement <2 x float> %i.kd, float %i.ja, i64 1
  %i.kf = fpext <2 x float> %i.ke to <2 x double>
  %i.kg = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.kh = insertelement <2 x double> %i.kg, double %i.kc, i64 1
  %i.ki = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.kh, <2 x double> %i.jv)
  %i.kj = fadd <2 x double> %i.kb, %i.ki          ; 2 uses
  %i.kk = extractelement <2 x double> %i.kj, i64 0
  %i.kl = fptrunc double %i.kk to float           ; 2 uses
  %i.km = fneg float %i.kl                        ; 2 uses
  store float %i.km, ptr %11, align 4, !tbaa !39
  %i.kn = extractelement <2 x double> %i.kj, i64 1
  %i.ko = fptrunc double %i.kn to float
  %i.kp = load float, ptr @_ZZ10gmx_sigepsiPPcE3Abh, align 4, !tbaa !39
  %i.kq = load float, ptr @_ZZ10gmx_sigepsiPPcE3Bbh, align 4, !tbaa !39
  %i.kr = load float, ptr @_ZZ10gmx_sigepsiPPcE3Cbh, align 4, !tbaa !39
  %i.ks = fneg float %i.kq
  %i.kt = fmul float %i.iz, %i.ks
  %i.ku = call noundef float @expf(float noundef %i.kt) #12
  %i.kv = fneg float %i.kr
  %i.kw = fdiv float %i.kv, %i.ji
  %i.kx = call noundef float @llvm.fmuladd.f32(float %i.kp, float %i.ku, float %i.kw)
  %i.ky = fpext float %i.ko to double
  %i.kz = fpext float %i.kx to double
  %i.la = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fb, ptr noundef nonnull @.str.38, double noundef %i.jw, double noundef %i.ky, double noundef %i.kz) #12 ; 0 uses
  br i1 %i.gi, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %12 = zext nneg i32 %.096 to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !39   ; 3 uses
  %i.lb = fmul float %14, %i.km
  %i.lc = fcmp olt float %i.lb, 0.000000e+00
  br i1 %i.lc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ld = fsub float %i.iz, %.04295
  %i.le = fmul float %i.ld, %14
  %i.lf = fadd float %14, %i.kl
  %i.lg = fdiv float %i.le, %i.lf
  %i.lh = fadd float %.04295, %i.lg               ; 4 uses
  %i.li = load float, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !39
  %i.lj = load float, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !39
  %i.lk = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !29
  %i.ll = fpext float %i.lj to double
  %i.lm = sub nsw i32 0, %i.lk
  %i.ln = fpext float %i.lh to double             ; 3 uses
  %i.lo = sitofp i32 %i.lm to double
  %i.lp = call noundef double @pow(double noundef %i.ln, double noundef %i.lo) #12
  %i.lq = fmul float %i.lh, %i.lh
  %i.lr = fmul float %i.lh, %i.lq                 ; 2 uses
  %i.ls = fmul float %i.lr, %i.lr
  %i.lt = fdiv float %i.li, %i.ls
  %i.lu = fpext float %i.lt to double
  %i.lv = fneg double %i.lu
  %i.lw = call double @llvm.fmuladd.f64(double %i.ll, double %i.lp, double %i.lv)
  %i.lx = fdiv double %i.gh, %i.ln
  %i.ly = fadd double %i.lx, %i.lw
  %i.lz = fptrunc double %i.ly to float
  %i.ma = fpext float %i.lz to double
  %i.mb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, double noundef %i.ln, double noundef %i.ma) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ag
  %i.mc = add nuw nsw i32 %.04394, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.mc, 100
  br i1 %exitcond.not, label %.loopexit, label %bb.ag, !llvm.loop !28

.loopexit:                                        ; preds = %bb.aj
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.fb)
          to label %bb.ak unwind label %bb.b

bb.ak:                                            ; preds = %.loopexit
  %i.md = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.me = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 21, i32 noundef 1, ptr noundef nonnull %3)
          to label %bb.al unwind label %bb.b

bb.al:                                            ; preds = %bb.ak
  invoke void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef %i.md, ptr noundef %i.me, ptr noundef null)
          to label %bb.am unwind label %bb.b

bb.am:                                            ; preds = %bb.al, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.mf = load ptr, ptr %i.l, align 8, !tbaa !21  ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.m
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %bb.am
  %i.mh = load i64, ptr %i.m, align 8, !tbaa !19
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86
  %i.mj = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.mk = icmp eq ptr %i.mj, %i.i
  br i1 %i.mk, label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ml = load i64, ptr %i.i, align 8, !tbaa !19
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mm) #13
  br label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit

_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 16, !tbaa !25 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !26 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.mo, %i.mq
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

bb.an:                                            ; preds = %bb.af, %bb.b
  %.pn59 = phi { ptr, i32 } [ %i.q, %bb.b ], [ %.pn55.pn.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  resume { ptr, i32 } %.pn59

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.mw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.mo, %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit ] ; 3 uses
  %i.mr = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !21 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.mt = icmp eq ptr %i.mr, %i.ms
  br i1 %i.mt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.mu = load i64, ptr %i.ms, align 8, !tbaa !19
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.mr, i64 noundef %i.mv) #13
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.mw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.mw, %i.mq
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.mn, align 16, !tbaa !25
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit
  %i.mx = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.mo, %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.mx, null
  br i1 %.not.i.i1.i.i, label %_ZN8t_filenmD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.mz = load ptr, ptr %i.my, align 16, !tbaa !27
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = ptrtoint ptr %i.mx to i64
  %i.nc = sub i64 %i.na, %i.nb
  call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef %i.nc) #13
  br label %_ZN8t_filenmD2Ev.exit

_ZN8t_filenmD2Ev.exit:                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_Z17parse_common_argsPiPPcmiP8t_filenmiP7t_pargsiPPKciS8_PP16gmx_output_env_t(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !20     ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.c, ptr %i.a, align 8, !tbaa !43
  %i.e = icmp ugt i64 %i.c, 15
  br i1 %i.e, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !21
  %i.g = load i64, ptr %i.a, align 8, !tbaa !43
  store i64 %i.g, ptr %i.d, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !19
  store i8 %i.i, ptr %i.h, align 1, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.c, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = load ptr, ptr %0, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.q) #12
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.t = load i64, ptr %i.d, align 8, !tbaa !19
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #12
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !19
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_Z10xvgrLegendP8_IO_FILEN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK16gmx_output_env_t(ptr noundef, ptr, ptr, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

end_hunk_0
