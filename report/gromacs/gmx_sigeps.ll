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
  %i.d = alloca [2 x float], align 4              ; 6 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) @__const._Z10gmx_sigepsiPPc.desc, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %2, ptr noundef nonnull align 16 dereferenceable(352) @__const._Z10gmx_sigepsiPPc.pa, i64 352, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i32 21, ptr %3, align 16, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.26, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.27, ptr %i.g, align 16, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 4, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.j, ptr noundef nonnull align 1 dereferenceable(13) @.str.28, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 13, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 29
  store i8 0, ptr %i.l, align 1, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.n, ptr noundef nonnull align 1 dereferenceable(10) @.str.29, i64 10, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 10, ptr %i.o, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 58
  store i8 0, ptr %i.p, align 2, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.q = invoke noundef zeroext i1 @_Z17parse_common_argsPiPPcmiP8t_filenmiP7t_pargsiPPKciS8_PP16gmx_output_env_t(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef 32, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 11, ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull %i.b, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.c)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  br i1 %i.q, label %bb.c, label %bb.am

bb.b:                                             ; preds = %bb.al, %bb.ak, %.loopexit, %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %bb.s, %bb.q, %bb.o, %bb.l, %bb.j, %bb.g, %bb.e, %bb.c, %._crit_edge.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  %i.s = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.14, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  br i1 %i.s, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.16, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  br i1 %i.t, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.18, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.g
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.d, %bb.f
  %i.v = load float, ptr @_ZZ10gmx_sigepsiPPcE3Cbh, align 4, !tbaa !28 ; 2 uses
  store float %i.v, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !28
  %i.w = load float, ptr @_ZZ10gmx_sigepsiPPcE3Bbh, align 4, !tbaa !28
  %i.x = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9 ; 3 uses
  %i.y = sitofp i32 %i.x to float
  %i.z = fdiv float %i.y, %i.w
  %8 = add nsw i32 %i.x, -6
  %9 = fpext float %i.z to double
  %10 = sitofp i32 %8 to double
  %11 = call noundef double @pow(double noundef %9, double noundef %10) #12
  %12 = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9
  %13 = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %14 = insertelement <2 x i32> %13, i32 %12, i64 1
  %15 = add nsw <2 x i32> %14, <i32 0, i32 -6>
  %16 = sitofp <2 x i32> %15 to <2 x double>
  %i.aa = fdiv <2 x double> <double 6.000000e+00, double 1.000000e+00>, %16 ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0
  %i.ac = fmul double %i.ab, %11
  %i.ad = extractelement <2 x double> %i.aa, i64 1
  %i.ae = call double @pow(double noundef %i.ac, double noundef %i.ad) #12
  %i.af = fptrunc double %i.ae to float           ; 5 uses
  store float %i.af, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !28
  %i.ag = fmul float %i.af, %i.af
  %i.ah = fmul float %i.ag, %i.af                 ; 2 uses
  %i.ai = fmul float %i.ah, %i.ah
  %i.aj = fmul float %i.ai, 4.000000e+00
  %i.ak = fdiv float %i.v, %i.aj                  ; 2 uses
  store float %i.ak, ptr @_ZZ10gmx_sigepsiPPcE3eps, align 4, !tbaa !28
  %i.al = fmul float %i.ak, 4.000000e+00
  %i.am = fpext float %i.al to double
  %17 = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9
  %i.an = fpext float %i.af to double
  %18 = sitofp i32 %17 to double
  %i.ao = call noundef double @pow(double noundef %i.an, double noundef %18) #12
  %i.ap = fmul double %i.ao, %i.am
  %i.aq = fptrunc double %i.ap to float
  store float %i.aq, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !28
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.ar = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.10, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  br i1 %i.ar, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.12, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.m unwind label %bb.b

bb.m:                                             ; preds = %bb.l
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.m
  %i.at = load float, ptr @_ZZ10gmx_sigepsiPPcE3eps, align 4, !tbaa !28
  %i.au = load float, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !28 ; 4 uses
  %i.av = fmul float %i.au, %i.au
  %i.aw = fmul float %i.au, %i.av                 ; 2 uses
  %i.ax = fmul float %i.aw, %i.aw
  %i.ay = fmul float %i.at, 4.000000e+00          ; 2 uses
  %i.az = fmul float %i.ay, %i.ax                 ; 2 uses
  store float %i.az, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !28
  %i.ba = fpext float %i.ay to double
  %i.bb = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9
  %i.bc = fpext float %i.au to double
  %i.bd = sitofp i32 %i.bb to double
  %i.be = call noundef double @pow(double noundef %i.bc, double noundef %i.bd) #12
  %i.bf = fmul double %i.be, %i.ba
  %i.bg = fptrunc double %i.bf to float           ; 2 uses
  store float %i.bg, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !28
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  %i.bh = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.4, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.p unwind label %bb.b

