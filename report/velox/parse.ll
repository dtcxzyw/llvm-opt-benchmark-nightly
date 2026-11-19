Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/parse?download=true
inline.NumInlined: 1142
inline.NumDeleted: 385
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.re2::CaseFold" = type { i32, i32, i32 }
%"struct.re2::UGroup" = type { ptr, i32, ptr, i32, ptr, i32 }
%"class.absl::lts_20240116::log_internal::LogMessage" = type { %"class.absl::lts_20240116::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20240116::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.re2::RepetitionWalker" = type { %"class.re2::Regexp::Walker" }
%"class.re2::Regexp::Walker" = type { ptr, %"class.std::stack", i8, i32 }
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<re2::WalkState<int>, std::allocator<re2::WalkState<int>>>::_Deque_impl" }
%"struct.std::_Deque_base<re2::WalkState<int>, std::allocator<re2::WalkState<int>>>::_Deque_impl" = type { %"struct.std::_Deque_base<re2::WalkState<int>, std::allocator<re2::WalkState<int>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<re2::WalkState<int>, std::allocator<re2::WalkState<int>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<re2::Frame, std::allocator<re2::Frame>>::_Vector_impl" }
%"struct.std::_Vector_base<re2::Frame, std::allocator<re2::Frame>>::_Vector_impl" = type { %"struct.std::_Vector_base<re2::Frame, std::allocator<re2::Frame>>::_Vector_impl_data" }
%"struct.std::_Vector_base<re2::Frame, std::allocator<re2::Frame>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.re2::CharClassBuilder" = type { i32, i32, i32, %"class.std::set" }
%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<re2::RuneRange, re2::RuneRange, std::_Identity<re2::RuneRange>, re2::RuneRangeLess>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<re2::RuneRange, re2::RuneRange, std::_Identity<re2::RuneRange>, re2::RuneRangeLess>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.4 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.4 = type { i64, [8 x i8] }
%"class.absl::lts_20240116::log_internal::LogMessage::OstreamView" = type { %"class.std::basic_streambuf", ptr, %"class.absl::lts_20240116::Span", %"class.absl::lts_20240116::Span", %"class.absl::lts_20240116::Span" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.absl::lts_20240116::Span" = type { ptr, i64 }
%"class.icu_74::UnicodeString" = type { %"class.icu_74::Replaceable", %"union.icu_74::UnicodeString::StackBufferOrFields" }
%"class.icu_74::Replaceable" = type { %"class.icu_74::UObject" }
%"class.icu_74::UObject" = type { ptr }
%"union.icu_74::UnicodeString::StackBufferOrFields" = type { %struct.anon.30, [32 x i8] }
%struct.anon.30 = type { i16, i32, i32, ptr }
%"class.icu_74::UnicodeSet" = type <{ %"class.icu_74::UnicodeFilter", ptr, i32, i32, i8, [7 x i8], ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr, [25 x i32], [4 x i8] }>
%"class.icu_74::UnicodeFilter" = type { %"class.icu_74::UnicodeFunctor", %"class.icu_74::UnicodeMatcher" }
%"class.icu_74::UnicodeFunctor" = type { %"class.icu_74::UObject" }
%"class.icu_74::UnicodeMatcher" = type { ptr }
%"struct.re2::RuneRange" = type { i32, i32 }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.re2::RegexpStatus" = type { i32, %"class.std::basic_string_view", ptr }
%"class.re2::Regexp::ParseState" = type { i32, %"class.std::basic_string_view", ptr, ptr, i32, i32 }
%"struct.re2::WalkState" = type { ptr, i32, i32, i32, i32, ptr }

$__clang_call_terminate = comdat any

$_ZN3re216CharClassBuilderD2Ev = comdat any

$_ZN3re26Regexp6WalkerIiED2Ev = comdat any

$_ZNSt6vectorIN3re25FrameESaIS1_EED2Ev = comdat any

$_ZN4absl12lts_2024011612log_internal10LogMessagelsIN3re28RegexpOpETnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS7_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZN3re212RegexpStatusD2Ev = comdat any

$_ZN3re216RepetitionWalkerD0Ev = comdat any

$_ZN3re26Regexp6WalkerIiE4CopyEi = comdat any

$_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZN3re26Regexp6WalkerIiED0Ev = comdat any

$_ZN3re26Regexp6WalkerIiE8PreVisitEPS0_iPb = comdat any

$_ZN3re26Regexp6WalkerIiE9PostVisitEPS0_iiPii = comdat any

$_ZNSt11_Deque_baseIN3re29WalkStateIiEESaIS2_EE17_M_initialize_mapEm = comdat any

$_ZN3re26Regexp6WalkerIiE5ResetEv = comdat any

$_ZNSt6vectorIN3re25FrameESaIS1_EE17_M_realloc_insertIJRPPNS0_6RegexpERiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN3re26Regexp6WalkerIiE12WalkInternalEPS0_ib = comdat any

$_ZNSt5dequeIN3re29WalkStateIiEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_ = comdat any

$_ZNSt5dequeIN3re29WalkStateIiEESaIS2_EE17_M_reallocate_mapEmb = comdat any

$_ZTIN3re26Regexp6WalkerIiEE = comdat any

$_ZTSN3re26Regexp6WalkerIiEE = comdat any

$_ZTVN3re26Regexp6WalkerIiEE = comdat any

@_ZN3re2L20maximum_repeat_countE = internal unnamed_addr global i32 1000, align 4, !guid !18
@_ZN3re216unicode_casefoldE = external global [0 x %"struct.re2::CaseFold"], align 4
@_ZN3re220num_unicode_casefoldE = external local_unnamed_addr constant i32, align 4
@.str = private unnamed_addr constant [61 x i8] c"/opt-bench/work/velox/velox/build/_deps/re2-src/re2/parse.cc\00", align 1, !guid !19
@.str.1 = private unnamed_addr constant [36 x i8] c"RepetitionWalker::ShortVisit called\00", align 1, !guid !20
@.str.2 = private unnamed_addr constant [11 x i8] c"Concat of \00", align 1, !guid !21
@.str.3 = private unnamed_addr constant [16 x i8] c"unknown round: \00", align 1, !guid !22
@.str.4 = private unnamed_addr constant [21 x i8] c"RE2: unexpected op: \00", align 1, !guid !23
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1, !guid !24
@.str.6 = private unnamed_addr constant [4 x i8] c"\\p{\00", align 1, !guid !25
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !guid !26
@.str.9 = private unnamed_addr constant [39 x i8] c"Bad call to ParseState::ParsePerlFlags\00", align 1, !guid !27
@_ZTVN3re216RepetitionWalkerE = constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN3re216RepetitionWalkerE, ptr @_ZN3re26Regexp6WalkerIiED2Ev, ptr @_ZN3re216RepetitionWalkerD0Ev, ptr @_ZN3re216RepetitionWalker8PreVisitEPNS_6RegexpEiPb, ptr @_ZN3re216RepetitionWalker9PostVisitEPNS_6RegexpEiiPii, ptr @_ZN3re26Regexp6WalkerIiE4CopyEi, ptr @_ZN3re216RepetitionWalker10ShortVisitEPNS_6RegexpEi] }, align 8, !guid !28
@_ZTIN3re216RepetitionWalkerE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3re216RepetitionWalkerE, ptr @_ZTIN3re26Regexp6WalkerIiEE }, align 8, !guid !29
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3re216RepetitionWalkerE = constant [25 x i8] c"N3re216RepetitionWalkerE\00", align 1, !guid !30
@_ZTIN3re26Regexp6WalkerIiEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3re26Regexp6WalkerIiEE }, comdat, align 8, !guid !31
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN3re26Regexp6WalkerIiEE = linkonce_odr constant [24 x i8] c"N3re26Regexp6WalkerIiEE\00", comdat, align 1, !guid !32
@_ZTVN3re26Regexp6WalkerIiEE = linkonce_odr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN3re26Regexp6WalkerIiEE, ptr @_ZN3re26Regexp6WalkerIiED2Ev, ptr @_ZN3re26Regexp6WalkerIiED0Ev, ptr @_ZN3re26Regexp6WalkerIiE8PreVisitEPS0_iPb, ptr @_ZN3re26Regexp6WalkerIiE9PostVisitEPS0_iiPii, ptr @_ZN3re26Regexp6WalkerIiE4CopyEi, ptr @__cxa_pure_virtual] }, comdat, align 8, !guid !33
@.str.10 = private unnamed_addr constant [65 x i8] c"/opt-bench/work/velox/velox/build/_deps/re2-src/re2/walker-inl.h\00", align 1, !guid !34
@.str.11 = private unnamed_addr constant [17 x i8] c"Stack not empty.\00", align 1, !guid !35
@.str.13 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1, !guid !36
@.str.14 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1, !guid !37
@.str.15 = private unnamed_addr constant [34 x i8] c"AddFoldedRange recurses too much.\00", align 1, !guid !38
@_ZN3re211perl_groupsE = external global [0 x %"struct.re2::UGroup"], align 8
@_ZN3re215num_perl_groupsE = external local_unnamed_addr constant i32, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1, !guid !39
@_ZN4absl12lts_2024011614ascii_internal13kPropertyBitsE = external local_unnamed_addr constant [256 x i8], align 16
@.str.19 = private unnamed_addr constant [15 x i8] c"Bad hex digit \00", align 1, !guid !40
@_ZN3re212posix_groupsE = external global [0 x %"struct.re2::UGroup"], align 8
@_ZN3re216num_posix_groupsE = external local_unnamed_addr constant i32, align 4
@_ZZN3re2L18IsValidCaptureNameESt17basic_string_viewIcSt11char_traitsIcEEE2cc = internal global ptr null, align 8, !guid !41
@_ZGVZN3re2L18IsValidCaptureNameESt17basic_string_viewIcSt11char_traitsIcEEE2cc = internal global i64 0, align 8, !guid !42
@.str.20 = private unnamed_addr constant [3 x i8] c"Lu\00", align 1, !guid !43
@.str.21 = private unnamed_addr constant [3 x i8] c"Ll\00", align 1, !guid !44
@.str.22 = private unnamed_addr constant [3 x i8] c"Lt\00", align 1, !guid !45
@.str.23 = private unnamed_addr constant [3 x i8] c"Lm\00", align 1, !guid !46
@.str.24 = private unnamed_addr constant [3 x i8] c"Lo\00", align 1, !guid !47
@.str.25 = private unnamed_addr constant [3 x i8] c"Nl\00", align 1, !guid !48
@.str.26 = private unnamed_addr constant [3 x i8] c"Mn\00", align 1, !guid !49
@.str.27 = private unnamed_addr constant [3 x i8] c"Mc\00", align 1, !guid !50
@.str.28 = private unnamed_addr constant [3 x i8] c"Nd\00", align 1, !guid !51
@.str.29 = private unnamed_addr constant [3 x i8] c"Pc\00", align 1, !guid !52
@constinit = private unnamed_addr constant [10 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], align 8, !guid !53
@_ZN3re214unicode_groupsE = external local_unnamed_addr global [0 x %"struct.re2::UGroup"], align 8
@_ZN3re218num_unicode_groupsE = external local_unnamed_addr constant i32, align 4
@.str.30 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1, !guid !54
@.str.31 = private unnamed_addr constant [10 x i8] c"Walk NULL\00", align 1, !guid !55
@.str.32 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1, !guid !56

