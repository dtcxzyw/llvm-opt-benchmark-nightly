Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUEmitPrintf?download=true
inline.NumInlined: 1118
inline.NumDeleted: 632
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::DataExtractor::Cursor" = type { i64, %"class.llvm::Error" }
%"class.llvm::Error" = type { ptr }
%"class.llvm::APInt" = type <{ %union.anon, i32, [4 x i8] }>
%union.anon = type { i64 }
%"class.llvm::SmallVector.127" = type { %"class.llvm::SmallVectorImpl.111", %"struct.llvm::SmallVectorStorage.128" }
%"class.llvm::SmallVectorImpl.111" = type { %"class.llvm::SmallVectorTemplateBase.112" }
%"class.llvm::SmallVectorTemplateBase.112" = type { %"class.llvm::SmallVectorTemplateCommon.113" }
%"class.llvm::SmallVectorTemplateCommon.113" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.128" = type { [256 x i8] }
%"struct.llvm::AAMDNodes" = type { ptr, ptr, ptr, ptr, ptr }
%struct.StringData = type <{ %"class.llvm::StringRef", ptr, ptr, i8, [7 x i8] }>
%"class.llvm::SmallVector.110" = type { %"class.llvm::SmallVectorImpl.111", %"struct.llvm::SmallVectorStorage.114" }
%"struct.llvm::SmallVectorStorage.114" = type { [8 x i8] }
%"class.llvm::SparseBitVector" = type { %"class.std::__cxx11::list", %"struct.std::_List_iterator" }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<llvm::SparseBitVectorElement<8>, std::allocator<llvm::SparseBitVectorElement<8>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<llvm::SparseBitVectorElement<8>, std::allocator<llvm::SparseBitVectorElement<8>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"struct.std::_List_iterator" = type { ptr }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage" = type { [320 x i8] }
%"class.llvm::MD5" = type { %struct.anon.105 }
%struct.anon.105 = type { i32, i32, i32, i32, i32, i32, [64 x i8], [16 x i32] }
%"struct.llvm::MD5::MD5Result" = type { %"struct.std::array" }
%"struct.std::array" = type { [16 x i8] }
%"class.llvm::SmallVector.153" = type { %"class.llvm::SmallVectorImpl.148", %"struct.llvm::SmallVectorStorage.154" }
%"struct.llvm::SmallVectorStorage.154" = type { [32 x i8] }
%"class.llvm::ArrayRef.0" = type { ptr, i64 }

$_ZN4llvm13IRBuilderBase26CreateConstInBoundsGEP1_32EPNS_4TypeEPNS_5ValueEjRKNS_5TwineE = comdat any

$_ZN4llvm15SparseBitVectorILj8EE3setEj = comdat any

$_ZN4llvm13IRBuilderBase9CreatePHIEPNS_4TypeEjRKNS_5TwineE = comdat any

$_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE = comdat any

$_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE = comdat any

$_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseI10StringDataLb1EE15growAndPushBackERKS1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE = comdat any

$_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE = comdat any

