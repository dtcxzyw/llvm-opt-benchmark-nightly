Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmSpacing?download=true
inline.NumInlined: 200
inline.NumDeleted: 143
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::logic_error" = type { %"class.std::exception", %"class.std::__1::__libcpp_refstring" }
%"class.std::exception" = type { ptr }
%"class.std::__1::__libcpp_refstring" = type { ptr }
%"class.std::__1::basic_ostringstream" = type { %"class.std::__1::basic_ostream.base", %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ostream.base" = type { ptr }
%"class.std::__1::basic_stringbuf" = type <{ %"class.std::__1::basic_streambuf", %"class.std::__1::basic_string", ptr, i32, [4 x i8] }>
%"class.std::__1::basic_streambuf" = type { ptr, %"class.std::__1::locale", ptr, ptr, ptr, ptr, ptr, ptr }
%"class.std::__1::locale" = type { ptr }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.1, i64, ptr }
%struct.anon.1 = type { i64 }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", ptr, i32 }>
%"class.std::__1::ios_base" = type { ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64 }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }

$_ZN4gdcm9ExceptionC2EPKcS2_jS2_ = comdat any

$_ZN4gdcm9ExceptionD2Ev = comdat any

$_ZN4gdcm9Exception10CreateWhatEPKcS2_jS2_ = comdat any

$_ZN4gdcm9ExceptionD0Ev = comdat any

$_ZNK4gdcm9Exception4whatEv = comdat any

$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = comdat any

$_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = comdat any

$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__120__throw_length_errorB8ne180100EPKc = comdat any

$_ZNSt12length_errorC2B8ne180100EPKc = comdat any

$_ZTIN4gdcm9ExceptionE = comdat any

$_ZTSN4gdcm9ExceptionE = comdat any

$_ZTVN4gdcm9ExceptionE = comdat any

@.str = private unnamed_addr constant [61 x i8] c"An invalid logic behavior occurredfabs(error) < fabs(error2)\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"/opt-bench/work/tev/tev/dependencies/GDCM/Source/MediaStorageAndFileFormat/gdcmSpacing.cxx\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTIN4gdcm9ExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4gdcm9ExceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4gdcm9ExceptionE = linkonce_odr dso_local constant [18 x i8] c"N4gdcm9ExceptionE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVN4gdcm9ExceptionE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4gdcm9ExceptionE, ptr @_ZN4gdcm9ExceptionD2Ev, ptr @_ZN4gdcm9ExceptionD0Ev, ptr @_ZNK4gdcm9Exception4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"):\0A\00", align 1
@_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [16 x ptr] }, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN4gdcm7SpacingC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4gdcm7SpacingC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4gdcm7SpacingC2Ev(ptr nofree nonnull readnone align 1 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN4gdcm4frapEPddd(ptr nofree noundef writeonly captures(none) %0, double noundef %1, double noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.12.0 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0, %bb.c ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 1, %bb.a ], [ %i.g, %bb.c ] ; 4 uses
  %.040 = phi double [ %1, %bb.a ], [ %i.k, %bb.c ] ; 3 uses
  %.sroa.16.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.c ] ; 5 uses
  %.sroa.27.0 = phi i64 [ 1, %bb.a ], [ %.sroa.16.0, %bb.c ] ; 2 uses
  %i.a = fptosi double %.040 to i64               ; 3 uses
  %i.b = mul nsw i64 %.sroa.16.0, %i.a
  %i.c = add nsw i64 %i.b, %.sroa.27.0            ; 3 uses
  %i.d = sitofp i64 %i.c to double                ; 2 uses
  %i.e = fcmp ult double %2, %i.d
  br i1 %i.e, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = sitofp i64 %.sroa.16.0 to double
  br label %split

bb.c:                                             ; preds = %bb.b
  %i.f = mul nsw i64 %.sroa.0.0, %i.a
  %i.g = add nsw i64 %i.f, %.sroa.12.0            ; 2 uses
  %i.h = sitofp i64 %i.a to double                ; 2 uses
  %i.i = fcmp une double %.040, %i.h
  %i.j = fsub double %.040, %i.h
  %i.k = fdiv double 1.000000e+00, %i.j           ; 2 uses
  %i.l = fcmp ule double %i.k, f0x41DFFFFFFFC00000
  %.not45 = and i1 %i.i, %i.l
  br i1 %.not45, label %bb.b, label %split

