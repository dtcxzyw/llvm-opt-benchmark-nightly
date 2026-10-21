Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/re2_arg_test?download=true
inline.NumInlined: 190
inline.NumDeleted: 85
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TestRegisterer = type { i8 }
%"struct.re2::SuccessTable" = type { ptr, i64, [6 x i8] }
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

$__clang_call_terminate = comdat any

$_ZN10LogMessage5FlushEv = comdat any

$_ZN10LogMessageC2EPKci = comdat any

$_ZN10LogMessageD2Ev = comdat any

@_ZN3re220rRE2ArgTestInt16TestE = dso_local local_unnamed_addr global %class.TestRegisterer zeroinitializer, align 1
@.str = private unnamed_addr constant [21 x i8] c"RE2ArgTest.Int16Test\00", align 1
@_ZN3re2L13kSuccessTableE = internal unnamed_addr constant [25 x %"struct.re2::SuccessTable"] [%"struct.re2::SuccessTable" { ptr @.str.32, i64 0, [6 x i8] c"\01\01\01\01\01\01" }, %"struct.re2::SuccessTable" { ptr @.str.33, i64 127, [6 x i8] c"\01\01\01\01\01\01" }, %"struct.re2::SuccessTable" { ptr @.str.34, i64 -1, [6 x i8] c"\01\00\01\00\01\00" }, %"struct.re2::SuccessTable" { ptr @.str.35, i64 -128, [6 x i8] c"\01\00\01\00\01\00" }, %"struct.re2::SuccessTable" { ptr @.str.36, i64 128, [6 x i8] c"\01\01\01\01\01\01" }, %"struct.re2::SuccessTable" { ptr @.str.37, i64 255, [6 x i8] c"\01\01\01\01\01\01" }, %"struct.re2::SuccessTable" { ptr @.str.38, i64 256, [6 x i8] c"\01\01\01\01\01\01" }, %"struct.re2::SuccessTable" { ptr @.str.39, i64 32767, [6 x i8] c"\01\01\01\01\01\01" }, %"struct.re2::SuccessTable" { ptr @.str.40, i64 -129, [6 x i8] c"\01\00\01\00\01\00" }, %"struct.re2::SuccessTable" { ptr @.str.41, i64 -32768, [6 x i8] c"\01\00\01\00\01\00" }, %"struct.re2::SuccessTable" { ptr @.str.42, i64 32768, [6 x i8] c"\00\01\01\01\01\01" }, %"struct.re2::SuccessTable" { ptr @.str.43, i64 65535, [6 x i8] c"\00\01\01\01\01\01" }, %"struct.re2::SuccessTable" { ptr @.str.44, i64 65536, [6 x i8] c"\00\00\01\01\01\01" }, %"struct.re2::SuccessTable" { ptr @.str.45, i64 2147483647, [6 x i8] c"\00\00\01\01\01\01" }, %"struct.re2::SuccessTable" { ptr @.str.46, i64 -32769, [6 x i8] c"\00\00\01\00\01\00" }, %"struct.re2::SuccessTable" { ptr @.str.47, i64 -2147483648, [6 x i8] c"\00\00\01\00\01\00" }, %"struct.re2::SuccessTable" { ptr @.str.48, i64 2147483648, [6 x i8] c"\00\00\00\01\01\01" }, %"struct.re2::SuccessTable" { ptr @.str.49, i64 4294967295, [6 x i8] c"\00\00\00\01\01\01" }, %"struct.re2::SuccessTable" { ptr @.str.50, i64 4294967296, [6 x i8] c"\00\00\00\00\01\01" }, %"struct.re2::SuccessTable" { ptr @.str.51, i64 9223372036854775807, [6 x i8] c"\00\00\00\00\01\01" }, %"struct.re2::SuccessTable" { ptr @.str.52, i64 -2147483649, [6 x i8] c"\00\00\00\00\01\00" }, %"struct.re2::SuccessTable" { ptr @.str.53, i64 -9223372036854775808, [6 x i8] c"\00\00\00\00\01\00" }, %"struct.re2::SuccessTable" { ptr @.str.54, i64 -9223372036854775808, [6 x i8] c"\00\00\00\00\00\01" }, %"struct.re2::SuccessTable" { ptr @.str.55, i64 -1, [6 x i8] c"\00\00\00\00\00\01" }, %"struct.re2::SuccessTable" { ptr @.str.56, i64 0, [6 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [70 x i8] c"/opt-bench/work/grpc/grpc/third_party/re2/re2/testing/re2_arg_test.cc\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Check failed: (retval) == (success)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Parsing '\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"' for type int16_t should return \00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Check failed: (r) == ((int16_t)kSuccessTable[i].value)\00", align 1
@_ZN3re221rRE2ArgTestUint16TestE = dso_local local_unnamed_addr global %class.TestRegisterer zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"RE2ArgTest.Uint16Test\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"' for type uint16_t should return \00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Check failed: (r) == ((uint16_t)kSuccessTable[i].value)\00", align 1
@_ZN3re220rRE2ArgTestInt32TestE = dso_local local_unnamed_addr global %class.TestRegisterer zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"RE2ArgTest.Int32Test\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"' for type int32_t should return \00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"Check failed: (r) == ((int32_t)kSuccessTable[i].value)\00", align 1
@_ZN3re221rRE2ArgTestUint32TestE = dso_local local_unnamed_addr global %class.TestRegisterer zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"RE2ArgTest.Uint32Test\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"' for type uint32_t should return \00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"Check failed: (r) == ((uint32_t)kSuccessTable[i].value)\00", align 1
@_ZN3re220rRE2ArgTestInt64TestE = dso_local local_unnamed_addr global %class.TestRegisterer zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"RE2ArgTest.Int64Test\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"' for type int64_t should return \00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"Check failed: (r) == ((int64_t)kSuccessTable[i].value)\00", align 1
@_ZN3re221rRE2ArgTestUint64TestE = dso_local local_unnamed_addr global %class.TestRegisterer zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"RE2ArgTest.Uint64Test\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"' for type uint64_t should return \00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"Check failed: (r) == ((uint64_t)kSuccessTable[i].value)\00", align 1
@_ZN3re224rRE2ArgTestParseFromTestE = dso_local local_unnamed_addr global %class.TestRegisterer zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"RE2ArgTest.ParseFromTest\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"127\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"-128\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"128\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"255\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"256\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"32767\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"-129\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"-32768\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"32768\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"65535\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"65536\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"2147483647\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"-32769\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"-2147483648\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"2147483648\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"4294967295\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"4294967296\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"9223372036854775807\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"-2147483649\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"-9223372036854775808\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"9223372036854775808\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"18446744073709551615\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"18446744073709551616\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.59 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.62 = private unnamed_addr constant [7 x i8] c"str = \00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c", n = \00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_re2_arg_test.cc, ptr null }]

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3re219RE2ArgTestInt16TestEv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %0 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  %1 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  br label %bb.c

bb.b:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.c:                                             ; preds = %bb.a, %bb.l
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr @_ZN3re2L13kSuccessTableE, i64 %indvars.iv ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %i.d = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #16
  %i.e = call noundef zeroext i1 @_ZN3re212re2_internal5ParseIsEEbPKcmPT_i(ptr noundef nonnull %i.c, i64 noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 10)
  %2 = icmp samesign ult i64 %indvars.iv, 10      ; 3 uses
  %3 = xor i1 %2, %i.e
  br i1 %3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull @.str.1, i32 noundef 113)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.2, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.3, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #15
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.c, i64 noundef %i.i)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.4, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i1 noundef zeroext %2)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #17
  unreachable

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #17
  unreachable