$_ZZN4llvm8hexdigitEjbE3LUT = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"end.block\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"argpush.block\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"llvm.printf.fmts\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"0:0:\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"0:0:ffffffff,\22Non const format string\22\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"printf_result\00", align 1
@_ZZL14locateCStringsRN4llvm15SparseBitVectorILj8EEENS_9StringRefEE14ConvSpecifiers = internal constant [19 x i8] c"diouxXfFeEgGaAcspn\00", align 16
@.str.8 = private unnamed_addr constant [14 x i8] c"cumulativeAdd\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"__printf_alloc\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"printf_alloc_fn\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"strlen.join\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"strlen.while\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"strlen.while.done\00", align 1
@.str.14 = private unnamed_addr constant [99 x i8] c"Cannot implicitly convert a scalable size to a fixed-width size in `TypeSize::operator ScalarTy()`\00", align 1
@_ZZN4llvm8hexdigitEjbE3LUT = linkonce_odr local_unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", comdat, align 16
@.str.18 = private unnamed_addr constant [17 x i8] c"PrintBuffNextPtr\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"__ockl_printf_begin\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"__ockl_printf_append_string_n\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"__ockl_printf_append_args\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm20emitAMDGPUPrintfCallERNS_9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENS_8ArrayRefIPNS_5ValueEEEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree readonly captures(none) %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::SmallVector.155", align 8 ; 16 uses
  %i.a = alloca [10 x ptr], align 8               ; 13 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvm::SmallVector.147", align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %18 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %24 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"class.llvm::DataExtractor", align 8 ; 9 uses
  %29 = alloca %"class.llvm::DataExtractor::Cursor", align 8 ; 9 uses
  %30 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %31 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %32 = alloca %"class.llvm::SmallVector.127", align 8 ; 14 uses
  %33 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %i.e = alloca [1 x ptr], align 8                ; 5 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %35 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca [17 x i8], align 16               ; 4 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %37 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %41 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %43 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %44 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %45 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %46 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %47 = alloca %struct.StringData, align 8        ; 8 uses
  %48 = alloca %"class.llvm::StringRef", align 8  ; 6 uses
  %49 = alloca %struct.StringData, align 8        ; 8 uses
  %50 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %51 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %52 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %53 = alloca %struct.StringData, align 8        ; 8 uses
  %54 = alloca %"class.llvm::SmallVector.110", align 8 ; 10 uses
  %55 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %56 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca [1 x ptr], align 8                ; 4 uses
  %57 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %58 = alloca %"class.llvm::StringRef", align 8  ; 7 uses
  %59 = alloca %"class.llvm::SparseBitVector", align 8 ; 37 uses
  %60 = alloca %"class.llvm::StringRef", align 8  ; 9 uses
  %61 = alloca %"class.llvm::SmallVector", align 8 ; 14 uses
  %62 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %63 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %64 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %65 = alloca %"class.llvm::InsertPosition", align 8 ; 3 uses
  %66 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %67 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %68 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %69 = alloca %"class.llvm::MD5", align 4        ; 5 uses
  %70 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 5 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %76 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %77 = alloca %"class.llvm::InsertPosition", align 8 ; 3 uses
  %78 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %79 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %80 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #14
  %i.n = getelementptr inbounds nuw i8, ptr %59, i64 8
  store ptr %59, ptr %i.n, align 8, !tbaa !11
  store ptr %59, ptr %59, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %59, i64 16
  store i64 0, ptr %i.o, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %59, i64 24 ; 10 uses
  store ptr %59, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  %i.q = call noundef zeroext i1 @_ZN4llvm21getConstantStringInfoEPKNS_5ValueERNS_9StringRefEb(ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(16) %60, i1 noundef zeroext true) #14
  br i1 %i.q, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.sroa.054.0.copyload = load ptr, ptr %60, align 8, !tbaa !18 ; 2 uses
  %.sroa.255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %60, i64 8
  %.sroa.255.0.copyload = load i64, ptr %.sroa.255.0..sroa_idx, align 8, !tbaa !20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58)
  store ptr %.sroa.054.0.copyload, ptr %58, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 3 uses
  store i64 %.sroa.255.0.copyload, ptr %i.r, align 8
  %.not27.i = icmp eq i64 %.sroa.255.0.copyload, 0
  br i1 %.not27.i, label %_ZL14locateCStringsRN4llvm15SparseBitVectorILj8EEENS_9StringRefE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.lr.ph.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.lr.ph.i: ; preds = %bb.b, %.outer.i
  %i.s = phi i64 [ %i.bf, %.outer.i ], [ %.sroa.255.0.copyload, %bb.b ] ; 2 uses
  %i.t = phi ptr [ %i.bg, %.outer.i ], [ %.sroa.054.0.copyload, %bb.b ] ; 3 uses
  %.013.ph26.i = phi i32 [ %i.bh, %.outer.i ], [ 1, %bb.b ]
  %.014.ph25.i = phi i64 [ %i.ah, %.outer.i ], [ 0, %bb.b ]
  %i.u = ptrtoint ptr %i.t to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.d, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.lr.ph.i
  %.01324.i = phi i64 [ %.014.ph25.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.lr.ph.i ], [ %i.ae, %bb.d ] ; 2 uses
  %i.v = sub nuw i64 %i.s, %.01324.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.01324.i
  %i.x = call ptr @memchr(ptr noundef %i.w, i32 noundef 37, i64 noundef %i.v) #14 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZL14locateCStringsRN4llvm15SparseBitVectorILj8EEENS_9StringRefE.exit, label %_ZNK4llvm9StringRef13find_first_ofEcm.exit.i

