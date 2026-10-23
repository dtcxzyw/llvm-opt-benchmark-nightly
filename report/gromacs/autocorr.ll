Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/autocorr?download=true
inline.NumInlined: 330
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.t_acf = type { i64, i32, i32, i32, i32, i8, i8, float, float }
%struct.t_pargs = type { ptr, i8, i32, %union.anon.10, ptr }
%union.anon.10 = type { ptr }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::vector<float>, std::allocator<std::vector<float>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<float>, std::allocator<std::vector<float>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<float>, std::allocator<std::vector<float>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<float>, std::allocator<std::vector<float>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt10filesystem7__cxx114pathC2IA78_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA13_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf = comdat any

@_ZL3acf = internal global %struct.t_acf zeroinitializer, align 8
@.str = private unnamed_addr constant [78 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/correlationfunctions/autocorr.cpp\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Incompatible options bCos && bVector (%s, %d)\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"Can't combine mode %lu with FFT, turning off FFT\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Incompatible mode bits: normal and vector (or Legendre)\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Will calculate %s of %d thingies for %d frames\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"autocorrelation\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"bAver = %s, bFour = %s bNormalize= %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"mode = %lu, dt = %g, nrestart = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"csum\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ctmp\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"\0DThingie %d\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"fit\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Time (ps)\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"Correlation time (integral over corrfn): %g (ps)\0A\00", align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"ct-distr.xvg\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Correlation times\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"time (ps)\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"CORRelation time (integral over corrfn %d): %g (ps)\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"%5d  %.3f\0A\00", align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"Average correlation time %.3f Std. Dev. %.3f Error %.3f (ps)\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"cfour\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"c1diag%d.xvg\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"c1dfout%d.xvg\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"c1off%d.xvg\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"c1ofout%d.xvg\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"\0AUnknown mode in do_autocorr (%lu)\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"%10d  %10g\0A\00", align 1
@.str.38 = private unnamed_addr constant [64 x i8] c"Starting do_ac_core: nframes=%d, nout=%d, nrestart=%d,mode=%lu\0A\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"j: %d, k: %d, xj:(%g,%g,%g), xk:(%g,%g,%g)\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"\0AInvalid mode (%lu) in do_ac_core\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"Before normalization\0A\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"%5d  %10f\0A\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"After normalization\0A\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"-acflen\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"Length of the ACF, default is half the number of frames\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"-normalize\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"Normalize ACF\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"-fftcorr\00", align 1
@.str.50 = private unnamed_addr constant [58 x i8] c"HIDDENUse fast fourier transform for correlation function\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"-nrestart\00", align 1
@.str.52 = private unnamed_addr constant [72 x i8] c"HIDDENNumber of frames between time origins for ACF when no FFT is used\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@_ZL3Leg = internal global [6 x ptr] [ptr null, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr null], align 16
@.str.54 = private unnamed_addr constant [56 x i8] c"Order of Legendre polynomial for ACF (0 indicates none)\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"-fitfn\00", align 1
@s_ffn = external global [13 x ptr], align 16
@.str.56 = private unnamed_addr constant [13 x i8] c"Fit function\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"-beginfit\00", align 1
@.str.58 = private unnamed_addr constant [68 x i8] c"Time where to begin the exponential fit of the correlation function\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"-endfit\00", align 1
@.str.60 = private unnamed_addr constant [87 x i8] c"Time where to end the exponential fit of the correlation function, -1 is until the end\00", align 1
@__const._Z13add_acf_pargsPiP7t_pargs.acfpa = private unnamed_addr constant [8 x %struct.t_pargs] [%struct.t_pargs { ptr @.str.45, i8 0, i32 0, %union.anon.10 { ptr getelementptr (i8, ptr @_ZL3acf, i64 12) }, ptr @.str.46 }, %struct.t_pargs { ptr @.str.47, i8 0, i32 5, %union.anon.10 { ptr getelementptr (i8, ptr @_ZL3acf, i64 25) }, ptr @.str.48 }, %struct.t_pargs { ptr @.str.49, i8 0, i32 5, %union.anon.10 { ptr getelementptr (i8, ptr @_ZL3acf, i64 24) }, ptr @.str.50 }, %struct.t_pargs { ptr @.str.51, i8 0, i32 0, %union.anon.10 { ptr getelementptr (i8, ptr @_ZL3acf, i64 8) }, ptr @.str.52 }, %struct.t_pargs { ptr @.str.53, i8 0, i32 7, %union.anon.10 { ptr @_ZL3Leg }, ptr @.str.54 }, %struct.t_pargs { ptr @.str.55, i8 0, i32 7, %union.anon.10 { ptr @s_ffn }, ptr @.str.56 }, %struct.t_pargs { ptr @.str.57, i8 0, i32 2, %union.anon.10 { ptr getelementptr (i8, ptr @_ZL3acf, i64 28) }, ptr @.str.58 }, %struct.t_pargs { ptr @.str.59, i8 0, i32 2, %union.anon.10 { ptr getelementptr (i8, ptr @_ZL3acf, i64 32) }, ptr @.str.60 }], align 16
@.str.61 = private unnamed_addr constant [4 x i8] c"ppa\00", align 1
@_ZL8bACFinit = internal unnamed_addr global i1 false, align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"ACF data not initialized yet\00", align 1
@str = private unnamed_addr constant [41 x i8] c"WARNING: setting number of restarts to 1\00", align 1
@str.1 = private unnamed_addr constant [32 x i8] c"Averaging correlation functions\00", align 1
@str.2 = private unnamed_addr constant [66 x i8] c"ACF data structures have not been initialised. Call add_acf_pargs\00", align 1

; Function Attrs: mustprogress uwtable
define void @_Z15low_do_autocorrPKcPK16gmx_output_env_tS0_iiiPPffmibbbffi(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, ptr nofree noundef readonly captures(none) %6, float noundef %7, i64 noundef %8, i32 noundef %9, i1 noundef zeroext %10, i1 noundef zeroext %11, i1 noundef zeroext %12, float noundef %13, float noundef %14, i32 noundef %15) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %16 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 27 uses
  %17 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %18 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %19 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %20 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %21 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !12
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL3acf, i64 24), align 8, !tbaa !17, !range !18, !noundef !19 ; 2 uses
  %.not249 = icmp eq i8 %i.c, 0                   ; 2 uses
  %.b.i = load i1, ptr @_ZL8bACFinit, align 1
  br i1 %.b.i, label %_Z11get_acfnoutv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA78_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 1 dereferenceable(78) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 839, ptr noundef nonnull @.str.68) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %bb.bz, %bb.bf, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.bhk, %bb.bf ], [ %i.bsu, %bb.bz ], [ %i.l, %bb.j ], [ %i.t, %bb.r ], [ %i.bzb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234 ], [ %i.bvf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %common.resume

_Z11get_acfnoutv.exit:                            ; preds = %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL3acf, i64 12), align 4, !tbaa !20 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_Z11get_acfnoutv.exit
  %i.g = add nsw i32 %3, 1
  %i.h = sdiv i32 %i.g, 2                         ; 2 uses
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZL3acf, i64 12), align 4, !tbaa !20
  br label %bb.g