bb.g:                                             ; preds = %bb.c
  br i1 %2, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.n = load i16, ptr %i.a, align 2, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16
  %i.q = trunc i64 %i.p to i16
  %i.r = icmp eq i16 %i.n, %i.q
  br i1 %i.r, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull @.str.1, i32 noundef 113)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.5)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %1) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %1) #17
  unreachable

bb.l:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #17
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3re220RE2ArgTestUint16TestEv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %0 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  %1 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  br label %bb.c

bb.b:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.c:                                             ; preds = %bb.a, %bb.l
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr @_ZN3re2L13kSuccessTableE, i64 %indvars.iv ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %i.d = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #16
  %i.e = call noundef zeroext i1 @_ZN3re212re2_internal5ParseItEEbPKcmPT_i(ptr noundef nonnull %i.c, i64 noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 10)
  %2 = lshr i64 3315, %indvars.iv
  %i.f = trunc i64 %2 to i1                       ; 3 uses
  %3 = xor i1 %i.e, %i.f
  br i1 %3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull @.str.1, i32 noundef 117)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.2, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.3, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #15
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.c, i64 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.8, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext %i.f)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #17
  unreachable

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #17
  unreachable

bb.g:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.o = load i16, ptr %i.a, align 2, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = trunc i64 %i.q to i16
  %i.s = icmp eq i16 %i.o, %i.r
  br i1 %i.s, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull @.str.1, i32 noundef 117)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.9)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %1) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %1) #17
  unreachable

