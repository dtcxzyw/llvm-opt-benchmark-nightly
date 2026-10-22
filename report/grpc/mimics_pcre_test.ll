Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/mimics_pcre_test?download=true
inline.NumInlined: 98
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TestRegisterer = type { i8 }
%"struct.re2::PCRETest" = type { ptr, i8 }
%"class.re2::StringPiece" = type { ptr, i64 }
%class.LogMessageFatal = type { %class.LogMessage }
%class.LogMessage = type { i8, %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZN15LogMessageFatalD2Ev = comdat any

$_ZN10LogMessageC2EPKci = comdat any

$__clang_call_terminate = comdat any

$_ZN10LogMessage5FlushEv = comdat any

@_ZN3re222rMimicsPCRESimpleTestsE = dso_local local_unnamed_addr global %class.TestRegisterer zeroinitializer, align 1
@.str = private unnamed_addr constant [23 x i8] c"MimicsPCRE.SimpleTests\00", align 1
@_ZN3re2L5testsE = internal unnamed_addr constant [31 x %"struct.re2::PCRETest"] [%"struct.re2::PCRETest" { ptr @.str.7, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.8, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.9, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.10, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.11, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.12, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.13, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.14, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.15, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.16, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.17, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.18, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.19, i8 0 }, %"struct.re2::PCRETest" { ptr @.str.20, i8 0 }, %"struct.re2::PCRETest" { ptr @.str.21, i8 0 }, %"struct.re2::PCRETest" { ptr @.str.22, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.23, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.23, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.24, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.25, i8 0 }, %"struct.re2::PCRETest" { ptr @.str.18, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.26, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.27, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.28, i8 0 }, %"struct.re2::PCRETest" { ptr @.str.29, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.30, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.31, i8 0 }, %"struct.re2::PCRETest" { ptr @.str.32, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.33, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.34, i8 1 }, %"struct.re2::PCRETest" { ptr @.str.35, i8 1 }], align 16
@.str.1 = private unnamed_addr constant [74 x i8] c"/opt-bench/work/grpc/grpc/third_party/re2/re2/testing/mimics_pcre_test.cc\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Check failed: re != NULL\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Check failed: (t.should_match) == (re->MimicsPCRE())\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"latin1\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"utf\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"(a|b)c\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"(a*|b)c\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"(a|b*)c\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"a(b|c)d\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"a(()|())c\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"ab*c\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"ab+c\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"a(b*|c*)d\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\\W\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"\\W{1,2}\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\\d\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"(a*)*\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"x(a*)*y\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"(a*)+\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"(a+)*\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"(a+)+\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\\A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\\z\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"(?m)^\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"(?m)$\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"(?-m)^\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"(?-m)$\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"(?m)\\A\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"(?m)\\z\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"(?-m)\\A\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"(?-m)\\z\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_mimics_pcre_test.cc, ptr null }]

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3re221MimicsPCRESimpleTestsEv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.re2::StringPiece", align 8  ; 9 uses
  %1 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  %2 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %_ZN3re211StringPieceC2EPKc.exit

bb.b:                                             ; preds = %bb.l
  ret void

_ZN3re211StringPieceC2EPKc.exit:                  ; preds = %bb.a, %bb.l
  %.01626 = phi i64 [ 0, %bb.a ], [ %i.w, %bb.l ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @_ZN3re2L5testsE, i64 %.01626 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !26  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  store ptr %i.c, ptr %0, align 8, !tbaa !28
  %i.d = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #15
  store i64 %i.d, ptr %i.a, align 8, !tbaa !29
  %i.e = call noundef ptr @_ZN3re26Regexp5ParseERKNS_11StringPieceENS0_10ParseFlagsEPNS_12RegexpStatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1972, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN3re211StringPieceC2EPKc.exit.1, %_ZN3re211StringPieceC2EPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull @.str.1, i32 noundef 68)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.2, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.c)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %1) #16
  unreachable

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %1) #16
  unreachable

bb.f:                                             ; preds = %_ZN3re211StringPieceC2EPKc.exit
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %4 = load i8, ptr %3, align 8, !tbaa !30, !range !31, !noundef !32 ; 2 uses
  %i.k = call noundef zeroext i1 @_ZN3re26Regexp10MimicsPCREEv(ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  %5 = zext i1 %i.k to i8
  %.not34 = icmp eq i8 %4, %5                     ; 2 uses
  br i1 %.not34, label %_ZN3re211StringPieceC2EPKc.exit.1, label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef nonnull @.str.1, i32 noundef 69)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.4, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19: ; preds = %bb.g
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.c)
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %bb.h
  %i.q = select i1 %.not34, ptr @.str.6, ptr @.str.5
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.q)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #16
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #16
  unreachable