bb.p:                                             ; preds = %bb.o
  br i1 %i.bh, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.6, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.r unwind label %bb.b

bb.r:                                             ; preds = %bb.q
  br i1 %i.bi, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.8, i32 noundef 11, ptr noundef nonnull %2)
          to label %bb.t unwind label %bb.b

bb.t:                                             ; preds = %bb.s
  br i1 %i.bj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.p, %bb.r, %bb.t
  %i.bk = load float, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !28 ; 2 uses
  %i.bl = load float, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !28 ; 3 uses
  %i.bm = fdiv float %i.bk, %i.bl
  %i.bn = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9
  %i.bo = add nsw i32 %i.bn, -6
  %i.bp = sitofp i32 %i.bo to double
  %i.bq = fdiv double 1.000000e+00, %i.bp
  %i.br = fptrunc double %i.bq to float
  %i.bs = call noundef float @powf(float noundef %i.bm, float noundef %i.br) #12 ; 4 uses
  store float %i.bs, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !28
  %i.bt = fmul float %i.bs, %i.bs
  %i.bu = fmul float %i.bs, %i.bt                 ; 2 uses
  %i.bv = fmul float %i.bu, %i.bu
  %i.bw = fpext float %i.bl to double
  %i.bx = fmul double %i.bw, 2.500000e-01
  %i.by = fpext float %i.bv to double
  %i.bz = fdiv double %i.bx, %i.by
  %i.ca = fptrunc double %i.bz to float
  store float %i.ca, ptr @_ZZ10gmx_sigepsiPPcE3eps, align 4, !tbaa !28
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store float 0.000000e+00, ptr @_ZZ10gmx_sigepsiPPcE3eps, align 4, !tbaa !28
  store float 0.000000e+00, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !28
  %.pre = load float, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !28
  %.pre98.a = load float, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !28
  br label %bb.w

