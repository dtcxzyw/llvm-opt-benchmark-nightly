Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_simdlib?download=true
inline.NumInlined: 349
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.8 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.9 = private unnamed_addr constant [112 x i8] c"Test can not provide both TearDownTestSuite and TearDownTestCase, please make sure there is only one present at\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestEE = linkonce_odr dso_local constant [82 x i8] c"N7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestEE\00", comdat, align 1
@_ZTIN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant [37 x i8] c"N7testing8internal15TestFactoryBaseE\00", comdat, align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@_ZN37TestSIMDLib_TestCmpltMinMaxFloat_Test10test_info_E = dso_local global ptr null, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"TestCmpltMinMaxFloat\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestEE = linkonce_odr dso_local constant [78 x i8] c"N7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestEE\00", comdat, align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"minValues.is_same_as(expectedMinValues)\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"minIndices.is_same_as(expectedMinIndices)\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"maxValues.is_same_as(expectedMaxValues)\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"maxIndices.is_same_as(expectedMaxIndices)\00", align 1
@_ZN35TestSIMDLib_TestCmpltMinMaxInt_Test10test_info_E = dso_local global ptr null, align 8
@.str.21 = private unnamed_addr constant [19 x i8] c"TestCmpltMinMaxInt\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestEE = linkonce_odr dso_local constant [76 x i8] c"N7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestEE\00", comdat, align 1
@_ZN37TestSIMDLib_TestCmpltMinMaxInt16_Test10test_info_E = dso_local global ptr null, align 8
@.str.23 = private unnamed_addr constant [21 x i8] c"TestCmpltMinMaxInt16\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestEE = linkonce_odr dso_local constant [78 x i8] c"N7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestEE\00", comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_test_simdlib.cpp, ptr null }]

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN41TestSIMDLib_TestCmpltAndBlendInplace_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #14
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN41TestSIMDLib_TestCmpltAndBlendInplace_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN5faiss12_GLOBAL__N_123cmplt_and_blend_inplaceENS_16simd8float32_tplILNS_9SIMDLevelE0EEENS_15simd8uint32_tplILS2_0EEERS3_RS5_.exit:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN37TestSIMDLib_TestCmpltMinMaxFloat_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN37TestSIMDLib_TestCmpltMinMaxFloat_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN35TestSIMDLib_TestCmpltMinMaxInt_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN35TestSIMDLib_TestCmpltMinMaxInt_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN37TestSIMDLib_TestCmpltMinMaxInt16_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN37TestSIMDLib_TestCmpltMinMaxInt16_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 6 uses
  %2 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 5 uses
  %3 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 6 uses
  %4 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 5 uses
  %5 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 10 uses
  %6 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 10 uses
  %7 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 10 uses
  %8 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 10 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, ptr %1, align 16
  %.sroa.0204.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <8 x i16> <i16 1000, i16 1001, i16 1002, i16 1003, i16 1004, i16 1005, i16 1006, i16 1007>, ptr %.sroa.0204.sroa.9.0..sroa_idx, align 16
  store <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, ptr %2, align 16
  %.sroa.0205.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <8 x i16> <i16 1000, i16 1001, i16 1002, i16 1003, i16 1004, i16 1005, i16 1006, i16 1007>, ptr %.sroa.0205.sroa.9.0..sroa_idx, align 16
  store <8 x i16> <i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17>, ptr %3, align 16
  %.sroa.0206.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <8 x i16> <i16 1010, i16 1011, i16 1012, i16 1013, i16 1014, i16 1015, i16 1016, i16 1017>, ptr %.sroa.0206.sroa.9.0..sroa_idx, align 16
  store <8 x i16> splat (i16 5), ptr %4, align 16
  %.sroa.0207.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i16> splat (i16 1005), ptr %.sroa.0207.sroa.9.0..sroa_idx, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.027.i = phi i64 [ 0, %bb.a ], [ %i.ac, %bb.b ] ; 9 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %.027.i
  %i.r = load i16, ptr %i.q, align 2, !tbaa !10   ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.027.i
  %i.t = load i16, ptr %i.s, align 2, !tbaa !10   ; 3 uses
  %i.u = icmp ult i16 %i.r, %i.t                  ; 2 uses
  %..i = tail call i16 @llvm.umin.i16(i16 %i.r, i16 %i.t)
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.027.i
  store i16 %..i, ptr %i.v, align 2, !tbaa !10
  %.pn.i = select i1 %i.u, ptr %3, ptr %1
  %.in.i = getelementptr inbounds nuw [2 x i8], ptr %.pn.i, i64 %.027.i
  %i.w = load i16, ptr %.in.i, align 2, !tbaa !10
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %.027.i
  store i16 %i.w, ptr %i.x, align 2, !tbaa !10
  %i.y = tail call i16 @llvm.umax.i16(i16 %i.r, i16 %i.t)
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %.027.i
  store i16 %i.y, ptr %i.z, align 2, !tbaa !10
  %.pn25.i = select i1 %i.u, ptr %1, ptr %3
  %.in24.i = getelementptr inbounds nuw [2 x i8], ptr %.pn25.i, i64 %.027.i
  %i.aa = load i16, ptr %.in24.i, align 2, !tbaa !10
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %.027.i
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !10
  %i.ac = add nuw nsw i64 %.027.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, 16
  br i1 %exitcond.not.i, label %_ZN5faiss18cmplt_min_max_fastENS_16simd16uint16_tplILNS_9SIMDLevelE0EEES2_S2_S2_RS2_S3_S3_S3_.exit, label %bb.b, !llvm.loop !30

