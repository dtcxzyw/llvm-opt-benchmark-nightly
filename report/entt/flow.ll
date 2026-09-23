Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/flow?download=true
inline.NumInlined: 4084
inline.NumDeleted: 1560
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0
@.str.135 = private unnamed_addr constant [5 x i8] c" vs \00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c", \00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEEESaIjELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEEESaIjELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEEESaIjELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEEESaIjELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEEESaIjELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEEESaIjELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEEESaIjELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEEESaIjELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEEESaIjELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEEESaIjELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [125 x i8] c"St23_Sp_counted_ptr_inplaceIN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEEESaIjELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr dso_local constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr dso_local constant [16 x i8] zeroinitializer, comdat, align 8
@_ZZN4entt7type_idImEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idImEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexImE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexImE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal10type_index4nextEvE5value = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@.str.138 = private unnamed_addr constant [69 x i8] c"const char *entt::internal::pretty_function() [Type = unsigned long]\00", align 1
@_ZZN4entt7type_idISt4pairImjEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISt4pairImjEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISt4pairImjEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISt4pairImjEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.139 = private unnamed_addr constant [94 x i8] c"const char *entt::internal::pretty_function() [Type = std::pair<unsigned long, unsigned int>]\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_flow.cpp, ptr null }]

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN7testing8internal13GetTestTypeIdEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.122, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.123, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.124, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !23
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.125, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.122, i32 noundef 535)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.123, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.126, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !23
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.125, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN22Flow_Constructors_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::allocator.139", align 1 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.std::allocator.1", align 1  ; 3 uses
  %3 = alloca %"class.entt::basic_flow", align 8  ; 25 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.entt::basic_flow", align 8 ; 17 uses
  %12 = alloca %"class.std::allocator.1", align 1 ; 4 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.entt::basic_flow", align 8 ; 9 uses
  %28 = alloca %"class.std::allocator.1", align 1 ; 4 uses
  %29 = alloca %"class.entt::basic_flow", align 8 ; 15 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %31 = alloca %"class.testing::Message", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %33 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %34 = alloca %"class.testing::Message", align 8 ; 7 uses
  %35 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %36 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %37 = alloca %"class.testing::Message", align 8 ; 7 uses
  %38 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %39 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN4entt10basic_flowISaIjEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 10 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.r = icmp eq ptr %i.o, %i.q                   ; 2 uses
  %i.s = zext i1 %i.r to i8
  store i8 %i.s, ptr %4, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !47
  br i1 %i.r, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %7, align 8, !tbaa !51
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 15, ptr noundef %i.u)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #27
  %i.v = load ptr, ptr %7, align 8, !tbaa !51     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.w, align 8, !tbaa !52
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.aa = load ptr, ptr %5, align 8, !tbaa !54    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(128) %i.aa) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !55  ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i135, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.fc

bb.h:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit141

bb.i:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.j:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.an, %bb.k ], [ %i.am, %bb.j ] ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.l
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !52
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.i ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %.pn, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.at = load ptr, ptr %5, align 8, !tbaa !54    ; 3 uses
  %.not.i.i139 = icmp eq ptr %i.at, null
  br i1 %.not.i.i139, label %_ZN7testing7MessageD2Ev.exit141, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(128) %i.at) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit141

_ZN7testing7MessageD2Ev.exit141:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.fg

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.n

_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.m
  %.pre = load i8, ptr %8, align 8, !tbaa !46, !range !56
  %i.ax = trunc nuw i8 %.pre to i1
  br i1 %i.ax, label %.critedge118, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.o:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.bc = phi ptr [ %i.bb, %bb.q ], [ @.str.83, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 16, ptr noundef %i.bc)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.bd = load ptr, ptr %9, align 8, !tbaa !54    ; 3 uses
  %.not.i.i148 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i148, label %_ZN7testing7MessageD2Ev.exit150, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149: ; preds = %bb.s
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit150

_ZN7testing7MessageD2Ev.exit150:                  ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !55 ; 4 uses
  %.not.i.i151 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i151, label %_ZN7testing15AssertionResultD2Ev.exit155, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit150
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !51 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152: ; preds = %bb.t
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !52
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit155

_ZN7testing15AssertionResultD2Ev.exit155:         ; preds = %_ZN7testing7MessageD2Ev.exit150, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.fc

bb.u:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit158

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn73 = phi { ptr, i32 } [ %i.bp, %bb.w ], [ %i.bo, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.bq = load ptr, ptr %9, align 8, !tbaa !54    ; 3 uses
  %.not.i.i156 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i156, label %_ZN7testing7MessageD2Ev.exit158, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157: ; preds = %bb.x
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(128) %i.bq) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit158

_ZN7testing7MessageD2Ev.exit158:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157, %bb.x, %bb.u
  %.pn73.pn = phi { ptr, i32 } [ %i.bn, %bb.u ], [ %.pn73, %bb.x ], [ %.pn73, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #27
  br label %bb.ag

.critedge118:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !55 ; 4 uses
  %.not.i.i159 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i159, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge118
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !51 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160: ; preds = %bb.y
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !52
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 32) #28
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161, %.critedge118
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  invoke void @_ZN4entt10basic_flowISaIjEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.cb = load i64, ptr %11, align 8
  store i64 %i.cb, ptr %3, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !59 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !60
  %i.ch = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !61
  store <2 x ptr> %i.ch, ptr %i.cc, align 8, !tbaa !61
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !60
  store ptr %i.cj, ptr %i.cf, align 8, !tbaa !60
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.cd, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = ptrtoint ptr %i.ce to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cm) #28
  br label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i

_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i: ; preds = %bb.ab, %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.co = load ptr, ptr %i.n, align 8, !tbaa !63  ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !64
  %i.cr = load <2 x ptr>, ptr %i.cn, align 8, !tbaa !36
  store <2 x ptr> %i.cr, ptr %i.n, align 8, !tbaa !36
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !64
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !64
  %.not.i.i.i.i.i.i.i4.i.i = icmp eq ptr %i.co, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i4.i.i, label %_ZN4entt10basic_flowISaIjEEaSEOS2_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = ptrtoint ptr %i.co to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cw) #28
  br label %_ZN4entt10basic_flowISaIjEEaSEOS2_.exit