@_ZN3re26Regexp10ParseStateC1ENS0_10ParseFlagsESt17basic_string_viewIcSt11char_traitsIcEEPNS_12RegexpStatusE = unnamed_addr alias void (ptr, i32, i64, ptr, ptr), ptr @_ZN3re26Regexp10ParseStateC2ENS0_10ParseFlagsESt17basic_string_viewIcSt11char_traitsIcEEPNS_12RegexpStatusE
@_ZN3re26Regexp10ParseStateD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3re26Regexp10ParseStateD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3re26Regexp37FUZZING_ONLY_set_maximum_repeat_countEi(i32 noundef %0) local_unnamed_addr #0 align 2 !guid !187 {
bb.a:
  store i32 %0, ptr @_ZN3re2L20maximum_repeat_countE, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3re26Regexp10ParseStateC2ENS0_10ParseFlagsESt17basic_string_viewIcSt11char_traitsIcEEPNS_12RegexpStatusE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 4), (8, 48)) %0, i32 noundef %1, i64 %2, ptr %3, ptr noundef %4) unnamed_addr #1 align 2 !guid !188 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !66
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !67
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.b, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.c, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !71
  %i.e = and i32 %1, 32
  %.not = icmp eq i32 %i.e, 0
  %spec.select = select i1 %.not, i32 1114111, i32 255
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %spec.select, ptr %i.f, align 4, !tbaa !72
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3re26Regexp10ParseStateD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !190 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.d, %bb.g ]  ; 5 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  store ptr null, ptr %i.c, align 8, !tbaa !75
  %i.e = load i8, ptr %.0, align 8, !tbaa !76
  %i.f = icmp eq i8 %i.e, 22
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77   ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !80   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !77
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  invoke void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %.0)
          to label %bb.b unwind label %bb.h, !llvm.loop !189

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #32
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !guid !191 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #33 ; 0 uses
  tail call void @_ZSt9terminatev() #32
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re26Regexp10ParseState12FinishRegexpEPS0_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef returned captures(address_is_null, ret: address, provenance) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !guid !192 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !75
  %i.c = load i8, ptr %1, align 8, !tbaa !76
  %i.d = icmp eq i8 %i.c, 20
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77   ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !77
  %i.h = tail call noundef ptr @_ZN3re216CharClassBuilder12GetCharClassEv(ptr noundef nonnull align 8 dereferenceable(64) %i.f)
  store ptr %i.h, ptr %i.g, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86
  invoke void @_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.k)
          to label %_ZN3re216CharClassBuilderD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #32
  unreachable

