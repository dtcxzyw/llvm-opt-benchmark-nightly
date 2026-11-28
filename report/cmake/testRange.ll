Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/testRange?download=true
inline.NumInlined: 391
inline.NumDeleted: 210
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator" = type { i8 }
%class.cmRange.4 = type { %"class.RangeIterators::FilterIterator", %"class.RangeIterators::FilterIterator" }
%"class.RangeIterators::FilterIterator" = type <{ %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator", [8 x i8] }>
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.13" = type { i8 }
%"class.std::allocator.9" = type { i8 }

$_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ESt16initializer_listIS5_ERKS6_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_ = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ = comdat any

@constinit = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 4
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.6 = private unnamed_addr constant [92 x i8] c"ASSERT_TRUE(cmMakeRange(testData).any_of([](int n) { return n % 3 == 0; })) failed on line \00", align 1
@.str.7 = private unnamed_addr constant [88 x i8] c"ASSERT_TRUE(cmMakeRange(testData).all_of([](int n) { return n < 11; })) failed on line \00", align 1
@.str.8 = private unnamed_addr constant [89 x i8] c"ASSERT_TRUE(cmMakeRange(testData).none_of([](int n) { return n > 11; })) failed on line \00", align 1
@constinit.9 = private unnamed_addr constant [5 x i32] [i32 2, i32 4, i32 6, i32 8, i32 10], align 4
@.str.10 = private unnamed_addr constant [117 x i8] c"ASSERT_TRUE(cmMakeRange(testData).filter([](int n) { return n % 2 == 0; }) == cmMakeRange(evenData)) failed on line \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.16 = private unnamed_addr constant [143 x i8] c"ASSERT_TRUE(cmMakeRange(testData) .transform([](int n) { return std::to_string(n); }) .retreat(5) == cmMakeRange(stringRange)) failed on line \00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z9testRangeiPPc(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 10 uses
  %i.a = alloca [5 x i32], align 4                ; 5 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %class.cmRange.4, align 8           ; 7 uses
  %5 = alloca %"class.std::vector.7", align 8     ; 8 uses
  %6 = alloca [5 x %"class.std::__cxx11::basic_string"], align 8 ; 30 uses
  %7 = alloca %"class.std::allocator.13", align 1 ; 5 uses
  %8 = alloca %"class.std::allocator.13", align 1 ; 5 uses
  %9 = alloca %"class.std::allocator.13", align 1 ; 5 uses
  %10 = alloca %"class.std::allocator.13", align 1 ; 5 uses
  %11 = alloca %"class.std::allocator.13", align 1 ; 5 uses
  %12 = alloca %"class.std::allocator.9", align 1 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18 ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(40) @constinit, i64 40, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.e = tail call fastcc noundef zeroext i1 @"_ZNK7cmRangeIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEE6any_ofIZ9testRangeiPPcE3$_0EEbT_"(ptr nonnull %i.b, ptr nonnull %i.c)
  br i1 %i.e, label %bb.d, label %bb.c

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146.invoke, %.invoke, %bb.g, %bb.e, %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit175

bb.c:                                             ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.6, i64 noundef 91)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146.invoke unwind label %bb.b ; 0 uses

bb.d:                                             ; preds = %bb.a
  %i.h = tail call fastcc noundef zeroext i1 @"_ZNK7cmRangeIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEE6all_ofIZ9testRangeiPPcE3$_1EEbT_"(ptr nonnull %i.b, ptr nonnull %i.c)
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.7, i64 noundef 87)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146.invoke unwind label %bb.b ; 0 uses