_ZNK4llvm9StringRef13find_first_ofEcm.exit.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.u                       ; 5 uses
  %.not.i = icmp eq i64 %i.z, -1
  br i1 %.not.i, label %_ZL14locateCStringsRN4llvm15SparseBitVectorILj8EEENS_9StringRefE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm9StringRef13find_first_ofEcm.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  %i.ad = icmp eq i8 %i.ac, 37
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = add i64 %i.z, 2                         ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.s
  br i1 %i.af, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, label %_ZL14locateCStringsRN4llvm15SparseBitVectorILj8EEENS_9StringRefE.exit, !llvm.loop !22

bb.e:                                             ; preds = %bb.c
  %i.ag = call noundef i64 @_ZNK4llvm9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %58, ptr nonnull @_ZZL14locateCStringsRN4llvm15SparseBitVectorILj8EEENS_9StringRefEE14ConvSpecifiers, i64 18, i64 noundef %i.z) #14 ; 4 uses
  %.not18.i = icmp eq i64 %i.ag, -1
  br i1 %.not18.i, label %_ZL14locateCStringsRN4llvm15SparseBitVectorILj8EEENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = add nuw i64 %i.ag, 1                    ; 3 uses
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !24  ; 4 uses
  %.sroa.speculated3.i.i = call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.z) ; 4 uses
  %.not22.i = icmp ult i64 %i.ag, %i.ai
  %.sroa.speculate.load.false.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 %.sroa.speculated3.i.i)
  %.sroa.speculated.i.i = select i1 %.not22.i, i64 %.sroa.speculate.load.false.sroa.speculated.i.i, i64 %i.ai ; 2 uses
  %i.aj = load ptr, ptr %58, align 8, !tbaa !26   ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.speculated3.i.i ; 2 uses
  %i.al = sub i64 %.sroa.speculated.i.i, %.sroa.speculated3.i.i ; 4 uses
  %.not7.i.i = icmp eq i64 %.sroa.speculated.i.i, %.sroa.speculated3.i.i
  br i1 %.not7.i.i, label %_ZNK4llvm9StringRef5countEc.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %min.iters.check = icmp ult i64 %i.al, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader393, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.al, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi380 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %wide.load = load <4 x i8>, ptr %i.am, align 1, !tbaa !21
  %wide.load381 = load <4 x i8>, ptr %i.an, align 1, !tbaa !21
  %i.ao = icmp eq <4 x i8> %wide.load, splat (i8 42)
  %i.ap = icmp eq <4 x i8> %wide.load381, splat (i8 42)
  %i.aq = zext <4 x i1> %i.ao to <4 x i32>
  %i.ar = zext <4 x i1> %i.ap to <4 x i32>
  %i.as = add <4 x i32> %vec.phi, %i.aq           ; 2 uses
  %i.at = add <4 x i32> %vec.phi380, %i.ar        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.at, %i.as
  %i.av = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNK4llvm9StringRef5countEc.exit.i, label %.lr.ph.i.i.preheader393

.lr.ph.i.i.preheader393:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.068.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader393, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader393 ] ; 2 uses
  %.068.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.068.i.i.ph, %.lr.ph.i.i.preheader393 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.09.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !21
  %i.ay = icmp eq i8 %i.ax, 42
  %i.az = zext i1 %i.ay to i32
  %spec.select.i.i = add i32 %.068.i.i, %i.az     ; 2 uses
  %i.ba = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ba, %i.al
  br i1 %.not.i.i, label %_ZNK4llvm9StringRef5countEc.exit.i, label %.lr.ph.i.i, !llvm.loop !30

_ZNK4llvm9StringRef5countEc.exit.i:               ; preds = %.lr.ph.i.i, %middle.block, %bb.f
  %.06.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %i.av, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.bb = add i32 %.06.lcssa.i.i, %.013.ph26.i    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !21
  %i.be = icmp eq i8 %i.bd, 115
  br i1 %i.be, label %bb.g, label %.outer.i

bb.g:                                             ; preds = %_ZNK4llvm9StringRef5countEc.exit.i
  call void @_ZN4llvm15SparseBitVectorILj8EE3setEj(ptr noundef nonnull align 8 dereferenceable(32) %59, i32 noundef %i.bb)
  %.pre.i = load ptr, ptr %58, align 8, !tbaa !26
  %.pre29.i = load i64, ptr %i.r, align 8, !tbaa !24
  br label %.outer.i