_ZN3re216CharClassBuilderD2Ev.exit:               ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 64) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %_ZN3re216CharClassBuilderD2Ev.exit, %bb.a
  ret ptr %1
}

declare noundef ptr @_ZN3re216CharClassBuilder12GetCharClassEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3re216CharClassBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !guid !193 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86
  invoke void @_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #32
  unreachable

_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re26Regexp10ParseState10PushRegexpEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !guid !194 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN3re26Regexp10ParseState17MaybeConcatStringEiNS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !76      ; 2 uses
  %i.c = icmp eq i8 %i.b, 20
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !guid !356 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !126  ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !77
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #37
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !125

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #34 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !80     ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !77
  store i8 %i.u, ptr %i.s, align 1, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !77
  store i8 %i.y, ptr %i.x, align 1, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !80    ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !77
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !77
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !80
  store i64 %.0, ptr %i.h, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 16) i32 @_ZN3re2L5UnHexEi(i32 noundef %0) unnamed_addr #8 personality ptr @__gxx_personality_v0 !guid !357 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 8 uses
  %i.b = add i32 %0, -48                          ; 2 uses
  %or.cond = icmp ult i32 %i.b, 10
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %0, -65
  %or.cond3 = icmp ult i32 %i.c, 6
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %0, -55
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.e = add i32 %0, -97
  %or.cond5 = icmp ult i32 %i.e, 6
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i32 %0, -87
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 1479, i32 noundef 2) #35
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 14, ptr nonnull @.str.19)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %0, ptr %i.a, align 4, !tbaa !57
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIiTnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit, %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %i.h