_ZN4entt10basic_flowISaIjEEaSEOS2_.exit:          ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i, %bb.ac
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !77
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store float %i.cy, ptr %i.cz, align 8, !tbaa !77
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !59 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !60
  %i.df = load <2 x ptr>, ptr %i.db, align 8, !tbaa !61
  store <2 x ptr> %i.df, ptr %i.da, align 8, !tbaa !61
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !60
  store ptr %i.dh, ptr %i.dd, align 8, !tbaa !60
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.db, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN4entt10basic_flowISaIjEEaSEOS2_.exit
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = ptrtoint ptr %i.dc to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dk) #28
  br label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i

_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i: ; preds = %bb.ad, %_ZN4entt10basic_flowISaIjEEaSEOS2_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 2 uses
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !80 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !81 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !82
  %i.ds = load <2 x ptr>, ptr %i.dm, align 8, !tbaa !83
  store <2 x ptr> %i.ds, ptr %i.dl, align 8, !tbaa !83
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !82
  store ptr %i.du, ptr %i.dq, align 8, !tbaa !82
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.dn, %i.dp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ec, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.dn, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !87
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #28
  br label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i4.i = icmp eq ptr %i.ec, %i.dp
  br i1 %.not.i.i.i.i.i.i.i4.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEEaSEOSC_.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ed = ptrtoint ptr %i.dr to i64
  %i.ee = ptrtoint ptr %i.dn to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ef) #28
  br label %_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEEaSEOSC_.exit

_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEEaSEOSC_.exit: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i, %bb.af
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !95
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  store float %i.eh, ptr %i.ei, align 8, !tbaa !95
  %i.ej = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !99
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 8 uses
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !99
  call void @_ZN4entt10basic_flowISaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.em = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.en = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.eo = icmp eq ptr %i.em, %i.en                ; 2 uses
  %i.ep = zext i1 %i.eo to i8
  store i8 %i.ep, ptr %13, align 8, !tbaa !46
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr null, ptr %i.eq, align 8, !tbaa !47
  br i1 %i.eo, label %bb.at, label %bb.ai

bb.ag:                                            ; preds = %_ZN7testing7MessageD2Ev.exit158, %bb.n
  %.pn73.pn.pn = phi { ptr, i32 } [ %.pn73.pn, %_ZN7testing7MessageD2Ev.exit158 ], [ %i.ay, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.fg

bb.ah:                                            ; preds = %bb.z
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.fg

bb.ai:                                            ; preds = %_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEEaSEOSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.aj unwind label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.es = load ptr, ptr %16, align 8, !tbaa !51
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 20, ptr noundef %i.es)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #27
  %i.et = load ptr, ptr %16, align 8, !tbaa !51   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.am
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !52
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.ey = load ptr, ptr %14, align 8, !tbaa !54   ; 3 uses
  %.not.i.i167 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i167, label %_ZN7testing7MessageD2Ev.exit169, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !23
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(128) %i.ey) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit169

_ZN7testing7MessageD2Ev.exit169:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.fc = load ptr, ptr %i.eq, align 8, !tbaa !55 ; 4 uses
  %.not.i.i170 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i170, label %_ZN7testing15AssertionResultD2Ev.exit174, label %bb.an

bb.an:                                            ; preds = %_ZN7testing7MessageD2Ev.exit169
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !51 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i171: ; preds = %bb.an
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !52
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i171
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit174

_ZN7testing15AssertionResultD2Ev.exit174:         ; preds = %_ZN7testing7MessageD2Ev.exit169, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.fc

bb.ao:                                            ; preds = %bb.ai
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit180

bb.ap:                                            ; preds = %bb.aj
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.aq:                                            ; preds = %bb.ak
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.al
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #27
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn77 = phi { ptr, i32 } [ %i.fl, %bb.ar ], [ %i.fk, %bb.aq ] ; 2 uses
  %i.fm = load ptr, ptr %16, align 8, !tbaa !51   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.as
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !52
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.ap
  %.pn77.pn = phi { ptr, i32 } [ %i.fj, %bb.ap ], [ %.pn77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %.pn77, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.fr = load ptr, ptr %14, align 8, !tbaa !54   ; 3 uses
  %.not.i.i178 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i178, label %_ZN7testing7MessageD2Ev.exit180, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !23
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(128) %i.fr) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit180

_ZN7testing7MessageD2Ev.exit180:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %bb.ao
  %.pn77.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.ao ], [ %.pn77.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ], [ %.pn77.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179 ]
end_hunk_0
begin_hunk_1_@_ZN22Flow_Constructors_Test8TestBodyEv:bb.a
bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.co

bb.cb:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit238
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.cc unwind label %bb.ch

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  %i.kg = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i239 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i239, label %_ZNK7testing15AssertionResult15failure_messageEv.exit240, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit240

_ZNK7testing15AssertionResult15failure_messageEv.exit240: ; preds = %bb.cd, %bb.cc
  %i.kj = phi ptr [ %i.ki, %bb.cd ], [ @.str.83, %bb.cc ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 28, ptr noundef %i.kj)
          to label %bb.ce unwind label %bb.ci

bb.ce:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit240
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  %i.kk = load ptr, ptr %25, align 8, !tbaa !54   ; 3 uses
  %.not.i.i241 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i241, label %_ZN7testing7MessageD2Ev.exit243, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242: ; preds = %bb.cf
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !23
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(128) %i.kk) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit243

_ZN7testing7MessageD2Ev.exit243:                  ; preds = %bb.cf, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  %i.ko = load ptr, ptr %i.kg, align 8, !tbaa !55 ; 4 uses
  %.not.i.i244 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i244, label %_ZN7testing15AssertionResultD2Ev.exit248, label %bb.cg

bb.cg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit243
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !51 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245: ; preds = %bb.cg
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !52
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i246

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i246: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245
  call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit248

_ZN7testing15AssertionResultD2Ev.exit248:         ; preds = %_ZN7testing7MessageD2Ev.exit243, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %bb.fc

bb.ch:                                            ; preds = %bb.cb
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit251

bb.ci:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit240
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ce
  %i.kw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #27
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn89 = phi { ptr, i32 } [ %i.kw, %bb.cj ], [ %i.kv, %bb.ci ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  %i.kx = load ptr, ptr %25, align 8, !tbaa !54   ; 3 uses
  %.not.i.i249 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i249, label %_ZN7testing7MessageD2Ev.exit251, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250: ; preds = %bb.ck
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !23
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load ptr, ptr %i.kz, align 8
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(128) %i.kx) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit251