bb.f:                                             ; preds = %bb.d
  %i.j = tail call fastcc noundef zeroext i1 @"_ZNK7cmRangeIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEE7none_ofIZ9testRangeiPPcE3$_2EEbT_"(ptr nonnull %i.b, ptr nonnull %i.c)
  br i1 %i.j, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 88)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146.invoke unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146.invoke: ; preds = %bb.g, %bb.e, %bb.c
  %i.l = phi i32 [ 25, %bb.e ], [ 24, %bb.c ], [ 26, %bb.g ]
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.l)
          to label %.invoke unwind label %bb.b

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146.invoke
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i8 noundef signext 10)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit172 unwind label %bb.b ; 0 uses

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, ptr noundef nonnull align 4 dereferenceable(20) @constinit.9, i64 20, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull %i.a, i64 5, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.lr.ph.i.i.i unwind label %bb.k

.lr.ph.i.i.i:                                     ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.o = load i32, ptr %i.b, align 4, !tbaa !11, !noalias !35
  %i.p = and i32 %i.o, 1
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.split.loop.exit251, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %.sroa.01.0.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.r = load i32, ptr %.sroa.01.0.i.ptr.1, align 4, !tbaa !11, !noalias !35
  %i.s = and i32 %i.r, 1
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.split.loop.exit251, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %.sroa.01.0.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load i32, ptr %.sroa.01.0.i.ptr.2, align 4, !tbaa !11, !noalias !35
  %i.v = and i32 %i.u, 1
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.split.loop.exit251, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %.sroa.01.0.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.x = load i32, ptr %.sroa.01.0.i.ptr.3, align 4, !tbaa !11, !noalias !35
  %i.y = and i32 %i.x, 1
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.split.loop.exit251, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  %.sroa.01.0.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load i32, ptr %.sroa.01.0.i.ptr.4, align 4, !tbaa !11, !noalias !35
  %i.ab = and i32 %i.aa, 1
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.split.loop.exit251, label %.lr.ph.i.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %.lr.ph.i.i.i.4
  %i.ad = load i32, ptr %i.d, align 4, !tbaa !11, !noalias !35
  %i.ae = and i32 %i.ad, 1
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.split.loop.exit251, label %.lr.ph.i.i.i.6

.lr.ph.i.i.i.6:                                   ; preds = %.lr.ph.i.i.i.5
  %.sroa.01.0.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ag = load i32, ptr %.sroa.01.0.i.ptr.6, align 4, !tbaa !11, !noalias !35
  %i.ah = and i32 %i.ag, 1
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.split.loop.exit251, label %.lr.ph.i.i.i.7

.lr.ph.i.i.i.7:                                   ; preds = %.lr.ph.i.i.i.6
  %.sroa.01.0.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.aj = load i32, ptr %.sroa.01.0.i.ptr.7, align 4, !tbaa !11, !noalias !35
  %i.ak = and i32 %i.aj, 1
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.split.loop.exit251, label %.lr.ph.i.i.i.8

.lr.ph.i.i.i.8:                                   ; preds = %.lr.ph.i.i.i.7
  %.sroa.01.0.i.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.am = load i32, ptr %.sroa.01.0.i.ptr.8, align 4, !tbaa !11, !noalias !35
  %i.an = and i32 %i.am, 1
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.split.loop.exit251, label %.lr.ph.i.i.i.9

.lr.ph.i.i.i.9:                                   ; preds = %.lr.ph.i.i.i.8
  %.sroa.01.0.i.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ap = load i32, ptr %.sroa.01.0.i.ptr.9, align 4, !tbaa !11, !noalias !35
  %i.aq = and i32 %i.ap, 1
  %i.ar = icmp eq i32 %i.aq, 0
  %spec.select = select i1 %i.ar, i64 36, i64 40
  br label %.split.loop.exit251