bb.l:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !39
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3re219RE2ArgTestInt32TestEv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %0 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  %1 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  br label %bb.c

bb.b:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.c:                                             ; preds = %bb.a, %bb.l
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr @_ZN3re2L13kSuccessTableE, i64 %indvars.iv ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %i.d = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #16
  %i.e = call noundef zeroext i1 @_ZN3re212re2_internal5ParseIiEEbPKcmPT_i(ptr noundef nonnull %i.c, i64 noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 10)
  %2 = icmp samesign ult i64 %indvars.iv, 16      ; 3 uses
  %3 = xor i1 %2, %i.e
  br i1 %3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull @.str.1, i32 noundef 121)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.2, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.3, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #15
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.c, i64 noundef %i.i)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.12, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i1 noundef zeroext %2)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #17
  unreachable

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #17
  unreachable

bb.g:                                             ; preds = %bb.c
  br i1 %2, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.n = load i32, ptr %i.a, align 4, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp eq i32 %i.n, %i.q
  br i1 %i.r, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull @.str.1, i32 noundef 121)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.13)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %1) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %1) #17
  unreachable

bb.l:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !40
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3re220RE2ArgTestUint32TestEv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %0 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  %1 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  br label %bb.c

bb.b:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.c:                                             ; preds = %bb.a, %bb.l
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr @_ZN3re2L13kSuccessTableE, i64 %indvars.iv ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %i.d = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #16
  %i.e = call noundef zeroext i1 @_ZN3re212re2_internal5ParseIjEEbPKcmPT_i(ptr noundef nonnull %i.c, i64 noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 10)
  %2 = lshr i64 212211, %indvars.iv
  %i.f = trunc i64 %2 to i1                       ; 3 uses
  %3 = xor i1 %i.e, %i.f
  br i1 %3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull @.str.1, i32 noundef 125)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.2, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.3, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #15
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.c, i64 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.16, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext %i.f)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #17
  unreachable

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #17
  unreachable

bb.g:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.o = load i32, ptr %i.a, align 4, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = trunc i64 %i.q to i32
  %i.s = icmp eq i32 %i.o, %i.r
  br i1 %i.s, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull @.str.1, i32 noundef 125)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.17)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %1) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %1) #17
  unreachable

bb.l:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !41
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3re219RE2ArgTestInt64TestEv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %0 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  %1 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  br label %bb.c