bb.i:                                             ; preds = %bb.a, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.g ], [ %i.d, %bb.c ], [ %i.f, %bb.e ], [ %i.b, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #26

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef ptr @"_ZZN3re2L18IsValidCaptureNameESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv"() unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 !guid !358 {
bb.a:
  %0 = alloca %"class.re2::CharClassBuilder", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #33
  call void @_ZN3re216CharClassBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %1 = load i32, ptr @_ZN3re218num_unicode_groupsE, align 4, !tbaa !57
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  br label %.lr.ph.preheader.i

bb.b:                                             ; preds = %_ZN3re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE.exit
  %i.a = invoke noundef ptr @_ZN3re216CharClassBuilder12GetCharClassEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.preheader.i:                               ; preds = %bb.a, %_ZN3re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE.exit
  %.08.idx8 = phi i64 [ 0, %bb.a ], [ %.08.add, %_ZN3re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE.exit ] ; 2 uses
  %.08.ptr = getelementptr inbounds nuw i8, ptr @constinit, i64 %.08.idx8
  %i.b = load ptr, ptr %.08.ptr, align 8, !tbaa !68 ; 2 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #33 ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.split.us, label %.lr.ph.i

.lr.ph.preheader.i.split.us:                      ; preds = %.lr.ph.preheader.i
  %i.e = load ptr, ptr @_ZN3re214unicode_groupsE, align 8, !tbaa !161
  %char0 = load i8, ptr %i.e, align 1
  %i.f = icmp eq i8 %char0, 0
  br i1 %i.f, label %_ZN3re2L11LookupGroupESt17basic_string_viewIcSt11char_traitsIcEEPKNS_6UGroupEi.exit, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i.split.us, %.lr.ph.i.us
  %indvars.iv.i.us7 = phi i64 [ %indvars.iv.next.i.us, %.lr.ph.i.us ], [ 0, %.lr.ph.preheader.i.split.us ]
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us7, 1 ; 3 uses
  %exitcond.not.i.us = icmp ne i64 %indvars.iv.next.i.us, %wide.trip.count.i
  call void @llvm.assume(i1 %exitcond.not.i.us)
  %i.g = getelementptr inbounds nuw [48 x i8], ptr @_ZN3re214unicode_groupsE, i64 %indvars.iv.next.i.us ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !161
  %char018 = load i8, ptr %i.h, align 1
  %i.i = icmp eq i8 %char018, 0
  br i1 %i.i, label %_ZN3re2L11LookupGroupESt17basic_string_viewIcSt11char_traitsIcEEPKNS_6UGroupEi.exit, label %.lr.ph.i.us

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [48 x i8], ptr @_ZN3re214unicode_groupsE, i64 %indvars.iv.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !161  ; 2 uses
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #33
  %i.m = icmp eq i64 %i.l, %i.c
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, label %bb.c

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.k, ptr nonnull readonly %i.b, i64 %i.c)
  %i.n = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.n, label %_ZN3re2L11LookupGroupESt17basic_string_viewIcSt11char_traitsIcEEPKNS_6UGroupEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  call void @llvm.assume(i1 %exitcond.not.i)
  br label %.lr.ph.i

_ZN3re2L11LookupGroupESt17basic_string_viewIcSt11char_traitsIcEEPKNS_6UGroupEi.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.lr.ph.i.us, %.lr.ph.preheader.i.split.us
  %.us-phi = phi ptr [ %i.g, %.lr.ph.i.us ], [ @_ZN3re214unicode_groupsE, %.lr.ph.preheader.i.split.us ], [ %i.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.us-phi, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !164
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph88.i, label %.preheader.i

.lr.ph88.i:                                       ; preds = %_ZN3re2L11LookupGroupESt17basic_string_viewIcSt11char_traitsIcEEPKNS_6UGroupEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.us-phi, i64 16
  br label %bb.d

.preheader.i:                                     ; preds = %.noexc, %_ZN3re2L11LookupGroupESt17basic_string_viewIcSt11char_traitsIcEEPKNS_6UGroupEi.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.us-phi, i64 40 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !166
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph90.i, label %_ZN3re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE.exit

.lr.ph90.i:                                       ; preds = %.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  br label %bb.g

bb.d:                                             ; preds = %.noexc, %.lr.ph88.i
  %indvars.iv105.i = phi i64 [ 0, %.lr.ph88.i ], [ %indvars.iv.next106.i, %.noexc ] ; 2 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !163
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv105.i ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !171  ; 3 uses
  %i.z = zext i16 %i.y to i32                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !172 ; 3 uses
  %i.ac = zext i16 %i.ab to i32
  %i.ad = icmp ult i16 %i.y, 11
  %i.ae = icmp ugt i16 %i.ab, 9
  %or.cond3.i14 = and i1 %i.ad, %i.ae
  br i1 %or.cond3.i14, label %bb.e, label %.invoke21

bb.e:                                             ; preds = %bb.d
  %i.af = icmp samesign ult i16 %i.y, 10
  br i1 %i.af, label %bb.f, label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i15

bb.f:                                             ; preds = %bb.e
  %i.ag = invoke noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.z, i32 noundef 9)
          to label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !359 ; 0 uses

_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i15: ; preds = %bb.f, %bb.e
  %i.ah = icmp ugt i16 %i.ab, 10
  br i1 %i.ah, label %.invoke21, label %.noexc

.invoke21:                                        ; preds = %bb.d, %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i15
  %i.ai = phi i32 [ 11, %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i15 ], [ %i.z, %bb.d ]
  %i.aj = invoke noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.ai, i32 noundef %i.ac)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !359 ; 0 uses

