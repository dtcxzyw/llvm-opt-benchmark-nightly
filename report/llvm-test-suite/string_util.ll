inline.NumInlined: 293
inline.NumDeleted: 149
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"struct.std::array" = type { [256 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@_ZN9benchmark12_GLOBAL__N_112kBigIECUnitsE = internal unnamed_addr constant [8 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], align 16
@_ZN9benchmark12_GLOBAL__N_111kBigSIUnitsE = internal unnamed_addr constant [8 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], align 16
@_ZN9benchmark12_GLOBAL__N_113kSmallSIUnitsE = internal unnamed_addr constant [8 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], align 16
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"Ki\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"Mi\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"Gi\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"Ti\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"Pi\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"Ei\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"Zi\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"Yi\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_string_util.cc, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark19HumanReadableNumberB5cxx11EdNS_7Counter4OneKE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 33 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16, !noalias !8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 12 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !11, !noalias !8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  store i64 0, ptr %i.c, align 8, !tbaa !15, !noalias !8
  store i8 0, ptr %i.b, align 8, !tbaa !18, !noalias !8
  %i.d = icmp eq i32 %2, 1024                     ; 2 uses
  %i.e = select i1 %i.d, double 1.024000e+03, double 1.000000e+03 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !8
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %.noexc.i unwind label %bb.ar, !noalias !8

.noexc.i:                                         ; preds = %bb.a
  %i.f = fcmp olt double %1, 0.000000e+00
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.noexc.i
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.c, !noalias !8 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.b
  %i.i = fneg double %1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc.i
  %.052.i.i = phi double [ %i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ %1, %.noexc.i ] ; 6 uses
  %i.k = fadd double %i.e, -1.000000e+00          ; 9 uses
  %i.l = fcmp ogt double %.052.i.i, %i.k
  br i1 %i.l, label %.preheader.preheader.i.i, label %bb.p

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.m = fdiv double %.052.i.i, %i.e              ; 3 uses
  %i.n = fcmp ugt double %i.m, %i.k
  br i1 %i.n, label %.preheader.1.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.7.i.i, %.preheader.6.i.i, %.preheader.5.i.i, %.preheader.4.i.i, %.preheader.3.i.i, %.preheader.2.i.i, %.preheader.1.i.i, %.preheader.preheader.i.i
  %.050136.lcssa.i.i = phi i64 [ 1, %.preheader.preheader.i.i ], [ 2, %.preheader.1.i.i ], [ 3, %.preheader.2.i.i ], [ 4, %.preheader.3.i.i ], [ 5, %.preheader.4.i.i ], [ 6, %.preheader.5.i.i ], [ 7, %.preheader.6.i.i ], [ 8, %.preheader.7.i.i ]
  %.lcssa.i.i = phi double [ %i.m, %.preheader.preheader.i.i ], [ %i.az, %.preheader.1.i.i ], [ %i.bb, %.preheader.2.i.i ], [ %i.bd, %.preheader.3.i.i ], [ %i.bf, %.preheader.4.i.i ], [ %i.bh, %.preheader.5.i.i ], [ %i.bj, %.preheader.6.i.i ], [ %i.bl, %.preheader.7.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, double noundef %.lcssa.i.i)
          to label %_ZNSolsEd.exit.i.i unwind label %bb.n, !noalias !8 ; 0 uses

_ZNSolsEd.exit.i.i:                               ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !8
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !11, !alias.scope !25, !noalias !8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !15, !alias.scope !25, !noalias !8
  store i8 0, ptr %i.q, align 8, !tbaa !18, !alias.scope !25, !noalias !8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %10 = load ptr, ptr %9, align 8, !tbaa !26, !noalias !30 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %10, null
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !noalias !30 ; 2 uses
  %11 = icmp ugt ptr %10, %i.t
  %.08.i.i.i.i.i = select i1 %11, ptr %10, ptr %i.t ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNSolsEd.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31, !noalias !30 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.g, !noalias !8 ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %4, align 8, !tbaa !32, !alias.scope !25, !noalias !8 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !18, !alias.scope !25, !noalias !8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #17, !noalias !8
  br label %.body.i.i

bb.h:                                             ; preds = %_ZNSolsEd.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.g, !noalias !8

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i: ; preds = %bb.h, %bb.f
  %i.ag = load ptr, ptr %7, align 8, !tbaa !32, !noalias !8 ; 6 uses
  %i.ah = icmp eq ptr %i.ag, %i.b
  %i.ai = load ptr, ptr %4, align 8, !tbaa !32, !noalias !8 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, %i.q                 ; 2 uses
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  br i1 %i.aj, label %bb.i, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  br i1 %i.aj, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ak = load i64, ptr %i.r, align 8, !tbaa !15, !noalias !8 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  switch i64 %i.ak, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !18, !noalias !8
  store i8 %i.am, ptr %i.ag, align 1, !tbaa !18, !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.ai, i64 %i.ak, i1 false), !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.an = load i64, ptr %i.r, align 8, !tbaa !15, !noalias !8 ; 2 uses
  store i64 %i.an, ptr %i.c, align 8, !tbaa !15, !noalias !8
  %i.ao = load ptr, ptr %7, align 8, !tbaa !32, !noalias !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !tbaa !18, !noalias !8
  %.pre.i.i.i = load ptr, ptr %4, align 8, !tbaa !32, !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr %i.ai, ptr %7, align 8, !tbaa !32, !noalias !8
  %i.aq = load <2 x i64>, ptr %i.r, align 8, !tbaa !18, !noalias !8
  store <2 x i64> %i.aq, ptr %i.c, align 8, !tbaa !18, !noalias !8
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !18, !noalias !8
  store ptr %i.ai, ptr %7, align 8, !tbaa !32, !noalias !8
  %i.as = load <2 x i64>, ptr %i.r, align 8, !tbaa !18, !noalias !8
  store <2 x i64> %i.as, ptr %i.c, align 8, !tbaa !18, !noalias !8
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.ag, ptr %4, align 8, !tbaa !32, !noalias !8
  store i64 %i.ar, ptr %i.q, align 8, !tbaa !18, !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.q, ptr %4, align 8, !tbaa !32, !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
  %i.at = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.ag, %bb.l ], [ %i.q, %bb.m ]
  store i64 0, ptr %i.r, align 8, !tbaa !15, !noalias !8
  store i8 0, ptr %i.at, align 1, !tbaa !18, !noalias !8
  %i.au = load ptr, ptr %4, align 8, !tbaa !32, !noalias !8 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.q
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !8
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #17, !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !8
  br label %.critedge78.i.i