_ZN7testing7MessageD2Ev.exit251:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250, %bb.ck, %bb.ch
  %.pn89.pn = phi { ptr, i32 } [ %i.ku, %bb.ch ], [ %.pn89, %bb.ck ], [ %.pn89, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #27
  br label %bb.co

.critedge126:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit238
  %i.lb = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !55 ; 4 uses
  %.not.i.i252 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i252, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.critedge126
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !51 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 2 uses
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i253: ; preds = %bb.cl
  %i.lg = load i64, ptr %i.le, align 8, !tbaa !52
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lh) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i254

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i254: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i253
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef 32) #28
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i254, %.critedge126
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  %i.li = load i64, ptr %3, align 8, !tbaa !102
  store i64 %i.li, ptr %27, align 8, !tbaa !104
  %i.lj = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  invoke void @_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEEC2ERKS5_RKS4_(ptr noundef nonnull align 8 dereferenceable(52) %i.lj, ptr noundef nonnull align 8 dereferenceable(52) %i.cc, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %.noexc257 unwind label %bb.cp

.noexc257:                                        ; preds = %bb.cm
  %i.lk = getelementptr inbounds nuw i8, ptr %27, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  invoke void @_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEEC2ERKSC_RKSB_(ptr noundef nonnull align 8 dereferenceable(52) %i.lk, ptr noundef nonnull align 8 dereferenceable(52) %i.da, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.cq unwind label %bb.cn

bb.cn:                                            ; preds = %.noexc257
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.lj) #27
  br label %.body

bb.co:                                            ; preds = %_ZN7testing7MessageD2Ev.exit251, %bb.ca
  %.pn89.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %_ZN7testing7MessageD2Ev.exit251 ], [ %i.kf, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %bb.fg

bb.cp:                                            ; preds = %bb.cm
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.cn, %bb.cp
  %eh.lpad-body = phi { ptr, i32 } [ %i.lm, %bb.cp ], [ %i.ll, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  br label %bb.ff

bb.cq:                                            ; preds = %.noexc257
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.ln = getelementptr inbounds nuw i8, ptr %27, i64 120
  %i.lo = load i64, ptr %i.el, align 8, !tbaa !99 ; 2 uses
  store i64 %i.lo, ptr %i.ln, align 8, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  %i.lp = load i64, ptr %3, align 8, !tbaa !102
  store i64 %i.lp, ptr %29, align 8, !tbaa !104
  %i.lq = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.lr = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !61
  store <2 x ptr> %i.lr, ptr %i.lq, align 8, !tbaa !61
  %i.ls = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.lt = load ptr, ptr %i.cf, align 8, !tbaa !60
  store ptr %i.lt, ptr %i.ls, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.cc, i8 0, i64 24, i1 false)
  %i.lu = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 4 uses
  %i.lv = load ptr, ptr %i.n, align 8, !tbaa !63  ; 2 uses
  store ptr %i.lv, ptr %i.lu, align 8, !tbaa !63
  %i.lw = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.lx = load <2 x ptr>, ptr %i.p, align 8, !tbaa !36
  %i.ly = load ptr, ptr %i.p, align 8, !tbaa !101
  store <2 x ptr> %i.lx, ptr %i.lw, align 8, !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.ma = load float, ptr %i.cz, align 8, !tbaa !77
  store float %i.ma, ptr %i.lz, align 8, !tbaa !77
  %i.mb = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.mc = load <2 x ptr>, ptr %i.da, align 8, !tbaa !61
  store <2 x ptr> %i.mc, ptr %i.mb, align 8, !tbaa !61
  %i.md = getelementptr inbounds nuw i8, ptr %29, i64 80
  %i.me = load ptr, ptr %i.dd, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.da, i8 0, i64 24, i1 false)
  %42 = load ptr, ptr %i.dl, align 8, !tbaa !80
  %i.mf = load <2 x ptr>, ptr %i.do, align 8, !tbaa !83
  %43 = insertelement <4 x ptr> poison, ptr %i.me, i64 0
  %44 = insertelement <4 x ptr> %43, ptr %42, i64 1
  %45 = shufflevector <2 x ptr> %i.mf, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %46 = shufflevector <4 x ptr> %44, <4 x ptr> %45, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %46, ptr %i.md, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i8 0, i64 24, i1 false)
  %i.mg = getelementptr inbounds nuw i8, ptr %29, i64 112
  %i.mh = load float, ptr %i.ei, align 8, !tbaa !95
  store float %i.mh, ptr %i.mg, align 8, !tbaa !95
  %i.mi = getelementptr inbounds nuw i8, ptr %29, i64 120
  store i64 %i.lo, ptr %i.mi, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.mj = ptrtoint ptr %i.ly to i64
  %i.mk = ptrtoint ptr %i.lv to i64
  %i.ml = sub i64 %i.mj, %i.mk                    ; 2 uses
  %i.mm = ashr exact i64 %i.ml, 4
  store i64 %i.mm, ptr %i.f, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i32 3, ptr %i.g, align 4, !tbaa !100
  %i.mn = icmp eq i64 %i.ml, 48
  br i1 %i.mn, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %30)
          to label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit282 unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImjEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %30, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit282 unwind label %bb.ct

_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit282: ; preds = %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.mo = load i8, ptr %30, align 8, !tbaa !46, !range !56, !noundef !103
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %.critedge130, label %bb.cu

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %bb.di

bb.cu:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit282
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cv unwind label %bb.da

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27
  %i.mr = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i283 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i283, label %_ZNK7testing15AssertionResult15failure_messageEv.exit284, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit284

_ZNK7testing15AssertionResult15failure_messageEv.exit284: ; preds = %bb.cw, %bb.cv
  %i.mu = phi ptr [ %i.mt, %bb.cw ], [ @.str.83, %bb.cv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %32, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 36, ptr noundef %i.mu)
          to label %bb.cx unwind label %bb.db

bb.cx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit284
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cy unwind label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  %i.mv = load ptr, ptr %31, align 8, !tbaa !54   ; 3 uses
  %.not.i.i285 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i285, label %_ZN7testing7MessageD2Ev.exit287, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i286

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i286: ; preds = %bb.cy
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !23
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(128) %i.mv) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit287

_ZN7testing7MessageD2Ev.exit287:                  ; preds = %bb.cy, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  %i.mz = load ptr, ptr %i.mr, align 8, !tbaa !55 ; 4 uses
  %.not.i.i288 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i288, label %_ZN7testing15AssertionResultD2Ev.exit292, label %bb.cz