.outer.i:                                         ; preds = %bb.g, %_ZNK4llvm9StringRef5countEc.exit.i
  %i.bf = phi i64 [ %.pre29.i, %bb.g ], [ %i.ai, %_ZNK4llvm9StringRef5countEc.exit.i ] ; 2 uses
  %i.bg = phi ptr [ %.pre.i, %bb.g ], [ %i.aj, %_ZNK4llvm9StringRef5countEc.exit.i ]
  %i.bh = add i32 %i.bb, 1
  %i.bi = icmp ult i64 %i.ah, %i.bf
  br i1 %i.bi, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.lr.ph.i, label %_ZL14locateCStringsRN4llvm15SparseBitVectorILj8EEENS_9StringRefE.exit, !llvm.loop !22

_ZL14locateCStringsRN4llvm15SparseBitVectorILj8EEENS_9StringRefE.exit: ; preds = %bb.e, %.outer.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %_ZNK4llvm9StringRef13find_first_ofEcm.exit.i, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %58)
  br label %bb.h

bb.h:                                             ; preds = %_ZL14locateCStringsRN4llvm15SparseBitVectorILj8EEENS_9StringRefE.exit, %bb.a
  br i1 %3, label %bb.i, label %bb.dt

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #14
  %i.bj = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  store ptr %i.bj, ptr %61, align 8, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 10 uses
  store i32 0, ptr %i.bk, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %61, i64 12 ; 4 uses
  store i32 8, ptr %i.bl, align 4, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !35
  %i.bo = call noundef ptr @_ZNK4llvm10BasicBlock9getModuleEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bn) #14
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !52, !nonnull !53, !align !54 ; 7 uses
  %i.br = call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #14 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.bt = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #14
  %i.bu = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !24
  %i.bw = icmp ne i64 %i.bv, 0                    ; 4 uses
  %i.bx = load ptr, ptr %i.bm, align 8, !tbaa !35
  %i.by = call noundef ptr @_ZNK4llvm10BasicBlock9getModuleEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bx) #14 ; 3 uses
  br i1 %i.bw, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = call fastcc noundef ptr @_ZL17getStrlenWithNullRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.m) ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !55
  %i.cc = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.cb, i64 noundef 7, i1 noundef zeroext false, i1 noundef zeroext false) #14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #14
  %i.cd = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i16 257, ptr %i.cd, align 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !60, !nonnull !53, !align !54 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !61
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i32 noundef 14, ptr noundef nonnull %i.bz, ptr noundef %i.cc, i1 noundef zeroext false, i1 noundef zeroext false) #14, !inline_history !63 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.not.i.i, label %bb.k, label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #14
  %i.ck = getelementptr inbounds nuw i8, ptr %44, i64 32
  store i8 1, ptr %i.ck, align 8, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %44, i64 33
  store i8 1, ptr %i.cl, align 1, !tbaa !67
  %i.cm = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 14, ptr noundef nonnull %i.bz, ptr noundef %i.cc, ptr noundef nonnull align 8 dereferenceable(34) %44, ptr null, i64 0) #14 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !68, !nonnull !53, !align !54 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.cp, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !61
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(34) %45, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i) #14, !inline_history !69
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.cm) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #14
  br label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i

_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i: ; preds = %bb.k, %bb.j
  %.1.i.i = phi ptr [ %i.cj, %bb.j ], [ %i.cm, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #14
  %i.ct = load ptr, ptr %i.ca, align 8, !tbaa !55
  %i.cu = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ct, i64 noundef 4294967288, i1 noundef zeroext false, i1 noundef zeroext false) #14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #14
  %i.cv = getelementptr inbounds nuw i8, ptr %46, i64 32
  store i16 257, ptr %i.cv, align 8
  %i.cw = load ptr, ptr %i.ce, align 8, !tbaa !60, !nonnull !53, !align !54 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !61
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef ptr %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, i32 noundef 29, ptr noundef %.1.i.i, ptr noundef %i.cu) #14, !inline_history !70 ; 2 uses
  %.not.not.i74.i = icmp eq ptr %i.da, null
  br i1 %.not.not.i74.i, label %bb.l, label %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i

bb.l:                                             ; preds = %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #14
  %i.db = getelementptr inbounds nuw i8, ptr %43, i64 32
  store i16 257, ptr %i.db, align 8
  %i.dc = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 29, ptr noundef %.1.i.i, ptr noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %43, ptr null, i64 0) #14 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !68, !nonnull !53, !align !54 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.df, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !61
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.dc, ptr noundef nonnull align 8 dereferenceable(34) %46, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i) #14, !inline_history !71
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.dc) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #14
  br label %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i