bb.w:                                             ; preds = %bb.n, %bb.v, %bb.u
  %i.cb = phi float [ %i.bg, %bb.n ], [ %.pre98.a, %bb.v ], [ %i.bk, %bb.u ]
  %i.cc = phi float [ %i.az, %bb.n ], [ %.pre, %bb.v ], [ %i.bl, %bb.u ]
  %i.cd = fpext float %i.cc to double
  %19 = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9
  %i.ce = fpext float %i.cb to double
  %i.cf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, double noundef %i.cd, i32 noundef %19, double noundef %i.ce) ; 0 uses
  %i.cg = load float, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !28
  %i.ch = fpext float %i.cg to double
  %i.ci = load float, ptr @_ZZ10gmx_sigepsiPPcE3eps, align 4, !tbaa !28
  %i.cj = fpext float %i.ci to double
  %i.ck = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %i.ch, double noundef %i.cj) ; 0 uses
  %i.cl = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9 ; 2 uses
  %i.cm = sitofp i32 %i.cl to double
  %i.cn = fdiv nnan double %i.cm, 6.000000e+00
  %i.co = load float, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !28
  %i.cp = add nsw i32 %i.cl, -6
  %i.cq = fpext float %i.co to double
  %i.cr = sitofp i32 %i.cp to double
  %i.cs = call noundef double @pow(double noundef %i.cq, double noundef %i.cr) #12
  %i.ct = fmul double %i.cn, %i.cs
  %20 = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9
  %21 = add nsw i32 %20, -6
  %22 = sitofp i32 %21 to double
  %i.cu = fdiv double 1.000000e+00, %22
  %i.cv = call double @pow(double noundef %i.ct, double noundef %i.cu) #12
  %i.cw = fptrunc double %i.cv to float           ; 6 uses
  %i.cx = load float, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !28
  %i.cy = load float, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !28
  %23 = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9
  %i.cz = fpext float %i.cy to double
  %i.da = sub nsw i32 0, %23
  %i.db = fpext float %i.cw to double             ; 3 uses
  %i.dc = sitofp i32 %i.da to double
  %i.dd = call noundef double @pow(double noundef %i.db, double noundef %i.dc) #12
  %i.de = fmul float %i.cw, %i.cw
  %i.df = fmul float %i.de, %i.cw                 ; 2 uses
  %i.dg = fmul float %i.df, %i.df
  %i.dh = fdiv float %i.cx, %i.dg
  %i.di = fpext float %i.dh to double
  %i.dj = fneg double %i.di
  %i.dk = call double @llvm.fmuladd.f64(double %i.cz, double %i.dd, double %i.dj)
  %i.dl = fdiv double 0.000000e+00, %i.db
  %i.dm = fadd double %i.dl, %i.dk
  %i.dn = fptrunc double %i.dm to float
  %i.do = fpext float %i.dn to double
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, double noundef %i.db, double noundef %i.do) ; 0 uses
  %i.dq = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9
  %i.dr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %i.dq) ; 0 uses
  %i.ds = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9
  %i.dt = sitofp i32 %i.ds to float               ; 2 uses
  %i.du = fdiv float %i.dt, %i.cw                 ; 2 uses
  store float %i.du, ptr @_ZZ10gmx_sigepsiPPcE3Bbh, align 4, !tbaa !28
  %i.dv = load float, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !28 ; 2 uses
  store float %i.dv, ptr @_ZZ10gmx_sigepsiPPcE3Cbh, align 4, !tbaa !28
  %i.dw = load float, ptr @_ZZ10gmx_sigepsiPPcE3eps, align 4, !tbaa !28
  %i.dx = fmul float %i.dw, 4.000000e+00
  %i.dy = load float, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !28
  %i.dz = fdiv float %i.dy, %i.cw
  %i.ea = call noundef float @powf(float noundef %i.dz, float noundef %i.dt) #12
  %i.eb = fmul float %i.dx, %i.ea
  %24 = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9
  %25 = sitofp i32 %24 to float
  %i.ec = call noundef float @expf(float noundef %25) #12
  %i.ed = fmul float %i.eb, %i.ec                 ; 2 uses
  store float %i.ed, ptr @_ZZ10gmx_sigepsiPPcE3Abh, align 4, !tbaa !28
  %i.ee = fpext float %i.ed to double
  %i.ef = fpext float %i.du to double
  %i.eg = fpext float %i.dv to double
  %i.eh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, double noundef %i.ee, double noundef %i.ef, double noundef %i.eg) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.i
  %i.ei = load float, ptr @_ZZ10gmx_sigepsiPPcE2qi, align 4, !tbaa !28
  %i.ej = load float, ptr @_ZZ10gmx_sigepsiPPcE2qj, align 4, !tbaa !28
  %i.ek = fmul float %i.ei, %i.ej                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.el = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 21, i32 noundef 1, ptr noundef nonnull %3)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  store ptr %i.el, ptr %i.e, align 8, !tbaa !30
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef zeroext 2)
          to label %._crit_edge.i.i66 unwind label %bb.ad

._crit_edge.i.i66:                                ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.em, ptr %6, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.em, ptr noundef nonnull align 1 dereferenceable(6) @.str.36, i64 6, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 6, ptr %i.en, align 8, !tbaa !25
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 0, ptr %i.eo, align 2, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ep, ptr %7, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ep, ptr noundef nonnull align 1 dereferenceable(10) @.str.37, i64 10, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 10, ptr %i.eq, align 8, !tbaa !25
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i8 0, ptr %i.er, align 2, !tbaa !27
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.et = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.es)
          to label %bb.z unwind label %bb.ae      ; 4 uses

bb.z:                                             ; preds = %._crit_edge.i.i66
  %i.eu = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.ep
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.z
  %i.ew = load i64, ptr %i.ep, align 8, !tbaa !27
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.ey = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.em
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.fa = load i64, ptr %i.em, align 8, !tbaa !27
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull %i.fd) #12
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.fe = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !27
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #13
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fk = load ptr, ptr %i.c, align 8, !tbaa !31
  invoke void @_Z10xvgrLegendP8_IO_FILEN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK16gmx_output_env_t(ptr noundef %i.et, ptr nonnull %4, ptr nonnull %i.fj, ptr noundef %i.fk)
          to label %bb.ab unwind label %bb.b

bb.ab:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.fl = load float, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !28 ; 2 uses
  %i.fm = fcmp oeq float %i.fl, 0.000000e+00
  br i1 %i.fm, label %bb.ac, label %.peel.next

bb.ac:                                            ; preds = %bb.ab
  store float 2.500000e-01, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !28
  br label %.peel.next