_ZN5faiss18cmplt_min_max_fastENS_16simd16uint16_tplILNS_9SIMDLevelE0EEES2_S2_S2_RS2_S3_S3_S3_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.ad = load <4 x i32>, ptr %5, align 16
  %.fr = freeze <4 x i32> %i.ad
  %i.ae = load i32, ptr %i.a, align 16
  %.not.4.i = icmp eq i32 %i.ae, 65602536
  %i.af = load i32, ptr %i.b, align 4
  %.not.5.i = icmp eq i32 %i.af, 65733610
  %i.ag = load i32, ptr %i.c, align 8
  %.not.6.i = icmp eq i32 %i.ag, 65864684
  %i.ah = icmp ne <4 x i32> %.fr, <i32 65536, i32 196610, i32 327684, i32 327685>
  %i.ai = bitcast <4 x i1> %i.ah to i4
  %i.aj = icmp eq i4 %i.ai, 0
  %op.rdx375 = select i1 %i.aj, i1 %.not.4.i, i1 false
  %25 = select i1 %op.rdx375, i1 %.not.5.i, i1 false
  %op.rdx377 = select i1 %25, i1 %.not.6.i, i1 false
  br i1 %op.rdx377, label %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit, label %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit.thread

_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit.thread: ; preds = %_ZN5faiss18cmplt_min_max_fastENS_16simd16uint16_tplILNS_9SIMDLevelE0EEES2_S2_S2_RS2_S3_S3_S3_.exit
  store i8 0, ptr %9, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !42
  br label %bb.c

_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit: ; preds = %_ZN5faiss18cmplt_min_max_fastENS_16simd16uint16_tplILNS_9SIMDLevelE0EEES2_S2_S2_RS2_S3_S3_S3_.exit
  %i.al = load i32, ptr %i.d, align 4, !tbaa !10
  %.not.7.i = icmp eq i32 %i.al, 65864685         ; 2 uses
  %i.am = zext i1 %.not.7.i to i8
  store i8 %i.am, ptr %9, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !42
  br i1 %.not.7.i, label %bb.n, label %bb.c

bb.c:                                             ; preds = %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit.thread, %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit
  %i.ao = phi ptr [ %i.ak, %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit.thread ], [ %i.an, %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %12, align 8, !tbaa !17
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 229, ptr noundef %i.ap)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #13
  %i.aq = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !10
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.av = load ptr, ptr %10, align 8, !tbaa !44   ; 3 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(128) %i.av) #13, !inline_history !31
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.az = load ptr, ptr %i.ao, align 8, !tbaa !20 ; 4 uses
  %.not.i.i47 = icmp eq ptr %i.az, null
  br i1 %.not.i.i47, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !10
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 32) #14
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.ay

bb.i:                                             ; preds = %bb.c
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit53

bb.j:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.k:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.l ], [ %i.bh, %bb.k ] ; 2 uses
  %i.bj = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.m
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.bo = load ptr, ptr %10, align 8, !tbaa !44   ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i51, label %_ZN7testing7MessageD2Ev.exit53, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(128) %i.bo) #13, !inline_history !31
  br label %_ZN7testing7MessageD2Ev.exit53