bb.cz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit287
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !51 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 16 ; 2 uses
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i289: ; preds = %bb.cz
  %i.nd = load i64, ptr %i.nb, align 8, !tbaa !52
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.ne) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i290

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i290: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i289
  call void @_ZdlPvm(ptr noundef nonnull %i.mz, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit292

_ZN7testing15AssertionResultD2Ev.exit292:         ; preds = %_ZN7testing7MessageD2Ev.exit287, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i290
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  br label %bb.fb

bb.da:                                            ; preds = %bb.cu
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit295

bb.db:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit284
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cx
  %i.nh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #27
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn97 = phi { ptr, i32 } [ %i.nh, %bb.dc ], [ %i.ng, %bb.db ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  %i.ni = load ptr, ptr %31, align 8, !tbaa !54   ; 3 uses
  %.not.i.i293 = icmp eq ptr %i.ni, null
  br i1 %.not.i.i293, label %_ZN7testing7MessageD2Ev.exit295, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i294

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i294: ; preds = %bb.dd
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !23
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8
  call void %i.nl(ptr noundef nonnull align 8 dereferenceable(128) %i.ni) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit295

_ZN7testing7MessageD2Ev.exit295:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i294, %bb.dd, %bb.da
  %.pn97.pn = phi { ptr, i32 } [ %i.nf, %bb.da ], [ %.pn97, %bb.dd ], [ %.pn97, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i294 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #27
  br label %bb.di

.critedge130:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit282
  %i.nm = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !55 ; 4 uses
  %.not.i.i296 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i296, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.critedge130
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !51 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 16 ; 2 uses
  %i.nq = icmp eq ptr %i.no, %i.np
  br i1 %i.nq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i297: ; preds = %bb.de
  %i.nr = load i64, ptr %i.np, align 8, !tbaa !52
  %i.ns = add i64 %i.nr, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.ns) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i297
  call void @_ZdlPvm(ptr noundef nonnull %i.nn, i64 noundef 32) #28
  br label %bb.df

bb.df:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298, %.critedge130
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %i.nt = load ptr, ptr %i.lu, align 8, !tbaa !63
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !100 ; 2 uses
  store i32 %i.nv, ptr %i.h, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  store i32 2, ptr %i.i, align 4, !tbaa !100
  %i.nw = icmp eq i32 %i.nv, 2
  br i1 %i.nw, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33)
          to label %_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.dj

bb.dh:                                            ; preds = %bb.df
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIjiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.dj

_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.dg, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  %i.nx = load i8, ptr %33, align 8, !tbaa !46, !range !56, !noundef !103
  %i.ny = trunc nuw i8 %i.nx to i1
  br i1 %i.ny, label %.critedge132, label %bb.dk

bb.di:                                            ; preds = %_ZN7testing7MessageD2Ev.exit295, %bb.ct
  %.pn97.pn.pn = phi { ptr, i32 } [ %.pn97.pn, %_ZN7testing7MessageD2Ev.exit295 ], [ %i.mq, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  br label %bb.fe

bb.dj:                                            ; preds = %bb.dh, %bb.dg
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
end_hunk_1
begin_hunk_2_@_ZN14Flow_Copy_Test8TestBodyEv:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.ss, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit361

_ZN7testing15AssertionResultD2Ev.exit361:         ; preds = %bb.gc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  br label %bb.ge

bb.ge:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit337, %_ZN7testing15AssertionResultD2Ev.exit316, %_ZN7testing15AssertionResultD2Ev.exit295, %_ZN7testing15AssertionResultD2Ev.exit274, %_ZN7testing15AssertionResultD2Ev.exit253, %_ZN7testing15AssertionResultD2Ev.exit222, %_ZN7testing15AssertionResultD2Ev.exit201, %_ZN7testing15AssertionResultD2Ev.exit180, %_ZN7testing15AssertionResultD2Ev.exit160, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit361
  call void @_ZN4entt10basic_flowISaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN4entt10basic_flowISaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.gf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit356, %bb.fs
  %.pn108.pn.pn = phi { ptr, i32 } [ %.pn108.pn, %_ZN7testing7MessageD2Ev.exit356 ], [ %i.sb, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.fr, %bb.fb, %bb.el, %bb.dv, %bb.df, %bb.cp, %bb.co, %bb.bv, %bb.bf, %bb.ap, %bb.z
  %.pn108.pn.pn.pn = phi { ptr, i32 } [ %.pn108.pn.pn, %bb.gf ], [ %.pn104.pn.pn, %bb.fr ], [ %.pn100.pn.pn, %bb.fb ], [ %.pn96.pn.pn, %bb.el ], [ %.pn92.pn.pn, %bb.dv ], [ %.pn88.pn.pn, %bb.df ], [ %i.le, %bb.cp ], [ %.pn84.pn.pn, %bb.co ], [ %.pn80.pn.pn, %bb.bv ], [ %.pn76.pn.pn, %bb.bf ], [ %.pn72.pn.pn, %bb.ap ], [ %.pn.pn.pn, %bb.z ]
  call void @_ZN4entt10basic_flowISaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %3) #27
  br label %.body

.body:                                            ; preds = %bb.j, %bb.e, %bb.gg
  %.pn108.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn108.pn.pn.pn, %bb.gg ], [ %i.cn, %bb.j ], [ %i.ca, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.gh

bb.gh:                                            ; preds = %.body, %bb.i
  %.pn108.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn108.pn.pn.pn.pn, %.body ], [ %i.cm, %bb.i ]
  call void @_ZN4entt10basic_flowISaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn108.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN14Flow_Move_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.std::allocator.1", align 1  ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.std::allocator.1", align 1  ; 3 uses
  %3 = alloca %"class.entt::basic_flow", align 8  ; 25 uses
  %4 = alloca %"class.entt::basic_flow", align 8  ; 20 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.entt::basic_flow", align 8 ; 17 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN4entt10basic_flowISaIjEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 2, ptr %i.e, align 4, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 11 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !99   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 7 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = icmp eq i64 %i.s, %i.ab
  %i.ad = zext i1 %i.ac to i64
  %i.ae = add i64 %i.s, %i.ad
  store i64 %i.ae, ptr %i.r, align 8, !tbaa !99
  %i.af = invoke { ptr, i8 } @_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE20insert_or_do_nothingIRKjEEDaOT_(ptr noundef nonnull align 8 dereferenceable(52) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.af, 0
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.ah = ptrtoint ptr %.fca.0.extract.i to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 4
  store i64 %i.ak, ptr %3, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 4, ptr %i.d, align 4, !tbaa !100
  %i.al = load i64, ptr %i.r, align 8, !tbaa !99  ; 2 uses
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.ai
  %i.ap = ashr exact i64 %i.ao, 4
  %i.aq = icmp eq i64 %i.al, %i.ap
  %i.ar = zext i1 %i.aq to i64
  %i.as = add i64 %i.al, %i.ar
  store i64 %i.as, ptr %i.r, align 8, !tbaa !99
  %i.at = invoke { ptr, i8 } @_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE20insert_or_do_nothingIRKjEEDaOT_(ptr noundef nonnull align 8 dereferenceable(52) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %.fca.0.extract.i95 = extractvalue { ptr, i8 } %i.at, 0
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.av = ptrtoint ptr %.fca.0.extract.i95 to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 4
  store i64 %i.ay, ptr %3, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 8, ptr %i.c, align 4, !tbaa !100
  %i.az = load i64, ptr %i.r, align 8, !tbaa !99  ; 2 uses
  %i.ba = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.aw
  %i.bd = ashr exact i64 %i.bc, 4
  %i.be = icmp eq i64 %i.az, %i.bd
  %i.bf = zext i1 %i.be to i64
  %i.bg = add i64 %i.az, %i.bf
  store i64 %i.bg, ptr %i.r, align 8, !tbaa !99
  %i.bh = invoke { ptr, i8 } @_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE20insert_or_do_nothingIRKjEEDaOT_(ptr noundef nonnull align 8 dereferenceable(52) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.e:                                             ; preds = %bb.bx, %_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEEaSEOSC_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.f:                                             ; preds = %bb.c
  %.fca.0.extract.i97 = extractvalue { ptr, i8 } %i.bh, 0
  %i.bk = ptrtoint ptr %.fca.0.extract.i97 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bm = load <2 x ptr>, ptr %i.t, align 8, !tbaa !61
  store <2 x ptr> %i.bm, ptr %i.bl, align 8, !tbaa !61
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 9 uses
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.br = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !105
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = sub i64 %i.bk, %i.bs
  %i.bu = ashr exact i64 %i.bt, 4                 ; 2 uses
  store i64 %i.bu, ptr %3, align 8, !tbaa !102
  store i64 %i.bu, ptr %4, align 8, !tbaa !102
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.t, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.br, ptr %i.bn, align 8, !tbaa !105
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.by = load <2 x ptr>, ptr %i.v, align 8, !tbaa !36
  %i.bz = load ptr, ptr %i.v, align 8, !tbaa !101
  store <2 x ptr> %i.by, ptr %i.bv, align 8, !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !77
  store float %i.cc, ptr %i.ca, align 8, !tbaa !77
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.cf = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !61
  store <2 x ptr> %i.cf, ptr %i.cd, align 8, !tbaa !61
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 6 uses
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  %31 = load ptr, ptr %i.ch, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ce, i8 0, i64 24, i1 false)
  %32 = load ptr, ptr %29, align 8, !tbaa !80
  %i.cl = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !83
  %33 = insertelement <4 x ptr> poison, ptr %31, i64 0
  %34 = insertelement <4 x ptr> %33, ptr %32, i64 1
  %35 = shufflevector <2 x ptr> %i.cl, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %36 = shufflevector <4 x ptr> %34, <4 x ptr> %35, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %36, ptr %i.cg, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.co = load float, ptr %i.cn, align 8, !tbaa !95
  store float %i.co, ptr %i.cm, align 8, !tbaa !95
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 4 uses
  %i.cq = load i64, ptr %i.r, align 8, !tbaa !99
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.cr = ptrtoint ptr %i.bz to i64
  %i.cs = sub i64 %i.cr, %i.bs                    ; 2 uses
  %i.ct = ashr exact i64 %i.cs, 4
  store i64 %i.ct, ptr %i.f, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i32 3, ptr %i.g, align 4, !tbaa !100
  %i.cu = icmp eq i64 %i.cs, 48
  br i1 %i.cu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImjEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.i

_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.cv = load i8, ptr %5, align 8, !tbaa !46, !range !56, !noundef !103
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %.critedge84, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %bb.x

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.db = phi ptr [ %i.da, %bb.l ], [ @.str.83, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 85, ptr noundef %i.db)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.dc = load ptr, ptr %6, align 8, !tbaa !54    ; 3 uses
  %.not.i.i112 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i112, label %_ZN7testing7MessageD2Ev.exit114, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113: ; preds = %bb.n
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !23
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(128) %i.dc) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit114

_ZN7testing7MessageD2Ev.exit114:                  ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.dg = load ptr, ptr %i.cy, align 8, !tbaa !55 ; 4 uses
  %.not.i.i115 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i115, label %_ZN7testing15AssertionResultD2Ev.exit119, label %bb.o

bb.o:                                             ; preds = %_ZN7testing7MessageD2Ev.exit114
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !51 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i116: ; preds = %bb.o
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !52
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i116
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit119

_ZN7testing15AssertionResultD2Ev.exit119:         ; preds = %_ZN7testing7MessageD2Ev.exit114, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.dw

bb.p:                                             ; preds = %bb.j
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit122

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn53 = phi { ptr, i32 } [ %i.do, %bb.r ], [ %i.dn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.dp = load ptr, ptr %6, align 8, !tbaa !54    ; 3 uses
  %.not.i.i120 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i120, label %_ZN7testing7MessageD2Ev.exit122, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.s
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !23
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(128) %i.dp) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit122

_ZN7testing7MessageD2Ev.exit122:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121, %bb.s, %bb.p
  %.pn53.pn = phi { ptr, i32 } [ %i.dm, %bb.p ], [ %.pn53, %bb.s ], [ %.pn53, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #27
  br label %bb.x

.critedge84:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !55 ; 4 uses
  %.not.i.i123 = icmp eq ptr %i.du, null
  br i1 %.not.i.i123, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge84
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !51 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124: ; preds = %bb.t
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !52
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef 32) #28
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125, %.critedge84
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %i.ea = load ptr, ptr %i.bp, align 8, !tbaa !63
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !100 ; 2 uses
  store i32 %i.ec, ptr %i.h, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  store i32 2, ptr %i.i, align 4, !tbaa !100
  %i.ed = icmp eq i32 %i.ec, 2
  br i1 %i.ed, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

bb.w:                                             ; preds = %bb.u
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIjiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  %i.ee = load i8, ptr %8, align 8, !tbaa !46, !range !56, !noundef !103
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %.critedge86, label %bb.z

bb.x:                                             ; preds = %_ZN7testing7MessageD2Ev.exit122, %bb.i
  %.pn53.pn.pn = phi { ptr, i32 } [ %.pn53.pn, %_ZN7testing7MessageD2Ev.exit122 ], [ %i.cx, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.dy

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
end_hunk_2
begin_hunk_3_@_ZN14Flow_Move_Test8TestBodyEv:bb.a
  br label %bb.ce

bb.bf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit171
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bg unwind label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.gz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i172 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i172, label %_ZNK7testing15AssertionResult15failure_messageEv.exit173, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit173

_ZNK7testing15AssertionResult15failure_messageEv.exit173: ; preds = %bb.bh, %bb.bg
  %i.hc = phi ptr [ %i.hb, %bb.bh ], [ @.str.83, %bb.bg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 89, ptr noundef %i.hc)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit173
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.hd = load ptr, ptr %15, align 8, !tbaa !54   ; 3 uses
  %.not.i.i174 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i174, label %_ZN7testing7MessageD2Ev.exit176, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175: ; preds = %bb.bj
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !23
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(128) %i.hd) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit176

_ZN7testing7MessageD2Ev.exit176:                  ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.hh = load ptr, ptr %i.gz, align 8, !tbaa !55 ; 4 uses
  %.not.i.i177 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i177, label %_ZN7testing15AssertionResultD2Ev.exit181, label %bb.bk

bb.bk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit176
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !51 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178: ; preds = %bb.bk
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !52
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit181

_ZN7testing15AssertionResultD2Ev.exit181:         ; preds = %_ZN7testing7MessageD2Ev.exit176, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.dw

bb.bl:                                            ; preds = %bb.bf
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit184

bb.bm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit173
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bi
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #27
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn65 = phi { ptr, i32 } [ %i.hp, %bb.bn ], [ %i.ho, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.hq = load ptr, ptr %15, align 8, !tbaa !54   ; 3 uses
  %.not.i.i182 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i182, label %_ZN7testing7MessageD2Ev.exit184, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183: ; preds = %bb.bo
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !23
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(128) %i.hq) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit184

_ZN7testing7MessageD2Ev.exit184:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183, %bb.bo, %bb.bl
  %.pn65.pn = phi { ptr, i32 } [ %i.hn, %bb.bl ], [ %.pn65, %bb.bo ], [ %.pn65, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #27
  br label %bb.ce

.critedge90:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit171
  %i.hu = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !55 ; 4 uses
  %.not.i.i185 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i185, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.critedge90
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !51 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186: ; preds = %bb.bp
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !52
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef 32) #28
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187, %.critedge90
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  invoke void @_ZN4entt10basic_flowISaIjEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.br unwind label %bb.cf

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.ib = load i64, ptr %17, align 8
  store i64 %i.ib, ptr %3, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.id = load ptr, ptr %i.t, align 8, !tbaa !59  ; 3 uses
  %i.ie = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.if = load <2 x ptr>, ptr %i.ic, align 8, !tbaa !61
  store <2 x ptr> %i.if, ptr %i.t, align 8, !tbaa !61
  %i.ig = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !60
  store ptr %i.ih, ptr %i.bo, align 8, !tbaa !60
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.id, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ic, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ii = ptrtoint ptr %i.ie to i64
  %i.ij = ptrtoint ptr %i.id to i64
  %i.ik = sub i64 %i.ii, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.ik) #28
  br label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i

_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i: ; preds = %bb.bs, %bb.br
  %i.il = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.im = load ptr, ptr %i.u, align 8, !tbaa !63  ; 3 uses
  %i.in = load ptr, ptr %i.bx, align 8, !tbaa !64
  %i.io = load <2 x ptr>, ptr %i.il, align 8, !tbaa !36
  store <2 x ptr> %i.io, ptr %i.u, align 8, !tbaa !36
  %i.ip = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !64
  store ptr %i.iq, ptr %i.bx, align 8, !tbaa !64
  %.not.i.i.i.i.i.i.i4.i.i = icmp eq ptr %i.im, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.il, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i4.i.i, label %_ZN4entt10basic_flowISaIjEEaSEOS2_.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i
  %i.ir = ptrtoint ptr %i.in to i64
  %i.is = ptrtoint ptr %i.im to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.it) #28
  br label %_ZN4entt10basic_flowISaIjEEaSEOS2_.exit