bb.ad:                                            ; preds = %bb.y, %bb.x
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i66
  %i.fo = landingpad { ptr, i32 }
          cleanup
  %i.fp = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.ep
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.ae
  %i.fr = load i64, ptr %i.ep, align 8, !tbaa !27
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.ft = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.em
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.fv = load i64, ptr %i.em, align 8, !tbaa !27
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #12
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.ad
  %.pn55.pn.pn = phi { ptr, i32 } [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.fn, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.an

.peel.next:                                       ; preds = %bb.ac, %bb.ab
  %i.fx = phi float [ 2.500000e-01, %bb.ac ], [ %i.fl, %bb.ab ] ; 2 uses
  %i.fy = fpext float %i.ek to double
  %i.fz = fmul double %i.fy, f0x40615DEF44DEAD3D  ; 2 uses
  %i.ga = fcmp une float %i.ek, 0.000000e+00
  %i.gb = load float, ptr @_ZZ10gmx_sigepsiPPcE6sigfac, align 4, !tbaa !28
  %i.gc = fmul float %i.gb, %i.fx
  %i.gd = fpext float %i.gc to double
  %i.ge = fmul float %i.fx, 0.000000e+00
  %i.gf = fpext float %i.ge to double
  %i.gg = call double @llvm.fmuladd.f64(double %i.gf, double 2.000000e-02, double %i.gd)
  %i.gh = fptrunc double %i.gg to float           ; 8 uses
  %i.gi = load float, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !28 ; 2 uses
  %i.gj = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9 ; 2 uses
  %i.gk = sitofp i32 %i.gj to float
  %i.gl = fmul float %i.gi, %i.gk
  %i.gm = xor i32 %i.gj, -1
  %i.gn = sitofp i32 %i.gm to double
  %i.go = fmul float %i.gh, %i.gh                 ; 2 uses
  %i.gp = fmul float %i.go, %i.gh                 ; 2 uses
  %i.gq = fmul float %i.gp, %i.gp                 ; 3 uses
  %i.gr = fmul float %i.gq, %i.gh
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.gt = fpext float %i.gh to double             ; 3 uses
  %i.gu = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %i.gh, i64 1
  %i.gw = fpext <2 x float> %i.gv to <2 x double>
  %i.gx = call noundef double @pow(double noundef %i.gt, double noundef %i.gn) #12
  %i.gy = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = fdiv <2 x double> %i.gz, %i.gw
  %26 = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9
  %27 = sub nsw i32 0, %26
  %28 = sitofp i32 %27 to double
  %i.hb = call noundef double @pow(double noundef %i.gt, double noundef %28) #12
  %i.hc = load float, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !28
  %i.hd = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = fmul <2 x float> %i.he, <float 6.000000e+00, float 1.000000e+00>
  %i.hg = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.hh = insertelement <2 x float> %i.hg, float %i.gi, i64 1
  %i.hi = fpext <2 x float> %i.hh to <2 x double>
  %i.hj = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.hk = insertelement <2 x float> %i.hj, float %i.gq, i64 1
  %i.hl = fdiv <2 x float> %i.hf, %i.hk
  %i.hm = fpext <2 x float> %i.hl to <2 x double>
  %i.hn = fneg <2 x double> %i.hm
  %i.ho = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %i.hb, i64 1
  %i.hq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.hp, <2 x double> %i.hn)
  %i.hr = fadd <2 x double> %i.ha, %i.hq
  %i.hs = fptrunc <2 x double> %i.hr to <2 x float> ; 2 uses
  %i.ht = extractelement <2 x float> %i.hs, i64 0
  %i.hu = fneg float %i.ht
  store float %i.hu, ptr %i.gs, align 4, !tbaa !28
  %i.hv = load float, ptr @_ZZ10gmx_sigepsiPPcE3Abh, align 4, !tbaa !28
  %i.hw = load float, ptr @_ZZ10gmx_sigepsiPPcE3Bbh, align 4, !tbaa !28
  %i.hx = load float, ptr @_ZZ10gmx_sigepsiPPcE3Cbh, align 4, !tbaa !28
  %i.hy = fneg float %i.hw
  %i.hz = fmul float %i.gh, %i.hy
  %i.ia = call noundef float @expf(float noundef %i.hz) #12
  %i.ib = fneg float %i.hx
  %i.ic = fdiv float %i.ib, %i.gq
  %i.id = call noundef float @llvm.fmuladd.f32(float %i.hv, float %i.ia, float %i.ic)
  %i.ie = extractelement <2 x float> %i.hs, i64 1
  %i.if = fpext float %i.ie to double
  %i.ig = fpext float %i.id to double
  %i.ih = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.38, double noundef %i.gt, double noundef %i.if, double noundef %i.ig) #12 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.peel.next, %bb.aj
  %.096 = phi i32 [ 1, %.peel.next ], [ %i.jb, %bb.aj ] ; 2 uses
  %.04295 = phi float [ %i.gh, %.peel.next ], [ %i.iq, %bb.aj ] ; 2 uses
  %.04394 = phi i32 [ 1, %.peel.next ], [ %i.lw, %bb.aj ] ; 2 uses
  %i.ii = load float, ptr @_ZZ10gmx_sigepsiPPcE6sigfac, align 4, !tbaa !28
  %i.ij = load float, ptr @_ZZ10gmx_sigepsiPPcE3sig, align 4, !tbaa !28 ; 2 uses
  %i.ik = fmul float %i.ii, %i.ij
  %i.il = fpext float %i.ik to double
  %i.im = uitofp nneg i32 %.04394 to float
  %i.in = fmul float %i.ij, %i.im
  %i.io = fpext float %i.in to double
  %i.ip = call double @llvm.fmuladd.f64(double %i.io, double 2.000000e-02, double %i.il)
  %i.iq = fptrunc double %i.ip to float           ; 9 uses
  %i.ir = load float, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !28 ; 2 uses
  %i.is = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9 ; 2 uses
  %i.it = sitofp i32 %i.is to float
  %i.iu = fmul float %i.ir, %i.it
  %i.iv = xor i32 %i.is, -1
  %i.iw = sitofp i32 %i.iv to double
  %i.ix = fmul float %i.iq, %i.iq                 ; 2 uses
  %i.iy = fmul float %i.ix, %i.iq                 ; 2 uses
  %i.iz = fmul float %i.iy, %i.iy                 ; 3 uses
  %i.ja = fmul float %i.iz, %i.iq
  %i.jb = xor i32 %.096, 1                        ; 2 uses
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jc
  %i.je = load float, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !28
  %i.jf = insertelement <2 x float> poison, float %i.je, i64 0
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jh = fmul <2 x float> %i.jg, <float 6.000000e+00, float 1.000000e+00>
  %i.ji = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jj = insertelement <2 x float> %i.ji, float %i.iz, i64 1
  %i.jk = fdiv <2 x float> %i.jh, %i.jj
  %i.jl = fpext <2 x float> %i.jk to <2 x double>
  %i.jm = fneg <2 x double> %i.jl
  %i.jn = fpext float %i.iq to double             ; 3 uses
  %i.jo = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.jp = insertelement <2 x float> %i.jo, float %i.iq, i64 1
  %i.jq = fpext <2 x float> %i.jp to <2 x double>
  %i.jr = call noundef double @pow(double noundef %i.jn, double noundef %i.iw) #12
  %i.js = fdiv <2 x double> %i.gz, %i.jq
  %29 = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9
  %30 = sub nsw i32 0, %29
  %31 = sitofp i32 %30 to double
  %i.jt = call noundef double @pow(double noundef %i.jn, double noundef %31) #12
  %i.ju = insertelement <2 x float> poison, float %i.iu, i64 0
  %i.jv = insertelement <2 x float> %i.ju, float %i.ir, i64 1
  %i.jw = fpext <2 x float> %i.jv to <2 x double>
  %i.jx = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.jt, i64 1
  %i.jz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %i.jy, <2 x double> %i.jm)
  %i.ka = fadd <2 x double> %i.js, %i.jz          ; 2 uses
  %i.kb = extractelement <2 x double> %i.ka, i64 0
  %i.kc = fptrunc double %i.kb to float           ; 2 uses
  %i.kd = fneg float %i.kc                        ; 2 uses
  store float %i.kd, ptr %i.jd, align 4, !tbaa !28
  %i.ke = extractelement <2 x double> %i.ka, i64 1
  %i.kf = fptrunc double %i.ke to float
  %i.kg = load float, ptr @_ZZ10gmx_sigepsiPPcE3Abh, align 4, !tbaa !28
  %i.kh = load float, ptr @_ZZ10gmx_sigepsiPPcE3Bbh, align 4, !tbaa !28
  %i.ki = load float, ptr @_ZZ10gmx_sigepsiPPcE3Cbh, align 4, !tbaa !28
  %i.kj = fneg float %i.kh
  %i.kk = fmul float %i.iq, %i.kj
  %i.kl = call noundef float @expf(float noundef %i.kk) #12
  %i.km = fneg float %i.ki
  %i.kn = fdiv float %i.km, %i.iz
  %i.ko = call noundef float @llvm.fmuladd.f32(float %i.kg, float %i.kl, float %i.kn)
  %i.kp = fpext float %i.kf to double
  %i.kq = fpext float %i.ko to double
  %i.kr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.38, double noundef %i.jn, double noundef %i.kp, double noundef %i.kq) #12 ; 0 uses
  br i1 %i.ga, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ks = zext nneg i32 %.096 to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ks
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !28 ; 3 uses
  %i.kv = fmul float %i.ku, %i.kd
  %i.kw = fcmp olt float %i.kv, 0.000000e+00
  br i1 %i.kw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.kx = fsub float %i.iq, %.04295
  %i.ky = fmul float %i.kx, %i.ku
  %i.kz = fadd float %i.ku, %i.kc
  %i.la = fdiv float %i.ky, %i.kz
  %i.lb = fadd float %.04295, %i.la               ; 4 uses
  %i.lc = load float, ptr @_ZZ10gmx_sigepsiPPcE2c6, align 4, !tbaa !28
  %i.ld = load float, ptr @_ZZ10gmx_sigepsiPPcE2cn, align 4, !tbaa !28
  %i.le = load i32, ptr @_ZZ10gmx_sigepsiPPcE4npow, align 4, !tbaa !9
  %i.lf = fpext float %i.ld to double
  %i.lg = sub nsw i32 0, %i.le
  %i.lh = fpext float %i.lb to double             ; 3 uses
  %i.li = sitofp i32 %i.lg to double
  %i.lj = call noundef double @pow(double noundef %i.lh, double noundef %i.li) #12
  %i.lk = fmul float %i.lb, %i.lb
  %i.ll = fmul float %i.lb, %i.lk                 ; 2 uses
  %i.lm = fmul float %i.ll, %i.ll
  %i.ln = fdiv float %i.lc, %i.lm
  %i.lo = fpext float %i.ln to double
  %i.lp = fneg double %i.lo
  %i.lq = call double @llvm.fmuladd.f64(double %i.lf, double %i.lj, double %i.lp)
  %i.lr = fdiv double %i.fz, %i.lh
  %i.ls = fadd double %i.lr, %i.lq
  %i.lt = fptrunc double %i.ls to float
  %i.lu = fpext float %i.lt to double
  %i.lv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, double noundef %i.lh, double noundef %i.lu) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ag
  %i.lw = add nuw nsw i32 %.04394, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.lw, 100
  br i1 %exitcond.not, label %.loopexit, label %bb.ag, !llvm.loop !36