_ZN3re211StringPieceC2EPKc.exit.1:                ; preds = %bb.f
  call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  store ptr %i.c, ptr %0, align 8, !tbaa !28
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #15
  store i64 %i.t, ptr %i.a, align 8, !tbaa !29
  %i.u = call noundef ptr @_ZN3re26Regexp5ParseERKNS_11StringPieceENS0_10ParseFlagsEPNS_12RegexpStatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1940, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  %.not.1 = icmp eq ptr %i.u, null
  br i1 %.not.1, label %bb.c, label %bb.k

bb.k:                                             ; preds = %_ZN3re211StringPieceC2EPKc.exit.1
  %i.v = call noundef zeroext i1 @_ZN3re26Regexp10MimicsPCREEv(ptr noundef nonnull align 8 dereferenceable(40) %i.u)
  %6 = zext i1 %i.v to i8
  %7 = icmp eq i8 %4, %6
  br i1 %7, label %bb.l, label %bb.g

bb.l:                                             ; preds = %bb.k
  call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.u)
  %i.w = add nuw nsw i64 %.01626, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, 31
  br i1 %exitcond.not, label %bb.b, label %_ZN3re211StringPieceC2EPKc.exit, !llvm.loop !24
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZN3re26Regexp5ParseERKNS_11StringPieceENS0_10ParseFlagsEPNS_12RegexpStatusE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #16
  unreachable
}

declare noundef zeroext i1 @_ZN3re26Regexp10MimicsPCREEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_Z12RegisterTestPFvvEPKc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !42
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1, i64 noundef %i.i)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.36, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.37, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %bb.d
  ret void

bb.e:                                             ; preds = %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.a) #14
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.38, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !49, !alias.scope !50
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !51, !alias.scope !50
  store i8 0, ptr %i.c, align 8, !tbaa !52, !alias.scope !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53, !noalias !50 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !noalias !50 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54, !noalias !50 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !55, !alias.scope !50 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !52, !alias.scope !50
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.p

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.d
  %i.v = load i64, ptr %i.d, align 8, !tbaa !51
  %i.w = load ptr, ptr %1, align 8, !tbaa !55
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !57
  %i.y = call i64 @fwrite(ptr noundef %i.w, i64 noundef 1, i64 noundef %i.v, ptr noundef %i.x) #18 ; 0 uses
  store i8 1, ptr %0, align 8, !tbaa !23
  %i.z = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.c
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !52
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_mimics_pcre_test.cc() #12 section ".text.startup" {
bb.a:
  tail call void @_Z12RegisterTestPFvvEPKc(ptr noundef nonnull @_ZN3re221MimicsPCRESimpleTestsEv, ptr noundef nonnull @.str)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"_ZTSSo"}
!14 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!15 = !{!"_ZTSSt6locale", !14, i64 0}
!16 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !15, i64 56}
!17 = !{!"_ZTSSt13_Ios_Openmode", !5, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !12, i64 8, !5, i64 16}
!20 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !16, i64 0, !17, i64 64, !19, i64 72}
!21 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !13, i64 0, !20, i64 8}
!22 = !{!"_ZTS10LogMessage", !11, i64 0, !21, i64 8}
!23 = !{!22, !11, i64 0}
!24 = distinct !{!24, !33}
!25 = !{!"_ZTSN3re28PCRETestE", !10, i64 0, !11, i64 8}
!26 = !{!25, !10, i64 0}
!27 = !{!"_ZTSN3re211StringPieceE", !10, i64 0, !12, i64 8}
!28 = !{!27, !10, i64 0}
!29 = !{!27, !12, i64 8}
!30 = !{!25, !11, i64 8}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"vtable pointer", !4, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!37 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!38 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!39 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !12, i64 8}
!40 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!41 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !36, i64 24, !37, i64 28, !37, i64 32, !38, i64 40, !39, i64 48, !5, i64 64, !6, i64 192, !40, i64 200, !15, i64 208}
!42 = !{!41, !37, i64 32}
!43 = distinct !{!43, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!44 = distinct !{!44, !43, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!45 = distinct !{!45, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!46 = distinct !{!46, !45, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!47 = !{!44}
!48 = !{!46}
!49 = !{!18, !10, i64 0}
!50 = !{!46, !44}
!51 = !{!19, !12, i64 8}
!52 = !{!5, !5, i64 0}
!53 = !{!16, !10, i64 40}
!54 = !{!16, !10, i64 32}
!55 = !{!19, !10, i64 0}
!56 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!57 = !{!56, !56, i64 0}
end_hunk_0