_ZN4entt10basic_flowISaIjEEaSEOS2_.exit:          ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i, %bb.bt
  %i.iu = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.iv = load float, ptr %i.iu, align 8, !tbaa !77
  store float %i.iv, ptr %i.cb, align 8, !tbaa !77
  %i.iw = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 2 uses
  %i.ix = load ptr, ptr %i.ce, align 8, !tbaa !59 ; 3 uses
  %i.iy = load ptr, ptr %i.ch, align 8, !tbaa !60
  %i.iz = load <2 x ptr>, ptr %i.iw, align 8, !tbaa !61
  store <2 x ptr> %i.iz, ptr %i.ce, align 8, !tbaa !61
  %i.ja = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !60
  store ptr %i.jb, ptr %i.ch, align 8, !tbaa !60
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ix, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.iw, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZN4entt10basic_flowISaIjEEaSEOS2_.exit
  %i.jc = ptrtoint ptr %i.iy to i64
  %i.jd = ptrtoint ptr %i.ix to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.je) #28
  br label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i

_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i: ; preds = %bb.bu, %_ZN4entt10basic_flowISaIjEEaSEOS2_.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %17, i64 88 ; 2 uses
  %i.jg = load ptr, ptr %29, align 8, !tbaa !80   ; 5 uses
  %i.jh = load ptr, ptr %i.ci, align 8, !tbaa !81 ; 2 uses
  %i.ji = load ptr, ptr %i.ck, align 8, !tbaa !82
  %i.jj = load <2 x ptr>, ptr %i.jf, align 8, !tbaa !83
  store <2 x ptr> %i.jj, ptr %29, align 8, !tbaa !83
  %i.jk = getelementptr inbounds nuw i8, ptr %17, i64 104
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !82
  store ptr %i.jl, ptr %i.ck, align 8, !tbaa !82
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.jg, %i.jh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jf, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.jt, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.jg, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i ] ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !87
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = ptrtoint ptr %i.jn to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef %i.js) #28
  br label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bv, %.lr.ph.i.i.i.i.i.i.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i4.i = icmp eq ptr %i.jt, %i.jh
  br i1 %.not.i.i.i.i.i.i.i4.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEEaSEOSC_.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ju = ptrtoint ptr %i.ji to i64
  %i.jv = ptrtoint ptr %i.jg to i64
  %i.jw = sub i64 %i.ju, %i.jv
  call void @_ZdlPvm(ptr noundef nonnull %i.jg, i64 noundef %i.jw) #28
  br label %_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEEaSEOSC_.exit

