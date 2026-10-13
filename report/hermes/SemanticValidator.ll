Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SemanticValidator?download=true
inline.NumInlined: 5062
inline.NumDeleted: 2157
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_ = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_ = comdat any

$_ZN4llvh13SmallDenseMapIPN6hermes12UniqueStringENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_ = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E11try_emplaceIJS7_EEESt4pairINS_16DenseMapIteratorIS4_S7_S9_SC_Lb0EEEbEOS4_DpOT_ = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_ = comdat any

$_ZN4llvh13SmallDenseMapIPN6hermes12UniqueStringEPNS1_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S6_EEE4growEj = comdat any

$_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E18moveFromOldBucketsEPSC_SF_ = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E11try_emplaceIJRKjEEESt4pairINS_16DenseMapIteratorIS5_jS7_SA_Lb0EEEbERKS5_DpOT_ = comdat any

$_ZN4llvh8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEE4growEj = comdat any

$_ZNSt6vectorISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [10 x i8] c"arguments\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"use strict\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"show source\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"hide source\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"let\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"'new.target' not in a function\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"'import.meta' is currently unsupported\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"invalid meta property \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"'eval' is disabled\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"invalid use of 'arguments'\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"for await..of loops are currently unsupported\00", align 1
@.str.25 = private unnamed_addr constant [70 x i8] c"destructuring declaration cannot be initialized in for-in/for-of loop\00", align 1
@.str.26 = private unnamed_addr constant [58 x i8] c"for-in/for-of variable declaration may not be initialized\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"invalid operand in update operation\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"label '\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"' is already defined\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"previous definition\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"Invalid regular expression: \00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"cannot bind to \00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c" in the catch clause in strict mode\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"' is not defined\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"'break' not within a loop or a switch\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"continue label '\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"' is not a loop label\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"label defined here\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"'continue' not within a loop\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"'return' not in a function\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"'yield' not in a generator function\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"'yield' not allowed in a formal parameter\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"'await' not in an async function\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c"'delete' of a variable is not allowed in strict mode\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"spread operator is not supported\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"private properties are not supported\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"class static blocks are not supported\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"'import' statement requires module mode\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"import assertions are not supported\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"'export' statement requires module mode\00", align 1
@.str.51 = private unnamed_addr constant [49 x i8] c"'export' statement requires CommonJS module mode\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"invalid empty parentheses '( )'\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"expression expected after ','\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"':' expected in property initialization\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"'...' not allowed in this context\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"typecast not allowed in this context\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"async generators are unsupported\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"'this' not allowed as parameter name\00", align 1
@.str.59 = private unnamed_addr constant [72 x i8] c"'use strict' not allowed inside function with non-simple parameter list\00", align 1
@.str.60 = private unnamed_addr constant [51 x i8] c"cannot declare two parameters with the same name '\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"cannot declare '\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"'let' is disallowed as a lexically bound name\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"invalid destructuring target\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"invalid assignment left-hand side\00", align 1
@.str.66 = private unnamed_addr constant [52 x i8] c"Too many nested expressions/statements/declarations\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"Identifier '\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"' has already been declared\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"' previously defined here.\00", align 1
@.str.71 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN6hermes3sem8KeywordsC1ERNS_7ContextE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6hermes3sem8KeywordsC2ERNS_7ContextE
@_ZN6hermes3sem17SemanticValidatorC1ERNS_7ContextERNS0_10SemContextEb = hidden unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN6hermes3sem17SemanticValidatorC2ERNS_7ContextERNS0_10SemContextEb
@_ZN6hermes3sem12BlockContextC1EPNS0_17SemanticValidatorEPNS0_15FunctionContextEPNS_6ESTree4NodeE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6hermes3sem12BlockContextC2EPNS0_17SemanticValidatorEPNS0_15FunctionContextEPNS_6ESTree4NodeE
@_ZN6hermes3sem12BlockContextD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6hermes3sem12BlockContextD2Ev
@_ZN6hermes3sem15FunctionContextC1EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE = hidden unnamed_addr alias void (ptr, ptr, i1, ptr, ptr, i32), ptr @_ZN6hermes3sem15FunctionContextC2EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE
@_ZN6hermes3sem15FunctionContextD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6hermes3sem15FunctionContextD2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3sem8KeywordsC2ERNS_7ContextE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(112) initializes((0, 112)) %0, ptr noundef nonnull align 8 dereferenceable(656) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 14 uses
  %i.b = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr nonnull @.str, i64 9)
  store ptr %i.b, ptr %0, align 8, !tbaa !438
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr nonnull @.str.1, i64 4)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !439
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr nonnull @.str.2, i64 6)
  store ptr %i.f, ptr %i.e, align 8, !tbaa !440
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr nonnull @.str.3, i64 4)
  store ptr %i.h, ptr %i.g, align 8, !tbaa !441
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr nonnull @.str.4, i64 10)
  store ptr %i.j, ptr %i.i, align 8, !tbaa !442
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr nonnull @.str.5, i64 11)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !443
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr nonnull @.str.6, i64 11)
  store ptr %i.n, ptr %i.m, align 8, !tbaa !444
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr nonnull @.str.7, i64 9)
  store ptr %i.p, ptr %i.o, align 8, !tbaa !445
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr nonnull @.str.8, i64 3)
  store ptr %i.r, ptr %i.q, align 8, !tbaa !446
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr nonnull @.str.9, i64 3)
  store ptr %i.t, ptr %i.s, align 8, !tbaa !447
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr nonnull @.str.10, i64 5)
  store ptr %i.v, ptr %i.u, align 8, !tbaa !448
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr nonnull @.str.11, i64 1)
  store ptr %i.x, ptr %i.w, align 8, !tbaa !449
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr nonnull @.str.12, i64 1)
  store ptr %i.z, ptr %i.y, align 8, !tbaa !450
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr nonnull @.str.13, i64 1)
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !451
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3sem17SemanticValidatorC2ERNS_7ContextERNS0_10SemContextEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) initializes((0, 36), (40, 168)) %0, ptr noundef nonnull align 8 dereferenceable(656) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %3 to i8
  store ptr %1, ptr %0, align 8, !tbaa !452
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !453, !nonnull !85, !align !86 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !454
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !455
  tail call void @_ZN6hermes18SourceErrorManager15enableBufferingEv(ptr noundef nonnull align 8 dereferenceable(464) %i.d) #20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.f, align 8, !tbaa !456
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !91, !nonnull !85, !align !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 296
  %i.j = load i32, ptr %i.i, align 8, !tbaa !16
  store i32 %i.j, ptr %i.g, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6hermes3sem8KeywordsC2ERNS_7ContextE(ptr noundef nonnull align 8 dereferenceable(112) %i.k, ptr noundef nonnull align 8 dereferenceable(656) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 163
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.l, i8 0, i64 11, i1 false)
  store i8 %i.a, ptr %i.m, align 1, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 1024, ptr %i.n, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes3sem17SemanticValidator4doItEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, i8 } @_ZN6hermes6ESTree24RecursiveVisitorDispatchINS_3sem17SemanticValidatorELb1EE5visitERS3_PNS0_4NodeES7_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef null), !inline_history !0 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91, !nonnull !85, !align !86
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.e = load i32, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !92
  %i.h = icmp eq i32 %i.e, %i.g
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes3sem17SemanticValidator10doFunctionEPNS_6ESTree4NodeEb(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.hermes::sem::FunctionContext", align 8 ; 21 uses
  %4 = alloca %"class.llvh::SmallVector", align 8 ; 8 uses
  %5 = alloca %"class.llvh::SmallVector.81", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = zext i1 %2 to i8
  store ptr %0, ptr %3, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117
  store ptr %i.d, ptr %i.b, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !119, !nonnull !85, !align !86 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124  ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !125
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -320
  %.not.i.i.i = icmp eq ptr %i.j, %i.m
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.n, i8 0, i64 304, i1 false)
  store ptr %i.n, ptr %i.j, align 8, !tbaa !127
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 0, ptr %i.o, align 8, !tbaa !128
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 4, ptr %i.p, align 4, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store ptr %i.r, ptr %i.q, align 8, !tbaa !127
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 124
  store i32 4, ptr %i.s, align 4, !tbaa !129
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.t, i8 0, i64 20, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.u, i8 0, i64 20, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  store ptr %i.w, ptr %i.v, align 8, !tbaa !127
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 284
  store i32 2, ptr %i.x, align 4, !tbaa !129
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !124
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 320 ; 2 uses
  store ptr %i.z, ptr %i.i, align 8, !tbaa !124
  br label %_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE16_M_push_back_auxIJEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.h)
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !130, !noalias !461
  br label %_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i