bb.b:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.c:                                             ; preds = %bb.a, %bb.l
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr @_ZN3re2L13kSuccessTableE, i64 %indvars.iv ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %i.d = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #16
  %i.e = call noundef zeroext i1 @_ZN3re212re2_internal5ParseIlEEbPKcmPT_i(ptr noundef nonnull %i.c, i64 noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 10)
  %2 = icmp samesign ult i64 %indvars.iv, 22      ; 3 uses
  %3 = xor i1 %2, %i.e
  br i1 %3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull @.str.1, i32 noundef 129)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.2, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.3, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #15
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.c, i64 noundef %i.i)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.20, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i1 noundef zeroext %2)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #17
  unreachable

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #17
  unreachable

bb.g:                                             ; preds = %bb.c
  br i1 %2, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.n = load i64, ptr %i.a, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull @.str.1, i32 noundef 129)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.21)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %1) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %1) #17
  unreachable

bb.l:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !42
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3re220RE2ArgTestUint64TestEv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %0 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  %1 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  br label %bb.c

bb.b:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.c:                                             ; preds = %bb.a, %bb.l
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr @_ZN3re2L13kSuccessTableE, i64 %indvars.iv ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %i.d = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #16
  %i.e = call noundef zeroext i1 @_ZN3re212re2_internal5ParseImEEbPKcmPT_i(ptr noundef nonnull %i.c, i64 noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 10)
  %2 = lshr i64 13581555, %indvars.iv
  %i.f = trunc i64 %2 to i1                       ; 3 uses
  %3 = xor i1 %i.e, %i.f
  br i1 %3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull @.str.1, i32 noundef 133)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.2, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.3, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #15
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.c, i64 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.24, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext %i.f)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #17
  unreachable

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #17
  unreachable

bb.g:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.o = load i64, ptr %i.a, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull @.str.1, i32 noundef 133)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.25)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %1) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %1) #17
  unreachable

bb.l:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !43
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3re223RE2ArgTestParseFromTestEv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.LogMessage, align 8          ; 13 uses
  %1 = alloca %class.LogMessage, align 8          ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull @.str.1, i32 noundef 140)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.62, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.28, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.63, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.i.i unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 3)
          to label %_ZNSolsEm.exit.i.i unwind label %bb.e ; 0 uses

_ZNSolsEm.exit.i.i:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.i.i
  %i.f = load i8, ptr %1, align 8, !tbaa !31, !range !32, !noundef !33
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEm.exit.i.i
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %_ZNSolsEm.exit.i.i
  %i.h = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !35
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 -24      ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  store ptr %i.i, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.m, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.p, align 8, !tbaa !37
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #17
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.aq, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.m, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #15
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.x) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull @.str.1, i32 noundef 149)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.62, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.30, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.63, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.i.i5 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.i.i5: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef 3)
          to label %_ZNSolsEm.exit.i.i6 unwind label %bb.i ; 0 uses

_ZNSolsEm.exit.i.i6:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.i.i5
  %i.ad = load i8, ptr %0, align 8, !tbaa !31, !range !32, !noundef !33
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSolsEm.exit.i.i6
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %0)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZNSolsEm.exit.i.i6
  store ptr %i.h, ptr %i.y, align 8, !tbaa !35
  %i.af = load i64, ptr %i.j, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.y, i64 %i.af
  store ptr %i.i, ptr %i.ag, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i7: ; preds = %bb.g
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !37
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i8

bb.h:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #17
  unreachable

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.i.i5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i8: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i7
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ar) #15
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.as) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  ret void
}