_ZN7testing7MessageD2Ev.exit53:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.i ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.az

bb.n:                                             ; preds = %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.bs = load <4 x i32>, ptr %6, align 16
  %.fr380.a = freeze <4 x i32> %i.bs
  %i.bt = load i32, ptr %i.e, align 16
  %.not.4.i64 = icmp eq i32 %i.bt, 65602536
  %i.bu = load i32, ptr %i.f, align 4
  %.not.5.i65 = icmp eq i32 %i.bu, 65733610
  %i.bv = load i32, ptr %i.g, align 8
  %.not.6.i66 = icmp eq i32 %i.bv, 65864684
  %i.bw = icmp ne <4 x i32> %.fr380.a, <i32 65536, i32 196610, i32 327684, i32 1114128>
  %i.bx = bitcast <4 x i1> %i.bw to i4
  %i.by = icmp eq i4 %i.bx, 0
  %op.rdx372 = select i1 %i.by, i1 %.not.4.i64, i1 false
  %26 = select i1 %op.rdx372, i1 %.not.5.i65, i1 false
  %op.rdx374 = select i1 %26, i1 %.not.6.i66, i1 false
  br i1 %op.rdx374, label %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit68, label %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit68.thread

_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit68.thread: ; preds = %bb.n
  store i8 0, ptr %13, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr null, ptr %i.bz, align 8, !tbaa !42
  br label %bb.o

_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit68: ; preds = %bb.n
  %i.ca = load i32, ptr %i.h, align 4, !tbaa !10
  %.not.7.i67 = icmp eq i32 %i.ca, 66651128       ; 2 uses
  %i.cb = zext i1 %.not.7.i67 to i8
  store i8 %i.cb, ptr %13, align 8, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr null, ptr %i.cc, align 8, !tbaa !42
  br i1 %.not.7.i67, label %bb.z, label %bb.o

bb.o:                                             ; preds = %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit68.thread, %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit68
  %i.cd = phi ptr [ %i.bz, %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit68.thread ], [ %i.cc, %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit68 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %16, align 8, !tbaa !17
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 230, ptr noundef %i.ce)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #13
  %i.cf = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.s
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !10
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  %i.ck = load ptr, ptr %14, align 8, !tbaa !44   ; 3 uses
  %.not.i.i72 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i72, label %_ZN7testing7MessageD2Ev.exit74, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !19
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(128) %i.ck) #13, !inline_history !31
  br label %_ZN7testing7MessageD2Ev.exit74

_ZN7testing7MessageD2Ev.exit74:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !20 ; 4 uses
  %.not.i.i75 = icmp eq ptr %i.co, null
  br i1 %.not.i.i75, label %_ZN7testing15AssertionResultD2Ev.exit79, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit74
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !17 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76: ; preds = %bb.t
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !10
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i77

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i77: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 32) #14
  br label %_ZN7testing15AssertionResultD2Ev.exit79

_ZN7testing15AssertionResultD2Ev.exit79:          ; preds = %_ZN7testing7MessageD2Ev.exit74, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.ay

bb.u:                                             ; preds = %bb.o
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit85

bb.v:                                             ; preds = %bb.p
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.w:                                             ; preds = %bb.q
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.r
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn29 = phi { ptr, i32 } [ %i.cx, %bb.x ], [ %i.cw, %bb.w ] ; 2 uses
  %i.cy = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.y
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !10
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.v
  %.pn29.pn = phi { ptr, i32 } [ %i.cv, %bb.v ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.pn29, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  %i.dd = load ptr, ptr %14, align 8, !tbaa !44   ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit85, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(128) %i.dd) #13, !inline_history !31
  br label %_ZN7testing7MessageD2Ev.exit85