_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.aa = phi ptr [ %.pre.i.i, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !131, !noalias !462
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZN6hermes3sem15FunctionContextC2EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE.exit

bb.d:                                             ; preds = %_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !132, !noalias !461
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !133
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 320
  br label %_ZN6hermes3sem15FunctionContextC2EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE.exit

_ZN6hermes3sem15FunctionContextC2EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE.exit: ; preds = %_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.d ], [ %i.aa, %_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -320
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !134
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 -208
  store ptr %i.am, ptr %i.al, align 8, !tbaa !135
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store i8 %i.a, ptr %i.an, align 8, !tbaa !136
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  store ptr %0, ptr %i.aq, align 8, !tbaa !137
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 120
  store ptr %3, ptr %i.ar, align 8, !tbaa !138
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.av = getelementptr inbounds i8, ptr %i.aj, i64 -200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !128
  %i.ax = zext i32 %i.aw to i64
  store i64 %i.ax, ptr %i.au, align 8, !tbaa !139
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i8 0, i64 20, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  store ptr %3, ptr %i.c, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ba, ptr %4, align 8, !tbaa !127
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.bb, align 8, !tbaa !128
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.bc, align 4, !tbaa !129
  store ptr %4, ptr %i.at, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bd, ptr %5, align 8, !tbaa !127
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.be, align 8, !tbaa !128
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.bf, align 4, !tbaa !129
  store ptr %5, ptr %6, align 8, !tbaa !141
  %i.bg = call { ptr, i8 } @_ZN6hermes6ESTree24RecursiveVisitorDispatchINS_3sem17SemanticValidatorELb1EE5visitERS3_PNS0_4NodeES7_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef null), !inline_history !0 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !91, !nonnull !85, !align !86
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 296
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !92
  %i.bn = load ptr, ptr %5, align 8, !tbaa !127   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.bd
  br i1 %i.bo, label %_ZN4llvh11SmallVectorIN6hermes3sem12FunctionInfo7VarDeclELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes3sem15FunctionContextC2EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE.exit
  call void @free(ptr noundef %i.bn) #20
  br label %_ZN4llvh11SmallVectorIN6hermes3sem12FunctionInfo7VarDeclELj4EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes3sem12FunctionInfo7VarDeclELj4EED2Ev.exit: ; preds = %_ZN6hermes3sem15FunctionContextC2EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.bp = load ptr, ptr %4, align 8, !tbaa !127   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ba
  br i1 %i.bq, label %_ZN4llvh11SmallVectorIPN6hermes6ESTree23FunctionDeclarationNodeELj2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes3sem12FunctionInfo7VarDeclELj4EED2Ev.exit
  call void @free(ptr noundef %i.bp) #20
  br label %_ZN4llvh11SmallVectorIPN6hermes6ESTree23FunctionDeclarationNodeELj2EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes6ESTree23FunctionDeclarationNodeELj2EED2Ev.exit: ; preds = %_ZN4llvh11SmallVectorIN6hermes3sem12FunctionInfo7VarDeclELj4EED2Ev.exit, %bb.f
  %i.br = icmp eq i32 %i.bk, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN6hermes3sem15FunctionContextD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 %i.br
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3sem17SemanticValidator5visitEPNS_6ESTree11ProgramNodeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::sem::FunctionContext", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = load ptr, ptr %0, align 8, !tbaa !142, !nonnull !85, !align !86
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load i8, ptr %i.b, align 8, !tbaa !468, !range !143, !noundef !85
  store ptr %0, ptr %2, align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117
  store ptr %i.f, ptr %i.d, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.g, align 8, !tbaa !144
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %1, ptr %i.h, align 8, !tbaa !145
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119, !nonnull !85, !align !86 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124  ; 13 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !125
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -320
  %.not.i.i.i = icmp eq ptr %i.m, %i.p
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.q, i8 0, i64 304, i1 false)
  store ptr %i.q, ptr %i.m, align 8, !tbaa !127
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 0, ptr %i.r, align 8, !tbaa !128
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 4, ptr %i.s, align 4, !tbaa !129
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store ptr %i.u, ptr %i.t, align 8, !tbaa !127
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 124
  store i32 4, ptr %i.v, align 4, !tbaa !129
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.x, i8 0, i64 20, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  store ptr %i.z, ptr %i.y, align 8, !tbaa !127
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 284
  store i32 2, ptr %i.aa, align 4, !tbaa !129
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !124
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 320 ; 2 uses
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !124
  br label %_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE16_M_push_back_auxIJEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.k)
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !130, !noalias !469
  br label %_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i