bb.n:                                             ; preds = %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.body.i.i:                                        ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !8
  br label %bb.aj

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.az = fdiv double %i.m, %i.e                  ; 3 uses
  %i.ba = fcmp ugt double %i.az, %i.k
  br i1 %i.ba, label %.preheader.2.i.i, label %bb.e

.preheader.2.i.i:                                 ; preds = %.preheader.1.i.i
  %i.bb = fdiv double %i.az, %i.e                 ; 3 uses
  %i.bc = fcmp ugt double %i.bb, %i.k
  br i1 %i.bc, label %.preheader.3.i.i, label %bb.e

.preheader.3.i.i:                                 ; preds = %.preheader.2.i.i
  %i.bd = fdiv double %i.bb, %i.e                 ; 3 uses
  %i.be = fcmp ugt double %i.bd, %i.k
  br i1 %i.be, label %.preheader.4.i.i, label %bb.e

.preheader.4.i.i:                                 ; preds = %.preheader.3.i.i
  %i.bf = fdiv double %i.bd, %i.e                 ; 3 uses
  %i.bg = fcmp ugt double %i.bf, %i.k
  br i1 %i.bg, label %.preheader.5.i.i, label %bb.e

.preheader.5.i.i:                                 ; preds = %.preheader.4.i.i
  %i.bh = fdiv double %i.bf, %i.e                 ; 3 uses
  %i.bi = fcmp ugt double %i.bh, %i.k
  br i1 %i.bi, label %.preheader.6.i.i, label %bb.e