.noexc:                                           ; preds = %.invoke21, %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i15
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 2 uses
  %i.ak = load i32, ptr %i.o, align 8, !tbaa !164
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next106.i, %i.al
  br i1 %i.am, label %bb.d, label %.preheader.i, !llvm.loop !7

bb.g:                                             ; preds = %.noexc10, %.lr.ph90.i
  %indvars.iv108.i = phi i64 [ 0, %.lr.ph90.i ], [ %indvars.iv.next109.i, %.noexc10 ] ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !165
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv108.i ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !168 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !169 ; 3 uses
  %i.as = icmp slt i32 %i.ap, 11
  %i.at = icmp sgt i32 %i.ar, 9
  %or.cond3.i = and i1 %i.as, %i.at
  br i1 %or.cond3.i, label %bb.h, label %.invoke

bb.h:                                             ; preds = %bb.g
  %i.au = icmp slt i32 %i.ap, 10
  br i1 %i.au, label %bb.i, label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.av = invoke noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.ap, i32 noundef 9)
          to label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !359 ; 0 uses

_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i: ; preds = %bb.i, %bb.h
  %i.aw = icmp samesign ugt i32 %i.ar, 10
  br i1 %i.aw, label %.invoke, label %.noexc10

.invoke:                                          ; preds = %bb.g, %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i
  %i.ax = phi i32 [ 11, %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i ], [ %i.ap, %bb.g ]
  %i.ay = invoke noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.ax, i32 noundef %i.ar)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !359 ; 0 uses