_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ad = phi ptr [ %.pre.i.i, %bb.c ], [ %i.ac, %bb.b ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !131, !noalias !470
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.d, label %_ZN6hermes3sem10SemContext14createFunctionEv.exit.i

bb.d:                                             ; preds = %_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !132, !noalias !469
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !133
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 320
  br label %_ZN6hermes3sem10SemContext14createFunctionEv.exit.i

_ZN6hermes3sem10SemContext14createFunctionEv.exit.i: ; preds = %bb.d, %_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i
  %i.am = phi ptr [ %i.al, %bb.d ], [ %i.ad, %_ZNSt5dequeIN6hermes3sem12FunctionInfoESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i.i ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -320
  store ptr %i.an, ptr %i.i, align 8, !tbaa !134
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -208
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !135
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i8 0, i64 32, i1 false)
  store i8 %i.c, ptr %i.ar, align 8, !tbaa !136
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  call void @_ZN6hermes3sem12BlockContextC2EPNS0_17SemanticValidatorEPNS0_15FunctionContextEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(200) %2, ptr noundef %1)
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.au, i8 0, i64 20, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  store ptr %2, ptr %i.e, align 8, !tbaa !117
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN6hermes3sem15FunctionContextC2EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes3sem10SemContext14createFunctionEv.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !134
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !148
  br label %_ZN6hermes3sem15FunctionContextC2EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE.exit