.preheader.6.i.i:                                 ; preds = %.preheader.5.i.i
  %i.bj = fdiv double %i.bh, %i.e                 ; 3 uses
  %i.bk = fcmp ugt double %i.bj, %i.k
  br i1 %i.bk, label %.preheader.7.i.i, label %bb.e

.preheader.7.i.i:                                 ; preds = %.preheader.6.i.i
  %i.bl = fdiv double %i.bj, %i.e                 ; 2 uses
  %i.bm = fcmp ugt double %i.bl, %i.k
  br i1 %i.bm, label %.critedge.i.i, label %bb.e

.critedge.i.i:                                    ; preds = %.preheader.7.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, double noundef %.052.i.i)
          to label %_ZNSolsEd.exit81.i.i unwind label %bb.o, !noalias !8 ; 0 uses

bb.o:                                             ; preds = %.critedge.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.p:                                             ; preds = %bb.d
  %i.bq = fcmp olt double %.052.i.i, 1.000000e-02
  br i1 %i.bq, label %.preheader129.preheader.i.i, label %.invoke.i.i

.preheader129.preheader.i.i:                      ; preds = %bb.p
  %i.br = fmul nnan double %i.e, %.052.i.i        ; 3 uses
  %i.bs = fcmp ult double %i.br, 1.000000e+00
  br i1 %i.bs, label %.preheader129.1.i.i, label %bb.q

bb.q:                                             ; preds = %.preheader129.7.i.i, %.preheader129.6.i.i, %.preheader129.5.i.i, %.preheader129.4.i.i, %.preheader129.3.i.i, %.preheader129.2.i.i, %.preheader129.1.i.i, %.preheader129.preheader.i.i
  %i.bt = phi i64 [ -1, %.preheader129.preheader.i.i ], [ -2, %.preheader129.1.i.i ], [ -3, %.preheader129.2.i.i ], [ -4, %.preheader129.3.i.i ], [ -5, %.preheader129.4.i.i ], [ -6, %.preheader129.5.i.i ], [ -7, %.preheader129.6.i.i ], [ -8, %.preheader129.7.i.i ]
  %.lcssa139.i.i = phi double [ %i.br, %.preheader129.preheader.i.i ], [ %i.df, %.preheader129.1.i.i ], [ %i.dh, %.preheader129.2.i.i ], [ %i.dj, %.preheader129.3.i.i ], [ %i.dl, %.preheader129.4.i.i ], [ %i.dn, %.preheader129.5.i.i ], [ %i.dp, %.preheader129.6.i.i ], [ %i.dr, %.preheader129.7.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, double noundef %.lcssa139.i.i)
          to label %_ZNSolsEd.exit82.i.i unwind label %bb.z, !noalias !8 ; 0 uses

_ZNSolsEd.exit82.i.i:                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !8
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.bw, ptr %5, align 8, !tbaa !11, !alias.scope !39, !noalias !8
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !15, !alias.scope !39, !noalias !8
  store i8 0, ptr %i.bw, align 8, !tbaa !18, !alias.scope !39, !noalias !8
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %13 = load ptr, ptr %12, align 8, !tbaa !26, !noalias !40 ; 3 uses
  %.not.i.not.i.i83.i.i = icmp eq ptr %13, null
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !40 ; 2 uses
  %14 = icmp ugt ptr %13, %i.bz
  %.08.i.i.i84.i.i = select i1 %14, ptr %13, ptr %i.bz ; 2 uses
  %.not5.i.i85.i.i = icmp eq ptr %.08.i.i.i84.i.i, null
  %.not.i.i86.i.i = select i1 %.not.i.not.i.i83.i.i, i1 true, i1 %.not5.i.i85.i.i
  br i1 %.not.i.i86.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZNSolsEd.exit82.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !31, !noalias !40 ; 2 uses
  %i.cc = ptrtoint ptr %.08.i.i.i84.i.i to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.cb, i64 noundef %i.ce)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit92.i.i unwind label %bb.s, !noalias !8 ; 0 uses

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load ptr, ptr %5, align 8, !tbaa !32, !alias.scope !39, !noalias !8 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bw
  br i1 %i.ci, label %.body90.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87.i.i: ; preds = %bb.s
  %i.cj = load i64, ptr %i.bw, align 8, !tbaa !18, !alias.scope !39, !noalias !8
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #17, !noalias !8
  br label %.body90.i.i