_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEEaSEOSC_.exit: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i, %bb.bw
  %i.jx = getelementptr inbounds nuw i8, ptr %17, i64 112
  %i.jy = load float, ptr %i.jx, align 8, !tbaa !95
  store float %i.jy, ptr %i.cn, align 8, !tbaa !95
  %i.jz = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !99
  store i64 %i.ka, ptr %i.r, align 8, !tbaa !99
  call void @_ZN4entt10basic_flowISaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 1, ptr %i.b, align 4, !tbaa !100
  %i.kb = load i64, ptr %i.r, align 8, !tbaa !99  ; 2 uses
  %i.kc = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.kd = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = ashr exact i64 %i.kg, 4
  %i.ki = icmp eq i64 %i.kb, %i.kh
  %i.kj = zext i1 %i.ki to i64
  %i.kk = add i64 %i.kb, %i.kj
  store i64 %i.kk, ptr %i.r, align 8, !tbaa !99
  %i.kl = invoke { ptr, i8 } @_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE20insert_or_do_nothingIRKjEEDaOT_(ptr noundef nonnull align 8 dereferenceable(52) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.bx unwind label %bb.e

bb.bx:                                            ; preds = %_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEEaSEOSC_.exit
  %.fca.0.extract.i191 = extractvalue { ptr, i8 } %i.kl, 0
  %i.km = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.kn = ptrtoint ptr %.fca.0.extract.i191 to i64
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = ashr exact i64 %i.kp, 4
  store i64 %i.kq, ptr %3, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 3, ptr %i.a, align 4, !tbaa !100
  %i.kr = load i64, ptr %i.cp, align 8, !tbaa !99 ; 2 uses
  %i.ks = load ptr, ptr %i.bv, align 8, !tbaa !101
  %i.kt = load ptr, ptr %i.bp, align 8, !tbaa !63
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = ashr exact i64 %i.kw, 4
  %i.ky = icmp eq i64 %i.kr, %i.kx
  %i.kz = zext i1 %i.ky to i64
  %i.la = add i64 %i.kr, %i.kz
  store i64 %i.la, ptr %i.cp, align 8, !tbaa !99
  %i.lb = invoke { ptr, i8 } @_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE20insert_or_do_nothingIRKjEEDaOT_(ptr noundef nonnull align 8 dereferenceable(52) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.by unwind label %bb.e      ; 0 uses

bb.by:                                            ; preds = %bb.bx
  %i.lc = load ptr, ptr %i.bp, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ld = load i64, ptr %3, align 8
  store i64 %i.ld, ptr %4, align 8
  %i.le = load ptr, ptr %i.bl, align 8, !tbaa !59 ; 3 uses
  %i.lf = load ptr, ptr %i.bn, align 8, !tbaa !60
  %i.lg = load <2 x ptr>, ptr %i.t, align 8, !tbaa !61
  store <2 x ptr> %i.lg, ptr %i.bl, align 8, !tbaa !61
  %i.lh = load ptr, ptr %i.bo, align 8, !tbaa !60
  store ptr %i.lh, ptr %i.bn, align 8, !tbaa !60
  %.not.i.i.i.i.i.i.i.i.i197 = icmp eq ptr %i.le, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.t, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i197, label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i198, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.li = ptrtoint ptr %i.lf to i64
  %i.lj = ptrtoint ptr %i.le to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef %i.lk) #28
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !63
  br label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i198

_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i198: ; preds = %bb.bz, %bb.by
  %i.ll = phi ptr [ %.pre, %bb.bz ], [ %i.lc, %bb.by ] ; 3 uses
  %i.lm = load ptr, ptr %i.bw, align 8, !tbaa !64
  %i.ln = load <2 x ptr>, ptr %i.u, align 8, !tbaa !36
  store <2 x ptr> %i.ln, ptr %i.bp, align 8, !tbaa !36
  %i.lo = load ptr, ptr %i.bx, align 8, !tbaa !64
  store ptr %i.lo, ptr %i.bw, align 8, !tbaa !64
  %.not.i.i.i.i.i.i.i4.i.i199 = icmp eq ptr %i.ll, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i4.i.i199, label %_ZN4entt10basic_flowISaIjEEaSEOS2_.exit200, label %bb.ca

bb.ca:                                            ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i198
  %i.lp = ptrtoint ptr %i.lm to i64
  %i.lq = ptrtoint ptr %i.ll to i64
  %i.lr = sub i64 %i.lp, %i.lq
  call void @_ZdlPvm(ptr noundef nonnull %i.ll, i64 noundef %i.lr) #28
  br label %_ZN4entt10basic_flowISaIjEEaSEOS2_.exit200

_ZN4entt10basic_flowISaIjEEaSEOS2_.exit200:       ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i198, %bb.ca
  %i.ls = load float, ptr %i.cb, align 8, !tbaa !77
  store float %i.ls, ptr %i.ca, align 8, !tbaa !77
  %i.lt = load ptr, ptr %i.cd, align 8, !tbaa !59 ; 3 uses
  %i.lu = load ptr, ptr %i.cg, align 8, !tbaa !60
  %i.lv = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !61
  store <2 x ptr> %i.lv, ptr %i.cd, align 8, !tbaa !61
  %i.lw = load ptr, ptr %i.ch, align 8, !tbaa !60
  store ptr %i.lw, ptr %i.cg, align 8, !tbaa !60
  %.not.i.i.i.i.i.i.i.i260 = icmp eq ptr %i.lt, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ce, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i260, label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i261, label %bb.cb

bb.cb:                                            ; preds = %_ZN4entt10basic_flowISaIjEEaSEOS2_.exit200
  %i.lx = ptrtoint ptr %i.lu to i64
  %i.ly = ptrtoint ptr %i.lt to i64
  %i.lz = sub i64 %i.lx, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.lz) #28
  br label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i261