_ZN6hermes3sem15FunctionContextC2EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE.exit: ; preds = %_ZN6hermes3sem10SemContext14createFunctionEv.exit.i, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %.sroa.024.0.in32.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.024.033.i = load ptr, ptr %.sroa.024.0.in32.i, align 8, !tbaa !151 ; 3 uses
  %.not3034.i = icmp eq ptr %.sroa.024.033.i, %i.ay
  br i1 %.not3034.i, label %_ZN6hermes3sem17SemanticValidator21scanDirectivePrologueERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit.thread, label %.lr.ph.i

_ZN6hermes3sem17SemanticValidator21scanDirectivePrologueERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit.thread: ; preds = %_ZN6hermes3sem15FunctionContextC2EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE.exit
  %i.az = load i8, ptr %i.ar, align 8, !tbaa !136, !range !143, !noundef !85
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = select i1 %i.ba, i32 2, i32 1
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !152
  %i.bd = load i32, ptr %i.as, align 4, !tbaa !153
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !154
  br label %_ZN6hermes6ESTree24RecursiveVisitorDispatchINS_3sem17SemanticValidatorELb1EE13visitChildrenERS3_PNS0_11ProgramNodeE.exit

.lr.ph.i:                                         ; preds = %_ZN6hermes3sem15FunctionContextC2EPNS0_17SemanticValidatorEbPNS_6ESTree16FunctionLikeNodeEPNS4_4NodeENS_16SourceVisibilityE.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 84 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.q, %.lr.ph.i
  %.sroa.024.036.i = phi ptr [ %.sroa.024.033.i, %.lr.ph.i ], [ %.sroa.024.0.i, %bb.q ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.024.036.i, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !162
  %i.bs = icmp ne i32 %i.br, 30
  %.not31.i = icmp eq ptr %.sroa.024.036.i, null
  %.not.i6 = or i1 %.not31.i, %i.bs
  br i1 %.not.i6, label %_ZN6hermes3sem17SemanticValidator21scanDirectivePrologueERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.024.036.i, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !165 ; 5 uses
  %.not20.i = icmp eq ptr %i.bu, null
  br i1 %.not20.i, label %_ZN6hermes3sem17SemanticValidator21scanDirectivePrologueERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = icmp eq ptr %i.bu, %i.bg
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.bi, align 8, !tbaa !136
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bw = icmp eq ptr %i.bu, %i.bk
  br i1 %i.bw, label %bb.k, label %_ZN6hermes3sem17SemanticValidator27tryOverrideSourceVisibilityENS_16SourceVisibilityE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bx = load i32, ptr %i.bl, align 4, !tbaa !153
  %i.by = icmp slt i32 %i.bx, 1
  br i1 %i.by, label %bb.l, label %_ZN6hermes3sem17SemanticValidator27tryOverrideSourceVisibilityENS_16SourceVisibilityE.exit.i
end_hunk_0