bb.t:                                             ; preds = %_ZNSolsEd.exit82.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.cl)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit92.i.i unwind label %bb.s, !noalias !8

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit92.i.i: ; preds = %bb.t, %bb.r
  %i.cm = load ptr, ptr %7, align 8, !tbaa !32, !noalias !8 ; 6 uses
  %i.cn = icmp eq ptr %i.cm, %i.b
  %i.co = load ptr, ptr %5, align 8, !tbaa !32, !noalias !8 ; 5 uses
  %i.cp = icmp eq ptr %i.co, %i.bw                ; 2 uses
  br i1 %i.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i99.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i93.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i99.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit92.i.i
  br i1 %i.cp, label %bb.u, label %.thread.i100.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i93.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit92.i.i
  br i1 %i.cp, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i94.i.i

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i93.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i99.i.i
  %i.cq = load i64, ptr %i.bx, align 8, !tbaa !15, !noalias !8 ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cr)
  switch i64 %i.cq, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i97.i.i
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !18, !noalias !8
  store i8 %i.cs, ptr %i.cm, align 1, !tbaa !18, !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i97.i.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr align 1 %i.co, i64 %i.cq, i1 false), !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i97.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i97.i.i: ; preds = %bb.w, %bb.v, %bb.u
  %i.ct = load i64, ptr %i.bx, align 8, !tbaa !15, !noalias !8 ; 2 uses
  store i64 %i.ct, ptr %i.c, align 8, !tbaa !15, !noalias !8
  %i.cu = load ptr, ptr %7, align 8, !tbaa !32, !noalias !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  store i8 0, ptr %i.cv, align 1, !tbaa !18, !noalias !8
  %.pre.i98.i.i = load ptr, ptr %5, align 8, !tbaa !32, !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit101.i.i

.thread.i100.i.i:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i99.i.i
  store ptr %i.co, ptr %7, align 8, !tbaa !32, !noalias !8
  %i.cw = load <2 x i64>, ptr %i.bx, align 8, !tbaa !18, !noalias !8
  store <2 x i64> %i.cw, ptr %i.c, align 8, !tbaa !18, !noalias !8
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i94.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i93.i.i
  %i.cx = load i64, ptr %i.b, align 8, !tbaa !18, !noalias !8
  store ptr %i.co, ptr %7, align 8, !tbaa !32, !noalias !8
  %i.cy = load <2 x i64>, ptr %i.bx, align 8, !tbaa !18, !noalias !8
  store <2 x i64> %i.cy, ptr %i.c, align 8, !tbaa !18, !noalias !8
  %.not.i95.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i95.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i94.i.i
  store ptr %i.cm, ptr %5, align 8, !tbaa !32, !noalias !8
  store i64 %i.cx, ptr %i.bw, align 8, !tbaa !18, !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit101.i.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i94.i.i, %.thread.i100.i.i
  store ptr %i.bw, ptr %5, align 8, !tbaa !32, !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit101.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit101.i.i: ; preds = %bb.y, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i97.i.i
  %i.cz = phi ptr [ %.pre.i98.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i97.i.i ], [ %i.cm, %bb.x ], [ %i.bw, %bb.y ]
  store i64 0, ptr %i.bx, align 8, !tbaa !15, !noalias !8
  store i8 0, ptr %i.cz, align 1, !tbaa !18, !noalias !8
  %i.da = load ptr, ptr %5, align 8, !tbaa !32, !noalias !8 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bw
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit101.i.i
  %i.dc = load i64, ptr %i.bw, align 8, !tbaa !18, !noalias !8
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #17, !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit101.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !8
  br label %.critedge78.i.i

bb.z:                                             ; preds = %bb.q
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.body90.i.i:                                      ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !8
  br label %bb.aj

.preheader129.1.i.i:                              ; preds = %.preheader129.preheader.i.i
  %i.df = fmul nnan double %i.e, %i.br            ; 3 uses
  %i.dg = fcmp ult double %i.df, 1.000000e+00
  br i1 %i.dg, label %.preheader129.2.i.i, label %bb.q