.noexc10:                                         ; preds = %.invoke, %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1 ; 2 uses
  %i.az = load i32, ptr %i.s, align 8, !tbaa !166
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next109.i, %i.ba
  br i1 %i.bb, label %bb.g, label %_ZN3re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE.exit, !llvm.loop !8

_ZN3re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE.exit: ; preds = %.noexc10, %.preheader.i
  %.08.add = add nuw nsw i64 %.08.idx8, 8         ; 2 uses
  %.not = icmp eq i64 %.08.add, 80
  br i1 %.not, label %bb.b, label %.lr.ph.preheader.i

bb.j:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !86
  invoke void @_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef %i.be)
          to label %_ZN3re216CharClassBuilderD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #32
  unreachable

_ZN3re216CharClassBuilderD2Ev.exit:               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  ret ptr %i.a

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %.invoke, %.invoke21, %bb.f, %bb.b
  %lpad.loopexit.split-lp28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3re216CharClassBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  resume { ptr, i32 } %lpad.loopexit.split-lp28
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #26

declare noundef zeroext i1 @_ZNK3re29CharClass8ContainsEi(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN3re2L12ParseIntegerEPSt17basic_string_viewIcSt11char_traitsIcEEPi(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #18 !guid !360 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !156    ; 3 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157  ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !77    ; 2 uses
  %i.f = add i8 %i.e, -48
  %i.g = icmp ult i8 %i.f, 10
  br i1 %i.g, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ne i64 %i.a, 1
  %i.i = icmp eq i8 %i.e, 48
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !77
  %i.l = add i8 %i.k, -48
  %i.m = icmp ult i8 %i.l, 10
  br i1 %i.m, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.n = phi ptr [ %i.x, %bb.f ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.015 = phi i32 [ %i.w, %bb.f ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.o = phi i64 [ %i.y, %bb.f ], [ %i.a, %.lr.ph.preheader ]
  %i.p = load i8, ptr %i.n, align 1, !tbaa !77    ; 2 uses
  %i.q = zext nneg i8 %i.p to i32
  %i.r = add i8 %i.p, -48
  %i.s = icmp ult i8 %i.r, 10
  br i1 %i.s, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.t = icmp sgt i32 %.015, 99999999
  br i1 %i.t, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = mul nsw i32 %.015, 10
  %i.v = add i32 %i.u, -48
  %i.w = add i32 %i.v, %i.q                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  store ptr %i.x, ptr %i.c, align 8, !tbaa !157
  %i.y = add i64 %i.o, -1                         ; 3 uses
  store i64 %i.y, ptr %0, align 8, !tbaa !156
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.critedge, label %.lr.ph, !llvm.loop !9

.critedge:                                        ; preds = %.lr.ph, %bb.f
  %.0.lcssa.ph = phi i32 [ %.015, %.lr.ph ], [ %i.w, %bb.f ]
  store i32 %.0.lcssa.ph, ptr %1, align 4, !tbaa !57
  br label %.loopexit

end_hunk_1