declare void @_Z12RegisterTestPFvvEPKc(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.59, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !50, !alias.scope !51
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !52, !alias.scope !51
  store i8 0, ptr %i.c, align 8, !tbaa !37, !alias.scope !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53, !noalias !51 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !noalias !51 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54, !noalias !51 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !36, !alias.scope !51 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !37, !alias.scope !51
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.p

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.d
  %i.v = load i64, ptr %i.d, align 8, !tbaa !52
  %i.w = load ptr, ptr %1, align 8, !tbaa !36
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !56
  %i.y = call i64 @fwrite(ptr noundef %i.w, i64 noundef 1, i64 noundef %i.v, ptr noundef %i.x) #19 ; 0 uses
  store i8 1, ptr %0, align 8, !tbaa !31
  %i.z = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.c
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !37
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN3re212re2_internal5ParseIsEEbPKcmPT_i(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN3re212re2_internal5ParseItEEbPKcmPT_i(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN3re212re2_internal5ParseIiEEbPKcmPT_i(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN3re212re2_internal5ParseIjEEbPKcmPT_i(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN3re212re2_internal5ParseIlEEbPKcmPT_i(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN3re212re2_internal5ParseImEEbPKcmPT_i(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !31
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
  %i.g = load i32, ptr %i.f, align 8, !tbaa !63
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1, i64 noundef %i.i)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.57, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.58, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %bb.d
  ret void

bb.e:                                             ; preds = %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.a) #15
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !31, !range !32, !noundef !33
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !35
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !37
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.q) #15
  ret void

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #17
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_re2_arg_test.cc() #13 section ".text.startup" {
bb.a:
  tail call void @_Z12RegisterTestPFvvEPKc(ptr noundef nonnull @_ZN3re219RE2ArgTestInt16TestEv, ptr noundef nonnull @.str)
  tail call void @_Z12RegisterTestPFvvEPKc(ptr noundef nonnull @_ZN3re220RE2ArgTestUint16TestEv, ptr noundef nonnull @.str.7)
  tail call void @_Z12RegisterTestPFvvEPKc(ptr noundef nonnull @_ZN3re219RE2ArgTestInt32TestEv, ptr noundef nonnull @.str.11)
  tail call void @_Z12RegisterTestPFvvEPKc(ptr noundef nonnull @_ZN3re220RE2ArgTestUint32TestEv, ptr noundef nonnull @.str.15)
  tail call void @_Z12RegisterTestPFvvEPKc(ptr noundef nonnull @_ZN3re219RE2ArgTestInt64TestEv, ptr noundef nonnull @.str.19)
  tail call void @_Z12RegisterTestPFvvEPKc(ptr noundef nonnull @_ZN3re220RE2ArgTestUint64TestEv, ptr noundef nonnull @.str.23)
  tail call void @_Z12RegisterTestPFvvEPKc(ptr noundef nonnull @_ZN3re223RE2ArgTestParseFromTestEv, ptr noundef nonnull @.str.27)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { cold }

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
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSN3re212SuccessTableE", !10, i64 0, !11, i64 8, !5, i64 16}
!13 = !{!12, !10, i64 0}
!14 = !{!"short", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!12, !11, i64 8}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!6, !6, i64 0}
!19 = !{!11, !11, i64 0}
!20 = !{!"bool", !5, i64 0}
!21 = !{!"_ZTSSo"}
!22 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!23 = !{!"_ZTSSt6locale", !22, i64 0}
!24 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !23, i64 56}
!25 = !{!"_ZTSSt13_Ios_Openmode", !5, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !11, i64 8, !5, i64 16}
!28 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !24, i64 0, !25, i64 64, !27, i64 72}
!29 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !21, i64 0, !28, i64 8}
!30 = !{!"_ZTS10LogMessage", !20, i64 0, !29, i64 8}
!31 = !{!30, !20, i64 0}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{!"vtable pointer", !4, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!27, !10, i64 0}
!37 = !{!5, !5, i64 0}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!45 = distinct !{!45, !44, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!46 = distinct !{!46, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!47 = distinct !{!47, !46, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!48 = !{!45}
!49 = !{!47}
!50 = !{!26, !10, i64 0}
!51 = !{!47, !45}
!52 = !{!27, !11, i64 8}
!53 = !{!24, !10, i64 40}
!54 = !{!24, !10, i64 32}
!55 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!58 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!59 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!60 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !11, i64 8}
!61 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!62 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !57, i64 24, !58, i64 28, !58, i64 32, !59, i64 40, !60, i64 48, !5, i64 64, !6, i64 192, !61, i64 200, !23, i64 208}
!63 = !{!62, !58, i64 32}
end_hunk_0