.preheader129.2.i.i:                              ; preds = %.preheader129.1.i.i
  %i.dh = fmul nnan double %i.e, %i.df            ; 3 uses
  %i.di = fcmp ult double %i.dh, 1.000000e+00
  br i1 %i.di, label %.preheader129.3.i.i, label %bb.q

.preheader129.3.i.i:                              ; preds = %.preheader129.2.i.i
  %i.dj = fmul nnan double %i.e, %i.dh            ; 3 uses
  %i.dk = fcmp ult double %i.dj, 1.000000e+00
  br i1 %i.dk, label %.preheader129.4.i.i, label %bb.q

.preheader129.4.i.i:                              ; preds = %.preheader129.3.i.i
  %i.dl = fmul nnan double %i.e, %i.dj            ; 3 uses
  %i.dm = fcmp ult double %i.dl, 1.000000e+00
  br i1 %i.dm, label %.preheader129.5.i.i, label %bb.q

.preheader129.5.i.i:                              ; preds = %.preheader129.4.i.i
  %i.dn = fmul nnan double %i.e, %i.dl            ; 3 uses
  %i.do = fcmp ult double %i.dn, 1.000000e+00
  br i1 %i.do, label %.preheader129.6.i.i, label %bb.q

.preheader129.6.i.i:                              ; preds = %.preheader129.5.i.i
  %i.dp = fmul nnan double %i.e, %i.dn            ; 3 uses
  %i.dq = fcmp ult double %i.dp, 1.000000e+00
  br i1 %i.dq, label %.preheader129.7.i.i, label %bb.q

.preheader129.7.i.i:                              ; preds = %.preheader129.6.i.i
  %i.dr = fmul nnan double %i.e, %i.dp            ; 2 uses
  %i.ds = fcmp ult double %i.dr, 1.000000e+00
  br i1 %i.ds, label %.invoke.i.i, label %bb.q

bb.aa:                                            ; preds = %.invoke.i.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.invoke.i.i:                                      ; preds = %.preheader129.7.i.i, %bb.p
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.du, double noundef %.052.i.i)
          to label %_ZNSolsEd.exit81.i.i unwind label %bb.aa, !noalias !8 ; 0 uses

_ZNSolsEd.exit81.i.i:                             ; preds = %.invoke.i.i, %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !8
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.dw, ptr %6, align 8, !tbaa !11, !alias.scope !47, !noalias !8
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 0, ptr %i.dx, align 8, !tbaa !15, !alias.scope !47, !noalias !8
  store i8 0, ptr %i.dw, align 8, !tbaa !18, !alias.scope !47, !noalias !8
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %16 = load ptr, ptr %15, align 8, !tbaa !26, !noalias !48 ; 3 uses
  %.not.i.not.i.i107.i.i = icmp eq ptr %16, null
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !48 ; 2 uses
  %17 = icmp ugt ptr %16, %i.dz
  %.08.i.i.i108.i.i = select i1 %17, ptr %16, ptr %i.dz ; 2 uses
  %.not5.i.i109.i.i = icmp eq ptr %.08.i.i.i108.i.i, null
  %.not.i.i110.i.i = select i1 %.not.i.not.i.i107.i.i, i1 true, i1 %.not5.i.i109.i.i
  br i1 %.not.i.i110.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %_ZNSolsEd.exit81.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !31, !noalias !48 ; 2 uses
  %i.ec = ptrtoint ptr %.08.i.i.i108.i.i to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.eb, i64 noundef %i.ee)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit116.i.i unwind label %bb.ac, !noalias !8 ; 0 uses

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = load ptr, ptr %6, align 8, !tbaa !32, !alias.scope !47, !noalias !8 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.dw
  br i1 %i.ei, label %.body114.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i111.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i111.i.i: ; preds = %bb.ac
  %i.ej = load i64, ptr %i.dw, align 8, !tbaa !18, !alias.scope !47, !noalias !8
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #17, !noalias !8
  br label %.body114.i.i