_ZN7testing7MessageD2Ev.exit85:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.u
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.cu, %bb.u ], [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %.pn29.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.az

bb.z:                                             ; preds = %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit68
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  %i.dh = load <4 x i32>, ptr %7, align 16
  %.fr383 = freeze <4 x i32> %i.dh
  %i.di = load i32, ptr %i.i, align 16
  %.not.4.i96 = icmp eq i32 %i.di, 65864685
  %i.dj = load i32, ptr %i.j, align 4
  %.not.5.i97 = icmp eq i32 %i.dj, 65864685
  %i.dk = load i32, ptr %i.k, align 8
  %.not.6.i98 = icmp eq i32 %i.dk, 65864685
  %i.dl = icmp ne <4 x i32> %.fr383, <i32 327685, i32 327685, i32 327685, i32 458758>
  %i.dm = bitcast <4 x i1> %i.dl to i4
  %i.dn = icmp eq i4 %i.dm, 0
  %op.rdx369 = select i1 %i.dn, i1 %.not.4.i96, i1 false
  %27 = select i1 %op.rdx369, i1 %.not.5.i97, i1 false
  %op.rdx371 = select i1 %27, i1 %.not.6.i98, i1 false
  br i1 %op.rdx371, label %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit100, label %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit100.thread

_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit100.thread: ; preds = %bb.z
  store i8 0, ptr %17, align 8, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr null, ptr %i.do, align 8, !tbaa !42
  br label %bb.aa

_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit100: ; preds = %bb.z
  %i.dp = load i32, ptr %i.l, align 4, !tbaa !10
  %.not.7.i99 = icmp eq i32 %i.dp, 65995758       ; 2 uses
  %i.dq = zext i1 %.not.7.i99 to i8
  store i8 %i.dq, ptr %17, align 8, !tbaa !41
  %i.dr = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr null, ptr %i.dr, align 8, !tbaa !42
  br i1 %.not.7.i99, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit100.thread, %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit100
  %i.ds = phi ptr [ %i.do, %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit100.thread ], [ %i.dr, %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit100 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.dt = load ptr, ptr %20, align 8, !tbaa !17
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 267, ptr noundef %i.dt)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #13
  %i.du = load ptr, ptr %20, align 8, !tbaa !17   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.ae
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !10
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  %i.dz = load ptr, ptr %18, align 8, !tbaa !44   ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i104, label %_ZN7testing7MessageD2Ev.exit106, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !19
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(128) %i.dz) #13, !inline_history !31
  br label %_ZN7testing7MessageD2Ev.exit106

_ZN7testing7MessageD2Ev.exit106:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  %i.ed = load ptr, ptr %i.ds, align 8, !tbaa !20 ; 4 uses
  %.not.i.i107 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i107, label %_ZN7testing15AssertionResultD2Ev.exit111, label %bb.af

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit106
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !17 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i108: ; preds = %bb.af
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !10
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i108
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef 32) #14
  br label %_ZN7testing15AssertionResultD2Ev.exit111

_ZN7testing15AssertionResultD2Ev.exit111:         ; preds = %_ZN7testing7MessageD2Ev.exit106, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.ay

bb.ag:                                            ; preds = %bb.aa
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit117

bb.ah:                                            ; preds = %bb.ab
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

bb.ai:                                            ; preds = %bb.ac
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ad
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn33 = phi { ptr, i32 } [ %i.em, %bb.aj ], [ %i.el, %bb.ai ] ; 2 uses
  %i.en = load ptr, ptr %20, align 8, !tbaa !17   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.ak
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !10
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %bb.ah
  %.pn33.pn = phi { ptr, i32 } [ %i.ek, %bb.ah ], [ %.pn33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %.pn33, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  %i.es = load ptr, ptr %18, align 8, !tbaa !44   ; 3 uses
  %.not.i.i115 = icmp eq ptr %i.es, null
  br i1 %.not.i.i115, label %_ZN7testing7MessageD2Ev.exit117, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(128) %i.es) #13, !inline_history !31
  br label %_ZN7testing7MessageD2Ev.exit117