_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i: ; preds = %bb.l, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i
  %.1.i75.i = phi ptr [ %i.dc, %bb.l ], [ %i.da, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #14
  %i.dj = getelementptr inbounds nuw i8, ptr %47, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false)
  store ptr %i.bz, ptr %i.dj, align 8, !tbaa !72
  %i.dk = getelementptr inbounds nuw i8, ptr %47, i64 24
  store ptr %.1.i75.i, ptr %i.dk, align 8, !tbaa !74
  %i.dl = getelementptr inbounds nuw i8, ptr %47, i64 32
  store i8 0, ptr %i.dl, align 8, !tbaa !75
  %i.dm = load i32, ptr %i.bk, align 8, !tbaa !33 ; 2 uses
  %i.dn = load i32, ptr %i.bl, align 4, !tbaa !34
  %.not.i.i98 = icmp ult i32 %i.dm, %i.dn
  br i1 %.not.i.i98, label %bb.n, label %bb.m, !prof !76

bb.m:                                             ; preds = %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseI10StringDataLb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %61, ptr noundef nonnull align 8 dereferenceable(33) %47)
  br label %_ZN4llvm23SmallVectorTemplateBaseI10StringDataLb1EE9push_backERKS1_.exit.i

bb.n:                                             ; preds = %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i
  %i.do = zext i32 %i.dm to i64
  %i.dp = load ptr, ptr %61, align 8, !tbaa !31
  %i.dq = getelementptr inbounds nuw [40 x i8], ptr %i.dp, i64 %i.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.dq, ptr noundef nonnull align 8 dereferenceable(40) %47, i64 40, i1 false)
  %i.dr = load i32, ptr %i.bk, align 8, !tbaa !33
  %i.ds = add i32 %i.dr, 1
  store i32 %i.ds, ptr %i.bk, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseI10StringDataLb1EE9push_backERKS1_.exit.i

_ZN4llvm23SmallVectorTemplateBaseI10StringDataLb1EE9push_backERKS1_.exit.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #14
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseI10StringDataLb1EE9push_backERKS1_.exit.i, %bb.i
  %.067.i = phi i64 [ 4, %_ZN4llvm23SmallVectorTemplateBaseI10StringDataLb1EE9push_backERKS1_.exit.i ], [ 12, %bb.i ] ; 2 uses
  %.0.i = phi ptr [ %.1.i75.i, %_ZN4llvm23SmallVectorTemplateBaseI10StringDataLb1EE9push_backERKS1_.exit.i ], [ null, %bb.i ] ; 2 uses
  %i.dt = icmp ugt i64 %2, 1
  br i1 %i.dt, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.du = getelementptr inbounds nuw i8, ptr %50, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %42, i64 33
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i84.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %51, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %41, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %52, i64 32
  %i.ed = getelementptr inbounds nuw i8, ptr %52, i64 33
  %i.ee = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %40, i64 33
  %i.eg = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.ei = getelementptr inbounds nuw i8, ptr %53, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %48, i64 8
  %.sroa.2.0..sroa_idx.i78.i = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %49, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.by, i64 296
  br label %bb.p

._crit_edge.i:                                    ; preds = %bb.al, %bb.o
  %.168.lcssa.i = phi i64 [ %.067.i, %bb.o ], [ %.370.i, %bb.al ]
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.o ], [ %.4.i, %bb.al ] ; 3 uses
  %i.en = load ptr, ptr %i.bp, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.eo = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.en) #14
  %i.ep = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.eo, i64 noundef %.168.lcssa.i, i1 noundef zeroext false, i1 noundef zeroext false) #14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #14
  %i.eq = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  store ptr %i.eq, ptr %54, align 8, !tbaa !31
  %i.er = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 5 uses
  store i32 0, ptr %i.er, align 8, !tbaa !33
  %i.es = getelementptr inbounds nuw i8, ptr %54, i64 12 ; 2 uses
  store i32 1, ptr %i.es, align 4, !tbaa !34
  %.not.i99 = icmp eq ptr %.1.lcssa.i, null
  br i1 %.not.i99, label %bb.ao, label %bb.am
end_hunk_0