bb.ad:                                            ; preds = %_ZNSolsEd.exit81.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.el)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit116.i.i unwind label %bb.ac, !noalias !8

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit116.i.i: ; preds = %bb.ad, %bb.ab
  %i.em = load ptr, ptr %7, align 8, !tbaa !32, !noalias !8 ; 6 uses
  %i.en = icmp eq ptr %i.em, %i.b
  %i.eo = load ptr, ptr %6, align 8, !tbaa !32, !noalias !8 ; 5 uses
  %i.ep = icmp eq ptr %i.eo, %i.dw                ; 2 uses
  br i1 %i.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i123.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i117.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i123.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit116.i.i
  br i1 %i.ep, label %bb.ae, label %.thread.i124.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i117.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit116.i.i
  br i1 %i.ep, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i118.i.i

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i117.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i123.i.i
  %i.eq = load i64, ptr %i.dx, align 8, !tbaa !15, !noalias !8 ; 3 uses
  %i.er = icmp ult i64 %i.eq, 16
  call void @llvm.assume(i1 %i.er)
  switch i64 %i.eq, label %bb.ag [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i121.i.i
    i64 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !18, !noalias !8
  store i8 %i.es, ptr %i.em, align 1, !tbaa !18, !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i121.i.i

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr align 1 %i.eo, i64 %i.eq, i1 false), !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i121.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i121.i.i: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.et = load i64, ptr %i.dx, align 8, !tbaa !15, !noalias !8 ; 2 uses
  store i64 %i.et, ptr %i.c, align 8, !tbaa !15, !noalias !8
  %i.eu = load ptr, ptr %7, align 8, !tbaa !32, !noalias !8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.et
  store i8 0, ptr %i.ev, align 1, !tbaa !18, !noalias !8
  %.pre.i122.i.i = load ptr, ptr %6, align 8, !tbaa !32, !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit125.i.i

.thread.i124.i.i:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i123.i.i
  store ptr %i.eo, ptr %7, align 8, !tbaa !32, !noalias !8
  %i.ew = load <2 x i64>, ptr %i.dx, align 8, !tbaa !18, !noalias !8
  store <2 x i64> %i.ew, ptr %i.c, align 8, !tbaa !18, !noalias !8
  br label %bb.ai

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i118.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i117.i.i
  %i.ex = load i64, ptr %i.b, align 8, !tbaa !18, !noalias !8
  store ptr %i.eo, ptr %7, align 8, !tbaa !32, !noalias !8
  %i.ey = load <2 x i64>, ptr %i.dx, align 8, !tbaa !18, !noalias !8
  store <2 x i64> %i.ey, ptr %i.c, align 8, !tbaa !18, !noalias !8
  %.not.i119.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i119.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i118.i.i
  store ptr %i.em, ptr %6, align 8, !tbaa !32, !noalias !8
  store i64 %i.ex, ptr %i.dw, align 8, !tbaa !18, !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit125.i.i

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i118.i.i, %.thread.i124.i.i
  store ptr %i.dw, ptr %6, align 8, !tbaa !32, !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit125.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit125.i.i: ; preds = %bb.ai, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i121.i.i
  %i.ez = phi ptr [ %.pre.i122.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i121.i.i ], [ %i.em, %bb.ah ], [ %i.dw, %bb.ai ]
  store i64 0, ptr %i.dx, align 8, !tbaa !15, !noalias !8
  store i8 0, ptr %i.ez, align 1, !tbaa !18, !noalias !8
  %i.fa = load ptr, ptr %6, align 8, !tbaa !32, !noalias !8 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.dw
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit125.i.i
  %i.fc = load i64, ptr %i.dw, align 8, !tbaa !18, !noalias !8
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #17, !noalias !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit125.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !8
  br label %.critedge78.i.i

.critedge78.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.0.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i ], [ %.050136.lcssa.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i.i ] ; 4 uses
  %i.fe = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !8 ; 2 uses
  store ptr %i.fe, ptr %3, align 8, !tbaa !49, !noalias !8
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !8
  %i.fg = getelementptr i8, ptr %i.fe, i64 -24
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !8
  %i.fi = getelementptr inbounds i8, ptr %3, i64 %i.fh
  store ptr %i.ff, ptr %i.fi, align 8, !tbaa !49, !noalias !8
  %i.fj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !8
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !49, !noalias !8
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fl, align 8, !tbaa !49, !noalias !8
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !32, !noalias !8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.critedge78.i.i
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !18, !noalias !8
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #17, !noalias !8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