_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i261: ; preds = %bb.cb, %_ZN4entt10basic_flowISaIjEEaSEOS2_.exit200
  %i.ma = load ptr, ptr %28, align 8, !tbaa !80   ; 5 uses
  %i.mb = load ptr, ptr %30, align 8, !tbaa !81   ; 2 uses
  %i.mc = load ptr, ptr %i.cj, align 8, !tbaa !82
  %i.md = load <2 x ptr>, ptr %29, align 8, !tbaa !83
  store <2 x ptr> %i.md, ptr %28, align 8, !tbaa !83
  %i.me = load ptr, ptr %i.ck, align 8, !tbaa !82
  store ptr %i.me, ptr %i.cj, align 8, !tbaa !82
  %.not4.i.i.i.i.i.i.i.i262 = icmp eq ptr %i.ma, %i.mb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i.i262, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i268, label %.lr.ph.i.i.i.i.i.i.i.i263

.lr.ph.i.i.i.i.i.i.i.i263:                        ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i261, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i266
  %.05.i.i.i.i.i.i.i.i264 = phi ptr [ %i.mm, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i266 ], [ %i.ma, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i261 ] ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i264, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i265 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i265, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i266, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i263
  %i.mh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i264, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !87
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.mg to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef %i.ml) #28
  br label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i266

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i266: ; preds = %bb.cc, %.lr.ph.i.i.i.i.i.i.i.i263
  %i.mm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i264, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i4.i267 = icmp eq ptr %i.mm, %i.mb
  br i1 %.not.i.i.i.i.i.i.i4.i267, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i268, label %.lr.ph.i.i.i.i.i.i.i.i263, !llvm.loop !1

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i268: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i.i.i.i266, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i261
  %.not.i.i1.i.i.i.i.i.i269 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i1.i.i.i.i.i.i269, label %_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEEaSEOSC_.exit270, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i268
  %i.mn = ptrtoint ptr %i.mc to i64
  %i.mo = ptrtoint ptr %i.ma to i64
  %i.mp = sub i64 %i.mn, %i.mo
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.mp) #28
  br label %_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEEaSEOSC_.exit270