split:                                            ; preds = %bb.c, %._crit_edge
  %.pre-phi = phi double [ %.pre, %._crit_edge ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.12.1 = phi i64 [ %.sroa.12.0, %._crit_edge ], [ %.sroa.0.0, %bb.c ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %._crit_edge ], [ %i.g, %bb.c ] ; 2 uses
  %.sroa.16.1 = phi i64 [ %.sroa.16.0, %._crit_edge ], [ %i.c, %bb.c ] ; 2 uses
  %.sroa.27.1 = phi i64 [ %.sroa.27.0, %._crit_edge ], [ %.sroa.16.0, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.pre-phi, ptr %i.m, align 8, !tbaa !10
  %i.n = fptosi double %2 to i64
  %i.o = sub nsw i64 %i.n, %.sroa.27.1
  %i.p = sdiv i64 %i.o, %.sroa.16.1               ; 2 uses
  %i.q = mul nsw i64 %i.p, %.sroa.0.1
  %i.r = add nsw i64 %i.q, %.sroa.12.1
  %i.s = mul nsw i64 %i.p, %.sroa.16.1
  %i.t = add nsw i64 %i.s, %.sroa.27.1
  %i.u = sitofp i64 %i.t to double
  %i.v = sitofp i64 %.sroa.0.1 to double          ; 2 uses
  store double %i.v, ptr %0, align 8, !tbaa !10
  %i.w = sitofp i64 %i.r to double
  %i.x = insertelement <2 x double> poison, double %i.v, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.w, i64 1
  %i.z = insertelement <2 x double> poison, double %.pre-phi, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.u, i64 1
  %i.ab = fdiv <2 x double> %i.y, %i.aa
  %i.ac = insertelement <2 x double> poison, double %1, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fsub <2 x double> %i.ad, %i.ab          ; 2 uses
  %i.af = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ae) ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = extractelement <2 x double> %i.af, i64 1
  %i.ai = fcmp olt double %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.d

bb.d:                                             ; preds = %split
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 93, ptr noundef nonnull @.str.2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #18
  resume { ptr, i32 } %i.ak

bb.g:                                             ; preds = %split
  %i.al = extractelement <2 x double> %i.ae, i64 0
  ret double %i.al
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4gdcm9ExceptionE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN4gdcm9Exception10CreateWhatEPKcS2_jS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::logic_error") align 8 %i.a, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4gdcm9ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4gdcm9ExceptionE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #18
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local i64 @_ZN4gdcm7Spacing39ComputePixelAspectRatioFromPixelSpacingERKNS_9AttributeILt40ELt48ELx32ELi2EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 4 uses
  %i.b = load double, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !10
  %i.e = fdiv double %i.b, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.f = call noundef double @_ZN4gdcm4frapEPddd(ptr noundef nonnull %i.a, double noundef %i.e, double noundef 1.000000e+01) ; 0 uses
  %i.g = load <2 x double>, ptr %i.a, align 16, !tbaa !10
  %i.h = fptosi <2 x double> %i.g to <2 x i32>
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.sroa.0.0.insert.insert = bitcast <2 x i32> %i.h to i64
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm9Exception10CreateWhatEPKcS2_jS2_(ptr dead_on_unwind noalias writable sret(%"class.std::logic_error") align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 25 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8), align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !12
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !12
  %i.h = load ptr, ptr %5, align 8, !tbaa !12
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %5, i64 %i.j ; 3 uses
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %i.k, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store ptr null, ptr %i.l, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  store i32 -1, ptr %i.m, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), ptr %5, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.a, align 8, !tbaa !12
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(100) %i.b)
          to label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #18
  br label %bb.e

common.resume:                                    ; preds = %bb.x, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.a) #18
  br label %common.resume

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit: ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.b, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  store i32 16, ptr %i.q, align 8, !tbaa !39
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %2, i64 noundef %i.r)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.t

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit9 unwind label %bb.t

end_hunk_0