.split.loop.exit251:                              ; preds = %.lr.ph.i.i.i.9, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.6, %.lr.ph.i.i.i.7, %.lr.ph.i.i.i.8
  %.sroa.01.0.i.idx.pn = phi i64 [ %spec.select, %.lr.ph.i.i.i.9 ], [ 0, %.lr.ph.i.i.i ], [ 4, %.lr.ph.i.i.i.1 ], [ 8, %.lr.ph.i.i.i.2 ], [ 12, %.lr.ph.i.i.i.3 ], [ 16, %.lr.ph.i.i.i.4 ], [ 20, %.lr.ph.i.i.i.5 ], [ 24, %.lr.ph.i.i.i.6 ], [ 28, %.lr.ph.i.i.i.7 ], [ 32, %.lr.ph.i.i.i.8 ]
  %.sroa.01.1.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.0.i.idx.pn
  store ptr %.sroa.01.1.i, ptr %4, align 8, !tbaa !14, !alias.scope !35
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %.sroa.44.0..sroa_idx.i, align 8, !tbaa !14, !alias.scope !35
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.c, ptr %i.as, align 8, !tbaa !14, !alias.scope !35
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.c, ptr %.sroa.46.0..sroa_idx.i, align 8, !tbaa !14, !alias.scope !35
  %i.at = load ptr, ptr %2, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14
  %i.aw = call fastcc noundef zeroext i1 @"_ZeqIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EES9_EbRK7cmRangeIT_ERKSE_IT0_E"(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr %i.at, ptr %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %i.aw, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.split.loop.exit251
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.10, i64 noundef 116)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152: ; preds = %bb.i
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 30)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i8 noundef signext 10)
          to label %bb.aa unwind label %bb.l      ; 0 uses

bb.k:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit169

bb.l:                                             ; preds = %bb.i, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.m:                                             ; preds = %.split.loop.exit251
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.n unwind label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.o unwind label %.thread278

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.p unwind label %.thread284

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %.thread288

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.r unwind label %13

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ESt16initializer_listIS5_ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %6, i64 5, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !19 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !10
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !19 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !10
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !19 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !10
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !19 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !10
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  %i.ce = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !10
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cj = load ptr, ptr %5, align 8, !tbaa !36
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !36
  %i.cm = call fastcc noundef zeroext i1 @"_ZeqIN14RangeIterators17TransformIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_4EENS3_IPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ISJ_SaISJ_EEEEEbRK7cmRangeIT_ERKSP_IT0_E"(ptr nonnull %i.b, ptr nonnull %i.d, ptr %i.cj, ptr %i.cl)
  br i1 %i.cm, label %bb.y, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.16, i64 noundef 142)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158: ; preds = %bb.t
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 35)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.co, i8 noundef signext 10)
          to label %bb.y unwind label %bb.x       ; 0 uses

.thread:                                          ; preds = %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.sink.split

.thread278:                                       ; preds = %bb.n
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader

.thread284:                                       ; preds = %bb.o
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.thread288:                                       ; preds = %bb.p
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.sink.split.sink.split

bb.v:                                             ; preds = %bb.r
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !19 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.v
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !10
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !19 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !10
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.1
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !19 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.1
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !10
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.2
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !19 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.2
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !10
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.3
  %i.dt = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %.thread292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.3
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !10
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #20
  br label %.thread292

.thread292:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.loopexit.sink.split

13:                                               ; preds = %bb.q
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %.preheader.preheader.sink.split.sink.split