_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEEaSEOSC_.exit270: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i268, %bb.cd
  %i.mq = load float, ptr %i.cn, align 8, !tbaa !95
  store float %i.mq, ptr %i.cm, align 8, !tbaa !95
  %i.mr = load i64, ptr %i.r, align 8, !tbaa !99
  store i64 %i.mr, ptr %i.cp, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.ms = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.mt = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.mu = icmp eq ptr %i.ms, %i.mt                ; 2 uses
  %i.mv = zext i1 %i.mu to i8
  store i8 %i.mv, ptr %18, align 8, !tbaa !46
  %i.mw = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store ptr null, ptr %i.mw, align 8, !tbaa !47
  br i1 %i.mu, label %bb.cr, label %bb.cg

bb.ce:                                            ; preds = %_ZN7testing7MessageD2Ev.exit184, %bb.be
  %.pn65.pn.pn = phi { ptr, i32 } [ %.pn65.pn, %_ZN7testing7MessageD2Ev.exit184 ], [ %i.gy, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.dy

bb.cf:                                            ; preds = %bb.bq
  %i.mx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.dy

bb.cg:                                            ; preds = %_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEEaSEOSC_.exit270
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ch unwind label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.ci unwind label %bb.cn

bb.ci:                                            ; preds = %bb.ch
  %i.my = load ptr, ptr %21, align 8, !tbaa !51
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 98, ptr noundef %i.my)
          to label %bb.cj unwind label %bb.co

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #27
  %i.mz = load ptr, ptr %21, align 8, !tbaa !51   ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %bb.ck
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !52
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  %i.ne = load ptr, ptr %19, align 8, !tbaa !54   ; 3 uses
  %.not.i.i204 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i204, label %_ZN7testing7MessageD2Ev.exit206, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !23
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8
  call void %i.nh(ptr noundef nonnull align 8 dereferenceable(128) %i.ne) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit206

_ZN7testing7MessageD2Ev.exit206:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  %i.ni = load ptr, ptr %i.mw, align 8, !tbaa !55 ; 4 uses
  %.not.i.i207 = icmp eq ptr %i.ni, null
  br i1 %.not.i.i207, label %_ZN7testing15AssertionResultD2Ev.exit211, label %bb.cl

bb.cl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit206
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !51 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 16 ; 2 uses
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i208: ; preds = %bb.cl
  %i.nm = load i64, ptr %i.nk, align 8, !tbaa !52
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nn) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i208
  call void @_ZdlPvm(ptr noundef nonnull %i.ni, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit211

_ZN7testing15AssertionResultD2Ev.exit211:         ; preds = %_ZN7testing7MessageD2Ev.exit206, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.dw

bb.cm:                                            ; preds = %bb.cg
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit217

bb.cn:                                            ; preds = %bb.ch
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

bb.co:                                            ; preds = %bb.ci
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cj
  %i.nr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #27
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn69 = phi { ptr, i32 } [ %i.nr, %bb.cp ], [ %i.nq, %bb.co ] ; 2 uses
  %i.ns = load ptr, ptr %21, align 8, !tbaa !51   ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.nu = icmp eq ptr %i.ns, %i.nt
  br i1 %i.nu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %bb.cq
  %i.nv = load i64, ptr %i.nt, align 8, !tbaa !52
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212, %bb.cn
  %.pn69.pn = phi { ptr, i32 } [ %i.np, %bb.cn ], [ %.pn69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212 ], [ %.pn69, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  %i.nx = load ptr, ptr %19, align 8, !tbaa !54   ; 3 uses
  %.not.i.i215 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i215, label %_ZN7testing7MessageD2Ev.exit217, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !23
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(128) %i.nx) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit217

_ZN7testing7MessageD2Ev.exit217:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, %bb.cm
  %.pn69.pn.pn = phi { ptr, i32 } [ %i.no, %bb.cm ], [ %.pn69.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214 ], [ %.pn69.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.dy

bb.cr:                                            ; preds = %_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEEaSEOSC_.exit270
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #27
  %i.ob = load ptr, ptr %i.bv, align 8, !tbaa !101
  %i.oc = load ptr, ptr %i.bp, align 8, !tbaa !63
  %i.od = ptrtoint ptr %i.ob to i64
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = sub i64 %i.od, %i.oe                    ; 2 uses
  %i.og = ashr exact i64 %i.of, 4
  store i64 %i.og, ptr %i.n, align 8, !tbaa !102
end_hunk_3