bb.f:                                             ; preds = %_Z11get_acfnoutv.exit
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0147 = phi i32 [ %i.h, %bb.e ], [ %spec.select, %bb.f ]
  %.0147.fr = freeze i32 %.0147                   ; 13 uses
  %i.i = and i64 %8, 2
  %.not = icmp eq i64 %i.i, 0                     ; 2 uses
  %i.j = and i64 %8, 4
  %.not155 = icmp eq i64 %i.j, 0                  ; 2 uses
  %i.k = and i64 %8, 6
  %or.cond174.not = icmp eq i64 %i.k, 6
  br i1 %or.cond174.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA78_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 1 dereferenceable(78) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 575, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 575) #17
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %common.resume

bb.k:                                             ; preds = %bb.g
  %i.m = and i64 %8, 132
  %i.n = icmp eq i64 %i.m, 132                    ; 3 uses
  br i1 %i.n, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = and i64 %8, 12
  %27 = icmp ne i64 %i.o, 12                      ; 2 uses
  %.not178 = xor i1 %12, true
  %28 = or i1 %.not249, %.not178
  %brmerge = or i1 %27, %28
  %.mux = select i1 %27, i8 %i.c, i8 0
  br i1 %brmerge, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  %.not180 = xor i1 %12, true
  %brmerge181 = or i1 %.not249, %.not180
  br i1 %brmerge181, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.2, i64 noundef %8) #18 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.n
  %.0140 = phi i8 [ %.mux, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %i.r = and i64 %8, 1
  %.not156 = icmp eq i64 %i.r, 0                  ; 2 uses
  %i.s = and i64 %8, 5
  %or.cond175.not = icmp eq i64 %i.s, 5
  br i1 %or.cond175.not, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA78_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 1 dereferenceable(78) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef 587, ptr noundef nonnull @.str.3) #17
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %common.resume