.preheader.preheader.sink.split.sink.split:       ; preds = %13, %.thread288
  %.211283.ph.ph = phi ptr [ %i.bf, %13 ], [ %i.be, %.thread288 ]
  %.pn38.pn.pn.pn282.ph.ph = phi { ptr, i32 } [ %14, %13 ], [ %i.ct, %.thread288 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.w

bb.w:                                             ; preds = %.preheader.preheader.sink.split.sink.split, %.thread284
  %.211283.ph = phi ptr [ %i.bd, %.thread284 ], [ %.211283.ph.ph, %.preheader.preheader.sink.split.sink.split ]
  %.pn38.pn.pn.pn282.ph = phi { ptr, i32 } [ %i.cs, %.thread284 ], [ %.pn38.pn.pn.pn282.ph.ph, %.preheader.preheader.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.w, %.thread278
  %.211283 = phi ptr [ %i.bc, %.thread278 ], [ %.211283.ph, %bb.w ]
  %.pn38.pn.pn.pn282 = phi { ptr, i32 } [ %i.cr, %.thread278 ], [ %.pn38.pn.pn.pn282.ph, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.dy = phi ptr [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %.211283, %.preheader.preheader ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -32 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !19 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dy, i64 -16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %.preheader
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !10
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  %i.ef = icmp eq ptr %i.dz, %6
  br i1 %i.ef, label %.loopexit, label %.preheader

.loopexit.sink.split:                             ; preds = %.thread, %.thread292
  %.pn38.pn.pn.pn.pn249.ph = phi { ptr, i32 } [ %i.cu, %.thread292 ], [ %i.cq, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %.loopexit.sink.split
  %.pn38.pn.pn.pn.pn249 = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn249.ph, %.loopexit.sink.split ], [ %.pn38.pn.pn.pn282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.z

bb.x:                                             ; preds = %bb.t, %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #19
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, %bb.u
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.aa

bb.z:                                             ; preds = %bb.x, %.loopexit
  %.pn46.pn = phi { ptr, i32 } [ %i.eg, %bb.x ], [ %.pn38.pn.pn.pn.pn249, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ac

bb.aa:                                            ; preds = %bb.j, %bb.y
  %i.eh = load ptr, ptr %2, align 8, !tbaa !22    ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !23
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit172

bb.ac:                                            ; preds = %bb.z, %bb.l
  %.pn49 = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %.pn46.pn, %bb.z ] ; 2 uses
  %i.en = load ptr, ptr %2, align 8, !tbaa !22    ; 3 uses
  %.not.i.i.i167 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorIiSaIiEED2Ev.exit169, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !23
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit169

_ZNSt6vectorIiSaIiEED2Ev.exit169:                 ; preds = %bb.ad, %bb.ac, %bb.k
  %.pn49.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %.pn49, %bb.ac ], [ %.pn49, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit175

_ZNSt6vectorIiSaIiEED2Ev.exit172:                 ; preds = %.invoke, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #20
  ret i32 0

_ZNSt6vectorIiSaIiEED2Ev.exit175:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit169, %bb.b
  %.pn52 = phi { ptr, i32 } [ %i.f, %bb.b ], [ %.pn49.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit169 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #20
  resume { ptr, i32 } %.pn52
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx = shl nuw nsw i64 %2, 2                   ; 4 uses
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.thread.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

.thread.i:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.a = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !23
  br label %bb.c

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.c = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #18
          to label %.noexc3 unwind label %bb.d    ; 4 uses

.noexc3:                                          ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  store ptr %i.c, ptr %0, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !23
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.b, label %bb.a, !prof !37

bb.a:                                             ; preds = %.noexc3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.c, ptr align 4 %1, i64 %.idx, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %.noexc3
  %i.f = load i32, ptr %1, align 4, !tbaa !11
  store i32 %i.f, ptr %i.c, align 4, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %.thread.i
  %i.g = phi ptr [ %i.d, %bb.a ], [ %i.a, %.thread.i ], [ %i.d, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !38
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.j, null
  br i1 %.not.i.i4, label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #20
  br label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit:             ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @"_ZNK7cmRangeIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEE6any_ofIZ9testRangeiPPcE3$_0EEbT_"(ptr %.0.val, ptr %.8.val) unnamed_addr #4 align 2 {
bb.a:
  %i.a = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 4                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.f = and i64 %i.c, -16
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.0.val, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i
  %.052.i.i.i.i.i = phi i64 [ %i.s, %bb.e ], [ %i.d, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i = phi ptr [ %i.r, %bb.e ], [ %.0.val, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.val.i.i.i.i.i.i = load i32, ptr %.sroa.032.051.i.i.i.i.i, align 4, !tbaa !11
  %i.g = srem i32 %.val.i.i.i.i.i.i, 3
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_0EEbT_SD_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 4
  %.val.i16.i.i.i.i.i = load i32, ptr %i.i, align 4, !tbaa !11
  %i.j = srem i32 %.val.i16.i.i.i.i.i, 3
end_hunk_0