_ZN7testing7MessageD2Ev.exit117:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.ag
  %.pn33.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.ag ], [ %.pn33.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %.pn33.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.az

bb.al:                                            ; preds = %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit100
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  %i.ew = load <4 x i32>, ptr %8, align 16
  %.fr386 = freeze <4 x i32> %i.ew
  %i.ex = load i32, ptr %i.m, align 16
  %.not.4.i128 = icmp eq i32 %i.ex, 66257906
  %i.ey = load i32, ptr %i.n, align 4
  %.not.5.i129 = icmp eq i32 %i.ey, 66388980
  %i.ez = load i32, ptr %i.o, align 8
  %.not.6.i130 = icmp eq i32 %i.ez, 66520054
  %i.fa = icmp ne <4 x i32> %.fr386, <i32 720906, i32 851980, i32 983054, i32 458758>
  %i.fb = bitcast <4 x i1> %i.fa to i4
  %i.fc = icmp eq i4 %i.fb, 0
  %op.rdx = select i1 %i.fc, i1 %.not.4.i128, i1 false
  %28 = select i1 %op.rdx, i1 %.not.5.i129, i1 false
  %op.rdx368 = select i1 %28, i1 %.not.6.i130, i1 false
  br i1 %op.rdx368, label %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit132, label %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit132.thread

_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit132.thread: ; preds = %bb.al
  store i8 0, ptr %21, align 8, !tbaa !41
  %i.fd = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store ptr null, ptr %i.fd, align 8, !tbaa !42
  br label %bb.am

_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit132: ; preds = %bb.al
  %i.fe = load i32, ptr %i.p, align 4, !tbaa !10
  %.not.7.i131 = icmp eq i32 %i.fe, 65995758      ; 2 uses
  %i.ff = zext i1 %.not.7.i131 to i8
  store i8 %i.ff, ptr %21, align 8, !tbaa !41
  %i.fg = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store ptr null, ptr %i.fg, align 8, !tbaa !42
  br i1 %.not.7.i131, label %_ZN7testing15AssertionResultD2Ev.exit149, label %bb.am

bb.am:                                            ; preds = %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit132.thread, %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit132
  %i.fh = phi ptr [ %i.fd, %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit132.thread ], [ %i.fg, %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit132 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.fi = load ptr, ptr %24, align 8, !tbaa !17
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 268, ptr noundef %i.fi)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #13
  %i.fj = load ptr, ptr %24, align 8, !tbaa !17   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.aq
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !10
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  %i.fo = load ptr, ptr %22, align 8, !tbaa !44   ; 3 uses
  %.not.i.i136 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i136, label %bb.aw, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(128) %i.fo) #13, !inline_history !31
  br label %bb.aw

bb.ar:                                            ; preds = %bb.am
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit144

bb.as:                                            ; preds = %bb.an
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.at:                                            ; preds = %bb.ao
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.ap
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #13
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn37 = phi { ptr, i32 } [ %i.fv, %bb.au ], [ %i.fu, %bb.at ] ; 2 uses
  %i.fw = load ptr, ptr %24, align 8, !tbaa !17   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.av
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !10
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.as
  %.pn37.pn = phi { ptr, i32 } [ %i.ft, %bb.as ], [ %.pn37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %.pn37, %bb.av ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  %i.gb = load ptr, ptr %22, align 8, !tbaa !44   ; 3 uses
  %.not.i.i142 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i142, label %_ZN7testing7MessageD2Ev.exit144, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !19
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(128) %i.gb) #13, !inline_history !31
  br label %_ZN7testing7MessageD2Ev.exit144

_ZN7testing7MessageD2Ev.exit144:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %bb.ar
  %.pn37.pn.pn = phi { ptr, i32 } [ %i.fs, %bb.ar ], [ %.pn37.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %.pn37.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.az

bb.aw:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  %.pr = load ptr, ptr %i.fh, align 8, !tbaa !20  ; 4 uses
  %.not.i.i145 = icmp eq ptr %.pr, null
  br i1 %.not.i.i145, label %_ZN7testing15AssertionResultD2Ev.exit149, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gf = load ptr, ptr %.pr, align 8, !tbaa !17  ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i146: ; preds = %bb.ax
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !10
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i147

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i147: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i146
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #14
  br label %_ZN7testing15AssertionResultD2Ev.exit149

_ZN7testing15AssertionResultD2Ev.exit149:         ; preds = %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit132, %bb.aw, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit149, %_ZN7testing15AssertionResultD2Ev.exit111, %_ZN7testing15AssertionResultD2Ev.exit79, %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void

bb.az:                                            ; preds = %_ZN7testing7MessageD2Ev.exit117, %_ZN7testing7MessageD2Ev.exit144, %_ZN7testing7MessageD2Ev.exit85, %_ZN7testing7MessageD2Ev.exit53
  %.pn37.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit53 ], [ %.pn29.pn.pn, %_ZN7testing7MessageD2Ev.exit85 ], [ %.pn37.pn.pn, %_ZN7testing7MessageD2Ev.exit144 ], [ %.pn33.pn.pn, %_ZN7testing7MessageD2Ev.exit117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %.pn37.pn.pn.pn.pn
}

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN7testing8internal13GetTestTypeIdEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef 526)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.7, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !19
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
end_hunk_0