.body114.i.i:                                     ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i111.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !8
  br label %bb.aj

bb.aj:                                            ; preds = %.body114.i.i, %bb.aa, %.body90.i.i, %bb.z, %bb.o, %.body.i.i, %bb.n, %bb.c
  %.pn74.pn.i.i = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.eg, %.body114.i.i ], [ %i.ay, %bb.n ], [ %i.dt, %bb.aa ], [ %i.bp, %bb.o ], [ %i.aa, %.body.i.i ], [ %i.cg, %.body90.i.i ], [ %i.de, %bb.z ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #16, !noalias !8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !8
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.critedge78.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fl, align 8, !tbaa !49, !noalias !8
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fs) #16, !noalias !8
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !8 ; 2 uses
  store ptr %i.ft, ptr %3, align 8, !tbaa !49, !noalias !8
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !8
  %i.fv = getelementptr i8, ptr %i.ft, i64 -24
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !8
  %i.fx = getelementptr inbounds i8, ptr %3, i64 %i.fw
  store ptr %i.fu, ptr %i.fx, align 8, !tbaa !49, !noalias !8
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.fy, align 8, !tbaa !51, !noalias !8
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.fz) #16, !noalias !8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16, !noalias !8
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.ga = icmp eq i64 %.0.i, 0
  br i1 %i.ga, label %._crit_edge.i.i.i.i, label %bb.ak

._crit_edge.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.gb, ptr %8, align 8, !tbaa !11, !alias.scope !53, !noalias !8
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.gc, align 8, !tbaa !15, !alias.scope !53, !noalias !8
  store i8 0, ptr %i.gb, align 8, !tbaa !18, !alias.scope !53, !noalias !8
  br label %_ZN9benchmark12_GLOBAL__N_116ExponentToPrefixB5cxx11Elb.exit.i

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.gd = icmp sgt i64 %.0.i, 0                   ; 2 uses
  %i.ge = add nsw i64 %.0.i, -1
  %i.gf = xor i64 %.0.i, -1
  %i.gg = select i1 %i.gd, i64 %i.ge, i64 %i.gf
  %_ZN9benchmark12_GLOBAL__N_112kBigIECUnitsE._ZN9benchmark12_GLOBAL__N_111kBigSIUnitsE.i.i = select i1 %i.d, ptr @_ZN9benchmark12_GLOBAL__N_112kBigIECUnitsE, ptr @_ZN9benchmark12_GLOBAL__N_111kBigSIUnitsE
  %i.gh = select i1 %i.gd, ptr %_ZN9benchmark12_GLOBAL__N_112kBigIECUnitsE._ZN9benchmark12_GLOBAL__N_111kBigSIUnitsE.i.i, ptr @_ZN9benchmark12_GLOBAL__N_113kSmallSIUnitsE
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gg
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !56, !noalias !57 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.gk, ptr %8, align 8, !tbaa !11, !alias.scope !53, !noalias !8
  %i.gl = icmp eq ptr %i.gj, null
  br i1 %i.gl, label %.noexc23.i.i, label %bb.al

.noexc23.i.i:                                     ; preds = %bb.ak
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #18
          to label %.noexc9.i unwind label %bb.as, !noalias !8

.noexc9.i:                                        ; preds = %.noexc23.i.i
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.gm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gj) #16, !noalias !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16, !noalias !57
  store i64 %i.gm, ptr %i.a, align 8, !tbaa !58, !noalias !57
  %i.gn = icmp ugt i64 %i.gm, 15
  br i1 %i.gn, label %.noexc.i22.i.i, label %._crit_edge.i.i21.i.i

.noexc.i22.i.i:                                   ; preds = %bb.al
  %i.go = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10.i unwind label %bb.as, !noalias !8 ; 2 uses
end_hunk_0