bb.s:                                             ; preds = %bb.o
  br i1 %12, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not158 = icmp eq ptr %2, null
  %i.u = select i1 %.not158, ptr @.str.5, ptr %2
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %i.u, i32 noundef %4, i32 noundef %3) ; 0 uses
  %i.w = select i1 %10, ptr @.str.24, ptr @.str.25
  %i.x = trunc nuw i8 %.0140 to i1
  %i.y = select i1 %i.x, ptr @.str.24, ptr @.str.25
  %i.z = select i1 %11, ptr @.str.24, ptr @.str.25
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %i.w, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z) ; 0 uses
  %i.ab = fpext float %7 to double
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %8, double noundef %i.ab, i32 noundef %9) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ad = sext i32 %3 to i64                      ; 3 uses
  %i.ae = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef 601, i64 noundef range(i64 -2147483648, 2147483648) %i.ad, i64 noundef 4) ; 133 uses
  %i.af = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 602, i64 noundef range(i64 -2147483648, 2147483648) %i.ad, i64 noundef 4) ; 152 uses
  %i.ag = ptrtoaddr ptr %i.af to i64              ; 2 uses
  %i.ah = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u
  %i.ai = ptrtoaddr ptr %i.ae to i64
  %i.aj = add nsw i32 %4, -1
  %i.ak = trunc nuw i8 %.0140 to i1
  %i.al = icmp slt i32 %9, 1
  %i.am = icmp sgt i32 %.0147.fr, 0
  %i.an = zext i32 %.0147.fr to i64               ; 15 uses
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = icmp sgt i32 %3, 0                      ; 12 uses
  %i.aq = and i64 %8, 512
  %.not123.i = icmp eq i64 %i.aq, 0
  %i.ar = and i64 %8, 36
  %i.as = icmp eq i64 %i.ar, 36                   ; 2 uses
  %i.at = and i64 %8, 68
  %i.au = icmp eq i64 %i.at, 68                   ; 3 uses
  %or.cond.i = or i1 %i.as, %i.au
  %or.cond127.i = or i1 %i.n, %or.cond.i
  %i.av = and i64 %8, 12
  %i.aw = icmp eq i64 %i.av, 12
  %spec.select.i = select i1 %i.n, i32 3, i32 1
  %.0110.i = select i1 %i.au, i32 2, i32 %spec.select.i
  %i.ax = zext i32 %3 to i64                      ; 197 uses
  %or.cond169.i = and i1 %i.ap, %i.as
  %i.ay = shl nuw nsw i64 %i.ax, 2                ; 4 uses
  %i.az = zext nneg i32 %i.aj to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.ay
  %scevgep414 = getelementptr i8, ptr %i.af, i64 %i.ay
  %i.ba = mul nuw nsw i64 %i.ax, 12               ; 6 uses
  %i.bb = shl nuw nsw i64 %i.ax, 2                ; 12 uses
  %scevgep456 = getelementptr i8, ptr %i.ae, i64 %i.bb ; 10 uses
  %scevgep495 = getelementptr i8, ptr %i.af, i64 %i.bb ; 8 uses
  %i.bc = add nsw i64 %i.ba, -4                   ; 3 uses
  %i.bd = add nsw i64 %i.ba, -8                   ; 2 uses
  %scevgep1222 = getelementptr i8, ptr %i.af, i64 4
  %i.be = add nsw i64 %i.an, -1                   ; 2 uses
  %i.bf = add nsw i64 %i.ax, -1                   ; 4 uses
  %scevgep1254 = getelementptr i8, ptr %i.af, i64 4
  %i.bg = add nsw i64 %i.ax, -1                   ; 3 uses
  %i.bh = add nsw i64 %i.an, -1
  %i.bi = add nsw i64 %i.an, -1
  %min.iters.check1205 = icmp ult i32 %.0147.fr, 8
  %n.vec1207 = and i64 %i.an, 2147483640          ; 3 uses
  %cmp.n1219 = icmp eq i64 %n.vec1207, %i.an
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check1175 = icmp ult i32 %3, 4
  %min.iters.check1177 = icmp ult i32 %3, 32
  %i.bj = and i64 %i.ax, 28
  %n.vec1179 = and i64 %i.ax, 2147483616          ; 4 uses
  %cmp.n1188 = icmp eq i64 %n.vec1179, %i.ax
  %min.epilog.iters.check1192 = icmp eq i64 %i.bj, 0
  %n.vec1195 = and i64 %i.ax, 2147483644          ; 3 uses
  %cmp.n1201 = icmp eq i64 %n.vec1195, %i.ax
  %min.iters.check1145 = icmp ult i32 %3, 4
  %min.iters.check1147 = icmp ult i32 %3, 32
  %i.bk = and i64 %i.ax, 28
  %n.vec1149 = and i64 %i.ax, 2147483616          ; 4 uses
  %cmp.n1158 = icmp eq i64 %n.vec1149, %i.ax
  %min.epilog.iters.check1162 = icmp eq i64 %i.bk, 0
  %n.vec1165 = and i64 %i.ax, 2147483644          ; 3 uses
  %cmp.n1171 = icmp eq i64 %n.vec1165, %i.ax
  %min.iters.check1114 = icmp ult i32 %3, 4
  %min.iters.check1116 = icmp ult i32 %3, 16
  %i.bl = and i64 %i.ax, 12
  %n.vec1118 = and i64 %i.ax, 2147483632          ; 4 uses
  %cmp.n1127 = icmp eq i64 %n.vec1118, %i.ax
  %min.epilog.iters.check1131 = icmp eq i64 %i.bl, 0
  %n.vec1134 = and i64 %i.ax, 2147483644          ; 3 uses
  %cmp.n1141 = icmp eq i64 %n.vec1134, %i.ax
  %xtraiter1316 = and i64 %i.ax, 3                ; 2 uses
  %lcmp.mod1317.not = icmp eq i64 %xtraiter1316, 0
  %xtraiter1319 = and i64 %i.ax, 1
  %i.bm = icmp eq i64 %i.bg, 0
  %unroll_iter = and i64 %i.ax, 2147483646
  %lcmp.mod1320.not = icmp eq i64 %xtraiter1319, 0
  %lcmp.mod1321 = trunc i32 %3 to i1
  %min.iters.check1070 = icmp ult i32 %3, 9
  %min.iters.check1072 = icmp ult i32 %3, 33
  %i.bn = and i64 %i.ax, 31                       ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = select i1 %i.bo, i64 32, i64 %i.bn      ; 2 uses
  %n.vec1074 = sub nsw i64 %i.ax, %i.bp           ; 3 uses
  %min.epilog.iters.check1090 = icmp samesign ult i64 %i.bp, 9
  %i.bq = and i64 %i.ax, 7                        ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = select i1 %i.br, i64 8, i64 %i.bq
  %n.vec1093 = sub nsw i64 %i.ax, %i.bs           ; 2 uses
  %min.iters.check1032 = icmp ult i32 %3, 4
  %min.iters.check1034 = icmp ult i32 %3, 32
  %i.bt = and i64 %i.ax, 28
  %n.vec1036 = and i64 %i.ax, 4294967264          ; 4 uses
  %cmp.n1049 = icmp eq i64 %n.vec1036, %i.ax
  %min.epilog.iters.check1053 = icmp eq i64 %i.bt, 0
  %n.vec1056 = and i64 %i.ax, 4294967292          ; 3 uses
  %cmp.n1063 = icmp eq i64 %n.vec1056, %i.ax
  %min.iters.check996 = icmp ult i32 %3, 9
  %min.iters.check998 = icmp ult i32 %3, 33
  %i.bu = and i64 %i.ax, 31                       ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  %i.bw = select i1 %i.bv, i64 32, i64 %i.bu      ; 2 uses
  %n.vec1000 = sub nsw i64 %i.ax, %i.bw           ; 3 uses
  %min.epilog.iters.check1016 = icmp samesign ult i64 %i.bw, 9
  %i.bx = and i64 %i.ax, 7                        ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = select i1 %i.by, i64 8, i64 %i.bx
  %n.vec1019 = sub nsw i64 %i.ax, %i.bz           ; 2 uses
  %min.iters.check957 = icmp ult i32 %3, 4
  %min.iters.check959 = icmp ult i32 %3, 32
  %i.ca = and i64 %i.ax, 28
  %n.vec961 = and i64 %i.ax, 4294967264           ; 4 uses
  %cmp.n974 = icmp eq i64 %n.vec961, %i.ax
  %min.epilog.iters.check978 = icmp eq i64 %i.ca, 0
  %n.vec981 = and i64 %i.ax, 4294967292           ; 3 uses
  %cmp.n988 = icmp eq i64 %n.vec981, %i.ax
  %min.iters.check921 = icmp ult i32 %3, 9
  %min.iters.check923 = icmp ult i32 %3, 33
  %i.cb = and i64 %i.ax, 31                       ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 32, i64 %i.cb      ; 2 uses
  %n.vec925 = sub nsw i64 %i.ax, %i.cd            ; 3 uses
  %min.epilog.iters.check941 = icmp samesign ult i64 %i.cd, 9
  %i.ce = and i64 %i.ax, 7                        ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  %i.cg = select i1 %i.cf, i64 8, i64 %i.ce
  %n.vec944 = sub nsw i64 %i.ax, %i.cg            ; 2 uses
  %min.iters.check882 = icmp ult i32 %3, 4
  %min.iters.check884 = icmp ult i32 %3, 32
  %i.ch = and i64 %i.ax, 28
  %n.vec886 = and i64 %i.ax, 4294967264           ; 4 uses
  %cmp.n899 = icmp eq i64 %n.vec886, %i.ax
  %min.epilog.iters.check903 = icmp eq i64 %i.ch, 0
  %n.vec906 = and i64 %i.ax, 4294967292           ; 3 uses
  %cmp.n913 = icmp eq i64 %n.vec906, %i.ax
  %xtraiter1340 = and i64 %i.ax, 1
  %i.ci = icmp eq i64 %i.bg, 0
  %unroll_iter1343 = and i64 %i.ax, 2147483646
  %lcmp.mod1341.not = icmp eq i64 %xtraiter1340, 0
  %lcmp.mod1342 = trunc i32 %3 to i1
  %min.iters.check840 = icmp ult i32 %3, 4
  %min.iters.check842 = icmp ult i32 %3, 32
  %i.cj = and i64 %i.ax, 28
  %n.vec844 = and i64 %i.ax, 2147483616           ; 4 uses
  %broadcast.splatinsert845 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat846 = shufflevector <8 x i32> %broadcast.splatinsert845, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n856 = icmp eq i64 %n.vec844, %i.ax
end_hunk_0