.loopexit:                                        ; preds = %bb.aj
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.et)
          to label %bb.ak unwind label %bb.b

bb.ak:                                            ; preds = %.loopexit
  %i.lx = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.ly = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 21, i32 noundef 1, ptr noundef nonnull %3)
          to label %bb.al unwind label %bb.b

bb.al:                                            ; preds = %bb.ak
  invoke void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef %i.lx, ptr noundef %i.ly, ptr noundef null)
          to label %bb.am unwind label %bb.b

bb.am:                                            ; preds = %bb.al, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %i.lz = load ptr, ptr %i.m, align 8, !tbaa !33  ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.n
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %bb.am
  %i.mb = load i64, ptr %i.n, align 8, !tbaa !27
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86
  %i.md = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.j
  br i1 %i.me, label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.mf = load i64, ptr %i.j, align 8, !tbaa !27
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mg) #13
  br label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit

_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.mh = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 16, !tbaa !39 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !40 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.mi, %i.mk
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

bb.an:                                            ; preds = %bb.af, %bb.b
  %.pn59 = phi { ptr, i32 } [ %i.r, %bb.b ], [ %.pn55.pn.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  resume { ptr, i32 } %.pn59

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.mq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.mi, %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit ] ; 3 uses
  %i.ml = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.mo = load i64, ptr %i.mm, align 8, !tbaa !27
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mp) #13
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.mq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.mq, %i.mk
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.mh, align 16, !tbaa !39
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit
  %i.mr = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.mi, %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.mr, null
  br i1 %.not.i.i1.i.i, label %_ZN8t_filenmD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.mt = load ptr, ptr %i.ms, align 16, !tbaa !42
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = ptrtoint ptr %i.mr to i64
  %i.mw = sub i64 %i.mu, %i.mv
  call void @_ZdlPvm(ptr noundef nonnull %i.mr, i64 noundef %i.mw) #13
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
end_hunk_0
