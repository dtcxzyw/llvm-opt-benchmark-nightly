Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ASTBuilder?download=true
inline.NumInlined: 5205
inline.NumDeleted: 970
begin_hunk_0
@.str.727 = private unnamed_addr constant [59 x i8] c"Invalid field 'sourceType' in ObjectTypeMappedTypeProperty\00", align 1, !guid !446
@.str.731 = private unnamed_addr constant [33 x i8] c"Invalid field 'kind' in Variance\00", align 1, !guid !447
@.str.733 = private unnamed_addr constant [51 x i8] c"Invalid field 'params' in TypeParameterDeclaration\00", align 1, !guid !448
@.str.735 = private unnamed_addr constant [38 x i8] c"Invalid field 'name' in TypeParameter\00", align 1, !guid !449
@.str.736 = private unnamed_addr constant [6 x i8] c"const\00", align 1, !guid !450
@.str.737 = private unnamed_addr constant [39 x i8] c"Invalid field 'const' in TypeParameter\00", align 1, !guid !451
@.str.738 = private unnamed_addr constant [6 x i8] c"bound\00", align 1, !guid !452
@.str.742 = private unnamed_addr constant [17 x i8] c"usesExtendsBound\00", align 1, !guid !453
@.str.743 = private unnamed_addr constant [50 x i8] c"Invalid field 'usesExtendsBound' in TypeParameter\00", align 1, !guid !454
@.str.745 = private unnamed_addr constant [53 x i8] c"Invalid field 'params' in TypeParameterInstantiation\00", align 1, !guid !455
@.str.747 = private unnamed_addr constant [49 x i8] c"Invalid field 'expression' in TypeCastExpression\00", align 1, !guid !456
@.str.748 = private unnamed_addr constant [53 x i8] c"Invalid field 'typeAnnotation' in TypeCastExpression\00", align 1, !guid !457
@.str.750 = private unnamed_addr constant [43 x i8] c"Invalid field 'expression' in AsExpression\00", align 1, !guid !458
@.str.751 = private unnamed_addr constant [47 x i8] c"Invalid field 'typeAnnotation' in AsExpression\00", align 1, !guid !459
@.str.753 = private unnamed_addr constant [48 x i8] c"Invalid field 'expression' in AsConstExpression\00", align 1, !guid !460
@.str.756 = private unnamed_addr constant [43 x i8] c"Invalid field 'value' in DeclaredPredicate\00", align 1, !guid !461
@.str.758 = private unnamed_addr constant [38 x i8] c"Invalid field 'id' in EnumDeclaration\00", align 1, !guid !462
@.str.759 = private unnamed_addr constant [40 x i8] c"Invalid field 'body' in EnumDeclaration\00", align 1, !guid !463
@.str.761 = private unnamed_addr constant [8 x i8] c"members\00", align 1, !guid !464
@.str.762 = private unnamed_addr constant [42 x i8] c"Invalid field 'members' in EnumStringBody\00", align 1, !guid !465
@.str.763 = private unnamed_addr constant [13 x i8] c"explicitType\00", align 1, !guid !466
@.str.764 = private unnamed_addr constant [47 x i8] c"Invalid field 'explicitType' in EnumStringBody\00", align 1, !guid !467
@.str.765 = private unnamed_addr constant [18 x i8] c"hasUnknownMembers\00", align 1, !guid !468
@.str.766 = private unnamed_addr constant [52 x i8] c"Invalid field 'hasUnknownMembers' in EnumStringBody\00", align 1, !guid !469
@.str.768 = private unnamed_addr constant [42 x i8] c"Invalid field 'members' in EnumNumberBody\00", align 1, !guid !470
@.str.769 = private unnamed_addr constant [47 x i8] c"Invalid field 'explicitType' in EnumNumberBody\00", align 1, !guid !471
@.str.770 = private unnamed_addr constant [52 x i8] c"Invalid field 'hasUnknownMembers' in EnumNumberBody\00", align 1, !guid !472
@.str.772 = private unnamed_addr constant [42 x i8] c"Invalid field 'members' in EnumBigIntBody\00", align 1, !guid !473
@.str.773 = private unnamed_addr constant [47 x i8] c"Invalid field 'explicitType' in EnumBigIntBody\00", align 1, !guid !474
@.str.774 = private unnamed_addr constant [52 x i8] c"Invalid field 'hasUnknownMembers' in EnumBigIntBody\00", align 1, !guid !475
@.str.776 = private unnamed_addr constant [43 x i8] c"Invalid field 'members' in EnumBooleanBody\00", align 1, !guid !476
@.str.777 = private unnamed_addr constant [48 x i8] c"Invalid field 'explicitType' in EnumBooleanBody\00", align 1, !guid !477
@.str.778 = private unnamed_addr constant [53 x i8] c"Invalid field 'hasUnknownMembers' in EnumBooleanBody\00", align 1, !guid !478
@.str.780 = private unnamed_addr constant [42 x i8] c"Invalid field 'members' in EnumSymbolBody\00", align 1, !guid !479
@.str.781 = private unnamed_addr constant [52 x i8] c"Invalid field 'hasUnknownMembers' in EnumSymbolBody\00", align 1, !guid !480
@.str.783 = private unnamed_addr constant [42 x i8] c"Invalid field 'id' in EnumDefaultedMember\00", align 1, !guid !481
@.str.785 = private unnamed_addr constant [39 x i8] c"Invalid field 'id' in EnumStringMember\00", align 1, !guid !482
@.str.786 = private unnamed_addr constant [41 x i8] c"Invalid field 'init' in EnumStringMember\00", align 1, !guid !483
@.str.788 = private unnamed_addr constant [39 x i8] c"Invalid field 'id' in EnumNumberMember\00", align 1, !guid !484
@.str.789 = private unnamed_addr constant [41 x i8] c"Invalid field 'init' in EnumNumberMember\00", align 1, !guid !485
@.str.791 = private unnamed_addr constant [39 x i8] c"Invalid field 'id' in EnumBigIntMember\00", align 1, !guid !486
@.str.792 = private unnamed_addr constant [41 x i8] c"Invalid field 'init' in EnumBigIntMember\00", align 1, !guid !487
@.str.794 = private unnamed_addr constant [40 x i8] c"Invalid field 'id' in EnumBooleanMember\00", align 1, !guid !488
@.str.795 = private unnamed_addr constant [42 x i8] c"Invalid field 'init' in EnumBooleanMember\00", align 1, !guid !489
@.str.797 = private unnamed_addr constant [43 x i8] c"Invalid field 'name' in ComponentParameter\00", align 1, !guid !490
@.str.798 = private unnamed_addr constant [44 x i8] c"Invalid field 'local' in ComponentParameter\00", align 1, !guid !491
@.str.799 = private unnamed_addr constant [48 x i8] c"Invalid field 'shorthand' in ComponentParameter\00", align 1, !guid !492
@.str.801 = private unnamed_addr constant [51 x i8] c"Invalid field 'typeAnnotation' in TSTypeAnnotation\00", align 1, !guid !493
@.str.814 = private unnamed_addr constant [41 x i8] c"Invalid field 'literal' in TSLiteralType\00", align 1, !guid !494
@.str.816 = private unnamed_addr constant [50 x i8] c"Invalid field 'objectType' in TSIndexedAccessType\00", align 1, !guid !495
@.str.817 = private unnamed_addr constant [49 x i8] c"Invalid field 'indexType' in TSIndexedAccessType\00", align 1, !guid !496
@.str.819 = private unnamed_addr constant [43 x i8] c"Invalid field 'elementType' in TSArrayType\00", align 1, !guid !497
@.str.821 = private unnamed_addr constant [9 x i8] c"typeName\00", align 1, !guid !498
@.str.822 = private unnamed_addr constant [44 x i8] c"Invalid field 'typeName' in TSTypeReference\00", align 1, !guid !499
@.str.825 = private unnamed_addr constant [40 x i8] c"Invalid field 'left' in TSQualifiedName\00", align 1, !guid !500
@.str.828 = private unnamed_addr constant [41 x i8] c"Invalid field 'params' in TSFunctionType\00", align 1, !guid !501
@.str.829 = private unnamed_addr constant [45 x i8] c"Invalid field 'returnType' in TSFunctionType\00", align 1, !guid !502
@.str.832 = private unnamed_addr constant [44 x i8] c"Invalid field 'params' in TSConstructorType\00", align 1, !guid !503
@.str.833 = private unnamed_addr constant [48 x i8] c"Invalid field 'returnType' in TSConstructorType\00", align 1, !guid !504
@.str.836 = private unnamed_addr constant [49 x i8] c"Invalid field 'parameterName' in TSTypePredicate\00", align 1, !guid !505
@.str.837 = private unnamed_addr constant [50 x i8] c"Invalid field 'typeAnnotation' in TSTypePredicate\00", align 1, !guid !506
@.str.839 = private unnamed_addr constant [13 x i8] c"elementTypes\00", align 1, !guid !507
@.str.840 = private unnamed_addr constant [44 x i8] c"Invalid field 'elementTypes' in TSTupleType\00", align 1, !guid !508
@.str.842 = private unnamed_addr constant [50 x i8] c"Invalid field 'typeAnnotation' in TSTypeAssertion\00", align 1, !guid !509
@.str.843 = private unnamed_addr constant [46 x i8] c"Invalid field 'expression' in TSTypeAssertion\00", align 1, !guid !510
@.str.845 = private unnamed_addr constant [45 x i8] c"Invalid field 'expression' in TSAsExpression\00", align 1, !guid !511
@.str.846 = private unnamed_addr constant [49 x i8] c"Invalid field 'typeAnnotation' in TSAsExpression\00", align 1, !guid !512
@.str.848 = private unnamed_addr constant [10 x i8] c"parameter\00", align 1, !guid !513
@.str.849 = private unnamed_addr constant [49 x i8] c"Invalid field 'parameter' in TSParameterProperty\00", align 1, !guid !514
@.str.850 = private unnamed_addr constant [14 x i8] c"accessibility\00", align 1, !guid !515
@.str.852 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1, !guid !516
@.str.853 = private unnamed_addr constant [48 x i8] c"Invalid field 'readonly' in TSParameterProperty\00", align 1, !guid !517
@.str.854 = private unnamed_addr constant [46 x i8] c"Invalid field 'static' in TSParameterProperty\00", align 1, !guid !518
@.str.855 = private unnamed_addr constant [7 x i8] c"export\00", align 1, !guid !519
@.str.856 = private unnamed_addr constant [46 x i8] c"Invalid field 'export' in TSParameterProperty\00", align 1, !guid !520
@.str.858 = private unnamed_addr constant [45 x i8] c"Invalid field 'id' in TSTypeAliasDeclaration\00", align 1, !guid !521
@.str.860 = private unnamed_addr constant [57 x i8] c"Invalid field 'typeAnnotation' in TSTypeAliasDeclaration\00", align 1, !guid !522
@.str.862 = private unnamed_addr constant [45 x i8] c"Invalid field 'id' in TSInterfaceDeclaration\00", align 1, !guid !523
@.str.863 = private unnamed_addr constant [47 x i8] c"Invalid field 'body' in TSInterfaceDeclaration\00", align 1, !guid !524
@.str.864 = private unnamed_addr constant [50 x i8] c"Invalid field 'extends' in TSInterfaceDeclaration\00", align 1, !guid !525
@.str.867 = private unnamed_addr constant [50 x i8] c"Invalid field 'expression' in TSInterfaceHeritage\00", align 1, !guid !526
@.str.870 = private unnamed_addr constant [40 x i8] c"Invalid field 'body' in TSInterfaceBody\00", align 1, !guid !527
@.str.872 = private unnamed_addr constant [40 x i8] c"Invalid field 'id' in TSEnumDeclaration\00", align 1, !guid !528
@.str.873 = private unnamed_addr constant [45 x i8] c"Invalid field 'members' in TSEnumDeclaration\00", align 1, !guid !529
@.str.875 = private unnamed_addr constant [35 x i8] c"Invalid field 'id' in TSEnumMember\00", align 1, !guid !530
@.str.876 = private unnamed_addr constant [12 x i8] c"initializer\00", align 1, !guid !531
@.str.879 = private unnamed_addr constant [42 x i8] c"Invalid field 'id' in TSModuleDeclaration\00", align 1, !guid !532
@.str.880 = private unnamed_addr constant [44 x i8] c"Invalid field 'body' in TSModuleDeclaration\00", align 1, !guid !533
@.str.882 = private unnamed_addr constant [38 x i8] c"Invalid field 'body' in TSModuleBlock\00", align 1, !guid !534
@.str.884 = private unnamed_addr constant [37 x i8] c"Invalid field 'id' in TSModuleMember\00", align 1, !guid !535
@.str.887 = private unnamed_addr constant [53 x i8] c"Invalid field 'params' in TSTypeParameterDeclaration\00", align 1, !guid !536
@.str.889 = private unnamed_addr constant [40 x i8] c"Invalid field 'name' in TSTypeParameter\00", align 1, !guid !537
@.str.890 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1, !guid !538
@.str.894 = private unnamed_addr constant [55 x i8] c"Invalid field 'params' in TSTypeParameterInstantiation\00", align 1, !guid !539
@.str.896 = private unnamed_addr constant [37 x i8] c"Invalid field 'types' in TSUnionType\00", align 1, !guid !540
@.str.898 = private unnamed_addr constant [44 x i8] c"Invalid field 'types' in TSIntersectionType\00", align 1, !guid !541
@.str.900 = private unnamed_addr constant [9 x i8] c"exprName\00", align 1, !guid !542
@.str.901 = private unnamed_addr constant [40 x i8] c"Invalid field 'exprName' in TSTypeQuery\00", align 1, !guid !543
@.str.903 = private unnamed_addr constant [47 x i8] c"Invalid field 'checkType' in TSConditionalType\00", align 1, !guid !544
@.str.904 = private unnamed_addr constant [49 x i8] c"Invalid field 'extendsType' in TSConditionalType\00", align 1, !guid !545
@.str.905 = private unnamed_addr constant [46 x i8] c"Invalid field 'trueType' in TSConditionalType\00", align 1, !guid !546
@.str.906 = private unnamed_addr constant [47 x i8] c"Invalid field 'falseType' in TSConditionalType\00", align 1, !guid !547
@.str.908 = private unnamed_addr constant [41 x i8] c"Invalid field 'members' in TSTypeLiteral\00", align 1, !guid !548
@.str.910 = private unnamed_addr constant [43 x i8] c"Invalid field 'key' in TSPropertySignature\00", align 1, !guid !549
@.str.913 = private unnamed_addr constant [48 x i8] c"Invalid field 'optional' in TSPropertySignature\00", align 1, !guid !550
@.str.914 = private unnamed_addr constant [48 x i8] c"Invalid field 'computed' in TSPropertySignature\00", align 1, !guid !551
@.str.915 = private unnamed_addr constant [48 x i8] c"Invalid field 'readonly' in TSPropertySignature\00", align 1, !guid !552
@.str.916 = private unnamed_addr constant [46 x i8] c"Invalid field 'static' in TSPropertySignature\00", align 1, !guid !553
@.str.917 = private unnamed_addr constant [46 x i8] c"Invalid field 'export' in TSPropertySignature\00", align 1, !guid !554
@.str.919 = private unnamed_addr constant [41 x i8] c"Invalid field 'key' in TSMethodSignature\00", align 1, !guid !555
@.str.920 = private unnamed_addr constant [44 x i8] c"Invalid field 'params' in TSMethodSignature\00", align 1, !guid !556
@.str.922 = private unnamed_addr constant [46 x i8] c"Invalid field 'computed' in TSMethodSignature\00", align 1, !guid !557
@.str.924 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1, !guid !558
@.str.925 = private unnamed_addr constant [47 x i8] c"Invalid field 'parameters' in TSIndexSignature\00", align 1, !guid !559
@.str.928 = private unnamed_addr constant [53 x i8] c"Invalid field 'params' in TSCallSignatureDeclaration\00", align 1, !guid !560
@.str.931 = private unnamed_addr constant [45 x i8] c"Invalid field 'accessibility' in TSModifiers\00", align 1, !guid !561
@.str.932 = private unnamed_addr constant [40 x i8] c"Invalid field 'readonly' in TSModifiers\00", align 1, !guid !562
@.str.936 = private unnamed_addr constant [41 x i8] c"Invalid field 'init' in CoverInitializer\00", align 1, !guid !563
@.str.938 = private unnamed_addr constant [41 x i8] c"Invalid field 'rest' in CoverRestElement\00", align 1, !guid !564
@.str.940 = private unnamed_addr constant [45 x i8] c"Invalid field 'left' in CoverTypedIdentifier\00", align 1, !guid !565
@.str.942 = private unnamed_addr constant [49 x i8] c"Invalid field 'optional' in CoverTypedIdentifier\00", align 1, !guid !566
@.str.943 = private unnamed_addr constant [20 x i8] c"Unknown node type '\00", align 1, !guid !567
@.str.944 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !guid !568
@.str.945 = private unnamed_addr constant [6 x i8] c"regex\00", align 1, !guid !569
@.str.946 = private unnamed_addr constant [41 x i8] c"Invalid field 'pattern' in Literal/regex\00", align 1, !guid !570
@.str.947 = private unnamed_addr constant [39 x i8] c"Invalid field 'flags' in Literal/regex\00", align 1, !guid !571
@.str.948 = private unnamed_addr constant [33 x i8] c"Invalid field 'value' in Literal\00", align 1, !guid !572
@.str.949 = private unnamed_addr constant [41 x i8] c"Invalid field 'value' in TemplateElement\00", align 1, !guid !573
@.str.950 = private unnamed_addr constant [48 x i8] c"Invalid field 'cooked' in TemplateElement/value\00", align 1, !guid !574
@.str.951 = private unnamed_addr constant [45 x i8] c"Invalid field 'raw' in TemplateElement/value\00", align 1, !guid !575

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6ESTree8buildASTERNS_7ContextEPKNS_6parser9JSONValueEPKN4llvh12MemoryBufferE(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !1196 {
bb.a:
  %3 = alloca %"class.hermes::ESTree::(anonymous namespace)::ASTBuilder", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %0, ptr %3, align 8, !tbaa !1197
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1252, !nonnull !588, !align !589
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1253
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !592
  %i.e = call fastcc { i64, i8 } @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1) ; 2 uses
  %i.f = extractvalue { i64, i8 } %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.g = inttoptr i64 %i.f to ptr
  call fastcc void @_ZN6hermes6ESTree11ESTreeVisitINS0_12_GLOBAL__N_124DebugLocationSynthesizerEEEvRT_PNS0_4NodeE(ptr noundef %i.g)
  ret { i64, i8 } %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i64, i8 } @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef readonly %1) unnamed_addr #0 align 2 !guid !1254 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvh::StringRef", align 8  ; 8 uses
  %12 = alloca %"class.llvh::simple_ilist", align 8 ; 8 uses
  %13 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %14 = alloca %"class.llvh::simple_ilist", align 8 ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %15 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %16 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %17 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %18 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %19 = alloca %"class.llvh::simple_ilist", align 8 ; 8 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %20 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %21 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %22 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %23 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %24 = alloca %"class.llvh::simple_ilist", align 8 ; 8 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 5 uses
  %25 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %26 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %27 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %28 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.p = alloca ptr, align 8                      ; 5 uses
  %29 = alloca %"class.llvh::simple_ilist", align 8 ; 8 uses
  %i.q = alloca ptr, align 8                      ; 5 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  %i.s = alloca ptr, align 8                      ; 5 uses
  %30 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %31 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %32 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %33 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.t = alloca ptr, align 8                      ; 5 uses
  %34 = alloca %"class.llvh::simple_ilist", align 8 ; 8 uses
  %i.u = alloca ptr, align 8                      ; 5 uses
  %i.v = alloca ptr, align 8                      ; 5 uses
  %i.w = alloca ptr, align 8                      ; 5 uses
  %35 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %36 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %37 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %38 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.x = alloca ptr, align 8                      ; 5 uses
  %39 = alloca %"class.llvh::simple_ilist", align 8 ; 13 uses
  %40 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %41 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.y = alloca ptr, align 8                      ; 5 uses
  %i.z = alloca ptr, align 8                      ; 5 uses
  %42 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %43 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.aa = alloca ptr, align 8                     ; 5 uses
  %i.ab = alloca ptr, align 8                     ; 5 uses
  %44 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %45 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.ac = alloca ptr, align 8                     ; 5 uses
  %i.ad = alloca ptr, align 8                     ; 5 uses
  %i.ae = alloca ptr, align 8                     ; 5 uses
  %46 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %47 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %48 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.af = alloca ptr, align 8                     ; 5 uses
  %i.ag = alloca ptr, align 8                     ; 5 uses
  %i.ah = alloca ptr, align 8                     ; 5 uses
  %49 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %50 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %51 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %52 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.ai = alloca ptr, align 8                     ; 5 uses
  %i.aj = alloca ptr, align 8                     ; 5 uses
  %i.ak = alloca ptr, align 8                     ; 5 uses
  %i.al = alloca ptr, align 8                     ; 5 uses
  %53 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %54 = alloca %"class.llvh::simple_ilist", align 8 ; 9 uses
  %55 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %56 = alloca %"class.llvh::simple_ilist", align 8 ; 13 uses
  %57 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.am = alloca ptr, align 8                     ; 5 uses
  %i.an = alloca ptr, align 8                     ; 5 uses
  %i.ao = alloca ptr, align 8                     ; 5 uses
  %58 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.ap = alloca ptr, align 8                     ; 5 uses
  %i.aq = alloca ptr, align 8                     ; 5 uses
  %i.ar = alloca ptr, align 8                     ; 5 uses
  %59 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %60 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.as = alloca ptr, align 8                     ; 5 uses
  %61 = alloca %"class.llvh::simple_ilist", align 8 ; 8 uses
  %62 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %63 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.at = alloca ptr, align 8                     ; 5 uses
  %i.au = alloca ptr, align 8                     ; 5 uses
  %64 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %65 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.av = alloca ptr, align 8                     ; 5 uses
  %66 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.aw = alloca ptr, align 8                     ; 5 uses
  %i.ax = alloca ptr, align 8                     ; 5 uses
  %i.ay = alloca ptr, align 8                     ; 5 uses
  %67 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.az = alloca ptr, align 8                     ; 5 uses
  %i.ba = alloca ptr, align 8                     ; 5 uses
  %i.bb = alloca ptr, align 8                     ; 5 uses
  %68 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %69 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %70 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %71 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %72 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %73 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %74 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %75 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %76 = alloca %"class.llvh::simple_ilist", align 8 ; 11 uses
  %77 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %78 = alloca %"class.llvh::simple_ilist", align 8 ; 13 uses
  %79 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %80 = alloca %"class.llvh::simple_ilist", align 8 ; 8 uses
  %81 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %82 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.bc = alloca ptr, align 8                     ; 5 uses
  %83 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.bd = alloca ptr, align 8                     ; 5 uses
  %i.be = alloca ptr, align 8                     ; 5 uses
  %84 = alloca %"class.llvh::simple_ilist", align 8 ; 13 uses
  %85 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %86 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.bf = alloca ptr, align 8                     ; 5 uses
  %i.bg = alloca ptr, align 8                     ; 5 uses
  %87 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.bh = alloca ptr, align 8                     ; 5 uses
  %i.bi = alloca ptr, align 8                     ; 5 uses
  %88 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.bj = alloca ptr, align 8                     ; 5 uses
  %i.bk = alloca ptr, align 8                     ; 5 uses
  %89 = alloca %"class.llvh::simple_ilist", align 8 ; 13 uses
  %90 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %91 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.bl = alloca ptr, align 8                     ; 5 uses
  %i.bm = alloca ptr, align 8                     ; 5 uses
  %92 = alloca %"class.llvh::simple_ilist", align 8 ; 9 uses
  %93 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %94 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %95 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.bn = alloca ptr, align 8                     ; 5 uses
  %i.bo = alloca ptr, align 8                     ; 5 uses
  %96 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %97 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %98 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.bp = alloca ptr, align 8                     ; 5 uses
  %99 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %100 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %101 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.bq = alloca ptr, align 8                     ; 5 uses
  %102 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %103 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %104 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.br = alloca ptr, align 8                     ; 5 uses
  %i.bs = alloca ptr, align 8                     ; 5 uses
  %105 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %106 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %107 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.bt = alloca ptr, align 8                     ; 5 uses
  %i.bu = alloca ptr, align 8                     ; 5 uses
  %108 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %109 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %110 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %111 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.bv = alloca ptr, align 8                     ; 5 uses
  %i.bw = alloca ptr, align 8                     ; 5 uses
  %112 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %113 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %114 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.bx = alloca ptr, align 8                     ; 5 uses
  %i.by = alloca ptr, align 8                     ; 5 uses
  %i.bz = alloca ptr, align 8                     ; 5 uses
  %115 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %116 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %117 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.ca = alloca ptr, align 8                     ; 5 uses
  %i.cb = alloca ptr, align 8                     ; 5 uses
  %118 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %119 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %120 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.cc = alloca ptr, align 8                     ; 5 uses
  %121 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %122 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.cd = alloca ptr, align 8                     ; 5 uses
  %123 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %124 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.ce = alloca ptr, align 8                     ; 5 uses
  %125 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.cf = alloca ptr, align 8                     ; 5 uses
  %i.cg = alloca ptr, align 8                     ; 5 uses
  %126 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %127 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.ch = alloca ptr, align 8                     ; 5 uses
  %128 = alloca %"class.llvh::simple_ilist", align 8 ; 13 uses
  %129 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.ci = alloca ptr, align 8                     ; 5 uses
  %i.cj = alloca ptr, align 8                     ; 5 uses
  %130 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.ck = alloca ptr, align 8                     ; 5 uses
  %i.cl = alloca ptr, align 8                     ; 5 uses
  %131 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %132 = alloca %"class.llvh::simple_ilist", align 8 ; 11 uses
  %133 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %134 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %135 = alloca %"class.llvh::simple_ilist", align 8 ; 8 uses
  %136 = alloca %"class.llvh::simple_ilist", align 8 ; 8 uses
  %137 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %138 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.cm = alloca ptr, align 8                     ; 5 uses
  %i.cn = alloca ptr, align 8                     ; 5 uses
  %139 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %140 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %141 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %142 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.co = alloca ptr, align 8                     ; 5 uses
  %i.cp = alloca ptr, align 8                     ; 5 uses
  %143 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %144 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %145 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %146 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %147 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %148 = alloca %"class.llvh::Twine", align 8     ; 6 uses
  %i.cq = alloca ptr, align 8                     ; 5 uses
  %i.cr = alloca ptr, align 8                     ; 5 uses
  %i.cs = alloca ptr, align 8                     ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  %i.ns = trunc nuw i8 %i.nr to i1
  %.pre = load ptr, ptr %i.nn, align 8, !tbaa !616 ; 2 uses
  %.pre7084 = load i64, ptr %.pre, align 8, !tbaa !617
  %i.nt = icmp ne i64 %i.nq, %.pre7084
  %or.cond7761.not = select i1 %i.ns, i1 %i.nt, i1 false
  br i1 %or.cond7761.not, label %bb.g, label %_ZNK6hermes6parser10JSONObject4findEN4llvh9StringRefE.exit.thread

_ZNK6hermes6parser10JSONObject4findEN4llvh9StringRefE.exit.thread: ; preds = %bb.e
  %i.nu = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !596 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !603
  %i.ny = zext i32 %i.nx to i64
  %i.nz = load ptr, ptr %i.nu, align 8, !tbaa !604
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.ny
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !606
  %i.oc = ptrtoint ptr %i.ob to i64               ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 3 uses
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !607 ; 2 uses
  %i.of = add i64 %i.oc, 7
  %i.og = add i64 %i.of, %i.oe
  %i.oh = and i64 %i.og, 7
  %.neg7080 = add i64 %i.oe, 7
  %i.oi = sub i64 %.neg7080, %i.oh                ; 3 uses
  store i64 %i.oi, ptr %i.od, align 8, !tbaa !607
  %i.oj = add i64 %i.oi, 48                       ; 2 uses
  %i.ok = icmp ugt i64 %i.oj, 262144
  br i1 %i.ok, label %.critedge.i.i.i2405, label %bb.f, !prof !608

.critedge.i.i.i2405:                              ; preds = %_ZNK6hermes6parser10JSONObject4findEN4llvh9StringRefE.exit.thread
  %i.ol = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.nu, i64 noundef 48, i64 noundef 8) #11
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit2406

bb.f:                                             ; preds = %_ZNK6hermes6parser10JSONObject4findEN4llvh9StringRefE.exit.thread
  %i.om = add i64 %i.oi, %i.oc
  %i.on = inttoptr i64 %i.om to ptr
  store i64 %i.oj, ptr %i.od, align 8, !tbaa !607
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit2406

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit2406: ; preds = %.critedge.i.i.i2405, %bb.f
  %.0.i.i.i2404 = phi ptr [ %i.ol, %.critedge.i.i.i2405 ], [ %i.on, %bb.f ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i2404, i8 0, i64 16, i1 false)
  %i.oo = getelementptr inbounds nuw i8, ptr %.0.i.i.i2404, i64 16
  store i32 1, ptr %i.oo, align 8, !tbaa !627
  %i.op = getelementptr inbounds nuw i8, ptr %.0.i.i.i2404, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.op, i8 0, i64 28, i1 false)
  %i.oq = ptrtoint ptr %.0.i.i.i2404 to i64
  br label %bb.alz

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 127 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.nq
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !629
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.ov, i64 16, i1 false), !tbaa.struct !1257
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !592
  %.not1620 = icmp eq ptr %i.ox, null
  br i1 %.not1620, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.oy = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %.pre, ptr nonnull @.str.2, i64 5) ; 2 uses
  %i.oz = extractvalue { i64, i8 } %i.oy, 1
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit: ; preds = %bb.h
  %i.pb = extractvalue { i64, i8 } %i.oy, 0
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.pb
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !629 ; 3 uses
  %.not.i = icmp eq ptr %i.pd, null
  br i1 %.not.i, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !595
  %i.pf = icmp eq i32 %i.pe, 3
  %spec.select.i2410 = select i1 %i.pf, ptr %i.pd, ptr null
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit: ; preds = %bb.h, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit, %bb.i
  %i.pg = phi ptr [ null, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit ], [ %spec.select.i2410, %bb.i ], [ null, %bb.h ] ; 6 uses
  %i.ph = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.pi = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ph, ptr nonnull @.str.3, i64 3) ; 2 uses
  %i.pj = extractvalue { i64, i8 } %i.pi, 1
  %i.pk = trunc nuw i8 %i.pj to i1
  br i1 %i.pk, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2412, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2412: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit
  %i.pl = extractvalue { i64, i8 } %i.pi, 0
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.pl
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !629 ; 4 uses
  %.not.i2413 = icmp eq ptr %i.pn, null
  br i1 %.not.i2413, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2412
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !595
  %i.pp = icmp eq i32 %i.po, 3                    ; 2 uses
  %spec.select.i2414 = select i1 %i.pp, ptr %i.pn, ptr null
  %i.pq = icmp ne ptr %i.pg, null
  %or.cond = and i1 %i.pq, %i.pp
  br i1 %or.cond, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2412, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415
  %i.pr = phi ptr [ %spec.select.i2414, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415 ], [ null, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2412 ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit ] ; 4 uses
  %i.ps = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.pt = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ps, ptr nonnull @.str.4, i64 5) ; 2 uses
  %i.pu = extractvalue { i64, i8 } %i.pt, 1
  %i.pv = trunc nuw i8 %i.pu to i1
  br i1 %i.pv, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2417, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2417: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread
  %i.pw = extractvalue { i64, i8 } %i.pt, 0
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.pw
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !629 ; 5 uses
  %.not.i2418 = icmp eq ptr %i.py, null
  br i1 %.not.i2418, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424, label %bb.j

bb.j:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2417
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !595
  %i.qa = icmp eq i32 %i.pz, 1
  br i1 %i.qa, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit: ; preds = %bb.j
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !637
  %i.qd = icmp eq i64 %i.qc, 2
  br i1 %i.qd, label %bb.k, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424

bb.k:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit
  %i.qe = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !629 ; 3 uses
  %.not.i2420 = icmp eq ptr %i.qf, null
  br i1 %.not.i2420, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !595
  %i.qh = icmp eq i32 %i.qg, 3
  %spec.select.i2421 = select i1 %i.qh, ptr %i.qf, ptr null
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit: ; preds = %bb.k, %bb.l
  %i.qi = phi ptr [ null, %bb.k ], [ %spec.select.i2421, %bb.l ]
  %i.qj = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !629 ; 3 uses
  %.not.i2422 = icmp eq ptr %i.qk, null
  br i1 %.not.i2422, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !595
  %i.qm = icmp eq i32 %i.ql, 3
  %spec.select.i2423 = select i1 %i.qm, ptr %i.qk, ptr null
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread, %bb.j, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2417, %bb.m, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415
  %.11613 = phi ptr [ %i.pn, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415 ], [ %spec.select.i2423, %bb.m ], [ %i.pr, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit ], [ %i.pr, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2417 ], [ %i.pr, %bb.j ], [ %i.pr, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread ] ; 2 uses
  %.1 = phi ptr [ %i.pg, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415 ], [ %i.qi, %bb.m ], [ %i.pg, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit ], [ %i.pg, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit2417 ], [ %i.pg, %bb.j ], [ %i.pg, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit2415.thread ] ; 2 uses
  %i.qn = icmp ne ptr %.1, null
  %i.qo = icmp ne ptr %.11613, null
  %or.cond3 = and i1 %i.qo, %i.qn
  br i1 %or.cond3, label %bb.n, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread

bb.n:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424
  %i.qp = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !1260
  %i.qr = fptosi double %i.qq to i32              ; 4 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.11613, i64 16
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !1260
  %i.qu = fptosi double %i.qt to i32              ; 3 uses
  %i.qv = icmp sgt i32 %i.qr, -1
  br i1 %i.qv, label %bb.o, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread

bb.o:                                             ; preds = %bb.n
  %i.qw = load ptr, ptr %i.ow, align 8, !tbaa !592 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !1262
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !1263 ; 3 uses
  %i.rb = ptrtoint ptr %i.qy to i64
  %i.rc = ptrtoint ptr %i.ra to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = trunc i64 %i.rd to i32                  ; 2 uses
  %i.rf = icmp sge i32 %i.qr, %i.re
  %.not1622 = icmp slt i32 %i.qu, %i.qr
  %or.cond1624 = select i1 %i.rf, i1 true, i1 %.not1622
  %.not1623 = icmp samesign ugt i32 %i.qu, %i.re
  %or.cond6812 = select i1 %or.cond1624, i1 true, i1 %.not1623
  br i1 %or.cond6812, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.rg = zext nneg i32 %i.qr to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.rg
  %i.ri = zext nneg i32 %i.qu to i64
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.ri
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424, %bb.p, %bb.o, %bb.n, %bb.g
  %.sroa.262.0 = phi ptr [ null, %bb.g ], [ null, %bb.o ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit ], [ %i.rj, %bb.p ], [ null, %bb.n ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424 ] ; 258 uses
  %.sroa.05391.0 = phi ptr [ null, %bb.g ], [ null, %bb.o ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit ], [ %i.rh, %bb.p ], [ null, %bb.n ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424 ] ; 258 uses
  %.sroa.01036.0.copyload = load ptr, ptr %11, align 8, !tbaa !635 ; 435 uses
  %.sroa.21037.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %.sroa.21037.0.copyload = load i64, ptr %.sroa.21037.0..sroa_idx, align 8, !tbaa !617 ; 2 uses
  switch i64 %.sroa.21037.0.copyload, label %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread [
    i64 12, label %_ZNK4llvh9StringRef6equalsES0_.exit
    i64 14, label %_ZNK4llvh9StringRef6equalsES0_.exit1627
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit1630
    i64 15, label %_ZNK4llvh9StringRef6equalsES0_.exit1633
    i64 5, label %_ZNK4llvh9StringRef6equalsES0_.exit1636
    i64 8, label %_ZNK4llvh9StringRef6equalsES0_.exit1639
    i64 24, label %_ZNK4llvh9StringRef6equalsES0_.exit1786
    i64 18, label %_ZNK4llvh9StringRef6equalsES0_.exit1645
    i64 23, label %_ZNK4llvh9StringRef6equalsES0_.exit1648
    i64 19, label %_ZNK4llvh9StringRef6equalsES0_.exit1651
    i64 20, label %_ZNK4llvh9StringRef6equalsES0_.exit1654
    i64 10, label %_ZNK4llvh9StringRef6equalsES0_.exit1804
    i64 9, label %_ZNK4llvh9StringRef6equalsES0_.exit1798
    i64 16, label %_ZNK4llvh9StringRef6equalsES0_.exit1666
    i64 21, label %_ZNK4llvh9StringRef6equalsES0_.exit1792
    i64 17, label %_ZNK4llvh9StringRef6equalsES0_.exit1678
    i64 11, label %_ZNK4llvh9StringRef6equalsES0_.exit1687
    i64 13, label %_ZNK4llvh9StringRef6equalsES0_.exit1702
    i64 22, label %_ZNK4llvh9StringRef6equalsES0_.exit1771
  ]

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread
  %i.rk = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.rl = xor i64 %i.rk, 8101819944539481426
  %i.rm = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 8
  %i.rn = load i32, ptr %i.rm, align 1
  %i.ro = zext i32 %i.rn to i64
  %i.rp = xor i64 %i.ro, 2037674597
  %i.rq = or i64 %i.rl, %i.rp
  %i.rr = icmp ne i64 %i.rq, 0
  %i.rs = zext i1 %i.rr to i32
  %i.rt = icmp eq i32 %i.rs, 0
  br i1 %i.rt, label %_ZNK4llvh9StringRef6equalsES0_.exit1633.thread.thread7754, label %_ZNK4llvh9StringRef6equalsES0_.exit1675

_ZNK4llvh9StringRef6equalsES0_.exit1633.thread.thread7754: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
  store ptr @.str.6, ptr %11, align 8, !tbaa !635
  store i64 11, ptr %.sroa.21037.0..sroa_idx, align 8, !tbaa !617
  br label %_ZNK4llvh9StringRef6equalsES0_.exit1687

_ZNK4llvh9StringRef6equalsES0_.exit1627:          ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread
  %i.ru = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.rv = xor i64 %i.ru, 8237194087937241171
  %i.rw = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.rx = load i64, ptr %i.rw, align 1
  %i.ry = xor i64 %i.rx, 8751745755891331664
  %i.rz = or i64 %i.rv, %i.ry
  %i.sa = icmp ne i64 %i.rz, 0
  %i.sb = zext i1 %i.sa to i32
  %i.sc = icmp eq i32 %i.sb, 0
  br i1 %i.sc, label %_ZNK4llvh9StringRef6equalsES0_.exit1633.thread.thread7757, label %_ZNK4llvh9StringRef6equalsES0_.exit1660

_ZNK4llvh9StringRef6equalsES0_.exit1633.thread.thread7757: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1627
  store ptr @.str.8, ptr %11, align 8, !tbaa !635
  store i64 13, ptr %.sroa.21037.0..sroa_idx, align 8, !tbaa !617
  br label %_ZNK4llvh9StringRef6equalsES0_.exit1702

_ZNK4llvh9StringRef6equalsES0_.exit1630:          ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread
  %i.sd = load i32, ptr %.sroa.01036.0.copyload, align 1
  %i.se = xor i32 %i.sd, 1702127948
  %i.sf = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 3
  %i.sg = load i32, ptr %i.sf, align 1
  %i.sh = xor i32 %i.sg, 1818325605
  %i.si = or i32 %i.se, %i.sh
  %i.sj = icmp ne i32 %i.si, 0
  %i.sk = zext i1 %i.sj to i32
  %i.sl = icmp eq i32 %i.sk, 0
  br i1 %i.sl, label %_ZNK4llvh9StringRef6equalsES0_.exit1630.thread6058, label %_ZNK4llvh9StringRef6equalsES0_.exit1642

_ZNK4llvh9StringRef6equalsES0_.exit1630.thread6058: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1630
  %i.sm = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.sn = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.sm, ptr nonnull @.str.945, i64 5) ; 2 uses
  %i.so = extractvalue { i64, i8 } %i.sn, 1
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1630.thread6058
  %i.sq = extractvalue { i64, i8 } %i.sn, 0
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.sq
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !629 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ss, null
  br i1 %.not.i.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !595
  %i.su = icmp eq i32 %i.st, 0
  br i1 %i.su, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i: ; preds = %bb.q
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 8 ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !616
  %i.sx = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.sw, ptr nonnull @.str.149, i64 7)
  %i.sy = extractvalue { i64, i8 } %i.sx, 0
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ss, i64 16 ; 2 uses
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %i.sy
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !629 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !595
  %i.td = icmp eq i32 %i.tc, 2
  br i1 %i.td, label %bb.r, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit.i

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit.i: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.tg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.th = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.th, align 1, !tbaa !611
  store ptr @.str.946, ptr %6, align 8, !tbaa !612
  store i8 3, ptr %i.tg, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.tf, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %6, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.aly

bb.r:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !634
  %i.tk = load ptr, ptr %i.sv, align 8, !tbaa !616
  %i.tl = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.tk, ptr nonnull @.str.151, i64 5)
  %i.tm = extractvalue { i64, i8 } %i.tl, 0
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %i.tm
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !629 ; 2 uses
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !595
  %i.tq = icmp eq i32 %i.tp, 2
  br i1 %i.tq, label %bb.s, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit14.i

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit14.i: ; preds = %bb.r
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.tt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.tu = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 1, ptr %i.tu, align 1, !tbaa !611
  store ptr @.str.947, ptr %7, align 8, !tbaa !612
  store i8 3, ptr %i.tt, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ts, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %7, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.aly

bb.s:                                             ; preds = %bb.r
  %i.tv = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !634
  %i.tx = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 24
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !596 ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !603
  %i.ub = zext i32 %i.ua to i64
  %i.uc = load ptr, ptr %i.tx, align 8, !tbaa !604
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %i.ub
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !606
  %i.uf = ptrtoint ptr %i.ue to i64               ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tz, i64 8 ; 3 uses
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !607
  %i.ui = add i64 %i.uh, 7                        ; 2 uses
  %i.uj = add i64 %i.ui, %i.uf
  %i.uk = and i64 %i.uj, 7
  %i.ul = sub i64 %i.ui, %i.uk                    ; 3 uses
  store i64 %i.ul, ptr %i.ug, align 8, !tbaa !607
  %i.um = add i64 %i.ul, 64                       ; 2 uses
  %i.un = icmp ugt i64 %i.um, 262144
  br i1 %i.un, label %.critedge.i.i.i.i, label %bb.t, !prof !608

.critedge.i.i.i.i:                                ; preds = %bb.s
  %i.uo = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.tx, i64 noundef 64, i64 noundef 8) #11
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i

bb.t:                                             ; preds = %bb.s
  %i.up = add i64 %i.ul, %i.uf
  %i.uq = inttoptr i64 %i.up to ptr
  store i64 %i.um, ptr %i.ug, align 8, !tbaa !607
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i:  ; preds = %bb.t, %.critedge.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.uo, %.critedge.i.i.i.i ], [ %i.uq, %bb.t ] ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i.i, i8 0, i64 16, i1 false)
  %i.ur = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store i32 38, ptr %i.ur, align 8, !tbaa !627
  %i.us = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.us, i8 0, i64 28, i1 false)
  %i.ut = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 48
  store ptr %i.tj, ptr %i.ut, align 8, !tbaa !1265
  %i.uu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 56
  store ptr %i.tw, ptr %i.uu, align 8, !tbaa !1266
  br label %bb.ae

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i: ; preds = %bb.q, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i, %_ZNK4llvh9StringRef6equalsES0_.exit1630.thread6058
  %i.uv = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.uw = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.uv, ptr nonnull @.str.142, i64 5) ; 2 uses
  %i.ux = extractvalue { i64, i8 } %i.uw, 1
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit16.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit16.thread.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit16.i: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i
  %i.uz = extractvalue { i64, i8 } %i.uw, 0
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.uz
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !629 ; 5 uses
  %.not13.i = icmp eq ptr %i.vb, null
  br i1 %.not13.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit16.thread.i, label %bb.u

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit16.thread.i: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit16.i, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.ve = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.vf = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 1, ptr %i.vf, align 1, !tbaa !611
  store ptr @.str.948, ptr %8, align 8, !tbaa !612
  store i8 3, ptr %i.ve, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.vd, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %8, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.aly

bb.u:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit16.i
  %i.vg = load i32, ptr %i.vb, align 4, !tbaa !595
  switch i32 %i.vg, label %bb.ad [
    i32 2, label %bb.v
    i32 4, label %bb.x
    i32 5, label %bb.z
    i32 3, label %bb.ab
  ]

end_hunk_1
begin_hunk_2_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  %i.aim = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ain = getelementptr inbounds nuw i8, ptr %23, i64 17
  store i8 1, ptr %i.ain, align 1, !tbaa !611
  store ptr @.str.41, ptr %23, align 8, !tbaa !612
  store i8 3, ptr %i.aim, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ail, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %23, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aih, i64 4
  %i.aip = load i8, ptr %i.aio, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.aiq = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.air = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 136, ptr noundef nonnull align 8 dereferenceable(656) %i.aiq, i64 noundef 8) ; 4 uses
  %i.ais = load ptr, ptr %i.f, align 8, !tbaa !642
  %i.ait = load ptr, ptr %i.g, align 8, !tbaa !642
  %i.aiu = load ptr, ptr %i.h, align 8, !tbaa !642
  %i.aiv = load ptr, ptr %i.i, align 8, !tbaa !642
  %i.aiw = load ptr, ptr %i.j, align 8, !tbaa !642
  %i.aix = trunc nuw i8 %i.aic to i1
  %i.aiy = trunc nuw i8 %i.aip to i1
  call void @_ZN6hermes6ESTree27ArrowFunctionExpressionNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_S3_bb(ptr noundef nonnull align 8 dereferenceable(130) %i.air, ptr noundef %i.ais, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef %i.ait, ptr noundef %i.aiu, ptr noundef %i.aiv, ptr noundef %i.aiw, i1 noundef zeroext %i.aix, i1 noundef zeroext %i.aiy)
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.air, i64 24
  store ptr %.sroa.05391.0, ptr %i.aiz, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2449 = getelementptr inbounds nuw i8, ptr %i.air, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2449, align 8, !tbaa !635
  %i.aja = ptrtoint ptr %i.air to i64
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2448, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2446, %bb.ax, %bb.av
  %.sroa.05404.4 = phi i64 [ %i.aja, %bb.ba ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2448 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2446 ], [ undef, %bb.ax ], [ undef, %bb.av ]
  %.sroa.261.4 = phi i8 [ 1, %bb.ba ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2448 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2446 ], [ 0, %bb.ax ], [ 0, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1651:          ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread
  %i.ajb = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.ajc = xor i128 %i.ajb, 154696420219699242649076331269044729158
  %i.ajd = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 3
  %i.aje = load i128, ptr %i.ajd, align 1
  %i.ajf = xor i128 %i.aje, 146793563361271670531309280767811089507
  %i.ajg = or i128 %i.ajc, %i.ajf
  %i.ajh = icmp ne i128 %i.ajg, 0
  %i.aji = zext i1 %i.ajh to i32
  %i.ajj = icmp eq i32 %i.aji, 0
  br i1 %i.ajj, label %_ZNK4llvh9StringRef6equalsES0_.exit1651.thread6092, label %_ZNK4llvh9StringRef6equalsES0_.exit1711

_ZNK4llvh9StringRef6equalsES0_.exit1651.thread6092: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  store ptr null, ptr %i.k, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  store ptr %24, ptr %24, align 8, !tbaa !639
  %i.ajk = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %24, ptr %i.ajk, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  store ptr null, ptr %i.l, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  store ptr null, ptr %i.m, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #11
  store ptr null, ptr %i.n, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #11
  store ptr null, ptr %i.o, align 8, !tbaa !642
  %i.ajl = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 0 uses
  %i.ajm = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.19, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %24)
  br i1 %i.ajm, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1651.thread6092
  %i.ajn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #11
  %i.ajp = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ajq = getelementptr inbounds nuw i8, ptr %25, i64 17
  store i8 1, ptr %i.ajq, align 1, !tbaa !611
  store ptr @.str.44, ptr %25, align 8, !tbaa !612
  store i8 3, ptr %i.ajp, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ajo, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %25, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  br label %bb.bi

bb.bd:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1651.thread6092
  %i.ajr = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br i1 %i.ajr, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #11
  %i.aju = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ajv = getelementptr inbounds nuw i8, ptr %26, i64 17
  store i8 1, ptr %i.ajv, align 1, !tbaa !611
  store ptr @.str.45, ptr %26, align 8, !tbaa !612
  store i8 3, ptr %i.aju, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ajt, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %26, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #11
  br label %bb.bi

bb.bf:                                            ; preds = %bb.bd
  %i.ajw = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.22, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 0 uses
  %i.ajx = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.24, i64 10, ptr noundef nonnull align 8 dereferenceable(8) %i.n) ; 0 uses
  %i.ajy = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.26, i64 9, ptr noundef nonnull align 8 dereferenceable(8) %i.o) ; 0 uses
  %i.ajz = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.aka = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ajz, ptr nonnull @.str.28, i64 9)
  %i.akb = extractvalue { i64, i8 } %i.aka, 0
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.akb
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !629 ; 2 uses
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !595
  %i.akf = icmp eq i32 %i.ake, 4
  br i1 %i.akf, label %bb.bg, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2451

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2451: ; preds = %bb.bf
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #11
  %i.aki = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.akj = getelementptr inbounds nuw i8, ptr %27, i64 17
  store i8 1, ptr %i.akj, align 1, !tbaa !611
  store ptr @.str.49, ptr %27, align 8, !tbaa !612
  store i8 3, ptr %i.aki, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.akh, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %27, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #11
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akd, i64 4
  %i.akl = load i8, ptr %i.akk, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.akm = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.akn = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.akm, ptr nonnull @.str.30, i64 5)
  %i.ako = extractvalue { i64, i8 } %i.akn, 0
  %i.akp = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.ako
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !629 ; 2 uses
  %i.akr = load i32, ptr %i.akq, align 4, !tbaa !595
  %i.aks = icmp eq i32 %i.akr, 4
  br i1 %i.aks, label %bb.bh, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2453

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2453: ; preds = %bb.bg
  %i.akt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #11
  %i.akv = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.akw = getelementptr inbounds nuw i8, ptr %28, i64 17
  store i8 1, ptr %i.akw, align 1, !tbaa !611
  store ptr @.str.50, ptr %28, align 8, !tbaa !612
  store i8 3, ptr %i.akv, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.aku, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %28, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #11
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akq, i64 4
  %i.aky = load i8, ptr %i.akx, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.akz = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ala = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 136, ptr noundef nonnull align 8 dereferenceable(656) %i.akz, i64 noundef 8) ; 4 uses
  %i.alb = load ptr, ptr %i.k, align 8, !tbaa !642
  %i.alc = load ptr, ptr %i.l, align 8, !tbaa !642
  %i.ald = load ptr, ptr %i.m, align 8, !tbaa !642
  %i.ale = load ptr, ptr %i.n, align 8, !tbaa !642
  %i.alf = load ptr, ptr %i.o, align 8, !tbaa !642
  %i.alg = trunc nuw i8 %i.akl to i1
  %i.alh = trunc nuw i8 %i.aky to i1
  call void @_ZN6hermes6ESTree23FunctionDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_S3_bb(ptr noundef nonnull align 8 dereferenceable(130) %i.ala, ptr noundef %i.alb, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef %i.alc, ptr noundef %i.ald, ptr noundef %i.ale, ptr noundef %i.alf, i1 noundef zeroext %i.alg, i1 noundef zeroext %i.alh)
  %i.ali = getelementptr inbounds nuw i8, ptr %i.ala, i64 24
  store ptr %.sroa.05391.0, ptr %i.ali, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2454 = getelementptr inbounds nuw i8, ptr %i.ala, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2454, align 8, !tbaa !635
  %i.alj = ptrtoint ptr %i.ala to i64
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2453, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2451, %bb.be, %bb.bc
  %.sroa.05404.5 = phi i64 [ %i.alj, %bb.bh ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2453 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2451 ], [ undef, %bb.be ], [ undef, %bb.bc ]
  %.sroa.261.5 = phi i8 [ 1, %bb.bh ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2453 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2451 ], [ 0, %bb.be ], [ 0, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1654:          ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread
  %i.alk = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.all = xor i128 %i.alk, 129529013414144356522693617193153556291
  %i.alm = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.aln = load i32, ptr %i.alm, align 1
  %i.alo = zext i32 %i.aln to i128
  %i.alp = xor i128 %i.alo, 1852795252
  %i.alq = or i128 %i.all, %i.alp
  %i.alr = icmp ne i128 %i.alq, 0
  %i.als = zext i1 %i.alr to i32
  %i.alt = icmp eq i32 %i.als, 0
  br i1 %i.alt, label %_ZNK4llvh9StringRef6equalsES0_.exit1654.thread6098, label %_ZNK4llvh9StringRef6equalsES0_.exit1774

_ZNK4llvh9StringRef6equalsES0_.exit1654.thread6098: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #11
  store ptr null, ptr %i.p, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #11
  store ptr %29, ptr %29, align 8, !tbaa !639
  %i.alu = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %29, ptr %i.alu, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #11
  store ptr null, ptr %i.q, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #11
  store ptr null, ptr %i.r, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #11
  store ptr null, ptr %i.s, align 8, !tbaa !642
  %i.alv = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  br i1 %i.alv, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1654.thread6098
  %i.alw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #11
  %i.aly = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.alz = getelementptr inbounds nuw i8, ptr %30, i64 17
  store i8 1, ptr %i.alz, align 1, !tbaa !611
  store ptr @.str.52, ptr %30, align 8, !tbaa !612
  store i8 3, ptr %i.aly, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.alx, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %30, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #11
  br label %bb.bq

bb.bk:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1654.thread6098
  %i.ama = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.19, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %29)
  br i1 %i.ama, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.amb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #11
  %i.amd = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.ame = getelementptr inbounds nuw i8, ptr %31, i64 17
  store i8 1, ptr %i.ame, align 1, !tbaa !611
  store ptr @.str.53, ptr %31, align 8, !tbaa !612
  store i8 3, ptr %i.amd, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.amc, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %31, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #11
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bk
  %i.amf = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  br i1 %i.amf, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.amg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #11
  %i.ami = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.amj = getelementptr inbounds nuw i8, ptr %32, i64 17
  store i8 1, ptr %i.amj, align 1, !tbaa !611
  store ptr @.str.54, ptr %32, align 8, !tbaa !612
  store i8 3, ptr %i.ami, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.amh, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %32, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #11
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  %i.amk = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.22, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.r) ; 0 uses
  %i.aml = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.56, i64 11, ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 0 uses
  %i.amm = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.amn = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.amm, ptr nonnull @.str.30, i64 5)
  %i.amo = extractvalue { i64, i8 } %i.amn, 0
  %i.amp = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.amo
  %i.amq = load ptr, ptr %i.amp, align 8, !tbaa !629 ; 2 uses
  %i.amr = load i32, ptr %i.amq, align 4, !tbaa !595
  %i.ams = icmp eq i32 %i.amr, 4
  br i1 %i.ams, label %bb.bp, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2456

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2456: ; preds = %bb.bo
  %i.amt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #11
  %i.amv = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.amw = getelementptr inbounds nuw i8, ptr %33, i64 17
  store i8 1, ptr %i.amw, align 1, !tbaa !611
  store ptr @.str.58, ptr %33, align 8, !tbaa !612
  store i8 3, ptr %i.amv, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.amu, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %33, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #11
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amq, i64 4
  %i.amy = load i8, ptr %i.amx, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.amz = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ana = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(656) %i.amz, i64 noundef 8) ; 4 uses
  %i.anb = load ptr, ptr %i.p, align 8, !tbaa !642
  %i.anc = load ptr, ptr %i.q, align 8, !tbaa !642
  %i.and = load ptr, ptr %i.r, align 8, !tbaa !642
  %i.ane = load ptr, ptr %i.s, align 8, !tbaa !642
  %i.anf = trunc nuw i8 %i.amy to i1
  call void @_ZN6hermes6ESTree24ComponentDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_b(ptr noundef nonnull align 8 dereferenceable(121) %i.ana, ptr noundef %i.anb, ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef %i.anc, ptr noundef %i.and, ptr noundef %i.ane, i1 noundef zeroext %i.anf)
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ana, i64 24
  store ptr %.sroa.05391.0, ptr %i.ang, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2457 = getelementptr inbounds nuw i8, ptr %i.ana, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2457, align 8, !tbaa !635
  %i.anh = ptrtoint ptr %i.ana to i64
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2456, %bb.bn, %bb.bl, %bb.bj
  %.sroa.05404.6 = phi i64 [ %i.anh, %bb.bp ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2456 ], [ undef, %bb.bn ], [ undef, %bb.bl ], [ undef, %bb.bj ]
  %.sroa.261.6 = phi i8 [ 1, %bb.bp ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2456 ], [ 0, %bb.bn ], [ 0, %bb.bl ], [ 0, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1657:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1633
  %i.ani = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.anj = xor i64 %i.ani, 7810197523325218632
  %i.ank = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.anl = load i64, ptr %i.ank, align 1
  %i.anm = xor i64 %i.anl, 7957695015158964588
  %i.ann = or i64 %i.anj, %i.anm
  %i.ano = icmp ne i64 %i.ann, 0
  %i.anp = zext i1 %i.ano to i32
  %i.anq = icmp eq i32 %i.anp, 0
  br i1 %i.anq, label %_ZNK4llvh9StringRef6equalsES0_.exit1657.thread6102, label %_ZNK4llvh9StringRef6equalsES0_.exit1699

_ZNK4llvh9StringRef6equalsES0_.exit1657.thread6102: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #11
  store ptr null, ptr %i.t, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #11
  store ptr %34, ptr %34, align 8, !tbaa !639
  %i.anr = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr %34, ptr %i.anr, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #11
  store ptr null, ptr %i.u, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #11
  store ptr null, ptr %i.v, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #11
  store ptr null, ptr %i.w, align 8, !tbaa !642
  %i.ans = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  br i1 %i.ans, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1657.thread6102
  %i.ant = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #11
  %i.anv = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.anw = getelementptr inbounds nuw i8, ptr %35, i64 17
  store i8 1, ptr %i.anw, align 1, !tbaa !611
  store ptr @.str.60, ptr %35, align 8, !tbaa !612
  store i8 3, ptr %i.anv, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.anu, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %35, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #11
  br label %bb.by

bb.bs:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1657.thread6102
  %i.anx = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.19, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %34)
  br i1 %i.anx, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.any = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #11
  %i.aoa = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.aob = getelementptr inbounds nuw i8, ptr %36, i64 17
  store i8 1, ptr %i.aob, align 1, !tbaa !611
  store ptr @.str.61, ptr %36, align 8, !tbaa !612
  store i8 3, ptr %i.aoa, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.anz, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %36, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #11
  br label %bb.by

bb.bu:                                            ; preds = %bb.bs
  %i.aoc = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  br i1 %i.aoc, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.aod = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #11
  %i.aof = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.aog = getelementptr inbounds nuw i8, ptr %37, i64 17
  store i8 1, ptr %i.aog, align 1, !tbaa !611
  store ptr @.str.62, ptr %37, align 8, !tbaa !612
  store i8 3, ptr %i.aof, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.aoe, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %37, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #11
  br label %bb.by

bb.bw:                                            ; preds = %bb.bu
  %i.aoh = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.22, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 0 uses
  %i.aoi = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.24, i64 10, ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 0 uses
  %i.aoj = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.aok = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.aoj, ptr nonnull @.str.30, i64 5)
  %i.aol = extractvalue { i64, i8 } %i.aok, 0
  %i.aom = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.aol
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !629 ; 2 uses
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !595
  %i.aop = icmp eq i32 %i.aoo, 4
  br i1 %i.aop, label %bb.bx, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2459

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2459: ; preds = %bb.bw
  %i.aoq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #11
  %i.aos = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.aot = getelementptr inbounds nuw i8, ptr %38, i64 17
  store i8 1, ptr %i.aot, align 1, !tbaa !611
  store ptr @.str.65, ptr %38, align 8, !tbaa !612
  store i8 3, ptr %i.aos, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.aor, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %38, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #11
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aon, i64 4
  %i.aov = load i8, ptr %i.aou, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.aow = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.aox = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(656) %i.aow, i64 noundef 8) ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2467, align 8, !tbaa !635
  %i.awc = ptrtoint ptr %i.avq to i64
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2466, %bb.da, %bb.cy, %bb.cw
  %.sroa.05404.12 = phi i64 [ %i.awc, %bb.dc ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2466 ], [ undef, %bb.da ], [ undef, %bb.cy ], [ undef, %bb.cw ]
  %.sroa.261.12 = phi i8 [ 1, %bb.dc ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2466 ], [ 0, %bb.da ], [ 0, %bb.cy ], [ 0, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1675:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.awd = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.awe = xor i64 %i.awd, 7310575247373266758
  %i.awf = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 8
  %i.awg = load i32, ptr %i.awf, align 1
  %i.awh = zext i32 %i.awg to i64
  %i.awi = xor i64 %i.awh, 1953391981
  %i.awj = or i64 %i.awe, %i.awi
  %i.awk = icmp ne i64 %i.awj, 0
  %i.awl = zext i1 %i.awk to i32
  %i.awm = icmp eq i32 %i.awl, 0
  br i1 %i.awm, label %_ZNK4llvh9StringRef6equalsES0_.exit1675.thread6118, label %_ZNK4llvh9StringRef6equalsES0_.exit1714

_ZNK4llvh9StringRef6equalsES0_.exit1675.thread6118: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #11
  store ptr null, ptr %i.ai, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #11
  store ptr null, ptr %i.aj, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #11
  store ptr null, ptr %i.ak, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #11
  store ptr null, ptr %i.al, align 8, !tbaa !642
  %i.awn = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.91, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.ai) ; 0 uses
  %i.awo = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.73, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.aj) ; 0 uses
  %i.awp = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.94, i64 6, ptr noundef nonnull align 8 dereferenceable(8) %i.ak) ; 0 uses
  %i.awq = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
  br i1 %i.awq, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1675.thread6118
  %i.awr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aws = load ptr, ptr %i.awr, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #11
  %i.awt = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  store i8 1, ptr %i.awt, align 8, !tbaa !613
  %i.awu = getelementptr inbounds nuw i8, ptr %53, i64 17
  store i8 1, ptr %i.awu, align 1, !tbaa !611
  store ptr @.str.96, ptr %53, align 8, !tbaa !612
  store i8 3, ptr %i.awt, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.aws, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %53, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #11
  br label %bb.dg

bb.df:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1675.thread6118
  %i.awv = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.aww = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 88, ptr noundef nonnull align 8 dereferenceable(656) %i.awv, i64 noundef 8) ; 11 uses
  %i.awx = load ptr, ptr %i.ai, align 8, !tbaa !642
  %i.awy = load ptr, ptr %i.aj, align 8, !tbaa !642
  %i.awz = load ptr, ptr %i.ak, align 8, !tbaa !642
  %i.axa = load ptr, ptr %i.al, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aww, i8 0, i64 16, i1 false)
  %i.axb = getelementptr inbounds nuw i8, ptr %i.aww, i64 16
  store i32 17, ptr %i.axb, align 8, !tbaa !627
  %i.axc = getelementptr inbounds nuw i8, ptr %i.aww, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.axc, i8 0, i64 28, i1 false)
  %i.axd = getelementptr inbounds nuw i8, ptr %i.aww, i64 48
  store i32 -1, ptr %i.axd, align 8, !tbaa !649
  %i.axe = getelementptr inbounds nuw i8, ptr %i.aww, i64 56
  store ptr %i.awx, ptr %i.axe, align 8, !tbaa !667
  %i.axf = getelementptr inbounds nuw i8, ptr %i.aww, i64 64
  store ptr %i.awy, ptr %i.axf, align 8, !tbaa !668
  %i.axg = getelementptr inbounds nuw i8, ptr %i.aww, i64 72
  store ptr %i.awz, ptr %i.axg, align 8, !tbaa !669
  %i.axh = getelementptr inbounds nuw i8, ptr %i.aww, i64 80
  store ptr %i.axa, ptr %i.axh, align 8, !tbaa !670
  %i.axi = getelementptr inbounds nuw i8, ptr %i.aww, i64 24
  store ptr %.sroa.05391.0, ptr %i.axi, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2468 = getelementptr inbounds nuw i8, ptr %i.aww, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2468, align 8, !tbaa !635
  %i.axj = ptrtoint ptr %i.aww to i64
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.sroa.05404.13 = phi i64 [ %i.axj, %bb.df ], [ undef, %bb.de ]
  %.sroa.261.13 = phi i8 [ 1, %bb.df ], [ 0, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1678:          ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread
  %i.axk = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.axl = xor i128 %i.axk, 146741720339762051860288190344197203268
  %i.axm = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.axn = load i8, ptr %i.axm, align 1
  %i.axo = zext i8 %i.axn to i128
  %i.axp = xor i128 %i.axo, 116
  %i.axq = or i128 %i.axl, %i.axp
  %i.axr = icmp ne i128 %i.axq, 0
  %i.axs = zext i1 %i.axr to i32
  %i.axt = icmp eq i32 %i.axs, 0
  br i1 %i.axt, label %_ZNK4llvh9StringRef6equalsES0_.exit1678.thread6120, label %_ZNK4llvh9StringRef6equalsES0_.exit1693

_ZNK4llvh9StringRef6equalsES0_.exit1678.thread6120: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1678
  %i.axu = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.axv = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.axu, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.axv, i8 0, i64 16, i1 false)
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 16
  store i32 19, ptr %i.axw, align 8, !tbaa !627
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axv, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.axx, i8 0, i64 28, i1 false)
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axv, i64 24
  store ptr %.sroa.05391.0, ptr %i.axy, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2469 = getelementptr inbounds nuw i8, ptr %i.axv, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2469, align 8, !tbaa !635
  %i.axz = ptrtoint ptr %i.axv to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1681:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1672
  %i.aya = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.ayb = xor i64 %i.aya, 7022329500087119173
  %i.ayc = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.ayd = load i64, ptr %i.ayc, align 1
  %i.aye = xor i64 %i.ayd, 8389754676365779316
  %i.ayf = or i64 %i.ayb, %i.aye
  %i.ayg = icmp ne i64 %i.ayf, 0
  %i.ayh = zext i1 %i.ayg to i32
  %i.ayi = icmp eq i32 %i.ayh, 0
  br i1 %i.ayi, label %_ZNK4llvh9StringRef6equalsES0_.exit1681.thread6122, label %_ZNK4llvh9StringRef6equalsES0_.exit1684

_ZNK4llvh9StringRef6equalsES0_.exit1681.thread6122: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1681
  %i.ayj = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ayk = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.ayj, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ayk, i8 0, i64 16, i1 false)
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 16
  store i32 20, ptr %i.ayl, align 8, !tbaa !627
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayk, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.aym, i8 0, i64 28, i1 false)
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.ayk, i64 24
  store ptr %.sroa.05391.0, ptr %i.ayn, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2470 = getelementptr inbounds nuw i8, ptr %i.ayk, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2470, align 8, !tbaa !635
  %i.ayo = ptrtoint ptr %i.ayk to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1684:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1681
  %i.ayp = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.ayq = xor i64 %i.ayp, 7022329439672298562
  %i.ayr = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.ays = load i64, ptr %i.ayr, align 1
  %i.ayt = xor i64 %i.ays, 8389754676365779316
  %i.ayu = or i64 %i.ayq, %i.ayt
  %i.ayv = icmp ne i64 %i.ayu, 0
  %i.ayw = zext i1 %i.ayv to i32
  %i.ayx = icmp eq i32 %i.ayw, 0
  br i1 %i.ayx, label %_ZNK4llvh9StringRef6equalsES0_.exit1684.thread6124, label %_ZNK4llvh9StringRef6equalsES0_.exit1690

_ZNK4llvh9StringRef6equalsES0_.exit1684.thread6124: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1684
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, i8 0, i64 16, i1 false)
  store ptr %54, ptr %54, align 8, !tbaa !639
  %i.ayy = getelementptr inbounds nuw i8, ptr %54, i64 8
  store ptr %54, ptr %i.ayy, align 8, !tbaa !640
  %i.ayz = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(16) %54)
  br i1 %i.ayz, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1684.thread6124
  %i.aza = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.azb = load ptr, ptr %i.aza, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #11
  %i.azc = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  store i8 1, ptr %i.azc, align 8, !tbaa !613
  %i.azd = getelementptr inbounds nuw i8, ptr %55, i64 17
  store i8 1, ptr %i.azd, align 1, !tbaa !611
  store ptr @.str.100, ptr %55, align 8, !tbaa !612
  store i8 3, ptr %i.azc, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.azb, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %55, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #11
  br label %bb.dj

bb.di:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1684.thread6124
  %i.aze = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.azf = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.aze, i64 noundef 8) ; 4 uses
  call void @_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.azf, ptr noundef nonnull align 8 dereferenceable(16) %54)
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 24
  store ptr %.sroa.05391.0, ptr %i.azg, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2471 = getelementptr inbounds nuw i8, ptr %i.azf, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2471, align 8, !tbaa !635
  %i.azh = ptrtoint ptr %i.azf to i64
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.sroa.05404.14 = phi i64 [ %i.azh, %bb.di ], [ undef, %bb.dh ]
  %.sroa.261.14 = phi i8 [ 1, %bb.di ], [ 0, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1687:          ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread, %_ZNK4llvh9StringRef6equalsES0_.exit1633.thread.thread7754
  %.sroa.01032.0.copyload724072437340 = phi ptr [ %.sroa.01036.0.copyload, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread ], [ @.str.6, %_ZNK4llvh9StringRef6equalsES0_.exit1633.thread.thread7754 ] ; 11 uses
  %i.azi = load i64, ptr %.sroa.01032.0.copyload724072437340, align 1
  %i.azj = xor i64 %i.azi, 7800906809134380115
  %i.azk = getelementptr i8, ptr %.sroa.01032.0.copyload724072437340, i64 3
  %i.azl = load i64, ptr %i.azk, align 1
  %i.azm = xor i64 %i.azl, 7738151095513606516
  %i.azn = or i64 %i.azj, %i.azm
  %i.azo = icmp ne i64 %i.azn, 0
  %i.azp = zext i1 %i.azo to i32
  %i.azq = icmp eq i32 %i.azp, 0
  br i1 %i.azq, label %_ZNK4llvh9StringRef6equalsES0_.exit1687.thread6126, label %_ZNK4llvh9StringRef6equalsES0_.exit1717

_ZNK4llvh9StringRef6equalsES0_.exit1687.thread6126: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1687
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %56, i8 0, i64 16, i1 false)
  store ptr %56, ptr %56, align 8, !tbaa !639
  %i.azr = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 2 uses
  store ptr %56, ptr %i.azr, align 8, !tbaa !640
  %i.azs = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(16) %56)
  br i1 %i.azs, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1687.thread6126
  %i.azt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.azu = load ptr, ptr %i.azt, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #11
  %i.azv = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  store i8 1, ptr %i.azv, align 8, !tbaa !613
  %i.azw = getelementptr inbounds nuw i8, ptr %57, i64 17
  store i8 1, ptr %i.azw, align 1, !tbaa !611
  store ptr @.str.102, ptr %57, align 8, !tbaa !612
  store i8 3, ptr %i.azv, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.azu, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %57, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #11
  br label %bb.dn

bb.dl:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1687.thread6126
  %i.azx = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.azy = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.azx, i64 noundef 8) ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.azy, i8 0, i64 16, i1 false)
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 16
  store i32 22, ptr %i.azz, align 8, !tbaa !627
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azy, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.baa, i8 0, i64 28, i1 false)
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azy, i64 48 ; 7 uses
  store ptr %i.bab, ptr %i.bab, align 8, !tbaa !639
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azy, i64 56 ; 2 uses
  store ptr %i.bab, ptr %i.bac, align 8, !tbaa !640
  %i.bad = load ptr, ptr %i.azr, align 8, !tbaa !640 ; 4 uses
  %i.bae = icmp eq ptr %i.bab, %56
  %i.baf = icmp eq ptr %i.bad, %56
  %or.cond.i.i.i.i.i.i2472 = or i1 %i.bae, %i.baf
  br i1 %or.cond.i.i.i.i.i.i2472, label %_ZN6hermes6ESTree15StaticBlockNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.bag = load ptr, ptr %56, align 8, !tbaa !639 ; 2 uses
  %i.bah = load ptr, ptr %i.bad, align 8, !tbaa !639 ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 8
  store ptr %56, ptr %i.bai, align 8, !tbaa !640
  store ptr %i.bah, ptr %56, align 8, !tbaa !639
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bag, i64 8
  store ptr %i.bab, ptr %i.baj, align 8, !tbaa !640
  store ptr %i.bab, ptr %i.bad, align 8, !tbaa !639
  store ptr %i.bad, ptr %i.bac, align 8, !tbaa !640
  store ptr %i.bag, ptr %i.bab, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree15StaticBlockNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree15StaticBlockNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %bb.dl, %bb.dm
  %i.bak = getelementptr inbounds nuw i8, ptr %i.azy, i64 24
  store ptr %.sroa.05391.0, ptr %i.bak, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2473 = getelementptr inbounds nuw i8, ptr %i.azy, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2473, align 8, !tbaa !635
  %i.bal = ptrtoint ptr %i.azy to i64
  br label %bb.dn

bb.dn:                                            ; preds = %_ZN6hermes6ESTree15StaticBlockNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, %bb.dk
  %.sroa.05404.15 = phi i64 [ %i.bal, %_ZN6hermes6ESTree15StaticBlockNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.dk ]
  %.sroa.261.15 = phi i8 [ 1, %_ZN6hermes6ESTree15StaticBlockNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1690:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1684
  %i.bam = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.ban = xor i64 %i.bam, 7022329439638090306
  %i.bao = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.bap = load i64, ptr %i.bao, align 1
  %i.baq = xor i64 %i.bap, 8389754676365779316
  %i.bar = or i64 %i.ban, %i.baq
  %i.bas = icmp ne i64 %i.bar, 0
  %i.bat = zext i1 %i.bas to i32
  %i.bau = icmp eq i32 %i.bat, 0
  br i1 %i.bau, label %_ZNK4llvh9StringRef6equalsES0_.exit1690.thread6128, label %_ZNK4llvh9StringRef6equalsES0_.exit1696

_ZNK4llvh9StringRef6equalsES0_.exit1690.thread6128: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #11
  store ptr null, ptr %i.am, align 8, !tbaa !642
  %i.bav = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.104, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.am) ; 0 uses
  %i.baw = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.bax = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.baw, i64 noundef 8) ; 8 uses
  %i.bay = load ptr, ptr %i.am, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bax, i8 0, i64 16, i1 false)
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bax, i64 16
  store i32 23, ptr %i.baz, align 8, !tbaa !627
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bax, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bba, i8 0, i64 28, i1 false)
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bax, i64 48
  store i32 -1, ptr %i.bbb, align 8, !tbaa !649
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bax, i64 56
  store ptr %i.bay, ptr %i.bbc, align 8, !tbaa !674
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bax, i64 24
  store ptr %.sroa.05391.0, ptr %i.bbd, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2474 = getelementptr inbounds nuw i8, ptr %i.bax, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2474, align 8, !tbaa !635
  %i.bbe = ptrtoint ptr %i.bax to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1693:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1678
  %i.bbf = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.bbg = xor i128 %i.bbf, 146741720339762051859355952926486851395
  %i.bbh = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.bbi = load i8, ptr %i.bbh, align 1
  %i.bbj = zext i8 %i.bbi to i128
  %i.bbk = xor i128 %i.bbj, 116
  %i.bbl = or i128 %i.bbg, %i.bbk
  %i.bbm = icmp ne i128 %i.bbl, 0
  %i.bbn = zext i1 %i.bbm to i32
  %i.bbo = icmp eq i32 %i.bbn, 0
  br i1 %i.bbo, label %_ZNK4llvh9StringRef6equalsES0_.exit1693.thread6130, label %_ZNK4llvh9StringRef6equalsES0_.exit1789

_ZNK4llvh9StringRef6equalsES0_.exit1693.thread6130: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #11
  store ptr null, ptr %i.an, align 8, !tbaa !642
  %i.bbp = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.104, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.an) ; 0 uses
  %i.bbq = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.bbr = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.bbq, i64 noundef 8) ; 8 uses
  %i.bbs = load ptr, ptr %i.an, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bbr, i8 0, i64 16, i1 false)
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbr, i64 16
  store i32 24, ptr %i.bbt, align 8, !tbaa !627
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbr, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bbu, i8 0, i64 28, i1 false)
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbr, i64 48
  store i32 -1, ptr %i.bbv, align 8, !tbaa !649
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbr, i64 56
  store ptr %i.bbs, ptr %i.bbw, align 8, !tbaa !677
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbr, i64 24
  store ptr %.sroa.05391.0, ptr %i.bbx, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2475 = getelementptr inbounds nuw i8, ptr %i.bbr, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2475, align 8, !tbaa !635
  %i.bby = ptrtoint ptr %i.bbr to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1696:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1690
  %i.bbz = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.bca = xor i64 %i.bbz, 7022329491413428308
  %i.bcb = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.bcc = load i64, ptr %i.bcb, align 1
  %i.bcd = xor i64 %i.bcc, 8389754676365779316
  %i.bce = or i64 %i.bca, %i.bcd
  %i.bcf = icmp ne i64 %i.bce, 0
  %i.bcg = zext i1 %i.bcf to i32
  %i.bch = icmp eq i32 %i.bcg, 0
  br i1 %i.bch, label %_ZNK4llvh9StringRef6equalsES0_.exit1696.thread6132, label %_ZNK4llvh9StringRef6equalsES0_.exit1723

_ZNK4llvh9StringRef6equalsES0_.exit1696.thread6132: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #11
  store ptr null, ptr %i.ao, align 8, !tbaa !642
  %i.bci = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.67, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
  br i1 %i.bci, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1696.thread6132
  %i.bcj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bck = load ptr, ptr %i.bcj, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #11
  %i.bcl = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  store i8 1, ptr %i.bcl, align 8, !tbaa !613
  %i.bcm = getelementptr inbounds nuw i8, ptr %58, i64 17
  store i8 1, ptr %i.bcm, align 1, !tbaa !611
  store ptr @.str.109, ptr %58, align 8, !tbaa !612
  store i8 3, ptr %i.bcl, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bck, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %58, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #11
  br label %bb.dq

bb.dp:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1696.thread6132
  %i.bcn = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.bco = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.bcn, i64 noundef 8) ; 7 uses
  %i.bcp = load ptr, ptr %i.ao, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bco, i8 0, i64 16, i1 false)
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bco, i64 16
  store i32 25, ptr %i.bcq, align 8, !tbaa !627
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bco, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bcr, i8 0, i64 28, i1 false)
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bco, i64 48
  store ptr %i.bcp, ptr %i.bcs, align 8, !tbaa !679
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bco, i64 24
  store ptr %.sroa.05391.0, ptr %i.bct, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2476 = getelementptr inbounds nuw i8, ptr %i.bco, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2476, align 8, !tbaa !635
  %i.bcu = ptrtoint ptr %i.bco to i64
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.sroa.05404.16 = phi i64 [ %i.bcu, %bb.dp ], [ undef, %bb.do ]
  %.sroa.261.16 = phi i8 [ 1, %bb.dp ], [ 0, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1699:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1657
  %i.bcv = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.bcw = xor i64 %i.bcv, 8382164769342514514
  %i.bcx = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.bcy = load i64, ptr %i.bcx, align 1
  %i.bcz = xor i64 %i.bcy, 8389754676365779316
  %i.bda = or i64 %i.bcw, %i.bcz
  %i.bdb = icmp ne i64 %i.bda, 0
  %i.bdc = zext i1 %i.bdb to i32
  %i.bdd = icmp eq i32 %i.bdc, 0
  br i1 %i.bdd, label %_ZNK4llvh9StringRef6equalsES0_.exit1699.thread6134, label %_ZNK4llvh9StringRef6equalsES0_.exit1705

_ZNK4llvh9StringRef6equalsES0_.exit1699.thread6134: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #11
  store ptr null, ptr %i.ap, align 8, !tbaa !642
  %i.bde = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.67, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.ap) ; 0 uses
  %i.bdf = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.bdg = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.bdf, i64 noundef 8) ; 7 uses
  %i.bdh = load ptr, ptr %i.ap, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bdg, i8 0, i64 16, i1 false)
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdg, i64 16
  store i32 26, ptr %i.bdi, align 8, !tbaa !627
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdg, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bdj, i8 0, i64 28, i1 false)
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdg, i64 48
  store ptr %i.bdh, ptr %i.bdk, align 8, !tbaa !681
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdg, i64 24
  store ptr %.sroa.05391.0, ptr %i.bdl, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2477 = getelementptr inbounds nuw i8, ptr %i.bdg, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2477, align 8, !tbaa !635
  %i.bdm = ptrtoint ptr %i.bdg to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1702:          ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread, %_ZNK4llvh9StringRef6equalsES0_.exit1633.thread.thread7757
  %.sroa.01032.0.copyload724072437335 = phi ptr [ %.sroa.01036.0.copyload, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread ], [ @.str.8, %_ZNK4llvh9StringRef6equalsES0_.exit1633.thread.thread7757 ] ; 13 uses
  %i.bdn = load i64, ptr %.sroa.01032.0.copyload724072437335, align 1
  %i.bdo = xor i64 %i.bdn, 8386111882724141399
  %i.bdp = getelementptr i8, ptr %.sroa.01032.0.copyload724072437335, i64 5
  %i.bdq = load i64, ptr %i.bdp, align 1
  %i.bdr = xor i64 %i.bdq, 8389754676365779316
  %i.bds = or i64 %i.bdo, %i.bdr
  %i.bdt = icmp ne i64 %i.bds, 0
  %i.bdu = zext i1 %i.bdt to i32
  %i.bdv = icmp eq i32 %i.bdu, 0
  br i1 %i.bdv, label %_ZNK4llvh9StringRef6equalsES0_.exit1702.thread6136, label %_ZNK4llvh9StringRef6equalsES0_.exit1726

_ZNK4llvh9StringRef6equalsES0_.exit1702.thread6136: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #11
  store ptr null, ptr %i.aq, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #11
  store ptr null, ptr %i.ar, align 8, !tbaa !642
  %i.bdw = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.113, i64 6, ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
  br i1 %i.bdw, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1702.thread6136
  %i.bdx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #11
  %i.bdz = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  store i8 1, ptr %i.bdz, align 8, !tbaa !613
  %i.bea = getelementptr inbounds nuw i8, ptr %59, i64 17
  store i8 1, ptr %i.bea, align 1, !tbaa !611
  store ptr @.str.114, ptr %59, align 8, !tbaa !612
  store i8 3, ptr %i.bdz, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bdy, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %59, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #11
  br label %bb.dv

bb.ds:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1702.thread6136
  %i.beb = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
  br i1 %i.beb, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.bec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #11
  %i.bee = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  store i8 1, ptr %i.bee, align 8, !tbaa !613
  %i.bef = getelementptr inbounds nuw i8, ptr %60, i64 17
  store i8 1, ptr %i.bef, align 1, !tbaa !611
  store ptr @.str.115, ptr %60, align 8, !tbaa !612
  store i8 3, ptr %i.bee, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bed, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %60, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #11
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.beg = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.beh = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.beg, i64 noundef 8) ; 8 uses
  %i.bei = load ptr, ptr %i.aq, align 8, !tbaa !642
  %i.bej = load ptr, ptr %i.ar, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.beh, i8 0, i64 16, i1 false)
  %i.bek = getelementptr inbounds nuw i8, ptr %i.beh, i64 16
  store i32 27, ptr %i.bek, align 8, !tbaa !627
  %i.bel = getelementptr inbounds nuw i8, ptr %i.beh, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bel, i8 0, i64 28, i1 false)
  %i.bem = getelementptr inbounds nuw i8, ptr %i.beh, i64 48
  store ptr %i.bei, ptr %i.bem, align 8, !tbaa !683
  %i.ben = getelementptr inbounds nuw i8, ptr %i.beh, i64 56
  store ptr %i.bej, ptr %i.ben, align 8, !tbaa !684
  %i.beo = getelementptr inbounds nuw i8, ptr %i.beh, i64 24
  store ptr %.sroa.05391.0, ptr %i.beo, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2478 = getelementptr inbounds nuw i8, ptr %i.beh, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2478, align 8, !tbaa !635
  %i.bep = ptrtoint ptr %i.beh to i64
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.dr
  %.sroa.05404.17 = phi i64 [ %i.bep, %bb.du ], [ undef, %bb.dt ], [ undef, %bb.dr ]
  %.sroa.261.17 = phi i8 [ 1, %bb.du ], [ 0, %bb.dt ], [ 0, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1705:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1699
  %i.beq = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.ber = xor i64 %i.beq, 8382158107830744915
  %i.bes = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.bet = load i64, ptr %i.bes, align 1
  %i.beu = xor i64 %i.bet, 8389754676365779316
  %i.bev = or i64 %i.ber, %i.beu
  %i.bew = icmp ne i64 %i.bev, 0
  %i.bex = zext i1 %i.bew to i32
  %i.bey = icmp eq i32 %i.bex, 0
  br i1 %i.bey, label %_ZNK4llvh9StringRef6equalsES0_.exit1705.thread6138, label %_ZNK4llvh9StringRef6equalsES0_.exit1750

_ZNK4llvh9StringRef6equalsES0_.exit1705.thread6138: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #11
  store ptr null, ptr %i.as, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #11
  store ptr %61, ptr %61, align 8, !tbaa !639
  %i.bez = getelementptr inbounds nuw i8, ptr %61, i64 8
  store ptr %61, ptr %i.bez, align 8, !tbaa !640
  %i.bfa = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.117, i64 12, ptr noundef nonnull align 8 dereferenceable(8) %i.as)
  br i1 %i.bfa, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1705.thread6138
  %i.bfb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bfc = load ptr, ptr %i.bfb, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #11
  %i.bfd = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.bfe = getelementptr inbounds nuw i8, ptr %62, i64 17
  store i8 1, ptr %i.bfe, align 1, !tbaa !611
  store ptr @.str.118, ptr %62, align 8, !tbaa !612
  store i8 3, ptr %i.bfd, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bfc, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %62, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #11
  br label %bb.ea

bb.dx:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1705.thread6138
  %i.bff = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.69, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %61)
  br i1 %i.bff, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bfg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bfh = load ptr, ptr %i.bfg, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #11
  %i.bfi = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.bfj = getelementptr inbounds nuw i8, ptr %63, i64 17
  store i8 1, ptr %i.bfj, align 1, !tbaa !611
  store ptr @.str.119, ptr %63, align 8, !tbaa !612
  store i8 3, ptr %i.bfi, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bfh, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %63, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #11
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %i.bfk = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.bfl = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 80, ptr noundef nonnull align 8 dereferenceable(656) %i.bfk, i64 noundef 8) ; 4 uses
  %i.bfm = load ptr, ptr %i.as, align 8, !tbaa !642
  call void @_ZN6hermes6ESTree19SwitchStatementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.bfl, ptr noundef %i.bfm, ptr noundef nonnull align 8 dereferenceable(16) %61)
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfl, i64 24
  store ptr %.sroa.05391.0, ptr %i.bfn, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2479 = getelementptr inbounds nuw i8, ptr %i.bfl, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2479, align 8, !tbaa !635
  %i.bfo = ptrtoint ptr %i.bfl to i64
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %bb.dw
  %.sroa.05404.18 = phi i64 [ %i.bfo, %bb.dz ], [ undef, %bb.dy ], [ undef, %bb.dw ]
  %.sroa.261.18 = phi i8 [ 1, %bb.dz ], [ 0, %bb.dy ], [ 0, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1708:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1666
  %i.bfp = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.bfq = icmp ne i128 %i.bfp, 154763657356127436771916929107818078540
  %i.bfr = zext i1 %i.bfq to i32
  %i.bfs = icmp eq i32 %i.bfr, 0
  br i1 %i.bfs, label %_ZNK4llvh9StringRef6equalsES0_.exit1708.thread6140, label %_ZNK4llvh9StringRef6equalsES0_.exit1747

_ZNK4llvh9StringRef6equalsES0_.exit1708.thread6140: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #11
  store ptr null, ptr %i.at, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #11
  store ptr null, ptr %i.au, align 8, !tbaa !642
  %i.bft = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.104, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  br i1 %i.bft, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1708.thread6140
  %i.bfu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bfv = load ptr, ptr %i.bfu, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #11
  %i.bfw = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  store i8 1, ptr %i.bfw, align 8, !tbaa !613
  %i.bfx = getelementptr inbounds nuw i8, ptr %64, i64 17
  store i8 1, ptr %i.bfx, align 1, !tbaa !611
  store ptr @.str.121, ptr %64, align 8, !tbaa !612
  store i8 3, ptr %i.bfw, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bfv, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %64, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #11
  br label %bb.ef

bb.ec:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1708.thread6140
  %i.bfy = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.au)
  br i1 %i.bfy, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.bfz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bga = load ptr, ptr %i.bfz, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #11
  %i.bgb = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 2 uses
  store i8 1, ptr %i.bgb, align 8, !tbaa !613
  %i.bgc = getelementptr inbounds nuw i8, ptr %65, i64 17
  store i8 1, ptr %i.bgc, align 1, !tbaa !611
  store ptr @.str.122, ptr %65, align 8, !tbaa !612
  store i8 3, ptr %i.bgb, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bga, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %65, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #11
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.bgd = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.bge = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.bgd, i64 noundef 8) ; 9 uses
end_hunk_3
begin_hunk_4_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  %i.cbg = getelementptr inbounds nuw i8, ptr %91, i64 16 ; 2 uses
  store i8 1, ptr %i.cbg, align 8, !tbaa !613
  %i.cbh = getelementptr inbounds nuw i8, ptr %91, i64 17
  store i8 1, ptr %i.cbh, align 1, !tbaa !611
  store ptr @.str.191, ptr %91, align 8, !tbaa !612
  store i8 3, ptr %i.cbg, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cbf, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %91, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #11
  br label %bb.gf

bb.gd:                                            ; preds = %bb.gb
  %i.cbi = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.cbj = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 80, ptr noundef nonnull align 8 dereferenceable(656) %i.cbi, i64 noundef 8) ; 10 uses
  %i.cbk = load ptr, ptr %i.bj, align 8, !tbaa !642
  %i.cbl = load ptr, ptr %i.bk, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cbj, i8 0, i64 16, i1 false)
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cbj, i64 16
  store i32 51, ptr %i.cbm, align 8, !tbaa !627
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.cbj, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cbn, i8 0, i64 28, i1 false)
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cbj, i64 48
  store ptr %i.cbk, ptr %i.cbo, align 8, !tbaa !713
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbj, i64 56
  store ptr %i.cbl, ptr %i.cbp, align 8, !tbaa !714
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.cbj, i64 64 ; 7 uses
  store ptr %i.cbq, ptr %i.cbq, align 8, !tbaa !639
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbj, i64 72 ; 2 uses
  store ptr %i.cbq, ptr %i.cbr, align 8, !tbaa !640
  %i.cbs = load ptr, ptr %i.caw, align 8, !tbaa !640 ; 4 uses
  %i.cbt = icmp eq ptr %i.cbq, %89
  %i.cbu = icmp eq ptr %i.cbs, %89
  %or.cond.i.i.i.i.i.i2518 = or i1 %i.cbt, %i.cbu
  br i1 %or.cond.i.i.i.i.i.i2518, label %_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.cbv = load ptr, ptr %89, align 8, !tbaa !639 ; 2 uses
  %i.cbw = load ptr, ptr %i.cbs, align 8, !tbaa !639 ; 2 uses
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbw, i64 8
  store ptr %89, ptr %i.cbx, align 8, !tbaa !640
  store ptr %i.cbw, ptr %89, align 8, !tbaa !639
  %i.cby = getelementptr inbounds nuw i8, ptr %i.cbv, i64 8
  store ptr %i.cbq, ptr %i.cby, align 8, !tbaa !640
  store ptr %i.cbq, ptr %i.cbs, align 8, !tbaa !639
  store ptr %i.cbs, ptr %i.cbr, align 8, !tbaa !640
  store ptr %i.cbv, ptr %i.cbq, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit

_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit: ; preds = %bb.gd, %bb.ge
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cbj, i64 24
  store ptr %.sroa.05391.0, ptr %i.cbz, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2519 = getelementptr inbounds nuw i8, ptr %i.cbj, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2519, align 8, !tbaa !635
  %i.cca = ptrtoint ptr %i.cbj to i64
  br label %bb.gf

bb.gf:                                            ; preds = %_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit, %bb.gc, %bb.ga
  %.sroa.05404.35 = phi i64 [ %i.cca, %_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit ], [ undef, %bb.gc ], [ undef, %bb.ga ]
  %.sroa.261.35 = phi i8 [ 1, %_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit ], [ 0, %bb.gc ], [ 0, %bb.ga ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1771:          ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread
  %i.ccb = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.ccc = xor i128 %i.ccb, 152115968157087366252633571406415949903
  %i.ccd = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.cce = load i128, ptr %i.ccd, align 1
  %i.ccf = xor i128 %i.cce, 146793563287598602513695595558028405857
  %i.ccg = or i128 %i.ccc, %i.ccf
  %i.cch = icmp ne i128 %i.ccg, 0
  %i.cci = zext i1 %i.cch to i32
  %i.ccj = icmp eq i32 %i.cci, 0
  br i1 %i.ccj, label %_ZNK4llvh9StringRef6equalsES0_.exit1771.thread6196, label %_ZNK4llvh9StringRef6equalsES0_.exit1861

_ZNK4llvh9StringRef6equalsES0_.exit1771.thread6196: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl) #11
  store ptr null, ptr %i.bl, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm) #11
  store ptr null, ptr %i.bm, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %92, i8 0, i64 16, i1 false)
  store ptr %92, ptr %92, align 8, !tbaa !639
  %i.cck = getelementptr inbounds nuw i8, ptr %92, i64 8
  store ptr %92, ptr %i.cck, align 8, !tbaa !640
  %i.ccl = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.171, i64 6, ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
  br i1 %i.ccl, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1771.thread6196
  %i.ccm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ccn = load ptr, ptr %i.ccm, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #11
  %i.cco = getelementptr inbounds nuw i8, ptr %93, i64 16 ; 2 uses
  store i8 1, ptr %i.cco, align 8, !tbaa !613
  %i.ccp = getelementptr inbounds nuw i8, ptr %93, i64 17
  store i8 1, ptr %i.ccp, align 1, !tbaa !611
  store ptr @.str.193, ptr %93, align 8, !tbaa !612
  store i8 3, ptr %i.cco, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ccn, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %93, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #11
  br label %bb.gl

bb.gh:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1771.thread6196
  %i.ccq = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.173, i64 13, ptr noundef nonnull align 8 dereferenceable(8) %i.bm) ; 0 uses
  %i.ccr = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.175, i64 9, ptr noundef nonnull align 8 dereferenceable(16) %92)
  br i1 %i.ccr, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ccs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cct = load ptr, ptr %i.ccs, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #11
  %i.ccu = getelementptr inbounds nuw i8, ptr %94, i64 16 ; 2 uses
  store i8 1, ptr %i.ccu, align 8, !tbaa !613
  %i.ccv = getelementptr inbounds nuw i8, ptr %94, i64 17
  store i8 1, ptr %i.ccv, align 1, !tbaa !611
  store ptr @.str.195, ptr %94, align 8, !tbaa !612
  store i8 3, ptr %i.ccu, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cct, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %94, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #11
  br label %bb.gl

bb.gj:                                            ; preds = %bb.gh
  %i.ccw = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.ccx = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ccw, ptr nonnull @.str.196, i64 8)
  %i.ccy = extractvalue { i64, i8 } %i.ccx, 0
  %i.ccz = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.ccy
  %i.cda = load ptr, ptr %i.ccz, align 8, !tbaa !629 ; 2 uses
  %i.cdb = load i32, ptr %i.cda, align 4, !tbaa !595
  %i.cdc = icmp eq i32 %i.cdb, 4
  br i1 %i.cdc, label %bb.gk, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2521

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2521: ; preds = %bb.gj
  %i.cdd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cde = load ptr, ptr %i.cdd, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #11
  %i.cdf = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 2 uses
  store i8 1, ptr %i.cdf, align 8, !tbaa !613
  %i.cdg = getelementptr inbounds nuw i8, ptr %95, i64 17
  store i8 1, ptr %i.cdg, align 1, !tbaa !611
  store ptr @.str.197, ptr %95, align 8, !tbaa !612
  store i8 3, ptr %i.cdf, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cde, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %95, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #11
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.cda, i64 4
  %i.cdi = load i8, ptr %i.cdh, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.cdj = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.cdk = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 88, ptr noundef nonnull align 8 dereferenceable(656) %i.cdj, i64 noundef 8) ; 4 uses
  %i.cdl = load ptr, ptr %i.bl, align 8, !tbaa !642
  %i.cdm = load ptr, ptr %i.bm, align 8, !tbaa !642
  %i.cdn = trunc nuw i8 %i.cdi to i1
  call void @_ZN6hermes6ESTree26OptionalCallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEEb(ptr noundef nonnull align 8 dereferenceable(81) %i.cdk, ptr noundef %i.cdl, ptr noundef %i.cdm, ptr noundef nonnull align 8 dereferenceable(16) %92, i1 noundef zeroext %i.cdn)
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.cdk, i64 24
  store ptr %.sroa.05391.0, ptr %i.cdo, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2522 = getelementptr inbounds nuw i8, ptr %i.cdk, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2522, align 8, !tbaa !635
  %i.cdp = ptrtoint ptr %i.cdk to i64
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2521, %bb.gi, %bb.gg
  %.sroa.05404.36 = phi i64 [ %i.cdp, %bb.gk ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2521 ], [ undef, %bb.gi ], [ undef, %bb.gg ]
  %.sroa.261.36 = phi i8 [ 1, %bb.gk ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2521 ], [ 0, %bb.gi ], [ 0, %bb.gg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1774:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1654
  %i.cdq = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.cdr = xor i128 %i.cdq, 153387962603448527753530830332705862465
  %i.cds = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.cdt = load i32, ptr %i.cds, align 1
  %i.cdu = zext i32 %i.cdt to i128
  %i.cdv = xor i128 %i.cdu, 1852795251
  %i.cdw = or i128 %i.cdr, %i.cdv
  %i.cdx = icmp ne i128 %i.cdw, 0
  %i.cdy = zext i1 %i.cdx to i32
  %i.cdz = icmp eq i32 %i.cdy, 0
  br i1 %i.cdz, label %_ZNK4llvh9StringRef6equalsES0_.exit1774.thread6200, label %_ZNK4llvh9StringRef6equalsES0_.exit1849

_ZNK4llvh9StringRef6equalsES0_.exit1774.thread6200: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn) #11
  store ptr null, ptr %i.bn, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo) #11
  store ptr null, ptr %i.bo, align 8, !tbaa !642
  %i.cea = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.ceb = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.cea, ptr nonnull @.str.199, i64 8)
  %i.cec = extractvalue { i64, i8 } %i.ceb, 0
  %i.ced = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.cec
  %i.cee = load ptr, ptr %i.ced, align 8, !tbaa !629 ; 2 uses
  %i.cef = load i32, ptr %i.cee, align 4, !tbaa !595
  %i.ceg = icmp eq i32 %i.cef, 2
  br i1 %i.ceg, label %bb.gm, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2524

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2524: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1774.thread6200
  %i.ceh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cei = load ptr, ptr %i.ceh, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #11
  %i.cej = getelementptr inbounds nuw i8, ptr %96, i64 16
  %i.cek = getelementptr inbounds nuw i8, ptr %96, i64 17
  store i8 1, ptr %i.cek, align 1, !tbaa !611
  store ptr @.str.200, ptr %96, align 8, !tbaa !612
  store i8 3, ptr %i.cej, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cei, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %96, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #11
  br label %bb.gr

bb.gm:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1774.thread6200
  %i.cel = getelementptr inbounds nuw i8, ptr %i.cee, i64 16
  %i.cem = load ptr, ptr %i.cel, align 8, !tbaa !634
  %i.cen = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.79, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
  br i1 %i.cen, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ceo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cep = load ptr, ptr %i.ceo, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #11
  %i.ceq = getelementptr inbounds nuw i8, ptr %97, i64 16
  %i.cer = getelementptr inbounds nuw i8, ptr %97, i64 17
  store i8 1, ptr %i.cer, align 1, !tbaa !611
  store ptr @.str.201, ptr %97, align 8, !tbaa !612
  store i8 3, ptr %i.ceq, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cep, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %97, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #11
  br label %bb.gr

bb.go:                                            ; preds = %bb.gm
  %i.ces = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.81, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.bo)
  br i1 %i.ces, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.cet = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ceu = load ptr, ptr %i.cet, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #11
  %i.cev = getelementptr inbounds nuw i8, ptr %98, i64 16
  %i.cew = getelementptr inbounds nuw i8, ptr %98, i64 17
  store i8 1, ptr %i.cew, align 1, !tbaa !611
  store ptr @.str.202, ptr %98, align 8, !tbaa !612
  store i8 3, ptr %i.cev, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ceu, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %98, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #11
  br label %bb.gr

bb.gq:                                            ; preds = %bb.go
  %i.cex = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.cey = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.cex, i64 noundef 8) ; 9 uses
  %i.cez = load ptr, ptr %i.bn, align 8, !tbaa !642
  %i.cfa = load ptr, ptr %i.bo, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cey, i8 0, i64 16, i1 false)
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cey, i64 16
  store i32 54, ptr %i.cfb, align 8, !tbaa !627
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.cey, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cfc, i8 0, i64 28, i1 false)
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.cey, i64 48
  store ptr %i.cem, ptr %i.cfd, align 8, !tbaa !1284
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.cey, i64 56
  store ptr %i.cez, ptr %i.cfe, align 8, !tbaa !716
  %i.cff = getelementptr inbounds nuw i8, ptr %i.cey, i64 64
  store ptr %i.cfa, ptr %i.cff, align 8, !tbaa !717
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cey, i64 24
  store ptr %.sroa.05391.0, ptr %i.cfg, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2525 = getelementptr inbounds nuw i8, ptr %i.cey, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2525, align 8, !tbaa !635
  %i.cfh = ptrtoint ptr %i.cey to i64
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp, %bb.gn, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2524
  %.sroa.05404.37 = phi i64 [ %i.cfh, %bb.gq ], [ undef, %bb.gp ], [ undef, %bb.gn ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2524 ]
  %.sroa.261.37 = phi i8 [ 1, %bb.gq ], [ 0, %bb.gp ], [ 0, %bb.gn ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2524 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1777:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1762
  %i.cfi = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.cfj = xor i64 %i.cfi, 8104303917365554773
  %i.cfk = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.cfl = load i64, ptr %i.cfk, align 1
  %i.cfm = xor i64 %i.cfl, 7957695011165139568
  %i.cfn = or i64 %i.cfj, %i.cfm
  %i.cfo = icmp ne i64 %i.cfn, 0
  %i.cfp = zext i1 %i.cfo to i32
  %i.cfq = icmp eq i32 %i.cfp, 0
  br i1 %i.cfq, label %_ZNK4llvh9StringRef6equalsES0_.exit1777.thread6204, label %_ZNK4llvh9StringRef6equalsES0_.exit1825

_ZNK4llvh9StringRef6equalsES0_.exit1777.thread6204: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp) #11
  store ptr null, ptr %i.bp, align 8, !tbaa !642
  %i.cfr = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.cfs = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.cfr, ptr nonnull @.str.199, i64 8)
  %i.cft = extractvalue { i64, i8 } %i.cfs, 0
  %i.cfu = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.cft
  %i.cfv = load ptr, ptr %i.cfu, align 8, !tbaa !629 ; 2 uses
  %i.cfw = load i32, ptr %i.cfv, align 4, !tbaa !595
  %i.cfx = icmp eq i32 %i.cfw, 2
  br i1 %i.cfx, label %bb.gs, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2527

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2527: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1777.thread6204
  %i.cfy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cfz = load ptr, ptr %i.cfy, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #11
  %i.cga = getelementptr inbounds nuw i8, ptr %99, i64 16
  %i.cgb = getelementptr inbounds nuw i8, ptr %99, i64 17
  store i8 1, ptr %i.cgb, align 1, !tbaa !611
  store ptr @.str.204, ptr %99, align 8, !tbaa !612
  store i8 3, ptr %i.cga, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cfz, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %99, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #11
  br label %bb.gw

bb.gs:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1777.thread6204
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cfv, i64 16
  %i.cgd = load ptr, ptr %i.cgc, align 8, !tbaa !634
  %i.cge = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.67, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
  br i1 %i.cge, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.cgf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cgg = load ptr, ptr %i.cgf, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #11
  %i.cgh = getelementptr inbounds nuw i8, ptr %100, i64 16
  %i.cgi = getelementptr inbounds nuw i8, ptr %100, i64 17
  store i8 1, ptr %i.cgi, align 1, !tbaa !611
  store ptr @.str.205, ptr %100, align 8, !tbaa !612
  store i8 3, ptr %i.cgh, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cgg, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %100, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #11
  br label %bb.gw

bb.gu:                                            ; preds = %bb.gs
  %i.cgj = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.cgk = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.cgj, ptr nonnull @.str.206, i64 6)
  %i.cgl = extractvalue { i64, i8 } %i.cgk, 0
  %i.cgm = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.cgl
  %i.cgn = load ptr, ptr %i.cgm, align 8, !tbaa !629 ; 2 uses
  %i.cgo = load i32, ptr %i.cgn, align 4, !tbaa !595
  %i.cgp = icmp eq i32 %i.cgo, 4
  br i1 %i.cgp, label %bb.gv, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2529

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2529: ; preds = %bb.gu
  %i.cgq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cgr = load ptr, ptr %i.cgq, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #11
  %i.cgs = getelementptr inbounds nuw i8, ptr %101, i64 16
  %i.cgt = getelementptr inbounds nuw i8, ptr %101, i64 17
  store i8 1, ptr %i.cgt, align 1, !tbaa !611
  store ptr @.str.207, ptr %101, align 8, !tbaa !612
  store i8 3, ptr %i.cgs, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cgr, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %101, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #11
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.cgn, i64 4
  %i.cgv = load i8, ptr %i.cgu, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.cgw = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.cgx = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.cgw, i64 noundef 8) ; 9 uses
  %i.cgy = load ptr, ptr %i.bp, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.cgx, i8 0, i64 16, i1 false)
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cgx, i64 16
  store i32 55, ptr %i.cgz, align 8, !tbaa !627
  %i.cha = getelementptr inbounds nuw i8, ptr %i.cgx, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cha, i8 0, i64 28, i1 false)
  %i.chb = getelementptr inbounds nuw i8, ptr %i.cgx, i64 48
  store ptr %i.cgd, ptr %i.chb, align 8, !tbaa !1285
  %i.chc = getelementptr inbounds nuw i8, ptr %i.cgx, i64 56
  store ptr %i.cgy, ptr %i.chc, align 8, !tbaa !719
  %i.chd = getelementptr inbounds nuw i8, ptr %i.cgx, i64 64
  store i8 %i.cgv, ptr %i.chd, align 8, !tbaa !1286
  %i.che = getelementptr inbounds nuw i8, ptr %i.cgx, i64 24
  store ptr %.sroa.05391.0, ptr %i.che, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2530 = getelementptr inbounds nuw i8, ptr %i.cgx, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2530, align 8, !tbaa !635
  %i.chf = ptrtoint ptr %i.cgx to i64
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2529, %bb.gt, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2527
  %.sroa.05404.38 = phi i64 [ %i.chf, %bb.gv ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2529 ], [ undef, %bb.gt ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2527 ]
  %.sroa.261.38 = phi i8 [ 1, %bb.gv ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2529 ], [ 0, %bb.gt ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2527 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1780:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1765
  %i.chg = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.chh = icmp ne i128 %i.chg, 146793563287598602513695587895808913493
  %i.chi = zext i1 %i.chh to i32
  %i.chj = icmp eq i32 %i.chi, 0
  br i1 %i.chj, label %_ZNK4llvh9StringRef6equalsES0_.exit1780.thread6210, label %_ZNK4llvh9StringRef6equalsES0_.exit1783

_ZNK4llvh9StringRef6equalsES0_.exit1780.thread6210: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq) #11
  store ptr null, ptr %i.bq, align 8, !tbaa !642
  %i.chk = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.chl = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.chk, ptr nonnull @.str.199, i64 8)
  %i.chm = extractvalue { i64, i8 } %i.chl, 0
  %i.chn = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.chm
  %i.cho = load ptr, ptr %i.chn, align 8, !tbaa !629 ; 2 uses
  %i.chp = load i32, ptr %i.cho, align 4, !tbaa !595
  %i.chq = icmp eq i32 %i.chp, 2
  br i1 %i.chq, label %bb.gx, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2532

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2532: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1780.thread6210
  %i.chr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.chs = load ptr, ptr %i.chr, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #11
  %i.cht = getelementptr inbounds nuw i8, ptr %102, i64 16 ; 2 uses
  store i8 1, ptr %i.cht, align 8, !tbaa !613
  %i.chu = getelementptr inbounds nuw i8, ptr %102, i64 17
  store i8 1, ptr %i.chu, align 1, !tbaa !611
  store ptr @.str.209, ptr %102, align 8, !tbaa !612
  store i8 3, ptr %i.cht, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.chs, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %102, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #11
  br label %bb.hb

bb.gx:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1780.thread6210
  %i.chv = getelementptr inbounds nuw i8, ptr %i.cho, i64 16
  %i.chw = load ptr, ptr %i.chv, align 8, !tbaa !634
  %i.chx = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.67, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
  br i1 %i.chx, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.chy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.chz = load ptr, ptr %i.chy, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #11
  %i.cia = getelementptr inbounds nuw i8, ptr %103, i64 16 ; 2 uses
  store i8 1, ptr %i.cia, align 8, !tbaa !613
  %i.cib = getelementptr inbounds nuw i8, ptr %103, i64 17
  store i8 1, ptr %i.cib, align 1, !tbaa !611
  store ptr @.str.210, ptr %103, align 8, !tbaa !612
  store i8 3, ptr %i.cia, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.chz, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %103, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #11
  br label %bb.hb

end_hunk_4
begin_hunk_5_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  %i.dac = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.dad = xor i128 %i.dac, 154696420219699242648426960719688393046
  %i.dae = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 3
  %i.daf = load i128, ptr %i.dae, align 1
  %i.dag = xor i128 %i.daf, 146793563361271670531309280729105588585
  %i.dah = or i128 %i.dad, %i.dag
  %i.dai = icmp ne i128 %i.dah, 0
  %i.daj = zext i1 %i.dai to i32
  %i.dak = icmp eq i32 %i.daj, 0
  br i1 %i.dak, label %_ZNK4llvh9StringRef6equalsES0_.exit1822.thread6258, label %_ZNK4llvh9StringRef6equalsES0_.exit1903

_ZNK4llvh9StringRef6equalsES0_.exit1822.thread6258: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1822
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #11
  store ptr %132, ptr %132, align 8, !tbaa !639
  %i.dal = getelementptr inbounds nuw i8, ptr %132, i64 8 ; 2 uses
  store ptr %132, ptr %i.dal, align 8, !tbaa !640
  %i.dam = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.dan = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dam, ptr nonnull @.str.262, i64 4)
  %i.dao = extractvalue { i64, i8 } %i.dan, 0
  %i.dap = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dao
  %i.daq = load ptr, ptr %i.dap, align 8, !tbaa !629 ; 2 uses
  %i.dar = load i32, ptr %i.daq, align 4, !tbaa !595
  %i.das = icmp eq i32 %i.dar, 2
  br i1 %i.das, label %bb.jh, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2567

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2567: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1822.thread6258
  %i.dat = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dau = load ptr, ptr %i.dat, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #11
  %i.dav = getelementptr inbounds nuw i8, ptr %133, i64 16
  %i.daw = getelementptr inbounds nuw i8, ptr %133, i64 17
  store i8 1, ptr %i.daw, align 1, !tbaa !611
  store ptr @.str.263, ptr %133, align 8, !tbaa !612
  store i8 3, ptr %i.dav, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dau, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %133, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #11
  br label %bb.jl

bb.jh:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1822.thread6258
  %i.dax = getelementptr inbounds nuw i8, ptr %i.daq, i64 16
  %i.day = load ptr, ptr %i.dax, align 8, !tbaa !634
  %i.daz = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.264, i64 12, ptr noundef nonnull align 8 dereferenceable(16) %132)
  br i1 %i.daz, label %bb.jj, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.dba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dbb = load ptr, ptr %i.dba, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #11
  %i.dbc = getelementptr inbounds nuw i8, ptr %134, i64 16
  %i.dbd = getelementptr inbounds nuw i8, ptr %134, i64 17
  store i8 1, ptr %i.dbd, align 1, !tbaa !611
  store ptr @.str.265, ptr %134, align 8, !tbaa !612
  store i8 3, ptr %i.dbc, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dbb, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %134, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #11
  br label %bb.jl

bb.jj:                                            ; preds = %bb.jh
  %i.dbe = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.dbf = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.dbe, i64 noundef 8) ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dbf, i8 0, i64 16, i1 false)
  %i.dbg = getelementptr inbounds nuw i8, ptr %i.dbf, i64 16
  store i32 72, ptr %i.dbg, align 8, !tbaa !627
  %i.dbh = getelementptr inbounds nuw i8, ptr %i.dbf, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dbh, i8 0, i64 28, i1 false)
  %i.dbi = getelementptr inbounds nuw i8, ptr %i.dbf, i64 48
  store ptr %i.day, ptr %i.dbi, align 8, !tbaa !1298
  %i.dbj = getelementptr inbounds nuw i8, ptr %i.dbf, i64 56 ; 7 uses
  store ptr %i.dbj, ptr %i.dbj, align 8, !tbaa !639
  %i.dbk = getelementptr inbounds nuw i8, ptr %i.dbf, i64 64 ; 2 uses
  store ptr %i.dbj, ptr %i.dbk, align 8, !tbaa !640
  %i.dbl = load ptr, ptr %i.dal, align 8, !tbaa !640 ; 4 uses
  %i.dbm = icmp eq ptr %i.dbj, %132
  %i.dbn = icmp eq ptr %i.dbl, %132
  %or.cond.i.i.i.i.i.i2568 = or i1 %i.dbm, %i.dbn
  br i1 %or.cond.i.i.i.i.i.i2568, label %_ZN6hermes6ESTree23VariableDeclarationNodeC2EPNS_12UniqueStringEON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.dbo = load ptr, ptr %132, align 8, !tbaa !639 ; 2 uses
  %i.dbp = load ptr, ptr %i.dbl, align 8, !tbaa !639
  %i.dbq = getelementptr inbounds nuw i8, ptr %i.dbp, i64 8
  store ptr %132, ptr %i.dbq, align 8, !tbaa !640
  %i.dbr = getelementptr inbounds nuw i8, ptr %i.dbo, i64 8
  store ptr %i.dbj, ptr %i.dbr, align 8, !tbaa !640
  store ptr %i.dbj, ptr %i.dbl, align 8, !tbaa !639
  store ptr %i.dbl, ptr %i.dbk, align 8, !tbaa !640
  store ptr %i.dbo, ptr %i.dbj, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree23VariableDeclarationNodeC2EPNS_12UniqueStringEON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree23VariableDeclarationNodeC2EPNS_12UniqueStringEON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %bb.jj, %bb.jk
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.dbf, i64 24
  store ptr %.sroa.05391.0, ptr %i.dbs, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2569 = getelementptr inbounds nuw i8, ptr %i.dbf, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2569, align 8, !tbaa !635
  %i.dbt = ptrtoint ptr %i.dbf to i64
  br label %bb.jl

bb.jl:                                            ; preds = %_ZN6hermes6ESTree23VariableDeclarationNodeC2EPNS_12UniqueStringEON4llvh12simple_ilistINS0_4NodeEJEEE.exit, %bb.ji, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2567
  %.sroa.05404.53 = phi i64 [ %i.dbt, %_ZN6hermes6ESTree23VariableDeclarationNodeC2EPNS_12UniqueStringEON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.ji ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2567 ]
  %.sroa.261.53 = phi i8 [ 1, %_ZN6hermes6ESTree23VariableDeclarationNodeC2EPNS_12UniqueStringEON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.ji ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2567 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1825:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1777
  %i.dbu = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.dbv = xor i64 %i.dbu, 7310575213499737428
  %i.dbw = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.dbx = load i64, ptr %i.dbw, align 1
  %i.dby = xor i64 %i.dbx, 7809649008907471973
  %i.dbz = or i64 %i.dbv, %i.dby
  %i.dca = icmp ne i64 %i.dbz, 0
  %i.dcb = zext i1 %i.dca to i32
  %i.dcc = icmp eq i32 %i.dcb, 0
  br i1 %i.dcc, label %_ZNK4llvh9StringRef6equalsES0_.exit1825.thread6262, label %_ZNK4llvh9StringRef6equalsES0_.exit1831

_ZNK4llvh9StringRef6equalsES0_.exit1825.thread6262: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1825
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #11
  store ptr %135, ptr %135, align 8, !tbaa !639
  %i.dcd = getelementptr inbounds nuw i8, ptr %135, i64 8
  store ptr %135, ptr %i.dcd, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #11
  store ptr %136, ptr %136, align 8, !tbaa !639
  %i.dce = getelementptr inbounds nuw i8, ptr %136, i64 8
  store ptr %136, ptr %i.dce, align 8, !tbaa !640
  %i.dcf = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.267, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %135)
  br i1 %i.dcf, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1825.thread6262
  %i.dcg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dch = load ptr, ptr %i.dcg, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #11
  %i.dci = getelementptr inbounds nuw i8, ptr %137, i64 16
  %i.dcj = getelementptr inbounds nuw i8, ptr %137, i64 17
  store i8 1, ptr %i.dcj, align 1, !tbaa !611
  store ptr @.str.268, ptr %137, align 8, !tbaa !612
  store i8 3, ptr %i.dci, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dch, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %137, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #11
  br label %bb.jq

bb.jn:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1825.thread6262
  %i.dck = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.159, i64 11, ptr noundef nonnull align 8 dereferenceable(16) %136)
  br i1 %i.dck, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.dcl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dcm = load ptr, ptr %i.dcl, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #11
  %i.dcn = getelementptr inbounds nuw i8, ptr %138, i64 16
  %i.dco = getelementptr inbounds nuw i8, ptr %138, i64 17
  store i8 1, ptr %i.dco, align 1, !tbaa !611
  store ptr @.str.269, ptr %138, align 8, !tbaa !612
  store i8 3, ptr %i.dcn, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dcm, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %138, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #11
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jn
  %i.dcp = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.dcq = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 80, ptr noundef nonnull align 8 dereferenceable(656) %i.dcp, i64 noundef 8) ; 4 uses
  call void @_ZN6hermes6ESTree19TemplateLiteralNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEES6_(ptr noundef nonnull align 8 dereferenceable(80) %i.dcq, ptr noundef nonnull align 8 dereferenceable(16) %135, ptr noundef nonnull align 8 dereferenceable(16) %136)
  %i.dcr = getelementptr inbounds nuw i8, ptr %i.dcq, i64 24
  store ptr %.sroa.05391.0, ptr %i.dcr, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2570 = getelementptr inbounds nuw i8, ptr %i.dcq, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2570, align 8, !tbaa !635
  %i.dcs = ptrtoint ptr %i.dcq to i64
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo, %bb.jm
  %.sroa.05404.54 = phi i64 [ %i.dcs, %bb.jp ], [ undef, %bb.jo ], [ undef, %bb.jm ]
  %.sroa.261.54 = phi i8 [ 1, %bb.jp ], [ 0, %bb.jo ], [ 0, %bb.jm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1828:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1786
  %i.dct = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.dcu = xor i128 %i.dct, 159867685721416769192433039338176471380
  %i.dcv = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.dcw = load i64, ptr %i.dcv, align 1
  %i.dcx = zext i64 %i.dcw to i128
  %i.dcy = xor i128 %i.dcx, 7957695011165139568
  %i.dcz = or i128 %i.dcu, %i.dcy
  %i.dda = icmp ne i128 %i.dcz, 0
  %i.ddb = zext i1 %i.dda to i32
  %i.ddc = icmp eq i32 %i.ddb, 0
  br i1 %i.ddc, label %_ZNK4llvh9StringRef6equalsES0_.exit1828.thread6264, label %_ZNK4llvh9StringRef6equalsES0_.exit1864

_ZNK4llvh9StringRef6equalsES0_.exit1828.thread6264: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm) #11
  store ptr null, ptr %i.cm, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn) #11
  store ptr null, ptr %i.cn, align 8, !tbaa !642
  %i.ddd = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.271, i64 3, ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
  br i1 %i.ddd, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1828.thread6264
  %i.dde = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ddf = load ptr, ptr %i.dde, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #11
  %i.ddg = getelementptr inbounds nuw i8, ptr %139, i64 16 ; 2 uses
  store i8 1, ptr %i.ddg, align 8, !tbaa !613
  %i.ddh = getelementptr inbounds nuw i8, ptr %139, i64 17
  store i8 1, ptr %i.ddh, align 1, !tbaa !611
  store ptr @.str.272, ptr %139, align 8, !tbaa !612
  store i8 3, ptr %i.ddg, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ddf, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %139, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #11
  br label %bb.jv

bb.js:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1828.thread6264
  %i.ddi = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.273, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
  br i1 %i.ddi, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.ddj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ddk = load ptr, ptr %i.ddj, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #11
  %i.ddl = getelementptr inbounds nuw i8, ptr %140, i64 16 ; 2 uses
  store i8 1, ptr %i.ddl, align 8, !tbaa !613
  %i.ddm = getelementptr inbounds nuw i8, ptr %140, i64 17
  store i8 1, ptr %i.ddm, align 1, !tbaa !611
  store ptr @.str.274, ptr %140, align 8, !tbaa !612
  store i8 3, ptr %i.ddl, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ddk, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %140, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #11
  br label %bb.jv

bb.ju:                                            ; preds = %bb.js
  %i.ddn = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ddo = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.ddn, i64 noundef 8) ; 8 uses
  %i.ddp = load ptr, ptr %i.cm, align 8, !tbaa !642
  %i.ddq = load ptr, ptr %i.cn, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ddo, i8 0, i64 16, i1 false)
  %i.ddr = getelementptr inbounds nuw i8, ptr %i.ddo, i64 16
  store i32 74, ptr %i.ddr, align 8, !tbaa !627
  %i.dds = getelementptr inbounds nuw i8, ptr %i.ddo, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dds, i8 0, i64 28, i1 false)
  %i.ddt = getelementptr inbounds nuw i8, ptr %i.ddo, i64 48
  store ptr %i.ddp, ptr %i.ddt, align 8, !tbaa !758
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.ddo, i64 56
  store ptr %i.ddq, ptr %i.ddu, align 8, !tbaa !759
  %i.ddv = getelementptr inbounds nuw i8, ptr %i.ddo, i64 24
  store ptr %.sroa.05391.0, ptr %i.ddv, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2571 = getelementptr inbounds nuw i8, ptr %i.ddo, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2571, align 8, !tbaa !635
  %i.ddw = ptrtoint ptr %i.ddo to i64
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt, %bb.jr
  %.sroa.05404.55 = phi i64 [ %i.ddw, %bb.ju ], [ undef, %bb.jt ], [ undef, %bb.jr ]
  %.sroa.261.55 = phi i8 [ 1, %bb.ju ], [ 0, %bb.jt ], [ 0, %bb.jr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1831:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1825
  %i.ddx = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.ddy = xor i64 %i.ddx, 7310575213499737428
  %i.ddz = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.dea = load i64, ptr %i.ddz, align 1
  %i.deb = xor i64 %i.dea, 8389754676365247845
  %i.dec = or i64 %i.ddy, %i.deb
  %i.ded = icmp ne i64 %i.dec, 0
  %i.dee = zext i1 %i.ded to i32
  %i.def = icmp eq i32 %i.dee, 0
  br i1 %i.def, label %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread6266, label %_ZNK4llvh9StringRef6equalsES0_.exit1840

_ZNK4llvh9StringRef6equalsES0_.exit1831.thread6266: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1831
  %i.deg = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.deh = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.deg, ptr nonnull @.str.275, i64 4)
  %i.dei = extractvalue { i64, i8 } %i.deh, 0
  %i.dej = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dei
  %i.dek = load ptr, ptr %i.dej, align 8, !tbaa !629 ; 2 uses
  %i.del = load i32, ptr %i.dek, align 4, !tbaa !595
  %i.dem = icmp eq i32 %i.del, 4
  br i1 %i.dem, label %bb.jw, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2573

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2573: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread6266
  %i.den = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.deo = load ptr, ptr %i.den, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #11
  %i.dep = getelementptr inbounds nuw i8, ptr %141, i64 16
  %i.deq = getelementptr inbounds nuw i8, ptr %141, i64 17
  store i8 1, ptr %i.deq, align 1, !tbaa !611
  store ptr @.str.276, ptr %141, align 8, !tbaa !612
  store i8 3, ptr %i.dep, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.deo, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %141, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #11
  br label %bb.aly

bb.jw:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread6266
  %i.der = getelementptr inbounds nuw i8, ptr %i.dek, i64 4
  %i.des = load i8, ptr %i.der, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.det = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.deu = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.det, ptr nonnull @.str.277, i64 6)
  %i.dev = extractvalue { i64, i8 } %i.deu, 0
  %i.dew = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dev
  %i.dex = load ptr, ptr %i.dew, align 8, !tbaa !629 ; 2 uses
  %i.dey = load i32, ptr %i.dex, align 4, !tbaa !595
  %i.dez = icmp eq i32 %i.dey, 2
  br i1 %i.dez, label %bb.jx, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2575

bb.jx:                                            ; preds = %bb.jw
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.dex, i64 16
  %i.dfb = load ptr, ptr %i.dfa, align 8, !tbaa !634
  br label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2575

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2575: ; preds = %bb.jw, %bb.jx
  %.05991 = phi ptr [ %i.dfb, %bb.jx ], [ null, %bb.jw ]
  %i.dfc = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.dfd = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dfc, ptr nonnull @.str.279, i64 3)
  %i.dfe = extractvalue { i64, i8 } %i.dfd, 0
  %i.dff = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dfe
  %i.dfg = load ptr, ptr %i.dff, align 8, !tbaa !629 ; 2 uses
  %i.dfh = load i32, ptr %i.dfg, align 4, !tbaa !595
  %i.dfi = icmp eq i32 %i.dfh, 2
  br i1 %i.dfi, label %bb.jy, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2577

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2577: ; preds = %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2575
  %i.dfj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dfk = load ptr, ptr %i.dfj, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #11
  %i.dfl = getelementptr inbounds nuw i8, ptr %142, i64 16
  %i.dfm = getelementptr inbounds nuw i8, ptr %142, i64 17
  store i8 1, ptr %i.dfm, align 1, !tbaa !611
  store ptr @.str.280, ptr %142, align 8, !tbaa !612
  store i8 3, ptr %i.dfl, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dfk, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %142, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #11
  br label %bb.aly

bb.jy:                                            ; preds = %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2575
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.dfg, i64 16
  %i.dfo = load ptr, ptr %i.dfn, align 8, !tbaa !634
  %i.dfp = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.dfq = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.dfp, i64 noundef 8) ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dfq, i8 0, i64 16, i1 false)
  %i.dfr = getelementptr inbounds nuw i8, ptr %i.dfq, i64 16
  store i32 75, ptr %i.dfr, align 8, !tbaa !627
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.dfq, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dfs, i8 0, i64 28, i1 false)
  %i.dft = getelementptr inbounds nuw i8, ptr %i.dfq, i64 48
  store i8 %i.des, ptr %i.dft, align 8, !tbaa !1276
  %i.dfu = getelementptr inbounds nuw i8, ptr %i.dfq, i64 56
  store ptr %.05991, ptr %i.dfu, align 8, !tbaa !1277
  %i.dfv = getelementptr inbounds nuw i8, ptr %i.dfq, i64 64
  store ptr %i.dfo, ptr %i.dfv, align 8, !tbaa !1278
  %i.dfw = getelementptr inbounds nuw i8, ptr %i.dfq, i64 24
  store ptr %.sroa.05391.0, ptr %i.dfw, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2578 = getelementptr inbounds nuw i8, ptr %i.dfq, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2578, align 8, !tbaa !635
  %i.dfx = ptrtoint ptr %i.dfq to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1831.thread:   ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit2424.thread
  switch i64 %.sroa.21037.0.copyload, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread [
    i64 23, label %_ZNK4llvh9StringRef6equalsES0_.exit2044
    i64 16, label %_ZNK4llvh9StringRef6equalsES0_.exit1837
    i64 15, label %_ZNK4llvh9StringRef6equalsES0_.exit1840
    i64 25, label %_ZNK4llvh9StringRef6equalsES0_.exit2017
    i64 13, label %_ZNK4llvh9StringRef6equalsES0_.exit1846
    i64 20, label %_ZNK4llvh9StringRef6equalsES0_.exit1849
    i64 17, label %_ZNK4llvh9StringRef6equalsES0_.exit1855
    i64 22, label %_ZNK4llvh9StringRef6equalsES0_.exit1861
    i64 24, label %_ZNK4llvh9StringRef6equalsES0_.exit1864
    i64 12, label %_ZNK4llvh9StringRef6equalsES0_.exit1888
    i64 11, label %_ZNK4llvh9StringRef6equalsES0_.exit1891
    i64 18, label %_ZNK4llvh9StringRef6equalsES0_.exit1897
    i64 19, label %_ZNK4llvh9StringRef6equalsES0_.exit1903
    i64 14, label %_ZNK4llvh9StringRef6equalsES0_.exit1927
    i64 26, label %_ZNK4llvh9StringRef6equalsES0_.exit1936
    i64 28, label %_ZNK4llvh9StringRef6equalsES0_.exit2014
    i64 10, label %_ZNK4llvh9StringRef6equalsES0_.exit1978
    i64 27, label %_ZNK4llvh9StringRef6equalsES0_.exit2002
    i64 21, label %_ZNK4llvh9StringRef6equalsES0_.exit2011
  ]

_ZNK4llvh9StringRef6equalsES0_.exit1834:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1639
  %i.dfy = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.dfz = icmp ne i64 %i.dfy, 8751745755891331664
  %i.dga = zext i1 %i.dfz to i32
  %i.dgb = icmp eq i32 %i.dga, 0
  br i1 %i.dgb, label %_ZNK4llvh9StringRef6equalsES0_.exit1834.thread6272, label %_ZNK4llvh9StringRef6equalsES0_.exit2188

_ZNK4llvh9StringRef6equalsES0_.exit1834.thread6272: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co) #11
  store ptr null, ptr %i.co, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp) #11
  store ptr null, ptr %i.cp, align 8, !tbaa !642
  %i.dgc = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.282, i64 3, ptr noundef nonnull align 8 dereferenceable(8) %i.co)
  br i1 %i.dgc, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1834.thread6272
  %i.dgd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dge = load ptr, ptr %i.dgd, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #11
  %i.dgf = getelementptr inbounds nuw i8, ptr %143, i64 16
  %i.dgg = getelementptr inbounds nuw i8, ptr %143, i64 17
  store i8 1, ptr %i.dgg, align 1, !tbaa !611
  store ptr @.str.283, ptr %143, align 8, !tbaa !612
  store i8 3, ptr %i.dgf, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dge, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %143, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #11
  br label %bb.kh

bb.ka:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1834.thread6272
  %i.dgh = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.142, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
  br i1 %i.dgh, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.dgi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dgj = load ptr, ptr %i.dgi, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #11
  %i.dgk = getelementptr inbounds nuw i8, ptr %144, i64 16
  %i.dgl = getelementptr inbounds nuw i8, ptr %144, i64 17
  store i8 1, ptr %i.dgl, align 1, !tbaa !611
  store ptr @.str.284, ptr %144, align 8, !tbaa !612
  store i8 3, ptr %i.dgk, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dgj, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %144, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #11
  br label %bb.kh

bb.kc:                                            ; preds = %bb.ka
  %i.dgm = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.dgn = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dgm, ptr nonnull @.str.262, i64 4)
  %i.dgo = extractvalue { i64, i8 } %i.dgn, 0
  %i.dgp = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dgo
  %i.dgq = load ptr, ptr %i.dgp, align 8, !tbaa !629 ; 2 uses
  %i.dgr = load i32, ptr %i.dgq, align 4, !tbaa !595
  %i.dgs = icmp eq i32 %i.dgr, 2
  br i1 %i.dgs, label %bb.kd, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2580

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2580: ; preds = %bb.kc
  %i.dgt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dgu = load ptr, ptr %i.dgt, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #11
  %i.dgv = getelementptr inbounds nuw i8, ptr %145, i64 16
  %i.dgw = getelementptr inbounds nuw i8, ptr %145, i64 17
  store i8 1, ptr %i.dgw, align 1, !tbaa !611
  store ptr @.str.285, ptr %145, align 8, !tbaa !612
  store i8 3, ptr %i.dgv, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dgu, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %145, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #11
  br label %bb.kh

bb.kd:                                            ; preds = %bb.kc
  %i.dgx = getelementptr inbounds nuw i8, ptr %i.dgq, i64 16
  %i.dgy = load ptr, ptr %i.dgx, align 8, !tbaa !634
  %i.dgz = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.dha = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dgz, ptr nonnull @.str.216, i64 8)
  %i.dhb = extractvalue { i64, i8 } %i.dha, 0
  %i.dhc = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dhb
  %i.dhd = load ptr, ptr %i.dhc, align 8, !tbaa !629 ; 2 uses
  %i.dhe = load i32, ptr %i.dhd, align 4, !tbaa !595
  %i.dhf = icmp eq i32 %i.dhe, 4
  br i1 %i.dhf, label %bb.ke, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2582

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2582: ; preds = %bb.kd
  %i.dhg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dhh = load ptr, ptr %i.dhg, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #11
  %i.dhi = getelementptr inbounds nuw i8, ptr %146, i64 16
  %i.dhj = getelementptr inbounds nuw i8, ptr %146, i64 17
  store i8 1, ptr %i.dhj, align 1, !tbaa !611
  store ptr @.str.286, ptr %146, align 8, !tbaa !612
  store i8 3, ptr %i.dhi, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dhh, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %146, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #11
  br label %bb.kh

bb.ke:                                            ; preds = %bb.kd
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.dhd, i64 4
  %i.dhl = load i8, ptr %i.dhk, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.dhm = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.dhn = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dhm, ptr nonnull @.str.287, i64 6)
  %i.dho = extractvalue { i64, i8 } %i.dhn, 0
  %i.dhp = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dho
  %i.dhq = load ptr, ptr %i.dhp, align 8, !tbaa !629 ; 2 uses
  %i.dhr = load i32, ptr %i.dhq, align 4, !tbaa !595
  %i.dhs = icmp eq i32 %i.dhr, 4
  br i1 %i.dhs, label %bb.kf, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2584

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2584: ; preds = %bb.ke
  %i.dht = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dhu = load ptr, ptr %i.dht, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #11
  %i.dhv = getelementptr inbounds nuw i8, ptr %147, i64 16
  %i.dhw = getelementptr inbounds nuw i8, ptr %147, i64 17
  store i8 1, ptr %i.dhw, align 1, !tbaa !611
  store ptr @.str.288, ptr %147, align 8, !tbaa !612
  store i8 3, ptr %i.dhv, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dhu, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %147, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #11
  br label %bb.kh

bb.kf:                                            ; preds = %bb.ke
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.dhq, i64 4
  %i.dhy = load i8, ptr %i.dhx, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.dhz = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.dia = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dhz, ptr nonnull @.str.289, i64 9)
  %i.dib = extractvalue { i64, i8 } %i.dia, 0
  %i.dic = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dib
  %i.did = load ptr, ptr %i.dic, align 8, !tbaa !629 ; 2 uses
  %i.die = load i32, ptr %i.did, align 4, !tbaa !595
  %i.dif = icmp eq i32 %i.die, 4
  br i1 %i.dif, label %bb.kg, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2586

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2586: ; preds = %bb.kf
  %i.dig = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dih = load ptr, ptr %i.dig, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #11
  %i.dii = getelementptr inbounds nuw i8, ptr %148, i64 16
  %i.dij = getelementptr inbounds nuw i8, ptr %148, i64 17
  store i8 1, ptr %i.dij, align 1, !tbaa !611
  store ptr @.str.290, ptr %148, align 8, !tbaa !612
  store i8 3, ptr %i.dii, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dih, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %148, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #11
  br label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  %i.dik = getelementptr inbounds nuw i8, ptr %i.did, i64 4
  %i.dil = load i8, ptr %i.dik, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.dim = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.din = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 80, ptr noundef nonnull align 8 dereferenceable(656) %i.dim, i64 noundef 8) ; 12 uses
  %i.dio = load ptr, ptr %i.co, align 8, !tbaa !642
  %i.dip = load ptr, ptr %i.cp, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(75) %i.din, i8 0, i64 16, i1 false)
  %i.diq = getelementptr inbounds nuw i8, ptr %i.din, i64 16
  store i32 76, ptr %i.diq, align 8, !tbaa !627
  %i.dir = getelementptr inbounds nuw i8, ptr %i.din, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dir, i8 0, i64 28, i1 false)
  %i.dis = getelementptr inbounds nuw i8, ptr %i.din, i64 48
  store ptr %i.dio, ptr %i.dis, align 8, !tbaa !761
  %i.dit = getelementptr inbounds nuw i8, ptr %i.din, i64 56
  store ptr %i.dip, ptr %i.dit, align 8, !tbaa !762
  %i.diu = getelementptr inbounds nuw i8, ptr %i.din, i64 64
  store ptr %i.dgy, ptr %i.diu, align 8, !tbaa !1299
  %i.div = getelementptr inbounds nuw i8, ptr %i.din, i64 72
  store i8 %i.dhl, ptr %i.div, align 8, !tbaa !1300
  %i.diw = getelementptr inbounds nuw i8, ptr %i.din, i64 73
  store i8 %i.dhy, ptr %i.diw, align 1, !tbaa !1301
  %i.dix = getelementptr inbounds nuw i8, ptr %i.din, i64 74
  store i8 %i.dil, ptr %i.dix, align 2, !tbaa !1302
  %i.diy = getelementptr inbounds nuw i8, ptr %i.din, i64 24
  store ptr %.sroa.05391.0, ptr %i.diy, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2587 = getelementptr inbounds nuw i8, ptr %i.din, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2587, align 8, !tbaa !635
  %i.diz = ptrtoint ptr %i.din to i64
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2586, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2584, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2582, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2580, %bb.kb, %bb.jz
  %.sroa.05404.57 = phi i64 [ %i.diz, %bb.kg ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2586 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2584 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2582 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2580 ], [ undef, %bb.kb ], [ undef, %bb.jz ]
  %.sroa.261.57 = phi i8 [ 1, %bb.kg ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2586 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2584 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2582 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2580 ], [ 0, %bb.kb ], [ 0, %bb.jz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1837:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1801, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.dja = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.djb = icmp ne i128 %i.dja, 146793563361271670531309280789352508483
  %i.djc = zext i1 %i.djb to i32
  %i.djd = icmp eq i32 %i.djc, 0
  br i1 %i.djd, label %_ZNK4llvh9StringRef6equalsES0_.exit1837.thread6282, label %_ZNK4llvh9StringRef6equalsES0_.exit1852

_ZNK4llvh9StringRef6equalsES0_.exit1837.thread6282: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq) #11
  store ptr null, ptr %i.cq, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr) #11
  store ptr null, ptr %i.cr, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs) #11
  store ptr null, ptr %i.cs, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct) #11
  store ptr null, ptr %i.ct, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #11
  store ptr %149, ptr %149, align 8, !tbaa !639
  %i.dje = getelementptr inbounds nuw i8, ptr %149, i64 8
  store ptr %149, ptr %i.dje, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #11
  store ptr %150, ptr %150, align 8, !tbaa !639
  %i.djf = getelementptr inbounds nuw i8, ptr %150, i64 8
  store ptr %150, ptr %i.djf, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu) #11
  store ptr null, ptr %i.cu, align 8, !tbaa !642
  %i.djg = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.cq) ; 0 uses
  %i.djh = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.22, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.cr) ; 0 uses
  %i.dji = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.294, i64 10, ptr noundef nonnull align 8 dereferenceable(8) %i.cs) ; 0 uses
  %i.djj = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.296, i64 19, ptr noundef nonnull align 8 dereferenceable(8) %i.ct) ; 0 uses
  %i.djk = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.298, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %149)
  br i1 %i.djk, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1837.thread6282
  %i.djl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.djm = load ptr, ptr %i.djl, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #11
  %i.djn = getelementptr inbounds nuw i8, ptr %151, i64 16
  %i.djo = getelementptr inbounds nuw i8, ptr %151, i64 17
  store i8 1, ptr %i.djo, align 1, !tbaa !611
  store ptr @.str.299, ptr %151, align 8, !tbaa !612
  store i8 3, ptr %i.djn, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.djm, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %151, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #11
  br label %bb.ko

bb.kj:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1837.thread6282
  %i.djp = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.300, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %150)
  br i1 %i.djp, label %bb.kl, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.djq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.djr = load ptr, ptr %i.djq, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #11
  %i.djs = getelementptr inbounds nuw i8, ptr %152, i64 16
  %i.djt = getelementptr inbounds nuw i8, ptr %152, i64 17
  store i8 1, ptr %i.djt, align 1, !tbaa !611
  store ptr @.str.301, ptr %152, align 8, !tbaa !612
  store i8 3, ptr %i.djs, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.djr, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %152, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #11
  br label %bb.ko

bb.kl:                                            ; preds = %bb.kj
  %i.dju = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.cu)
  br i1 %i.dju, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.djv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.djw = load ptr, ptr %i.djv, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #11
  %i.djx = getelementptr inbounds nuw i8, ptr %153, i64 16
  %i.djy = getelementptr inbounds nuw i8, ptr %153, i64 17
  store i8 1, ptr %i.djy, align 1, !tbaa !611
  store ptr @.str.302, ptr %153, align 8, !tbaa !612
  store i8 3, ptr %i.djx, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.djw, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %153, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #11
  br label %bb.ko

bb.kn:                                            ; preds = %bb.kl
  %i.djz = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.dka = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 120, ptr noundef nonnull align 8 dereferenceable(656) %i.djz, i64 noundef 8) ; 4 uses
  %i.dkb = load ptr, ptr %i.cq, align 8, !tbaa !642
  %i.dkc = load ptr, ptr %i.cr, align 8, !tbaa !642
  %i.dkd = load ptr, ptr %i.cs, align 8, !tbaa !642
  %i.dke = load ptr, ptr %i.ct, align 8, !tbaa !642
  %i.dkf = load ptr, ptr %i.cu, align 8, !tbaa !642
  call void @_ZN6hermes6ESTree20ClassDeclarationNodeC2EPNS0_4NodeES3_S3_S3_ON4llvh12simple_ilistIS2_JEEES7_S3_(ptr noundef nonnull align 8 dereferenceable(120) %i.dka, ptr noundef %i.dkb, ptr noundef %i.dkc, ptr noundef %i.dkd, ptr noundef %i.dke, ptr noundef nonnull align 8 dereferenceable(16) %149, ptr noundef nonnull align 8 dereferenceable(16) %150, ptr noundef %i.dkf)
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.dka, i64 24
  store ptr %.sroa.05391.0, ptr %i.dkg, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2588 = getelementptr inbounds nuw i8, ptr %i.dka, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2588, align 8, !tbaa !635
  %i.dkh = ptrtoint ptr %i.dka to i64
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.km, %bb.kk, %bb.ki
  %.sroa.05404.58 = phi i64 [ %i.dkh, %bb.kn ], [ undef, %bb.km ], [ undef, %bb.kk ], [ undef, %bb.ki ]
  %.sroa.261.58 = phi i8 [ 1, %bb.kn ], [ 0, %bb.km ], [ 0, %bb.kk ], [ 0, %bb.ki ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1840:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1831, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.dki = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.dkj = xor i64 %i.dki, 8104303891612527683
  %i.dkk = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.dkl = load i64, ptr %i.dkk, align 1
  %i.dkm = xor i64 %i.dkl, 7957695011165139568
  %i.dkn = or i64 %i.dkj, %i.dkm
  %i.dko = icmp ne i64 %i.dkn, 0
  %i.dkp = zext i1 %i.dko to i32
  %i.dkq = icmp eq i32 %i.dkp, 0
  br i1 %i.dkq, label %_ZNK4llvh9StringRef6equalsES0_.exit1840.thread6284, label %_ZNK4llvh9StringRef6equalsES0_.exit1858

_ZNK4llvh9StringRef6equalsES0_.exit1840.thread6284: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv) #11
  store ptr null, ptr %i.cv, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw) #11
  store ptr null, ptr %i.cw, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx) #11
  store ptr null, ptr %i.cx, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy) #11
  store ptr null, ptr %i.cy, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #11
  store ptr %154, ptr %154, align 8, !tbaa !639
  %i.dkr = getelementptr inbounds nuw i8, ptr %154, i64 8
  store ptr %154, ptr %i.dkr, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #11
  store ptr %155, ptr %155, align 8, !tbaa !639
  %i.dks = getelementptr inbounds nuw i8, ptr %155, i64 8
  store ptr %155, ptr %i.dks, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz) #11
  store ptr null, ptr %i.cz, align 8, !tbaa !642
  %i.dkt = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.cv) ; 0 uses
  %i.dku = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.22, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.cw) ; 0 uses
  %i.dkv = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.294, i64 10, ptr noundef nonnull align 8 dereferenceable(8) %i.cx) ; 0 uses
  %i.dkw = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.296, i64 19, ptr noundef nonnull align 8 dereferenceable(8) %i.cy) ; 0 uses
  %i.dkx = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.298, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %154)
  br i1 %i.dkx, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1840.thread6284
  %i.dky = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dkz = load ptr, ptr %i.dky, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #11
  %i.dla = getelementptr inbounds nuw i8, ptr %156, i64 16
  %i.dlb = getelementptr inbounds nuw i8, ptr %156, i64 17
  store i8 1, ptr %i.dlb, align 1, !tbaa !611
  store ptr @.str.308, ptr %156, align 8, !tbaa !612
  store i8 3, ptr %i.dla, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dkz, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %156, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #11
  br label %bb.kv

bb.kq:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1840.thread6284
  %i.dlc = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.300, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %155)
  br i1 %i.dlc, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.dld = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dle = load ptr, ptr %i.dld, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #11
  %i.dlf = getelementptr inbounds nuw i8, ptr %157, i64 16
  %i.dlg = getelementptr inbounds nuw i8, ptr %157, i64 17
  store i8 1, ptr %i.dlg, align 1, !tbaa !611
  store ptr @.str.309, ptr %157, align 8, !tbaa !612
  store i8 3, ptr %i.dlf, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dle, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %157, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #11
  br label %bb.kv

bb.ks:                                            ; preds = %bb.kq
  %i.dlh = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
  br i1 %i.dlh, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.dli = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dlj = load ptr, ptr %i.dli, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #11
  %i.dlk = getelementptr inbounds nuw i8, ptr %158, i64 16
  %i.dll = getelementptr inbounds nuw i8, ptr %158, i64 17
  store i8 1, ptr %i.dll, align 1, !tbaa !611
  store ptr @.str.310, ptr %158, align 8, !tbaa !612
  store i8 3, ptr %i.dlk, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dlj, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %158, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #11
  br label %bb.kv

bb.ku:                                            ; preds = %bb.ks
  %i.dlm = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.dln = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 120, ptr noundef nonnull align 8 dereferenceable(656) %i.dlm, i64 noundef 8) ; 4 uses
  %i.dlo = load ptr, ptr %i.cv, align 8, !tbaa !642
  %i.dlp = load ptr, ptr %i.cw, align 8, !tbaa !642
  %i.dlq = load ptr, ptr %i.cx, align 8, !tbaa !642
  %i.dlr = load ptr, ptr %i.cy, align 8, !tbaa !642
  %i.dls = load ptr, ptr %i.cz, align 8, !tbaa !642
  call void @_ZN6hermes6ESTree19ClassExpressionNodeC2EPNS0_4NodeES3_S3_S3_ON4llvh12simple_ilistIS2_JEEES7_S3_(ptr noundef nonnull align 8 dereferenceable(120) %i.dln, ptr noundef %i.dlo, ptr noundef %i.dlp, ptr noundef %i.dlq, ptr noundef %i.dlr, ptr noundef nonnull align 8 dereferenceable(16) %154, ptr noundef nonnull align 8 dereferenceable(16) %155, ptr noundef %i.dls)
  %i.dlt = getelementptr inbounds nuw i8, ptr %i.dln, i64 24
  store ptr %.sroa.05391.0, ptr %i.dlt, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2589 = getelementptr inbounds nuw i8, ptr %i.dln, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2589, align 8, !tbaa !635
  %i.dlu = ptrtoint ptr %i.dln to i64
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kt, %bb.kr, %bb.kp
  %.sroa.05404.59 = phi i64 [ %i.dlu, %bb.ku ], [ undef, %bb.kt ], [ undef, %bb.kr ], [ undef, %bb.kp ]
  %.sroa.261.59 = phi i8 [ 1, %bb.ku ], [ 0, %bb.kt ], [ 0, %bb.kr ], [ 0, %bb.kp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1843:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1798
  %i.dlv = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.dlw = xor i64 %i.dlv, 7237076189832113219
  %i.dlx = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 8
  %i.dly = load i8, ptr %i.dlx, align 1
  %i.dlz = zext i8 %i.dly to i64
  %i.dma = xor i64 %i.dlz, 121
  %i.dmb = or i64 %i.dlw, %i.dma
  %i.dmc = icmp ne i64 %i.dmb, 0
  %i.dmd = zext i1 %i.dmc to i32
  %i.dme = icmp eq i32 %i.dmd, 0
  br i1 %i.dme, label %_ZNK4llvh9StringRef6equalsES0_.exit1843.thread6286, label %_ZNK4llvh9StringRef6equalsES0_.exit2107

_ZNK4llvh9StringRef6equalsES0_.exit1843.thread6286: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1843
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %159, i8 0, i64 16, i1 false)
  store ptr %159, ptr %159, align 8, !tbaa !639
  %i.dmf = getelementptr inbounds nuw i8, ptr %159, i64 8 ; 2 uses
  store ptr %159, ptr %i.dmf, align 8, !tbaa !640
  %i.dmg = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(16) %159)
  br i1 %i.dmg, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1843.thread6286
  %i.dmh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dmi = load ptr, ptr %i.dmh, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #11
  %i.dmj = getelementptr inbounds nuw i8, ptr %160, i64 16 ; 2 uses
  store i8 1, ptr %i.dmj, align 8, !tbaa !613
  %i.dmk = getelementptr inbounds nuw i8, ptr %160, i64 17
  store i8 1, ptr %i.dmk, align 1, !tbaa !611
  store ptr @.str.312, ptr %160, align 8, !tbaa !612
  store i8 3, ptr %i.dmj, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dmi, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %160, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #11
  br label %bb.kz

bb.kx:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1843.thread6286
  %i.dml = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.dmm = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.dml, i64 noundef 8) ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dmm, i8 0, i64 16, i1 false)
  %i.dmn = getelementptr inbounds nuw i8, ptr %i.dmm, i64 16
  store i32 79, ptr %i.dmn, align 8, !tbaa !627
  %i.dmo = getelementptr inbounds nuw i8, ptr %i.dmm, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dmo, i8 0, i64 28, i1 false)
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dmm, i64 48 ; 7 uses
  store ptr %i.dmp, ptr %i.dmp, align 8, !tbaa !639
  %i.dmq = getelementptr inbounds nuw i8, ptr %i.dmm, i64 56 ; 2 uses
  store ptr %i.dmp, ptr %i.dmq, align 8, !tbaa !640
  %i.dmr = load ptr, ptr %i.dmf, align 8, !tbaa !640 ; 4 uses
  %i.dms = icmp eq ptr %i.dmp, %159
  %i.dmt = icmp eq ptr %i.dmr, %159
  %or.cond.i.i.i.i.i.i2590 = or i1 %i.dms, %i.dmt
  br i1 %or.cond.i.i.i.i.i.i2590, label %_ZN6hermes6ESTree13ClassBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.dmu = load ptr, ptr %159, align 8, !tbaa !639 ; 2 uses
  %i.dmv = load ptr, ptr %i.dmr, align 8, !tbaa !639 ; 2 uses
  %i.dmw = getelementptr inbounds nuw i8, ptr %i.dmv, i64 8
  store ptr %159, ptr %i.dmw, align 8, !tbaa !640
  store ptr %i.dmv, ptr %159, align 8, !tbaa !639
  %i.dmx = getelementptr inbounds nuw i8, ptr %i.dmu, i64 8
  store ptr %i.dmp, ptr %i.dmx, align 8, !tbaa !640
  store ptr %i.dmp, ptr %i.dmr, align 8, !tbaa !639
  store ptr %i.dmr, ptr %i.dmq, align 8, !tbaa !640
  store ptr %i.dmu, ptr %i.dmp, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree13ClassBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree13ClassBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %bb.kx, %bb.ky
  %i.dmy = getelementptr inbounds nuw i8, ptr %i.dmm, i64 24
  store ptr %.sroa.05391.0, ptr %i.dmy, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2591 = getelementptr inbounds nuw i8, ptr %i.dmm, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2591, align 8, !tbaa !635
  %i.dmz = ptrtoint ptr %i.dmm to i64
  br label %bb.kz

bb.kz:                                            ; preds = %_ZN6hermes6ESTree13ClassBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, %bb.kw
  %.sroa.05404.60 = phi i64 [ %i.dmz, %_ZN6hermes6ESTree13ClassBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.kw ]
  %.sroa.261.60 = phi i8 [ 1, %_ZN6hermes6ESTree13ClassBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.kw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1846:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1756, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %.sroa.01032.0.copyload72407243734873517683 = phi ptr [ %.sroa.01036.0.copyload, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread ], [ %.sroa.01032.0.copyload724072437335, %_ZNK4llvh9StringRef6equalsES0_.exit1756 ] ; 20 uses
  %i.dna = load i64, ptr %.sroa.01032.0.copyload72407243734873517683, align 1
  %i.dnb = xor i64 %i.dna, 8030569542342241347
  %i.dnc = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517683, i64 5
  %i.dnd = load i64, ptr %i.dnc, align 1
  %i.dne = xor i64 %i.dnd, 8751745755891331664
  %i.dnf = or i64 %i.dnb, %i.dne
  %i.dng = icmp ne i64 %i.dnf, 0
  %i.dnh = zext i1 %i.dng to i32
  %i.dni = icmp eq i32 %i.dnh, 0
  br i1 %i.dni, label %_ZNK4llvh9StringRef6equalsES0_.exit1846.thread6288, label %_ZNK4llvh9StringRef6equalsES0_.exit1885

_ZNK4llvh9StringRef6equalsES0_.exit1846.thread6288: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da) #11
  store ptr null, ptr %i.da, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db) #11
  store ptr null, ptr %i.db, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc) #11
  store ptr null, ptr %i.dc, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd) #11
  store ptr null, ptr %i.dd, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de) #11
  store ptr null, ptr %i.de, align 8, !tbaa !642
  %i.dnj = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.282, i64 3, ptr noundef nonnull align 8 dereferenceable(8) %i.da)
  br i1 %i.dnj, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1846.thread6288
  %i.dnk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dnl = load ptr, ptr %i.dnk, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #11
  %i.dnm = getelementptr inbounds nuw i8, ptr %161, i64 16
  %i.dnn = getelementptr inbounds nuw i8, ptr %161, i64 17
  store i8 1, ptr %i.dnn, align 1, !tbaa !611
  store ptr @.str.314, ptr %161, align 8, !tbaa !612
  store i8 3, ptr %i.dnm, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dnl, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %161, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #11
  br label %bb.lg

bb.lb:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1846.thread6288
  %i.dno = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.142, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.db) ; 0 uses
  %i.dnp = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.dnq = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dnp, ptr nonnull @.str.216, i64 8)
  %i.dnr = extractvalue { i64, i8 } %i.dnq, 0
  %i.dns = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dnr
  %i.dnt = load ptr, ptr %i.dns, align 8, !tbaa !629 ; 2 uses
  %i.dnu = load i32, ptr %i.dnt, align 4, !tbaa !595
  %i.dnv = icmp eq i32 %i.dnu, 4
  br i1 %i.dnv, label %bb.lc, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2593

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2593: ; preds = %bb.lb
  %i.dnw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dnx = load ptr, ptr %i.dnw, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #11
  %i.dny = getelementptr inbounds nuw i8, ptr %162, i64 16
  %i.dnz = getelementptr inbounds nuw i8, ptr %162, i64 17
  store i8 1, ptr %i.dnz, align 1, !tbaa !611
  store ptr @.str.316, ptr %162, align 8, !tbaa !612
  store i8 3, ptr %i.dny, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dnx, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %162, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #11
  br label %bb.lg

bb.lc:                                            ; preds = %bb.lb
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dnt, i64 4
  %i.dob = load i8, ptr %i.doa, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.doc = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.dod = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.doc, ptr nonnull @.str.317, i64 6)
  %i.doe = extractvalue { i64, i8 } %i.dod, 0
  %i.dof = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.doe
  %i.dog = load ptr, ptr %i.dof, align 8, !tbaa !629 ; 2 uses
  %i.doh = load i32, ptr %i.dog, align 4, !tbaa !595
  %i.doi = icmp eq i32 %i.doh, 4
  br i1 %i.doi, label %bb.ld, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2595

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2595: ; preds = %bb.lc
  %i.doj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dok = load ptr, ptr %i.doj, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #11
  %i.dol = getelementptr inbounds nuw i8, ptr %163, i64 16
  %i.dom = getelementptr inbounds nuw i8, ptr %163, i64 17
  store i8 1, ptr %i.dom, align 1, !tbaa !611
  store ptr @.str.318, ptr %163, align 8, !tbaa !612
  store i8 3, ptr %i.dol, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dok, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %163, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #11
  br label %bb.lg

bb.ld:                                            ; preds = %bb.lc
  %i.don = getelementptr inbounds nuw i8, ptr %i.dog, i64 4
  %i.doo = load i8, ptr %i.don, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.dop = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.doq = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dop, ptr nonnull @.str.319, i64 7)
  %i.dor = extractvalue { i64, i8 } %i.doq, 0
  %i.dos = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dor
  %i.dot = load ptr, ptr %i.dos, align 8, !tbaa !629 ; 2 uses
  %i.dou = load i32, ptr %i.dot, align 4, !tbaa !595
  %i.dov = icmp eq i32 %i.dou, 4
  br i1 %i.dov, label %bb.le, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2597

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2597: ; preds = %bb.ld
  %i.dow = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dox = load ptr, ptr %i.dow, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #11
  %i.doy = getelementptr inbounds nuw i8, ptr %164, i64 16
  %i.doz = getelementptr inbounds nuw i8, ptr %164, i64 17
  store i8 1, ptr %i.doz, align 1, !tbaa !611
  store ptr @.str.320, ptr %164, align 8, !tbaa !612
  store i8 3, ptr %i.doy, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dox, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %164, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #11
  br label %bb.lg

bb.le:                                            ; preds = %bb.ld
  %i.dpa = getelementptr inbounds nuw i8, ptr %i.dot, i64 4
  %i.dpb = load i8, ptr %i.dpa, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.dpc = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.dpd = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dpc, ptr nonnull @.str.196, i64 8)
  %i.dpe = extractvalue { i64, i8 } %i.dpd, 0
  %i.dpf = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dpe
  %i.dpg = load ptr, ptr %i.dpf, align 8, !tbaa !629 ; 2 uses
  %i.dph = load i32, ptr %i.dpg, align 4, !tbaa !595
  %i.dpi = icmp eq i32 %i.dph, 4
  br i1 %i.dpi, label %bb.lf, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2599

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2599: ; preds = %bb.le
  %i.dpj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dpk = load ptr, ptr %i.dpj, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #11
  %i.dpl = getelementptr inbounds nuw i8, ptr %165, i64 16
  %i.dpm = getelementptr inbounds nuw i8, ptr %165, i64 17
  store i8 1, ptr %i.dpm, align 1, !tbaa !611
  store ptr @.str.321, ptr %165, align 8, !tbaa !612
  store i8 3, ptr %i.dpl, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dpk, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %165, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #11
  br label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.dpn = getelementptr inbounds nuw i8, ptr %i.dpg, i64 4
  %i.dpo = load i8, ptr %i.dpn, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.dpp = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.322, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.dc) ; 0 uses
  %i.dpq = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.242, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.dd) ; 0 uses
  %i.dpr = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.325, i64 11, ptr noundef nonnull align 8 dereferenceable(8) %i.de) ; 0 uses
  %i.dps = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.dpt = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 96, ptr noundef nonnull align 8 dereferenceable(656) %i.dps, i64 noundef 8) ; 15 uses
  %i.dpu = load ptr, ptr %i.da, align 8, !tbaa !642
  %i.dpv = load ptr, ptr %i.db, align 8, !tbaa !642
  %i.dpw = load ptr, ptr %i.dc, align 8, !tbaa !642
  %i.dpx = load ptr, ptr %i.dd, align 8, !tbaa !642
  %i.dpy = load ptr, ptr %i.de, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dpt, i8 0, i64 16, i1 false)
  %i.dpz = getelementptr inbounds nuw i8, ptr %i.dpt, i64 16
  store i32 80, ptr %i.dpz, align 8, !tbaa !627
  %i.dqa = getelementptr inbounds nuw i8, ptr %i.dpt, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dqa, i8 0, i64 28, i1 false)
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.dpt, i64 48
  store ptr %i.dpu, ptr %i.dqb, align 8, !tbaa !764
  %i.dqc = getelementptr inbounds nuw i8, ptr %i.dpt, i64 56
  store ptr %i.dpv, ptr %i.dqc, align 8, !tbaa !765
  %i.dqd = getelementptr inbounds nuw i8, ptr %i.dpt, i64 64
  store i8 %i.dob, ptr %i.dqd, align 8, !tbaa !1303
  %i.dqe = getelementptr inbounds nuw i8, ptr %i.dpt, i64 65
  store i8 %i.doo, ptr %i.dqe, align 1, !tbaa !1304
  %i.dqf = getelementptr inbounds nuw i8, ptr %i.dpt, i64 66
  store i8 %i.dpb, ptr %i.dqf, align 2, !tbaa !1305
  %i.dqg = getelementptr inbounds nuw i8, ptr %i.dpt, i64 67
  store i8 %i.dpo, ptr %i.dqg, align 1, !tbaa !1306
  %i.dqh = getelementptr inbounds nuw i8, ptr %i.dpt, i64 72
  store ptr %i.dpw, ptr %i.dqh, align 8, !tbaa !766
  %i.dqi = getelementptr inbounds nuw i8, ptr %i.dpt, i64 80
  store ptr %i.dpx, ptr %i.dqi, align 8, !tbaa !767
  %i.dqj = getelementptr inbounds nuw i8, ptr %i.dpt, i64 88
  store ptr %i.dpy, ptr %i.dqj, align 8, !tbaa !768
  %i.dqk = getelementptr inbounds nuw i8, ptr %i.dpt, i64 24
  store ptr %.sroa.05391.0, ptr %i.dqk, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2600 = getelementptr inbounds nuw i8, ptr %i.dpt, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2600, align 8, !tbaa !635
  %i.dql = ptrtoint ptr %i.dpt to i64
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2599, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2597, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2595, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2593, %bb.la
  %.sroa.05404.61 = phi i64 [ %i.dql, %bb.lf ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2599 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2597 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2595 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2593 ], [ undef, %bb.la ]
  %.sroa.261.61 = phi i8 [ 1, %bb.lf ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2599 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2597 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2595 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2593 ], [ 0, %bb.la ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1849:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1774, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.dqm = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.dqn = xor i128 %i.dqm, 149452199043554442704462625271000951875
  %i.dqo = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.dqp = load i32, ptr %i.dqo, align 1
  %i.dqq = zext i32 %i.dqp to i128
  %i.dqr = xor i128 %i.dqq, 2037674597
  %i.dqs = or i128 %i.dqn, %i.dqr
  %i.dqt = icmp ne i128 %i.dqs, 0
  %i.dqu = zext i1 %i.dqt to i32
  %i.dqv = icmp eq i32 %i.dqu, 0
  br i1 %i.dqv, label %_ZNK4llvh9StringRef6equalsES0_.exit1849.thread6298, label %_ZNK4llvh9StringRef6equalsES0_.exit1882

_ZNK4llvh9StringRef6equalsES0_.exit1849.thread6298: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df) #11
  store ptr null, ptr %i.df, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg) #11
  store ptr null, ptr %i.dg, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh) #11
  store ptr null, ptr %i.dh, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di) #11
  store ptr null, ptr %i.di, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj) #11
  store ptr null, ptr %i.dj, align 8, !tbaa !642
  %i.dqw = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.282, i64 3, ptr noundef nonnull align 8 dereferenceable(8) %i.df)
  br i1 %i.dqw, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1849.thread6298
  %i.dqx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dqy = load ptr, ptr %i.dqx, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #11
  %i.dqz = getelementptr inbounds nuw i8, ptr %166, i64 16
  %i.dra = getelementptr inbounds nuw i8, ptr %166, i64 17
  store i8 1, ptr %i.dra, align 1, !tbaa !611
  store ptr @.str.328, ptr %166, align 8, !tbaa !612
  store i8 3, ptr %i.dqz, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dqy, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %166, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #11
  br label %bb.lm

bb.li:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1849.thread6298
  %i.drb = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.142, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.dg) ; 0 uses
  %i.drc = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.drd = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.drc, ptr nonnull @.str.317, i64 6)
  %i.dre = extractvalue { i64, i8 } %i.drd, 0
  %i.drf = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dre
  %i.drg = load ptr, ptr %i.drf, align 8, !tbaa !629 ; 2 uses
  %i.drh = load i32, ptr %i.drg, align 4, !tbaa !595
  %i.dri = icmp eq i32 %i.drh, 4
  br i1 %i.dri, label %bb.lj, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2602

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2602: ; preds = %bb.li
  %i.drj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.drk = load ptr, ptr %i.drj, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %167) #11
  %i.drl = getelementptr inbounds nuw i8, ptr %167, i64 16
  %i.drm = getelementptr inbounds nuw i8, ptr %167, i64 17
  store i8 1, ptr %i.drm, align 1, !tbaa !611
  store ptr @.str.330, ptr %167, align 8, !tbaa !612
  store i8 3, ptr %i.drl, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.drk, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %167, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #11
  br label %bb.lm

bb.lj:                                            ; preds = %bb.li
  %i.drn = getelementptr inbounds nuw i8, ptr %i.drg, i64 4
  %i.dro = load i8, ptr %i.drn, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.drp = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.drq = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.drp, ptr nonnull @.str.319, i64 7)
  %i.drr = extractvalue { i64, i8 } %i.drq, 0
  %i.drs = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.drr
  %i.drt = load ptr, ptr %i.drs, align 8, !tbaa !629 ; 2 uses
  %i.dru = load i32, ptr %i.drt, align 4, !tbaa !595
  %i.drv = icmp eq i32 %i.dru, 4
  br i1 %i.drv, label %bb.lk, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2604

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2604: ; preds = %bb.lj
  %i.drw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.drx = load ptr, ptr %i.drw, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %168) #11
  %i.dry = getelementptr inbounds nuw i8, ptr %168, i64 16
  %i.drz = getelementptr inbounds nuw i8, ptr %168, i64 17
  store i8 1, ptr %i.drz, align 1, !tbaa !611
  store ptr @.str.331, ptr %168, align 8, !tbaa !612
  store i8 3, ptr %i.dry, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.drx, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %168, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #11
  br label %bb.lm

bb.lk:                                            ; preds = %bb.lj
  %i.dsa = getelementptr inbounds nuw i8, ptr %i.drt, i64 4
  %i.dsb = load i8, ptr %i.dsa, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.dsc = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.dsd = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dsc, ptr nonnull @.str.196, i64 8)
  %i.dse = extractvalue { i64, i8 } %i.dsd, 0
  %i.dsf = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dse
  %i.dsg = load ptr, ptr %i.dsf, align 8, !tbaa !629 ; 2 uses
  %i.dsh = load i32, ptr %i.dsg, align 4, !tbaa !595
  %i.dsi = icmp eq i32 %i.dsh, 4
  br i1 %i.dsi, label %bb.ll, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2606

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2606: ; preds = %bb.lk
  %i.dsj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dsk = load ptr, ptr %i.dsj, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #11
  %i.dsl = getelementptr inbounds nuw i8, ptr %169, i64 16
  %i.dsm = getelementptr inbounds nuw i8, ptr %169, i64 17
  store i8 1, ptr %i.dsm, align 1, !tbaa !611
  store ptr @.str.332, ptr %169, align 8, !tbaa !612
  store i8 3, ptr %i.dsl, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dsk, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %169, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #11
  br label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.dsn = getelementptr inbounds nuw i8, ptr %i.dsg, i64 4
  %i.dso = load i8, ptr %i.dsn, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.dsp = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.322, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.dh) ; 0 uses
  %i.dsq = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.242, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.di) ; 0 uses
  %i.dsr = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.325, i64 11, ptr noundef nonnull align 8 dereferenceable(8) %i.dj) ; 0 uses
  %i.dss = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.dst = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 96, ptr noundef nonnull align 8 dereferenceable(656) %i.dss, i64 noundef 8) ; 14 uses
  %i.dsu = load ptr, ptr %i.df, align 8, !tbaa !642
  %i.dsv = load ptr, ptr %i.dg, align 8, !tbaa !642
  %i.dsw = load ptr, ptr %i.dh, align 8, !tbaa !642
  %i.dsx = load ptr, ptr %i.di, align 8, !tbaa !642
  %i.dsy = load ptr, ptr %i.dj, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dst, i8 0, i64 16, i1 false)
  %i.dsz = getelementptr inbounds nuw i8, ptr %i.dst, i64 16
  store i32 81, ptr %i.dsz, align 8, !tbaa !627
  %i.dta = getelementptr inbounds nuw i8, ptr %i.dst, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dta, i8 0, i64 28, i1 false)
  %i.dtb = getelementptr inbounds nuw i8, ptr %i.dst, i64 48
  store ptr %i.dsu, ptr %i.dtb, align 8, !tbaa !770
  %i.dtc = getelementptr inbounds nuw i8, ptr %i.dst, i64 56
  store ptr %i.dsv, ptr %i.dtc, align 8, !tbaa !771
  %i.dtd = getelementptr inbounds nuw i8, ptr %i.dst, i64 64
  store i8 %i.dro, ptr %i.dtd, align 8, !tbaa !1307
  %i.dte = getelementptr inbounds nuw i8, ptr %i.dst, i64 65
  store i8 %i.dsb, ptr %i.dte, align 1, !tbaa !1308
  %i.dtf = getelementptr inbounds nuw i8, ptr %i.dst, i64 66
  store i8 %i.dso, ptr %i.dtf, align 2, !tbaa !1309
  %i.dtg = getelementptr inbounds nuw i8, ptr %i.dst, i64 72
  store ptr %i.dsw, ptr %i.dtg, align 8, !tbaa !772
  %i.dth = getelementptr inbounds nuw i8, ptr %i.dst, i64 80
  store ptr %i.dsx, ptr %i.dth, align 8, !tbaa !773
  %i.dti = getelementptr inbounds nuw i8, ptr %i.dst, i64 88
  store ptr %i.dsy, ptr %i.dti, align 8, !tbaa !774
  %i.dtj = getelementptr inbounds nuw i8, ptr %i.dst, i64 24
  store ptr %.sroa.05391.0, ptr %i.dtj, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2607 = getelementptr inbounds nuw i8, ptr %i.dst, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2607, align 8, !tbaa !635
  %i.dtk = ptrtoint ptr %i.dst to i64
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2606, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2604, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2602, %bb.lh
  %.sroa.05404.62 = phi i64 [ %i.dtk, %bb.ll ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2606 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2604 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2602 ], [ undef, %bb.lh ]
  %.sroa.261.62 = phi i8 [ 1, %bb.ll ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2606 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2604 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2602 ], [ 0, %bb.lh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1852:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1837
  %i.dtl = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.dtm = icmp ne i128 %i.dtl, 146793563363742752574987843018209649997
  %i.dtn = zext i1 %i.dtm to i32
  %i.dto = icmp eq i32 %i.dtn, 0
  br i1 %i.dto, label %_ZNK4llvh9StringRef6equalsES0_.exit1852.thread6306, label %_ZNK4llvh9StringRef6equalsES0_.exit1939

_ZNK4llvh9StringRef6equalsES0_.exit1852.thread6306: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk) #11
  store ptr null, ptr %i.dk, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl) #11
  store ptr null, ptr %i.dl, align 8, !tbaa !642
  %i.dtp = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.282, i64 3, ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
  br i1 %i.dtp, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1852.thread6306
  %i.dtq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dtr = load ptr, ptr %i.dtq, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %170) #11
  %i.dts = getelementptr inbounds nuw i8, ptr %170, i64 16
  %i.dtt = getelementptr inbounds nuw i8, ptr %170, i64 17
  store i8 1, ptr %i.dtt, align 1, !tbaa !611
  store ptr @.str.337, ptr %170, align 8, !tbaa !612
  store i8 3, ptr %i.dts, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dtr, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %170, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #11
  br label %bb.lu

bb.lo:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1852.thread6306
  %i.dtu = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.142, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.dl)
  br i1 %i.dtu, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.dtv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dtw = load ptr, ptr %i.dtv, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %171) #11
  %i.dtx = getelementptr inbounds nuw i8, ptr %171, i64 16
  %i.dty = getelementptr inbounds nuw i8, ptr %171, i64 17
  store i8 1, ptr %i.dty, align 1, !tbaa !611
  store ptr @.str.338, ptr %171, align 8, !tbaa !612
  store i8 3, ptr %i.dtx, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dtw, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %171, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #11
  br label %bb.lu

bb.lq:                                            ; preds = %bb.lo
  %i.dtz = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.dua = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dtz, ptr nonnull @.str.262, i64 4)
  %i.dub = extractvalue { i64, i8 } %i.dua, 0
  %i.duc = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dub
  %i.dud = load ptr, ptr %i.duc, align 8, !tbaa !629 ; 2 uses
  %i.due = load i32, ptr %i.dud, align 4, !tbaa !595
  %i.duf = icmp eq i32 %i.due, 2
  br i1 %i.duf, label %bb.lr, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2609

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2609: ; preds = %bb.lq
  %i.dug = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.duh = load ptr, ptr %i.dug, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #11
  %i.dui = getelementptr inbounds nuw i8, ptr %172, i64 16
  %i.duj = getelementptr inbounds nuw i8, ptr %172, i64 17
  store i8 1, ptr %i.duj, align 1, !tbaa !611
  store ptr @.str.339, ptr %172, align 8, !tbaa !612
  store i8 3, ptr %i.dui, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.duh, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %172, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #11
  br label %bb.lu

bb.lr:                                            ; preds = %bb.lq
  %i.duk = getelementptr inbounds nuw i8, ptr %i.dud, i64 16
  %i.dul = load ptr, ptr %i.duk, align 8, !tbaa !634
  %i.dum = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.dun = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dum, ptr nonnull @.str.216, i64 8)
  %i.duo = extractvalue { i64, i8 } %i.dun, 0
  %i.dup = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.duo
  %i.duq = load ptr, ptr %i.dup, align 8, !tbaa !629 ; 2 uses
  %i.dur = load i32, ptr %i.duq, align 4, !tbaa !595
  %i.dus = icmp eq i32 %i.dur, 4
  br i1 %i.dus, label %bb.ls, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2611

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2611: ; preds = %bb.lr
  %i.dut = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.duu = load ptr, ptr %i.dut, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #11
  %i.duv = getelementptr inbounds nuw i8, ptr %173, i64 16
  %i.duw = getelementptr inbounds nuw i8, ptr %173, i64 17
  store i8 1, ptr %i.duw, align 1, !tbaa !611
  store ptr @.str.340, ptr %173, align 8, !tbaa !612
  store i8 3, ptr %i.duv, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.duu, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %173, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #11
  br label %bb.lu

bb.ls:                                            ; preds = %bb.lr
  %i.dux = getelementptr inbounds nuw i8, ptr %i.duq, i64 4
  %i.duy = load i8, ptr %i.dux, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.duz = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.dva = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.duz, ptr nonnull @.str.317, i64 6)
  %i.dvb = extractvalue { i64, i8 } %i.dva, 0
  %i.dvc = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dvb
  %i.dvd = load ptr, ptr %i.dvc, align 8, !tbaa !629 ; 2 uses
  %i.dve = load i32, ptr %i.dvd, align 4, !tbaa !595
  %i.dvf = icmp eq i32 %i.dve, 4
  br i1 %i.dvf, label %bb.lt, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2613

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2613: ; preds = %bb.ls
  %i.dvg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dvh = load ptr, ptr %i.dvg, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #11
  %i.dvi = getelementptr inbounds nuw i8, ptr %174, i64 16
  %i.dvj = getelementptr inbounds nuw i8, ptr %174, i64 17
  store i8 1, ptr %i.dvj, align 1, !tbaa !611
  store ptr @.str.341, ptr %174, align 8, !tbaa !612
  store i8 3, ptr %i.dvi, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dvh, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %174, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #11
  br label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.dvk = getelementptr inbounds nuw i8, ptr %i.dvd, i64 4
  %i.dvl = load i8, ptr %i.dvk, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.dvm = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.dvn = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 80, ptr noundef nonnull align 8 dereferenceable(656) %i.dvm, i64 noundef 8) ; 11 uses
  %i.dvo = load ptr, ptr %i.dk, align 8, !tbaa !642
  %i.dvp = load ptr, ptr %i.dl, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %i.dvn, i8 0, i64 16, i1 false)
  %i.dvq = getelementptr inbounds nuw i8, ptr %i.dvn, i64 16
  store i32 82, ptr %i.dvq, align 8, !tbaa !627
  %i.dvr = getelementptr inbounds nuw i8, ptr %i.dvn, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dvr, i8 0, i64 28, i1 false)
  %i.dvs = getelementptr inbounds nuw i8, ptr %i.dvn, i64 48
  store ptr %i.dvo, ptr %i.dvs, align 8, !tbaa !776
  %i.dvt = getelementptr inbounds nuw i8, ptr %i.dvn, i64 56
  store ptr %i.dvp, ptr %i.dvt, align 8, !tbaa !777
  %i.dvu = getelementptr inbounds nuw i8, ptr %i.dvn, i64 64
  store ptr %i.dul, ptr %i.dvu, align 8, !tbaa !1310
  %i.dvv = getelementptr inbounds nuw i8, ptr %i.dvn, i64 72
  store i8 %i.duy, ptr %i.dvv, align 8, !tbaa !1311
  %i.dvw = getelementptr inbounds nuw i8, ptr %i.dvn, i64 73
  store i8 %i.dvl, ptr %i.dvw, align 1, !tbaa !1312
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.dvn, i64 24
  store ptr %.sroa.05391.0, ptr %i.dvx, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2614 = getelementptr inbounds nuw i8, ptr %i.dvn, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2614, align 8, !tbaa !635
  %i.dvy = ptrtoint ptr %i.dvn to i64
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2613, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2611, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2609, %bb.lp, %bb.ln
  %.sroa.05404.63 = phi i64 [ %i.dvy, %bb.lt ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2613 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2611 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2609 ], [ undef, %bb.lp ], [ undef, %bb.ln ]
  %.sroa.261.63 = phi i8 [ 1, %bb.lt ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2613 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2611 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2609 ], [ 0, %bb.lp ], [ 0, %bb.ln ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1855:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1789, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.dvz = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.dwa = xor i128 %i.dvz, 148091859182316675043969065675190725961
  %i.dwb = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.dwc = load i8, ptr %i.dwb, align 1
  %i.dwd = zext i8 %i.dwc to i128
  %i.dwe = xor i128 %i.dwd, 110
  %i.dwf = or i128 %i.dwa, %i.dwe
  %i.dwg = icmp ne i128 %i.dwf, 0
  %i.dwh = zext i1 %i.dwg to i32
  %i.dwi = icmp eq i32 %i.dwh, 0
  br i1 %i.dwi, label %_ZNK4llvh9StringRef6equalsES0_.exit1855.thread6314, label %_ZNK4llvh9StringRef6equalsES0_.exit1894

_ZNK4llvh9StringRef6equalsES0_.exit1855.thread6314: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1855
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #11
  store ptr %175, ptr %175, align 8, !tbaa !639
  %i.dwj = getelementptr inbounds nuw i8, ptr %175, i64 8
  store ptr %175, ptr %i.dwj, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm) #11
  store ptr null, ptr %i.dm, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %176) #11
  store ptr %176, ptr %176, align 8, !tbaa !639
  %i.dwk = getelementptr inbounds nuw i8, ptr %176, i64 8
  store ptr %176, ptr %i.dwk, align 8, !tbaa !640
  %i.dwl = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.343, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %175)
  br i1 %i.dwl, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1855.thread6314
  %i.dwm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dwn = load ptr, ptr %i.dwm, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %177) #11
  %i.dwo = getelementptr inbounds nuw i8, ptr %177, i64 16
  %i.dwp = getelementptr inbounds nuw i8, ptr %177, i64 17
  store i8 1, ptr %i.dwp, align 1, !tbaa !611
  store ptr @.str.344, ptr %177, align 8, !tbaa !612
  store i8 3, ptr %i.dwo, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dwn, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %177, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %177) #11
  br label %bb.ma

bb.lw:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1855.thread6314
  %i.dwq = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.184, i64 6, ptr noundef nonnull align 8 dereferenceable(8) %i.dm)
  br i1 %i.dwq, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.dwr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dws = load ptr, ptr %i.dwr, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %178) #11
  %i.dwt = getelementptr inbounds nuw i8, ptr %178, i64 16
  %i.dwu = getelementptr inbounds nuw i8, ptr %178, i64 17
  store i8 1, ptr %i.dwu, align 1, !tbaa !611
  store ptr @.str.345, ptr %178, align 8, !tbaa !612
  store i8 3, ptr %i.dwt, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dws, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %178, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %178) #11
  br label %bb.ma

bb.ly:                                            ; preds = %bb.lw
  %i.dwv = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.346, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %176) ; 0 uses
  %i.dww = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.dwx = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dww, ptr nonnull @.str.348, i64 10)
  %i.dwy = extractvalue { i64, i8 } %i.dwx, 0
  %i.dwz = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dwy
  %i.dxa = load ptr, ptr %i.dwz, align 8, !tbaa !629 ; 2 uses
  %i.dxb = load i32, ptr %i.dxa, align 4, !tbaa !595
  %i.dxc = icmp eq i32 %i.dxb, 2
  br i1 %i.dxc, label %bb.lz, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2616

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2616: ; preds = %bb.ly
  %i.dxd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dxe = load ptr, ptr %i.dxd, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %179) #11
  %i.dxf = getelementptr inbounds nuw i8, ptr %179, i64 16
  %i.dxg = getelementptr inbounds nuw i8, ptr %179, i64 17
  store i8 1, ptr %i.dxg, align 1, !tbaa !611
  store ptr @.str.349, ptr %179, align 8, !tbaa !612
  store i8 3, ptr %i.dxf, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dxe, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %179, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %179) #11
  br label %bb.ma

bb.lz:                                            ; preds = %bb.ly
  %i.dxh = getelementptr inbounds nuw i8, ptr %i.dxa, i64 16
  %i.dxi = load ptr, ptr %i.dxh, align 8, !tbaa !634
  %i.dxj = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.dxk = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 96, ptr noundef nonnull align 8 dereferenceable(656) %i.dxj, i64 noundef 8) ; 4 uses
  %i.dxl = load ptr, ptr %i.dm, align 8, !tbaa !642
  call void @_ZN6hermes6ESTree21ImportDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S6_PNS_12UniqueStringE(ptr noundef nonnull align 8 dereferenceable(96) %i.dxk, ptr noundef nonnull align 8 dereferenceable(16) %175, ptr noundef %i.dxl, ptr noundef nonnull align 8 dereferenceable(16) %176, ptr noundef %i.dxi)
  %i.dxm = getelementptr inbounds nuw i8, ptr %i.dxk, i64 24
  store ptr %.sroa.05391.0, ptr %i.dxm, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2617 = getelementptr inbounds nuw i8, ptr %i.dxk, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2617, align 8, !tbaa !635
  %i.dxn = ptrtoint ptr %i.dxk to i64
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2616, %bb.lx, %bb.lv
  %.sroa.05404.64 = phi i64 [ %i.dxn, %bb.lz ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2616 ], [ undef, %bb.lx ], [ undef, %bb.lv ]
  %.sroa.261.64 = phi i8 [ 1, %bb.lz ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2616 ], [ 0, %bb.lx ], [ 0, %bb.lv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1858:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1840
  %i.dxo = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.dxp = xor i64 %i.dxo, 8093940990159646025
  %i.dxq = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.dxr = load i64, ptr %i.dxq, align 1
  %i.dxs = xor i64 %i.dxr, 8243110581547263344
  %i.dxt = or i64 %i.dxp, %i.dxs
  %i.dxu = icmp ne i64 %i.dxt, 0
  %i.dxv = zext i1 %i.dxu to i32
  %i.dxw = icmp eq i32 %i.dxv, 0
  br i1 %i.dxw, label %_ZNK4llvh9StringRef6equalsES0_.exit1858.thread6318, label %_ZNK4llvh9StringRef6equalsES0_.exit1867

_ZNK4llvh9StringRef6equalsES0_.exit1858.thread6318: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn) #11
  store ptr null, ptr %i.dn, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do) #11
  store ptr null, ptr %i.do, align 8, !tbaa !642
  %i.dxx = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.351, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.dn)
  br i1 %i.dxx, label %bb.mc, label %bb.mb

bb.mb:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1858.thread6318
  %i.dxy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dxz = load ptr, ptr %i.dxy, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %180) #11
  %i.dya = getelementptr inbounds nuw i8, ptr %180, i64 16
  %i.dyb = getelementptr inbounds nuw i8, ptr %180, i64 17
  store i8 1, ptr %i.dyb, align 1, !tbaa !611
  store ptr @.str.352, ptr %180, align 8, !tbaa !612
  store i8 3, ptr %i.dya, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dxz, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %180, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #11
  br label %bb.mg

bb.mc:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1858.thread6318
  %i.dyc = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.353, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.do)
  br i1 %i.dyc, label %bb.me, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.dyd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dye = load ptr, ptr %i.dyd, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %181) #11
  %i.dyf = getelementptr inbounds nuw i8, ptr %181, i64 16
  %i.dyg = getelementptr inbounds nuw i8, ptr %181, i64 17
  store i8 1, ptr %i.dyg, align 1, !tbaa !611
  store ptr @.str.354, ptr %181, align 8, !tbaa !612
  store i8 3, ptr %i.dyf, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dye, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %181, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #11
  br label %bb.mg

bb.me:                                            ; preds = %bb.mc
  %i.dyh = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.dyi = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dyh, ptr nonnull @.str.348, i64 10)
  %i.dyj = extractvalue { i64, i8 } %i.dyi, 0
  %i.dyk = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.dyj
  %i.dyl = load ptr, ptr %i.dyk, align 8, !tbaa !629 ; 2 uses
  %i.dym = load i32, ptr %i.dyl, align 4, !tbaa !595
  %i.dyn = icmp eq i32 %i.dym, 2
  br i1 %i.dyn, label %bb.mf, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2619

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2619: ; preds = %bb.me
  %i.dyo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dyp = load ptr, ptr %i.dyo, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %182) #11
  %i.dyq = getelementptr inbounds nuw i8, ptr %182, i64 16
  %i.dyr = getelementptr inbounds nuw i8, ptr %182, i64 17
  store i8 1, ptr %i.dyr, align 1, !tbaa !611
  store ptr @.str.355, ptr %182, align 8, !tbaa !612
  store i8 3, ptr %i.dyq, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dyp, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %182, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #11
  br label %bb.mg

bb.mf:                                            ; preds = %bb.me
  %i.dys = getelementptr inbounds nuw i8, ptr %i.dyl, i64 16
  %i.dyt = load ptr, ptr %i.dys, align 8, !tbaa !634
  %i.dyu = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.dyv = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.dyu, i64 noundef 8) ; 9 uses
  %i.dyw = load ptr, ptr %i.dn, align 8, !tbaa !642
  %i.dyx = load ptr, ptr %i.do, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dyv, i8 0, i64 16, i1 false)
  %i.dyy = getelementptr inbounds nuw i8, ptr %i.dyv, i64 16
  store i32 84, ptr %i.dyy, align 8, !tbaa !627
  %i.dyz = getelementptr inbounds nuw i8, ptr %i.dyv, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dyz, i8 0, i64 28, i1 false)
  %i.dza = getelementptr inbounds nuw i8, ptr %i.dyv, i64 48
  store ptr %i.dyw, ptr %i.dza, align 8, !tbaa !779
  %i.dzb = getelementptr inbounds nuw i8, ptr %i.dyv, i64 56
  store ptr %i.dyx, ptr %i.dzb, align 8, !tbaa !780
  %i.dzc = getelementptr inbounds nuw i8, ptr %i.dyv, i64 64
  store ptr %i.dyt, ptr %i.dzc, align 8, !tbaa !1313
  %i.dzd = getelementptr inbounds nuw i8, ptr %i.dyv, i64 24
  store ptr %.sroa.05391.0, ptr %i.dzd, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2620 = getelementptr inbounds nuw i8, ptr %i.dyv, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2620, align 8, !tbaa !635
  %i.dze = ptrtoint ptr %i.dyv to i64
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mf, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2619, %bb.md, %bb.mb
  %.sroa.05404.65 = phi i64 [ %i.dze, %bb.mf ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2619 ], [ undef, %bb.md ], [ undef, %bb.mb ]
  %.sroa.261.65 = phi i8 [ 1, %bb.mf ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2619 ], [ 0, %bb.md ], [ 0, %bb.mb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1861:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1771, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.dzf = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.dzg = xor i128 %i.dzf, 134835257486462643941002275390911180105
  %i.dzh = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.dzi = load i128, ptr %i.dzh, align 1
  %i.dzj = xor i128 %i.dzi, 152058551269089475700319271251960292676
  %i.dzk = or i128 %i.dzg, %i.dzj
  %i.dzl = icmp ne i128 %i.dzk, 0
  %i.dzm = zext i1 %i.dzl to i32
  %i.dzn = icmp eq i32 %i.dzm, 0
  br i1 %i.dzn, label %_ZNK4llvh9StringRef6equalsES0_.exit1861.thread6322, label %_ZNK4llvh9StringRef6equalsES0_.exit1870

_ZNK4llvh9StringRef6equalsES0_.exit1861.thread6322: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp) #11
  store ptr null, ptr %i.dp, align 8, !tbaa !642
  %i.dzo = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.353, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
  br i1 %i.dzo, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1861.thread6322
  %i.dzp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dzq = load ptr, ptr %i.dzp, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %183) #11
  %i.dzr = getelementptr inbounds nuw i8, ptr %183, i64 16
  %i.dzs = getelementptr inbounds nuw i8, ptr %183, i64 17
  store i8 1, ptr %i.dzs, align 1, !tbaa !611
  store ptr @.str.357, ptr %183, align 8, !tbaa !612
  store i8 3, ptr %i.dzr, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dzq, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %183, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #11
  br label %bb.mj

bb.mi:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1861.thread6322
  %i.dzt = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.dzu = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.dzt, i64 noundef 8) ; 7 uses
  %i.dzv = load ptr, ptr %i.dp, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dzu, i8 0, i64 16, i1 false)
  %i.dzw = getelementptr inbounds nuw i8, ptr %i.dzu, i64 16
  store i32 85, ptr %i.dzw, align 8, !tbaa !627
  %i.dzx = getelementptr inbounds nuw i8, ptr %i.dzu, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dzx, i8 0, i64 28, i1 false)
  %i.dzy = getelementptr inbounds nuw i8, ptr %i.dzu, i64 48
  store ptr %i.dzv, ptr %i.dzy, align 8, !tbaa !782
  %i.dzz = getelementptr inbounds nuw i8, ptr %i.dzu, i64 24
  store ptr %.sroa.05391.0, ptr %i.dzz, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2621 = getelementptr inbounds nuw i8, ptr %i.dzu, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2621, align 8, !tbaa !635
  %i.eaa = ptrtoint ptr %i.dzu to i64
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %bb.mh
  %.sroa.05404.66 = phi i64 [ %i.eaa, %bb.mi ], [ undef, %bb.mh ]
  %.sroa.261.66 = phi i8 [ 1, %bb.mi ], [ 0, %bb.mh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1864:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1828, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.eab = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.eac = xor i128 %i.eab, 110852361311344386986478157109641899337
  %i.ead = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.eae = load i64, ptr %i.ead, align 1
  %i.eaf = zext i64 %i.eae to i128
  %i.eag = xor i128 %i.eaf, 8243110581547263344
  %i.eah = or i128 %i.eac, %i.eag
  %i.eai = icmp ne i128 %i.eah, 0
  %i.eaj = zext i1 %i.eai to i32
  %i.eak = icmp eq i32 %i.eaj, 0
  br i1 %i.eak, label %_ZNK4llvh9StringRef6equalsES0_.exit1864.thread6324, label %_ZNK4llvh9StringRef6equalsES0_.exit1876

_ZNK4llvh9StringRef6equalsES0_.exit1864.thread6324: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq) #11
  store ptr null, ptr %i.dq, align 8, !tbaa !642
  %i.eal = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.353, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
  br i1 %i.eal, label %bb.ml, label %bb.mk

bb.mk:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1864.thread6324
  %i.eam = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ean = load ptr, ptr %i.eam, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %184) #11
  %i.eao = getelementptr inbounds nuw i8, ptr %184, i64 16
  %i.eap = getelementptr inbounds nuw i8, ptr %184, i64 17
  store i8 1, ptr %i.eap, align 1, !tbaa !611
  store ptr @.str.359, ptr %184, align 8, !tbaa !612
  store i8 3, ptr %i.eao, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ean, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %184, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #11
  br label %bb.mm

bb.ml:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1864.thread6324
  %i.eaq = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ear = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.eaq, i64 noundef 8) ; 7 uses
  %i.eas = load ptr, ptr %i.dq, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ear, i8 0, i64 16, i1 false)
  %i.eat = getelementptr inbounds nuw i8, ptr %i.ear, i64 16
  store i32 86, ptr %i.eat, align 8, !tbaa !627
  %i.eau = getelementptr inbounds nuw i8, ptr %i.ear, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.eau, i8 0, i64 28, i1 false)
  %i.eav = getelementptr inbounds nuw i8, ptr %i.ear, i64 48
  store ptr %i.eas, ptr %i.eav, align 8, !tbaa !784
  %i.eaw = getelementptr inbounds nuw i8, ptr %i.ear, i64 24
  store ptr %.sroa.05391.0, ptr %i.eaw, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2622 = getelementptr inbounds nuw i8, ptr %i.ear, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2622, align 8, !tbaa !635
  %i.eax = ptrtoint ptr %i.ear to i64
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %bb.mk
  %.sroa.05404.67 = phi i64 [ %i.eax, %bb.ml ], [ undef, %bb.mk ]
  %.sroa.261.67 = phi i8 [ 1, %bb.ml ], [ 0, %bb.mk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1867:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1858
  %i.eay = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.eaz = xor i64 %i.eay, 8377104816730565961
  %i.eba = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.ebb = load i64, ptr %i.eba, align 1
  %i.ebc = xor i64 %i.ebb, 7310597160665511028
  %i.ebd = or i64 %i.eaz, %i.ebc
  %i.ebe = icmp ne i64 %i.ebd, 0
  %i.ebf = zext i1 %i.ebe to i32
  %i.ebg = icmp eq i32 %i.ebf, 0
  br i1 %i.ebg, label %_ZNK4llvh9StringRef6equalsES0_.exit1867.thread6326, label %_ZNK4llvh9StringRef6equalsES0_.exit1873

_ZNK4llvh9StringRef6equalsES0_.exit1867.thread6326: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1867
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr) #11
  store ptr null, ptr %i.dr, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds) #11
  store ptr null, ptr %i.ds, align 8, !tbaa !642
  %i.ebh = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.282, i64 3, ptr noundef nonnull align 8 dereferenceable(8) %i.dr)
  br i1 %i.ebh, label %bb.mo, label %bb.mn

bb.mn:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1867.thread6326
  %i.ebi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ebj = load ptr, ptr %i.ebi, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %185) #11
  %i.ebk = getelementptr inbounds nuw i8, ptr %185, i64 16
  %i.ebl = getelementptr inbounds nuw i8, ptr %185, i64 17
  store i8 1, ptr %i.ebl, align 1, !tbaa !611
  store ptr @.str.361, ptr %185, align 8, !tbaa !612
  store i8 3, ptr %i.ebk, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ebj, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %185, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #11
  br label %bb.mr

bb.mo:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1867.thread6326
  %i.ebm = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.142, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.ds)
  br i1 %i.ebm, label %bb.mq, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.ebn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ebo = load ptr, ptr %i.ebn, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %186) #11
  %i.ebp = getelementptr inbounds nuw i8, ptr %186, i64 16
  %i.ebq = getelementptr inbounds nuw i8, ptr %186, i64 17
  store i8 1, ptr %i.ebq, align 1, !tbaa !611
  store ptr @.str.362, ptr %186, align 8, !tbaa !612
  store i8 3, ptr %i.ebp, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ebo, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %186, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %186) #11
  br label %bb.mr

bb.mq:                                            ; preds = %bb.mo
  %i.ebr = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ebs = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.ebr, i64 noundef 8) ; 8 uses
  %i.ebt = load ptr, ptr %i.dr, align 8, !tbaa !642
  %i.ebu = load ptr, ptr %i.ds, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ebs, i8 0, i64 16, i1 false)
  %i.ebv = getelementptr inbounds nuw i8, ptr %i.ebs, i64 16
  store i32 87, ptr %i.ebv, align 8, !tbaa !627
  %i.ebw = getelementptr inbounds nuw i8, ptr %i.ebs, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ebw, i8 0, i64 28, i1 false)
  %i.ebx = getelementptr inbounds nuw i8, ptr %i.ebs, i64 48
  store ptr %i.ebt, ptr %i.ebx, align 8, !tbaa !786
  %i.eby = getelementptr inbounds nuw i8, ptr %i.ebs, i64 56
  store ptr %i.ebu, ptr %i.eby, align 8, !tbaa !787
  %i.ebz = getelementptr inbounds nuw i8, ptr %i.ebs, i64 24
  store ptr %.sroa.05391.0, ptr %i.ebz, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2623 = getelementptr inbounds nuw i8, ptr %i.ebs, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2623, align 8, !tbaa !635
  %i.eca = ptrtoint ptr %i.ebs to i64
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mq, %bb.mp, %bb.mn
  %.sroa.05404.68 = phi i64 [ %i.eca, %bb.mq ], [ undef, %bb.mp ], [ undef, %bb.mn ]
  %.sroa.261.68 = phi i8 [ 1, %bb.mq ], [ 0, %bb.mp ], [ 0, %bb.mn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1870:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1861
  %i.ecb = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.ecc = xor i128 %i.ecb, 129497899633620128738155117340536109125
  %i.ecd = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.ece = load i128, ptr %i.ecd, align 1
  %i.ecf = xor i128 %i.ece, 146793563361271670531309280724693901646
  %i.ecg = or i128 %i.ecc, %i.ecf
  %i.ech = icmp ne i128 %i.ecg, 0
  %i.eci = zext i1 %i.ech to i32
  %i.ecj = icmp eq i32 %i.eci, 0
  br i1 %i.ecj, label %_ZNK4llvh9StringRef6equalsES0_.exit1870.thread6328, label %_ZNK4llvh9StringRef6equalsES0_.exit1915

_ZNK4llvh9StringRef6equalsES0_.exit1870.thread6328: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt) #11
  store ptr null, ptr %i.dt, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %187) #11
  store ptr %187, ptr %187, align 8, !tbaa !639
  %i.eck = getelementptr inbounds nuw i8, ptr %187, i64 8 ; 2 uses
  store ptr %187, ptr %i.eck, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du) #11
  store ptr null, ptr %i.du, align 8, !tbaa !642
  %i.ecl = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.364, i64 11, ptr noundef nonnull align 8 dereferenceable(8) %i.dt) ; 0 uses
  %i.ecm = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.343, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %187)
  br i1 %i.ecm, label %bb.mt, label %bb.ms

bb.ms:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1870.thread6328
  %i.ecn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eco = load ptr, ptr %i.ecn, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %188) #11
  %i.ecp = getelementptr inbounds nuw i8, ptr %188, i64 16
  %i.ecq = getelementptr inbounds nuw i8, ptr %188, i64 17
  store i8 1, ptr %i.ecq, align 1, !tbaa !611
  store ptr @.str.366, ptr %188, align 8, !tbaa !612
  store i8 3, ptr %i.ecp, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.eco, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %188, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %188) #11
  br label %bb.mw

bb.mt:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1870.thread6328
  %i.ecr = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.184, i64 6, ptr noundef nonnull align 8 dereferenceable(8) %i.du) ; 0 uses
  %i.ecs = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.ect = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ecs, ptr nonnull @.str.368, i64 10)
  %i.ecu = extractvalue { i64, i8 } %i.ect, 0
  %i.ecv = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.ecu
  %i.ecw = load ptr, ptr %i.ecv, align 8, !tbaa !629 ; 2 uses
  %i.ecx = load i32, ptr %i.ecw, align 4, !tbaa !595
  %i.ecy = icmp eq i32 %i.ecx, 2
  br i1 %i.ecy, label %bb.mu, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2625

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2625: ; preds = %bb.mt
  %i.ecz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eda = load ptr, ptr %i.ecz, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %189) #11
  %i.edb = getelementptr inbounds nuw i8, ptr %189, i64 16
  %i.edc = getelementptr inbounds nuw i8, ptr %189, i64 17
  store i8 1, ptr %i.edc, align 1, !tbaa !611
  store ptr @.str.369, ptr %189, align 8, !tbaa !612
  store i8 3, ptr %i.edb, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.eda, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %189, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #11
  br label %bb.mw

bb.mu:                                            ; preds = %bb.mt
  %i.edd = getelementptr inbounds nuw i8, ptr %i.ecw, i64 16
  %i.ede = load ptr, ptr %i.edd, align 8, !tbaa !634
  %i.edf = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.edg = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 88, ptr noundef nonnull align 8 dereferenceable(656) %i.edf, i64 noundef 8) ; 11 uses
end_hunk_5
begin_hunk_6_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1876:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1864
  %i.efc = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.efd = xor i128 %i.efc, 110852361311344386986478157109641902149
  %i.efe = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.eff = load i64, ptr %i.efe, align 1
  %i.efg = zext i64 %i.eff to i128
  %i.efh = xor i128 %i.efg, 8243110581547263344
  %i.efi = or i128 %i.efd, %i.efh
  %i.efj = icmp ne i128 %i.efi, 0
  %i.efk = zext i1 %i.efj to i32
  %i.efl = icmp eq i32 %i.efk, 0
  br i1 %i.efl, label %_ZNK4llvh9StringRef6equalsES0_.exit1876.thread6334, label %_ZNK4llvh9StringRef6equalsES0_.exit1879

_ZNK4llvh9StringRef6equalsES0_.exit1876.thread6334: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx) #11
  store ptr null, ptr %i.dx, align 8, !tbaa !642
  %i.efm = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.371, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.dx)
  br i1 %i.efm, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1876.thread6334
  %i.efn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.efo = load ptr, ptr %i.efn, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %192) #11
  %i.efp = getelementptr inbounds nuw i8, ptr %192, i64 16
  %i.efq = getelementptr inbounds nuw i8, ptr %192, i64 17
  store i8 1, ptr %i.efq, align 1, !tbaa !611
  store ptr @.str.375, ptr %192, align 8, !tbaa !612
  store i8 3, ptr %i.efp, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.efo, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %192, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %192) #11
  br label %bb.ne

bb.nd:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1876.thread6334
  %i.efr = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.efs = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.efr, i64 noundef 8) ; 7 uses
  %i.eft = load ptr, ptr %i.dx, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.efs, i8 0, i64 16, i1 false)
  %i.efu = getelementptr inbounds nuw i8, ptr %i.efs, i64 16
  store i32 90, ptr %i.efu, align 8, !tbaa !627
  %i.efv = getelementptr inbounds nuw i8, ptr %i.efs, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.efv, i8 0, i64 28, i1 false)
  %i.efw = getelementptr inbounds nuw i8, ptr %i.efs, i64 48
  store ptr %i.eft, ptr %i.efw, align 8, !tbaa !795
  %i.efx = getelementptr inbounds nuw i8, ptr %i.efs, i64 24
  store ptr %.sroa.05391.0, ptr %i.efx, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2629 = getelementptr inbounds nuw i8, ptr %i.efs, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2629, align 8, !tbaa !635
  %i.efy = ptrtoint ptr %i.efs to i64
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %bb.nc
  %.sroa.05404.71 = phi i64 [ %i.efy, %bb.nd ], [ undef, %bb.nc ]
  %.sroa.261.71 = phi i8 [ 1, %bb.nd ], [ 0, %bb.nc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1879:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1876
  %i.efz = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.ega = xor i128 %i.efz, 132119381993304874316224466601959782469
  %i.egb = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.egc = load i64, ptr %i.egb, align 1
  %i.egd = zext i64 %i.egc to i128
  %i.ege = xor i128 %i.egd, 7957695015158964588
  %i.egf = or i128 %i.ega, %i.ege
  %i.egg = icmp ne i128 %i.egf, 0
  %i.egh = zext i1 %i.egg to i32
  %i.egi = icmp eq i32 %i.egh, 0
  br i1 %i.egi, label %_ZNK4llvh9StringRef6equalsES0_.exit1879.thread6336, label %_ZNK4llvh9StringRef6equalsES0_.exit2143

_ZNK4llvh9StringRef6equalsES0_.exit1879.thread6336: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy) #11
  store ptr null, ptr %i.dy, align 8, !tbaa !642
  %i.egj = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.364, i64 11, ptr noundef nonnull align 8 dereferenceable(8) %i.dy)
  br i1 %i.egj, label %bb.ng, label %bb.nf

bb.nf:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1879.thread6336
  %i.egk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.egl = load ptr, ptr %i.egk, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %193) #11
  %i.egm = getelementptr inbounds nuw i8, ptr %193, i64 16
  %i.egn = getelementptr inbounds nuw i8, ptr %193, i64 17
  store i8 1, ptr %i.egn, align 1, !tbaa !611
  store ptr @.str.377, ptr %193, align 8, !tbaa !612
  store i8 3, ptr %i.egm, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.egl, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %193, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #11
  br label %bb.nh

bb.ng:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1879.thread6336
  %i.ego = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.egp = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.ego, i64 noundef 8) ; 7 uses
  %i.egq = load ptr, ptr %i.dy, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.egp, i8 0, i64 16, i1 false)
  %i.egr = getelementptr inbounds nuw i8, ptr %i.egp, i64 16
  store i32 91, ptr %i.egr, align 8, !tbaa !627
  %i.egs = getelementptr inbounds nuw i8, ptr %i.egp, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.egs, i8 0, i64 28, i1 false)
  %i.egt = getelementptr inbounds nuw i8, ptr %i.egp, i64 48
  store ptr %i.egq, ptr %i.egt, align 8, !tbaa !797
  %i.egu = getelementptr inbounds nuw i8, ptr %i.egp, i64 24
  store ptr %.sroa.05391.0, ptr %i.egu, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2630 = getelementptr inbounds nuw i8, ptr %i.egp, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2630, align 8, !tbaa !635
  %i.egv = ptrtoint ptr %i.egp to i64
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %bb.nf
  %.sroa.05404.72 = phi i64 [ %i.egv, %bb.ng ], [ undef, %bb.nf ]
  %.sroa.261.72 = phi i8 [ 1, %bb.ng ], [ 0, %bb.nf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1882:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1849
  %i.egw = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.egx = xor i128 %i.egw, 129529013414144356374965422926177794117
  %i.egy = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.egz = load i32, ptr %i.egy, align 1
  %i.eha = zext i32 %i.egz to i128
  %i.ehb = xor i128 %i.eha, 1852795252
  %i.ehc = or i128 %i.egx, %i.ehb
  %i.ehd = icmp ne i128 %i.ehc, 0
  %i.ehe = zext i1 %i.ehd to i32
  %i.ehf = icmp eq i32 %i.ehe, 0
  br i1 %i.ehf, label %_ZNK4llvh9StringRef6equalsES0_.exit1882.thread6338, label %_ZNK4llvh9StringRef6equalsES0_.exit1906

_ZNK4llvh9StringRef6equalsES0_.exit1882.thread6338: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz) #11
  store ptr null, ptr %i.dz, align 8, !tbaa !642
  %i.ehg = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.184, i64 6, ptr noundef nonnull align 8 dereferenceable(8) %i.dz)
  br i1 %i.ehg, label %bb.nj, label %bb.ni

bb.ni:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1882.thread6338
  %i.ehh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ehi = load ptr, ptr %i.ehh, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %194) #11
  %i.ehj = getelementptr inbounds nuw i8, ptr %194, i64 16
  %i.ehk = getelementptr inbounds nuw i8, ptr %194, i64 17
  store i8 1, ptr %i.ehk, align 1, !tbaa !611
  store ptr @.str.379, ptr %194, align 8, !tbaa !612
  store i8 3, ptr %i.ehj, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ehi, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %194, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %194) #11
  br label %bb.nl

bb.nj:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1882.thread6338
  %i.ehl = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.ehm = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ehl, ptr nonnull @.str.368, i64 10)
  %i.ehn = extractvalue { i64, i8 } %i.ehm, 0
  %i.eho = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.ehn
  %i.ehp = load ptr, ptr %i.eho, align 8, !tbaa !629 ; 2 uses
  %i.ehq = load i32, ptr %i.ehp, align 4, !tbaa !595
  %i.ehr = icmp eq i32 %i.ehq, 2
  br i1 %i.ehr, label %bb.nk, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2632

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2632: ; preds = %bb.nj
  %i.ehs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eht = load ptr, ptr %i.ehs, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %195) #11
  %i.ehu = getelementptr inbounds nuw i8, ptr %195, i64 16
  %i.ehv = getelementptr inbounds nuw i8, ptr %195, i64 17
  store i8 1, ptr %i.ehv, align 1, !tbaa !611
  store ptr @.str.380, ptr %195, align 8, !tbaa !612
  store i8 3, ptr %i.ehu, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.eht, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %195, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #11
  br label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.ehw = getelementptr inbounds nuw i8, ptr %i.ehp, i64 16
  %i.ehx = load ptr, ptr %i.ehw, align 8, !tbaa !634
  %i.ehy = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ehz = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.ehy, i64 noundef 8) ; 8 uses
  %i.eia = load ptr, ptr %i.dz, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ehz, i8 0, i64 16, i1 false)
  %i.eib = getelementptr inbounds nuw i8, ptr %i.ehz, i64 16
  store i32 92, ptr %i.eib, align 8, !tbaa !627
  %i.eic = getelementptr inbounds nuw i8, ptr %i.ehz, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.eic, i8 0, i64 28, i1 false)
  %i.eid = getelementptr inbounds nuw i8, ptr %i.ehz, i64 48
  store ptr %i.eia, ptr %i.eid, align 8, !tbaa !799
  %i.eie = getelementptr inbounds nuw i8, ptr %i.ehz, i64 56
  store ptr %i.ehx, ptr %i.eie, align 8, !tbaa !1315
  %i.eif = getelementptr inbounds nuw i8, ptr %i.ehz, i64 24
  store ptr %.sroa.05391.0, ptr %i.eif, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2633 = getelementptr inbounds nuw i8, ptr %i.ehz, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2633, align 8, !tbaa !635
  %i.eig = ptrtoint ptr %i.ehz to i64
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2632, %bb.ni
  %.sroa.05404.73 = phi i64 [ %i.eig, %bb.nk ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2632 ], [ undef, %bb.ni ]
  %.sroa.261.73 = phi i8 [ 1, %bb.nk ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2632 ], [ 0, %bb.ni ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1885:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1846
  %i.eih = load i64, ptr %.sroa.01032.0.copyload72407243734873517683, align 1
  %i.eii = xor i64 %i.eih, 7012232590067917391
  %i.eij = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517683, i64 5
  %i.eik = load i64, ptr %i.eij, align 1
  %i.eil = xor i64 %i.eik, 7958535042360234100
  %i.eim = or i64 %i.eii, %i.eil
  %i.ein = icmp ne i64 %i.eim, 0
  %i.eio = zext i1 %i.ein to i32
  %i.eip = icmp eq i32 %i.eio, 0
  br i1 %i.eip, label %_ZNK4llvh9StringRef6equalsES0_.exit1885.thread6342, label %_ZNK4llvh9StringRef6equalsES0_.exit1942

_ZNK4llvh9StringRef6equalsES0_.exit1885.thread6342: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1885
  call void @llvm.lifetime.start.p0(ptr nonnull %196) #11
  store ptr %196, ptr %196, align 8, !tbaa !639
  %i.eiq = getelementptr inbounds nuw i8, ptr %196, i64 8 ; 2 uses
  store ptr %196, ptr %i.eiq, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea) #11
  store ptr null, ptr %i.ea, align 8, !tbaa !642
  %i.eir = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.162, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %196)
  br i1 %i.eir, label %bb.nn, label %bb.nm

bb.nm:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1885.thread6342
  %i.eis = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eit = load ptr, ptr %i.eis, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %197) #11
  %i.eiu = getelementptr inbounds nuw i8, ptr %197, i64 16
  %i.eiv = getelementptr inbounds nuw i8, ptr %197, i64 17
  store i8 1, ptr %i.eiv, align 1, !tbaa !611
  store ptr @.str.382, ptr %197, align 8, !tbaa !612
  store i8 3, ptr %i.eiu, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.eit, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %197, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #11
  br label %bb.np

bb.nn:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1885.thread6342
  %i.eiw = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.242, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.ea) ; 0 uses
  %i.eix = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.eiy = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.eix, i64 noundef 8) ; 9 uses
  %i.eiz = load ptr, ptr %i.ea, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eiy, i8 0, i64 16, i1 false)
  %i.eja = getelementptr inbounds nuw i8, ptr %i.eiy, i64 16
  store i32 94, ptr %i.eja, align 8, !tbaa !627
  %i.ejb = getelementptr inbounds nuw i8, ptr %i.eiy, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ejb, i8 0, i64 28, i1 false)
  %i.ejc = getelementptr inbounds nuw i8, ptr %i.eiy, i64 48 ; 7 uses
  store ptr %i.ejc, ptr %i.ejc, align 8, !tbaa !639
  %i.ejd = getelementptr inbounds nuw i8, ptr %i.eiy, i64 56 ; 2 uses
  store ptr %i.ejc, ptr %i.ejd, align 8, !tbaa !640
  %i.eje = load ptr, ptr %i.eiq, align 8, !tbaa !640 ; 4 uses
  %i.ejf = icmp eq ptr %i.ejc, %196
  %i.ejg = icmp eq ptr %i.eje, %196
  %or.cond.i.i.i.i.i.i2634 = or i1 %i.ejf, %i.ejg
  br i1 %or.cond.i.i.i.i.i.i2634, label %_ZN6hermes6ESTree17ObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.ejh = load ptr, ptr %196, align 8, !tbaa !639 ; 2 uses
  %i.eji = load ptr, ptr %i.eje, align 8, !tbaa !639
  %i.ejj = getelementptr inbounds nuw i8, ptr %i.eji, i64 8
  store ptr %196, ptr %i.ejj, align 8, !tbaa !640
  %i.ejk = getelementptr inbounds nuw i8, ptr %i.ejh, i64 8
  store ptr %i.ejc, ptr %i.ejk, align 8, !tbaa !640
  store ptr %i.ejc, ptr %i.eje, align 8, !tbaa !639
  store ptr %i.eje, ptr %i.ejd, align 8, !tbaa !640
  store ptr %i.ejh, ptr %i.ejc, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree17ObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit

_ZN6hermes6ESTree17ObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit: ; preds = %bb.nn, %bb.no
  %i.ejl = getelementptr inbounds nuw i8, ptr %i.eiy, i64 64
  store ptr %i.eiz, ptr %i.ejl, align 8, !tbaa !802
  %i.ejm = getelementptr inbounds nuw i8, ptr %i.eiy, i64 24
  store ptr %.sroa.05391.0, ptr %i.ejm, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2635 = getelementptr inbounds nuw i8, ptr %i.eiy, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2635, align 8, !tbaa !635
  %i.ejn = ptrtoint ptr %i.eiy to i64
  br label %bb.np

bb.np:                                            ; preds = %_ZN6hermes6ESTree17ObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, %bb.nm
  %.sroa.05404.74 = phi i64 [ %i.ejn, %_ZN6hermes6ESTree17ObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ undef, %bb.nm ]
  %.sroa.261.74 = phi i8 [ 1, %_ZN6hermes6ESTree17ObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ 0, %bb.nm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %196) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1888:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1810, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.ejo = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.ejp = xor i64 %i.ejo, 8386072463396729409
  %i.ejq = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 8
  %i.ejr = load i32, ptr %i.ejq, align 1
  %i.ejs = zext i32 %i.ejr to i64
  %i.ejt = xor i64 %i.ejs, 1852990836
  %i.eju = or i64 %i.ejp, %i.ejt
  %i.ejv = icmp ne i64 %i.eju, 0
  %i.ejw = zext i1 %i.ejv to i32
  %i.ejx = icmp eq i32 %i.ejw, 0
  br i1 %i.ejx, label %_ZNK4llvh9StringRef6equalsES0_.exit1888.thread6344, label %_ZNK4llvh9StringRef6equalsES0_.exit1966

_ZNK4llvh9StringRef6equalsES0_.exit1888.thread6344: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1888
  call void @llvm.lifetime.start.p0(ptr nonnull %198) #11
  store ptr %198, ptr %198, align 8, !tbaa !639
  %i.ejy = getelementptr inbounds nuw i8, ptr %198, i64 8 ; 2 uses
  store ptr %198, ptr %i.ejy, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb) #11
  store ptr null, ptr %i.eb, align 8, !tbaa !642
  %i.ejz = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.165, i64 8, ptr noundef nonnull align 8 dereferenceable(16) %198)
  br i1 %i.ejz, label %bb.nr, label %bb.nq

bb.nq:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1888.thread6344
  %i.eka = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ekb = load ptr, ptr %i.eka, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %199) #11
  %i.ekc = getelementptr inbounds nuw i8, ptr %199, i64 16
  %i.ekd = getelementptr inbounds nuw i8, ptr %199, i64 17
  store i8 1, ptr %i.ekd, align 1, !tbaa !611
  store ptr @.str.385, ptr %199, align 8, !tbaa !612
  store i8 3, ptr %i.ekc, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ekb, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %199, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %199) #11
  br label %bb.nt

bb.nr:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1888.thread6344
  %i.eke = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.242, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.eb) ; 0 uses
  %i.ekf = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ekg = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.ekf, i64 noundef 8) ; 9 uses
  %i.ekh = load ptr, ptr %i.eb, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ekg, i8 0, i64 16, i1 false)
  %i.eki = getelementptr inbounds nuw i8, ptr %i.ekg, i64 16
  store i32 95, ptr %i.eki, align 8, !tbaa !627
  %i.ekj = getelementptr inbounds nuw i8, ptr %i.ekg, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ekj, i8 0, i64 28, i1 false)
  %i.ekk = getelementptr inbounds nuw i8, ptr %i.ekg, i64 48 ; 7 uses
  store ptr %i.ekk, ptr %i.ekk, align 8, !tbaa !639
  %i.ekl = getelementptr inbounds nuw i8, ptr %i.ekg, i64 56 ; 2 uses
  store ptr %i.ekk, ptr %i.ekl, align 8, !tbaa !640
  %i.ekm = load ptr, ptr %i.ejy, align 8, !tbaa !640 ; 4 uses
  %i.ekn = icmp eq ptr %i.ekk, %198
  %i.eko = icmp eq ptr %i.ekm, %198
  %or.cond.i.i.i.i.i.i2636 = or i1 %i.ekn, %i.eko
  br i1 %or.cond.i.i.i.i.i.i2636, label %_ZN6hermes6ESTree16ArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.ekp = load ptr, ptr %198, align 8, !tbaa !639 ; 2 uses
  %i.ekq = load ptr, ptr %i.ekm, align 8, !tbaa !639
  %i.ekr = getelementptr inbounds nuw i8, ptr %i.ekq, i64 8
  store ptr %198, ptr %i.ekr, align 8, !tbaa !640
  %i.eks = getelementptr inbounds nuw i8, ptr %i.ekp, i64 8
  store ptr %i.ekk, ptr %i.eks, align 8, !tbaa !640
  store ptr %i.ekk, ptr %i.ekm, align 8, !tbaa !639
  store ptr %i.ekm, ptr %i.ekl, align 8, !tbaa !640
  store ptr %i.ekp, ptr %i.ekk, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree16ArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit

_ZN6hermes6ESTree16ArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit: ; preds = %bb.nr, %bb.ns
  %i.ekt = getelementptr inbounds nuw i8, ptr %i.ekg, i64 64
  store ptr %i.ekh, ptr %i.ekt, align 8, !tbaa !804
  %i.eku = getelementptr inbounds nuw i8, ptr %i.ekg, i64 24
  store ptr %.sroa.05391.0, ptr %i.eku, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2637 = getelementptr inbounds nuw i8, ptr %i.ekg, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2637, align 8, !tbaa !635
  %i.ekv = ptrtoint ptr %i.ekg to i64
  br label %bb.nt

bb.nt:                                            ; preds = %_ZN6hermes6ESTree16ArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, %bb.nq
  %.sroa.05404.75 = phi i64 [ %i.ekv, %_ZN6hermes6ESTree16ArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ undef, %bb.nq ]
  %.sroa.261.75 = phi i8 [ 1, %_ZN6hermes6ESTree16ArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ 0, %bb.nq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1891:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1816, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %.sroa.01032.0.copyload72407243734873517669 = phi ptr [ %.sroa.01036.0.copyload, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread ], [ %.sroa.01032.0.copyload724072437340, %_ZNK4llvh9StringRef6equalsES0_.exit1816 ] ; 18 uses
  %i.ekw = load i64, ptr %.sroa.01032.0.copyload72407243734873517669, align 1
  %i.ekx = xor i64 %i.ekw, 7882825768344184146
  %i.eky = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517669, i64 3
  %i.ekz = load i64, ptr %i.eky, align 1
  %i.ela = xor i64 %i.ekz, 8389754676365247860
  %i.elb = or i64 %i.ekx, %i.ela
  %i.elc = icmp ne i64 %i.elb, 0
  %i.eld = zext i1 %i.elc to i32
  %i.ele = icmp eq i32 %i.eld, 0
  br i1 %i.ele, label %_ZNK4llvh9StringRef6equalsES0_.exit1891.thread6346, label %_ZNK4llvh9StringRef6equalsES0_.exit1981

_ZNK4llvh9StringRef6equalsES0_.exit1891.thread6346: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec) #11
  store ptr null, ptr %i.ec, align 8, !tbaa !642
  %i.elf = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.67, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.ec)
  br i1 %i.elf, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1891.thread6346
  %i.elg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.elh = load ptr, ptr %i.elg, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %200) #11
  %i.eli = getelementptr inbounds nuw i8, ptr %200, i64 16
  %i.elj = getelementptr inbounds nuw i8, ptr %200, i64 17
  store i8 1, ptr %i.elj, align 1, !tbaa !611
  store ptr @.str.387, ptr %200, align 8, !tbaa !612
  store i8 3, ptr %i.eli, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.elh, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %200, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %200) #11
  br label %bb.nw

bb.nv:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1891.thread6346
  %i.elk = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ell = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.elk, i64 noundef 8) ; 7 uses
  %i.elm = load ptr, ptr %i.ec, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ell, i8 0, i64 16, i1 false)
  %i.eln = getelementptr inbounds nuw i8, ptr %i.ell, i64 16
  store i32 96, ptr %i.eln, align 8, !tbaa !627
  %i.elo = getelementptr inbounds nuw i8, ptr %i.ell, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.elo, i8 0, i64 28, i1 false)
  %i.elp = getelementptr inbounds nuw i8, ptr %i.ell, i64 48
  store ptr %i.elm, ptr %i.elp, align 8, !tbaa !806
  %i.elq = getelementptr inbounds nuw i8, ptr %i.ell, i64 24
  store ptr %.sroa.05391.0, ptr %i.elq, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2638 = getelementptr inbounds nuw i8, ptr %i.ell, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2638, align 8, !tbaa !635
  %i.elr = ptrtoint ptr %i.ell to i64
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nv, %bb.nu
  %.sroa.05404.76 = phi i64 [ %i.elr, %bb.nv ], [ undef, %bb.nu ]
  %.sroa.261.76 = phi i8 [ 1, %bb.nv ], [ 0, %bb.nu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1894:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1855
  %i.els = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.elt = xor i128 %i.els, 152058775482290612199150045881355694913
  %i.elu = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.elv = load i8, ptr %i.elu, align 1
  %i.elw = zext i8 %i.elv to i128
  %i.elx = xor i128 %i.elw, 110
  %i.ely = or i128 %i.elt, %i.elx
  %i.elz = icmp ne i128 %i.ely, 0
  %i.ema = zext i1 %i.elz to i32
  %i.emb = icmp eq i32 %i.ema, 0
  br i1 %i.emb, label %_ZNK4llvh9StringRef6equalsES0_.exit1894.thread6348, label %_ZNK4llvh9StringRef6equalsES0_.exit1912

_ZNK4llvh9StringRef6equalsES0_.exit1894.thread6348: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1894
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed) #11
  store ptr null, ptr %i.ed, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee) #11
  store ptr null, ptr %i.ee, align 8, !tbaa !642
  %i.emc = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.79, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.ed)
  br i1 %i.emc, label %bb.ny, label %bb.nx

bb.nx:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1894.thread6348
  %i.emd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eme = load ptr, ptr %i.emd, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %201) #11
  %i.emf = getelementptr inbounds nuw i8, ptr %201, i64 16
  %i.emg = getelementptr inbounds nuw i8, ptr %201, i64 17
  store i8 1, ptr %i.emg, align 1, !tbaa !611
  store ptr @.str.389, ptr %201, align 8, !tbaa !612
  store i8 3, ptr %i.emf, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.eme, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %201, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %201) #11
  br label %bb.ob

bb.ny:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1894.thread6348
  %i.emh = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.81, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.ee)
  br i1 %i.emh, label %bb.oa, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.emi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.emj = load ptr, ptr %i.emi, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %202) #11
  %i.emk = getelementptr inbounds nuw i8, ptr %202, i64 16
  %i.eml = getelementptr inbounds nuw i8, ptr %202, i64 17
  store i8 1, ptr %i.eml, align 1, !tbaa !611
  store ptr @.str.390, ptr %202, align 8, !tbaa !612
  store i8 3, ptr %i.emk, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.emj, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %202, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #11
  br label %bb.ob

bb.oa:                                            ; preds = %bb.ny
  %i.emm = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.emn = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.emm, i64 noundef 8) ; 8 uses
  %i.emo = load ptr, ptr %i.ed, align 8, !tbaa !642
  %i.emp = load ptr, ptr %i.ee, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.emn, i8 0, i64 16, i1 false)
  %i.emq = getelementptr inbounds nuw i8, ptr %i.emn, i64 16
  store i32 97, ptr %i.emq, align 8, !tbaa !627
  %i.emr = getelementptr inbounds nuw i8, ptr %i.emn, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.emr, i8 0, i64 28, i1 false)
  %i.ems = getelementptr inbounds nuw i8, ptr %i.emn, i64 48
  store ptr %i.emo, ptr %i.ems, align 8, !tbaa !808
  %i.emt = getelementptr inbounds nuw i8, ptr %i.emn, i64 56
  store ptr %i.emp, ptr %i.emt, align 8, !tbaa !809
  %i.emu = getelementptr inbounds nuw i8, ptr %i.emn, i64 24
  store ptr %.sroa.05391.0, ptr %i.emu, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2639 = getelementptr inbounds nuw i8, ptr %i.emn, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2639, align 8, !tbaa !635
  %i.emv = ptrtoint ptr %i.emn to i64
  br label %bb.ob

bb.ob:                                            ; preds = %bb.oa, %bb.nz, %bb.nx
  %.sroa.05404.77 = phi i64 [ %i.emv, %bb.oa ], [ undef, %bb.nz ], [ undef, %bb.nx ]
  %.sroa.261.77 = phi i8 [ 1, %bb.oa ], [ 0, %bb.nz ], [ 0, %bb.nx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1897:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1819, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.emw = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.emx = xor i128 %i.emw, 129285360986660811297780399604743037261
  %i.emy = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.emz = load i16, ptr %i.emy, align 1
  %i.ena = zext i16 %i.emz to i128
  %i.enb = xor i128 %i.ena, 25971
  %i.enc = or i128 %i.emx, %i.enb
  %i.end = icmp ne i128 %i.enc, 0
  %i.ene = zext i1 %i.end to i32
  %i.enf = icmp eq i32 %i.ene, 0
  br i1 %i.enf, label %_ZNK4llvh9StringRef6equalsES0_.exit1897.thread6350, label %_ZNK4llvh9StringRef6equalsES0_.exit1921

_ZNK4llvh9StringRef6equalsES0_.exit1897.thread6350: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef) #11
  store ptr null, ptr %i.ef, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg) #11
  store ptr null, ptr %i.eg, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh) #11
  store ptr null, ptr %i.eh, align 8, !tbaa !642
  %i.eng = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.149, i64 7, ptr noundef nonnull align 8 dereferenceable(8) %i.ef)
  br i1 %i.eng, label %bb.od, label %bb.oc

bb.oc:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1897.thread6350
  %i.enh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eni = load ptr, ptr %i.enh, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %203) #11
  %i.enj = getelementptr inbounds nuw i8, ptr %203, i64 16
  %i.enk = getelementptr inbounds nuw i8, ptr %203, i64 17
  store i8 1, ptr %i.enk, align 1, !tbaa !611
  store ptr @.str.392, ptr %203, align 8, !tbaa !612
  store i8 3, ptr %i.enj, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.eni, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %203, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #11
  br label %bb.og

bb.od:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1897.thread6350
  %i.enl = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.eg)
  br i1 %i.enl, label %bb.of, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.enm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.enn = load ptr, ptr %i.enm, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %204) #11
  %i.eno = getelementptr inbounds nuw i8, ptr %204, i64 16
  %i.enp = getelementptr inbounds nuw i8, ptr %204, i64 17
  store i8 1, ptr %i.enp, align 1, !tbaa !611
  store ptr @.str.393, ptr %204, align 8, !tbaa !612
  store i8 3, ptr %i.eno, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.enn, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %204, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %204) #11
  br label %bb.og

bb.of:                                            ; preds = %bb.od
  %i.enq = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.394, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.eh) ; 0 uses
  %i.enr = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ens = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.enr, i64 noundef 8) ; 9 uses
  %i.ent = load ptr, ptr %i.ef, align 8, !tbaa !642
  %i.enu = load ptr, ptr %i.eg, align 8, !tbaa !642
  %i.env = load ptr, ptr %i.eh, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ens, i8 0, i64 16, i1 false)
  %i.enw = getelementptr inbounds nuw i8, ptr %i.ens, i64 16
  store i32 99, ptr %i.enw, align 8, !tbaa !627
  %i.enx = getelementptr inbounds nuw i8, ptr %i.ens, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.enx, i8 0, i64 28, i1 false)
  %i.eny = getelementptr inbounds nuw i8, ptr %i.ens, i64 48
  store ptr %i.ent, ptr %i.eny, align 8, !tbaa !811
  %i.enz = getelementptr inbounds nuw i8, ptr %i.ens, i64 56
  store ptr %i.enu, ptr %i.enz, align 8, !tbaa !812
  %i.eoa = getelementptr inbounds nuw i8, ptr %i.ens, i64 64
  store ptr %i.env, ptr %i.eoa, align 8, !tbaa !813
  %i.eob = getelementptr inbounds nuw i8, ptr %i.ens, i64 24
  store ptr %.sroa.05391.0, ptr %i.eob, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2640 = getelementptr inbounds nuw i8, ptr %i.ens, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2640, align 8, !tbaa !635
  %i.eoc = ptrtoint ptr %i.ens to i64
  br label %bb.og

bb.og:                                            ; preds = %bb.of, %bb.oe, %bb.oc
  %.sroa.05404.78 = phi i64 [ %i.eoc, %bb.of ], [ undef, %bb.oe ], [ undef, %bb.oc ]
  %.sroa.261.78 = phi i8 [ 1, %bb.of ], [ 0, %bb.oe ], [ 0, %bb.oc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1900:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1873
  %i.eod = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.eoe = xor i64 %i.eod, 8104303844100694349
  %i.eof = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.eog = load i64, ptr %i.eof, align 1
  %i.eoh = xor i64 %i.eog, 7957695011165139568
  %i.eoi = or i64 %i.eoe, %i.eoh
  %i.eoj = icmp ne i64 %i.eoi, 0
  %i.eok = zext i1 %i.eoj to i32
  %i.eol = icmp eq i32 %i.eok, 0
  br i1 %i.eol, label %_ZNK4llvh9StringRef6equalsES0_.exit1900.thread6352, label %_ZNK4llvh9StringRef6equalsES0_.exit2128

_ZNK4llvh9StringRef6equalsES0_.exit1900.thread6352: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei) #11
  store ptr null, ptr %i.ei, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %205) #11
  store ptr %205, ptr %205, align 8, !tbaa !639
  %i.eom = getelementptr inbounds nuw i8, ptr %205, i64 8 ; 2 uses
  store ptr %205, ptr %i.eom, align 8, !tbaa !640
  %i.eon = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.67, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
  br i1 %i.eon, label %bb.oi, label %bb.oh

bb.oh:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1900.thread6352
  %i.eoo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eop = load ptr, ptr %i.eoo, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %206) #11
  %i.eoq = getelementptr inbounds nuw i8, ptr %206, i64 16
  %i.eor = getelementptr inbounds nuw i8, ptr %206, i64 17
  store i8 1, ptr %i.eor, align 1, !tbaa !611
  store ptr @.str.397, ptr %206, align 8, !tbaa !612
  store i8 3, ptr %i.eoq, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.eop, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %206, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %206) #11
  br label %bb.om

bb.oi:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1900.thread6352
  %i.eos = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.69, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %205)
  br i1 %i.eos, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.eot = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eou = load ptr, ptr %i.eot, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %207) #11
  %i.eov = getelementptr inbounds nuw i8, ptr %207, i64 16
  %i.eow = getelementptr inbounds nuw i8, ptr %207, i64 17
  store i8 1, ptr %i.eow, align 1, !tbaa !611
  store ptr @.str.398, ptr %207, align 8, !tbaa !612
  store i8 3, ptr %i.eov, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.eou, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %207, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %207) #11
  br label %bb.om

bb.ok:                                            ; preds = %bb.oi
  %i.eox = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.eoy = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.eox, i64 noundef 8) ; 9 uses
  %i.eoz = load ptr, ptr %i.ei, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eoy, i8 0, i64 16, i1 false)
  %i.epa = getelementptr inbounds nuw i8, ptr %i.eoy, i64 16
  store i32 100, ptr %i.epa, align 8, !tbaa !627
  %i.epb = getelementptr inbounds nuw i8, ptr %i.eoy, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.epb, i8 0, i64 28, i1 false)
  %i.epc = getelementptr inbounds nuw i8, ptr %i.eoy, i64 48
  store ptr %i.eoz, ptr %i.epc, align 8, !tbaa !815
  %i.epd = getelementptr inbounds nuw i8, ptr %i.eoy, i64 56 ; 7 uses
  store ptr %i.epd, ptr %i.epd, align 8, !tbaa !639
  %i.epe = getelementptr inbounds nuw i8, ptr %i.eoy, i64 64 ; 2 uses
  store ptr %i.epd, ptr %i.epe, align 8, !tbaa !640
  %i.epf = load ptr, ptr %i.eom, align 8, !tbaa !640 ; 4 uses
  %i.epg = icmp eq ptr %i.epd, %205
  %i.eph = icmp eq ptr %i.epf, %205
  %or.cond.i.i.i.i.i.i2641 = or i1 %i.epg, %i.eph
  br i1 %or.cond.i.i.i.i.i.i2641, label %_ZN6hermes6ESTree19MatchExpressionNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.epi = load ptr, ptr %205, align 8, !tbaa !639 ; 2 uses
  %i.epj = load ptr, ptr %i.epf, align 8, !tbaa !639
  %i.epk = getelementptr inbounds nuw i8, ptr %i.epj, i64 8
  store ptr %205, ptr %i.epk, align 8, !tbaa !640
  %i.epl = getelementptr inbounds nuw i8, ptr %i.epi, i64 8
  store ptr %i.epd, ptr %i.epl, align 8, !tbaa !640
  store ptr %i.epd, ptr %i.epf, align 8, !tbaa !639
  store ptr %i.epf, ptr %i.epe, align 8, !tbaa !640
  store ptr %i.epi, ptr %i.epd, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree19MatchExpressionNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit

_ZN6hermes6ESTree19MatchExpressionNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit: ; preds = %bb.ok, %bb.ol
  %i.epm = getelementptr inbounds nuw i8, ptr %i.eoy, i64 24
  store ptr %.sroa.05391.0, ptr %i.epm, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2642 = getelementptr inbounds nuw i8, ptr %i.eoy, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2642, align 8, !tbaa !635
  %i.epn = ptrtoint ptr %i.eoy to i64
  br label %bb.om

bb.om:                                            ; preds = %_ZN6hermes6ESTree19MatchExpressionNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit, %bb.oj, %bb.oh
  %.sroa.05404.79 = phi i64 [ %i.epn, %_ZN6hermes6ESTree19MatchExpressionNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit ], [ undef, %bb.oj ], [ undef, %bb.oh ]
  %.sroa.261.79 = phi i8 [ 1, %_ZN6hermes6ESTree19MatchExpressionNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit ], [ 0, %bb.oj ], [ 0, %bb.oh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %205) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1903:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1822, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.epo = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.epp = xor i128 %i.epo, 89631688074181545525624196441602023757
  %i.epq = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 3
  %i.epr = load i128, ptr %i.epq, align 1
  %i.eps = xor i128 %i.epr, 134851114449204490832803891118847912035
  %i.ept = or i128 %i.epp, %i.eps
  %i.epu = icmp ne i128 %i.ept, 0
  %i.epv = zext i1 %i.epu to i32
  %i.epw = icmp eq i32 %i.epv, 0
  br i1 %i.epw, label %_ZNK4llvh9StringRef6equalsES0_.exit1903.thread6354, label %_ZNK4llvh9StringRef6equalsES0_.exit1909

_ZNK4llvh9StringRef6equalsES0_.exit1903.thread6354: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej) #11
  store ptr null, ptr %i.ej, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek) #11
  store ptr null, ptr %i.ek, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el) #11
  store ptr null, ptr %i.el, align 8, !tbaa !642
  %i.epx = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.149, i64 7, ptr noundef nonnull align 8 dereferenceable(8) %i.ej)
  br i1 %i.epx, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1903.thread6354
  %i.epy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.epz = load ptr, ptr %i.epy, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %208) #11
  %i.eqa = getelementptr inbounds nuw i8, ptr %208, i64 16
  %i.eqb = getelementptr inbounds nuw i8, ptr %208, i64 17
  store i8 1, ptr %i.eqb, align 1, !tbaa !611
  store ptr @.str.400, ptr %208, align 8, !tbaa !612
  store i8 3, ptr %i.eqa, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.epz, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %208, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %208) #11
  br label %bb.or

bb.oo:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1903.thread6354
  %i.eqc = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.ek)
  br i1 %i.eqc, label %bb.oq, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.eqd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eqe = load ptr, ptr %i.eqd, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %209) #11
  %i.eqf = getelementptr inbounds nuw i8, ptr %209, i64 16
  %i.eqg = getelementptr inbounds nuw i8, ptr %209, i64 17
  store i8 1, ptr %i.eqg, align 1, !tbaa !611
  store ptr @.str.401, ptr %209, align 8, !tbaa !612
  store i8 3, ptr %i.eqf, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.eqe, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %209, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %209) #11
  br label %bb.or

bb.oq:                                            ; preds = %bb.oo
  %i.eqh = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.394, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.el) ; 0 uses
  %i.eqi = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.eqj = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.eqi, i64 noundef 8) ; 9 uses
  %i.eqk = load ptr, ptr %i.ej, align 8, !tbaa !642
  %i.eql = load ptr, ptr %i.ek, align 8, !tbaa !642
  %i.eqm = load ptr, ptr %i.el, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eqj, i8 0, i64 16, i1 false)
  %i.eqn = getelementptr inbounds nuw i8, ptr %i.eqj, i64 16
  store i32 101, ptr %i.eqn, align 8, !tbaa !627
  %i.eqo = getelementptr inbounds nuw i8, ptr %i.eqj, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.eqo, i8 0, i64 28, i1 false)
  %i.eqp = getelementptr inbounds nuw i8, ptr %i.eqj, i64 48
  store ptr %i.eqk, ptr %i.eqp, align 8, !tbaa !817
  %i.eqq = getelementptr inbounds nuw i8, ptr %i.eqj, i64 56
  store ptr %i.eql, ptr %i.eqq, align 8, !tbaa !818
  %i.eqr = getelementptr inbounds nuw i8, ptr %i.eqj, i64 64
  store ptr %i.eqm, ptr %i.eqr, align 8, !tbaa !819
  %i.eqs = getelementptr inbounds nuw i8, ptr %i.eqj, i64 24
  store ptr %.sroa.05391.0, ptr %i.eqs, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2643 = getelementptr inbounds nuw i8, ptr %i.eqj, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2643, align 8, !tbaa !635
  %i.eqt = ptrtoint ptr %i.eqj to i64
  br label %bb.or

bb.or:                                            ; preds = %bb.oq, %bb.op, %bb.on
  %.sroa.05404.80 = phi i64 [ %i.eqt, %bb.oq ], [ undef, %bb.op ], [ undef, %bb.on ]
  %.sroa.261.80 = phi i8 [ 1, %bb.oq ], [ 0, %bb.op ], [ 0, %bb.on ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1906:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1882
  %i.equ = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.eqv = xor i128 %i.equ, 154695730857311689387780791735862714701
  %i.eqw = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.eqx = load i32, ptr %i.eqw, align 1
  %i.eqy = zext i32 %i.eqx to i128
  %i.eqz = xor i128 %i.eqy, 1852990836
  %i.era = or i128 %i.eqv, %i.eqz
  %i.erb = icmp ne i128 %i.era, 0
  %i.erc = zext i1 %i.erb to i32
  %i.erd = icmp eq i32 %i.erc, 0
  br i1 %i.erd, label %_ZNK4llvh9StringRef6equalsES0_.exit1906.thread6356, label %_ZNK4llvh9StringRef6equalsES0_.exit1990

_ZNK4llvh9StringRef6equalsES0_.exit1906.thread6356: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1906
  %i.ere = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.erf = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.ere, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.erf, i8 0, i64 16, i1 false)
  %i.erg = getelementptr inbounds nuw i8, ptr %i.erf, i64 16
  store i32 103, ptr %i.erg, align 8, !tbaa !627
  %i.erh = getelementptr inbounds nuw i8, ptr %i.erf, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.erh, i8 0, i64 28, i1 false)
  %i.eri = getelementptr inbounds nuw i8, ptr %i.erf, i64 24
  store ptr %.sroa.05391.0, ptr %i.eri, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2644 = getelementptr inbounds nuw i8, ptr %i.erf, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2644, align 8, !tbaa !635
  %i.erj = ptrtoint ptr %i.erf to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1909:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1903
  %i.erk = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.erl = xor i128 %i.erk, 154794727712167023701425691762225340749
  %i.erm = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 3
  %i.ern = load i128, ptr %i.erm, align 1
  %i.ero = xor i128 %i.ern, 146809059128068443574814655589798144099
  %i.erp = or i128 %i.erl, %i.ero
  %i.erq = icmp ne i128 %i.erp, 0
  %i.err = zext i1 %i.erq to i32
  %i.ers = icmp eq i32 %i.err, 0
  br i1 %i.ers, label %_ZNK4llvh9StringRef6equalsES0_.exit1909.thread6358, label %_ZNK4llvh9StringRef6equalsES0_.exit1918

_ZNK4llvh9StringRef6equalsES0_.exit1909.thread6358: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em) #11
  store ptr null, ptr %i.em, align 8, !tbaa !642
  %i.ert = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.405, i64 7, ptr noundef nonnull align 8 dereferenceable(8) %i.em)
  br i1 %i.ert, label %bb.ot, label %bb.os

bb.os:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1909.thread6358
  %i.eru = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.erv = load ptr, ptr %i.eru, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %210) #11
  %i.erw = getelementptr inbounds nuw i8, ptr %210, i64 16
  %i.erx = getelementptr inbounds nuw i8, ptr %210, i64 17
  store i8 1, ptr %i.erx, align 1, !tbaa !611
  store ptr @.str.406, ptr %210, align 8, !tbaa !612
  store i8 3, ptr %i.erw, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.erv, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %210, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %210) #11
  br label %bb.ou

bb.ot:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1909.thread6358
  %i.ery = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.erz = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.ery, i64 noundef 8) ; 7 uses
  %i.esa = load ptr, ptr %i.em, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.erz, i8 0, i64 16, i1 false)
  %i.esb = getelementptr inbounds nuw i8, ptr %i.erz, i64 16
  store i32 104, ptr %i.esb, align 8, !tbaa !627
  %i.esc = getelementptr inbounds nuw i8, ptr %i.erz, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.esc, i8 0, i64 28, i1 false)
  %i.esd = getelementptr inbounds nuw i8, ptr %i.erz, i64 48
  store ptr %i.esa, ptr %i.esd, align 8, !tbaa !822
  %i.ese = getelementptr inbounds nuw i8, ptr %i.erz, i64 24
  store ptr %.sroa.05391.0, ptr %i.ese, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2645 = getelementptr inbounds nuw i8, ptr %i.erz, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2645, align 8, !tbaa !635
  %i.esf = ptrtoint ptr %i.erz to i64
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.os
  %.sroa.05404.81 = phi i64 [ %i.esf, %bb.ot ], [ undef, %bb.os ]
  %.sroa.261.81 = phi i8 [ 1, %bb.ot ], [ 0, %bb.os ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1912:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1894
  %i.esg = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.esh = xor i128 %i.esg, 152058775482290635884481460139648639309
  %i.esi = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.esj = load i8, ptr %i.esi, align 1
  %i.esk = zext i8 %i.esj to i128
  %i.esl = xor i128 %i.esk, 110
  %i.esm = or i128 %i.esh, %i.esl
  %i.esn = icmp ne i128 %i.esm, 0
  %i.eso = zext i1 %i.esn to i32
  %i.esp = icmp eq i32 %i.eso, 0
  br i1 %i.esp, label %_ZNK4llvh9StringRef6equalsES0_.exit1912.thread6360, label %_ZNK4llvh9StringRef6equalsES0_.exit1924

_ZNK4llvh9StringRef6equalsES0_.exit1912.thread6360: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en) #11
  store ptr null, ptr %i.en, align 8, !tbaa !642
  %i.esq = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.67, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.en)
  br i1 %i.esq, label %bb.ow, label %bb.ov

bb.ov:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1912.thread6360
  %i.esr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ess = load ptr, ptr %i.esr, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %211) #11
  %i.est = getelementptr inbounds nuw i8, ptr %211, i64 16
  %i.esu = getelementptr inbounds nuw i8, ptr %211, i64 17
  store i8 1, ptr %i.esu, align 1, !tbaa !611
  store ptr @.str.408, ptr %211, align 8, !tbaa !612
  store i8 3, ptr %i.est, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ess, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %211, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %211) #11
  br label %bb.oy

bb.ow:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1912.thread6360
end_hunk_6
begin_hunk_7_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  br label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %i.evm = getelementptr inbounds nuw i8, ptr %i.evf, i64 16
  %i.evn = load ptr, ptr %i.evm, align 8, !tbaa !634
  %i.evo = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.evp = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.evo, i64 noundef 8) ; 8 uses
  %i.evq = load ptr, ptr %i.ep, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.evp, i8 0, i64 16, i1 false)
  %i.evr = getelementptr inbounds nuw i8, ptr %i.evp, i64 16
  store i32 107, ptr %i.evr, align 8, !tbaa !627
  %i.evs = getelementptr inbounds nuw i8, ptr %i.evp, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.evs, i8 0, i64 28, i1 false)
  %i.evt = getelementptr inbounds nuw i8, ptr %i.evp, i64 48
  store ptr %i.evq, ptr %i.evt, align 8, !tbaa !828
  %i.evu = getelementptr inbounds nuw i8, ptr %i.evp, i64 56
  store ptr %i.evn, ptr %i.evu, align 8, !tbaa !1317
  %i.evv = getelementptr inbounds nuw i8, ptr %i.evp, i64 24
  store ptr %.sroa.05391.0, ptr %i.evv, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2652 = getelementptr inbounds nuw i8, ptr %i.evp, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2652, align 8, !tbaa !635
  %i.evw = ptrtoint ptr %i.evp to i64
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2651, %bb.pc
  %.sroa.05404.84 = phi i64 [ %i.evw, %bb.pe ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2651 ], [ undef, %bb.pc ]
  %.sroa.261.84 = phi i8 [ 1, %bb.pe ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2651 ], [ 0, %bb.pc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1921:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1897
  %i.evx = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.evy = xor i128 %i.evx, 134856694479411836211455609964707733837
  %i.evz = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.ewa = load i16, ptr %i.evz, align 1
  %i.ewb = zext i16 %i.ewa to i128
  %i.ewc = xor i128 %i.ewb, 28274
  %i.ewd = or i128 %i.evy, %i.ewc
  %i.ewe = icmp ne i128 %i.ewd, 0
  %i.ewf = zext i1 %i.ewe to i32
  %i.ewg = icmp eq i32 %i.ewf, 0
  br i1 %i.ewg, label %_ZNK4llvh9StringRef6equalsES0_.exit1921.thread6370, label %_ZNK4llvh9StringRef6equalsES0_.exit1933

_ZNK4llvh9StringRef6equalsES0_.exit1921.thread6370: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1921
  call void @llvm.lifetime.start.p0(ptr nonnull %216) #11
  store ptr %216, ptr %216, align 8, !tbaa !639
  %i.ewh = getelementptr inbounds nuw i8, ptr %216, i64 8 ; 2 uses
  store ptr %216, ptr %i.ewh, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq) #11
  store ptr null, ptr %i.eq, align 8, !tbaa !642
  %i.ewi = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.162, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %216)
  br i1 %i.ewi, label %bb.ph, label %bb.pg

bb.pg:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1921.thread6370
  %i.ewj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ewk = load ptr, ptr %i.ewj, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %217) #11
  %i.ewl = getelementptr inbounds nuw i8, ptr %217, i64 16
  %i.ewm = getelementptr inbounds nuw i8, ptr %217, i64 17
  store i8 1, ptr %i.ewm, align 1, !tbaa !611
  store ptr @.str.416, ptr %217, align 8, !tbaa !612
  store i8 3, ptr %i.ewl, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ewk, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %217, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %217) #11
  br label %bb.pj

bb.ph:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1921.thread6370
  %i.ewn = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.417, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.eq) ; 0 uses
  %i.ewo = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ewp = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.ewo, i64 noundef 8) ; 9 uses
  %i.ewq = load ptr, ptr %i.eq, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ewp, i8 0, i64 16, i1 false)
  %i.ewr = getelementptr inbounds nuw i8, ptr %i.ewp, i64 16
  store i32 108, ptr %i.ewr, align 8, !tbaa !627
  %i.ews = getelementptr inbounds nuw i8, ptr %i.ewp, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ews, i8 0, i64 28, i1 false)
  %i.ewt = getelementptr inbounds nuw i8, ptr %i.ewp, i64 48 ; 7 uses
  store ptr %i.ewt, ptr %i.ewt, align 8, !tbaa !639
  %i.ewu = getelementptr inbounds nuw i8, ptr %i.ewp, i64 56 ; 2 uses
  store ptr %i.ewt, ptr %i.ewu, align 8, !tbaa !640
  %i.ewv = load ptr, ptr %i.ewh, align 8, !tbaa !640 ; 4 uses
  %i.eww = icmp eq ptr %i.ewt, %216
  %i.ewx = icmp eq ptr %i.ewv, %216
  %or.cond.i.i.i.i.i.i2653 = or i1 %i.eww, %i.ewx
  br i1 %or.cond.i.i.i.i.i.i2653, label %_ZN6hermes6ESTree22MatchObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.ewy = load ptr, ptr %216, align 8, !tbaa !639 ; 2 uses
  %i.ewz = load ptr, ptr %i.ewv, align 8, !tbaa !639
  %i.exa = getelementptr inbounds nuw i8, ptr %i.ewz, i64 8
  store ptr %216, ptr %i.exa, align 8, !tbaa !640
  %i.exb = getelementptr inbounds nuw i8, ptr %i.ewy, i64 8
  store ptr %i.ewt, ptr %i.exb, align 8, !tbaa !640
  store ptr %i.ewt, ptr %i.ewv, align 8, !tbaa !639
  store ptr %i.ewv, ptr %i.ewu, align 8, !tbaa !640
  store ptr %i.ewy, ptr %i.ewt, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree22MatchObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit

_ZN6hermes6ESTree22MatchObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit: ; preds = %bb.ph, %bb.pi
  %i.exc = getelementptr inbounds nuw i8, ptr %i.ewp, i64 64
  store ptr %i.ewq, ptr %i.exc, align 8, !tbaa !830
  %i.exd = getelementptr inbounds nuw i8, ptr %i.ewp, i64 24
  store ptr %.sroa.05391.0, ptr %i.exd, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2654 = getelementptr inbounds nuw i8, ptr %i.ewp, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2654, align 8, !tbaa !635
  %i.exe = ptrtoint ptr %i.ewp to i64
  br label %bb.pj

bb.pj:                                            ; preds = %_ZN6hermes6ESTree22MatchObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, %bb.pg
  %.sroa.05404.85 = phi i64 [ %i.exe, %_ZN6hermes6ESTree22MatchObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ undef, %bb.pg ]
  %.sroa.261.85 = phi i8 [ 1, %_ZN6hermes6ESTree22MatchObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ 0, %bb.pg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %216) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1924:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1912
  %i.exf = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.exg = xor i128 %i.exf, 152058775482290635572112893894905323853
  %i.exh = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.exi = load i8, ptr %i.exh, align 1
  %i.exj = zext i8 %i.exi to i128
  %i.exk = xor i128 %i.exj, 110
  %i.exl = or i128 %i.exg, %i.exk
  %i.exm = icmp ne i128 %i.exl, 0
  %i.exn = zext i1 %i.exm to i32
  %i.exo = icmp eq i32 %i.exn, 0
  br i1 %i.exo, label %_ZNK4llvh9StringRef6equalsES0_.exit1924.thread6372, label %_ZNK4llvh9StringRef6equalsES0_.exit1948

_ZNK4llvh9StringRef6equalsES0_.exit1924.thread6372: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1924
  call void @llvm.lifetime.start.p0(ptr nonnull %218) #11
  store ptr %218, ptr %218, align 8, !tbaa !639
  %i.exp = getelementptr inbounds nuw i8, ptr %218, i64 8 ; 2 uses
  store ptr %218, ptr %i.exp, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er) #11
  store ptr null, ptr %i.er, align 8, !tbaa !642
  %i.exq = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.165, i64 8, ptr noundef nonnull align 8 dereferenceable(16) %218)
  br i1 %i.exq, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1924.thread6372
  %i.exr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.exs = load ptr, ptr %i.exr, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %219) #11
  %i.ext = getelementptr inbounds nuw i8, ptr %219, i64 16
  %i.exu = getelementptr inbounds nuw i8, ptr %219, i64 17
  store i8 1, ptr %i.exu, align 1, !tbaa !611
  store ptr @.str.420, ptr %219, align 8, !tbaa !612
  store i8 3, ptr %i.ext, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.exs, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %219, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #11
  br label %bb.pn

bb.pl:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1924.thread6372
  %i.exv = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.417, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.er) ; 0 uses
  %i.exw = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.exx = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.exw, i64 noundef 8) ; 9 uses
  %i.exy = load ptr, ptr %i.er, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.exx, i8 0, i64 16, i1 false)
  %i.exz = getelementptr inbounds nuw i8, ptr %i.exx, i64 16
  store i32 109, ptr %i.exz, align 8, !tbaa !627
  %i.eya = getelementptr inbounds nuw i8, ptr %i.exx, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.eya, i8 0, i64 28, i1 false)
  %i.eyb = getelementptr inbounds nuw i8, ptr %i.exx, i64 48 ; 7 uses
  store ptr %i.eyb, ptr %i.eyb, align 8, !tbaa !639
  %i.eyc = getelementptr inbounds nuw i8, ptr %i.exx, i64 56 ; 2 uses
  store ptr %i.eyb, ptr %i.eyc, align 8, !tbaa !640
  %i.eyd = load ptr, ptr %i.exp, align 8, !tbaa !640 ; 4 uses
  %i.eye = icmp eq ptr %i.eyb, %218
  %i.eyf = icmp eq ptr %i.eyd, %218
  %or.cond.i.i.i.i.i.i2655 = or i1 %i.eye, %i.eyf
  br i1 %or.cond.i.i.i.i.i.i2655, label %_ZN6hermes6ESTree21MatchArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.eyg = load ptr, ptr %218, align 8, !tbaa !639 ; 2 uses
  %i.eyh = load ptr, ptr %i.eyd, align 8, !tbaa !639
  %i.eyi = getelementptr inbounds nuw i8, ptr %i.eyh, i64 8
  store ptr %218, ptr %i.eyi, align 8, !tbaa !640
  %i.eyj = getelementptr inbounds nuw i8, ptr %i.eyg, i64 8
  store ptr %i.eyb, ptr %i.eyj, align 8, !tbaa !640
  store ptr %i.eyb, ptr %i.eyd, align 8, !tbaa !639
  store ptr %i.eyd, ptr %i.eyc, align 8, !tbaa !640
  store ptr %i.eyg, ptr %i.eyb, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree21MatchArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit

_ZN6hermes6ESTree21MatchArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit: ; preds = %bb.pl, %bb.pm
  %i.eyk = getelementptr inbounds nuw i8, ptr %i.exx, i64 64
  store ptr %i.exy, ptr %i.eyk, align 8, !tbaa !832
  %i.eyl = getelementptr inbounds nuw i8, ptr %i.exx, i64 24
  store ptr %.sroa.05391.0, ptr %i.eyl, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2656 = getelementptr inbounds nuw i8, ptr %i.exx, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2656, align 8, !tbaa !635
  %i.eym = ptrtoint ptr %i.exx to i64
  br label %bb.pn

bb.pn:                                            ; preds = %_ZN6hermes6ESTree21MatchArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, %bb.pk
  %.sroa.05404.86 = phi i64 [ %i.eym, %_ZN6hermes6ESTree21MatchArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ undef, %bb.pk ]
  %.sroa.261.86 = phi i8 [ 1, %_ZN6hermes6ESTree21MatchArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ 0, %bb.pk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1927:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1768, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.eyn = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.eyo = xor i64 %i.eyn, 5796782980143014221
  %i.eyp = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.eyq = load i64, ptr %i.eyp, align 1
  %i.eyr = xor i64 %i.eyq, 7958535042360234098
  %i.eys = or i64 %i.eyo, %i.eyr
  %i.eyt = icmp ne i64 %i.eys, 0
  %i.eyu = zext i1 %i.eyt to i32
  %i.eyv = icmp eq i32 %i.eyu, 0
  br i1 %i.eyv, label %_ZNK4llvh9StringRef6equalsES0_.exit1927.thread6374, label %_ZNK4llvh9StringRef6equalsES0_.exit1930

_ZNK4llvh9StringRef6equalsES0_.exit1927.thread6374: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1927
  call void @llvm.lifetime.start.p0(ptr nonnull %220) #11
  store ptr %220, ptr %220, align 8, !tbaa !639
  %i.eyw = getelementptr inbounds nuw i8, ptr %220, i64 8 ; 2 uses
  store ptr %220, ptr %i.eyw, align 8, !tbaa !640
  %i.eyx = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.423, i64 8, ptr noundef nonnull align 8 dereferenceable(16) %220)
  br i1 %i.eyx, label %bb.pp, label %bb.po

bb.po:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1927.thread6374
  %i.eyy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eyz = load ptr, ptr %i.eyy, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %221) #11
  %i.eza = getelementptr inbounds nuw i8, ptr %221, i64 16
  %i.ezb = getelementptr inbounds nuw i8, ptr %221, i64 17
  store i8 1, ptr %i.ezb, align 1, !tbaa !611
  store ptr @.str.424, ptr %221, align 8, !tbaa !612
  store i8 3, ptr %i.eza, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.eyz, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %221, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #11
  br label %bb.pr

bb.pp:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1927.thread6374
  %i.ezc = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ezd = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.ezc, i64 noundef 8) ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ezd, i8 0, i64 16, i1 false)
  %i.eze = getelementptr inbounds nuw i8, ptr %i.ezd, i64 16
  store i32 110, ptr %i.eze, align 8, !tbaa !627
  %i.ezf = getelementptr inbounds nuw i8, ptr %i.ezd, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ezf, i8 0, i64 28, i1 false)
  %i.ezg = getelementptr inbounds nuw i8, ptr %i.ezd, i64 48 ; 7 uses
  store ptr %i.ezg, ptr %i.ezg, align 8, !tbaa !639
  %i.ezh = getelementptr inbounds nuw i8, ptr %i.ezd, i64 56 ; 2 uses
  store ptr %i.ezg, ptr %i.ezh, align 8, !tbaa !640
  %i.ezi = load ptr, ptr %i.eyw, align 8, !tbaa !640 ; 4 uses
  %i.ezj = icmp eq ptr %i.ezg, %220
  %i.ezk = icmp eq ptr %i.ezi, %220
  %or.cond.i.i.i.i.i.i2657 = or i1 %i.ezj, %i.ezk
  br i1 %or.cond.i.i.i.i.i.i2657, label %_ZN6hermes6ESTree18MatchOrPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.ezl = load ptr, ptr %220, align 8, !tbaa !639 ; 2 uses
  %i.ezm = load ptr, ptr %i.ezi, align 8, !tbaa !639
  %i.ezn = getelementptr inbounds nuw i8, ptr %i.ezm, i64 8
  store ptr %220, ptr %i.ezn, align 8, !tbaa !640
  %i.ezo = getelementptr inbounds nuw i8, ptr %i.ezl, i64 8
  store ptr %i.ezg, ptr %i.ezo, align 8, !tbaa !640
  store ptr %i.ezg, ptr %i.ezi, align 8, !tbaa !639
  store ptr %i.ezi, ptr %i.ezh, align 8, !tbaa !640
  store ptr %i.ezl, ptr %i.ezg, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree18MatchOrPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree18MatchOrPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %bb.pp, %bb.pq
  %i.ezp = getelementptr inbounds nuw i8, ptr %i.ezd, i64 24
  store ptr %.sroa.05391.0, ptr %i.ezp, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2658 = getelementptr inbounds nuw i8, ptr %i.ezd, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2658, align 8, !tbaa !635
  %i.ezq = ptrtoint ptr %i.ezd to i64
  br label %bb.pr

bb.pr:                                            ; preds = %_ZN6hermes6ESTree18MatchOrPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, %bb.po
  %.sroa.05404.87 = phi i64 [ %i.ezq, %_ZN6hermes6ESTree18MatchOrPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.po ]
  %.sroa.261.87 = phi i8 [ 1, %_ZN6hermes6ESTree18MatchOrPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.po ]
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1930:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1927
  %i.ezr = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.ezs = xor i64 %i.ezr, 5797049061956936013
  %i.ezt = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.ezu = load i64, ptr %i.ezt, align 1
  %i.ezv = xor i64 %i.ezu, 7958535042360234099
  %i.ezw = or i64 %i.ezs, %i.ezv
  %i.ezx = icmp ne i64 %i.ezw, 0
  %i.ezy = zext i1 %i.ezx to i32
  %i.ezz = icmp eq i32 %i.ezy, 0
  br i1 %i.ezz, label %_ZNK4llvh9StringRef6equalsES0_.exit1930.thread6376, label %_ZNK4llvh9StringRef6equalsES0_.exit1957

_ZNK4llvh9StringRef6equalsES0_.exit1930.thread6376: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es) #11
  store ptr null, ptr %i.es, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et) #11
  store ptr null, ptr %i.et, align 8, !tbaa !642
  %i.faa = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.149, i64 7, ptr noundef nonnull align 8 dereferenceable(8) %i.es)
  br i1 %i.faa, label %bb.pt, label %bb.ps

bb.ps:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1930.thread6376
  %i.fab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fac = load ptr, ptr %i.fab, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %222) #11
  %i.fad = getelementptr inbounds nuw i8, ptr %222, i64 16
  %i.fae = getelementptr inbounds nuw i8, ptr %222, i64 17
  store i8 1, ptr %i.fae, align 1, !tbaa !611
  store ptr @.str.426, ptr %222, align 8, !tbaa !612
  store i8 3, ptr %i.fad, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fac, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %222, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #11
  br label %bb.pw

bb.pt:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1930.thread6376
  %i.faf = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.427, i64 6, ptr noundef nonnull align 8 dereferenceable(8) %i.et)
  br i1 %i.faf, label %bb.pv, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.fag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fah = load ptr, ptr %i.fag, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %223) #11
  %i.fai = getelementptr inbounds nuw i8, ptr %223, i64 16
  %i.faj = getelementptr inbounds nuw i8, ptr %223, i64 17
  store i8 1, ptr %i.faj, align 1, !tbaa !611
  store ptr @.str.428, ptr %223, align 8, !tbaa !612
  store i8 3, ptr %i.fai, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fah, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %223, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #11
  br label %bb.pw

bb.pv:                                            ; preds = %bb.pt
  %i.fak = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fal = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.fak, i64 noundef 8) ; 8 uses
  %i.fam = load ptr, ptr %i.es, align 8, !tbaa !642
  %i.fan = load ptr, ptr %i.et, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fal, i8 0, i64 16, i1 false)
  %i.fao = getelementptr inbounds nuw i8, ptr %i.fal, i64 16
  store i32 111, ptr %i.fao, align 8, !tbaa !627
  %i.fap = getelementptr inbounds nuw i8, ptr %i.fal, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fap, i8 0, i64 28, i1 false)
  %i.faq = getelementptr inbounds nuw i8, ptr %i.fal, i64 48
  store ptr %i.fam, ptr %i.faq, align 8, !tbaa !834
  %i.far = getelementptr inbounds nuw i8, ptr %i.fal, i64 56
  store ptr %i.fan, ptr %i.far, align 8, !tbaa !835
  %i.fas = getelementptr inbounds nuw i8, ptr %i.fal, i64 24
  store ptr %.sroa.05391.0, ptr %i.fas, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2659 = getelementptr inbounds nuw i8, ptr %i.fal, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2659, align 8, !tbaa !635
  %i.fat = ptrtoint ptr %i.fal to i64
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %bb.pu, %bb.ps
  %.sroa.05404.88 = phi i64 [ %i.fat, %bb.pv ], [ undef, %bb.pu ], [ undef, %bb.ps ]
  %.sroa.261.88 = phi i8 [ 1, %bb.pv ], [ 0, %bb.pu ], [ 0, %bb.ps ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1933:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1921
  %i.fau = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.fav = xor i128 %i.fau, 134856694479409427749426129232540754253
  %i.faw = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.fax = load i16, ptr %i.faw, align 1
  %i.fay = zext i16 %i.fax to i128
  %i.faz = xor i128 %i.fay, 28274
  %i.fba = or i128 %i.fav, %i.faz
  %i.fbb = icmp ne i128 %i.fba, 0
  %i.fbc = zext i1 %i.fbb to i32
  %i.fbd = icmp eq i32 %i.fbc, 0
  br i1 %i.fbd, label %_ZNK4llvh9StringRef6equalsES0_.exit1933.thread6378, label %_ZNK4llvh9StringRef6equalsES0_.exit1951

_ZNK4llvh9StringRef6equalsES0_.exit1933.thread6378: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu) #11
  store ptr null, ptr %i.eu, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev) #11
  store ptr null, ptr %i.ev, align 8, !tbaa !642
  %i.fbe = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.430, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.eu)
  br i1 %i.fbe, label %bb.py, label %bb.px

bb.px:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1933.thread6378
  %i.fbf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fbg = load ptr, ptr %i.fbf, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %224) #11
  %i.fbh = getelementptr inbounds nuw i8, ptr %224, i64 16
  %i.fbi = getelementptr inbounds nuw i8, ptr %224, i64 17
  store i8 1, ptr %i.fbi, align 1, !tbaa !611
  store ptr @.str.431, ptr %224, align 8, !tbaa !612
  store i8 3, ptr %i.fbh, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fbg, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %224, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %224) #11
  br label %bb.qb

bb.py:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1933.thread6378
  %i.fbj = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.214, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.ev)
  br i1 %i.fbj, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.fbk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fbl = load ptr, ptr %i.fbk, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %225) #11
  %i.fbm = getelementptr inbounds nuw i8, ptr %225, i64 16
  %i.fbn = getelementptr inbounds nuw i8, ptr %225, i64 17
  store i8 1, ptr %i.fbn, align 1, !tbaa !611
  store ptr @.str.432, ptr %225, align 8, !tbaa !612
  store i8 3, ptr %i.fbm, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fbl, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %225, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %225) #11
  br label %bb.qb

bb.qa:                                            ; preds = %bb.py
  %i.fbo = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fbp = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.fbo, i64 noundef 8) ; 8 uses
  %i.fbq = load ptr, ptr %i.eu, align 8, !tbaa !642
  %i.fbr = load ptr, ptr %i.ev, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fbp, i8 0, i64 16, i1 false)
  %i.fbs = getelementptr inbounds nuw i8, ptr %i.fbp, i64 16
  store i32 112, ptr %i.fbs, align 8, !tbaa !627
  %i.fbt = getelementptr inbounds nuw i8, ptr %i.fbp, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fbt, i8 0, i64 28, i1 false)
  %i.fbu = getelementptr inbounds nuw i8, ptr %i.fbp, i64 48
  store ptr %i.fbq, ptr %i.fbu, align 8, !tbaa !837
  %i.fbv = getelementptr inbounds nuw i8, ptr %i.fbp, i64 56
  store ptr %i.fbr, ptr %i.fbv, align 8, !tbaa !838
  %i.fbw = getelementptr inbounds nuw i8, ptr %i.fbp, i64 24
  store ptr %.sroa.05391.0, ptr %i.fbw, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2660 = getelementptr inbounds nuw i8, ptr %i.fbp, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2660, align 8, !tbaa !635
  %i.fbx = ptrtoint ptr %i.fbp to i64
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.pz, %bb.px
  %.sroa.05404.89 = phi i64 [ %i.fbx, %bb.qa ], [ undef, %bb.pz ], [ undef, %bb.px ]
  %.sroa.261.89 = phi i8 [ 1, %bb.qa ], [ 0, %bb.pz ], [ 0, %bb.px ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1936:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.fby = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.fbz = xor i128 %i.fby, 134856694479411836211455609964707733837
  %i.fca = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 10
  %i.fcb = load i128, ptr %i.fca, align 1
  %i.fcc = xor i128 %i.fcb, 161441214157101142556841598416943403124
  %i.fcd = or i128 %i.fbz, %i.fcc
  %i.fce = icmp ne i128 %i.fcd, 0
  %i.fcf = zext i1 %i.fce to i32
  %i.fcg = icmp eq i32 %i.fcf, 0
  br i1 %i.fcg, label %_ZNK4llvh9StringRef6equalsES0_.exit1936.thread6380, label %_ZNK4llvh9StringRef6equalsES0_.exit2086

_ZNK4llvh9StringRef6equalsES0_.exit1936.thread6380: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew) #11
  store ptr null, ptr %i.ew, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex) #11
  store ptr null, ptr %i.ex, align 8, !tbaa !642
  %i.fch = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.282, i64 3, ptr noundef nonnull align 8 dereferenceable(8) %i.ew)
  br i1 %i.fch, label %bb.qd, label %bb.qc

bb.qc:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1936.thread6380
  %i.fci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fcj = load ptr, ptr %i.fci, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %226) #11
  %i.fck = getelementptr inbounds nuw i8, ptr %226, i64 16
  %i.fcl = getelementptr inbounds nuw i8, ptr %226, i64 17
  store i8 1, ptr %i.fcl, align 1, !tbaa !611
  store ptr @.str.434, ptr %226, align 8, !tbaa !612
  store i8 3, ptr %i.fck, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fcj, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %226, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %226) #11
  br label %bb.qh

bb.qd:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1936.thread6380
  %i.fcm = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.149, i64 7, ptr noundef nonnull align 8 dereferenceable(8) %i.ex)
  br i1 %i.fcm, label %bb.qf, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.fcn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fco = load ptr, ptr %i.fcn, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %227) #11
  %i.fcp = getelementptr inbounds nuw i8, ptr %227, i64 16
  %i.fcq = getelementptr inbounds nuw i8, ptr %227, i64 17
  store i8 1, ptr %i.fcq, align 1, !tbaa !611
  store ptr @.str.435, ptr %227, align 8, !tbaa !612
  store i8 3, ptr %i.fcp, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fco, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %227, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %227) #11
  br label %bb.qh

bb.qf:                                            ; preds = %bb.qd
  %i.fcr = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.fcs = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.fcr, ptr nonnull @.str.289, i64 9)
  %i.fct = extractvalue { i64, i8 } %i.fcs, 0
  %i.fcu = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.fct
  %i.fcv = load ptr, ptr %i.fcu, align 8, !tbaa !629 ; 2 uses
  %i.fcw = load i32, ptr %i.fcv, align 4, !tbaa !595
  %i.fcx = icmp eq i32 %i.fcw, 4
  br i1 %i.fcx, label %bb.qg, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2662

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2662: ; preds = %bb.qf
  %i.fcy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fcz = load ptr, ptr %i.fcy, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %228) #11
  %i.fda = getelementptr inbounds nuw i8, ptr %228, i64 16
  %i.fdb = getelementptr inbounds nuw i8, ptr %228, i64 17
  store i8 1, ptr %i.fdb, align 1, !tbaa !611
  store ptr @.str.436, ptr %228, align 8, !tbaa !612
  store i8 3, ptr %i.fda, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fcz, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %228, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %228) #11
  br label %bb.qh

bb.qg:                                            ; preds = %bb.qf
  %i.fdc = getelementptr inbounds nuw i8, ptr %i.fcv, i64 4
  %i.fdd = load i8, ptr %i.fdc, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.fde = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fdf = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.fde, i64 noundef 8) ; 9 uses
  %i.fdg = load ptr, ptr %i.ew, align 8, !tbaa !642
  %i.fdh = load ptr, ptr %i.ex, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.fdf, i8 0, i64 16, i1 false)
  %i.fdi = getelementptr inbounds nuw i8, ptr %i.fdf, i64 16
  store i32 114, ptr %i.fdi, align 8, !tbaa !627
  %i.fdj = getelementptr inbounds nuw i8, ptr %i.fdf, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fdj, i8 0, i64 28, i1 false)
  %i.fdk = getelementptr inbounds nuw i8, ptr %i.fdf, i64 48
  store ptr %i.fdg, ptr %i.fdk, align 8, !tbaa !840
  %i.fdl = getelementptr inbounds nuw i8, ptr %i.fdf, i64 56
  store ptr %i.fdh, ptr %i.fdl, align 8, !tbaa !841
  %i.fdm = getelementptr inbounds nuw i8, ptr %i.fdf, i64 64
  store i8 %i.fdd, ptr %i.fdm, align 8, !tbaa !1318
  %i.fdn = getelementptr inbounds nuw i8, ptr %i.fdf, i64 24
  store ptr %.sroa.05391.0, ptr %i.fdn, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2663 = getelementptr inbounds nuw i8, ptr %i.fdf, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2663, align 8, !tbaa !635
  %i.fdo = ptrtoint ptr %i.fdf to i64
  br label %bb.qh

bb.qh:                                            ; preds = %bb.qg, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2662, %bb.qe, %bb.qc
  %.sroa.05404.90 = phi i64 [ %i.fdo, %bb.qg ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2662 ], [ undef, %bb.qe ], [ undef, %bb.qc ]
  %.sroa.261.90 = phi i8 [ 1, %bb.qg ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2662 ], [ 0, %bb.qe ], [ 0, %bb.qc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1939:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1852
  %i.fdp = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.fdq = icmp ne i128 %i.fdp, 146809059128068443723681964755101442381
  %i.fdr = zext i1 %i.fdq to i32
  %i.fds = icmp eq i32 %i.fdr, 0
  br i1 %i.fds, label %_ZNK4llvh9StringRef6equalsES0_.exit1939.thread6384, label %_ZNK4llvh9StringRef6equalsES0_.exit1972

_ZNK4llvh9StringRef6equalsES0_.exit1939.thread6384: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey) #11
  store ptr null, ptr %i.ey, align 8, !tbaa !642
  %i.fdt = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.67, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.ey) ; 0 uses
  %i.fdu = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fdv = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.fdu, i64 noundef 8) ; 7 uses
  %i.fdw = load ptr, ptr %i.ey, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fdv, i8 0, i64 16, i1 false)
  %i.fdx = getelementptr inbounds nuw i8, ptr %i.fdv, i64 16
  store i32 115, ptr %i.fdx, align 8, !tbaa !627
  %i.fdy = getelementptr inbounds nuw i8, ptr %i.fdv, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fdy, i8 0, i64 28, i1 false)
  %i.fdz = getelementptr inbounds nuw i8, ptr %i.fdv, i64 48
  store ptr %i.fdw, ptr %i.fdz, align 8, !tbaa !843
  %i.fea = getelementptr inbounds nuw i8, ptr %i.fdv, i64 24
  store ptr %.sroa.05391.0, ptr %i.fea, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2664 = getelementptr inbounds nuw i8, ptr %i.fdv, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2664, align 8, !tbaa !635
  %i.feb = ptrtoint ptr %i.fdv to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1942:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1885
  %i.fec = load i64, ptr %.sroa.01032.0.copyload72407243734873517683, align 1
  %i.fed = xor i64 %i.fec, 8389754637239472970
  %i.fee = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517683, i64 5
  %i.fef = load i64, ptr %i.fee, align 1
  %i.feg = xor i64 %i.fef, 8243110581548379749
  %i.feh = or i64 %i.fed, %i.feg
  %i.fei = icmp ne i64 %i.feh, 0
  %i.fej = zext i1 %i.fei to i32
  %i.fek = icmp eq i32 %i.fej, 0
  br i1 %i.fek, label %_ZNK4llvh9StringRef6equalsES0_.exit1942.thread6386, label %_ZNK4llvh9StringRef6equalsES0_.exit2101

_ZNK4llvh9StringRef6equalsES0_.exit1942.thread6386: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1942
  %i.fel = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.fem = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.fel, ptr nonnull @.str.240, i64 4)
  %i.fen = extractvalue { i64, i8 } %i.fem, 0
  %i.feo = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.fen
  %i.fep = load ptr, ptr %i.feo, align 8, !tbaa !629 ; 2 uses
  %i.feq = load i32, ptr %i.fep, align 4, !tbaa !595
  %i.fer = icmp eq i32 %i.feq, 2
  br i1 %i.fer, label %bb.qi, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2666

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2666: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1942.thread6386
  %i.fes = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fet = load ptr, ptr %i.fes, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %229) #11
  %i.feu = getelementptr inbounds nuw i8, ptr %229, i64 16
  %i.fev = getelementptr inbounds nuw i8, ptr %229, i64 17
  store i8 1, ptr %i.fev, align 1, !tbaa !611
  store ptr @.str.440, ptr %229, align 8, !tbaa !612
  store i8 3, ptr %i.feu, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fet, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %229, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #11
  br label %bb.aly

bb.qi:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1942.thread6386
  %i.few = getelementptr inbounds nuw i8, ptr %i.fep, i64 16
  %i.fex = load ptr, ptr %i.few, align 8, !tbaa !634
  %i.fey = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fez = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.fey, i64 noundef 8) ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fez, i8 0, i64 16, i1 false)
  %i.ffa = getelementptr inbounds nuw i8, ptr %i.fez, i64 16
  store i32 117, ptr %i.ffa, align 8, !tbaa !627
  %i.ffb = getelementptr inbounds nuw i8, ptr %i.fez, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ffb, i8 0, i64 28, i1 false)
  %i.ffc = getelementptr inbounds nuw i8, ptr %i.fez, i64 48
  store ptr %i.fex, ptr %i.ffc, align 8, !tbaa !1320
  %i.ffd = getelementptr inbounds nuw i8, ptr %i.fez, i64 24
  store ptr %.sroa.05391.0, ptr %i.ffd, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2667 = getelementptr inbounds nuw i8, ptr %i.fez, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2667, align 8, !tbaa !635
  %i.ffe = ptrtoint ptr %i.fez to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1945:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1918
  %i.fff = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.ffg = xor i128 %i.fff, 153460391244185046157932190780444136266
  %i.ffh = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 3
  %i.ffi = load i128, ptr %i.ffh, align 1
  %i.ffj = xor i128 %i.ffi, 146793563287598602513695602125052929357
  %i.ffk = or i128 %i.ffg, %i.ffj
  %i.ffl = icmp ne i128 %i.ffk, 0
  %i.ffm = zext i1 %i.ffl to i32
  %i.ffn = icmp eq i32 %i.ffm, 0
  br i1 %i.ffn, label %_ZNK4llvh9StringRef6equalsES0_.exit1945.thread6390, label %_ZNK4llvh9StringRef6equalsES0_.exit1993

_ZNK4llvh9StringRef6equalsES0_.exit1945.thread6390: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez) #11
  store ptr null, ptr %i.ez, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa) #11
  store ptr null, ptr %i.fa, align 8, !tbaa !642
  %i.ffo = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.113, i64 6, ptr noundef nonnull align 8 dereferenceable(8) %i.ez)
  br i1 %i.ffo, label %bb.qk, label %bb.qj

bb.qj:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1945.thread6390
  %i.ffp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ffq = load ptr, ptr %i.ffp, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %230) #11
  %i.ffr = getelementptr inbounds nuw i8, ptr %230, i64 16
  %i.ffs = getelementptr inbounds nuw i8, ptr %230, i64 17
  store i8 1, ptr %i.ffs, align 1, !tbaa !611
  store ptr @.str.442, ptr %230, align 8, !tbaa !612
  store i8 3, ptr %i.ffr, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ffq, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %230, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #11
  br label %bb.qn

bb.qk:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1945.thread6390
  %i.fft = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.214, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.fa)
  br i1 %i.fft, label %bb.qm, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.ffu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ffv = load ptr, ptr %i.ffu, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %231) #11
  %i.ffw = getelementptr inbounds nuw i8, ptr %231, i64 16
  %i.ffx = getelementptr inbounds nuw i8, ptr %231, i64 17
  store i8 1, ptr %i.ffx, align 1, !tbaa !611
  store ptr @.str.443, ptr %231, align 8, !tbaa !612
  store i8 3, ptr %i.ffw, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ffv, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %231, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %231) #11
  br label %bb.qn

bb.qm:                                            ; preds = %bb.qk
  %i.ffy = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ffz = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.ffy, i64 noundef 8) ; 8 uses
  %i.fga = load ptr, ptr %i.ez, align 8, !tbaa !642
  %i.fgb = load ptr, ptr %i.fa, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ffz, i8 0, i64 16, i1 false)
  %i.fgc = getelementptr inbounds nuw i8, ptr %i.ffz, i64 16
  store i32 118, ptr %i.fgc, align 8, !tbaa !627
  %i.fgd = getelementptr inbounds nuw i8, ptr %i.ffz, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fgd, i8 0, i64 28, i1 false)
  %i.fge = getelementptr inbounds nuw i8, ptr %i.ffz, i64 48
  store ptr %i.fga, ptr %i.fge, align 8, !tbaa !846
  %i.fgf = getelementptr inbounds nuw i8, ptr %i.ffz, i64 56
  store ptr %i.fgb, ptr %i.fgf, align 8, !tbaa !847
  %i.fgg = getelementptr inbounds nuw i8, ptr %i.ffz, i64 24
  store ptr %.sroa.05391.0, ptr %i.fgg, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2668 = getelementptr inbounds nuw i8, ptr %i.ffz, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2668, align 8, !tbaa !635
  %i.fgh = ptrtoint ptr %i.ffz to i64
  br label %bb.qn

bb.qn:                                            ; preds = %bb.qm, %bb.ql, %bb.qj
  %.sroa.05404.92 = phi i64 [ %i.fgh, %bb.qm ], [ undef, %bb.ql ], [ undef, %bb.qj ]
  %.sroa.261.92 = phi i8 [ 1, %bb.qm ], [ 0, %bb.ql ], [ 0, %bb.qj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1948:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1924
  %i.fgi = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.fgj = xor i128 %i.fgi, 145391094317977174475206302346744714058
  %i.fgk = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.fgl = load i8, ptr %i.fgk, align 1
  %i.fgm = zext i8 %i.fgl to i128
  %i.fgn = xor i128 %i.fgm, 101
  %i.fgo = or i128 %i.fgj, %i.fgn
  %i.fgp = icmp ne i128 %i.fgo, 0
  %i.fgq = zext i1 %i.fgp to i32
  %i.fgr = icmp eq i32 %i.fgq, 0
  br i1 %i.fgr, label %_ZNK4llvh9StringRef6equalsES0_.exit1948.thread6392, label %_ZNK4llvh9StringRef6equalsES0_.exit1960

_ZNK4llvh9StringRef6equalsES0_.exit1948.thread6392: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb) #11
  store ptr null, ptr %i.fb, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc) #11
  store ptr null, ptr %i.fc, align 8, !tbaa !642
  %i.fgs = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.445, i64 9, ptr noundef nonnull align 8 dereferenceable(8) %i.fb)
  br i1 %i.fgs, label %bb.qp, label %bb.qo

bb.qo:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1948.thread6392
  %i.fgt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fgu = load ptr, ptr %i.fgt, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %232) #11
  %i.fgv = getelementptr inbounds nuw i8, ptr %232, i64 16
  %i.fgw = getelementptr inbounds nuw i8, ptr %232, i64 17
  store i8 1, ptr %i.fgw, align 1, !tbaa !611
  store ptr @.str.446, ptr %232, align 8, !tbaa !612
  store i8 3, ptr %i.fgv, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fgu, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %232, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #11
  br label %bb.qs

bb.qp:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1948.thread6392
  %i.fgx = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.240, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.fc)
  br i1 %i.fgx, label %bb.qr, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.fgy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fgz = load ptr, ptr %i.fgy, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %233) #11
  %i.fha = getelementptr inbounds nuw i8, ptr %233, i64 16
  %i.fhb = getelementptr inbounds nuw i8, ptr %233, i64 17
  store i8 1, ptr %i.fhb, align 1, !tbaa !611
  store ptr @.str.447, ptr %233, align 8, !tbaa !612
  store i8 3, ptr %i.fha, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fgz, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %233, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #11
  br label %bb.qs

bb.qr:                                            ; preds = %bb.qp
  %i.fhc = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fhd = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.fhc, i64 noundef 8) ; 8 uses
  %i.fhe = load ptr, ptr %i.fb, align 8, !tbaa !642
  %i.fhf = load ptr, ptr %i.fc, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fhd, i8 0, i64 16, i1 false)
  %i.fhg = getelementptr inbounds nuw i8, ptr %i.fhd, i64 16
  store i32 119, ptr %i.fhg, align 8, !tbaa !627
  %i.fhh = getelementptr inbounds nuw i8, ptr %i.fhd, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fhh, i8 0, i64 28, i1 false)
  %i.fhi = getelementptr inbounds nuw i8, ptr %i.fhd, i64 48
  store ptr %i.fhe, ptr %i.fhi, align 8, !tbaa !849
  %i.fhj = getelementptr inbounds nuw i8, ptr %i.fhd, i64 56
  store ptr %i.fhf, ptr %i.fhj, align 8, !tbaa !850
  %i.fhk = getelementptr inbounds nuw i8, ptr %i.fhd, i64 24
  store ptr %.sroa.05391.0, ptr %i.fhk, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2669 = getelementptr inbounds nuw i8, ptr %i.fhd, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2669, align 8, !tbaa !635
  %i.fhl = ptrtoint ptr %i.fhd to i64
  br label %bb.qs

end_hunk_7
begin_hunk_8_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
_ZNK4llvh9StringRef6equalsES0_.exit1969.thread6408: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk) #11
  store ptr null, ptr %i.fk, align 8, !tbaa !642
  %i.fnr = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.67, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
  br i1 %i.fnr, label %bb.rm, label %bb.rl

bb.rl:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1969.thread6408
  %i.fns = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fnt = load ptr, ptr %i.fns, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %242) #11
  %i.fnu = getelementptr inbounds nuw i8, ptr %242, i64 16
  %i.fnv = getelementptr inbounds nuw i8, ptr %242, i64 17
  store i8 1, ptr %i.fnv, align 1, !tbaa !611
  store ptr @.str.465, ptr %242, align 8, !tbaa !612
  store i8 3, ptr %i.fnu, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fnt, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %242, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %242) #11
  br label %bb.rn

bb.rm:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1969.thread6408
  %i.fnw = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fnx = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.fnw, i64 noundef 8) ; 7 uses
  %i.fny = load ptr, ptr %i.fk, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fnx, i8 0, i64 16, i1 false)
  %i.fnz = getelementptr inbounds nuw i8, ptr %i.fnx, i64 16
  store i32 126, ptr %i.fnz, align 8, !tbaa !627
  %i.foa = getelementptr inbounds nuw i8, ptr %i.fnx, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.foa, i8 0, i64 28, i1 false)
  %i.fob = getelementptr inbounds nuw i8, ptr %i.fnx, i64 48
  store ptr %i.fny, ptr %i.fob, align 8, !tbaa !861
  %i.foc = getelementptr inbounds nuw i8, ptr %i.fnx, i64 24
  store ptr %.sroa.05391.0, ptr %i.foc, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2678 = getelementptr inbounds nuw i8, ptr %i.fnx, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2678, align 8, !tbaa !635
  %i.fod = ptrtoint ptr %i.fnx to i64
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rm, %bb.rl
  %.sroa.05404.99 = phi i64 [ %i.fod, %bb.rm ], [ undef, %bb.rl ]
  %.sroa.261.99 = phi i8 [ 1, %bb.rm ], [ 0, %bb.rl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1972:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1939
  %i.foe = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.fof = icmp ne i128 %i.foe, 144062596572815581942863965370002723658
  %i.fog = zext i1 %i.fof to i32
  %i.foh = icmp eq i32 %i.fog, 0
  br i1 %i.foh, label %_ZNK4llvh9StringRef6equalsES0_.exit1972.thread6410, label %_ZNK4llvh9StringRef6equalsES0_.exit2116

_ZNK4llvh9StringRef6equalsES0_.exit1972.thread6410: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1972
  %i.foi = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.foj = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.foi, ptr nonnull @.str.142, i64 5)
  %i.fok = extractvalue { i64, i8 } %i.foj, 0
  %i.fol = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.fok
  %i.fom = load ptr, ptr %i.fol, align 8, !tbaa !629 ; 2 uses
  %i.fon = load i32, ptr %i.fom, align 4, !tbaa !595
  %i.foo = icmp eq i32 %i.fon, 2
  br i1 %i.foo, label %bb.ro, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2680

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2680: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1972.thread6410
  %i.fop = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.foq = load ptr, ptr %i.fop, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %243) #11
  %i.for = getelementptr inbounds nuw i8, ptr %243, i64 16
  %i.fos = getelementptr inbounds nuw i8, ptr %243, i64 17
  store i8 1, ptr %i.fos, align 1, !tbaa !611
  store ptr @.str.467, ptr %243, align 8, !tbaa !612
  store i8 3, ptr %i.for, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.foq, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %243, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %243) #11
  br label %bb.aly

bb.ro:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1972.thread6410
  %i.fot = getelementptr inbounds nuw i8, ptr %i.fom, i64 16
  %i.fou = load ptr, ptr %i.fot, align 8, !tbaa !634
  %i.fov = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.fow = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.fov, ptr nonnull @.str.279, i64 3)
  %i.fox = extractvalue { i64, i8 } %i.fow, 0
  %i.foy = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.fox
  %i.foz = load ptr, ptr %i.foy, align 8, !tbaa !629 ; 2 uses
  %i.fpa = load i32, ptr %i.foz, align 4, !tbaa !595
  %i.fpb = icmp eq i32 %i.fpa, 2
  br i1 %i.fpb, label %bb.rp, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2682

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2682: ; preds = %bb.ro
  %i.fpc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fpd = load ptr, ptr %i.fpc, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %244) #11
  %i.fpe = getelementptr inbounds nuw i8, ptr %244, i64 16
  %i.fpf = getelementptr inbounds nuw i8, ptr %244, i64 17
  store i8 1, ptr %i.fpf, align 1, !tbaa !611
  store ptr @.str.468, ptr %244, align 8, !tbaa !612
  store i8 3, ptr %i.fpe, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fpd, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %244, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %244) #11
  br label %bb.aly

bb.rp:                                            ; preds = %bb.ro
  %i.fpg = getelementptr inbounds nuw i8, ptr %i.foz, i64 16
  %i.fph = load ptr, ptr %i.fpg, align 8, !tbaa !634
  %i.fpi = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fpj = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.fpi, i64 noundef 8) ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fpj, i8 0, i64 16, i1 false)
  %i.fpk = getelementptr inbounds nuw i8, ptr %i.fpj, i64 16
  store i32 127, ptr %i.fpk, align 8, !tbaa !627
  %i.fpl = getelementptr inbounds nuw i8, ptr %i.fpj, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fpl, i8 0, i64 28, i1 false)
  %i.fpm = getelementptr inbounds nuw i8, ptr %i.fpj, i64 48
  store ptr %i.fou, ptr %i.fpm, align 8, !tbaa !1322
  %i.fpn = getelementptr inbounds nuw i8, ptr %i.fpj, i64 56
  store ptr %i.fph, ptr %i.fpn, align 8, !tbaa !1323
  %i.fpo = getelementptr inbounds nuw i8, ptr %i.fpj, i64 24
  store ptr %.sroa.05391.0, ptr %i.fpo, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2683 = getelementptr inbounds nuw i8, ptr %i.fpj, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2683, align 8, !tbaa !635
  %i.fpp = ptrtoint ptr %i.fpj to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1975:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1642
  %i.fpq = load i32, ptr %.sroa.01036.0.copyload, align 1
  %i.fpr = xor i32 %i.fpq, 1415074634
  %i.fps = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 3
  %i.fpt = load i32, ptr %i.fps, align 1
  %i.fpu = xor i32 %i.fpt, 1954047316
  %i.fpv = or i32 %i.fpr, %i.fpu
  %i.fpw = icmp ne i32 %i.fpv, 0
  %i.fpx = zext i1 %i.fpw to i32
  %i.fpy = icmp eq i32 %i.fpx, 0
  br i1 %i.fpy, label %_ZNK4llvh9StringRef6equalsES0_.exit1975.thread6416, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit1975.thread6416: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1975
  %i.fpz = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.fqa = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.fpz, ptr nonnull @.str.142, i64 5)
  %i.fqb = extractvalue { i64, i8 } %i.fqa, 0
  %i.fqc = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.fqb
  %i.fqd = load ptr, ptr %i.fqc, align 8, !tbaa !629 ; 2 uses
  %i.fqe = load i32, ptr %i.fqd, align 4, !tbaa !595
  %i.fqf = icmp eq i32 %i.fqe, 2
  br i1 %i.fqf, label %bb.rq, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2685

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2685: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1975.thread6416
  %i.fqg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fqh = load ptr, ptr %i.fqg, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %245) #11
  %i.fqi = getelementptr inbounds nuw i8, ptr %245, i64 16
  %i.fqj = getelementptr inbounds nuw i8, ptr %245, i64 17
  store i8 1, ptr %i.fqj, align 1, !tbaa !611
  store ptr @.str.470, ptr %245, align 8, !tbaa !612
  store i8 3, ptr %i.fqi, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fqh, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %245, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %245) #11
  br label %bb.aly

bb.rq:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1975.thread6416
  %i.fqk = getelementptr inbounds nuw i8, ptr %i.fqd, i64 16
  %i.fql = load ptr, ptr %i.fqk, align 8, !tbaa !634
  %i.fqm = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.fqn = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.fqm, ptr nonnull @.str.279, i64 3)
  %i.fqo = extractvalue { i64, i8 } %i.fqn, 0
  %i.fqp = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.fqo
  %i.fqq = load ptr, ptr %i.fqp, align 8, !tbaa !629 ; 2 uses
  %i.fqr = load i32, ptr %i.fqq, align 4, !tbaa !595
  %i.fqs = icmp eq i32 %i.fqr, 2
  br i1 %i.fqs, label %bb.rr, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2687

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2687: ; preds = %bb.rq
  %i.fqt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fqu = load ptr, ptr %i.fqt, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %246) #11
  %i.fqv = getelementptr inbounds nuw i8, ptr %246, i64 16
  %i.fqw = getelementptr inbounds nuw i8, ptr %246, i64 17
  store i8 1, ptr %i.fqw, align 1, !tbaa !611
  store ptr @.str.471, ptr %246, align 8, !tbaa !612
  store i8 3, ptr %i.fqv, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fqu, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %246, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %246) #11
  br label %bb.aly

bb.rr:                                            ; preds = %bb.rq
  %i.fqx = getelementptr inbounds nuw i8, ptr %i.fqq, i64 16
  %i.fqy = load ptr, ptr %i.fqx, align 8, !tbaa !634
  %i.fqz = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fra = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.fqz, i64 noundef 8) ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fra, i8 0, i64 16, i1 false)
  %i.frb = getelementptr inbounds nuw i8, ptr %i.fra, i64 16
  store i32 128, ptr %i.frb, align 8, !tbaa !627
  %i.frc = getelementptr inbounds nuw i8, ptr %i.fra, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.frc, i8 0, i64 28, i1 false)
  %i.frd = getelementptr inbounds nuw i8, ptr %i.fra, i64 48
  store ptr %i.fql, ptr %i.frd, align 8, !tbaa !1325
  %i.fre = getelementptr inbounds nuw i8, ptr %i.fra, i64 56
  store ptr %i.fqy, ptr %i.fre, align 8, !tbaa !1326
  %i.frf = getelementptr inbounds nuw i8, ptr %i.fra, i64 24
  store ptr %.sroa.05391.0, ptr %i.frf, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2688 = getelementptr inbounds nuw i8, ptr %i.fra, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2688, align 8, !tbaa !635
  %i.frg = ptrtoint ptr %i.fra to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1978:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1813, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.frh = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.fri = xor i64 %i.frh, 7308609285986472778
  %i.frj = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 8
  %i.frk = load i16, ptr %i.frj, align 1
  %i.frl = zext i16 %i.frk to i64
  %i.frm = xor i64 %i.frl, 29806
  %i.frn = or i64 %i.fri, %i.frm
  %i.fro = icmp ne i64 %i.frn, 0
  %i.frp = zext i1 %i.fro to i32
  %i.frq = icmp eq i32 %i.frp, 0
  br i1 %i.frq, label %_ZNK4llvh9StringRef6equalsES0_.exit1978.thread6422, label %_ZNK4llvh9StringRef6equalsES0_.exit2110

_ZNK4llvh9StringRef6equalsES0_.exit1978.thread6422: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl) #11
  store ptr null, ptr %i.fl, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %247) #11
  store ptr %247, ptr %247, align 8, !tbaa !639
  %i.frr = getelementptr inbounds nuw i8, ptr %247, i64 8 ; 2 uses
  store ptr %247, ptr %i.frr, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm) #11
  store ptr null, ptr %i.fm, align 8, !tbaa !642
  %i.frs = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.473, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.fl)
  br i1 %i.frs, label %bb.rt, label %bb.rs

bb.rs:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1978.thread6422
  %i.frt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fru = load ptr, ptr %i.frt, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %248) #11
  %i.frv = getelementptr inbounds nuw i8, ptr %248, i64 16
  %i.frw = getelementptr inbounds nuw i8, ptr %248, i64 17
  store i8 1, ptr %i.frw, align 1, !tbaa !611
  store ptr @.str.474, ptr %248, align 8, !tbaa !612
  store i8 3, ptr %i.frv, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fru, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %248, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %248) #11
  br label %bb.rx

bb.rt:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1978.thread6422
  %i.frx = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.475, i64 8, ptr noundef nonnull align 8 dereferenceable(16) %247)
  br i1 %i.frx, label %bb.rv, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.fry = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.frz = load ptr, ptr %i.fry, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %249) #11
  %i.fsa = getelementptr inbounds nuw i8, ptr %249, i64 16
  %i.fsb = getelementptr inbounds nuw i8, ptr %249, i64 17
  store i8 1, ptr %i.fsb, align 1, !tbaa !611
  store ptr @.str.476, ptr %249, align 8, !tbaa !612
  store i8 3, ptr %i.fsa, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.frz, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %249, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %249) #11
  br label %bb.rx

bb.rv:                                            ; preds = %bb.rt
  %i.fsc = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.477, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.fm) ; 0 uses
  %i.fsd = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fse = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 80, ptr noundef nonnull align 8 dereferenceable(656) %i.fsd, i64 noundef 8) ; 11 uses
  %i.fsf = load ptr, ptr %i.fl, align 8, !tbaa !642
  %i.fsg = load ptr, ptr %i.fm, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fse, i8 0, i64 16, i1 false)
  %i.fsh = getelementptr inbounds nuw i8, ptr %i.fse, i64 16
  store i32 129, ptr %i.fsh, align 8, !tbaa !627
  %i.fsi = getelementptr inbounds nuw i8, ptr %i.fse, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fsi, i8 0, i64 28, i1 false)
  %i.fsj = getelementptr inbounds nuw i8, ptr %i.fse, i64 48
  store ptr %i.fsf, ptr %i.fsj, align 8, !tbaa !863
  %i.fsk = getelementptr inbounds nuw i8, ptr %i.fse, i64 56 ; 7 uses
  store ptr %i.fsk, ptr %i.fsk, align 8, !tbaa !639
  %i.fsl = getelementptr inbounds nuw i8, ptr %i.fse, i64 64
  store ptr %i.fsk, ptr %i.fsl, align 8, !tbaa !640
  %i.fsm = load ptr, ptr %i.frr, align 8, !tbaa !640 ; 4 uses
  %i.fsn = icmp eq ptr %i.fsk, %247
  %i.fso = icmp eq ptr %i.fsm, %247
  %or.cond.i.i.i.i.i.i2689 = or i1 %i.fsn, %i.fso
  br i1 %or.cond.i.i.i.i.i.i2689, label %_ZN6hermes6ESTree14JSXElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.fsp = load ptr, ptr %247, align 8, !tbaa !639 ; 2 uses
  %i.fsq = load ptr, ptr %i.fsm, align 8, !tbaa !639
  %i.fsr = getelementptr inbounds nuw i8, ptr %i.fsq, i64 8
  store ptr %247, ptr %i.fsr, align 8, !tbaa !640
  %i.fss = getelementptr inbounds nuw i8, ptr %i.fsp, i64 8
  store ptr %i.fsk, ptr %i.fss, align 8, !tbaa !640
  store ptr %i.fsk, ptr %i.fsm, align 8, !tbaa !639
  %i.fst = getelementptr inbounds nuw i8, ptr %i.fse, i64 64
  store ptr %i.fsm, ptr %i.fst, align 8, !tbaa !640
  store ptr %i.fsp, ptr %i.fsk, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree14JSXElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit

_ZN6hermes6ESTree14JSXElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit: ; preds = %bb.rv, %bb.rw
  %i.fsu = getelementptr inbounds nuw i8, ptr %i.fse, i64 72
  store ptr %i.fsg, ptr %i.fsu, align 8, !tbaa !864
  %i.fsv = getelementptr inbounds nuw i8, ptr %i.fse, i64 24
  store ptr %.sroa.05391.0, ptr %i.fsv, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2690 = getelementptr inbounds nuw i8, ptr %i.fse, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2690, align 8, !tbaa !635
  %i.fsw = ptrtoint ptr %i.fse to i64
  br label %bb.rx

bb.rx:                                            ; preds = %_ZN6hermes6ESTree14JSXElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit, %bb.ru, %bb.rs
  %.sroa.05404.102 = phi i64 [ %i.fsw, %_ZN6hermes6ESTree14JSXElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit ], [ undef, %bb.ru ], [ undef, %bb.rs ]
  %.sroa.261.102 = phi i8 [ 1, %_ZN6hermes6ESTree14JSXElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit ], [ 0, %bb.ru ], [ 0, %bb.rs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %247) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1981:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1891
  %i.fsx = load i64, ptr %.sroa.01032.0.copyload72407243734873517669, align 1
  %i.fsy = xor i64 %i.fsx, 7883376816169702218
  %i.fsz = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517669, i64 3
  %i.fta = load i64, ptr %i.fsz, align 1
  %i.ftb = xor i64 %i.fta, 8389754676398092870
  %i.ftc = or i64 %i.fsy, %i.ftb
  %i.ftd = icmp ne i64 %i.ftc, 0
  %i.fte = zext i1 %i.ftd to i32
  %i.ftf = icmp eq i32 %i.fte, 0
  br i1 %i.ftf, label %_ZNK4llvh9StringRef6equalsES0_.exit1981.thread6424, label %_ZNK4llvh9StringRef6equalsES0_.exit2131

_ZNK4llvh9StringRef6equalsES0_.exit1981.thread6424: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn) #11
  store ptr null, ptr %i.fn, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %250) #11
  store ptr %250, ptr %250, align 8, !tbaa !639
  %i.ftg = getelementptr inbounds nuw i8, ptr %250, i64 8 ; 2 uses
  store ptr %250, ptr %i.ftg, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo) #11
  store ptr null, ptr %i.fo, align 8, !tbaa !642
  %i.fth = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.480, i64 15, ptr noundef nonnull align 8 dereferenceable(8) %i.fn)
  br i1 %i.fth, label %bb.rz, label %bb.ry

bb.ry:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1981.thread6424
  %i.fti = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ftj = load ptr, ptr %i.fti, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %251) #11
  %i.ftk = getelementptr inbounds nuw i8, ptr %251, i64 16
  %i.ftl = getelementptr inbounds nuw i8, ptr %251, i64 17
  store i8 1, ptr %i.ftl, align 1, !tbaa !611
  store ptr @.str.481, ptr %251, align 8, !tbaa !612
  store i8 3, ptr %i.ftk, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ftj, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %251, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %251) #11
  br label %bb.sf

bb.rz:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1981.thread6424
  %i.ftm = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.475, i64 8, ptr noundef nonnull align 8 dereferenceable(16) %250)
  br i1 %i.ftm, label %bb.sb, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.ftn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fto = load ptr, ptr %i.ftn, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %252) #11
  %i.ftp = getelementptr inbounds nuw i8, ptr %252, i64 16
  %i.ftq = getelementptr inbounds nuw i8, ptr %252, i64 17
  store i8 1, ptr %i.ftq, align 1, !tbaa !611
  store ptr @.str.482, ptr %252, align 8, !tbaa !612
  store i8 3, ptr %i.ftp, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fto, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %252, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %252) #11
  br label %bb.sf

bb.sb:                                            ; preds = %bb.rz
  %i.ftr = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.483, i64 15, ptr noundef nonnull align 8 dereferenceable(8) %i.fo)
  br i1 %i.ftr, label %bb.sd, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.fts = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ftt = load ptr, ptr %i.fts, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %253) #11
  %i.ftu = getelementptr inbounds nuw i8, ptr %253, i64 16
  %i.ftv = getelementptr inbounds nuw i8, ptr %253, i64 17
  store i8 1, ptr %i.ftv, align 1, !tbaa !611
  store ptr @.str.484, ptr %253, align 8, !tbaa !612
  store i8 3, ptr %i.ftu, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ftt, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %253, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %253) #11
  br label %bb.sf

bb.sd:                                            ; preds = %bb.sb
  %i.ftw = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ftx = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 80, ptr noundef nonnull align 8 dereferenceable(656) %i.ftw, i64 noundef 8) ; 11 uses
  %i.fty = load ptr, ptr %i.fn, align 8, !tbaa !642
  %i.ftz = load ptr, ptr %i.fo, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ftx, i8 0, i64 16, i1 false)
  %i.fua = getelementptr inbounds nuw i8, ptr %i.ftx, i64 16
  store i32 130, ptr %i.fua, align 8, !tbaa !627
  %i.fub = getelementptr inbounds nuw i8, ptr %i.ftx, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fub, i8 0, i64 28, i1 false)
  %i.fuc = getelementptr inbounds nuw i8, ptr %i.ftx, i64 48
  store ptr %i.fty, ptr %i.fuc, align 8, !tbaa !866
  %i.fud = getelementptr inbounds nuw i8, ptr %i.ftx, i64 56 ; 7 uses
  store ptr %i.fud, ptr %i.fud, align 8, !tbaa !639
  %i.fue = getelementptr inbounds nuw i8, ptr %i.ftx, i64 64
  store ptr %i.fud, ptr %i.fue, align 8, !tbaa !640
  %i.fuf = load ptr, ptr %i.ftg, align 8, !tbaa !640 ; 4 uses
  %i.fug = icmp eq ptr %i.fud, %250
  %i.fuh = icmp eq ptr %i.fuf, %250
  %or.cond.i.i.i.i.i.i2691 = or i1 %i.fug, %i.fuh
  br i1 %or.cond.i.i.i.i.i.i2691, label %_ZN6hermes6ESTree15JSXFragmentNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.fui = load ptr, ptr %250, align 8, !tbaa !639 ; 2 uses
  %i.fuj = load ptr, ptr %i.fuf, align 8, !tbaa !639
  %i.fuk = getelementptr inbounds nuw i8, ptr %i.fuj, i64 8
  store ptr %250, ptr %i.fuk, align 8, !tbaa !640
  %i.ful = getelementptr inbounds nuw i8, ptr %i.fui, i64 8
  store ptr %i.fud, ptr %i.ful, align 8, !tbaa !640
  store ptr %i.fud, ptr %i.fuf, align 8, !tbaa !639
  %i.fum = getelementptr inbounds nuw i8, ptr %i.ftx, i64 64
  store ptr %i.fuf, ptr %i.fum, align 8, !tbaa !640
  store ptr %i.fui, ptr %i.fud, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree15JSXFragmentNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit

_ZN6hermes6ESTree15JSXFragmentNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit: ; preds = %bb.sd, %bb.se
  %i.fun = getelementptr inbounds nuw i8, ptr %i.ftx, i64 72
  store ptr %i.ftz, ptr %i.fun, align 8, !tbaa !867
  %i.fuo = getelementptr inbounds nuw i8, ptr %i.ftx, i64 24
  store ptr %.sroa.05391.0, ptr %i.fuo, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2692 = getelementptr inbounds nuw i8, ptr %i.ftx, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2692, align 8, !tbaa !635
  %i.fup = ptrtoint ptr %i.ftx to i64
  br label %bb.sf

bb.sf:                                            ; preds = %_ZN6hermes6ESTree15JSXFragmentNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit, %bb.sc, %bb.sa, %bb.ry
  %.sroa.05404.103 = phi i64 [ %i.fup, %_ZN6hermes6ESTree15JSXFragmentNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit ], [ undef, %bb.sc ], [ undef, %bb.sa ], [ undef, %bb.ry ]
  %.sroa.261.103 = phi i8 [ 1, %_ZN6hermes6ESTree15JSXFragmentNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit ], [ 0, %bb.sc ], [ 0, %bb.sa ], [ 0, %bb.ry ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %250) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1984:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1969
  %i.fuq = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.fur = xor i128 %i.fuq, 134820084740544143747981817041670132554
  %i.fus = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.fut = load i16, ptr %i.fus, align 1
  %i.fuu = zext i16 %i.fut to i128
  %i.fuv = xor i128 %i.fuu, 29806
  %i.fuw = or i128 %i.fur, %i.fuv
  %i.fux = icmp ne i128 %i.fuw, 0
  %i.fuy = zext i1 %i.fux to i32
  %i.fuz = icmp eq i32 %i.fuy, 0
  br i1 %i.fuz, label %_ZNK4llvh9StringRef6equalsES0_.exit1984.thread6426, label %_ZNK4llvh9StringRef6equalsES0_.exit1987

_ZNK4llvh9StringRef6equalsES0_.exit1984.thread6426: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1984
  %i.fva = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fvb = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.fva, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fvb, i8 0, i64 16, i1 false)
  %i.fvc = getelementptr inbounds nuw i8, ptr %i.fvb, i64 16
  store i32 131, ptr %i.fvc, align 8, !tbaa !627
  %i.fvd = getelementptr inbounds nuw i8, ptr %i.fvb, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fvd, i8 0, i64 28, i1 false)
  %i.fve = getelementptr inbounds nuw i8, ptr %i.fvb, i64 24
  store ptr %.sroa.05391.0, ptr %i.fve, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2693 = getelementptr inbounds nuw i8, ptr %i.fvb, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2693, align 8, !tbaa !635
  %i.fvf = ptrtoint ptr %i.fvb to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1987:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1984
  %i.fvg = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.fvh = xor i128 %i.fvg, 134820084740544143747983235394288767818
  %i.fvi = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.fvj = load i16, ptr %i.fvi, align 1
  %i.fvk = zext i16 %i.fvj to i128
  %i.fvl = xor i128 %i.fvk, 29806
  %i.fvm = or i128 %i.fvh, %i.fvl
  %i.fvn = icmp ne i128 %i.fvm, 0
  %i.fvo = zext i1 %i.fvn to i32
  %i.fvp = icmp eq i32 %i.fvo, 0
  br i1 %i.fvp, label %_ZNK4llvh9StringRef6equalsES0_.exit1987.thread6428, label %_ZNK4llvh9StringRef6equalsES0_.exit2032

_ZNK4llvh9StringRef6equalsES0_.exit1987.thread6428: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1987
  %i.fvq = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fvr = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.fvq, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fvr, i8 0, i64 16, i1 false)
  %i.fvs = getelementptr inbounds nuw i8, ptr %i.fvr, i64 16
  store i32 132, ptr %i.fvs, align 8, !tbaa !627
  %i.fvt = getelementptr inbounds nuw i8, ptr %i.fvr, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fvt, i8 0, i64 28, i1 false)
  %i.fvu = getelementptr inbounds nuw i8, ptr %i.fvr, i64 24
  store ptr %.sroa.05391.0, ptr %i.fvu, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2694 = getelementptr inbounds nuw i8, ptr %i.fvr, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2694, align 8, !tbaa !635
  %i.fvv = ptrtoint ptr %i.fvr to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1990:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1906
  %i.fvw = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.fvx = xor i128 %i.fvw, 129539682123413171873488770122451089477
  %i.fvy = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.fvz = load i32, ptr %i.fvy, align 1
  %i.fwa = zext i32 %i.fvz to i128
  %i.fwb = xor i128 %i.fwa, 1852795252
  %i.fwc = or i128 %i.fvx, %i.fwb
  %i.fwd = icmp ne i128 %i.fwc, 0
  %i.fwe = zext i1 %i.fwd to i32
  %i.fwf = icmp eq i32 %i.fwe, 0
  br i1 %i.fwf, label %_ZNK4llvh9StringRef6equalsES0_.exit1990.thread6430, label %_ZNK4llvh9StringRef6equalsES0_.exit1996

_ZNK4llvh9StringRef6equalsES0_.exit1990.thread6430: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1990
  %i.fwg = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fwh = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.fwg, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fwh, i8 0, i64 16, i1 false)
  %i.fwi = getelementptr inbounds nuw i8, ptr %i.fwh, i64 16
  store i32 135, ptr %i.fwi, align 8, !tbaa !627
  %i.fwj = getelementptr inbounds nuw i8, ptr %i.fwh, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fwj, i8 0, i64 28, i1 false)
  %i.fwk = getelementptr inbounds nuw i8, ptr %i.fwh, i64 24
  store ptr %.sroa.05391.0, ptr %i.fwk, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2695 = getelementptr inbounds nuw i8, ptr %i.fwh, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2695, align 8, !tbaa !635
  %i.fwl = ptrtoint ptr %i.fwh to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1993:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1945
  %i.fwm = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.fwn = xor i128 %i.fwm, 154696461894344823959472434526580403525
  %i.fwo = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 3
  %i.fwp = load i128, ptr %i.fwo, align 1
  %i.fwq = xor i128 %i.fwp, 146793563361274154533755295076508268916
  %i.fwr = or i128 %i.fwn, %i.fwq
  %i.fws = icmp ne i128 %i.fwr, 0
  %i.fwt = zext i1 %i.fws to i32
  %i.fwu = icmp eq i32 %i.fwt, 0
  br i1 %i.fwu, label %_ZNK4llvh9StringRef6equalsES0_.exit1993.thread6432, label %_ZNK4llvh9StringRef6equalsES0_.exit2026

_ZNK4llvh9StringRef6equalsES0_.exit1993.thread6432: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1993
  %i.fwv = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fww = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.fwv, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fww, i8 0, i64 16, i1 false)
  %i.fwx = getelementptr inbounds nuw i8, ptr %i.fww, i64 16
  store i32 136, ptr %i.fwx, align 8, !tbaa !627
  %i.fwy = getelementptr inbounds nuw i8, ptr %i.fww, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fwy, i8 0, i64 28, i1 false)
  %i.fwz = getelementptr inbounds nuw i8, ptr %i.fww, i64 24
  store ptr %.sroa.05391.0, ptr %i.fwz, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2696 = getelementptr inbounds nuw i8, ptr %i.fww, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2696, align 8, !tbaa !635
  %i.fxa = ptrtoint ptr %i.fww to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1996:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1990
  %i.fxb = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.fxc = xor i128 %i.fxb, 129539682123413171873488756902374569043
  %i.fxd = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.fxe = load i32, ptr %i.fxd, align 1
  %i.fxf = zext i32 %i.fxe to i128
  %i.fxg = xor i128 %i.fxf, 1852795252
  %i.fxh = or i128 %i.fxc, %i.fxg
  %i.fxi = icmp ne i128 %i.fxh, 0
  %i.fxj = zext i1 %i.fxi to i32
  %i.fxk = icmp eq i32 %i.fxj, 0
  br i1 %i.fxk, label %_ZNK4llvh9StringRef6equalsES0_.exit1996.thread6434, label %_ZNK4llvh9StringRef6equalsES0_.exit1999

_ZNK4llvh9StringRef6equalsES0_.exit1996.thread6434: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1996
  %i.fxl = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fxm = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.fxl, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fxm, i8 0, i64 16, i1 false)
  %i.fxn = getelementptr inbounds nuw i8, ptr %i.fxm, i64 16
  store i32 137, ptr %i.fxn, align 8, !tbaa !627
  %i.fxo = getelementptr inbounds nuw i8, ptr %i.fxm, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fxo, i8 0, i64 28, i1 false)
  %i.fxp = getelementptr inbounds nuw i8, ptr %i.fxm, i64 24
  store ptr %.sroa.05391.0, ptr %i.fxp, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2697 = getelementptr inbounds nuw i8, ptr %i.fxm, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2697, align 8, !tbaa !635
  %i.fxq = ptrtoint ptr %i.fxm to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit1999:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1996
  %i.fxr = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.fxs = xor i128 %i.fxr, 129539682123413171873488768958230000974
  %i.fxt = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.fxu = load i32, ptr %i.fxt, align 1
  %i.fxv = zext i32 %i.fxu to i128
  %i.fxw = xor i128 %i.fxv, 1852795252
  %i.fxx = or i128 %i.fxs, %i.fxw
  %i.fxy = icmp ne i128 %i.fxx, 0
  %i.fxz = zext i1 %i.fxy to i32
  %i.fya = icmp eq i32 %i.fxz, 0
  br i1 %i.fya, label %_ZNK4llvh9StringRef6equalsES0_.exit1999.thread6436, label %_ZNK4llvh9StringRef6equalsES0_.exit2020

_ZNK4llvh9StringRef6equalsES0_.exit1999.thread6436: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1999
  %i.fyb = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fyc = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.fyb, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fyc, i8 0, i64 16, i1 false)
  %i.fyd = getelementptr inbounds nuw i8, ptr %i.fyc, i64 16
  store i32 138, ptr %i.fyd, align 8, !tbaa !627
  %i.fye = getelementptr inbounds nuw i8, ptr %i.fyc, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fye, i8 0, i64 28, i1 false)
  %i.fyf = getelementptr inbounds nuw i8, ptr %i.fyc, i64 24
  store ptr %.sroa.05391.0, ptr %i.fyf, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2698 = getelementptr inbounds nuw i8, ptr %i.fyc, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2698, align 8, !tbaa !635
  %i.fyg = ptrtoint ptr %i.fyc to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2002:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.fyh = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.fyi = xor i128 %i.fyh, 149503515756999892791673827451909338195
  %i.fyj = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 11
  %i.fyk = load i128, ptr %i.fyj, align 1
  %i.fyl = xor i128 %i.fyk, 146793563361274154533755295076508265569
  %i.fym = or i128 %i.fyi, %i.fyl
  %i.fyn = icmp ne i128 %i.fym, 0
  %i.fyo = zext i1 %i.fyn to i32
  %i.fyp = icmp eq i32 %i.fyo, 0
  br i1 %i.fyp, label %_ZNK4llvh9StringRef6equalsES0_.exit2002.thread6438, label %_ZNK4llvh9StringRef6equalsES0_.exit2005

_ZNK4llvh9StringRef6equalsES0_.exit2002.thread6438: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2002
  %i.fyq = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.fyr = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.fyq, ptr nonnull @.str.142, i64 5)
  %i.fys = extractvalue { i64, i8 } %i.fyr, 0
  %i.fyt = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.fys
  %i.fyu = load ptr, ptr %i.fyt, align 8, !tbaa !629 ; 2 uses
  %i.fyv = load i32, ptr %i.fyu, align 4, !tbaa !595
  %i.fyw = icmp eq i32 %i.fyv, 2
  br i1 %i.fyw, label %bb.sg, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2700

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2700: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2002.thread6438
  %i.fyx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fyy = load ptr, ptr %i.fyx, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %254) #11
  %i.fyz = getelementptr inbounds nuw i8, ptr %254, i64 16
  %i.fza = getelementptr inbounds nuw i8, ptr %254, i64 17
  store i8 1, ptr %i.fza, align 1, !tbaa !611
  store ptr @.str.492, ptr %254, align 8, !tbaa !612
  store i8 3, ptr %i.fyz, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fyy, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %254, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %254) #11
  br label %bb.aly

bb.sg:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2002.thread6438
  %i.fzb = getelementptr inbounds nuw i8, ptr %i.fyu, i64 16
  %i.fzc = load ptr, ptr %i.fzb, align 8, !tbaa !634
  %i.fzd = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.fze = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.fzd, ptr nonnull @.str.279, i64 3)
  %i.fzf = extractvalue { i64, i8 } %i.fze, 0
  %i.fzg = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.fzf
  %i.fzh = load ptr, ptr %i.fzg, align 8, !tbaa !629 ; 2 uses
  %i.fzi = load i32, ptr %i.fzh, align 4, !tbaa !595
  %i.fzj = icmp eq i32 %i.fzi, 2
  br i1 %i.fzj, label %bb.sh, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2702

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2702: ; preds = %bb.sg
  %i.fzk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fzl = load ptr, ptr %i.fzk, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %255) #11
  %i.fzm = getelementptr inbounds nuw i8, ptr %255, i64 16
  %i.fzn = getelementptr inbounds nuw i8, ptr %255, i64 17
  store i8 1, ptr %i.fzn, align 1, !tbaa !611
  store ptr @.str.493, ptr %255, align 8, !tbaa !612
  store i8 3, ptr %i.fzm, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fzl, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %255, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %255) #11
  br label %bb.aly

bb.sh:                                            ; preds = %bb.sg
  %i.fzo = getelementptr inbounds nuw i8, ptr %i.fzh, i64 16
  %i.fzp = load ptr, ptr %i.fzo, align 8, !tbaa !634
  %i.fzq = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.fzr = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.fzq, i64 noundef 8) ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fzr, i8 0, i64 16, i1 false)
  %i.fzs = getelementptr inbounds nuw i8, ptr %i.fzr, i64 16
  store i32 139, ptr %i.fzs, align 8, !tbaa !627
  %i.fzt = getelementptr inbounds nuw i8, ptr %i.fzr, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fzt, i8 0, i64 28, i1 false)
  %i.fzu = getelementptr inbounds nuw i8, ptr %i.fzr, i64 48
  store ptr %i.fzc, ptr %i.fzu, align 8, !tbaa !1328
  %i.fzv = getelementptr inbounds nuw i8, ptr %i.fzr, i64 56
  store ptr %i.fzp, ptr %i.fzv, align 8, !tbaa !1329
  %i.fzw = getelementptr inbounds nuw i8, ptr %i.fzr, i64 24
  store ptr %.sroa.05391.0, ptr %i.fzw, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2703 = getelementptr inbounds nuw i8, ptr %i.fzr, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2703, align 8, !tbaa !635
  %i.fzx = ptrtoint ptr %i.fzr to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2005:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2002
  %i.fzy = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.fzz = xor i128 %i.fzy, 149503515756999892791673839507764770126
  %i.gaa = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 11
  %i.gab = load i128, ptr %i.gaa, align 1
  %i.gac = xor i128 %i.gab, 146793563361274154533755295076508265569
  %i.gad = or i128 %i.fzz, %i.gac
  %i.gae = icmp ne i128 %i.gad, 0
  %i.gaf = zext i1 %i.gae to i32
  %i.gag = icmp eq i32 %i.gaf, 0
  br i1 %i.gag, label %_ZNK4llvh9StringRef6equalsES0_.exit2005.thread6444, label %_ZNK4llvh9StringRef6equalsES0_.exit2008

_ZNK4llvh9StringRef6equalsES0_.exit2005.thread6444: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2005
  %i.gah = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.gai = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.gah, ptr nonnull @.str.142, i64 5)
  %i.gaj = extractvalue { i64, i8 } %i.gai, 0
  %i.gak = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.gaj
  %i.gal = load ptr, ptr %i.gak, align 8, !tbaa !629 ; 2 uses
  %i.gam = load i32, ptr %i.gal, align 4, !tbaa !595
  %i.gan = icmp eq i32 %i.gam, 3
  br i1 %i.gan, label %bb.si, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeNumberEPKNS_6parser10JSONObjectEN4llvh9StringRefERd.exit2705

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeNumberEPKNS_6parser10JSONObjectEN4llvh9StringRefERd.exit2705: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2005.thread6444
  %i.gao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gap = load ptr, ptr %i.gao, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %256) #11
  %i.gaq = getelementptr inbounds nuw i8, ptr %256, i64 16
  %i.gar = getelementptr inbounds nuw i8, ptr %256, i64 17
  store i8 1, ptr %i.gar, align 1, !tbaa !611
  store ptr @.str.495, ptr %256, align 8, !tbaa !612
  store i8 3, ptr %i.gaq, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.gap, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %256, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %256) #11
  br label %bb.aly

bb.si:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2005.thread6444
  %i.gas = getelementptr inbounds nuw i8, ptr %i.gal, i64 16
  %i.gat = load double, ptr %i.gas, align 8, !tbaa !1260
  %i.gau = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.gav = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.gau, ptr nonnull @.str.279, i64 3)
  %i.gaw = extractvalue { i64, i8 } %i.gav, 0
  %i.gax = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.gaw
  %i.gay = load ptr, ptr %i.gax, align 8, !tbaa !629 ; 2 uses
  %i.gaz = load i32, ptr %i.gay, align 4, !tbaa !595
  %i.gba = icmp eq i32 %i.gaz, 2
  br i1 %i.gba, label %bb.sj, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2707

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2707: ; preds = %bb.si
  %i.gbb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gbc = load ptr, ptr %i.gbb, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %257) #11
  %i.gbd = getelementptr inbounds nuw i8, ptr %257, i64 16
  %i.gbe = getelementptr inbounds nuw i8, ptr %257, i64 17
  store i8 1, ptr %i.gbe, align 1, !tbaa !611
  store ptr @.str.496, ptr %257, align 8, !tbaa !612
  store i8 3, ptr %i.gbd, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.gbc, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %257, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %257) #11
  br label %bb.aly

bb.sj:                                            ; preds = %bb.si
  %i.gbf = getelementptr inbounds nuw i8, ptr %i.gay, i64 16
  %i.gbg = load ptr, ptr %i.gbf, align 8, !tbaa !634
  %i.gbh = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.gbi = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.gbh, i64 noundef 8) ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gbi, i8 0, i64 16, i1 false)
  %i.gbj = getelementptr inbounds nuw i8, ptr %i.gbi, i64 16
  store i32 140, ptr %i.gbj, align 8, !tbaa !627
  %i.gbk = getelementptr inbounds nuw i8, ptr %i.gbi, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gbk, i8 0, i64 28, i1 false)
  %i.gbl = getelementptr inbounds nuw i8, ptr %i.gbi, i64 48
  store double %i.gat, ptr %i.gbl, align 8, !tbaa !1331
  %i.gbm = getelementptr inbounds nuw i8, ptr %i.gbi, i64 56
  store ptr %i.gbg, ptr %i.gbm, align 8, !tbaa !1332
  %i.gbn = getelementptr inbounds nuw i8, ptr %i.gbi, i64 24
  store ptr %.sroa.05391.0, ptr %i.gbn, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2708 = getelementptr inbounds nuw i8, ptr %i.gbi, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2708, align 8, !tbaa !635
  %i.gbo = ptrtoint ptr %i.gbi to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2008:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2005
  %i.gbp = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.gbq = xor i128 %i.gbp, 149503515756999892791673841745022904642
  %i.gbr = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 11
  %i.gbs = load i128, ptr %i.gbr, align 1
  %i.gbt = xor i128 %i.gbs, 146793563361274154533755295076508265569
  %i.gbu = or i128 %i.gbq, %i.gbt
  %i.gbv = icmp ne i128 %i.gbu, 0
  %i.gbw = zext i1 %i.gbv to i32
  %i.gbx = icmp eq i32 %i.gbw, 0
  br i1 %i.gbx, label %_ZNK4llvh9StringRef6equalsES0_.exit2008.thread6450, label %_ZNK4llvh9StringRef6equalsES0_.exit2146

_ZNK4llvh9StringRef6equalsES0_.exit2008.thread6450: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2008
  %i.gby = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.gbz = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.gby, ptr nonnull @.str.279, i64 3)
  %i.gca = extractvalue { i64, i8 } %i.gbz, 0
  %i.gcb = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.gca
  %i.gcc = load ptr, ptr %i.gcb, align 8, !tbaa !629 ; 2 uses
  %i.gcd = load i32, ptr %i.gcc, align 4, !tbaa !595
  %i.gce = icmp eq i32 %i.gcd, 2
  br i1 %i.gce, label %bb.sk, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2710

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2710: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2008.thread6450
  %i.gcf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gcg = load ptr, ptr %i.gcf, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %258) #11
  %i.gch = getelementptr inbounds nuw i8, ptr %258, i64 16
  %i.gci = getelementptr inbounds nuw i8, ptr %258, i64 17
  store i8 1, ptr %i.gci, align 1, !tbaa !611
  store ptr @.str.498, ptr %258, align 8, !tbaa !612
  store i8 3, ptr %i.gch, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.gcg, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %258, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %258) #11
  br label %bb.aly

bb.sk:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2008.thread6450
  %i.gcj = getelementptr inbounds nuw i8, ptr %i.gcc, i64 16
  %i.gck = load ptr, ptr %i.gcj, align 8, !tbaa !634
  %i.gcl = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.gcm = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.gcl, i64 noundef 8) ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gcm, i8 0, i64 16, i1 false)
  %i.gcn = getelementptr inbounds nuw i8, ptr %i.gcm, i64 16
  store i32 141, ptr %i.gcn, align 8, !tbaa !627
  %i.gco = getelementptr inbounds nuw i8, ptr %i.gcm, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gco, i8 0, i64 28, i1 false)
  %i.gcp = getelementptr inbounds nuw i8, ptr %i.gcm, i64 48
  store ptr %i.gck, ptr %i.gcp, align 8, !tbaa !1334
  %i.gcq = getelementptr inbounds nuw i8, ptr %i.gcm, i64 24
  store ptr %.sroa.05391.0, ptr %i.gcq, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2711 = getelementptr inbounds nuw i8, ptr %i.gcm, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2711, align 8, !tbaa !635
  %i.gcr = ptrtoint ptr %i.gcm to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2011:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1792, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.gcs = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.gct = xor i128 %i.gcs, 154769032262741043665786802140278124354
  %i.gcu = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 5
  %i.gcv = load i128, ptr %i.gcu, align 1
  %i.gcw = xor i128 %i.gcv, 146793563361274154533755295076508266081
  %i.gcx = or i128 %i.gct, %i.gcw
  %i.gcy = icmp ne i128 %i.gcx, 0
  %i.gcz = zext i1 %i.gcy to i32
  %i.gda = icmp eq i32 %i.gcz, 0
  br i1 %i.gda, label %_ZNK4llvh9StringRef6equalsES0_.exit2011.thread6454, label %_ZNK4llvh9StringRef6equalsES0_.exit2089

_ZNK4llvh9StringRef6equalsES0_.exit2011.thread6454: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2011
  %i.gdb = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.gdc = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.gdb, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gdc, i8 0, i64 16, i1 false)
  %i.gdd = getelementptr inbounds nuw i8, ptr %i.gdc, i64 16
  store i32 142, ptr %i.gdd, align 8, !tbaa !627
  %i.gde = getelementptr inbounds nuw i8, ptr %i.gdc, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gde, i8 0, i64 28, i1 false)
  %i.gdf = getelementptr inbounds nuw i8, ptr %i.gdc, i64 24
  store ptr %.sroa.05391.0, ptr %i.gdf, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2712 = getelementptr inbounds nuw i8, ptr %i.gdc, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2712, align 8, !tbaa !635
  %i.gdg = ptrtoint ptr %i.gdc to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2014:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.gdh = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.gdi = xor i128 %i.gdh, 161274938646864646770545751344655855426
  %i.gdj = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 12
  %i.gdk = load i128, ptr %i.gdj, align 1
  %i.gdl = xor i128 %i.gdk, 146793563361274154533755295076508265569
  %i.gdm = or i128 %i.gdi, %i.gdl
  %i.gdn = icmp ne i128 %i.gdm, 0
  %i.gdo = zext i1 %i.gdn to i32
  %i.gdp = icmp eq i32 %i.gdo, 0
  br i1 %i.gdp, label %_ZNK4llvh9StringRef6equalsES0_.exit2014.thread6456, label %_ZNK4llvh9StringRef6equalsES0_.exit2185

_ZNK4llvh9StringRef6equalsES0_.exit2014.thread6456: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2014
  %i.gdq = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.gdr = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.gdq, ptr nonnull @.str.142, i64 5)
  %i.gds = extractvalue { i64, i8 } %i.gdr, 0
  %i.gdt = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.gds
  %i.gdu = load ptr, ptr %i.gdt, align 8, !tbaa !629 ; 2 uses
  %i.gdv = load i32, ptr %i.gdu, align 4, !tbaa !595
  %i.gdw = icmp eq i32 %i.gdv, 4
  br i1 %i.gdw, label %bb.sl, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2714

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2714: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2014.thread6456
  %i.gdx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gdy = load ptr, ptr %i.gdx, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %259) #11
  %i.gdz = getelementptr inbounds nuw i8, ptr %259, i64 16
  %i.gea = getelementptr inbounds nuw i8, ptr %259, i64 17
  store i8 1, ptr %i.gea, align 1, !tbaa !611
  store ptr @.str.501, ptr %259, align 8, !tbaa !612
  store i8 3, ptr %i.gdz, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.gdy, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %259, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %259) #11
  br label %bb.aly

bb.sl:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2014.thread6456
  %i.geb = getelementptr inbounds nuw i8, ptr %i.gdu, i64 4
  %i.gec = load i8, ptr %i.geb, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.ged = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.gee = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ged, ptr nonnull @.str.279, i64 3)
  %i.gef = extractvalue { i64, i8 } %i.gee, 0
  %i.geg = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.gef
  %i.geh = load ptr, ptr %i.geg, align 8, !tbaa !629 ; 2 uses
  %i.gei = load i32, ptr %i.geh, align 4, !tbaa !595
  %i.gej = icmp eq i32 %i.gei, 2
  br i1 %i.gej, label %bb.sm, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2716

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2716: ; preds = %bb.sl
  %i.gek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gel = load ptr, ptr %i.gek, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %260) #11
  %i.gem = getelementptr inbounds nuw i8, ptr %260, i64 16
  %i.gen = getelementptr inbounds nuw i8, ptr %260, i64 17
  store i8 1, ptr %i.gen, align 1, !tbaa !611
  store ptr @.str.502, ptr %260, align 8, !tbaa !612
  store i8 3, ptr %i.gem, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.gel, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %260, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %260) #11
  br label %bb.aly

bb.sm:                                            ; preds = %bb.sl
  %i.geo = getelementptr inbounds nuw i8, ptr %i.geh, i64 16
  %i.gep = load ptr, ptr %i.geo, align 8, !tbaa !634
  %i.geq = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ger = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.geq, i64 noundef 8) ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ger, i8 0, i64 16, i1 false)
  %i.ges = getelementptr inbounds nuw i8, ptr %i.ger, i64 16
  store i32 143, ptr %i.ges, align 8, !tbaa !627
  %i.get = getelementptr inbounds nuw i8, ptr %i.ger, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.get, i8 0, i64 28, i1 false)
  %i.geu = getelementptr inbounds nuw i8, ptr %i.ger, i64 48
  store i8 %i.gec, ptr %i.geu, align 8, !tbaa !1336
  %i.gev = getelementptr inbounds nuw i8, ptr %i.ger, i64 56
  store ptr %i.gep, ptr %i.gev, align 8, !tbaa !1337
  %i.gew = getelementptr inbounds nuw i8, ptr %i.ger, i64 24
  store ptr %.sroa.05391.0, ptr %i.gew, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2717 = getelementptr inbounds nuw i8, ptr %i.ger, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2717, align 8, !tbaa !635
  %i.gex = ptrtoint ptr %i.ger to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2017:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread
  %i.gey = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.gez = xor i128 %i.gey, 86926522951342587535600982312746775886
  %i.gfa = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 9
  %i.gfb = load i128, ptr %i.gfa, align 1
  %i.gfc = xor i128 %i.gfb, 146793563361274154533755295076508265569
  %i.gfd = or i128 %i.gez, %i.gfc
  %i.gfe = icmp ne i128 %i.gfd, 0
  %i.gff = zext i1 %i.gfe to i32
  %i.gfg = icmp eq i32 %i.gff, 0
  br i1 %i.gfg, label %_ZNK4llvh9StringRef6equalsES0_.exit2017.thread6462, label %_ZNK4llvh9StringRef6equalsES0_.exit2065

_ZNK4llvh9StringRef6equalsES0_.exit2017.thread6462: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2017
  %i.gfh = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.gfi = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.gfh, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gfi, i8 0, i64 16, i1 false)
  %i.gfj = getelementptr inbounds nuw i8, ptr %i.gfi, i64 16
  store i32 144, ptr %i.gfj, align 8, !tbaa !627
  %i.gfk = getelementptr inbounds nuw i8, ptr %i.gfi, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gfk, i8 0, i64 28, i1 false)
  %i.gfl = getelementptr inbounds nuw i8, ptr %i.gfi, i64 24
  store ptr %.sroa.05391.0, ptr %i.gfl, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2718 = getelementptr inbounds nuw i8, ptr %i.gfi, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2718, align 8, !tbaa !635
  %i.gfm = ptrtoint ptr %i.gfi to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2020:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1999
  %i.gfn = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.gfo = xor i128 %i.gfn, 129539682123413171873488762404109908307
  %i.gfp = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.gfq = load i32, ptr %i.gfp, align 1
  %i.gfr = zext i32 %i.gfq to i128
  %i.gfs = xor i128 %i.gfr, 1852795252
  %i.gft = or i128 %i.gfo, %i.gfs
  %i.gfu = icmp ne i128 %i.gft, 0
  %i.gfv = zext i1 %i.gfu to i32
  %i.gfw = icmp eq i32 %i.gfv, 0
  br i1 %i.gfw, label %_ZNK4llvh9StringRef6equalsES0_.exit2020.thread6464, label %_ZNK4llvh9StringRef6equalsES0_.exit2029

_ZNK4llvh9StringRef6equalsES0_.exit2020.thread6464: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2020
  %i.gfx = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.gfy = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.gfx, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gfy, i8 0, i64 16, i1 false)
  %i.gfz = getelementptr inbounds nuw i8, ptr %i.gfy, i64 16
  store i32 145, ptr %i.gfz, align 8, !tbaa !627
  %i.gga = getelementptr inbounds nuw i8, ptr %i.gfy, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gga, i8 0, i64 28, i1 false)
  %i.ggb = getelementptr inbounds nuw i8, ptr %i.gfy, i64 24
  store ptr %.sroa.05391.0, ptr %i.ggb, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2719 = getelementptr inbounds nuw i8, ptr %i.gfy, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2719, align 8, !tbaa !635
  %i.ggc = ptrtoint ptr %i.gfy to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2023:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1963
  %i.ggd = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.gge = xor i128 %i.ggd, 148091859182952579670148722091613580865
  %i.ggf = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.ggg = load i8, ptr %i.ggf, align 1
  %i.ggh = zext i8 %i.ggg to i128
  %i.ggi = xor i128 %i.ggh, 110
  %i.ggj = or i128 %i.gge, %i.ggi
  %i.ggk = icmp ne i128 %i.ggj, 0
  %i.ggl = zext i1 %i.ggk to i32
  %i.ggm = icmp eq i32 %i.ggl, 0
  br i1 %i.ggm, label %_ZNK4llvh9StringRef6equalsES0_.exit2023.thread6466, label %_ZNK4llvh9StringRef6equalsES0_.exit2041

_ZNK4llvh9StringRef6equalsES0_.exit2023.thread6466: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2023
  %i.ggn = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ggo = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.ggn, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ggo, i8 0, i64 16, i1 false)
  %i.ggp = getelementptr inbounds nuw i8, ptr %i.ggo, i64 16
  store i32 146, ptr %i.ggp, align 8, !tbaa !627
  %i.ggq = getelementptr inbounds nuw i8, ptr %i.ggo, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ggq, i8 0, i64 28, i1 false)
  %i.ggr = getelementptr inbounds nuw i8, ptr %i.ggo, i64 24
  store ptr %.sroa.05391.0, ptr %i.ggr, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2720 = getelementptr inbounds nuw i8, ptr %i.ggo, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2720, align 8, !tbaa !635
  %i.ggs = ptrtoint ptr %i.ggo to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2026:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1993
  %i.ggt = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.ggu = xor i128 %i.ggt, 154696461894344823959472434436134955341
  %i.ggv = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 3
  %i.ggw = load i128, ptr %i.ggv, align 1
  %i.ggx = xor i128 %i.ggw, 146793563361274154533755295076508263525
  %i.ggy = or i128 %i.ggu, %i.ggx
  %i.ggz = icmp ne i128 %i.ggy, 0
  %i.gha = zext i1 %i.ggz to i32
  %i.ghb = icmp eq i32 %i.gha, 0
  br i1 %i.ghb, label %_ZNK4llvh9StringRef6equalsES0_.exit2026.thread6468, label %_ZNK4llvh9StringRef6equalsES0_.exit2059

_ZNK4llvh9StringRef6equalsES0_.exit2026.thread6468: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2026
  %i.ghc = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ghd = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.ghc, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ghd, i8 0, i64 16, i1 false)
  %i.ghe = getelementptr inbounds nuw i8, ptr %i.ghd, i64 16
  store i32 147, ptr %i.ghe, align 8, !tbaa !627
  %i.ghf = getelementptr inbounds nuw i8, ptr %i.ghd, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ghf, i8 0, i64 28, i1 false)
  %i.ghg = getelementptr inbounds nuw i8, ptr %i.ghd, i64 24
  store ptr %.sroa.05391.0, ptr %i.ghg, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2721 = getelementptr inbounds nuw i8, ptr %i.ghd, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2721, align 8, !tbaa !635
  %i.ghh = ptrtoint ptr %i.ghd to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2029:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2020
  %i.ghi = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.ghj = xor i128 %i.ghi, 129539682123413171873488771195488135490
  %i.ghk = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.ghl = load i32, ptr %i.ghk, align 1
  %i.ghm = zext i32 %i.ghl to i128
  %i.ghn = xor i128 %i.ghm, 1852795252
  %i.gho = or i128 %i.ghj, %i.ghn
  %i.ghp = icmp ne i128 %i.gho, 0
  %i.ghq = zext i1 %i.ghp to i32
  %i.ghr = icmp eq i32 %i.ghq, 0
  br i1 %i.ghr, label %_ZNK4llvh9StringRef6equalsES0_.exit2029.thread6470, label %_ZNK4llvh9StringRef6equalsES0_.exit2056

_ZNK4llvh9StringRef6equalsES0_.exit2029.thread6470: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2029
  %i.ghs = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ght = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.ghs, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ght, i8 0, i64 16, i1 false)
  %i.ghu = getelementptr inbounds nuw i8, ptr %i.ght, i64 16
  store i32 148, ptr %i.ghu, align 8, !tbaa !627
  %i.ghv = getelementptr inbounds nuw i8, ptr %i.ght, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ghv, i8 0, i64 28, i1 false)
  %i.ghw = getelementptr inbounds nuw i8, ptr %i.ght, i64 24
  store ptr %.sroa.05391.0, ptr %i.ghw, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2722 = getelementptr inbounds nuw i8, ptr %i.ght, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2722, align 8, !tbaa !635
  %i.ghx = ptrtoint ptr %i.ght to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2032:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1987
  %i.ghy = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.ghz = xor i128 %i.ghy, 140173222611690951123491430526452592470
  %i.gia = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.gib = load i16, ptr %i.gia, align 1
  %i.gic = zext i16 %i.gib to i128
  %i.gid = xor i128 %i.gic, 28271
  %i.gie = or i128 %i.ghz, %i.gid
  %i.gif = icmp ne i128 %i.gie, 0
  %i.gig = zext i1 %i.gif to i32
  %i.gih = icmp eq i32 %i.gig, 0
  br i1 %i.gih, label %_ZNK4llvh9StringRef6equalsES0_.exit2032.thread6472, label %_ZNK4llvh9StringRef6equalsES0_.exit2038

_ZNK4llvh9StringRef6equalsES0_.exit2032.thread6472: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2032
  %i.gii = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.gij = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.gii, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gij, i8 0, i64 16, i1 false)
  %i.gik = getelementptr inbounds nuw i8, ptr %i.gij, i64 16
  store i32 149, ptr %i.gik, align 8, !tbaa !627
  %i.gil = getelementptr inbounds nuw i8, ptr %i.gij, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gil, i8 0, i64 28, i1 false)
  %i.gim = getelementptr inbounds nuw i8, ptr %i.gij, i64 24
  store ptr %.sroa.05391.0, ptr %i.gim, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2723 = getelementptr inbounds nuw i8, ptr %i.gij, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2723, align 8, !tbaa !635
  %i.gin = ptrtoint ptr %i.gij to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2035:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1954
  %i.gio = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.gip = xor i128 %i.gio, 148117696432845416689970830907966125382
  %i.giq = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.gir = load i128, ptr %i.giq, align 1
  %i.gis = xor i128 %i.gir, 146793563361274154533755295076508266095
  %i.git = or i128 %i.gip, %i.gis
  %i.giu = icmp ne i128 %i.git, 0
  %i.giv = zext i1 %i.giu to i32
  %i.giw = icmp eq i32 %i.giv, 0
  br i1 %i.giw, label %_ZNK4llvh9StringRef6equalsES0_.exit2035.thread6474, label %_ZNK4llvh9StringRef6equalsES0_.exit2047

_ZNK4llvh9StringRef6equalsES0_.exit2035.thread6474: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2035
  call void @llvm.lifetime.start.p0(ptr nonnull %261) #11
  store ptr %261, ptr %261, align 8, !tbaa !639
  %i.gix = getelementptr inbounds nuw i8, ptr %261, i64 8 ; 2 uses
  store ptr %261, ptr %i.gix, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp) #11
  store ptr null, ptr %i.fp, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq) #11
  store ptr null, ptr %i.fq, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr) #11
  store ptr null, ptr %i.fr, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs) #11
  store ptr null, ptr %i.fs, align 8, !tbaa !642
  %i.giy = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.19, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %261)
  br i1 %i.giy, label %bb.so, label %bb.sn

bb.sn:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2035.thread6474
  %i.giz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gja = load ptr, ptr %i.giz, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %262) #11
  %i.gjb = getelementptr inbounds nuw i8, ptr %262, i64 16
  %i.gjc = getelementptr inbounds nuw i8, ptr %262, i64 17
  store i8 1, ptr %i.gjc, align 1, !tbaa !611
end_hunk_8
begin_hunk_9_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  %i.gko = xor i128 %i.gkn, 28271
  %i.gkp = or i128 %i.gkk, %i.gko
  %i.gkq = icmp ne i128 %i.gkp, 0
  %i.gkr = zext i1 %i.gkq to i32
  %i.gks = icmp eq i32 %i.gkr, 0
  br i1 %i.gks, label %_ZNK4llvh9StringRef6equalsES0_.exit2038.thread6476, label %_ZNK4llvh9StringRef6equalsES0_.exit2170

_ZNK4llvh9StringRef6equalsES0_.exit2038.thread6476: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2038
  call void @llvm.lifetime.start.p0(ptr nonnull %264) #11
  store ptr %264, ptr %264, align 8, !tbaa !639
  %i.gkt = getelementptr inbounds nuw i8, ptr %264, i64 8 ; 2 uses
  store ptr %264, ptr %i.gkt, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft) #11
  store ptr null, ptr %i.ft, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu) #11
  store ptr null, ptr %i.fu, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv) #11
  store ptr null, ptr %i.fv, align 8, !tbaa !642
  %i.gku = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.19, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %264)
  br i1 %i.gku, label %bb.su, label %bb.st

bb.st:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2038.thread6476
  %i.gkv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gkw = load ptr, ptr %i.gkv, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %265) #11
  %i.gkx = getelementptr inbounds nuw i8, ptr %265, i64 16
  %i.gky = getelementptr inbounds nuw i8, ptr %265, i64 17
  store i8 1, ptr %i.gky, align 1, !tbaa !611
  store ptr @.str.517, ptr %265, align 8, !tbaa !612
  store i8 3, ptr %i.gkx, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.gkw, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %265, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %265) #11
  br label %bb.sy

bb.su:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2038.thread6476
  %i.gkz = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.24, i64 10, ptr noundef nonnull align 8 dereferenceable(8) %i.ft)
  br i1 %i.gkz, label %bb.sw, label %bb.sv

bb.sv:                                            ; preds = %bb.su
  %i.gla = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.glb = load ptr, ptr %i.gla, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %266) #11
  %i.glc = getelementptr inbounds nuw i8, ptr %266, i64 16
  %i.gld = getelementptr inbounds nuw i8, ptr %266, i64 17
  store i8 1, ptr %i.gld, align 1, !tbaa !611
  store ptr @.str.518, ptr %266, align 8, !tbaa !612
  store i8 3, ptr %i.glc, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.glb, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %266, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %266) #11
  br label %bb.sy

bb.sw:                                            ; preds = %bb.su
  %i.gle = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.417, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.fu) ; 0 uses
  %i.glf = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.22, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.fv) ; 0 uses
  %i.glg = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.glh = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 88, ptr noundef nonnull align 8 dereferenceable(656) %i.glg, i64 noundef 8) ; 12 uses
  %i.gli = load ptr, ptr %i.ft, align 8, !tbaa !642
  %i.glj = load ptr, ptr %i.fu, align 8, !tbaa !642
  %i.glk = load ptr, ptr %i.fv, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.glh, i8 0, i64 16, i1 false)
  %i.gll = getelementptr inbounds nuw i8, ptr %i.glh, i64 16
  store i32 151, ptr %i.gll, align 8, !tbaa !627
  %i.glm = getelementptr inbounds nuw i8, ptr %i.glh, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.glm, i8 0, i64 28, i1 false)
  %i.gln = getelementptr inbounds nuw i8, ptr %i.glh, i64 48 ; 7 uses
  store ptr %i.gln, ptr %i.gln, align 8, !tbaa !639
  %i.glo = getelementptr inbounds nuw i8, ptr %i.glh, i64 56
  store ptr %i.gln, ptr %i.glo, align 8, !tbaa !640
  %i.glp = load ptr, ptr %i.gkt, align 8, !tbaa !640 ; 4 uses
  %i.glq = icmp eq ptr %i.gln, %264
  %i.glr = icmp eq ptr %i.glp, %264
  %or.cond.i.i.i.i.i.i2726 = or i1 %i.glq, %i.glr
  br i1 %or.cond.i.i.i.i.i.i2726, label %_ZN6hermes6ESTree22HookTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_S7_.exit, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  %i.gls = load ptr, ptr %264, align 8, !tbaa !639 ; 2 uses
  %i.glt = load ptr, ptr %i.glp, align 8, !tbaa !639
  %i.glu = getelementptr inbounds nuw i8, ptr %i.glt, i64 8
  store ptr %264, ptr %i.glu, align 8, !tbaa !640
  %i.glv = getelementptr inbounds nuw i8, ptr %i.gls, i64 8
  store ptr %i.gln, ptr %i.glv, align 8, !tbaa !640
  store ptr %i.gln, ptr %i.glp, align 8, !tbaa !639
  %i.glw = getelementptr inbounds nuw i8, ptr %i.glh, i64 56
  store ptr %i.glp, ptr %i.glw, align 8, !tbaa !640
  store ptr %i.gls, ptr %i.gln, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree22HookTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_S7_.exit

_ZN6hermes6ESTree22HookTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_S7_.exit: ; preds = %bb.sw, %bb.sx
  %i.glx = getelementptr inbounds nuw i8, ptr %i.glh, i64 64
  store ptr %i.gli, ptr %i.glx, align 8, !tbaa !875
  %i.gly = getelementptr inbounds nuw i8, ptr %i.glh, i64 72
  store ptr %i.glj, ptr %i.gly, align 8, !tbaa !876
  %i.glz = getelementptr inbounds nuw i8, ptr %i.glh, i64 80
  store ptr %i.glk, ptr %i.glz, align 8, !tbaa !877
  %i.gma = getelementptr inbounds nuw i8, ptr %i.glh, i64 24
  store ptr %.sroa.05391.0, ptr %i.gma, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2727 = getelementptr inbounds nuw i8, ptr %i.glh, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2727, align 8, !tbaa !635
  %i.gmb = ptrtoint ptr %i.glh to i64
  br label %bb.sy

bb.sy:                                            ; preds = %_ZN6hermes6ESTree22HookTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_S7_.exit, %bb.sv, %bb.st
  %.sroa.05404.109 = phi i64 [ %i.gmb, %_ZN6hermes6ESTree22HookTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_S7_.exit ], [ undef, %bb.sv ], [ undef, %bb.st ]
  %.sroa.261.109 = phi i8 [ 1, %_ZN6hermes6ESTree22HookTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_S7_.exit ], [ 0, %bb.sv ], [ 0, %bb.st ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %264) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2041:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2023
  %i.gmc = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.gmd = xor i128 %i.gmc, 129529011196388324022081206638250718534
  %i.gme = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.gmf = load i8, ptr %i.gme, align 1
  %i.gmg = zext i8 %i.gmf to i128
  %i.gmh = xor i128 %i.gmg, 109
  %i.gmi = or i128 %i.gmd, %i.gmh
  %i.gmj = icmp ne i128 %i.gmi, 0
  %i.gmk = zext i1 %i.gmj to i32
  %i.gml = icmp eq i32 %i.gmk, 0
  br i1 %i.gml, label %_ZNK4llvh9StringRef6equalsES0_.exit2041.thread6478, label %_ZNK4llvh9StringRef6equalsES0_.exit2092

_ZNK4llvh9StringRef6equalsES0_.exit2041.thread6478: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw) #11
  store ptr null, ptr %i.fw, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx) #11
  store ptr null, ptr %i.fx, align 8, !tbaa !642
  %i.gmm = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.240, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.fw) ; 0 uses
  %i.gmn = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.242, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.fx)
  br i1 %i.gmn, label %bb.ta, label %bb.sz

bb.sz:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2041.thread6478
  %i.gmo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gmp = load ptr, ptr %i.gmo, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %267) #11
  %i.gmq = getelementptr inbounds nuw i8, ptr %267, i64 16
  %i.gmr = getelementptr inbounds nuw i8, ptr %267, i64 17
  store i8 1, ptr %i.gmr, align 1, !tbaa !611
  store ptr @.str.523, ptr %267, align 8, !tbaa !612
  store i8 3, ptr %i.gmq, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.gmp, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %267, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %267) #11
  br label %bb.tc

bb.ta:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2041.thread6478
  %i.gms = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.gmt = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.gms, ptr nonnull @.str.196, i64 8)
  %i.gmu = extractvalue { i64, i8 } %i.gmt, 0
  %i.gmv = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.gmu
  %i.gmw = load ptr, ptr %i.gmv, align 8, !tbaa !629 ; 2 uses
  %i.gmx = load i32, ptr %i.gmw, align 4, !tbaa !595
  %i.gmy = icmp eq i32 %i.gmx, 4
  br i1 %i.gmy, label %bb.tb, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2729

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2729: ; preds = %bb.ta
  %i.gmz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gna = load ptr, ptr %i.gmz, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %268) #11
  %i.gnb = getelementptr inbounds nuw i8, ptr %268, i64 16
  %i.gnc = getelementptr inbounds nuw i8, ptr %268, i64 17
  store i8 1, ptr %i.gnc, align 1, !tbaa !611
  store ptr @.str.524, ptr %268, align 8, !tbaa !612
  store i8 3, ptr %i.gnb, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.gna, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %268, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %268) #11
  br label %bb.tc

bb.tb:                                            ; preds = %bb.ta
  %i.gnd = getelementptr inbounds nuw i8, ptr %i.gmw, i64 4
  %i.gne = load i8, ptr %i.gnd, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.gnf = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.gng = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.gnf, i64 noundef 8) ; 9 uses
  %i.gnh = load ptr, ptr %i.fw, align 8, !tbaa !642
  %i.gni = load ptr, ptr %i.fx, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.gng, i8 0, i64 16, i1 false)
  %i.gnj = getelementptr inbounds nuw i8, ptr %i.gng, i64 16
  store i32 152, ptr %i.gnj, align 8, !tbaa !627
  %i.gnk = getelementptr inbounds nuw i8, ptr %i.gng, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gnk, i8 0, i64 28, i1 false)
  %i.gnl = getelementptr inbounds nuw i8, ptr %i.gng, i64 48
  store ptr %i.gnh, ptr %i.gnl, align 8, !tbaa !879
  %i.gnm = getelementptr inbounds nuw i8, ptr %i.gng, i64 56
  store ptr %i.gni, ptr %i.gnm, align 8, !tbaa !880
  %i.gnn = getelementptr inbounds nuw i8, ptr %i.gng, i64 64
  store i8 %i.gne, ptr %i.gnn, align 8, !tbaa !1338
  %i.gno = getelementptr inbounds nuw i8, ptr %i.gng, i64 24
  store ptr %.sroa.05391.0, ptr %i.gno, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2730 = getelementptr inbounds nuw i8, ptr %i.gng, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2730, align 8, !tbaa !635
  %i.gnp = ptrtoint ptr %i.gng to i64
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2729, %bb.sz
  %.sroa.05404.110 = phi i64 [ %i.gnp, %bb.tb ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2729 ], [ undef, %bb.sz ]
  %.sroa.261.110 = phi i8 [ 1, %bb.tb ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2729 ], [ 0, %bb.sz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2044:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread, %_ZNK4llvh9StringRef6equalsES0_.exit1648
  %i.gnq = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.gnr = xor i128 %i.gnq, 146787558584257228308558561915872046915
  %i.gns = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.gnt = load i128, ptr %i.gns, align 1
  %i.gnu = xor i128 %i.gnt, 146793563361274154533755295076508267630
  %i.gnv = or i128 %i.gnr, %i.gnu
  %i.gnw = icmp ne i128 %i.gnv, 0
  %i.gnx = zext i1 %i.gnw to i32
  %i.gny = icmp eq i32 %i.gnx, 0
  br i1 %i.gny, label %_ZNK4llvh9StringRef6equalsES0_.exit2044.thread6482, label %_ZNK4llvh9StringRef6equalsES0_.exit2053

_ZNK4llvh9StringRef6equalsES0_.exit2044.thread6482: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2044
  call void @llvm.lifetime.start.p0(ptr nonnull %269) #11
  store ptr %269, ptr %269, align 8, !tbaa !639
  %i.gnz = getelementptr inbounds nuw i8, ptr %269, i64 8 ; 2 uses
  store ptr %269, ptr %i.gnz, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy) #11
  store ptr null, ptr %i.fy, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz) #11
  store ptr null, ptr %i.fz, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga) #11
  store ptr null, ptr %i.ga, align 8, !tbaa !642
  %i.goa = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.19, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %269)
  br i1 %i.goa, label %bb.te, label %bb.td

bb.td:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2044.thread6482
  %i.gob = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.goc = load ptr, ptr %i.gob, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %270) #11
  %i.god = getelementptr inbounds nuw i8, ptr %270, i64 16
  %i.goe = getelementptr inbounds nuw i8, ptr %270, i64 17
  store i8 1, ptr %i.goe, align 1, !tbaa !611
  store ptr @.str.526, ptr %270, align 8, !tbaa !612
  store i8 3, ptr %i.god, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.goc, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %270, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %270) #11
  br label %bb.tg

bb.te:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2044.thread6482
  %i.gof = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.417, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.fy) ; 0 uses
  %i.gog = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.22, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.fz) ; 0 uses
  %i.goh = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.56, i64 11, ptr noundef nonnull align 8 dereferenceable(8) %i.ga) ; 0 uses
  %i.goi = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.goj = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 88, ptr noundef nonnull align 8 dereferenceable(656) %i.goi, i64 noundef 8) ; 12 uses
  %i.gok = load ptr, ptr %i.fy, align 8, !tbaa !642
  %i.gol = load ptr, ptr %i.fz, align 8, !tbaa !642
  %i.gom = load ptr, ptr %i.ga, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.goj, i8 0, i64 16, i1 false)
  %i.gon = getelementptr inbounds nuw i8, ptr %i.goj, i64 16
  store i32 153, ptr %i.gon, align 8, !tbaa !627
  %i.goo = getelementptr inbounds nuw i8, ptr %i.goj, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.goo, i8 0, i64 28, i1 false)
  %i.gop = getelementptr inbounds nuw i8, ptr %i.goj, i64 48 ; 7 uses
  store ptr %i.gop, ptr %i.gop, align 8, !tbaa !639
  %i.goq = getelementptr inbounds nuw i8, ptr %i.goj, i64 56
  store ptr %i.gop, ptr %i.goq, align 8, !tbaa !640
  %i.gor = load ptr, ptr %i.gnz, align 8, !tbaa !640 ; 4 uses
  %i.gos = icmp eq ptr %i.gop, %269
  %i.got = icmp eq ptr %i.gor, %269
  %or.cond.i.i.i.i.i.i2731 = or i1 %i.gos, %i.got
  br i1 %or.cond.i.i.i.i.i.i2731, label %_ZN6hermes6ESTree27ComponentTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_S7_.exit, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  %i.gou = load ptr, ptr %269, align 8, !tbaa !639 ; 2 uses
  %i.gov = load ptr, ptr %i.gor, align 8, !tbaa !639
  %i.gow = getelementptr inbounds nuw i8, ptr %i.gov, i64 8
  store ptr %269, ptr %i.gow, align 8, !tbaa !640
  %i.gox = getelementptr inbounds nuw i8, ptr %i.gou, i64 8
  store ptr %i.gop, ptr %i.gox, align 8, !tbaa !640
  store ptr %i.gop, ptr %i.gor, align 8, !tbaa !639
  %i.goy = getelementptr inbounds nuw i8, ptr %i.goj, i64 56
  store ptr %i.gor, ptr %i.goy, align 8, !tbaa !640
  store ptr %i.gou, ptr %i.gop, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree27ComponentTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_S7_.exit

_ZN6hermes6ESTree27ComponentTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_S7_.exit: ; preds = %bb.te, %bb.tf
  %i.goz = getelementptr inbounds nuw i8, ptr %i.goj, i64 64
  store ptr %i.gok, ptr %i.goz, align 8, !tbaa !882
  %i.gpa = getelementptr inbounds nuw i8, ptr %i.goj, i64 72
  store ptr %i.gol, ptr %i.gpa, align 8, !tbaa !883
  %i.gpb = getelementptr inbounds nuw i8, ptr %i.goj, i64 80
  store ptr %i.gom, ptr %i.gpb, align 8, !tbaa !884
  %i.gpc = getelementptr inbounds nuw i8, ptr %i.goj, i64 24
  store ptr %.sroa.05391.0, ptr %i.gpc, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2732 = getelementptr inbounds nuw i8, ptr %i.goj, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2732, align 8, !tbaa !635
  %i.gpd = ptrtoint ptr %i.goj to i64
  br label %bb.tg

bb.tg:                                            ; preds = %_ZN6hermes6ESTree27ComponentTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_S7_.exit, %bb.td
  %.sroa.05404.111 = phi i64 [ %i.gpd, %_ZN6hermes6ESTree27ComponentTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_S7_.exit ], [ undef, %bb.td ]
  %.sroa.261.111 = phi i8 [ 1, %_ZN6hermes6ESTree27ComponentTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_S7_.exit ], [ 0, %bb.td ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %269) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2047:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2035
  %i.gpe = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.gpf = xor i128 %i.gpe, 152037274944379993816059252913482854211
  %i.gpg = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.gph = load i128, ptr %i.gpg, align 1
  %i.gpi = xor i128 %i.gph, 152058774297602536655918473802719456869
  %i.gpj = or i128 %i.gpf, %i.gpi
  %i.gpk = icmp ne i128 %i.gpj, 0
  %i.gpl = zext i1 %i.gpk to i32
  %i.gpm = icmp eq i32 %i.gpl, 0
  br i1 %i.gpm, label %_ZNK4llvh9StringRef6equalsES0_.exit2047.thread6484, label %_ZNK4llvh9StringRef6equalsES0_.exit2050

_ZNK4llvh9StringRef6equalsES0_.exit2047.thread6484: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb) #11
  store ptr null, ptr %i.gb, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc) #11
  store ptr null, ptr %i.gc, align 8, !tbaa !642
  %i.gpn = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.240, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.gb) ; 0 uses
  %i.gpo = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.242, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.gc)
  br i1 %i.gpo, label %bb.ti, label %bb.th

bb.th:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2047.thread6484
  %i.gpp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gpq = load ptr, ptr %i.gpp, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %271) #11
  %i.gpr = getelementptr inbounds nuw i8, ptr %271, i64 16
  %i.gps = getelementptr inbounds nuw i8, ptr %271, i64 17
  store i8 1, ptr %i.gps, align 1, !tbaa !611
  store ptr @.str.532, ptr %271, align 8, !tbaa !612
  store i8 3, ptr %i.gpr, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.gpq, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %271, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %271) #11
  br label %bb.tk

bb.ti:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2047.thread6484
  %i.gpt = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.gpu = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.gpt, ptr nonnull @.str.196, i64 8)
  %i.gpv = extractvalue { i64, i8 } %i.gpu, 0
  %i.gpw = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.gpv
  %i.gpx = load ptr, ptr %i.gpw, align 8, !tbaa !629 ; 2 uses
  %i.gpy = load i32, ptr %i.gpx, align 4, !tbaa !595
  %i.gpz = icmp eq i32 %i.gpy, 4
  br i1 %i.gpz, label %bb.tj, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2734

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2734: ; preds = %bb.ti
  %i.gqa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gqb = load ptr, ptr %i.gqa, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %272) #11
  %i.gqc = getelementptr inbounds nuw i8, ptr %272, i64 16
  %i.gqd = getelementptr inbounds nuw i8, ptr %272, i64 17
  store i8 1, ptr %i.gqd, align 1, !tbaa !611
  store ptr @.str.533, ptr %272, align 8, !tbaa !612
  store i8 3, ptr %i.gqc, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.gqb, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %272, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %272) #11
  br label %bb.tk

bb.tj:                                            ; preds = %bb.ti
  %i.gqe = getelementptr inbounds nuw i8, ptr %i.gpx, i64 4
  %i.gqf = load i8, ptr %i.gqe, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.gqg = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.gqh = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.gqg, i64 noundef 8) ; 9 uses
  %i.gqi = load ptr, ptr %i.gb, align 8, !tbaa !642
  %i.gqj = load ptr, ptr %i.gc, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.gqh, i8 0, i64 16, i1 false)
  %i.gqk = getelementptr inbounds nuw i8, ptr %i.gqh, i64 16
  store i32 154, ptr %i.gqk, align 8, !tbaa !627
  %i.gql = getelementptr inbounds nuw i8, ptr %i.gqh, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gql, i8 0, i64 28, i1 false)
  %i.gqm = getelementptr inbounds nuw i8, ptr %i.gqh, i64 48
  store ptr %i.gqi, ptr %i.gqm, align 8, !tbaa !886
  %i.gqn = getelementptr inbounds nuw i8, ptr %i.gqh, i64 56
  store ptr %i.gqj, ptr %i.gqn, align 8, !tbaa !887
  %i.gqo = getelementptr inbounds nuw i8, ptr %i.gqh, i64 64
  store i8 %i.gqf, ptr %i.gqo, align 8, !tbaa !1339
  %i.gqp = getelementptr inbounds nuw i8, ptr %i.gqh, i64 24
  store ptr %.sroa.05391.0, ptr %i.gqp, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2735 = getelementptr inbounds nuw i8, ptr %i.gqh, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2735, align 8, !tbaa !635
  %i.gqq = ptrtoint ptr %i.gqh to i64
  br label %bb.tk

bb.tk:                                            ; preds = %bb.tj, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2734, %bb.th
  %.sroa.05404.112 = phi i64 [ %i.gqq, %bb.tj ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2734 ], [ undef, %bb.th ]
  %.sroa.261.112 = phi i8 [ 1, %bb.tj ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2734 ], [ 0, %bb.th ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2050:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2047
  %i.gqr = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.gqs = xor i128 %i.gqr, 148117696432845416689321460358659732814
  %i.gqt = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.gqu = load i128, ptr %i.gqt, align 1
  %i.gqv = xor i128 %i.gqu, 146793563361274154533755295076508263788
  %i.gqw = or i128 %i.gqs, %i.gqv
  %i.gqx = icmp ne i128 %i.gqw, 0
  %i.gqy = zext i1 %i.gqx to i32
  %i.gqz = icmp eq i32 %i.gqy, 0
  br i1 %i.gqz, label %_ZNK4llvh9StringRef6equalsES0_.exit2050.thread6488, label %_ZNK4llvh9StringRef6equalsES0_.exit2071

_ZNK4llvh9StringRef6equalsES0_.exit2050.thread6488: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2050
end_hunk_9
begin_hunk_10_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %298) #11
  br label %bb.vw

bb.vs:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2095.thread6524
  %i.hht = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.580, i64 9, ptr noundef nonnull align 8 dereferenceable(8) %i.gy)
  br i1 %i.hht, label %bb.vu, label %bb.vt

bb.vt:                                            ; preds = %bb.vs
  %i.hhu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hhv = load ptr, ptr %i.hhu, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %299) #11
  %i.hhw = getelementptr inbounds nuw i8, ptr %299, i64 16
  %i.hhx = getelementptr inbounds nuw i8, ptr %299, i64 17
  store i8 1, ptr %i.hhx, align 1, !tbaa !611
  store ptr @.str.584, ptr %299, align 8, !tbaa !612
  store i8 3, ptr %i.hhw, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hhv, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %299, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %299) #11
  br label %bb.vw

bb.vu:                                            ; preds = %bb.vs
  %i.hhy = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.hhz = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.hhy, ptr nonnull @.str.196, i64 8)
  %i.hia = extractvalue { i64, i8 } %i.hhz, 0
  %i.hib = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.hia
  %i.hic = load ptr, ptr %i.hib, align 8, !tbaa !629 ; 2 uses
  %i.hid = load i32, ptr %i.hic, align 4, !tbaa !595
  %i.hie = icmp eq i32 %i.hid, 4
  br i1 %i.hie, label %bb.vv, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2760

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2760: ; preds = %bb.vu
  %i.hif = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hig = load ptr, ptr %i.hif, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %300) #11
  %i.hih = getelementptr inbounds nuw i8, ptr %300, i64 16
  %i.hii = getelementptr inbounds nuw i8, ptr %300, i64 17
  store i8 1, ptr %i.hii, align 1, !tbaa !611
  store ptr @.str.585, ptr %300, align 8, !tbaa !612
  store i8 3, ptr %i.hih, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hig, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %300, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %300) #11
  br label %bb.vw

bb.vv:                                            ; preds = %bb.vu
  %i.hij = getelementptr inbounds nuw i8, ptr %i.hic, i64 4
  %i.hik = load i8, ptr %i.hij, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.hil = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.him = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.hil, i64 noundef 8) ; 9 uses
  %i.hin = load ptr, ptr %i.gx, align 8, !tbaa !642
  %i.hio = load ptr, ptr %i.gy, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.him, i8 0, i64 16, i1 false)
  %i.hip = getelementptr inbounds nuw i8, ptr %i.him, i64 16
  store i32 170, ptr %i.hip, align 8, !tbaa !627
  %i.hiq = getelementptr inbounds nuw i8, ptr %i.him, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.hiq, i8 0, i64 28, i1 false)
  %i.hir = getelementptr inbounds nuw i8, ptr %i.him, i64 48
  store ptr %i.hin, ptr %i.hir, align 8, !tbaa !921
  %i.his = getelementptr inbounds nuw i8, ptr %i.him, i64 56
  store ptr %i.hio, ptr %i.his, align 8, !tbaa !922
  %i.hit = getelementptr inbounds nuw i8, ptr %i.him, i64 64
  store i8 %i.hik, ptr %i.hit, align 8, !tbaa !1342
  %i.hiu = getelementptr inbounds nuw i8, ptr %i.him, i64 24
  store ptr %.sroa.05391.0, ptr %i.hiu, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2761 = getelementptr inbounds nuw i8, ptr %i.him, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2761, align 8, !tbaa !635
  %i.hiv = ptrtoint ptr %i.him to i64
  br label %bb.vw

bb.vw:                                            ; preds = %bb.vv, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2760, %bb.vt, %bb.vr
  %.sroa.05404.128 = phi i64 [ %i.hiv, %bb.vv ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2760 ], [ undef, %bb.vt ], [ undef, %bb.vr ]
  %.sroa.261.128 = phi i8 [ 1, %bb.vv ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2760 ], [ 0, %bb.vt ], [ 0, %bb.vr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2098:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2095
  %i.hiw = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.hix = xor i128 %i.hiw, 86926522951342587462531497952591900483
  %i.hiy = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 9
  %i.hiz = load i128, ptr %i.hiy, align 1
  %i.hja = xor i128 %i.hiz, 146793563361274154533755295076508265569
  %i.hjb = or i128 %i.hix, %i.hja
  %i.hjc = icmp ne i128 %i.hjb, 0
  %i.hjd = zext i1 %i.hjc to i32
  %i.hje = icmp eq i32 %i.hjd, 0
  br i1 %i.hje, label %_ZNK4llvh9StringRef6equalsES0_.exit2098.thread6528, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2098.thread6528: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gz) #11
  store ptr null, ptr %i.gz, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha) #11
  store ptr null, ptr %i.ha, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb) #11
  store ptr null, ptr %i.hb, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc) #11
  store ptr null, ptr %i.hc, align 8, !tbaa !642
  %i.hjf = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.587, i64 9, ptr noundef nonnull align 8 dereferenceable(8) %i.gz)
  br i1 %i.hjf, label %bb.vy, label %bb.vx

bb.vx:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2098.thread6528
  %i.hjg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hjh = load ptr, ptr %i.hjg, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %301) #11
  %i.hji = getelementptr inbounds nuw i8, ptr %301, i64 16
  %i.hjj = getelementptr inbounds nuw i8, ptr %301, i64 17
  store i8 1, ptr %i.hjj, align 1, !tbaa !611
  store ptr @.str.588, ptr %301, align 8, !tbaa !612
  store i8 3, ptr %i.hji, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hjh, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %301, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %301) #11
  br label %bb.wf

bb.vy:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2098.thread6528
  %i.hjk = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.589, i64 11, ptr noundef nonnull align 8 dereferenceable(8) %i.ha)
  br i1 %i.hjk, label %bb.wa, label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  %i.hjl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hjm = load ptr, ptr %i.hjl, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %302) #11
  %i.hjn = getelementptr inbounds nuw i8, ptr %302, i64 16
  %i.hjo = getelementptr inbounds nuw i8, ptr %302, i64 17
  store i8 1, ptr %i.hjo, align 1, !tbaa !611
  store ptr @.str.590, ptr %302, align 8, !tbaa !612
  store i8 3, ptr %i.hjn, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hjm, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %302, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %302) #11
  br label %bb.wf

bb.wa:                                            ; preds = %bb.vy
  %i.hjp = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.591, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.hb)
  br i1 %i.hjp, label %bb.wc, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.hjq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hjr = load ptr, ptr %i.hjq, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %303) #11
  %i.hjs = getelementptr inbounds nuw i8, ptr %303, i64 16
  %i.hjt = getelementptr inbounds nuw i8, ptr %303, i64 17
  store i8 1, ptr %i.hjt, align 1, !tbaa !611
  store ptr @.str.592, ptr %303, align 8, !tbaa !612
  store i8 3, ptr %i.hjs, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hjr, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %303, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %303) #11
  br label %bb.wf

bb.wc:                                            ; preds = %bb.wa
  %i.hju = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.593, i64 9, ptr noundef nonnull align 8 dereferenceable(8) %i.hc)
  br i1 %i.hju, label %bb.we, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.hjv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hjw = load ptr, ptr %i.hjv, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %304) #11
  %i.hjx = getelementptr inbounds nuw i8, ptr %304, i64 16
  %i.hjy = getelementptr inbounds nuw i8, ptr %304, i64 17
  store i8 1, ptr %i.hjy, align 1, !tbaa !611
  store ptr @.str.594, ptr %304, align 8, !tbaa !612
  store i8 3, ptr %i.hjx, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hjw, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %304, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %304) #11
  br label %bb.wf

bb.we:                                            ; preds = %bb.wc
  %i.hjz = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.hka = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 80, ptr noundef nonnull align 8 dereferenceable(656) %i.hjz, i64 noundef 8) ; 10 uses
  %i.hkb = load ptr, ptr %i.gz, align 8, !tbaa !642
  %i.hkc = load ptr, ptr %i.ha, align 8, !tbaa !642
  %i.hkd = load ptr, ptr %i.hb, align 8, !tbaa !642
  %i.hke = load ptr, ptr %i.hc, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.hka, i8 0, i64 16, i1 false)
  %i.hkf = getelementptr inbounds nuw i8, ptr %i.hka, i64 16
  store i32 171, ptr %i.hkf, align 8, !tbaa !627
  %i.hkg = getelementptr inbounds nuw i8, ptr %i.hka, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.hkg, i8 0, i64 28, i1 false)
  %i.hkh = getelementptr inbounds nuw i8, ptr %i.hka, i64 48
  store ptr %i.hkb, ptr %i.hkh, align 8, !tbaa !924
  %i.hki = getelementptr inbounds nuw i8, ptr %i.hka, i64 56
  store ptr %i.hkc, ptr %i.hki, align 8, !tbaa !925
  %i.hkj = getelementptr inbounds nuw i8, ptr %i.hka, i64 64
  store ptr %i.hkd, ptr %i.hkj, align 8, !tbaa !926
  %i.hkk = getelementptr inbounds nuw i8, ptr %i.hka, i64 72
  store ptr %i.hke, ptr %i.hkk, align 8, !tbaa !927
  %i.hkl = getelementptr inbounds nuw i8, ptr %i.hka, i64 24
  store ptr %.sroa.05391.0, ptr %i.hkl, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2762 = getelementptr inbounds nuw i8, ptr %i.hka, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2762, align 8, !tbaa !635
  %i.hkm = ptrtoint ptr %i.hka to i64
  br label %bb.wf

bb.wf:                                            ; preds = %bb.we, %bb.wd, %bb.wb, %bb.vz, %bb.vx
  %.sroa.05404.129 = phi i64 [ %i.hkm, %bb.we ], [ undef, %bb.wd ], [ undef, %bb.wb ], [ undef, %bb.vz ], [ undef, %bb.vx ]
  %.sroa.261.129 = phi i8 [ 1, %bb.we ], [ 0, %bb.wd ], [ 0, %bb.wb ], [ 0, %bb.vz ], [ 0, %bb.vx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2101:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1942
  %i.hkn = load i64, ptr %.sroa.01032.0.copyload72407243734873517683, align 1
  %i.hko = xor i64 %i.hkn, 7234314066065389908
  %i.hkp = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517683, i64 5
  %i.hkq = load i64, ptr %i.hkp, align 1
  %i.hkr = xor i64 %i.hkq, 7310575174727001458
  %i.hks = or i64 %i.hko, %i.hkr
  %i.hkt = icmp ne i64 %i.hks, 0
  %i.hku = zext i1 %i.hkt to i32
  %i.hkv = icmp eq i32 %i.hku, 0
  br i1 %i.hkv, label %_ZNK4llvh9StringRef6equalsES0_.exit2101.thread6530, label %_ZNK4llvh9StringRef6equalsES0_.exit2149

_ZNK4llvh9StringRef6equalsES0_.exit2101.thread6530: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd) #11
  store ptr null, ptr %i.hd, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he) #11
  store ptr null, ptr %i.he, align 8, !tbaa !642
  %i.hkw = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.596, i64 13, ptr noundef nonnull align 8 dereferenceable(8) %i.hd)
  br i1 %i.hkw, label %bb.wh, label %bb.wg

bb.wg:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2101.thread6530
  %i.hkx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hky = load ptr, ptr %i.hkx, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %305) #11
  %i.hkz = getelementptr inbounds nuw i8, ptr %305, i64 16
  %i.hla = getelementptr inbounds nuw i8, ptr %305, i64 17
  store i8 1, ptr %i.hla, align 1, !tbaa !611
  store ptr @.str.597, ptr %305, align 8, !tbaa !612
  store i8 3, ptr %i.hkz, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hky, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %305, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %305) #11
  br label %bb.wj

bb.wh:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2101.thread6530
  %i.hlb = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.242, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.he) ; 0 uses
  %i.hlc = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.hld = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.hlc, ptr nonnull @.str.262, i64 4)
  %i.hle = extractvalue { i64, i8 } %i.hld, 0
  %i.hlf = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.hle
  %i.hlg = load ptr, ptr %i.hlf, align 8, !tbaa !629 ; 2 uses
  %i.hlh = load i32, ptr %i.hlg, align 4, !tbaa !595
  %i.hli = icmp eq i32 %i.hlh, 2
  br i1 %i.hli, label %bb.wi, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2764

bb.wi:                                            ; preds = %bb.wh
  %i.hlj = getelementptr inbounds nuw i8, ptr %i.hlg, i64 16
  %i.hlk = load ptr, ptr %i.hlj, align 8, !tbaa !634
  br label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2764

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2764: ; preds = %bb.wh, %bb.wi
  %.06040 = phi ptr [ %i.hlk, %bb.wi ], [ null, %bb.wh ]
  %i.hll = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.hlm = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.hll, i64 noundef 8) ; 9 uses
  %i.hln = load ptr, ptr %i.hd, align 8, !tbaa !642
  %i.hlo = load ptr, ptr %i.he, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hlm, i8 0, i64 16, i1 false)
  %i.hlp = getelementptr inbounds nuw i8, ptr %i.hlm, i64 16
  store i32 172, ptr %i.hlp, align 8, !tbaa !627
  %i.hlq = getelementptr inbounds nuw i8, ptr %i.hlm, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.hlq, i8 0, i64 28, i1 false)
  %i.hlr = getelementptr inbounds nuw i8, ptr %i.hlm, i64 48
  store ptr %i.hln, ptr %i.hlr, align 8, !tbaa !929
  %i.hls = getelementptr inbounds nuw i8, ptr %i.hlm, i64 56
  store ptr %i.hlo, ptr %i.hls, align 8, !tbaa !930
  %i.hlt = getelementptr inbounds nuw i8, ptr %i.hlm, i64 64
  store ptr %.06040, ptr %i.hlt, align 8, !tbaa !1343
  %i.hlu = getelementptr inbounds nuw i8, ptr %i.hlm, i64 24
  store ptr %.sroa.05391.0, ptr %i.hlu, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2765 = getelementptr inbounds nuw i8, ptr %i.hlm, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2765, align 8, !tbaa !635
  %i.hlv = ptrtoint ptr %i.hlm to i64
  br label %bb.wj

bb.wj:                                            ; preds = %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2764, %bb.wg
  %.sroa.05404.130 = phi i64 [ %i.hlv, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2764 ], [ undef, %bb.wg ]
  %.sroa.261.130 = phi i8 [ 1, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2764 ], [ 0, %bb.wg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2104:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2074
  %i.hlw = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.hlx = xor i128 %i.hlw, 146787558584257228031063632592512511561
  %i.hly = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.hlz = load i128, ptr %i.hly, align 1
  %i.hma = xor i128 %i.hlz, 146793563361274154533755295076508263779
  %i.hmb = or i128 %i.hlx, %i.hma
  %i.hmc = icmp ne i128 %i.hmb, 0
  %i.hmd = zext i1 %i.hmc to i32
  %i.hme = icmp eq i32 %i.hmd, 0
  br i1 %i.hme, label %_ZNK4llvh9StringRef6equalsES0_.exit2104.thread6532, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2104.thread6532: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2104
  call void @llvm.lifetime.start.p0(ptr nonnull %306) #11
  store ptr %306, ptr %306, align 8, !tbaa !639
  %i.hmf = getelementptr inbounds nuw i8, ptr %306, i64 8 ; 2 uses
  store ptr %306, ptr %i.hmf, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hf) #11
  store ptr null, ptr %i.hf, align 8, !tbaa !642
  %i.hmg = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.601, i64 7, ptr noundef nonnull align 8 dereferenceable(16) %306)
  br i1 %i.hmg, label %bb.wl, label %bb.wk

bb.wk:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2104.thread6532
  %i.hmh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hmi = load ptr, ptr %i.hmh, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %307) #11
  %i.hmj = getelementptr inbounds nuw i8, ptr %307, i64 16
  %i.hmk = getelementptr inbounds nuw i8, ptr %307, i64 17
  store i8 1, ptr %i.hmk, align 1, !tbaa !611
  store ptr @.str.602, ptr %307, align 8, !tbaa !612
  store i8 3, ptr %i.hmj, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hmi, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %307, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %307) #11
  br label %bb.wn

bb.wl:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2104.thread6532
  %i.hml = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.hf) ; 0 uses
  %i.hmm = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.hmn = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.hmm, i64 noundef 8) ; 10 uses
  %i.hmo = load ptr, ptr %i.hf, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hmn, i8 0, i64 16, i1 false)
  %i.hmp = getelementptr inbounds nuw i8, ptr %i.hmn, i64 16
  store i32 173, ptr %i.hmp, align 8, !tbaa !627
  %i.hmq = getelementptr inbounds nuw i8, ptr %i.hmn, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.hmq, i8 0, i64 28, i1 false)
  %i.hmr = getelementptr inbounds nuw i8, ptr %i.hmn, i64 48 ; 7 uses
  store ptr %i.hmr, ptr %i.hmr, align 8, !tbaa !639
  %i.hms = getelementptr inbounds nuw i8, ptr %i.hmn, i64 56
  store ptr %i.hmr, ptr %i.hms, align 8, !tbaa !640
  %i.hmt = load ptr, ptr %i.hmf, align 8, !tbaa !640 ; 4 uses
  %i.hmu = icmp eq ptr %i.hmr, %306
  %i.hmv = icmp eq ptr %i.hmt, %306
  %or.cond.i.i.i.i.i.i2766 = or i1 %i.hmu, %i.hmv
  br i1 %or.cond.i.i.i.i.i.i2766, label %_ZN6hermes6ESTree27InterfaceTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.hmw = load ptr, ptr %306, align 8, !tbaa !639 ; 2 uses
  %i.hmx = load ptr, ptr %i.hmt, align 8, !tbaa !639
  %i.hmy = getelementptr inbounds nuw i8, ptr %i.hmx, i64 8
  store ptr %306, ptr %i.hmy, align 8, !tbaa !640
  %i.hmz = getelementptr inbounds nuw i8, ptr %i.hmw, i64 8
  store ptr %i.hmr, ptr %i.hmz, align 8, !tbaa !640
  store ptr %i.hmr, ptr %i.hmt, align 8, !tbaa !639
  %i.hna = getelementptr inbounds nuw i8, ptr %i.hmn, i64 56
  store ptr %i.hmt, ptr %i.hna, align 8, !tbaa !640
  store ptr %i.hmw, ptr %i.hmr, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree27InterfaceTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit

_ZN6hermes6ESTree27InterfaceTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit: ; preds = %bb.wl, %bb.wm
  %i.hnb = getelementptr inbounds nuw i8, ptr %i.hmn, i64 64
  store ptr %i.hmo, ptr %i.hnb, align 8, !tbaa !932
  %i.hnc = getelementptr inbounds nuw i8, ptr %i.hmn, i64 24
  store ptr %.sroa.05391.0, ptr %i.hnc, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2767 = getelementptr inbounds nuw i8, ptr %i.hmn, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2767, align 8, !tbaa !635
  %i.hnd = ptrtoint ptr %i.hmn to i64
  br label %bb.wn

bb.wn:                                            ; preds = %_ZN6hermes6ESTree27InterfaceTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, %bb.wk
  %.sroa.05404.131 = phi i64 [ %i.hnd, %_ZN6hermes6ESTree27InterfaceTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ undef, %bb.wk ]
  %.sroa.261.131 = phi i8 [ 1, %_ZN6hermes6ESTree27InterfaceTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ 0, %bb.wk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %306) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2107:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1843
  %i.hne = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.hnf = xor i64 %i.hne, 7019260522364172628
  %i.hng = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 8
  %i.hnh = load i8, ptr %i.hng, align 1
  %i.hni = zext i8 %i.hnh to i64
  %i.hnj = xor i64 %i.hni, 115
  %i.hnk = or i64 %i.hnf, %i.hnj
  %i.hnl = icmp ne i64 %i.hnk, 0
  %i.hnm = zext i1 %i.hnl to i32
  %i.hnn = icmp eq i32 %i.hnm, 0
  br i1 %i.hnn, label %_ZNK4llvh9StringRef6equalsES0_.exit2107.thread6534, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2107.thread6534: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hg) #11
  store ptr null, ptr %i.hg, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hh) #11
  store ptr null, ptr %i.hh, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hi) #11
  store ptr null, ptr %i.hi, align 8, !tbaa !642
  %i.hno = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.hg)
  br i1 %i.hno, label %bb.wp, label %bb.wo

bb.wo:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2107.thread6534
  %i.hnp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hnq = load ptr, ptr %i.hnp, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %308) #11
  %i.hnr = getelementptr inbounds nuw i8, ptr %308, i64 16 ; 2 uses
  store i8 1, ptr %i.hnr, align 8, !tbaa !613
  %i.hns = getelementptr inbounds nuw i8, ptr %308, i64 17
  store i8 1, ptr %i.hns, align 1, !tbaa !611
  store ptr @.str.605, ptr %308, align 8, !tbaa !612
  store i8 3, ptr %i.hnr, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hnq, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %308, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %308) #11
  br label %bb.ws

bb.wp:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2107.thread6534
  %i.hnt = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.22, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.hh) ; 0 uses
  %i.hnu = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.81, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.hi)
  br i1 %i.hnu, label %bb.wr, label %bb.wq

bb.wq:                                            ; preds = %bb.wp
  %i.hnv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hnw = load ptr, ptr %i.hnv, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %309) #11
  %i.hnx = getelementptr inbounds nuw i8, ptr %309, i64 16 ; 2 uses
  store i8 1, ptr %i.hnx, align 8, !tbaa !613
  %i.hny = getelementptr inbounds nuw i8, ptr %309, i64 17
  store i8 1, ptr %i.hny, align 1, !tbaa !611
  store ptr @.str.607, ptr %309, align 8, !tbaa !612
  store i8 3, ptr %i.hnx, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hnw, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %309, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %309) #11
  br label %bb.ws

bb.wr:                                            ; preds = %bb.wp
  %i.hnz = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.hoa = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.hnz, i64 noundef 8) ; 9 uses
  %i.hob = load ptr, ptr %i.hg, align 8, !tbaa !642
  %i.hoc = load ptr, ptr %i.hh, align 8, !tbaa !642
  %i.hod = load ptr, ptr %i.hi, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hoa, i8 0, i64 16, i1 false)
  %i.hoe = getelementptr inbounds nuw i8, ptr %i.hoa, i64 16
  store i32 174, ptr %i.hoe, align 8, !tbaa !627
  %i.hof = getelementptr inbounds nuw i8, ptr %i.hoa, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.hof, i8 0, i64 28, i1 false)
  %i.hog = getelementptr inbounds nuw i8, ptr %i.hoa, i64 48
  store ptr %i.hob, ptr %i.hog, align 8, !tbaa !934
  %i.hoh = getelementptr inbounds nuw i8, ptr %i.hoa, i64 56
  store ptr %i.hoc, ptr %i.hoh, align 8, !tbaa !935
  %i.hoi = getelementptr inbounds nuw i8, ptr %i.hoa, i64 64
  store ptr %i.hod, ptr %i.hoi, align 8, !tbaa !936
  %i.hoj = getelementptr inbounds nuw i8, ptr %i.hoa, i64 24
  store ptr %.sroa.05391.0, ptr %i.hoj, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2768 = getelementptr inbounds nuw i8, ptr %i.hoa, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2768, align 8, !tbaa !635
  %i.hok = ptrtoint ptr %i.hoa to i64
  br label %bb.ws

bb.ws:                                            ; preds = %bb.wr, %bb.wq, %bb.wo
  %.sroa.05404.132 = phi i64 [ %i.hok, %bb.wr ], [ undef, %bb.wq ], [ undef, %bb.wo ]
  %.sroa.261.132 = phi i8 [ 1, %bb.wr ], [ 0, %bb.wq ], [ 0, %bb.wo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hi) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hh) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hg) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2110:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1978
  %i.hol = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.hom = xor i64 %i.hol, 8742724331720765519
  %i.hon = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 8
  %i.hoo = load i16, ptr %i.hon, align 1
  %i.hop = zext i16 %i.hoo to i64
  %i.hoq = xor i64 %i.hop, 25968
  %i.hor = or i64 %i.hom, %i.hoq
  %i.hos = icmp ne i64 %i.hor, 0
  %i.hot = zext i1 %i.hos to i32
  %i.hou = icmp eq i32 %i.hot, 0
  br i1 %i.hou, label %_ZNK4llvh9StringRef6equalsES0_.exit2110.thread6536, label %_ZNK4llvh9StringRef6equalsES0_.exit2284

_ZNK4llvh9StringRef6equalsES0_.exit2110.thread6536: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hj) #11
  store ptr null, ptr %i.hj, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hk) #11
  store ptr null, ptr %i.hk, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hl) #11
  store ptr null, ptr %i.hl, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hm) #11
  store ptr null, ptr %i.hm, align 8, !tbaa !642
  %i.hov = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.hj)
  br i1 %i.hov, label %bb.wu, label %bb.wt

bb.wt:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2110.thread6536
  %i.how = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hox = load ptr, ptr %i.how, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %310) #11
  %i.hoy = getelementptr inbounds nuw i8, ptr %310, i64 16
  %i.hoz = getelementptr inbounds nuw i8, ptr %310, i64 17
  store i8 1, ptr %i.hoz, align 1, !tbaa !611
  store ptr @.str.609, ptr %310, align 8, !tbaa !612
  store i8 3, ptr %i.hoy, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hox, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %310, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %310) #11
  br label %bb.wx

bb.wu:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2110.thread6536
  %i.hpa = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.22, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.hk) ; 0 uses
  %i.hpb = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.611, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.hl)
  br i1 %i.hpb, label %bb.ww, label %bb.wv

bb.wv:                                            ; preds = %bb.wu
  %i.hpc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hpd = load ptr, ptr %i.hpc, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %311) #11
  %i.hpe = getelementptr inbounds nuw i8, ptr %311, i64 16
  %i.hpf = getelementptr inbounds nuw i8, ptr %311, i64 17
  store i8 1, ptr %i.hpf, align 1, !tbaa !611
  store ptr @.str.612, ptr %311, align 8, !tbaa !612
  store i8 3, ptr %i.hpe, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hpd, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %311, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %311) #11
  br label %bb.wx

bb.ww:                                            ; preds = %bb.wu
  %i.hpg = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.613, i64 9, ptr noundef nonnull align 8 dereferenceable(8) %i.hm) ; 0 uses
  %i.hph = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.hpi = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 80, ptr noundef nonnull align 8 dereferenceable(656) %i.hph, i64 noundef 8) ; 10 uses
  %i.hpj = load ptr, ptr %i.hj, align 8, !tbaa !642
  %i.hpk = load ptr, ptr %i.hk, align 8, !tbaa !642
  %i.hpl = load ptr, ptr %i.hl, align 8, !tbaa !642
  %i.hpm = load ptr, ptr %i.hm, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.hpi, i8 0, i64 16, i1 false)
  %i.hpn = getelementptr inbounds nuw i8, ptr %i.hpi, i64 16
  store i32 175, ptr %i.hpn, align 8, !tbaa !627
  %i.hpo = getelementptr inbounds nuw i8, ptr %i.hpi, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.hpo, i8 0, i64 28, i1 false)
  %i.hpp = getelementptr inbounds nuw i8, ptr %i.hpi, i64 48
  store ptr %i.hpj, ptr %i.hpp, align 8, !tbaa !938
  %i.hpq = getelementptr inbounds nuw i8, ptr %i.hpi, i64 56
  store ptr %i.hpk, ptr %i.hpq, align 8, !tbaa !939
  %i.hpr = getelementptr inbounds nuw i8, ptr %i.hpi, i64 64
  store ptr %i.hpl, ptr %i.hpr, align 8, !tbaa !940
  %i.hps = getelementptr inbounds nuw i8, ptr %i.hpi, i64 72
  store ptr %i.hpm, ptr %i.hps, align 8, !tbaa !941
  %i.hpt = getelementptr inbounds nuw i8, ptr %i.hpi, i64 24
  store ptr %.sroa.05391.0, ptr %i.hpt, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2769 = getelementptr inbounds nuw i8, ptr %i.hpi, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2769, align 8, !tbaa !635
  %i.hpu = ptrtoint ptr %i.hpi to i64
  br label %bb.wx

bb.wx:                                            ; preds = %bb.ww, %bb.wv, %bb.wt
  %.sroa.05404.133 = phi i64 [ %i.hpu, %bb.ww ], [ undef, %bb.wv ], [ undef, %bb.wt ]
  %.sroa.261.133 = phi i8 [ 1, %bb.ww ], [ 0, %bb.wv ], [ 0, %bb.wt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hm) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hl) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2113:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2056
  %i.hpv = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.hpw = xor i128 %i.hpv, 129529013414144356245198687869794020937
  %i.hpx = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.hpy = load i32, ptr %i.hpx, align 1
  %i.hpz = zext i32 %i.hpy to i128
  %i.hqa = xor i128 %i.hpz, 1852795252
  %i.hqb = or i128 %i.hpw, %i.hqa
  %i.hqc = icmp ne i128 %i.hqb, 0
  %i.hqd = zext i1 %i.hqc to i32
  %i.hqe = icmp eq i32 %i.hqd, 0
  br i1 %i.hqe, label %_ZNK4llvh9StringRef6equalsES0_.exit2113.thread6538, label %_ZNK4llvh9StringRef6equalsES0_.exit2155

_ZNK4llvh9StringRef6equalsES0_.exit2113.thread6538: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hn) #11
  store ptr null, ptr %i.hn, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ho) #11
  store ptr null, ptr %i.ho, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %312) #11
  store ptr %312, ptr %312, align 8, !tbaa !639
  %i.hqf = getelementptr inbounds nuw i8, ptr %312, i64 8 ; 2 uses
  store ptr %312, ptr %i.hqf, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hp) #11
  store ptr null, ptr %i.hp, align 8, !tbaa !642
  %i.hqg = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.hn)
  br i1 %i.hqg, label %bb.wz, label %bb.wy

bb.wy:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2113.thread6538
  %i.hqh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hqi = load ptr, ptr %i.hqh, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %313) #11
  %i.hqj = getelementptr inbounds nuw i8, ptr %313, i64 16
  %i.hqk = getelementptr inbounds nuw i8, ptr %313, i64 17
  store i8 1, ptr %i.hqk, align 1, !tbaa !611
  store ptr @.str.616, ptr %313, align 8, !tbaa !612
  store i8 3, ptr %i.hqj, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hqi, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %313, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %313) #11
  br label %bb.xf

bb.wz:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2113.thread6538
  %i.hql = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.22, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.ho) ; 0 uses
  %i.hqm = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.601, i64 7, ptr noundef nonnull align 8 dereferenceable(16) %312)
  br i1 %i.hqm, label %bb.xb, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.hqn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hqo = load ptr, ptr %i.hqn, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %314) #11
  %i.hqp = getelementptr inbounds nuw i8, ptr %314, i64 16
  %i.hqq = getelementptr inbounds nuw i8, ptr %314, i64 17
  store i8 1, ptr %i.hqq, align 1, !tbaa !611
  store ptr @.str.618, ptr %314, align 8, !tbaa !612
  store i8 3, ptr %i.hqp, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hqo, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %314, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %314) #11
  br label %bb.xf

bb.xb:                                            ; preds = %bb.wz
  %i.hqr = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.hp)
  br i1 %i.hqr, label %bb.xd, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  %i.hqs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hqt = load ptr, ptr %i.hqs, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %315) #11
  %i.hqu = getelementptr inbounds nuw i8, ptr %315, i64 16
end_hunk_10
begin_hunk_11_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  %i.hvu = zext i32 %i.hvt to i64
  %i.hvv = xor i64 %i.hvu, 1936941420
  %i.hvw = or i64 %i.hvr, %i.hvv
  %i.hvx = icmp ne i64 %i.hvw, 0
  %i.hvy = zext i1 %i.hvx to i32
  %i.hvz = icmp eq i32 %i.hvy, 0
  br i1 %i.hvz, label %_ZNK4llvh9StringRef6equalsES0_.exit2125.thread6546, label %_ZNK4llvh9StringRef6equalsES0_.exit2203

_ZNK4llvh9StringRef6equalsES0_.exit2125.thread6546: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ia) #11
  store ptr null, ptr %i.ia, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ib) #11
  store ptr null, ptr %i.ib, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %323) #11
  store ptr %323, ptr %323, align 8, !tbaa !639
  %i.hwa = getelementptr inbounds nuw i8, ptr %323, i64 8
  store ptr %323, ptr %i.hwa, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %324) #11
  store ptr %324, ptr %324, align 8, !tbaa !639
  %i.hwb = getelementptr inbounds nuw i8, ptr %324, i64 8
  store ptr %324, ptr %i.hwb, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %325) #11
  store ptr %325, ptr %325, align 8, !tbaa !639
  %i.hwc = getelementptr inbounds nuw i8, ptr %325, i64 8
  store ptr %325, ptr %i.hwc, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ic) #11
  store ptr null, ptr %i.ic, align 8, !tbaa !642
  %i.hwd = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.ia)
  br i1 %i.hwd, label %bb.xx, label %bb.xw

bb.xw:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2125.thread6546
  %i.hwe = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hwf = load ptr, ptr %i.hwe, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %326) #11
  %i.hwg = getelementptr inbounds nuw i8, ptr %326, i64 16
  %i.hwh = getelementptr inbounds nuw i8, ptr %326, i64 17
  store i8 1, ptr %i.hwh, align 1, !tbaa !611
  store ptr @.str.635, ptr %326, align 8, !tbaa !612
  store i8 3, ptr %i.hwg, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hwf, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %326, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %326) #11
  br label %bb.yg

bb.xx:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2125.thread6546
  %i.hwi = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.22, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.ib) ; 0 uses
  %i.hwj = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.601, i64 7, ptr noundef nonnull align 8 dereferenceable(16) %323)
  br i1 %i.hwj, label %bb.xz, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.hwk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hwl = load ptr, ptr %i.hwk, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %327) #11
  %i.hwm = getelementptr inbounds nuw i8, ptr %327, i64 16
  %i.hwn = getelementptr inbounds nuw i8, ptr %327, i64 17
  store i8 1, ptr %i.hwn, align 1, !tbaa !611
  store ptr @.str.637, ptr %327, align 8, !tbaa !612
  store i8 3, ptr %i.hwm, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hwl, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %327, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %327) #11
  br label %bb.yg

bb.xz:                                            ; preds = %bb.xx
  %i.hwo = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.298, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %324)
  br i1 %i.hwo, label %bb.yb, label %bb.ya

bb.ya:                                            ; preds = %bb.xz
  %i.hwp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hwq = load ptr, ptr %i.hwp, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %328) #11
  %i.hwr = getelementptr inbounds nuw i8, ptr %328, i64 16
  %i.hws = getelementptr inbounds nuw i8, ptr %328, i64 17
  store i8 1, ptr %i.hws, align 1, !tbaa !611
  store ptr @.str.638, ptr %328, align 8, !tbaa !612
  store i8 3, ptr %i.hwr, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hwq, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %328, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %328) #11
  br label %bb.yg

bb.yb:                                            ; preds = %bb.xz
  %i.hwt = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.639, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %325)
  br i1 %i.hwt, label %bb.yd, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  %i.hwu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hwv = load ptr, ptr %i.hwu, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %329) #11
  %i.hww = getelementptr inbounds nuw i8, ptr %329, i64 16
  %i.hwx = getelementptr inbounds nuw i8, ptr %329, i64 17
  store i8 1, ptr %i.hwx, align 1, !tbaa !611
  store ptr @.str.640, ptr %329, align 8, !tbaa !612
  store i8 3, ptr %i.hww, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hwv, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %329, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %329) #11
  br label %bb.yg

bb.yd:                                            ; preds = %bb.yb
  %i.hwy = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.ic)
  br i1 %i.hwy, label %bb.yf, label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  %i.hwz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hxa = load ptr, ptr %i.hwz, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %330) #11
  %i.hxb = getelementptr inbounds nuw i8, ptr %330, i64 16
  %i.hxc = getelementptr inbounds nuw i8, ptr %330, i64 17
  store i8 1, ptr %i.hxc, align 1, !tbaa !611
  store ptr @.str.641, ptr %330, align 8, !tbaa !612
  store i8 3, ptr %i.hxb, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hxa, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %330, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %330) #11
  br label %bb.yg

bb.yf:                                            ; preds = %bb.yd
  %i.hxd = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.hxe = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 120, ptr noundef nonnull align 8 dereferenceable(656) %i.hxd, i64 noundef 8) ; 4 uses
  %i.hxf = load ptr, ptr %i.ia, align 8, !tbaa !642
  %i.hxg = load ptr, ptr %i.ib, align 8, !tbaa !642
  %i.hxh = load ptr, ptr %i.ic, align 8, !tbaa !642
  call void @_ZN6hermes6ESTree16DeclareClassNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEES7_S7_S3_(ptr noundef nonnull align 8 dereferenceable(120) %i.hxe, ptr noundef %i.hxf, ptr noundef %i.hxg, ptr noundef nonnull align 8 dereferenceable(16) %323, ptr noundef nonnull align 8 dereferenceable(16) %324, ptr noundef nonnull align 8 dereferenceable(16) %325, ptr noundef %i.hxh)
  %i.hxi = getelementptr inbounds nuw i8, ptr %i.hxe, i64 24
  store ptr %.sroa.05391.0, ptr %i.hxi, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2776 = getelementptr inbounds nuw i8, ptr %i.hxe, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2776, align 8, !tbaa !635
  %i.hxj = ptrtoint ptr %i.hxe to i64
  br label %bb.yg

bb.yg:                                            ; preds = %bb.yf, %bb.ye, %bb.yc, %bb.ya, %bb.xy, %bb.xw
  %.sroa.05404.138 = phi i64 [ %i.hxj, %bb.yf ], [ undef, %bb.ye ], [ undef, %bb.yc ], [ undef, %bb.ya ], [ undef, %bb.xy ], [ undef, %bb.xw ]
  %.sroa.261.138 = phi i8 [ 1, %bb.yf ], [ 0, %bb.ye ], [ 0, %bb.yc ], [ 0, %bb.ya ], [ 0, %bb.xy ], [ 0, %bb.xw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %325) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %324) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %323) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ib) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ia) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2128:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1900
  %i.hxk = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.hxl = xor i64 %i.hxk, 5072586318058579268
  %i.hxm = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.hxn = load i64, ptr %i.hxm, align 1
  %i.hxo = xor i64 %i.hxn, 7957695015192261958
  %i.hxp = or i64 %i.hxl, %i.hxo
  %i.hxq = icmp ne i64 %i.hxp, 0
  %i.hxr = zext i1 %i.hxq to i32
  %i.hxs = icmp eq i32 %i.hxr, 0
  br i1 %i.hxs, label %_ZNK4llvh9StringRef6equalsES0_.exit2128.thread6548, label %_ZNK4llvh9StringRef6equalsES0_.exit2137

_ZNK4llvh9StringRef6equalsES0_.exit2128.thread6548: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.id) #11
  store ptr null, ptr %i.id, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ie) #11
  store ptr null, ptr %i.ie, align 8, !tbaa !642
  %i.hxt = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.id)
  br i1 %i.hxt, label %bb.yi, label %bb.yh

bb.yh:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2128.thread6548
  %i.hxu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hxv = load ptr, ptr %i.hxu, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %331) #11
  %i.hxw = getelementptr inbounds nuw i8, ptr %331, i64 16
  %i.hxx = getelementptr inbounds nuw i8, ptr %331, i64 17
  store i8 1, ptr %i.hxx, align 1, !tbaa !611
  store ptr @.str.643, ptr %331, align 8, !tbaa !612
  store i8 3, ptr %i.hxw, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hxv, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %331, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %331) #11
  br label %bb.yj

bb.yi:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2128.thread6548
  %i.hxy = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.26, i64 9, ptr noundef nonnull align 8 dereferenceable(8) %i.ie) ; 0 uses
  %i.hxz = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.hya = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.hxz, i64 noundef 8) ; 8 uses
  %i.hyb = load ptr, ptr %i.id, align 8, !tbaa !642
  %i.hyc = load ptr, ptr %i.ie, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hya, i8 0, i64 16, i1 false)
  %i.hyd = getelementptr inbounds nuw i8, ptr %i.hya, i64 16
  store i32 181, ptr %i.hyd, align 8, !tbaa !627
  %i.hye = getelementptr inbounds nuw i8, ptr %i.hya, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.hye, i8 0, i64 28, i1 false)
  %i.hyf = getelementptr inbounds nuw i8, ptr %i.hya, i64 48
  store ptr %i.hyb, ptr %i.hyf, align 8, !tbaa !960
  %i.hyg = getelementptr inbounds nuw i8, ptr %i.hya, i64 56
  store ptr %i.hyc, ptr %i.hyg, align 8, !tbaa !961
  %i.hyh = getelementptr inbounds nuw i8, ptr %i.hya, i64 24
  store ptr %.sroa.05391.0, ptr %i.hyh, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2777 = getelementptr inbounds nuw i8, ptr %i.hya, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2777, align 8, !tbaa !635
  %i.hyi = ptrtoint ptr %i.hya to i64
  br label %bb.yj

bb.yj:                                            ; preds = %bb.yi, %bb.yh
  %.sroa.05404.139 = phi i64 [ %i.hyi, %bb.yi ], [ undef, %bb.yh ]
  %.sroa.261.139 = phi i8 [ 1, %bb.yi ], [ 0, %bb.yh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ie) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.id) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2131:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1981
  %i.hyj = load i64, ptr %.sroa.01032.0.copyload72407243734873517669, align 1
  %i.hyk = xor i64 %i.hyj, 5216701506134435140
  %i.hyl = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517669, i64 3
  %i.hym = load i64, ptr %i.hyl, align 1
  %i.hyn = xor i64 %i.hym, 7741528641203495276
  %i.hyo = or i64 %i.hyk, %i.hyn
  %i.hyp = icmp ne i64 %i.hyo, 0
  %i.hyq = zext i1 %i.hyp to i32
  %i.hyr = icmp eq i32 %i.hyq, 0
  br i1 %i.hyr, label %_ZNK4llvh9StringRef6equalsES0_.exit2131.thread6550, label %_ZNK4llvh9StringRef6equalsES0_.exit2140

_ZNK4llvh9StringRef6equalsES0_.exit2131.thread6550: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.if) #11
  store ptr null, ptr %i.if, align 8, !tbaa !642
  %i.hys = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.if)
  br i1 %i.hys, label %bb.yl, label %bb.yk

bb.yk:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2131.thread6550
  %i.hyt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hyu = load ptr, ptr %i.hyt, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %332) #11
  %i.hyv = getelementptr inbounds nuw i8, ptr %332, i64 16
  %i.hyw = getelementptr inbounds nuw i8, ptr %332, i64 17
  store i8 1, ptr %i.hyw, align 1, !tbaa !611
  store ptr @.str.646, ptr %332, align 8, !tbaa !612
  store i8 3, ptr %i.hyv, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hyu, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %332, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %332) #11
  br label %bb.ym

bb.yl:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2131.thread6550
  %i.hyx = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.hyy = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.hyx, i64 noundef 8) ; 7 uses
  %i.hyz = load ptr, ptr %i.if, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hyy, i8 0, i64 16, i1 false)
  %i.hza = getelementptr inbounds nuw i8, ptr %i.hyy, i64 16
  store i32 182, ptr %i.hza, align 8, !tbaa !627
  %i.hzb = getelementptr inbounds nuw i8, ptr %i.hyy, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.hzb, i8 0, i64 28, i1 false)
  %i.hzc = getelementptr inbounds nuw i8, ptr %i.hyy, i64 48
  store ptr %i.hyz, ptr %i.hzc, align 8, !tbaa !963
  %i.hzd = getelementptr inbounds nuw i8, ptr %i.hyy, i64 24
  store ptr %.sroa.05391.0, ptr %i.hzd, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2778 = getelementptr inbounds nuw i8, ptr %i.hyy, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2778, align 8, !tbaa !635
  %i.hze = ptrtoint ptr %i.hyy to i64
  br label %bb.ym

bb.ym:                                            ; preds = %bb.yl, %bb.yk
  %.sroa.05404.140 = phi i64 [ %i.hze, %bb.yl ], [ undef, %bb.yk ]
  %.sroa.261.140 = phi i8 [ 1, %bb.yl ], [ 0, %bb.yk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.if) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2134:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2122
  %i.hzf = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.hzg = icmp ne i128 %i.hzf, 154763657438445670256127707155999712580
  %i.hzh = zext i1 %i.hzg to i32
  %i.hzi = icmp eq i32 %i.hzh, 0
  br i1 %i.hzi, label %_ZNK4llvh9StringRef6equalsES0_.exit2134.thread6552, label %_ZNK4llvh9StringRef6equalsES0_.exit2152

_ZNK4llvh9StringRef6equalsES0_.exit2134.thread6552: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ig) #11
  store ptr null, ptr %i.ig, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %333) #11
  store ptr %333, ptr %333, align 8, !tbaa !639
  %i.hzj = getelementptr inbounds nuw i8, ptr %333, i64 8 ; 2 uses
  store ptr %333, ptr %i.hzj, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ih) #11
  store ptr null, ptr %i.ih, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ii) #11
  store ptr null, ptr %i.ii, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ij) #11
  store ptr null, ptr %i.ij, align 8, !tbaa !642
  %i.hzk = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.ig)
  br i1 %i.hzk, label %bb.yo, label %bb.yn

bb.yn:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2134.thread6552
  %i.hzl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hzm = load ptr, ptr %i.hzl, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %334) #11
  %i.hzn = getelementptr inbounds nuw i8, ptr %334, i64 16
  %i.hzo = getelementptr inbounds nuw i8, ptr %334, i64 17
  store i8 1, ptr %i.hzo, align 1, !tbaa !611
  store ptr @.str.648, ptr %334, align 8, !tbaa !612
  store i8 3, ptr %i.hzn, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hzm, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %334, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %334) #11
  br label %bb.ys

bb.yo:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2134.thread6552
  %i.hzp = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.19, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %333)
  br i1 %i.hzp, label %bb.yq, label %bb.yp

bb.yp:                                            ; preds = %bb.yo
  %i.hzq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hzr = load ptr, ptr %i.hzq, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %335) #11
  %i.hzs = getelementptr inbounds nuw i8, ptr %335, i64 16
  %i.hzt = getelementptr inbounds nuw i8, ptr %335, i64 17
  store i8 1, ptr %i.hzt, align 1, !tbaa !611
  store ptr @.str.649, ptr %335, align 8, !tbaa !612
  store i8 3, ptr %i.hzs, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hzr, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %335, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %335) #11
  br label %bb.ys

bb.yq:                                            ; preds = %bb.yo
  %i.hzu = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.417, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.ih) ; 0 uses
  %i.hzv = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.22, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.ii) ; 0 uses
  %i.hzw = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.56, i64 11, ptr noundef nonnull align 8 dereferenceable(8) %i.ij) ; 0 uses
  %i.hzx = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.hzy = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 96, ptr noundef nonnull align 8 dereferenceable(656) %i.hzx, i64 noundef 8) ; 13 uses
  %i.hzz = load ptr, ptr %i.ig, align 8, !tbaa !642
  %i.iaa = load ptr, ptr %i.ih, align 8, !tbaa !642
  %i.iab = load ptr, ptr %i.ii, align 8, !tbaa !642
  %i.iac = load ptr, ptr %i.ij, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.hzy, i8 0, i64 16, i1 false)
  %i.iad = getelementptr inbounds nuw i8, ptr %i.hzy, i64 16
  store i32 183, ptr %i.iad, align 8, !tbaa !627
  %i.iae = getelementptr inbounds nuw i8, ptr %i.hzy, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.iae, i8 0, i64 28, i1 false)
  %i.iaf = getelementptr inbounds nuw i8, ptr %i.hzy, i64 48
  store ptr %i.hzz, ptr %i.iaf, align 8, !tbaa !965
  %i.iag = getelementptr inbounds nuw i8, ptr %i.hzy, i64 56 ; 7 uses
  store ptr %i.iag, ptr %i.iag, align 8, !tbaa !639
  %i.iah = getelementptr inbounds nuw i8, ptr %i.hzy, i64 64
  store ptr %i.iag, ptr %i.iah, align 8, !tbaa !640
  %i.iai = load ptr, ptr %i.hzj, align 8, !tbaa !640 ; 4 uses
  %i.iaj = icmp eq ptr %i.iag, %333
  %i.iak = icmp eq ptr %i.iai, %333
  %or.cond.i.i.i.i.i.i2779 = or i1 %i.iaj, %i.iak
  br i1 %or.cond.i.i.i.i.i.i2779, label %_ZN6hermes6ESTree20DeclareComponentNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_.exit, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.ial = load ptr, ptr %333, align 8, !tbaa !639 ; 2 uses
  %i.iam = load ptr, ptr %i.iai, align 8, !tbaa !639
  %i.ian = getelementptr inbounds nuw i8, ptr %i.iam, i64 8
  store ptr %333, ptr %i.ian, align 8, !tbaa !640
  %i.iao = getelementptr inbounds nuw i8, ptr %i.ial, i64 8
  store ptr %i.iag, ptr %i.iao, align 8, !tbaa !640
  store ptr %i.iag, ptr %i.iai, align 8, !tbaa !639
  %i.iap = getelementptr inbounds nuw i8, ptr %i.hzy, i64 64
  store ptr %i.iai, ptr %i.iap, align 8, !tbaa !640
  store ptr %i.ial, ptr %i.iag, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree20DeclareComponentNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_.exit

_ZN6hermes6ESTree20DeclareComponentNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_.exit: ; preds = %bb.yq, %bb.yr
  %i.iaq = getelementptr inbounds nuw i8, ptr %i.hzy, i64 72
  store ptr %i.iaa, ptr %i.iaq, align 8, !tbaa !966
  %i.iar = getelementptr inbounds nuw i8, ptr %i.hzy, i64 80
  store ptr %i.iab, ptr %i.iar, align 8, !tbaa !967
  %i.ias = getelementptr inbounds nuw i8, ptr %i.hzy, i64 88
  store ptr %i.iac, ptr %i.ias, align 8, !tbaa !968
  %i.iat = getelementptr inbounds nuw i8, ptr %i.hzy, i64 24
  store ptr %.sroa.05391.0, ptr %i.iat, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2780 = getelementptr inbounds nuw i8, ptr %i.hzy, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2780, align 8, !tbaa !635
  %i.iau = ptrtoint ptr %i.hzy to i64
  br label %bb.ys

bb.ys:                                            ; preds = %_ZN6hermes6ESTree20DeclareComponentNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_.exit, %bb.yp, %bb.yn
  %.sroa.05404.141 = phi i64 [ %i.iau, %_ZN6hermes6ESTree20DeclareComponentNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_.exit ], [ undef, %bb.yp ], [ undef, %bb.yn ]
  %.sroa.261.141 = phi i8 [ 1, %_ZN6hermes6ESTree20DeclareComponentNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_.exit ], [ 0, %bb.yp ], [ 0, %bb.yn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ii) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ih) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %333) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ig) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2137:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2128
  %i.iav = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.iaw = xor i64 %i.iav, 6225507822665426244
  %i.iax = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.iay = load i64, ptr %i.iax, align 1
  %i.iaz = xor i64 %i.iay, 7308324465835925846
  %i.iba = or i64 %i.iaw, %i.iaz
  %i.ibb = icmp ne i64 %i.iba, 0
  %i.ibc = zext i1 %i.ibb to i32
  %i.ibd = icmp eq i32 %i.ibc, 0
  br i1 %i.ibd, label %_ZNK4llvh9StringRef6equalsES0_.exit2137.thread6554, label %_ZNK4llvh9StringRef6equalsES0_.exit2161

_ZNK4llvh9StringRef6equalsES0_.exit2137.thread6554: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ik) #11
  store ptr null, ptr %i.ik, align 8, !tbaa !642
  %i.ibe = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.ik)
  br i1 %i.ibe, label %bb.yu, label %bb.yt

bb.yt:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2137.thread6554
  %i.ibf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ibg = load ptr, ptr %i.ibf, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %336) #11
  %i.ibh = getelementptr inbounds nuw i8, ptr %336, i64 16
  %i.ibi = getelementptr inbounds nuw i8, ptr %336, i64 17
  store i8 1, ptr %i.ibi, align 1, !tbaa !611
  store ptr @.str.654, ptr %336, align 8, !tbaa !612
  store i8 3, ptr %i.ibh, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ibg, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %336, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %336) #11
  br label %bb.yw

bb.yu:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2137.thread6554
  %i.ibj = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.ibk = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ibj, ptr nonnull @.str.262, i64 4)
  %i.ibl = extractvalue { i64, i8 } %i.ibk, 0
  %i.ibm = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.ibl
  %i.ibn = load ptr, ptr %i.ibm, align 8, !tbaa !629 ; 2 uses
  %i.ibo = load i32, ptr %i.ibn, align 4, !tbaa !595
  %i.ibp = icmp eq i32 %i.ibo, 2
  br i1 %i.ibp, label %bb.yv, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2782

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2782: ; preds = %bb.yu
  %i.ibq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ibr = load ptr, ptr %i.ibq, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %337) #11
  %i.ibs = getelementptr inbounds nuw i8, ptr %337, i64 16
  %i.ibt = getelementptr inbounds nuw i8, ptr %337, i64 17
  store i8 1, ptr %i.ibt, align 1, !tbaa !611
  store ptr @.str.655, ptr %337, align 8, !tbaa !612
  store i8 3, ptr %i.ibs, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ibr, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %337, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %337) #11
  br label %bb.yw

bb.yv:                                            ; preds = %bb.yu
  %i.ibu = getelementptr inbounds nuw i8, ptr %i.ibn, i64 16
  %i.ibv = load ptr, ptr %i.ibu, align 8, !tbaa !634
  %i.ibw = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ibx = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.ibw, i64 noundef 8) ; 8 uses
  %i.iby = load ptr, ptr %i.ik, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ibx, i8 0, i64 16, i1 false)
  %i.ibz = getelementptr inbounds nuw i8, ptr %i.ibx, i64 16
  store i32 184, ptr %i.ibz, align 8, !tbaa !627
  %i.ica = getelementptr inbounds nuw i8, ptr %i.ibx, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ica, i8 0, i64 28, i1 false)
  %i.icb = getelementptr inbounds nuw i8, ptr %i.ibx, i64 48
  store ptr %i.iby, ptr %i.icb, align 8, !tbaa !970
  %i.icc = getelementptr inbounds nuw i8, ptr %i.ibx, i64 56
  store ptr %i.ibv, ptr %i.icc, align 8, !tbaa !1344
  %i.icd = getelementptr inbounds nuw i8, ptr %i.ibx, i64 24
  store ptr %.sroa.05391.0, ptr %i.icd, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2783 = getelementptr inbounds nuw i8, ptr %i.ibx, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2783, align 8, !tbaa !635
  %i.ice = ptrtoint ptr %i.ibx to i64
  br label %bb.yw

bb.yw:                                            ; preds = %bb.yv, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2782, %bb.yt
  %.sroa.05404.142 = phi i64 [ %i.ice, %bb.yv ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2782 ], [ undef, %bb.yt ]
  %.sroa.261.142 = phi i8 [ 1, %bb.yv ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2782 ], [ 0, %bb.yt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ik) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2140:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2131
  %i.icf = load i64, ptr %.sroa.01032.0.copyload72407243734873517669, align 1
  %i.icg = xor i64 %i.icf, 5000528724020651332
  %i.ich = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517669, i64 3
  %i.ici = load i64, ptr %i.ich, align 1
  %i.icj = xor i64 %i.ici, 7887331566743085420
  %i.ick = or i64 %i.icg, %i.icj
  %i.icl = icmp ne i64 %i.ick, 0
  %i.icm = zext i1 %i.icl to i32
  %i.icn = icmp eq i32 %i.icm, 0
  br i1 %i.icn, label %_ZNK4llvh9StringRef6equalsES0_.exit2140.thread6558, label %_ZNK4llvh9StringRef6equalsES0_.exit2293

_ZNK4llvh9StringRef6equalsES0_.exit2140.thread6558: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.il) #11
  store ptr null, ptr %i.il, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.im) #11
  store ptr null, ptr %i.im, align 8, !tbaa !642
  %i.ico = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.il)
  br i1 %i.ico, label %bb.yy, label %bb.yx

bb.yx:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2140.thread6558
  %i.icp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.icq = load ptr, ptr %i.icp, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %338) #11
  %i.icr = getelementptr inbounds nuw i8, ptr %338, i64 16
  %i.ics = getelementptr inbounds nuw i8, ptr %338, i64 17
  store i8 1, ptr %i.ics, align 1, !tbaa !611
  store ptr @.str.657, ptr %338, align 8, !tbaa !612
  store i8 3, ptr %i.icr, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.icq, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %338, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %338) #11
  br label %bb.zb

bb.yy:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2140.thread6558
  %i.ict = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.im)
  br i1 %i.ict, label %bb.za, label %bb.yz

bb.yz:                                            ; preds = %bb.yy
  %i.icu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.icv = load ptr, ptr %i.icu, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %339) #11
  %i.icw = getelementptr inbounds nuw i8, ptr %339, i64 16
  %i.icx = getelementptr inbounds nuw i8, ptr %339, i64 17
  store i8 1, ptr %i.icx, align 1, !tbaa !611
  store ptr @.str.658, ptr %339, align 8, !tbaa !612
  store i8 3, ptr %i.icw, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.icv, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %339, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %339) #11
  br label %bb.zb

bb.za:                                            ; preds = %bb.yy
  %i.icy = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.icz = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.icy, i64 noundef 8) ; 8 uses
  %i.ida = load ptr, ptr %i.il, align 8, !tbaa !642
  %i.idb = load ptr, ptr %i.im, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.icz, i8 0, i64 16, i1 false)
  %i.idc = getelementptr inbounds nuw i8, ptr %i.icz, i64 16
  store i32 185, ptr %i.idc, align 8, !tbaa !627
  %i.idd = getelementptr inbounds nuw i8, ptr %i.icz, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.idd, i8 0, i64 28, i1 false)
  %i.ide = getelementptr inbounds nuw i8, ptr %i.icz, i64 48
  store ptr %i.ida, ptr %i.ide, align 8, !tbaa !972
  %i.idf = getelementptr inbounds nuw i8, ptr %i.icz, i64 56
  store ptr %i.idb, ptr %i.idf, align 8, !tbaa !973
  %i.idg = getelementptr inbounds nuw i8, ptr %i.icz, i64 24
  store ptr %.sroa.05391.0, ptr %i.idg, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2784 = getelementptr inbounds nuw i8, ptr %i.icz, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2784, align 8, !tbaa !635
  %i.idh = ptrtoint ptr %i.icz to i64
  br label %bb.zb

bb.zb:                                            ; preds = %bb.za, %bb.yz, %bb.yx
  %.sroa.05404.143 = phi i64 [ %i.idh, %bb.za ], [ undef, %bb.yz ], [ undef, %bb.yx ]
  %.sroa.261.143 = phi i8 [ 1, %bb.za ], [ 0, %bb.yz ], [ 0, %bb.yx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.im) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.il) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2143:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1879
  %i.idi = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.idj = xor i128 %i.idi, 132119381995154601985476929003639235908
  %i.idk = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.idl = load i64, ptr %i.idk, align 1
  %i.idm = zext i64 %i.idl to i128
  %i.idn = xor i128 %i.idm, 7957695015158964588
  %i.ido = or i128 %i.idj, %i.idn
  %i.idp = icmp ne i128 %i.ido, 0
  %i.idq = zext i1 %i.idp to i32
  %i.idr = icmp eq i32 %i.idq, 0
  br i1 %i.idr, label %_ZNK4llvh9StringRef6equalsES0_.exit2143.thread6560, label %_ZNK4llvh9StringRef6equalsES0_.exit2173

_ZNK4llvh9StringRef6equalsES0_.exit2143.thread6560: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.in) #11
  store ptr null, ptr %i.in, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %340) #11
  store ptr %340, ptr %340, align 8, !tbaa !639
  %i.ids = getelementptr inbounds nuw i8, ptr %340, i64 8
  store ptr %340, ptr %i.ids, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.io) #11
  store ptr null, ptr %i.io, align 8, !tbaa !642
  %i.idt = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.364, i64 11, ptr noundef nonnull align 8 dereferenceable(8) %i.in) ; 0 uses
  %i.idu = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.343, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %340)
  br i1 %i.idu, label %bb.zd, label %bb.zc

bb.zc:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2143.thread6560
  %i.idv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.idw = load ptr, ptr %i.idv, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %341) #11
  %i.idx = getelementptr inbounds nuw i8, ptr %341, i64 16
  %i.idy = getelementptr inbounds nuw i8, ptr %341, i64 17
  store i8 1, ptr %i.idy, align 1, !tbaa !611
  store ptr @.str.661, ptr %341, align 8, !tbaa !612
  store i8 3, ptr %i.idx, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.idw, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %341, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %341) #11
  br label %bb.zf

bb.zd:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2143.thread6560
  %i.idz = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.184, i64 6, ptr noundef nonnull align 8 dereferenceable(8) %i.io) ; 0 uses
  %i.iea = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.ieb = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.iea, ptr nonnull @.str.663, i64 7)
  %i.iec = extractvalue { i64, i8 } %i.ieb, 0
  %i.ied = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.iec
  %i.iee = load ptr, ptr %i.ied, align 8, !tbaa !629 ; 2 uses
  %i.ief = load i32, ptr %i.iee, align 4, !tbaa !595
  %i.ieg = icmp eq i32 %i.ief, 4
  br i1 %i.ieg, label %bb.ze, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2786

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2786: ; preds = %bb.zd
  %i.ieh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iei = load ptr, ptr %i.ieh, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %342) #11
  %i.iej = getelementptr inbounds nuw i8, ptr %342, i64 16
  %i.iek = getelementptr inbounds nuw i8, ptr %342, i64 17
  store i8 1, ptr %i.iek, align 1, !tbaa !611
  store ptr @.str.664, ptr %342, align 8, !tbaa !612
  store i8 3, ptr %i.iej, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.iei, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %342, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %342) #11
  br label %bb.zf

bb.ze:                                            ; preds = %bb.zd
  %i.iel = getelementptr inbounds nuw i8, ptr %i.iee, i64 4
  %i.iem = load i8, ptr %i.iel, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.ien = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ieo = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 88, ptr noundef nonnull align 8 dereferenceable(656) %i.ien, i64 noundef 8) ; 4 uses
  %i.iep = load ptr, ptr %i.in, align 8, !tbaa !642
  %i.ieq = load ptr, ptr %i.io, align 8, !tbaa !642
  %i.ier = trunc nuw i8 %i.iem to i1
  call void @_ZN6hermes6ESTree28DeclareExportDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_b(ptr noundef nonnull align 8 dereferenceable(81) %i.ieo, ptr noundef %i.iep, ptr noundef nonnull align 8 dereferenceable(16) %340, ptr noundef %i.ieq, i1 noundef zeroext %i.ier)
  %i.ies = getelementptr inbounds nuw i8, ptr %i.ieo, i64 24
  store ptr %.sroa.05391.0, ptr %i.ies, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2787 = getelementptr inbounds nuw i8, ptr %i.ieo, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2787, align 8, !tbaa !635
  %i.iet = ptrtoint ptr %i.ieo to i64
  br label %bb.zf

bb.zf:                                            ; preds = %bb.ze, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2786, %bb.zc
  %.sroa.05404.144 = phi i64 [ %i.iet, %bb.ze ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2786 ], [ undef, %bb.zc ]
  %.sroa.261.144 = phi i8 [ 1, %bb.ze ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2786 ], [ 0, %bb.zc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %340) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.in) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2146:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2008
  %i.ieu = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.iev = xor i128 %i.ieu, 144118719187999777679999634178713019716
  %i.iew = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 11
  %i.iex = load i128, ptr %i.iew, align 1
  %i.iey = xor i128 %i.iex, 146793563361271670531309280759168201842
  %i.iez = or i128 %i.iev, %i.iey
  %i.ifa = icmp ne i128 %i.iez, 0
  %i.ifb = zext i1 %i.ifa to i32
  %i.ifc = icmp eq i32 %i.ifb, 0
  br i1 %i.ifc, label %_ZNK4llvh9StringRef6equalsES0_.exit2146.thread6564, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2146.thread6564: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ip) #11
  store ptr null, ptr %i.ip, align 8, !tbaa !642
  %i.ifd = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.184, i64 6, ptr noundef nonnull align 8 dereferenceable(8) %i.ip)
  br i1 %i.ifd, label %bb.zh, label %bb.zg

bb.zg:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2146.thread6564
  %i.ife = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iff = load ptr, ptr %i.ife, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %343) #11
  %i.ifg = getelementptr inbounds nuw i8, ptr %343, i64 16
  %i.ifh = getelementptr inbounds nuw i8, ptr %343, i64 17
  store i8 1, ptr %i.ifh, align 1, !tbaa !611
  store ptr @.str.666, ptr %343, align 8, !tbaa !612
  store i8 3, ptr %i.ifg, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.iff, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %343, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %343) #11
  br label %bb.zi

bb.zh:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2146.thread6564
  %i.ifi = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ifj = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.ifi, i64 noundef 8) ; 7 uses
  %i.ifk = load ptr, ptr %i.ip, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ifj, i8 0, i64 16, i1 false)
  %i.ifl = getelementptr inbounds nuw i8, ptr %i.ifj, i64 16
  store i32 187, ptr %i.ifl, align 8, !tbaa !627
  %i.ifm = getelementptr inbounds nuw i8, ptr %i.ifj, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ifm, i8 0, i64 28, i1 false)
  %i.ifn = getelementptr inbounds nuw i8, ptr %i.ifj, i64 48
  store ptr %i.ifk, ptr %i.ifn, align 8, !tbaa !975
  %i.ifo = getelementptr inbounds nuw i8, ptr %i.ifj, i64 24
  store ptr %.sroa.05391.0, ptr %i.ifo, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2788 = getelementptr inbounds nuw i8, ptr %i.ifj, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2788, align 8, !tbaa !635
  %i.ifp = ptrtoint ptr %i.ifj to i64
  br label %bb.zi

bb.zi:                                            ; preds = %bb.zh, %bb.zg
  %.sroa.05404.145 = phi i64 [ %i.ifp, %bb.zh ], [ undef, %bb.zg ]
  %.sroa.261.145 = phi i8 [ 1, %bb.zh ], [ 0, %bb.zg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ip) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2149:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2101
  %i.ifq = load i64, ptr %.sroa.01032.0.copyload72407243734873517683, align 1
  %i.ifr = xor i64 %i.ifq, 5576989476324074820
  %i.ifs = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517683, i64 5
  %i.ift = load i64, ptr %i.ifs, align 1
  %i.ifu = xor i64 %i.ift, 7308345369539994994
  %i.ifv = or i64 %i.ifr, %i.ifu
  %i.ifw = icmp ne i64 %i.ifv, 0
  %i.ifx = zext i1 %i.ifw to i32
  %i.ify = icmp eq i32 %i.ifx, 0
  br i1 %i.ify, label %_ZNK4llvh9StringRef6equalsES0_.exit2149.thread6566, label %_ZNK4llvh9StringRef6equalsES0_.exit2194

_ZNK4llvh9StringRef6equalsES0_.exit2149.thread6566: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iq) #11
  store ptr null, ptr %i.iq, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ir) #11
  store ptr null, ptr %i.ir, align 8, !tbaa !642
  %i.ifz = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.iq)
  br i1 %i.ifz, label %bb.zk, label %bb.zj

bb.zj:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2149.thread6566
  %i.iga = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.igb = load ptr, ptr %i.iga, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %344) #11
  %i.igc = getelementptr inbounds nuw i8, ptr %344, i64 16
  %i.igd = getelementptr inbounds nuw i8, ptr %344, i64 17
  store i8 1, ptr %i.igd, align 1, !tbaa !611
  store ptr @.str.668, ptr %344, align 8, !tbaa !612
  store i8 3, ptr %i.igc, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.igb, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %344, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %344) #11
  br label %bb.zn

bb.zk:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2149.thread6566
  %i.ige = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.ir)
  br i1 %i.ige, label %bb.zm, label %bb.zl

bb.zl:                                            ; preds = %bb.zk
  %i.igf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.igg = load ptr, ptr %i.igf, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %345) #11
  %i.igh = getelementptr inbounds nuw i8, ptr %345, i64 16
  %i.igi = getelementptr inbounds nuw i8, ptr %345, i64 17
  store i8 1, ptr %i.igi, align 1, !tbaa !611
  store ptr @.str.669, ptr %345, align 8, !tbaa !612
  store i8 3, ptr %i.igh, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.igg, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %345, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %345) #11
  br label %bb.zn

bb.zm:                                            ; preds = %bb.zk
  %i.igj = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.igk = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.igj, i64 noundef 8) ; 8 uses
  %i.igl = load ptr, ptr %i.iq, align 8, !tbaa !642
  %i.igm = load ptr, ptr %i.ir, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.igk, i8 0, i64 16, i1 false)
  %i.ign = getelementptr inbounds nuw i8, ptr %i.igk, i64 16
  store i32 188, ptr %i.ign, align 8, !tbaa !627
  %i.igo = getelementptr inbounds nuw i8, ptr %i.igk, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.igo, i8 0, i64 28, i1 false)
  %i.igp = getelementptr inbounds nuw i8, ptr %i.igk, i64 48
  store ptr %i.igl, ptr %i.igp, align 8, !tbaa !977
  %i.igq = getelementptr inbounds nuw i8, ptr %i.igk, i64 56
  store ptr %i.igm, ptr %i.igq, align 8, !tbaa !978
  %i.igr = getelementptr inbounds nuw i8, ptr %i.igk, i64 24
  store ptr %.sroa.05391.0, ptr %i.igr, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2789 = getelementptr inbounds nuw i8, ptr %i.igk, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2789, align 8, !tbaa !635
  %i.igs = ptrtoint ptr %i.igk to i64
  br label %bb.zn

bb.zn:                                            ; preds = %bb.zm, %bb.zl, %bb.zj
  %.sroa.05404.146 = phi i64 [ %i.igs, %bb.zm ], [ undef, %bb.zl ], [ undef, %bb.zj ]
  %.sroa.261.146 = phi i8 [ 1, %bb.zm ], [ 0, %bb.zl ], [ 0, %bb.zj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ir) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iq) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2152:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2134
  %i.igt = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.igu = icmp ne i128 %i.igt, 134768041266270601078311581046716720452
  %i.igv = zext i1 %i.igu to i32
  %i.igw = icmp eq i32 %i.igv, 0
  br i1 %i.igw, label %_ZNK4llvh9StringRef6equalsES0_.exit2152.thread6568, label %_ZNK4llvh9StringRef6equalsES0_.exit2158

_ZNK4llvh9StringRef6equalsES0_.exit2152.thread6568: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.is) #11
  store ptr null, ptr %i.is, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.it) #11
  store ptr null, ptr %i.it, align 8, !tbaa !642
  %i.igx = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.is)
  br i1 %i.igx, label %bb.zp, label %bb.zo

bb.zo:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2152.thread6568
  %i.igy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.igz = load ptr, ptr %i.igy, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %346) #11
  %i.iha = getelementptr inbounds nuw i8, ptr %346, i64 16
  %i.ihb = getelementptr inbounds nuw i8, ptr %346, i64 17
  store i8 1, ptr %i.ihb, align 1, !tbaa !611
  store ptr @.str.671, ptr %346, align 8, !tbaa !612
  store i8 3, ptr %i.iha, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.igz, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %346, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %346) #11
  br label %bb.zs

bb.zp:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2152.thread6568
  %i.ihc = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.it)
  br i1 %i.ihc, label %bb.zr, label %bb.zq

bb.zq:                                            ; preds = %bb.zp
  %i.ihd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ihe = load ptr, ptr %i.ihd, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %347) #11
  %i.ihf = getelementptr inbounds nuw i8, ptr %347, i64 16
  %i.ihg = getelementptr inbounds nuw i8, ptr %347, i64 17
  store i8 1, ptr %i.ihg, align 1, !tbaa !611
  store ptr @.str.672, ptr %347, align 8, !tbaa !612
  store i8 3, ptr %i.ihf, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ihe, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %347, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %347) #11
  br label %bb.zs

bb.zr:                                            ; preds = %bb.zp
  %i.ihh = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ihi = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.ihh, i64 noundef 8) ; 8 uses
  %i.ihj = load ptr, ptr %i.is, align 8, !tbaa !642
  %i.ihk = load ptr, ptr %i.it, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ihi, i8 0, i64 16, i1 false)
  %i.ihl = getelementptr inbounds nuw i8, ptr %i.ihi, i64 16
  store i32 189, ptr %i.ihl, align 8, !tbaa !627
  %i.ihm = getelementptr inbounds nuw i8, ptr %i.ihi, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ihm, i8 0, i64 28, i1 false)
  %i.ihn = getelementptr inbounds nuw i8, ptr %i.ihi, i64 48
  store ptr %i.ihj, ptr %i.ihn, align 8, !tbaa !980
  %i.iho = getelementptr inbounds nuw i8, ptr %i.ihi, i64 56
  store ptr %i.ihk, ptr %i.iho, align 8, !tbaa !981
  %i.ihp = getelementptr inbounds nuw i8, ptr %i.ihi, i64 24
  store ptr %.sroa.05391.0, ptr %i.ihp, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2790 = getelementptr inbounds nuw i8, ptr %i.ihi, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2790, align 8, !tbaa !635
  %i.ihq = ptrtoint ptr %i.ihi to i64
  br label %bb.zs

bb.zs:                                            ; preds = %bb.zr, %bb.zq, %bb.zo
  %.sroa.05404.147 = phi i64 [ %i.ihq, %bb.zr ], [ undef, %bb.zq ], [ undef, %bb.zo ]
  %.sroa.261.147 = phi i8 [ 1, %bb.zr ], [ 0, %bb.zq ], [ 0, %bb.zo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.it) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.is) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2155:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2113
  %i.ihr = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.ihs = xor i128 %i.ihr, 149498018672808122658021447277505373508
  %i.iht = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.ihu = load i32, ptr %i.iht, align 1
  %i.ihv = zext i32 %i.ihu to i128
  %i.ihw = xor i128 %i.ihv, 1937011311
  %i.ihx = or i128 %i.ihs, %i.ihw
  %i.ihy = icmp ne i128 %i.ihx, 0
  %i.ihz = zext i1 %i.ihy to i32
  %i.iia = icmp eq i32 %i.ihz, 0
  br i1 %i.iia, label %_ZNK4llvh9StringRef6equalsES0_.exit2155.thread6570, label %_ZNK4llvh9StringRef6equalsES0_.exit2167

_ZNK4llvh9StringRef6equalsES0_.exit2155.thread6570: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iu) #11
  store ptr null, ptr %i.iu, align 8, !tbaa !642
  %i.iib = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.242, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.iu)
  br i1 %i.iib, label %bb.zu, label %bb.zt

bb.zt:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2155.thread6570
  %i.iic = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iid = load ptr, ptr %i.iic, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %348) #11
  %i.iie = getelementptr inbounds nuw i8, ptr %348, i64 16
  %i.iif = getelementptr inbounds nuw i8, ptr %348, i64 17
  store i8 1, ptr %i.iif, align 1, !tbaa !611
  store ptr @.str.674, ptr %348, align 8, !tbaa !612
  store i8 3, ptr %i.iie, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.iid, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %348, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %348) #11
  br label %bb.zv

bb.zu:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2155.thread6570
  %i.iig = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.iih = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.iig, i64 noundef 8) ; 7 uses
  %i.iii = load ptr, ptr %i.iu, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.iih, i8 0, i64 16, i1 false)
  %i.iij = getelementptr inbounds nuw i8, ptr %i.iih, i64 16
  store i32 190, ptr %i.iij, align 8, !tbaa !627
  %i.iik = getelementptr inbounds nuw i8, ptr %i.iih, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.iik, i8 0, i64 28, i1 false)
  %i.iil = getelementptr inbounds nuw i8, ptr %i.iih, i64 48
  store ptr %i.iii, ptr %i.iil, align 8, !tbaa !983
  %i.iim = getelementptr inbounds nuw i8, ptr %i.iih, i64 24
  store ptr %.sroa.05391.0, ptr %i.iim, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2791 = getelementptr inbounds nuw i8, ptr %i.iih, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2791, align 8, !tbaa !635
  %i.iin = ptrtoint ptr %i.iih to i64
  br label %bb.zv

bb.zv:                                            ; preds = %bb.zu, %bb.zt
  %.sroa.05404.148 = phi i64 [ %i.iin, %bb.zu ], [ undef, %bb.zt ]
  %.sroa.261.148 = phi i8 [ 1, %bb.zu ], [ 0, %bb.zt ]
end_hunk_11
begin_hunk_12_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  %i.izh = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.726, i64 10, ptr noundef nonnull align 8 dereferenceable(8) %i.jn)
  br i1 %i.izh, label %bb.aca, label %bb.abz

bb.abz:                                           ; preds = %bb.aby
  %i.izi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.izj = load ptr, ptr %i.izi, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %382) #11
  %i.izk = getelementptr inbounds nuw i8, ptr %382, i64 16
  %i.izl = getelementptr inbounds nuw i8, ptr %382, i64 17
  store i8 1, ptr %i.izl, align 1, !tbaa !611
  store ptr @.str.727, ptr %382, align 8, !tbaa !612
  store i8 3, ptr %i.izk, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.izj, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %382, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %382) #11
  br label %bb.acc

bb.aca:                                           ; preds = %bb.aby
  %i.izm = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.322, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.jo) ; 0 uses
  %i.izn = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.izo = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.izn, ptr nonnull @.str.196, i64 8)
  %i.izp = extractvalue { i64, i8 } %i.izo, 0
  %i.izq = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.izp
  %i.izr = load ptr, ptr %i.izq, align 8, !tbaa !629 ; 2 uses
  %i.izs = load i32, ptr %i.izr, align 4, !tbaa !595
  %i.izt = icmp eq i32 %i.izs, 2
  br i1 %i.izt, label %bb.acb, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2826

bb.acb:                                           ; preds = %bb.aca
  %i.izu = getelementptr inbounds nuw i8, ptr %i.izr, i64 16
  %i.izv = load ptr, ptr %i.izu, align 8, !tbaa !634
  br label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2826

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2826: ; preds = %bb.aca, %bb.acb
  %.05951 = phi ptr [ %i.izv, %bb.acb ], [ null, %bb.aca ]
  %i.izw = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.izx = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 88, ptr noundef nonnull align 8 dereferenceable(656) %i.izw, i64 noundef 8) ; 11 uses
  %i.izy = load ptr, ptr %i.jl, align 8, !tbaa !642
  %i.izz = load ptr, ptr %i.jm, align 8, !tbaa !642
  %i.jaa = load ptr, ptr %i.jn, align 8, !tbaa !642
  %i.jab = load ptr, ptr %i.jo, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.izx, i8 0, i64 16, i1 false)
  %i.jac = getelementptr inbounds nuw i8, ptr %i.izx, i64 16
  store i32 200, ptr %i.jac, align 8, !tbaa !627
  %i.jad = getelementptr inbounds nuw i8, ptr %i.izx, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.jad, i8 0, i64 28, i1 false)
  %i.jae = getelementptr inbounds nuw i8, ptr %i.izx, i64 48
  store ptr %i.izy, ptr %i.jae, align 8, !tbaa !1009
  %i.jaf = getelementptr inbounds nuw i8, ptr %i.izx, i64 56
  store ptr %i.izz, ptr %i.jaf, align 8, !tbaa !1010
  %i.jag = getelementptr inbounds nuw i8, ptr %i.izx, i64 64
  store ptr %i.jaa, ptr %i.jag, align 8, !tbaa !1011
  %i.jah = getelementptr inbounds nuw i8, ptr %i.izx, i64 72
  store ptr %i.jab, ptr %i.jah, align 8, !tbaa !1012
  %i.jai = getelementptr inbounds nuw i8, ptr %i.izx, i64 80
  store ptr %.05951, ptr %i.jai, align 8, !tbaa !1355
  %i.jaj = getelementptr inbounds nuw i8, ptr %i.izx, i64 24
  store ptr %.sroa.05391.0, ptr %i.jaj, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2827 = getelementptr inbounds nuw i8, ptr %i.izx, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2827, align 8, !tbaa !635
  %i.jak = ptrtoint ptr %i.izx to i64
  br label %bb.acc

bb.acc:                                           ; preds = %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2826, %bb.abz, %bb.abx, %bb.abv
  %.sroa.05404.158 = phi i64 [ %i.jak, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2826 ], [ undef, %bb.abz ], [ undef, %bb.abx ], [ undef, %bb.abv ]
  %.sroa.261.158 = phi i8 [ 1, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2826 ], [ 0, %bb.abz ], [ 0, %bb.abx ], [ 0, %bb.abv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jo) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jn) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jm) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jl) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2188:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1834
  %i.jal = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.jam = icmp ne i64 %i.jal, 7305804385185063254
  %i.jan = zext i1 %i.jam to i32
  %i.jao = icmp eq i32 %i.jan, 0
  br i1 %i.jao, label %_ZNK4llvh9StringRef6equalsES0_.exit2188.thread6616, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2188.thread6616: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2188
  %i.jap = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.jaq = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.jap, ptr nonnull @.str.262, i64 4)
  %i.jar = extractvalue { i64, i8 } %i.jaq, 0
  %i.jas = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.jar
  %i.jat = load ptr, ptr %i.jas, align 8, !tbaa !629 ; 2 uses
  %i.jau = load i32, ptr %i.jat, align 4, !tbaa !595
  %i.jav = icmp eq i32 %i.jau, 2
  br i1 %i.jav, label %bb.acd, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2829

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2829: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2188.thread6616
  %i.jaw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jax = load ptr, ptr %i.jaw, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %383) #11
  %i.jay = getelementptr inbounds nuw i8, ptr %383, i64 16
  %i.jaz = getelementptr inbounds nuw i8, ptr %383, i64 17
  store i8 1, ptr %i.jaz, align 1, !tbaa !611
  store ptr @.str.731, ptr %383, align 8, !tbaa !612
  store i8 3, ptr %i.jay, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.jax, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %383, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %383) #11
  br label %bb.aly

bb.acd:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2188.thread6616
  %i.jba = getelementptr inbounds nuw i8, ptr %i.jat, i64 16
  %i.jbb = load ptr, ptr %i.jba, align 8, !tbaa !634
  %i.jbc = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.jbd = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.jbc, i64 noundef 8) ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jbd, i8 0, i64 16, i1 false)
  %i.jbe = getelementptr inbounds nuw i8, ptr %i.jbd, i64 16
  store i32 201, ptr %i.jbe, align 8, !tbaa !627
  %i.jbf = getelementptr inbounds nuw i8, ptr %i.jbd, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.jbf, i8 0, i64 28, i1 false)
  %i.jbg = getelementptr inbounds nuw i8, ptr %i.jbd, i64 48
  store ptr %i.jbb, ptr %i.jbg, align 8, !tbaa !1357
  %i.jbh = getelementptr inbounds nuw i8, ptr %i.jbd, i64 24
  store ptr %.sroa.05391.0, ptr %i.jbh, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2830 = getelementptr inbounds nuw i8, ptr %i.jbd, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2830, align 8, !tbaa !635
  %i.jbi = ptrtoint ptr %i.jbd to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2191:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2173
  %i.jbj = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.jbk = xor i128 %i.jbj, 132119381832680964311444597735030815060
  %i.jbl = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.jbm = load i64, ptr %i.jbl, align 1
  %i.jbn = zext i64 %i.jbm to i128
  %i.jbo = xor i128 %i.jbn, 7957695015158964588
  %i.jbp = or i128 %i.jbk, %i.jbo
  %i.jbq = icmp ne i128 %i.jbp, 0
  %i.jbr = zext i1 %i.jbq to i32
  %i.jbs = icmp eq i32 %i.jbr, 0
  br i1 %i.jbs, label %_ZNK4llvh9StringRef6equalsES0_.exit2191.thread6620, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2191.thread6620: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2191
  call void @llvm.lifetime.start.p0(ptr nonnull %384) #11
  store ptr %384, ptr %384, align 8, !tbaa !639
  %i.jbt = getelementptr inbounds nuw i8, ptr %384, i64 8 ; 2 uses
  store ptr %384, ptr %i.jbt, align 8, !tbaa !640
  %i.jbu = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.19, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %384)
  br i1 %i.jbu, label %bb.acf, label %bb.ace

bb.ace:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2191.thread6620
  %i.jbv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jbw = load ptr, ptr %i.jbv, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %385) #11
  %i.jbx = getelementptr inbounds nuw i8, ptr %385, i64 16
  %i.jby = getelementptr inbounds nuw i8, ptr %385, i64 17
  store i8 1, ptr %i.jby, align 1, !tbaa !611
  store ptr @.str.733, ptr %385, align 8, !tbaa !612
  store i8 3, ptr %i.jbx, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.jbw, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %385, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %385) #11
  br label %bb.ach

bb.acf:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2191.thread6620
  %i.jbz = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.jca = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.jbz, i64 noundef 8) ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jca, i8 0, i64 16, i1 false)
  %i.jcb = getelementptr inbounds nuw i8, ptr %i.jca, i64 16
  store i32 202, ptr %i.jcb, align 8, !tbaa !627
  %i.jcc = getelementptr inbounds nuw i8, ptr %i.jca, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.jcc, i8 0, i64 28, i1 false)
  %i.jcd = getelementptr inbounds nuw i8, ptr %i.jca, i64 48 ; 7 uses
  store ptr %i.jcd, ptr %i.jcd, align 8, !tbaa !639
  %i.jce = getelementptr inbounds nuw i8, ptr %i.jca, i64 56
  store ptr %i.jcd, ptr %i.jce, align 8, !tbaa !640
  %i.jcf = load ptr, ptr %i.jbt, align 8, !tbaa !640 ; 4 uses
  %i.jcg = icmp eq ptr %i.jcd, %384
  %i.jch = icmp eq ptr %i.jcf, %384
  %or.cond.i.i.i.i.i.i2831 = or i1 %i.jcg, %i.jch
  br i1 %or.cond.i.i.i.i.i.i2831, label %_ZN6hermes6ESTree28TypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.acg

bb.acg:                                           ; preds = %bb.acf
  %i.jci = load ptr, ptr %384, align 8, !tbaa !639 ; 2 uses
  %i.jcj = load ptr, ptr %i.jcf, align 8, !tbaa !639
  %i.jck = getelementptr inbounds nuw i8, ptr %i.jcj, i64 8
  store ptr %384, ptr %i.jck, align 8, !tbaa !640
  %i.jcl = getelementptr inbounds nuw i8, ptr %i.jci, i64 8
  store ptr %i.jcd, ptr %i.jcl, align 8, !tbaa !640
  store ptr %i.jcd, ptr %i.jcf, align 8, !tbaa !639
  %i.jcm = getelementptr inbounds nuw i8, ptr %i.jca, i64 56
  store ptr %i.jcf, ptr %i.jcm, align 8, !tbaa !640
  store ptr %i.jci, ptr %i.jcd, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree28TypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree28TypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %bb.acf, %bb.acg
  %i.jcn = getelementptr inbounds nuw i8, ptr %i.jca, i64 24
  store ptr %.sroa.05391.0, ptr %i.jcn, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2832 = getelementptr inbounds nuw i8, ptr %i.jca, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2832, align 8, !tbaa !635
  %i.jco = ptrtoint ptr %i.jca to i64
  br label %bb.ach

bb.ach:                                           ; preds = %_ZN6hermes6ESTree28TypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, %bb.ace
  %.sroa.05404.160 = phi i64 [ %i.jco, %_ZN6hermes6ESTree28TypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.ace ]
  %.sroa.261.160 = phi i8 [ 1, %_ZN6hermes6ESTree28TypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.ace ]
  call void @llvm.lifetime.end.p0(ptr nonnull %384) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2194:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2149
  %i.jcp = load i64, ptr %.sroa.01032.0.copyload72407243734873517683, align 1
  %i.jcq = xor i64 %i.jcp, 7021781766951172436
  %i.jcr = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517683, i64 5
  %i.jcs = load i64, ptr %i.jcr, align 1
  %i.jct = xor i64 %i.jcs, 8243122671947182689
  %i.jcu = or i64 %i.jcq, %i.jct
  %i.jcv = icmp ne i64 %i.jcu, 0
  %i.jcw = zext i1 %i.jcv to i32
  %i.jcx = icmp eq i32 %i.jcw, 0
  br i1 %i.jcx, label %_ZNK4llvh9StringRef6equalsES0_.exit2194.thread6622, label %_ZNK4llvh9StringRef6equalsES0_.exit2269

_ZNK4llvh9StringRef6equalsES0_.exit2194.thread6622: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jp) #11
  store ptr null, ptr %i.jp, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jq) #11
  store ptr null, ptr %i.jq, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jr) #11
  store ptr null, ptr %i.jr, align 8, !tbaa !642
  %i.jcy = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.jcz = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.jcy, ptr nonnull @.str.240, i64 4)
  %i.jda = extractvalue { i64, i8 } %i.jcz, 0
  %i.jdb = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.jda
  %i.jdc = load ptr, ptr %i.jdb, align 8, !tbaa !629 ; 2 uses
  %i.jdd = load i32, ptr %i.jdc, align 4, !tbaa !595
  %i.jde = icmp eq i32 %i.jdd, 2
  br i1 %i.jde, label %bb.aci, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2834

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2834: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2194.thread6622
  %i.jdf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jdg = load ptr, ptr %i.jdf, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %386) #11
  %i.jdh = getelementptr inbounds nuw i8, ptr %386, i64 16
  %i.jdi = getelementptr inbounds nuw i8, ptr %386, i64 17
  store i8 1, ptr %i.jdi, align 1, !tbaa !611
  store ptr @.str.735, ptr %386, align 8, !tbaa !612
  store i8 3, ptr %i.jdh, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.jdg, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %386, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %386) #11
  br label %bb.acl

bb.aci:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2194.thread6622
  %i.jdj = getelementptr inbounds nuw i8, ptr %i.jdc, i64 16
  %i.jdk = load ptr, ptr %i.jdj, align 8, !tbaa !634
  %i.jdl = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.jdm = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.jdl, ptr nonnull @.str.736, i64 5)
  %i.jdn = extractvalue { i64, i8 } %i.jdm, 0
  %i.jdo = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.jdn
  %i.jdp = load ptr, ptr %i.jdo, align 8, !tbaa !629 ; 2 uses
  %i.jdq = load i32, ptr %i.jdp, align 4, !tbaa !595
  %i.jdr = icmp eq i32 %i.jdq, 4
  br i1 %i.jdr, label %bb.acj, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2836

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2836: ; preds = %bb.aci
  %i.jds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jdt = load ptr, ptr %i.jds, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %387) #11
  %i.jdu = getelementptr inbounds nuw i8, ptr %387, i64 16
  %i.jdv = getelementptr inbounds nuw i8, ptr %387, i64 17
  store i8 1, ptr %i.jdv, align 1, !tbaa !611
  store ptr @.str.737, ptr %387, align 8, !tbaa !612
  store i8 3, ptr %i.jdu, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.jdt, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %387, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %387) #11
  br label %bb.acl

bb.acj:                                           ; preds = %bb.aci
  %i.jdw = getelementptr inbounds nuw i8, ptr %i.jdp, i64 4
  %i.jdx = load i8, ptr %i.jdw, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.jdy = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.738, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.jp) ; 0 uses
  %i.jdz = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.322, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.jq) ; 0 uses
  %i.jea = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.663, i64 7, ptr noundef nonnull align 8 dereferenceable(8) %i.jr) ; 0 uses
  %i.jeb = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.jec = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.jeb, ptr nonnull @.str.742, i64 16)
  %i.jed = extractvalue { i64, i8 } %i.jec, 0
  %i.jee = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.jed
  %i.jef = load ptr, ptr %i.jee, align 8, !tbaa !629 ; 2 uses
  %i.jeg = load i32, ptr %i.jef, align 4, !tbaa !595
  %i.jeh = icmp eq i32 %i.jeg, 4
  br i1 %i.jeh, label %bb.ack, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2838

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2838: ; preds = %bb.acj
  %i.jei = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jej = load ptr, ptr %i.jei, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %388) #11
  %i.jek = getelementptr inbounds nuw i8, ptr %388, i64 16
  %i.jel = getelementptr inbounds nuw i8, ptr %388, i64 17
  store i8 1, ptr %i.jel, align 1, !tbaa !611
  store ptr @.str.743, ptr %388, align 8, !tbaa !612
  store i8 3, ptr %i.jek, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.jej, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %388, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %388) #11
  br label %bb.acl

bb.ack:                                           ; preds = %bb.acj
  %i.jem = getelementptr inbounds nuw i8, ptr %i.jef, i64 4
  %i.jen = load i8, ptr %i.jem, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.jeo = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.jep = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 96, ptr noundef nonnull align 8 dereferenceable(656) %i.jeo, i64 noundef 8) ; 12 uses
  %i.jeq = load ptr, ptr %i.jp, align 8, !tbaa !642
  %i.jer = load ptr, ptr %i.jq, align 8, !tbaa !642
  %i.jes = load ptr, ptr %i.jr, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.jep, i8 0, i64 16, i1 false)
  %i.jet = getelementptr inbounds nuw i8, ptr %i.jep, i64 16
  store i32 203, ptr %i.jet, align 8, !tbaa !627
  %i.jeu = getelementptr inbounds nuw i8, ptr %i.jep, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.jeu, i8 0, i64 28, i1 false)
  %i.jev = getelementptr inbounds nuw i8, ptr %i.jep, i64 48
  store ptr %i.jdk, ptr %i.jev, align 8, !tbaa !1358
  %i.jew = getelementptr inbounds nuw i8, ptr %i.jep, i64 56
  store i8 %i.jdx, ptr %i.jew, align 8, !tbaa !1359
  %i.jex = getelementptr inbounds nuw i8, ptr %i.jep, i64 64
  store ptr %i.jeq, ptr %i.jex, align 8, !tbaa !1014
  %i.jey = getelementptr inbounds nuw i8, ptr %i.jep, i64 72
  store ptr %i.jer, ptr %i.jey, align 8, !tbaa !1015
  %i.jez = getelementptr inbounds nuw i8, ptr %i.jep, i64 80
  store ptr %i.jes, ptr %i.jez, align 8, !tbaa !1016
  %i.jfa = getelementptr inbounds nuw i8, ptr %i.jep, i64 88
  store i8 %i.jen, ptr %i.jfa, align 8, !tbaa !1360
  %i.jfb = getelementptr inbounds nuw i8, ptr %i.jep, i64 24
  store ptr %.sroa.05391.0, ptr %i.jfb, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2839 = getelementptr inbounds nuw i8, ptr %i.jep, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2839, align 8, !tbaa !635
  %i.jfc = ptrtoint ptr %i.jep to i64
  br label %bb.acl

bb.acl:                                           ; preds = %bb.ack, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2838, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2836, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2834
  %.sroa.05404.161 = phi i64 [ %i.jfc, %bb.ack ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2838 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2836 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2834 ]
  %.sroa.261.161 = phi i8 [ 1, %bb.ack ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2838 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2836 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2834 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jr) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jq) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jp) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2197:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2086
  %i.jfd = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.jfe = xor i128 %i.jfd, 153433861849014449984914404902735739220
  %i.jff = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 10
  %i.jfg = load i128, ptr %i.jff, align 1
  %i.jfh = xor i128 %i.jfg, 146793563361260879960649570388901258612
  %i.jfi = or i128 %i.jfe, %i.jfh
  %i.jfj = icmp ne i128 %i.jfi, 0
  %i.jfk = zext i1 %i.jfj to i32
  %i.jfl = icmp eq i32 %i.jfk, 0
  br i1 %i.jfl, label %_ZNK4llvh9StringRef6equalsES0_.exit2197.thread6630, label %_ZNK4llvh9StringRef6equalsES0_.exit2350

_ZNK4llvh9StringRef6equalsES0_.exit2197.thread6630: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2197
  call void @llvm.lifetime.start.p0(ptr nonnull %389) #11
  store ptr %389, ptr %389, align 8, !tbaa !639
  %i.jfm = getelementptr inbounds nuw i8, ptr %389, i64 8 ; 2 uses
  store ptr %389, ptr %i.jfm, align 8, !tbaa !640
  %i.jfn = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.19, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %389)
  br i1 %i.jfn, label %bb.acn, label %bb.acm

bb.acm:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2197.thread6630
  %i.jfo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jfp = load ptr, ptr %i.jfo, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %390) #11
  %i.jfq = getelementptr inbounds nuw i8, ptr %390, i64 16
  %i.jfr = getelementptr inbounds nuw i8, ptr %390, i64 17
  store i8 1, ptr %i.jfr, align 1, !tbaa !611
  store ptr @.str.745, ptr %390, align 8, !tbaa !612
  store i8 3, ptr %i.jfq, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.jfp, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %390, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %390) #11
  br label %bb.acp

bb.acn:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2197.thread6630
  %i.jfs = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.jft = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.jfs, i64 noundef 8) ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jft, i8 0, i64 16, i1 false)
  %i.jfu = getelementptr inbounds nuw i8, ptr %i.jft, i64 16
  store i32 204, ptr %i.jfu, align 8, !tbaa !627
  %i.jfv = getelementptr inbounds nuw i8, ptr %i.jft, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.jfv, i8 0, i64 28, i1 false)
  %i.jfw = getelementptr inbounds nuw i8, ptr %i.jft, i64 48 ; 7 uses
  store ptr %i.jfw, ptr %i.jfw, align 8, !tbaa !639
  %i.jfx = getelementptr inbounds nuw i8, ptr %i.jft, i64 56
  store ptr %i.jfw, ptr %i.jfx, align 8, !tbaa !640
  %i.jfy = load ptr, ptr %i.jfm, align 8, !tbaa !640 ; 4 uses
  %i.jfz = icmp eq ptr %i.jfw, %389
  %i.jga = icmp eq ptr %i.jfy, %389
  %or.cond.i.i.i.i.i.i2840 = or i1 %i.jfz, %i.jga
  br i1 %or.cond.i.i.i.i.i.i2840, label %_ZN6hermes6ESTree30TypeParameterInstantiationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.aco

bb.aco:                                           ; preds = %bb.acn
  %i.jgb = load ptr, ptr %389, align 8, !tbaa !639 ; 2 uses
  %i.jgc = load ptr, ptr %i.jfy, align 8, !tbaa !639
  %i.jgd = getelementptr inbounds nuw i8, ptr %i.jgc, i64 8
  store ptr %389, ptr %i.jgd, align 8, !tbaa !640
  %i.jge = getelementptr inbounds nuw i8, ptr %i.jgb, i64 8
  store ptr %i.jfw, ptr %i.jge, align 8, !tbaa !640
  store ptr %i.jfw, ptr %i.jfy, align 8, !tbaa !639
  %i.jgf = getelementptr inbounds nuw i8, ptr %i.jft, i64 56
  store ptr %i.jfy, ptr %i.jgf, align 8, !tbaa !640
  store ptr %i.jgb, ptr %i.jfw, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree30TypeParameterInstantiationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree30TypeParameterInstantiationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %bb.acn, %bb.aco
  %i.jgg = getelementptr inbounds nuw i8, ptr %i.jft, i64 24
  store ptr %.sroa.05391.0, ptr %i.jgg, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2841 = getelementptr inbounds nuw i8, ptr %i.jft, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2841, align 8, !tbaa !635
  %i.jgh = ptrtoint ptr %i.jft to i64
end_hunk_12
begin_hunk_13_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  %i.kay = getelementptr inbounds nuw i8, ptr %i.kas, i64 56
  store ptr %i.kau, ptr %i.kay, align 8, !tbaa !1046
  %i.kaz = getelementptr inbounds nuw i8, ptr %i.kas, i64 64
  store i8 %i.kaq, ptr %i.kaz, align 8, !tbaa !1361
  %i.kba = getelementptr inbounds nuw i8, ptr %i.kas, i64 24
  store ptr %.sroa.05391.0, ptr %i.kba, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2878 = getelementptr inbounds nuw i8, ptr %i.kas, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2878, align 8, !tbaa !635
  %i.kbb = ptrtoint ptr %i.kas to i64
  br label %bb.afl

bb.afl:                                           ; preds = %bb.afk, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2877, %bb.afi, %bb.afg
  %.sroa.05404.178 = phi i64 [ %i.kbb, %bb.afk ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2877 ], [ undef, %bb.afi ], [ undef, %bb.afg ]
  %.sroa.261.178 = phi i8 [ 1, %bb.afk ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2877 ], [ 0, %bb.afi ], [ 0, %bb.afg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kk) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kj) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2251:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2242
  %i.kbc = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.kbd = icmp ne i128 %i.kbc, 146793563361274154533755295076508259156
  %i.kbe = zext i1 %i.kbd to i32
  %i.kbf = icmp eq i32 %i.kbe, 0
  br i1 %i.kbf, label %_ZNK4llvh9StringRef6equalsES0_.exit2251.thread6686, label %_ZNK4llvh9StringRef6equalsES0_.exit2260

_ZNK4llvh9StringRef6equalsES0_.exit2251.thread6686: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kl) #11
  store ptr null, ptr %i.kl, align 8, !tbaa !642
  %i.kbg = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.242, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.kl)
  br i1 %i.kbg, label %bb.afn, label %bb.afm

bb.afm:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2251.thread6686
  %i.kbh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kbi = load ptr, ptr %i.kbh, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %430) #11
  %i.kbj = getelementptr inbounds nuw i8, ptr %430, i64 16
  %i.kbk = getelementptr inbounds nuw i8, ptr %430, i64 17
  store i8 1, ptr %i.kbk, align 1, !tbaa !611
  store ptr @.str.801, ptr %430, align 8, !tbaa !612
  store i8 3, ptr %i.kbj, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.kbi, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %430, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %430) #11
  br label %bb.afo

bb.afn:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2251.thread6686
  %i.kbl = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kbm = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.kbl, i64 noundef 8) ; 7 uses
  %i.kbn = load ptr, ptr %i.kl, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kbm, i8 0, i64 16, i1 false)
  %i.kbo = getelementptr inbounds nuw i8, ptr %i.kbm, i64 16
  store i32 224, ptr %i.kbo, align 8, !tbaa !627
  %i.kbp = getelementptr inbounds nuw i8, ptr %i.kbm, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kbp, i8 0, i64 28, i1 false)
  %i.kbq = getelementptr inbounds nuw i8, ptr %i.kbm, i64 48
  store ptr %i.kbn, ptr %i.kbq, align 8, !tbaa !1049
  %i.kbr = getelementptr inbounds nuw i8, ptr %i.kbm, i64 24
  store ptr %.sroa.05391.0, ptr %i.kbr, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2879 = getelementptr inbounds nuw i8, ptr %i.kbm, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2879, align 8, !tbaa !635
  %i.kbs = ptrtoint ptr %i.kbm to i64
  br label %bb.afo

bb.afo:                                           ; preds = %bb.afn, %bb.afm
  %.sroa.05404.179 = phi i64 [ %i.kbs, %bb.afn ], [ undef, %bb.afm ]
  %.sroa.261.179 = phi i8 [ 1, %bb.afn ], [ 0, %bb.afm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kl) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2254:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2203
  %i.kbt = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.kbu = xor i64 %i.kbt, 8747480836149957460
  %i.kbv = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 8
  %i.kbw = load i32, ptr %i.kbv, align 1
  %i.kbx = zext i32 %i.kbw to i64
  %i.kby = xor i64 %i.kbx, 1685221239
  %i.kbz = or i64 %i.kbu, %i.kby
  %i.kca = icmp ne i64 %i.kbz, 0
  %i.kcb = zext i1 %i.kca to i32
  %i.kcc = icmp eq i32 %i.kcb, 0
  br i1 %i.kcc, label %_ZNK4llvh9StringRef6equalsES0_.exit2254.thread6688, label %_ZNK4llvh9StringRef6equalsES0_.exit2338

_ZNK4llvh9StringRef6equalsES0_.exit2254.thread6688: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2254
  %i.kcd = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kce = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.kcd, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kce, i8 0, i64 16, i1 false)
  %i.kcf = getelementptr inbounds nuw i8, ptr %i.kce, i64 16
  store i32 225, ptr %i.kcf, align 8, !tbaa !627
  %i.kcg = getelementptr inbounds nuw i8, ptr %i.kce, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kcg, i8 0, i64 28, i1 false)
  %i.kch = getelementptr inbounds nuw i8, ptr %i.kce, i64 24
  store ptr %.sroa.05391.0, ptr %i.kch, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2880 = getelementptr inbounds nuw i8, ptr %i.kce, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2880, align 8, !tbaa !635
  %i.kci = ptrtoint ptr %i.kce to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2257:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2227
  %i.kcj = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.kck = xor i64 %i.kcj, 8243102915230585684
  %i.kcl = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.kcm = load i64, ptr %i.kcl, align 1
  %i.kcn = xor i64 %i.kcm, 7237970110066281330
  %i.kco = or i64 %i.kck, %i.kcn
  %i.kcp = icmp ne i64 %i.kco, 0
  %i.kcq = zext i1 %i.kcp to i32
  %i.kcr = icmp eq i32 %i.kcq, 0
  br i1 %i.kcr, label %_ZNK4llvh9StringRef6equalsES0_.exit2257.thread6690, label %_ZNK4llvh9StringRef6equalsES0_.exit2263

_ZNK4llvh9StringRef6equalsES0_.exit2257.thread6690: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2257
  %i.kcs = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kct = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.kcs, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kct, i8 0, i64 16, i1 false)
  %i.kcu = getelementptr inbounds nuw i8, ptr %i.kct, i64 16
  store i32 226, ptr %i.kcu, align 8, !tbaa !627
  %i.kcv = getelementptr inbounds nuw i8, ptr %i.kct, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kcv, i8 0, i64 28, i1 false)
  %i.kcw = getelementptr inbounds nuw i8, ptr %i.kct, i64 24
  store ptr %.sroa.05391.0, ptr %i.kcw, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2881 = getelementptr inbounds nuw i8, ptr %i.kct, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2881, align 8, !tbaa !635
  %i.kcx = ptrtoint ptr %i.kct to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2260:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2251
  %i.kcy = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.kcz = icmp ne i128 %i.kcy, 133516982233552046082716443400164496212
  %i.kda = zext i1 %i.kcz to i32
  %i.kdb = icmp eq i32 %i.kda, 0
  br i1 %i.kdb, label %_ZNK4llvh9StringRef6equalsES0_.exit2260.thread6692, label %_ZNK4llvh9StringRef6equalsES0_.exit2275

_ZNK4llvh9StringRef6equalsES0_.exit2260.thread6692: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2260
  %i.kdc = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kdd = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.kdc, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kdd, i8 0, i64 16, i1 false)
  %i.kde = getelementptr inbounds nuw i8, ptr %i.kdd, i64 16
  store i32 227, ptr %i.kde, align 8, !tbaa !627
  %i.kdf = getelementptr inbounds nuw i8, ptr %i.kdd, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kdf, i8 0, i64 28, i1 false)
  %i.kdg = getelementptr inbounds nuw i8, ptr %i.kdd, i64 24
  store ptr %.sroa.05391.0, ptr %i.kdg, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2882 = getelementptr inbounds nuw i8, ptr %i.kdd, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2882, align 8, !tbaa !635
  %i.kdh = ptrtoint ptr %i.kdd to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2263:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2257
  %i.kdi = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.kdj = xor i64 %i.kdi, 7453010373643555668
  %i.kdk = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.kdl = load i64, ptr %i.kdk, align 1
  %i.kdm = xor i64 %i.kdl, 7237970110066281319
  %i.kdn = or i64 %i.kdj, %i.kdm
  %i.kdo = icmp ne i64 %i.kdn, 0
  %i.kdp = zext i1 %i.kdo to i32
  %i.kdq = icmp eq i32 %i.kdp, 0
  br i1 %i.kdq, label %_ZNK4llvh9StringRef6equalsES0_.exit2263.thread6694, label %_ZNK4llvh9StringRef6equalsES0_.exit2266

_ZNK4llvh9StringRef6equalsES0_.exit2263.thread6694: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2263
  %i.kdr = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kds = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.kdr, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kds, i8 0, i64 16, i1 false)
  %i.kdt = getelementptr inbounds nuw i8, ptr %i.kds, i64 16
  store i32 228, ptr %i.kdt, align 8, !tbaa !627
  %i.kdu = getelementptr inbounds nuw i8, ptr %i.kds, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kdu, i8 0, i64 28, i1 false)
  %i.kdv = getelementptr inbounds nuw i8, ptr %i.kds, i64 24
  store ptr %.sroa.05391.0, ptr %i.kdv, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2883 = getelementptr inbounds nuw i8, ptr %i.kds, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2883, align 8, !tbaa !635
  %i.kdw = ptrtoint ptr %i.kds to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2266:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2263
  %i.kdx = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.kdy = xor i64 %i.kdx, 7813572100837561172
  %i.kdz = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.kea = load i64, ptr %i.kdz, align 1
  %i.keb = xor i64 %i.kea, 7237970110066281324
  %i.kec = or i64 %i.kdy, %i.keb
  %i.ked = icmp ne i64 %i.kec, 0
  %i.kee = zext i1 %i.ked to i32
  %i.kef = icmp eq i32 %i.kee, 0
  br i1 %i.kef, label %_ZNK4llvh9StringRef6equalsES0_.exit2266.thread6696, label %_ZNK4llvh9StringRef6equalsES0_.exit2281

_ZNK4llvh9StringRef6equalsES0_.exit2266.thread6696: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2266
  %i.keg = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.keh = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.keg, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.keh, i8 0, i64 16, i1 false)
  %i.kei = getelementptr inbounds nuw i8, ptr %i.keh, i64 16
  store i32 229, ptr %i.kei, align 8, !tbaa !627
  %i.kej = getelementptr inbounds nuw i8, ptr %i.keh, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kej, i8 0, i64 28, i1 false)
  %i.kek = getelementptr inbounds nuw i8, ptr %i.keh, i64 24
  store ptr %.sroa.05391.0, ptr %i.kek, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2884 = getelementptr inbounds nuw i8, ptr %i.keh, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2884, align 8, !tbaa !635
  %i.kel = ptrtoint ptr %i.keh to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2269:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2194
  %i.kem = load i64, ptr %.sroa.01032.0.copyload72407243734873517683, align 1
  %i.ken = xor i64 %i.kem, 7299038025086292820
  %i.keo = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517683, i64 5
  %i.kep = load i64, ptr %i.keo, align 1
  %i.keq = xor i64 %i.kep, 7237970110066281316
  %i.ker = or i64 %i.ken, %i.keq
  %i.kes = icmp ne i64 %i.ker, 0
  %i.ket = zext i1 %i.kes to i32
  %i.keu = icmp eq i32 %i.ket, 0
  br i1 %i.keu, label %_ZNK4llvh9StringRef6equalsES0_.exit2269.thread6698, label %_ZNK4llvh9StringRef6equalsES0_.exit2287

_ZNK4llvh9StringRef6equalsES0_.exit2269.thread6698: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2269
  %i.kev = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kew = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.kev, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kew, i8 0, i64 16, i1 false)
  %i.kex = getelementptr inbounds nuw i8, ptr %i.kew, i64 16
  store i32 230, ptr %i.kex, align 8, !tbaa !627
  %i.key = getelementptr inbounds nuw i8, ptr %i.kew, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.key, i8 0, i64 28, i1 false)
  %i.kez = getelementptr inbounds nuw i8, ptr %i.kew, i64 24
  store ptr %.sroa.05391.0, ptr %i.kez, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2885 = getelementptr inbounds nuw i8, ptr %i.kew, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2885, align 8, !tbaa !635
  %i.kfa = ptrtoint ptr %i.kew to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2272:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2248
  %i.kfb = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.kfc = xor i128 %i.kfb, 148164653055230509487250937637315629908
  %i.kfd = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.kfe = load i16, ptr %i.kfd, align 1
  %i.kff = zext i16 %i.kfe to i128
  %i.kfg = xor i128 %i.kff, 25714
  %i.kfh = or i128 %i.kfc, %i.kfg
  %i.kfi = icmp ne i128 %i.kfh, 0
  %i.kfj = zext i1 %i.kfi to i32
  %i.kfk = icmp eq i32 %i.kfj, 0
  br i1 %i.kfk, label %_ZNK4llvh9StringRef6equalsES0_.exit2272.thread6700, label %_ZNK4llvh9StringRef6equalsES0_.exit2362

_ZNK4llvh9StringRef6equalsES0_.exit2272.thread6700: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2272
  %i.kfl = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kfm = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.kfl, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kfm, i8 0, i64 16, i1 false)
  %i.kfn = getelementptr inbounds nuw i8, ptr %i.kfm, i64 16
  store i32 231, ptr %i.kfn, align 8, !tbaa !627
  %i.kfo = getelementptr inbounds nuw i8, ptr %i.kfm, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kfo, i8 0, i64 28, i1 false)
  %i.kfp = getelementptr inbounds nuw i8, ptr %i.kfm, i64 24
  store ptr %.sroa.05391.0, ptr %i.kfp, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2886 = getelementptr inbounds nuw i8, ptr %i.kfm, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2886, align 8, !tbaa !635
  %i.kfq = ptrtoint ptr %i.kfm to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2275:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2260
  %i.kfr = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.kfs = icmp ne i128 %i.kfr, 133516982233552046084304527400593871700
  %i.kft = zext i1 %i.kfs to i32
  %i.kfu = icmp eq i32 %i.kft, 0
  br i1 %i.kfu, label %_ZNK4llvh9StringRef6equalsES0_.exit2275.thread6702, label %_ZNK4llvh9StringRef6equalsES0_.exit2380

_ZNK4llvh9StringRef6equalsES0_.exit2275.thread6702: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2275
  %i.kfv = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kfw = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.kfv, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kfw, i8 0, i64 16, i1 false)
  %i.kfx = getelementptr inbounds nuw i8, ptr %i.kfw, i64 16
  store i32 232, ptr %i.kfx, align 8, !tbaa !627
  %i.kfy = getelementptr inbounds nuw i8, ptr %i.kfw, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kfy, i8 0, i64 28, i1 false)
  %i.kfz = getelementptr inbounds nuw i8, ptr %i.kfw, i64 24
  store ptr %.sroa.05391.0, ptr %i.kfz, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2887 = getelementptr inbounds nuw i8, ptr %i.kfw, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2887, align 8, !tbaa !635
  %i.kga = ptrtoint ptr %i.kfw to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2278:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2230
  %i.kgb = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.kgc = xor i64 %i.kgb, 5436519259369788244
  %i.kgd = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.kge = load i64, ptr %i.kgd, align 1
  %i.kgf = xor i64 %i.kge, 7237970110066281330
  %i.kgg = or i64 %i.kgc, %i.kgf
  %i.kgh = icmp ne i64 %i.kgg, 0
  %i.kgi = zext i1 %i.kgh to i32
  %i.kgj = icmp eq i32 %i.kgi, 0
  br i1 %i.kgj, label %_ZNK4llvh9StringRef6equalsES0_.exit2278.thread6704, label %_ZNK4llvh9StringRef6equalsES0_.exit2302

_ZNK4llvh9StringRef6equalsES0_.exit2278.thread6704: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2278
  %i.kgk = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kgl = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.kgk, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kgl, i8 0, i64 16, i1 false)
  %i.kgm = getelementptr inbounds nuw i8, ptr %i.kgl, i64 16
  store i32 233, ptr %i.kgm, align 8, !tbaa !627
  %i.kgn = getelementptr inbounds nuw i8, ptr %i.kgl, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kgn, i8 0, i64 28, i1 false)
  %i.kgo = getelementptr inbounds nuw i8, ptr %i.kgl, i64 24
  store ptr %.sroa.05391.0, ptr %i.kgo, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2888 = getelementptr inbounds nuw i8, ptr %i.kgl, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2888, align 8, !tbaa !635
  %i.kgp = ptrtoint ptr %i.kgl to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2281:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2266
  %i.kgq = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.kgr = xor i64 %i.kgq, 8389723864334226260
  %i.kgs = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.kgt = load i64, ptr %i.kgs, align 1
  %i.kgu = xor i64 %i.kgt, 7237970110066281332
  %i.kgv = or i64 %i.kgr, %i.kgu
  %i.kgw = icmp ne i64 %i.kgv, 0
  %i.kgx = zext i1 %i.kgw to i32
  %i.kgy = icmp eq i32 %i.kgx, 0
  br i1 %i.kgy, label %_ZNK4llvh9StringRef6equalsES0_.exit2281.thread6706, label %_ZNK4llvh9StringRef6equalsES0_.exit2296

_ZNK4llvh9StringRef6equalsES0_.exit2281.thread6706: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2281
  %i.kgz = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kha = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.kgz, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kha, i8 0, i64 16, i1 false)
  %i.khb = getelementptr inbounds nuw i8, ptr %i.kha, i64 16
  store i32 234, ptr %i.khb, align 8, !tbaa !627
  %i.khc = getelementptr inbounds nuw i8, ptr %i.kha, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.khc, i8 0, i64 28, i1 false)
  %i.khd = getelementptr inbounds nuw i8, ptr %i.kha, i64 24
  store ptr %.sroa.05391.0, ptr %i.khd, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2889 = getelementptr inbounds nuw i8, ptr %i.kha, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2889, align 8, !tbaa !635
  %i.khe = ptrtoint ptr %i.kha to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2284:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2110
  %i.khf = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.khg = xor i64 %i.khf, 8742739673192092500
  %i.khh = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 8
  %i.khi = load i16, ptr %i.khh, align 1
  %i.khj = zext i16 %i.khi to i64
  %i.khk = xor i64 %i.khj, 25968
  %i.khl = or i64 %i.khg, %i.khk
  %i.khm = icmp ne i64 %i.khl, 0
  %i.khn = zext i1 %i.khm to i32
  %i.kho = icmp eq i32 %i.khn, 0
  br i1 %i.kho, label %_ZNK4llvh9StringRef6equalsES0_.exit2284.thread6708, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2284.thread6708: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2284
  %i.khp = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.khq = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.khp, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.khq, i8 0, i64 16, i1 false)
  %i.khr = getelementptr inbounds nuw i8, ptr %i.khq, i64 16
  store i32 235, ptr %i.khr, align 8, !tbaa !627
  %i.khs = getelementptr inbounds nuw i8, ptr %i.khq, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.khs, i8 0, i64 28, i1 false)
  %i.kht = getelementptr inbounds nuw i8, ptr %i.khq, i64 24
  store ptr %.sroa.05391.0, ptr %i.kht, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2890 = getelementptr inbounds nuw i8, ptr %i.khq, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2890, align 8, !tbaa !635
  %i.khu = ptrtoint ptr %i.khq to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2287:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2269
  %i.khv = load i64, ptr %.sroa.01032.0.copyload72407243734873517683, align 1
  %i.khw = xor i64 %i.khv, 7021786319681246036
  %i.khx = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517683, i64 5
  %i.khy = load i64, ptr %i.khx, align 1
  %i.khz = xor i64 %i.khy, 7309475598724854373
  %i.kia = or i64 %i.khw, %i.khz
  %i.kib = icmp ne i64 %i.kia, 0
  %i.kic = zext i1 %i.kib to i32
  %i.kid = icmp eq i32 %i.kic, 0
  br i1 %i.kid, label %_ZNK4llvh9StringRef6equalsES0_.exit2287.thread6710, label %_ZNK4llvh9StringRef6equalsES0_.exit2344

_ZNK4llvh9StringRef6equalsES0_.exit2287.thread6710: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.km) #11
  store ptr null, ptr %i.km, align 8, !tbaa !642
  %i.kie = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.405, i64 7, ptr noundef nonnull align 8 dereferenceable(8) %i.km)
  br i1 %i.kie, label %bb.afq, label %bb.afp

bb.afp:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2287.thread6710
  %i.kif = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kig = load ptr, ptr %i.kif, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %431) #11
  %i.kih = getelementptr inbounds nuw i8, ptr %431, i64 16
  %i.kii = getelementptr inbounds nuw i8, ptr %431, i64 17
  store i8 1, ptr %i.kii, align 1, !tbaa !611
  store ptr @.str.814, ptr %431, align 8, !tbaa !612
  store i8 3, ptr %i.kih, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.kig, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %431, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %431) #11
  br label %bb.afr

bb.afq:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2287.thread6710
  %i.kij = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kik = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.kij, i64 noundef 8) ; 7 uses
  %i.kil = load ptr, ptr %i.km, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kik, i8 0, i64 16, i1 false)
  %i.kim = getelementptr inbounds nuw i8, ptr %i.kik, i64 16
  store i32 236, ptr %i.kim, align 8, !tbaa !627
  %i.kin = getelementptr inbounds nuw i8, ptr %i.kik, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kin, i8 0, i64 28, i1 false)
  %i.kio = getelementptr inbounds nuw i8, ptr %i.kik, i64 48
  store ptr %i.kil, ptr %i.kio, align 8, !tbaa !1051
  %i.kip = getelementptr inbounds nuw i8, ptr %i.kik, i64 24
  store ptr %.sroa.05391.0, ptr %i.kip, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2891 = getelementptr inbounds nuw i8, ptr %i.kik, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2891, align 8, !tbaa !635
  %i.kiq = ptrtoint ptr %i.kik to i64
  br label %bb.afr

bb.afr:                                           ; preds = %bb.afq, %bb.afp
  %.sroa.05404.180 = phi i64 [ %i.kiq, %bb.afq ], [ undef, %bb.afp ]
  %.sroa.261.180 = phi i8 [ 1, %bb.afq ], [ 0, %bb.afp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.km) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2290:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2233
  %i.kir = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.kis = xor i128 %i.kir, 112254606294572280818260160490246853460
  %i.kit = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 3
  %i.kiu = load i128, ptr %i.kit, align 1
  %i.kiv = xor i128 %i.kiu, 134836025684890378299110490612353557614
  %i.kiw = or i128 %i.kis, %i.kiv
  %i.kix = icmp ne i128 %i.kiw, 0
  %i.kiy = zext i1 %i.kix to i32
  %i.kiz = icmp eq i32 %i.kiy, 0
  br i1 %i.kiz, label %_ZNK4llvh9StringRef6equalsES0_.exit2290.thread6712, label %_ZNK4llvh9StringRef6equalsES0_.exit2320

_ZNK4llvh9StringRef6equalsES0_.exit2290.thread6712: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kn) #11
  store ptr null, ptr %i.kn, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ko) #11
  store ptr null, ptr %i.ko, align 8, !tbaa !642
  %i.kja = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.578, i64 10, ptr noundef nonnull align 8 dereferenceable(8) %i.kn)
  br i1 %i.kja, label %bb.aft, label %bb.afs

bb.afs:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2290.thread6712
  %i.kjb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kjc = load ptr, ptr %i.kjb, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %432) #11
  %i.kjd = getelementptr inbounds nuw i8, ptr %432, i64 16
  %i.kje = getelementptr inbounds nuw i8, ptr %432, i64 17
  store i8 1, ptr %i.kje, align 1, !tbaa !611
  store ptr @.str.816, ptr %432, align 8, !tbaa !612
  store i8 3, ptr %i.kjd, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.kjc, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %432, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %432) #11
  br label %bb.afw

bb.aft:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2290.thread6712
  %i.kjf = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.580, i64 9, ptr noundef nonnull align 8 dereferenceable(8) %i.ko)
  br i1 %i.kjf, label %bb.afv, label %bb.afu

bb.afu:                                           ; preds = %bb.aft
  %i.kjg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kjh = load ptr, ptr %i.kjg, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %433) #11
  %i.kji = getelementptr inbounds nuw i8, ptr %433, i64 16
  %i.kjj = getelementptr inbounds nuw i8, ptr %433, i64 17
  store i8 1, ptr %i.kjj, align 1, !tbaa !611
  store ptr @.str.817, ptr %433, align 8, !tbaa !612
  store i8 3, ptr %i.kji, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.kjh, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %433, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %433) #11
  br label %bb.afw

bb.afv:                                           ; preds = %bb.aft
  %i.kjk = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kjl = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.kjk, i64 noundef 8) ; 8 uses
  %i.kjm = load ptr, ptr %i.kn, align 8, !tbaa !642
  %i.kjn = load ptr, ptr %i.ko, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.kjl, i8 0, i64 16, i1 false)
  %i.kjo = getelementptr inbounds nuw i8, ptr %i.kjl, i64 16
  store i32 237, ptr %i.kjo, align 8, !tbaa !627
  %i.kjp = getelementptr inbounds nuw i8, ptr %i.kjl, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kjp, i8 0, i64 28, i1 false)
  %i.kjq = getelementptr inbounds nuw i8, ptr %i.kjl, i64 48
  store ptr %i.kjm, ptr %i.kjq, align 8, !tbaa !1053
  %i.kjr = getelementptr inbounds nuw i8, ptr %i.kjl, i64 56
  store ptr %i.kjn, ptr %i.kjr, align 8, !tbaa !1054
  %i.kjs = getelementptr inbounds nuw i8, ptr %i.kjl, i64 24
  store ptr %.sroa.05391.0, ptr %i.kjs, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2892 = getelementptr inbounds nuw i8, ptr %i.kjl, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2892, align 8, !tbaa !635
  %i.kjt = ptrtoint ptr %i.kjl to i64
  br label %bb.afw

bb.afw:                                           ; preds = %bb.afv, %bb.afu, %bb.afs
  %.sroa.05404.181 = phi i64 [ %i.kjt, %bb.afv ], [ undef, %bb.afu ], [ undef, %bb.afs ]
  %.sroa.261.181 = phi i8 [ 1, %bb.afv ], [ 0, %bb.afu ], [ 0, %bb.afs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ko) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kn) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2293:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2140
  %i.kju = load i64, ptr %.sroa.01032.0.copyload72407243734873517669, align 1
  %i.kjv = xor i64 %i.kju, 6087003515538985812
  %i.kjw = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517669, i64 3
  %i.kjx = load i64, ptr %i.kjw, align 1
  %i.kjy = xor i64 %i.kjx, 7309475598942958194
  %i.kjz = or i64 %i.kjv, %i.kjy
  %i.kka = icmp ne i64 %i.kjz, 0
  %i.kkb = zext i1 %i.kka to i32
  %i.kkc = icmp eq i32 %i.kkb, 0
  br i1 %i.kkc, label %_ZNK4llvh9StringRef6equalsES0_.exit2293.thread6714, label %_ZNK4llvh9StringRef6equalsES0_.exit2311

_ZNK4llvh9StringRef6equalsES0_.exit2293.thread6714: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kp) #11
  store ptr null, ptr %i.kp, align 8, !tbaa !642
  %i.kkd = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.561, i64 11, ptr noundef nonnull align 8 dereferenceable(8) %i.kp)
  br i1 %i.kkd, label %bb.afy, label %bb.afx

bb.afx:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2293.thread6714
  %i.kke = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kkf = load ptr, ptr %i.kke, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %434) #11
  %i.kkg = getelementptr inbounds nuw i8, ptr %434, i64 16
  %i.kkh = getelementptr inbounds nuw i8, ptr %434, i64 17
  store i8 1, ptr %i.kkh, align 1, !tbaa !611
  store ptr @.str.819, ptr %434, align 8, !tbaa !612
  store i8 3, ptr %i.kkg, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.kkf, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %434, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %434) #11
  br label %bb.afz

bb.afy:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2293.thread6714
  %i.kki = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kkj = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.kki, i64 noundef 8) ; 7 uses
  %i.kkk = load ptr, ptr %i.kp, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kkj, i8 0, i64 16, i1 false)
  %i.kkl = getelementptr inbounds nuw i8, ptr %i.kkj, i64 16
  store i32 238, ptr %i.kkl, align 8, !tbaa !627
  %i.kkm = getelementptr inbounds nuw i8, ptr %i.kkj, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kkm, i8 0, i64 28, i1 false)
  %i.kkn = getelementptr inbounds nuw i8, ptr %i.kkj, i64 48
  store ptr %i.kkk, ptr %i.kkn, align 8, !tbaa !1056
  %i.kko = getelementptr inbounds nuw i8, ptr %i.kkj, i64 24
  store ptr %.sroa.05391.0, ptr %i.kko, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2893 = getelementptr inbounds nuw i8, ptr %i.kkj, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2893, align 8, !tbaa !635
  %i.kkp = ptrtoint ptr %i.kkj to i64
  br label %bb.afz

bb.afz:                                           ; preds = %bb.afy, %bb.afx
  %.sroa.05404.182 = phi i64 [ %i.kkp, %bb.afy ], [ undef, %bb.afx ]
  %.sroa.261.182 = phi i8 [ 1, %bb.afy ], [ 0, %bb.afx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kp) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2296:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2281
  %i.kkq = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.kkr = xor i64 %i.kkq, 7301009479667307348
  %i.kks = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.kkt = load i64, ptr %i.kks, align 1
  %i.kku = xor i64 %i.kkt, 7305804402515076709
  %i.kkv = or i64 %i.kkr, %i.kku
  %i.kkw = icmp ne i64 %i.kkv, 0
  %i.kkx = zext i1 %i.kkw to i32
  %i.kky = icmp eq i32 %i.kkx, 0
  br i1 %i.kky, label %_ZNK4llvh9StringRef6equalsES0_.exit2296.thread6716, label %_ZNK4llvh9StringRef6equalsES0_.exit2299

_ZNK4llvh9StringRef6equalsES0_.exit2296.thread6716: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kq) #11
  store ptr null, ptr %i.kq, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kr) #11
  store ptr null, ptr %i.kr, align 8, !tbaa !642
  %i.kkz = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.821, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.kq)
  br i1 %i.kkz, label %bb.agb, label %bb.aga

bb.aga:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2296.thread6716
  %i.kla = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.klb = load ptr, ptr %i.kla, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %435) #11
  %i.klc = getelementptr inbounds nuw i8, ptr %435, i64 16
  %i.kld = getelementptr inbounds nuw i8, ptr %435, i64 17
  store i8 1, ptr %i.kld, align 1, !tbaa !611
  store ptr @.str.822, ptr %435, align 8, !tbaa !612
  store i8 3, ptr %i.klc, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.klb, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %435, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %435) #11
  br label %bb.agc

bb.agb:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2296.thread6716
  %i.kle = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.22, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.kr) ; 0 uses
  %i.klf = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.klg = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.klf, i64 noundef 8) ; 8 uses
  %i.klh = load ptr, ptr %i.kq, align 8, !tbaa !642
  %i.kli = load ptr, ptr %i.kr, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.klg, i8 0, i64 16, i1 false)
  %i.klj = getelementptr inbounds nuw i8, ptr %i.klg, i64 16
  store i32 239, ptr %i.klj, align 8, !tbaa !627
  %i.klk = getelementptr inbounds nuw i8, ptr %i.klg, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.klk, i8 0, i64 28, i1 false)
  %i.kll = getelementptr inbounds nuw i8, ptr %i.klg, i64 48
  store ptr %i.klh, ptr %i.kll, align 8, !tbaa !1058
  %i.klm = getelementptr inbounds nuw i8, ptr %i.klg, i64 56
  store ptr %i.kli, ptr %i.klm, align 8, !tbaa !1059
  %i.kln = getelementptr inbounds nuw i8, ptr %i.klg, i64 24
  store ptr %.sroa.05391.0, ptr %i.kln, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2894 = getelementptr inbounds nuw i8, ptr %i.klg, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2894, align 8, !tbaa !635
  %i.klo = ptrtoint ptr %i.klg to i64
  br label %bb.agc

bb.agc:                                           ; preds = %bb.agb, %bb.aga
  %.sroa.05404.183 = phi i64 [ %i.klo, %bb.agb ], [ undef, %bb.aga ]
  %.sroa.261.183 = phi i8 [ 1, %bb.agb ], [ 0, %bb.aga ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kr) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kq) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2299:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2296
  %i.klp = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.klq = xor i64 %i.klp, 7379548630259159892
  %i.klr = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.kls = load i64, ptr %i.klr, align 1
  %i.klt = xor i64 %i.kls, 7308604759611894118
  %i.klu = or i64 %i.klq, %i.klt
  %i.klv = icmp ne i64 %i.klu, 0
  %i.klw = zext i1 %i.klv to i32
  %i.klx = icmp eq i32 %i.klw, 0
  br i1 %i.klx, label %_ZNK4llvh9StringRef6equalsES0_.exit2299.thread6718, label %_ZNK4llvh9StringRef6equalsES0_.exit2308

_ZNK4llvh9StringRef6equalsES0_.exit2299.thread6718: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ks) #11
  store ptr null, ptr %i.ks, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kt) #11
  store ptr null, ptr %i.kt, align 8, !tbaa !642
  %i.kly = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.79, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.ks)
  br i1 %i.kly, label %bb.age, label %bb.agd

bb.agd:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2299.thread6718
  %i.klz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kma = load ptr, ptr %i.klz, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %436) #11
  %i.kmb = getelementptr inbounds nuw i8, ptr %436, i64 16
  %i.kmc = getelementptr inbounds nuw i8, ptr %436, i64 17
  store i8 1, ptr %i.kmc, align 1, !tbaa !611
  store ptr @.str.825, ptr %436, align 8, !tbaa !612
  store i8 3, ptr %i.kmb, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.kma, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %436, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %436) #11
  br label %bb.agf

bb.age:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2299.thread6718
  %i.kmd = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.81, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.kt) ; 0 uses
  %i.kme = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kmf = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.kme, i64 noundef 8) ; 8 uses
  %i.kmg = load ptr, ptr %i.ks, align 8, !tbaa !642
  %i.kmh = load ptr, ptr %i.kt, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.kmf, i8 0, i64 16, i1 false)
  %i.kmi = getelementptr inbounds nuw i8, ptr %i.kmf, i64 16
  store i32 240, ptr %i.kmi, align 8, !tbaa !627
  %i.kmj = getelementptr inbounds nuw i8, ptr %i.kmf, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kmj, i8 0, i64 28, i1 false)
  %i.kmk = getelementptr inbounds nuw i8, ptr %i.kmf, i64 48
  store ptr %i.kmg, ptr %i.kmk, align 8, !tbaa !1061
  %i.kml = getelementptr inbounds nuw i8, ptr %i.kmf, i64 56
  store ptr %i.kmh, ptr %i.kml, align 8, !tbaa !1062
  %i.kmm = getelementptr inbounds nuw i8, ptr %i.kmf, i64 24
  store ptr %.sroa.05391.0, ptr %i.kmm, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2895 = getelementptr inbounds nuw i8, ptr %i.kmf, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2895, align 8, !tbaa !635
  %i.kmn = ptrtoint ptr %i.kmf to i64
  br label %bb.agf

bb.agf:                                           ; preds = %bb.age, %bb.agd
  %.sroa.05404.184 = phi i64 [ %i.kmn, %bb.age ], [ undef, %bb.agd ]
  %.sroa.261.184 = phi i8 [ 1, %bb.age ], [ 0, %bb.agd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kt) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ks) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2302:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2278
  %i.kmo = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.kmp = xor i64 %i.kmo, 7598807797345964884
  %i.kmq = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.kmr = load i64, ptr %i.kmq, align 1
  %i.kms = xor i64 %i.kmr, 7309475598759324020
  %i.kmt = or i64 %i.kmp, %i.kms
  %i.kmu = icmp ne i64 %i.kmt, 0
  %i.kmv = zext i1 %i.kmu to i32
  %i.kmw = icmp eq i32 %i.kmv, 0
  br i1 %i.kmw, label %_ZNK4llvh9StringRef6equalsES0_.exit2302.thread6720, label %_ZNK4llvh9StringRef6equalsES0_.exit2317

_ZNK4llvh9StringRef6equalsES0_.exit2302.thread6720: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2302
  call void @llvm.lifetime.start.p0(ptr nonnull %437) #11
  store ptr %437, ptr %437, align 8, !tbaa !639
  %i.kmx = getelementptr inbounds nuw i8, ptr %437, i64 8 ; 2 uses
  store ptr %437, ptr %i.kmx, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ku) #11
  store ptr null, ptr %i.ku, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kv) #11
  store ptr null, ptr %i.kv, align 8, !tbaa !642
  %i.kmy = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.19, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %437)
  br i1 %i.kmy, label %bb.agh, label %bb.agg

bb.agg:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2302.thread6720
end_hunk_13
begin_hunk_14_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2897, align 8, !tbaa !635
  %i.koc = ptrtoint ptr %i.knk to i64
  br label %bb.agl

bb.agl:                                           ; preds = %_ZN6hermes6ESTree18TSFunctionTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_.exit, %bb.agi, %bb.agg
  %.sroa.05404.185 = phi i64 [ %i.koc, %_ZN6hermes6ESTree18TSFunctionTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_.exit ], [ undef, %bb.agi ], [ undef, %bb.agg ]
  %.sroa.261.185 = phi i8 [ 1, %_ZN6hermes6ESTree18TSFunctionTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_.exit ], [ 0, %bb.agi ], [ 0, %bb.agg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kv) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ku) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %437) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2305:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2245
  %i.kod = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.koe = xor i128 %i.kod, 149503516236704066440771482107735397204
  %i.kof = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.kog = load i8, ptr %i.kof, align 1
  %i.koh = zext i8 %i.kog to i128
  %i.koi = xor i128 %i.koh, 101
  %i.koj = or i128 %i.koe, %i.koi
  %i.kok = icmp ne i128 %i.koj, 0
  %i.kol = zext i1 %i.kok to i32
  %i.kom = icmp eq i32 %i.kol, 0
  br i1 %i.kom, label %_ZNK4llvh9StringRef6equalsES0_.exit2305.thread6722, label %_ZNK4llvh9StringRef6equalsES0_.exit2335

_ZNK4llvh9StringRef6equalsES0_.exit2305.thread6722: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2305
  call void @llvm.lifetime.start.p0(ptr nonnull %440) #11
  store ptr %440, ptr %440, align 8, !tbaa !639
  %i.kon = getelementptr inbounds nuw i8, ptr %440, i64 8 ; 2 uses
  store ptr %440, ptr %i.kon, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kw) #11
  store ptr null, ptr %i.kw, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kx) #11
  store ptr null, ptr %i.kx, align 8, !tbaa !642
  %i.koo = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.19, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %440)
  br i1 %i.koo, label %bb.agn, label %bb.agm

bb.agm:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2305.thread6722
  %i.kop = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.koq = load ptr, ptr %i.kop, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %441) #11
  %i.kor = getelementptr inbounds nuw i8, ptr %441, i64 16
  %i.kos = getelementptr inbounds nuw i8, ptr %441, i64 17
  store i8 1, ptr %i.kos, align 1, !tbaa !611
  store ptr @.str.832, ptr %441, align 8, !tbaa !612
  store i8 3, ptr %i.kor, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.koq, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %441, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %441) #11
  br label %bb.agr

bb.agn:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2305.thread6722
  %i.kot = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.24, i64 10, ptr noundef nonnull align 8 dereferenceable(8) %i.kw)
  br i1 %i.kot, label %bb.agp, label %bb.ago

bb.ago:                                           ; preds = %bb.agn
  %i.kou = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kov = load ptr, ptr %i.kou, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %442) #11
  %i.kow = getelementptr inbounds nuw i8, ptr %442, i64 16
  %i.kox = getelementptr inbounds nuw i8, ptr %442, i64 17
  store i8 1, ptr %i.kox, align 1, !tbaa !611
  store ptr @.str.833, ptr %442, align 8, !tbaa !612
  store i8 3, ptr %i.kow, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.kov, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %442, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %442) #11
  br label %bb.agr

bb.agp:                                           ; preds = %bb.agn
  %i.koy = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.22, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.kx) ; 0 uses
  %i.koz = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kpa = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 80, ptr noundef nonnull align 8 dereferenceable(656) %i.koz, i64 noundef 8) ; 11 uses
  %i.kpb = load ptr, ptr %i.kw, align 8, !tbaa !642
  %i.kpc = load ptr, ptr %i.kx, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.kpa, i8 0, i64 16, i1 false)
  %i.kpd = getelementptr inbounds nuw i8, ptr %i.kpa, i64 16
  store i32 242, ptr %i.kpd, align 8, !tbaa !627
  %i.kpe = getelementptr inbounds nuw i8, ptr %i.kpa, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kpe, i8 0, i64 28, i1 false)
  %i.kpf = getelementptr inbounds nuw i8, ptr %i.kpa, i64 48 ; 7 uses
  store ptr %i.kpf, ptr %i.kpf, align 8, !tbaa !639
  %i.kpg = getelementptr inbounds nuw i8, ptr %i.kpa, i64 56
  store ptr %i.kpf, ptr %i.kpg, align 8, !tbaa !640
  %i.kph = load ptr, ptr %i.kon, align 8, !tbaa !640 ; 4 uses
  %i.kpi = icmp eq ptr %i.kpf, %440
  %i.kpj = icmp eq ptr %i.kph, %440
  %or.cond.i.i.i.i.i.i2898 = or i1 %i.kpi, %i.kpj
  br i1 %or.cond.i.i.i.i.i.i2898, label %_ZN6hermes6ESTree21TSConstructorTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_.exit, label %bb.agq

bb.agq:                                           ; preds = %bb.agp
  %i.kpk = load ptr, ptr %440, align 8, !tbaa !639 ; 2 uses
  %i.kpl = load ptr, ptr %i.kph, align 8, !tbaa !639
  %i.kpm = getelementptr inbounds nuw i8, ptr %i.kpl, i64 8
  store ptr %440, ptr %i.kpm, align 8, !tbaa !640
  %i.kpn = getelementptr inbounds nuw i8, ptr %i.kpk, i64 8
  store ptr %i.kpf, ptr %i.kpn, align 8, !tbaa !640
  store ptr %i.kpf, ptr %i.kph, align 8, !tbaa !639
  %i.kpo = getelementptr inbounds nuw i8, ptr %i.kpa, i64 56
  store ptr %i.kph, ptr %i.kpo, align 8, !tbaa !640
  store ptr %i.kpk, ptr %i.kpf, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree21TSConstructorTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_.exit

_ZN6hermes6ESTree21TSConstructorTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_.exit: ; preds = %bb.agp, %bb.agq
  %i.kpp = getelementptr inbounds nuw i8, ptr %i.kpa, i64 64
  store ptr %i.kpb, ptr %i.kpp, align 8, !tbaa !1067
  %i.kpq = getelementptr inbounds nuw i8, ptr %i.kpa, i64 72
  store ptr %i.kpc, ptr %i.kpq, align 8, !tbaa !1068
  %i.kpr = getelementptr inbounds nuw i8, ptr %i.kpa, i64 24
  store ptr %.sroa.05391.0, ptr %i.kpr, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2899 = getelementptr inbounds nuw i8, ptr %i.kpa, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2899, align 8, !tbaa !635
  %i.kps = ptrtoint ptr %i.kpa to i64
  br label %bb.agr

bb.agr:                                           ; preds = %_ZN6hermes6ESTree21TSConstructorTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_.exit, %bb.ago, %bb.agm
  %.sroa.05404.186 = phi i64 [ %i.kps, %_ZN6hermes6ESTree21TSConstructorTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_.exit ], [ undef, %bb.ago ], [ undef, %bb.agm ]
  %.sroa.261.186 = phi i8 [ 1, %_ZN6hermes6ESTree21TSConstructorTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_.exit ], [ 0, %bb.ago ], [ 0, %bb.agm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kx) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kw) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %440) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2308:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2299
  %i.kpt = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.kpu = xor i64 %i.kpt, 8237195252206949204
  %i.kpv = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.kpw = load i64, ptr %i.kpv, align 1
  %i.kpx = xor i64 %i.kpw, 7310575174727001458
  %i.kpy = or i64 %i.kpu, %i.kpx
  %i.kpz = icmp ne i64 %i.kpy, 0
  %i.kqa = zext i1 %i.kpz to i32
  %i.kqb = icmp eq i32 %i.kqa, 0
  br i1 %i.kqb, label %_ZNK4llvh9StringRef6equalsES0_.exit2308.thread6724, label %_ZNK4llvh9StringRef6equalsES0_.exit2314

_ZNK4llvh9StringRef6equalsES0_.exit2308.thread6724: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ky) #11
  store ptr null, ptr %i.ky, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kz) #11
  store ptr null, ptr %i.kz, align 8, !tbaa !642
  %i.kqc = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.596, i64 13, ptr noundef nonnull align 8 dereferenceable(8) %i.ky)
  br i1 %i.kqc, label %bb.agt, label %bb.ags

bb.ags:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2308.thread6724
  %i.kqd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kqe = load ptr, ptr %i.kqd, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %443) #11
  %i.kqf = getelementptr inbounds nuw i8, ptr %443, i64 16
  %i.kqg = getelementptr inbounds nuw i8, ptr %443, i64 17
  store i8 1, ptr %i.kqg, align 1, !tbaa !611
  store ptr @.str.836, ptr %443, align 8, !tbaa !612
  store i8 3, ptr %i.kqf, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.kqe, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %443, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %443) #11
  br label %bb.agw

bb.agt:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2308.thread6724
  %i.kqh = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.242, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.kz)
  br i1 %i.kqh, label %bb.agv, label %bb.agu

bb.agu:                                           ; preds = %bb.agt
  %i.kqi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kqj = load ptr, ptr %i.kqi, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %444) #11
  %i.kqk = getelementptr inbounds nuw i8, ptr %444, i64 16
  %i.kql = getelementptr inbounds nuw i8, ptr %444, i64 17
  store i8 1, ptr %i.kql, align 1, !tbaa !611
  store ptr @.str.837, ptr %444, align 8, !tbaa !612
  store i8 3, ptr %i.kqk, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.kqj, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %444, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %444) #11
  br label %bb.agw

bb.agv:                                           ; preds = %bb.agt
  %i.kqm = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.kqn = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.kqm, i64 noundef 8) ; 8 uses
  %i.kqo = load ptr, ptr %i.ky, align 8, !tbaa !642
  %i.kqp = load ptr, ptr %i.kz, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.kqn, i8 0, i64 16, i1 false)
  %i.kqq = getelementptr inbounds nuw i8, ptr %i.kqn, i64 16
  store i32 243, ptr %i.kqq, align 8, !tbaa !627
  %i.kqr = getelementptr inbounds nuw i8, ptr %i.kqn, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kqr, i8 0, i64 28, i1 false)
  %i.kqs = getelementptr inbounds nuw i8, ptr %i.kqn, i64 48
  store ptr %i.kqo, ptr %i.kqs, align 8, !tbaa !1070
  %i.kqt = getelementptr inbounds nuw i8, ptr %i.kqn, i64 56
  store ptr %i.kqp, ptr %i.kqt, align 8, !tbaa !1071
  %i.kqu = getelementptr inbounds nuw i8, ptr %i.kqn, i64 24
  store ptr %.sroa.05391.0, ptr %i.kqu, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2900 = getelementptr inbounds nuw i8, ptr %i.kqn, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2900, align 8, !tbaa !635
  %i.kqv = ptrtoint ptr %i.kqn to i64
  br label %bb.agw

bb.agw:                                           ; preds = %bb.agv, %bb.agu, %bb.ags
  %.sroa.05404.187 = phi i64 [ %i.kqv, %bb.agv ], [ undef, %bb.agu ], [ undef, %bb.ags ]
  %.sroa.261.187 = phi i8 [ 1, %bb.agv ], [ 0, %bb.agu ], [ 0, %bb.ags ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kz) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ky) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2311:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2293
  %i.kqw = load i64, ptr %.sroa.01032.0.copyload72407243734873517669, align 1
  %i.kqx = xor i64 %i.kqw, 6081386102094320468
  %i.kqy = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517669, i64 3
  %i.kqz = load i64, ptr %i.kqy, align 1
  %i.kra = xor i64 %i.kqz, 7309475598608134261
  %i.krb = or i64 %i.kqx, %i.kra
  %i.krc = icmp ne i64 %i.krb, 0
  %i.krd = zext i1 %i.krc to i32
  %i.kre = icmp eq i32 %i.krd, 0
  br i1 %i.kre, label %_ZNK4llvh9StringRef6equalsES0_.exit2311.thread6726, label %_ZNK4llvh9StringRef6equalsES0_.exit2359

_ZNK4llvh9StringRef6equalsES0_.exit2311.thread6726: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2311
  call void @llvm.lifetime.start.p0(ptr nonnull %445) #11
  store ptr %445, ptr %445, align 8, !tbaa !639
  %i.krf = getelementptr inbounds nuw i8, ptr %445, i64 8 ; 2 uses
  store ptr %445, ptr %i.krf, align 8, !tbaa !640
  %i.krg = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.839, i64 12, ptr noundef nonnull align 8 dereferenceable(16) %445)
  br i1 %i.krg, label %bb.agy, label %bb.agx

bb.agx:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2311.thread6726
  %i.krh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kri = load ptr, ptr %i.krh, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %446) #11
  %i.krj = getelementptr inbounds nuw i8, ptr %446, i64 16
  %i.krk = getelementptr inbounds nuw i8, ptr %446, i64 17
  store i8 1, ptr %i.krk, align 1, !tbaa !611
  store ptr @.str.840, ptr %446, align 8, !tbaa !612
  store i8 3, ptr %i.krj, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.kri, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %446, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %446) #11
  br label %bb.aha

bb.agy:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2311.thread6726
  %i.krl = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.krm = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.krl, i64 noundef 8) ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.krm, i8 0, i64 16, i1 false)
  %i.krn = getelementptr inbounds nuw i8, ptr %i.krm, i64 16
  store i32 244, ptr %i.krn, align 8, !tbaa !627
  %i.kro = getelementptr inbounds nuw i8, ptr %i.krm, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kro, i8 0, i64 28, i1 false)
  %i.krp = getelementptr inbounds nuw i8, ptr %i.krm, i64 48 ; 7 uses
  store ptr %i.krp, ptr %i.krp, align 8, !tbaa !639
  %i.krq = getelementptr inbounds nuw i8, ptr %i.krm, i64 56
  store ptr %i.krp, ptr %i.krq, align 8, !tbaa !640
  %i.krr = load ptr, ptr %i.krf, align 8, !tbaa !640 ; 4 uses
  %i.krs = icmp eq ptr %i.krp, %445
  %i.krt = icmp eq ptr %i.krr, %445
  %or.cond.i.i.i.i.i.i2901 = or i1 %i.krs, %i.krt
  br i1 %or.cond.i.i.i.i.i.i2901, label %_ZN6hermes6ESTree15TSTupleTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.agz

bb.agz:                                           ; preds = %bb.agy
  %i.kru = load ptr, ptr %445, align 8, !tbaa !639 ; 2 uses
  %i.krv = load ptr, ptr %i.krr, align 8, !tbaa !639
  %i.krw = getelementptr inbounds nuw i8, ptr %i.krv, i64 8
  store ptr %445, ptr %i.krw, align 8, !tbaa !640
  %i.krx = getelementptr inbounds nuw i8, ptr %i.kru, i64 8
  store ptr %i.krp, ptr %i.krx, align 8, !tbaa !640
  store ptr %i.krp, ptr %i.krr, align 8, !tbaa !639
  %i.kry = getelementptr inbounds nuw i8, ptr %i.krm, i64 56
  store ptr %i.krr, ptr %i.kry, align 8, !tbaa !640
  store ptr %i.kru, ptr %i.krp, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree15TSTupleTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree15TSTupleTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %bb.agy, %bb.agz
  %i.krz = getelementptr inbounds nuw i8, ptr %i.krm, i64 24
  store ptr %.sroa.05391.0, ptr %i.krz, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2902 = getelementptr inbounds nuw i8, ptr %i.krm, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2902, align 8, !tbaa !635
  %i.ksa = ptrtoint ptr %i.krm to i64
  br label %bb.aha

bb.aha:                                           ; preds = %_ZN6hermes6ESTree15TSTupleTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, %bb.agx
  %.sroa.05404.188 = phi i64 [ %i.ksa, %_ZN6hermes6ESTree15TSTupleTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.agx ]
  %.sroa.261.188 = phi i8 [ 1, %_ZN6hermes6ESTree15TSTupleTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.agx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %445) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2314:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2308
  %i.ksb = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.ksc = xor i64 %i.ksb, 8305030721594217300
  %i.ksd = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.kse = load i64, ptr %i.ksd, align 1
  %i.ksf = xor i64 %i.kse, 7957695015443329907
  %i.ksg = or i64 %i.ksc, %i.ksf
  %i.ksh = icmp ne i64 %i.ksg, 0
  %i.ksi = zext i1 %i.ksh to i32
  %i.ksj = icmp eq i32 %i.ksi, 0
  br i1 %i.ksj, label %_ZNK4llvh9StringRef6equalsES0_.exit2314.thread6728, label %_ZNK4llvh9StringRef6equalsES0_.exit2332

_ZNK4llvh9StringRef6equalsES0_.exit2314.thread6728: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.la) #11
  store ptr null, ptr %i.la, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lb) #11
  store ptr null, ptr %i.lb, align 8, !tbaa !642
  %i.ksk = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.242, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.la)
  br i1 %i.ksk, label %bb.ahc, label %bb.ahb

bb.ahb:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2314.thread6728
  %i.ksl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ksm = load ptr, ptr %i.ksl, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %447) #11
  %i.ksn = getelementptr inbounds nuw i8, ptr %447, i64 16
  %i.kso = getelementptr inbounds nuw i8, ptr %447, i64 17
  store i8 1, ptr %i.kso, align 1, !tbaa !611
  store ptr @.str.842, ptr %447, align 8, !tbaa !612
  store i8 3, ptr %i.ksn, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ksm, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %447, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %447) #11
  br label %bb.ahf

bb.ahc:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2314.thread6728
  %i.ksp = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.39, i64 10, ptr noundef nonnull align 8 dereferenceable(8) %i.lb)
  br i1 %i.ksp, label %bb.ahe, label %bb.ahd

bb.ahd:                                           ; preds = %bb.ahc
  %i.ksq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ksr = load ptr, ptr %i.ksq, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %448) #11
  %i.kss = getelementptr inbounds nuw i8, ptr %448, i64 16
  %i.kst = getelementptr inbounds nuw i8, ptr %448, i64 17
  store i8 1, ptr %i.kst, align 1, !tbaa !611
  store ptr @.str.843, ptr %448, align 8, !tbaa !612
  store i8 3, ptr %i.kss, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ksr, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %448, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %448) #11
  br label %bb.ahf

bb.ahe:                                           ; preds = %bb.ahc
  %i.ksu = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ksv = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.ksu, i64 noundef 8) ; 8 uses
  %i.ksw = load ptr, ptr %i.la, align 8, !tbaa !642
  %i.ksx = load ptr, ptr %i.lb, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ksv, i8 0, i64 16, i1 false)
  %i.ksy = getelementptr inbounds nuw i8, ptr %i.ksv, i64 16
  store i32 245, ptr %i.ksy, align 8, !tbaa !627
  %i.ksz = getelementptr inbounds nuw i8, ptr %i.ksv, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ksz, i8 0, i64 28, i1 false)
  %i.kta = getelementptr inbounds nuw i8, ptr %i.ksv, i64 48
  store ptr %i.ksw, ptr %i.kta, align 8, !tbaa !1073
  %i.ktb = getelementptr inbounds nuw i8, ptr %i.ksv, i64 56
  store ptr %i.ksx, ptr %i.ktb, align 8, !tbaa !1074
  %i.ktc = getelementptr inbounds nuw i8, ptr %i.ksv, i64 24
  store ptr %.sroa.05391.0, ptr %i.ktc, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2903 = getelementptr inbounds nuw i8, ptr %i.ksv, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2903, align 8, !tbaa !635
  %i.ktd = ptrtoint ptr %i.ksv to i64
  br label %bb.ahf

bb.ahf:                                           ; preds = %bb.ahe, %bb.ahd, %bb.ahb
  %.sroa.05404.189 = phi i64 [ %i.ktd, %bb.ahe ], [ undef, %bb.ahd ], [ undef, %bb.ahb ]
  %.sroa.261.189 = phi i8 [ 1, %bb.ahe ], [ 0, %bb.ahd ], [ 0, %bb.ahb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lb) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.la) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2317:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2302
  %i.kte = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.ktf = xor i64 %i.kte, 8246223157397115732
  %i.ktg = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.kth = load i64, ptr %i.ktg, align 1
  %i.kti = xor i64 %i.kth, 7957695011165139568
  %i.ktj = or i64 %i.ktf, %i.kti
  %i.ktk = icmp ne i64 %i.ktj, 0
  %i.ktl = zext i1 %i.ktk to i32
  %i.ktm = icmp eq i32 %i.ktl, 0
  br i1 %i.ktm, label %_ZNK4llvh9StringRef6equalsES0_.exit2317.thread6730, label %_ZNK4llvh9StringRef6equalsES0_.exit2347

_ZNK4llvh9StringRef6equalsES0_.exit2317.thread6730: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lc) #11
  store ptr null, ptr %i.lc, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ld) #11
  store ptr null, ptr %i.ld, align 8, !tbaa !642
  %i.ktn = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.39, i64 10, ptr noundef nonnull align 8 dereferenceable(8) %i.lc)
  br i1 %i.ktn, label %bb.ahh, label %bb.ahg

bb.ahg:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2317.thread6730
  %i.kto = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ktp = load ptr, ptr %i.kto, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %449) #11
  %i.ktq = getelementptr inbounds nuw i8, ptr %449, i64 16
  %i.ktr = getelementptr inbounds nuw i8, ptr %449, i64 17
  store i8 1, ptr %i.ktr, align 1, !tbaa !611
  store ptr @.str.845, ptr %449, align 8, !tbaa !612
  store i8 3, ptr %i.ktq, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ktp, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %449, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %449) #11
  br label %bb.ahk

bb.ahh:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2317.thread6730
  %i.kts = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.242, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.ld)
  br i1 %i.kts, label %bb.ahj, label %bb.ahi

bb.ahi:                                           ; preds = %bb.ahh
  %i.ktt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ktu = load ptr, ptr %i.ktt, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %450) #11
  %i.ktv = getelementptr inbounds nuw i8, ptr %450, i64 16
  %i.ktw = getelementptr inbounds nuw i8, ptr %450, i64 17
  store i8 1, ptr %i.ktw, align 1, !tbaa !611
  store ptr @.str.846, ptr %450, align 8, !tbaa !612
  store i8 3, ptr %i.ktv, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ktu, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %450, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %450) #11
end_hunk_14
begin_hunk_15_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  %i.ldc = getelementptr inbounds nuw i8, ptr %466, i64 16
  %i.ldd = getelementptr inbounds nuw i8, ptr %466, i64 17
  store i8 1, ptr %i.ldd, align 1, !tbaa !611
  store ptr @.str.873, ptr %466, align 8, !tbaa !612
  store i8 3, ptr %i.ldc, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ldb, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %466, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %466) #11
  br label %bb.air

bb.aip:                                           ; preds = %bb.ain
  %i.lde = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ldf = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.lde, i64 noundef 8) ; 10 uses
  %i.ldg = load ptr, ptr %i.ln, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ldf, i8 0, i64 16, i1 false)
  %i.ldh = getelementptr inbounds nuw i8, ptr %i.ldf, i64 16
  store i32 252, ptr %i.ldh, align 8, !tbaa !627
  %i.ldi = getelementptr inbounds nuw i8, ptr %i.ldf, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ldi, i8 0, i64 28, i1 false)
  %i.ldj = getelementptr inbounds nuw i8, ptr %i.ldf, i64 48
  store ptr %i.ldg, ptr %i.ldj, align 8, !tbaa !1092
  %i.ldk = getelementptr inbounds nuw i8, ptr %i.ldf, i64 56 ; 7 uses
  store ptr %i.ldk, ptr %i.ldk, align 8, !tbaa !639
  %i.ldl = getelementptr inbounds nuw i8, ptr %i.ldf, i64 64
  store ptr %i.ldk, ptr %i.ldl, align 8, !tbaa !640
  %i.ldm = load ptr, ptr %i.lct, align 8, !tbaa !640 ; 4 uses
  %i.ldn = icmp eq ptr %i.ldk, %464
  %i.ldo = icmp eq ptr %i.ldm, %464
  %or.cond.i.i.i.i.i.i2920 = or i1 %i.ldn, %i.ldo
  br i1 %or.cond.i.i.i.i.i.i2920, label %_ZN6hermes6ESTree21TSEnumDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  %i.ldp = load ptr, ptr %464, align 8, !tbaa !639 ; 2 uses
  %i.ldq = load ptr, ptr %i.ldm, align 8, !tbaa !639
  %i.ldr = getelementptr inbounds nuw i8, ptr %i.ldq, i64 8
  store ptr %464, ptr %i.ldr, align 8, !tbaa !640
  %i.lds = getelementptr inbounds nuw i8, ptr %i.ldp, i64 8
  store ptr %i.ldk, ptr %i.lds, align 8, !tbaa !640
  store ptr %i.ldk, ptr %i.ldm, align 8, !tbaa !639
  %i.ldt = getelementptr inbounds nuw i8, ptr %i.ldf, i64 64
  store ptr %i.ldm, ptr %i.ldt, align 8, !tbaa !640
  store ptr %i.ldp, ptr %i.ldk, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree21TSEnumDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit

_ZN6hermes6ESTree21TSEnumDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit: ; preds = %bb.aip, %bb.aiq
  %i.ldu = getelementptr inbounds nuw i8, ptr %i.ldf, i64 24
  store ptr %.sroa.05391.0, ptr %i.ldu, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2921 = getelementptr inbounds nuw i8, ptr %i.ldf, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2921, align 8, !tbaa !635
  %i.ldv = ptrtoint ptr %i.ldf to i64
  br label %bb.air

bb.air:                                           ; preds = %_ZN6hermes6ESTree21TSEnumDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit, %bb.aio, %bb.aim
  %.sroa.05404.196 = phi i64 [ %i.ldv, %_ZN6hermes6ESTree21TSEnumDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit ], [ undef, %bb.aio ], [ undef, %bb.aim ]
  %.sroa.261.196 = phi i8 [ 1, %_ZN6hermes6ESTree21TSEnumDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit ], [ 0, %bb.aio ], [ 0, %bb.aim ]
  call void @llvm.lifetime.end.p0(ptr nonnull %464) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ln) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2338:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2254
  %i.ldw = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.ldx = xor i64 %i.ldw, 7299610922166080340
  %i.ldy = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 8
  %i.ldz = load i32, ptr %i.ldy, align 1
  %i.lea = zext i32 %i.ldz to i64
  %i.leb = xor i64 %i.lea, 1919246957
  %i.lec = or i64 %i.ldx, %i.leb
  %i.led = icmp ne i64 %i.lec, 0
  %i.lee = zext i1 %i.led to i32
  %i.lef = icmp eq i32 %i.lee, 0
  br i1 %i.lef, label %_ZNK4llvh9StringRef6equalsES0_.exit2338.thread6750, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2338.thread6750: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lo) #11
  store ptr null, ptr %i.lo, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lp) #11
  store ptr null, ptr %i.lp, align 8, !tbaa !642
  %i.leg = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.lo)
  br i1 %i.leg, label %bb.ait, label %bb.ais

bb.ais:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2338.thread6750
  %i.leh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lei = load ptr, ptr %i.leh, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %467) #11
  %i.lej = getelementptr inbounds nuw i8, ptr %467, i64 16
  %i.lek = getelementptr inbounds nuw i8, ptr %467, i64 17
  store i8 1, ptr %i.lek, align 1, !tbaa !611
  store ptr @.str.875, ptr %467, align 8, !tbaa !612
  store i8 3, ptr %i.lej, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lei, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %467, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %467) #11
  br label %bb.aiu

bb.ait:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2338.thread6750
  %i.lel = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.876, i64 11, ptr noundef nonnull align 8 dereferenceable(8) %i.lp) ; 0 uses
  %i.lem = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.len = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.lem, i64 noundef 8) ; 8 uses
  %i.leo = load ptr, ptr %i.lo, align 8, !tbaa !642
  %i.lep = load ptr, ptr %i.lp, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.len, i8 0, i64 16, i1 false)
  %i.leq = getelementptr inbounds nuw i8, ptr %i.len, i64 16
  store i32 253, ptr %i.leq, align 8, !tbaa !627
  %i.ler = getelementptr inbounds nuw i8, ptr %i.len, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ler, i8 0, i64 28, i1 false)
  %i.les = getelementptr inbounds nuw i8, ptr %i.len, i64 48
  store ptr %i.leo, ptr %i.les, align 8, !tbaa !1094
  %i.let = getelementptr inbounds nuw i8, ptr %i.len, i64 56
  store ptr %i.lep, ptr %i.let, align 8, !tbaa !1095
  %i.leu = getelementptr inbounds nuw i8, ptr %i.len, i64 24
  store ptr %.sroa.05391.0, ptr %i.leu, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2922 = getelementptr inbounds nuw i8, ptr %i.len, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2922, align 8, !tbaa !635
  %i.lev = ptrtoint ptr %i.len to i64
  br label %bb.aiu

bb.aiu:                                           ; preds = %bb.ait, %bb.ais
  %.sroa.05404.197 = phi i64 [ %i.lev, %bb.ait ], [ undef, %bb.ais ]
  %.sroa.261.197 = phi i8 [ 1, %bb.ait ], [ 0, %bb.ais ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lp) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lo) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2341:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2329
  %i.lew = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.lex = xor i128 %i.lew, 154696420219699242648426981623392457556
  %i.ley = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 3
  %i.lez = load i128, ptr %i.ley, align 1
  %i.lfa = xor i128 %i.lez, 146793563361271670531309280729106834543
  %i.lfb = or i128 %i.lex, %i.lfa
  %i.lfc = icmp ne i128 %i.lfb, 0
  %i.lfd = zext i1 %i.lfc to i32
  %i.lfe = icmp eq i32 %i.lfd, 0
  br i1 %i.lfe, label %_ZNK4llvh9StringRef6equalsES0_.exit2341.thread6752, label %_ZNK4llvh9StringRef6equalsES0_.exit2374

_ZNK4llvh9StringRef6equalsES0_.exit2341.thread6752: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lq) #11
  store ptr null, ptr %i.lq, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lr) #11
  store ptr null, ptr %i.lr, align 8, !tbaa !642
  %i.lff = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.lq)
  br i1 %i.lff, label %bb.aiw, label %bb.aiv

bb.aiv:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2341.thread6752
  %i.lfg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lfh = load ptr, ptr %i.lfg, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %468) #11
  %i.lfi = getelementptr inbounds nuw i8, ptr %468, i64 16
  %i.lfj = getelementptr inbounds nuw i8, ptr %468, i64 17
  store i8 1, ptr %i.lfj, align 1, !tbaa !611
  store ptr @.str.879, ptr %468, align 8, !tbaa !612
  store i8 3, ptr %i.lfi, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lfh, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %468, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %468) #11
  br label %bb.aiz

bb.aiw:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2341.thread6752
  %i.lfk = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.lr)
  br i1 %i.lfk, label %bb.aiy, label %bb.aix

bb.aix:                                           ; preds = %bb.aiw
  %i.lfl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lfm = load ptr, ptr %i.lfl, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %469) #11
  %i.lfn = getelementptr inbounds nuw i8, ptr %469, i64 16
  %i.lfo = getelementptr inbounds nuw i8, ptr %469, i64 17
  store i8 1, ptr %i.lfo, align 1, !tbaa !611
  store ptr @.str.880, ptr %469, align 8, !tbaa !612
  store i8 3, ptr %i.lfn, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lfm, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %469, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %469) #11
  br label %bb.aiz

bb.aiy:                                           ; preds = %bb.aiw
  %i.lfp = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.lfq = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.lfp, i64 noundef 8) ; 8 uses
  %i.lfr = load ptr, ptr %i.lq, align 8, !tbaa !642
  %i.lfs = load ptr, ptr %i.lr, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lfq, i8 0, i64 16, i1 false)
  %i.lft = getelementptr inbounds nuw i8, ptr %i.lfq, i64 16
  store i32 254, ptr %i.lft, align 8, !tbaa !627
  %i.lfu = getelementptr inbounds nuw i8, ptr %i.lfq, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.lfu, i8 0, i64 28, i1 false)
  %i.lfv = getelementptr inbounds nuw i8, ptr %i.lfq, i64 48
  store ptr %i.lfr, ptr %i.lfv, align 8, !tbaa !1097
  %i.lfw = getelementptr inbounds nuw i8, ptr %i.lfq, i64 56
  store ptr %i.lfs, ptr %i.lfw, align 8, !tbaa !1098
  %i.lfx = getelementptr inbounds nuw i8, ptr %i.lfq, i64 24
  store ptr %.sroa.05391.0, ptr %i.lfx, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2923 = getelementptr inbounds nuw i8, ptr %i.lfq, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2923, align 8, !tbaa !635
  %i.lfy = ptrtoint ptr %i.lfq to i64
  br label %bb.aiz

bb.aiz:                                           ; preds = %bb.aiy, %bb.aix, %bb.aiv
  %.sroa.05404.198 = phi i64 [ %i.lfy, %bb.aiy ], [ undef, %bb.aix ], [ undef, %bb.aiv ]
  %.sroa.261.198 = phi i8 [ 1, %bb.aiy ], [ 0, %bb.aix ], [ 0, %bb.aiv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lr) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lq) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2344:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2287
  %i.lfz = load i64, ptr %.sroa.01032.0.copyload72407243734873517683, align 1
  %i.lga = xor i64 %i.lfz, 7308345369539990356
  %i.lgb = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517683, i64 5
  %i.lgc = load i64, ptr %i.lgb, align 1
  %i.lgd = xor i64 %i.lgc, 7738151095513738357
  %i.lge = or i64 %i.lga, %i.lgd
  %i.lgf = icmp ne i64 %i.lge, 0
  %i.lgg = zext i1 %i.lgf to i32
  %i.lgh = icmp eq i32 %i.lgg, 0
  br i1 %i.lgh, label %_ZNK4llvh9StringRef6equalsES0_.exit2344.thread6754, label %_ZNK4llvh9StringRef6equalsES0_.exit2371

_ZNK4llvh9StringRef6equalsES0_.exit2344.thread6754: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2344
  call void @llvm.lifetime.start.p0(ptr nonnull %470) #11
  store ptr %470, ptr %470, align 8, !tbaa !639
  %i.lgi = getelementptr inbounds nuw i8, ptr %470, i64 8 ; 2 uses
  store ptr %470, ptr %i.lgi, align 8, !tbaa !640
  %i.lgj = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.14, i64 4, ptr noundef nonnull align 8 dereferenceable(16) %470)
  br i1 %i.lgj, label %bb.ajb, label %bb.aja

bb.aja:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2344.thread6754
  %i.lgk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lgl = load ptr, ptr %i.lgk, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %471) #11
  %i.lgm = getelementptr inbounds nuw i8, ptr %471, i64 16
  %i.lgn = getelementptr inbounds nuw i8, ptr %471, i64 17
  store i8 1, ptr %i.lgn, align 1, !tbaa !611
  store ptr @.str.882, ptr %471, align 8, !tbaa !612
  store i8 3, ptr %i.lgm, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lgl, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %471, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %471) #11
  br label %bb.ajd

bb.ajb:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2344.thread6754
  %i.lgo = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.lgp = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.lgo, i64 noundef 8) ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lgp, i8 0, i64 16, i1 false)
  %i.lgq = getelementptr inbounds nuw i8, ptr %i.lgp, i64 16
  store i32 255, ptr %i.lgq, align 8, !tbaa !627
  %i.lgr = getelementptr inbounds nuw i8, ptr %i.lgp, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.lgr, i8 0, i64 28, i1 false)
  %i.lgs = getelementptr inbounds nuw i8, ptr %i.lgp, i64 48 ; 7 uses
  store ptr %i.lgs, ptr %i.lgs, align 8, !tbaa !639
  %i.lgt = getelementptr inbounds nuw i8, ptr %i.lgp, i64 56
  store ptr %i.lgs, ptr %i.lgt, align 8, !tbaa !640
  %i.lgu = load ptr, ptr %i.lgi, align 8, !tbaa !640 ; 4 uses
  %i.lgv = icmp eq ptr %i.lgs, %470
  %i.lgw = icmp eq ptr %i.lgu, %470
  %or.cond.i.i.i.i.i.i2924 = or i1 %i.lgv, %i.lgw
  br i1 %or.cond.i.i.i.i.i.i2924, label %_ZN6hermes6ESTree17TSModuleBlockNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.ajc

bb.ajc:                                           ; preds = %bb.ajb
  %i.lgx = load ptr, ptr %470, align 8, !tbaa !639 ; 2 uses
  %i.lgy = load ptr, ptr %i.lgu, align 8, !tbaa !639
  %i.lgz = getelementptr inbounds nuw i8, ptr %i.lgy, i64 8
  store ptr %470, ptr %i.lgz, align 8, !tbaa !640
  %i.lha = getelementptr inbounds nuw i8, ptr %i.lgx, i64 8
  store ptr %i.lgs, ptr %i.lha, align 8, !tbaa !640
  store ptr %i.lgs, ptr %i.lgu, align 8, !tbaa !639
  %i.lhb = getelementptr inbounds nuw i8, ptr %i.lgp, i64 56
  store ptr %i.lgu, ptr %i.lhb, align 8, !tbaa !640
  store ptr %i.lgx, ptr %i.lgs, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree17TSModuleBlockNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree17TSModuleBlockNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %bb.ajb, %bb.ajc
  %i.lhc = getelementptr inbounds nuw i8, ptr %i.lgp, i64 24
  store ptr %.sroa.05391.0, ptr %i.lhc, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2925 = getelementptr inbounds nuw i8, ptr %i.lgp, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2925, align 8, !tbaa !635
  %i.lhd = ptrtoint ptr %i.lgp to i64
  br label %bb.ajd

bb.ajd:                                           ; preds = %_ZN6hermes6ESTree17TSModuleBlockNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, %bb.aja
  %.sroa.05404.199 = phi i64 [ %i.lhd, %_ZN6hermes6ESTree17TSModuleBlockNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.aja ]
  %.sroa.261.199 = phi i8 [ 1, %_ZN6hermes6ESTree17TSModuleBlockNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.aja ]
  call void @llvm.lifetime.end.p0(ptr nonnull %470) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2347:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2317
  %i.lhe = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.lhf = xor i64 %i.lhe, 7308345369539990356
  %i.lhg = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.lhh = load i64, ptr %i.lhg, align 1
  %i.lhi = xor i64 %i.lhh, 8243102914962089324
  %i.lhj = or i64 %i.lhf, %i.lhi
  %i.lhk = icmp ne i64 %i.lhj, 0
  %i.lhl = zext i1 %i.lhk to i32
  %i.lhm = icmp eq i32 %i.lhl, 0
  br i1 %i.lhm, label %_ZNK4llvh9StringRef6equalsES0_.exit2347.thread6756, label %_ZNK4llvh9StringRef6equalsES0_.exit2389

_ZNK4llvh9StringRef6equalsES0_.exit2347.thread6756: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ls) #11
  store ptr null, ptr %i.ls, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lt) #11
  store ptr null, ptr %i.lt, align 8, !tbaa !642
  %i.lhn = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.17, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.ls)
  br i1 %i.lhn, label %bb.ajf, label %bb.aje

bb.aje:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2347.thread6756
  %i.lho = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lhp = load ptr, ptr %i.lho, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %472) #11
  %i.lhq = getelementptr inbounds nuw i8, ptr %472, i64 16
  %i.lhr = getelementptr inbounds nuw i8, ptr %472, i64 17
  store i8 1, ptr %i.lhr, align 1, !tbaa !611
  store ptr @.str.884, ptr %472, align 8, !tbaa !612
  store i8 3, ptr %i.lhq, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lhp, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %472, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %472) #11
  br label %bb.ajg

bb.ajf:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2347.thread6756
  %i.lhs = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.876, i64 11, ptr noundef nonnull align 8 dereferenceable(8) %i.lt) ; 0 uses
  %i.lht = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.lhu = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.lht, i64 noundef 8) ; 8 uses
  %i.lhv = load ptr, ptr %i.ls, align 8, !tbaa !642
  %i.lhw = load ptr, ptr %i.lt, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lhu, i8 0, i64 16, i1 false)
  %i.lhx = getelementptr inbounds nuw i8, ptr %i.lhu, i64 16
  store i32 256, ptr %i.lhx, align 8, !tbaa !627
  %i.lhy = getelementptr inbounds nuw i8, ptr %i.lhu, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.lhy, i8 0, i64 28, i1 false)
  %i.lhz = getelementptr inbounds nuw i8, ptr %i.lhu, i64 48
  store ptr %i.lhv, ptr %i.lhz, align 8, !tbaa !1100
  %i.lia = getelementptr inbounds nuw i8, ptr %i.lhu, i64 56
  store ptr %i.lhw, ptr %i.lia, align 8, !tbaa !1101
  %i.lib = getelementptr inbounds nuw i8, ptr %i.lhu, i64 24
  store ptr %.sroa.05391.0, ptr %i.lib, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2926 = getelementptr inbounds nuw i8, ptr %i.lhu, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2926, align 8, !tbaa !635
  %i.lic = ptrtoint ptr %i.lhu to i64
  br label %bb.ajg

bb.ajg:                                           ; preds = %bb.ajf, %bb.aje
  %.sroa.05404.200 = phi i64 [ %i.lic, %bb.ajf ], [ undef, %bb.aje ]
  %.sroa.261.200 = phi i8 [ 1, %bb.ajf ], [ 0, %bb.aje ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lt) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ls) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2350:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2197
  %i.lid = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.lie = xor i128 %i.lid, 90981483300474289266271061637355295572
  %i.lif = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 10
  %i.lig = load i128, ptr %i.lif, align 1
  %i.lih = xor i128 %i.lig, 146793563361271670531309280784823903597
  %i.lii = or i128 %i.lie, %i.lih
  %i.lij = icmp ne i128 %i.lii, 0
  %i.lik = zext i1 %i.lij to i32
  %i.lil = icmp eq i32 %i.lik, 0
  br i1 %i.lil, label %_ZNK4llvh9StringRef6equalsES0_.exit2350.thread6758, label %_ZNK4llvh9StringRef6equalsES0_.exit2383

_ZNK4llvh9StringRef6equalsES0_.exit2350.thread6758: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2350
  call void @llvm.lifetime.start.p0(ptr nonnull %473) #11
  store ptr %473, ptr %473, align 8, !tbaa !639
  %i.lim = getelementptr inbounds nuw i8, ptr %473, i64 8 ; 2 uses
  store ptr %473, ptr %i.lim, align 8, !tbaa !640
  %i.lin = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.19, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %473)
  br i1 %i.lin, label %bb.aji, label %bb.ajh

bb.ajh:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2350.thread6758
  %i.lio = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lip = load ptr, ptr %i.lio, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %474) #11
  %i.liq = getelementptr inbounds nuw i8, ptr %474, i64 16
  %i.lir = getelementptr inbounds nuw i8, ptr %474, i64 17
  store i8 1, ptr %i.lir, align 1, !tbaa !611
  store ptr @.str.887, ptr %474, align 8, !tbaa !612
  store i8 3, ptr %i.liq, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lip, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %474, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %474) #11
  br label %bb.ajk

bb.aji:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2350.thread6758
  %i.lis = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.lit = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.lis, i64 noundef 8) ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lit, i8 0, i64 16, i1 false)
  %i.liu = getelementptr inbounds nuw i8, ptr %i.lit, i64 16
  store i32 257, ptr %i.liu, align 8, !tbaa !627
  %i.liv = getelementptr inbounds nuw i8, ptr %i.lit, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.liv, i8 0, i64 28, i1 false)
  %i.liw = getelementptr inbounds nuw i8, ptr %i.lit, i64 48 ; 7 uses
  store ptr %i.liw, ptr %i.liw, align 8, !tbaa !639
  %i.lix = getelementptr inbounds nuw i8, ptr %i.lit, i64 56
  store ptr %i.liw, ptr %i.lix, align 8, !tbaa !640
  %i.liy = load ptr, ptr %i.lim, align 8, !tbaa !640 ; 4 uses
  %i.liz = icmp eq ptr %i.liw, %473
  %i.lja = icmp eq ptr %i.liy, %473
  %or.cond.i.i.i.i.i.i2927 = or i1 %i.liz, %i.lja
  br i1 %or.cond.i.i.i.i.i.i2927, label %_ZN6hermes6ESTree30TSTypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.ajj

bb.ajj:                                           ; preds = %bb.aji
  %i.ljb = load ptr, ptr %473, align 8, !tbaa !639 ; 2 uses
  %i.ljc = load ptr, ptr %i.liy, align 8, !tbaa !639
  %i.ljd = getelementptr inbounds nuw i8, ptr %i.ljc, i64 8
  store ptr %473, ptr %i.ljd, align 8, !tbaa !640
  %i.lje = getelementptr inbounds nuw i8, ptr %i.ljb, i64 8
  store ptr %i.liw, ptr %i.lje, align 8, !tbaa !640
  store ptr %i.liw, ptr %i.liy, align 8, !tbaa !639
  %i.ljf = getelementptr inbounds nuw i8, ptr %i.lit, i64 56
  store ptr %i.liy, ptr %i.ljf, align 8, !tbaa !640
  store ptr %i.ljb, ptr %i.liw, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree30TSTypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree30TSTypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %bb.aji, %bb.ajj
  %i.ljg = getelementptr inbounds nuw i8, ptr %i.lit, i64 24
  store ptr %.sroa.05391.0, ptr %i.ljg, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2928 = getelementptr inbounds nuw i8, ptr %i.lit, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2928, align 8, !tbaa !635
  %i.ljh = ptrtoint ptr %i.lit to i64
  br label %bb.ajk

bb.ajk:                                           ; preds = %_ZN6hermes6ESTree30TSTypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, %bb.ajh
  %.sroa.05404.201 = phi i64 [ %i.ljh, %_ZN6hermes6ESTree30TSTypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.ajh ]
  %.sroa.261.201 = phi i8 [ 1, %_ZN6hermes6ESTree30TSTypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.ajh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %473) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2353:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2332
  %i.lji = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.ljj = xor i64 %i.lji, 7012216153562174292
  %i.ljk = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 7
  %i.ljl = load i64, ptr %i.ljk, align 1
  %i.ljm = xor i64 %i.ljl, 8243122671947182689
  %i.ljn = or i64 %i.ljj, %i.ljm
  %i.ljo = icmp ne i64 %i.ljn, 0
  %i.ljp = zext i1 %i.ljo to i32
  %i.ljq = icmp eq i32 %i.ljp, 0
  br i1 %i.ljq, label %_ZNK4llvh9StringRef6equalsES0_.exit2353.thread6760, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2353.thread6760: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lu) #11
  store ptr null, ptr %i.lu, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lv) #11
  store ptr null, ptr %i.lv, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lw) #11
  store ptr null, ptr %i.lw, align 8, !tbaa !642
  %i.ljr = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.240, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.lu)
  br i1 %i.ljr, label %bb.ajm, label %bb.ajl

bb.ajl:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2353.thread6760
  %i.ljs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ljt = load ptr, ptr %i.ljs, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %475) #11
  %i.lju = getelementptr inbounds nuw i8, ptr %475, i64 16
  %i.ljv = getelementptr inbounds nuw i8, ptr %475, i64 17
  store i8 1, ptr %i.ljv, align 1, !tbaa !611
  store ptr @.str.889, ptr %475, align 8, !tbaa !612
  store i8 3, ptr %i.lju, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ljt, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %475, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %475) #11
  br label %bb.ajn

bb.ajm:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2353.thread6760
  %i.ljw = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.890, i64 10, ptr noundef nonnull align 8 dereferenceable(8) %i.lv) ; 0 uses
  %i.ljx = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.663, i64 7, ptr noundef nonnull align 8 dereferenceable(8) %i.lw) ; 0 uses
  %i.ljy = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.ljz = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.ljy, i64 noundef 8) ; 9 uses
  %i.lka = load ptr, ptr %i.lu, align 8, !tbaa !642
  %i.lkb = load ptr, ptr %i.lv, align 8, !tbaa !642
  %i.lkc = load ptr, ptr %i.lw, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ljz, i8 0, i64 16, i1 false)
  %i.lkd = getelementptr inbounds nuw i8, ptr %i.ljz, i64 16
  store i32 258, ptr %i.lkd, align 8, !tbaa !627
  %i.lke = getelementptr inbounds nuw i8, ptr %i.ljz, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.lke, i8 0, i64 28, i1 false)
  %i.lkf = getelementptr inbounds nuw i8, ptr %i.ljz, i64 48
  store ptr %i.lka, ptr %i.lkf, align 8, !tbaa !1103
  %i.lkg = getelementptr inbounds nuw i8, ptr %i.ljz, i64 56
  store ptr %i.lkb, ptr %i.lkg, align 8, !tbaa !1104
  %i.lkh = getelementptr inbounds nuw i8, ptr %i.ljz, i64 64
  store ptr %i.lkc, ptr %i.lkh, align 8, !tbaa !1105
  %i.lki = getelementptr inbounds nuw i8, ptr %i.ljz, i64 24
  store ptr %.sroa.05391.0, ptr %i.lki, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2929 = getelementptr inbounds nuw i8, ptr %i.ljz, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2929, align 8, !tbaa !635
  %i.lkj = ptrtoint ptr %i.ljz to i64
  br label %bb.ajn

bb.ajn:                                           ; preds = %bb.ajm, %bb.ajl
  %.sroa.05404.202 = phi i64 [ %i.lkj, %bb.ajm ], [ undef, %bb.ajl ]
  %.sroa.261.202 = phi i8 [ 1, %bb.ajm ], [ 0, %bb.ajl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lw) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lv) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lu) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2356:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2185
  %i.lkk = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.lkl = xor i128 %i.lkk, 97627623279398868630790096938757018452
  %i.lkm = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 12
  %i.lkn = load i128, ptr %i.lkm, align 1
  %i.lko = xor i128 %i.lkn, 146793563361260879960649570388901258612
  %i.lkp = or i128 %i.lkl, %i.lko
  %i.lkq = icmp ne i128 %i.lkp, 0
  %i.lkr = zext i1 %i.lkq to i32
  %i.lks = icmp eq i32 %i.lkr, 0
  br i1 %i.lks, label %_ZNK4llvh9StringRef6equalsES0_.exit2356.thread6762, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2356.thread6762: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2356
  call void @llvm.lifetime.start.p0(ptr nonnull %476) #11
  store ptr %476, ptr %476, align 8, !tbaa !639
  %i.lkt = getelementptr inbounds nuw i8, ptr %476, i64 8 ; 2 uses
  store ptr %476, ptr %i.lkt, align 8, !tbaa !640
  %i.lku = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.19, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %476)
  br i1 %i.lku, label %bb.ajp, label %bb.ajo

bb.ajo:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2356.thread6762
  %i.lkv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lkw = load ptr, ptr %i.lkv, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %477) #11
  %i.lkx = getelementptr inbounds nuw i8, ptr %477, i64 16
  %i.lky = getelementptr inbounds nuw i8, ptr %477, i64 17
  store i8 1, ptr %i.lky, align 1, !tbaa !611
  store ptr @.str.894, ptr %477, align 8, !tbaa !612
  store i8 3, ptr %i.lkx, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lkw, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %477, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %477) #11
  br label %bb.ajr

bb.ajp:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2356.thread6762
  %i.lkz = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.lla = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.lkz, i64 noundef 8) ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lla, i8 0, i64 16, i1 false)
  %i.llb = getelementptr inbounds nuw i8, ptr %i.lla, i64 16
  store i32 259, ptr %i.llb, align 8, !tbaa !627
  %i.llc = getelementptr inbounds nuw i8, ptr %i.lla, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.llc, i8 0, i64 28, i1 false)
  %i.lld = getelementptr inbounds nuw i8, ptr %i.lla, i64 48 ; 7 uses
  store ptr %i.lld, ptr %i.lld, align 8, !tbaa !639
  %i.lle = getelementptr inbounds nuw i8, ptr %i.lla, i64 56
  store ptr %i.lld, ptr %i.lle, align 8, !tbaa !640
  %i.llf = load ptr, ptr %i.lkt, align 8, !tbaa !640 ; 4 uses
  %i.llg = icmp eq ptr %i.lld, %476
  %i.llh = icmp eq ptr %i.llf, %476
  %or.cond.i.i.i.i.i.i2930 = or i1 %i.llg, %i.llh
  br i1 %or.cond.i.i.i.i.i.i2930, label %_ZN6hermes6ESTree32TSTypeParameterInstantiationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.ajq

bb.ajq:                                           ; preds = %bb.ajp
  %i.lli = load ptr, ptr %476, align 8, !tbaa !639 ; 2 uses
  %i.llj = load ptr, ptr %i.llf, align 8, !tbaa !639
  %i.llk = getelementptr inbounds nuw i8, ptr %i.llj, i64 8
  store ptr %476, ptr %i.llk, align 8, !tbaa !640
  %i.lll = getelementptr inbounds nuw i8, ptr %i.lli, i64 8
  store ptr %i.lld, ptr %i.lll, align 8, !tbaa !640
  store ptr %i.lld, ptr %i.llf, align 8, !tbaa !639
  %i.llm = getelementptr inbounds nuw i8, ptr %i.lla, i64 56
  store ptr %i.llf, ptr %i.llm, align 8, !tbaa !640
  store ptr %i.lli, ptr %i.lld, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree32TSTypeParameterInstantiationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree32TSTypeParameterInstantiationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %bb.ajp, %bb.ajq
  %i.lln = getelementptr inbounds nuw i8, ptr %i.lla, i64 24
  store ptr %.sroa.05391.0, ptr %i.lln, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2931 = getelementptr inbounds nuw i8, ptr %i.lla, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2931, align 8, !tbaa !635
  %i.llo = ptrtoint ptr %i.lla to i64
  br label %bb.ajr

bb.ajr:                                           ; preds = %_ZN6hermes6ESTree32TSTypeParameterInstantiationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, %bb.ajo
  %.sroa.05404.203 = phi i64 [ %i.llo, %_ZN6hermes6ESTree32TSTypeParameterInstantiationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.ajo ]
  %.sroa.261.203 = phi i8 [ 1, %_ZN6hermes6ESTree32TSTypeParameterInstantiationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.ajo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %476) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2359:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2311
  %i.llp = load i64, ptr %.sroa.01032.0.copyload72407243734873517669, align 1
  %i.llq = xor i64 %i.llp, 6083922645237453652
  %i.llr = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517669, i64 3
  %i.lls = load i64, ptr %i.llr, align 1
  %i.llt = xor i64 %i.lls, 7309475598759324014
  %i.llu = or i64 %i.llq, %i.llt
  %i.llv = icmp ne i64 %i.llu, 0
  %i.llw = zext i1 %i.llv to i32
  %i.llx = icmp eq i32 %i.llw, 0
  br i1 %i.llx, label %_ZNK4llvh9StringRef6equalsES0_.exit2359.thread6764, label %_ZNK4llvh9StringRef6equalsES0_.exit2365

_ZNK4llvh9StringRef6equalsES0_.exit2359.thread6764: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2359
  call void @llvm.lifetime.start.p0(ptr nonnull %478) #11
  store ptr %478, ptr %478, align 8, !tbaa !639
  %i.lly = getelementptr inbounds nuw i8, ptr %478, i64 8 ; 2 uses
  store ptr %478, ptr %i.lly, align 8, !tbaa !640
  %i.llz = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.552, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %478)
  br i1 %i.llz, label %bb.ajt, label %bb.ajs

bb.ajs:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2359.thread6764
  %i.lma = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lmb = load ptr, ptr %i.lma, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %479) #11
  %i.lmc = getelementptr inbounds nuw i8, ptr %479, i64 16
  %i.lmd = getelementptr inbounds nuw i8, ptr %479, i64 17
  store i8 1, ptr %i.lmd, align 1, !tbaa !611
  store ptr @.str.896, ptr %479, align 8, !tbaa !612
  store i8 3, ptr %i.lmc, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lmb, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %479, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %479) #11
  br label %bb.ajv

bb.ajt:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2359.thread6764
  %i.lme = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.lmf = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.lme, i64 noundef 8) ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lmf, i8 0, i64 16, i1 false)
  %i.lmg = getelementptr inbounds nuw i8, ptr %i.lmf, i64 16
  store i32 260, ptr %i.lmg, align 8, !tbaa !627
  %i.lmh = getelementptr inbounds nuw i8, ptr %i.lmf, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.lmh, i8 0, i64 28, i1 false)
  %i.lmi = getelementptr inbounds nuw i8, ptr %i.lmf, i64 48 ; 7 uses
  store ptr %i.lmi, ptr %i.lmi, align 8, !tbaa !639
  %i.lmj = getelementptr inbounds nuw i8, ptr %i.lmf, i64 56
  store ptr %i.lmi, ptr %i.lmj, align 8, !tbaa !640
  %i.lmk = load ptr, ptr %i.lly, align 8, !tbaa !640 ; 4 uses
  %i.lml = icmp eq ptr %i.lmi, %478
  %i.lmm = icmp eq ptr %i.lmk, %478
  %or.cond.i.i.i.i.i.i2932 = or i1 %i.lml, %i.lmm
  br i1 %or.cond.i.i.i.i.i.i2932, label %_ZN6hermes6ESTree15TSUnionTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.aju

bb.aju:                                           ; preds = %bb.ajt
  %i.lmn = load ptr, ptr %478, align 8, !tbaa !639 ; 2 uses
  %i.lmo = load ptr, ptr %i.lmk, align 8, !tbaa !639
  %i.lmp = getelementptr inbounds nuw i8, ptr %i.lmo, i64 8
  store ptr %478, ptr %i.lmp, align 8, !tbaa !640
  %i.lmq = getelementptr inbounds nuw i8, ptr %i.lmn, i64 8
  store ptr %i.lmi, ptr %i.lmq, align 8, !tbaa !640
  store ptr %i.lmi, ptr %i.lmk, align 8, !tbaa !639
  %i.lmr = getelementptr inbounds nuw i8, ptr %i.lmf, i64 56
  store ptr %i.lmk, ptr %i.lmr, align 8, !tbaa !640
  store ptr %i.lmn, ptr %i.lmi, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree15TSUnionTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree15TSUnionTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %bb.ajt, %bb.aju
  %i.lms = getelementptr inbounds nuw i8, ptr %i.lmf, i64 24
  store ptr %.sroa.05391.0, ptr %i.lms, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2933 = getelementptr inbounds nuw i8, ptr %i.lmf, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2933, align 8, !tbaa !635
  %i.lmt = ptrtoint ptr %i.lmf to i64
  br label %bb.ajv

bb.ajv:                                           ; preds = %_ZN6hermes6ESTree15TSUnionTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, %bb.ajs
  %.sroa.05404.204 = phi i64 [ %i.lmt, %_ZN6hermes6ESTree15TSUnionTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.ajs ]
  %.sroa.261.204 = phi i8 [ 1, %_ZN6hermes6ESTree15TSUnionTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.ajs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %478) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2362:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2272
  %i.lmu = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.lmv = xor i128 %i.lmu, 161274980318110817721283630818952565588
  %i.lmw = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.lmx = load i16, ptr %i.lmw, align 1
  %i.lmy = zext i16 %i.lmx to i128
  %i.lmz = xor i128 %i.lmy, 25968
  %i.lna = or i128 %i.lmv, %i.lmz
  %i.lnb = icmp ne i128 %i.lna, 0
  %i.lnc = zext i1 %i.lnb to i32
  %i.lnd = icmp eq i32 %i.lnc, 0
  br i1 %i.lnd, label %_ZNK4llvh9StringRef6equalsES0_.exit2362.thread6766, label %_ZNK4llvh9StringRef6equalsES0_.exit2392

_ZNK4llvh9StringRef6equalsES0_.exit2362.thread6766: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2362
  call void @llvm.lifetime.start.p0(ptr nonnull %480) #11
  store ptr %480, ptr %480, align 8, !tbaa !639
  %i.lne = getelementptr inbounds nuw i8, ptr %480, i64 8 ; 2 uses
  store ptr %480, ptr %i.lne, align 8, !tbaa !640
  %i.lnf = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.552, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %480)
  br i1 %i.lnf, label %bb.ajx, label %bb.ajw

bb.ajw:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2362.thread6766
  %i.lng = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lnh = load ptr, ptr %i.lng, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %481) #11
  %i.lni = getelementptr inbounds nuw i8, ptr %481, i64 16
  %i.lnj = getelementptr inbounds nuw i8, ptr %481, i64 17
  store i8 1, ptr %i.lnj, align 1, !tbaa !611
  store ptr @.str.898, ptr %481, align 8, !tbaa !612
  store i8 3, ptr %i.lni, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lnh, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %481, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %481) #11
  br label %bb.ajz

bb.ajx:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2362.thread6766
  %i.lnk = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.lnl = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.lnk, i64 noundef 8) ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lnl, i8 0, i64 16, i1 false)
  %i.lnm = getelementptr inbounds nuw i8, ptr %i.lnl, i64 16
  store i32 261, ptr %i.lnm, align 8, !tbaa !627
  %i.lnn = getelementptr inbounds nuw i8, ptr %i.lnl, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.lnn, i8 0, i64 28, i1 false)
  %i.lno = getelementptr inbounds nuw i8, ptr %i.lnl, i64 48 ; 7 uses
  store ptr %i.lno, ptr %i.lno, align 8, !tbaa !639
  %i.lnp = getelementptr inbounds nuw i8, ptr %i.lnl, i64 56
  store ptr %i.lno, ptr %i.lnp, align 8, !tbaa !640
  %i.lnq = load ptr, ptr %i.lne, align 8, !tbaa !640 ; 4 uses
  %i.lnr = icmp eq ptr %i.lno, %480
  %i.lns = icmp eq ptr %i.lnq, %480
  %or.cond.i.i.i.i.i.i2934 = or i1 %i.lnr, %i.lns
  br i1 %or.cond.i.i.i.i.i.i2934, label %_ZN6hermes6ESTree22TSIntersectionTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.ajy

bb.ajy:                                           ; preds = %bb.ajx
  %i.lnt = load ptr, ptr %480, align 8, !tbaa !639 ; 2 uses
  %i.lnu = load ptr, ptr %i.lnq, align 8, !tbaa !639
  %i.lnv = getelementptr inbounds nuw i8, ptr %i.lnu, i64 8
  store ptr %480, ptr %i.lnv, align 8, !tbaa !640
  %i.lnw = getelementptr inbounds nuw i8, ptr %i.lnt, i64 8
  store ptr %i.lno, ptr %i.lnw, align 8, !tbaa !640
  store ptr %i.lno, ptr %i.lnq, align 8, !tbaa !639
  %i.lnx = getelementptr inbounds nuw i8, ptr %i.lnl, i64 56
  store ptr %i.lnq, ptr %i.lnx, align 8, !tbaa !640
  store ptr %i.lnt, ptr %i.lno, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree22TSIntersectionTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree22TSIntersectionTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %bb.ajx, %bb.ajy
  %i.lny = getelementptr inbounds nuw i8, ptr %i.lnl, i64 24
  store ptr %.sroa.05391.0, ptr %i.lny, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2935 = getelementptr inbounds nuw i8, ptr %i.lnl, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2935, align 8, !tbaa !635
  %i.lnz = ptrtoint ptr %i.lnl to i64
  br label %bb.ajz

bb.ajz:                                           ; preds = %_ZN6hermes6ESTree22TSIntersectionTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, %bb.ajw
  %.sroa.05404.205 = phi i64 [ %i.lnz, %_ZN6hermes6ESTree22TSIntersectionTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.ajw ]
  %.sroa.261.205 = phi i8 [ 1, %_ZN6hermes6ESTree22TSIntersectionTypeNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.ajw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %480) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2365:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2359
  %i.loa = load i64, ptr %.sroa.01032.0.copyload72407243734873517669, align 1
  %i.lob = xor i64 %i.loa, 8453649509297443668
  %i.loc = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517669, i64 3
  %i.lod = load i64, ptr %i.loc, align 1
  %i.loe = xor i64 %i.lod, 8751168580485476473
  %i.lof = or i64 %i.lob, %i.loe
  %i.log = icmp ne i64 %i.lof, 0
  %i.loh = zext i1 %i.log to i32
  %i.loi = icmp eq i32 %i.loh, 0
  br i1 %i.loi, label %_ZNK4llvh9StringRef6equalsES0_.exit2365.thread6768, label %_ZNK4llvh9StringRef6equalsES0_.exit2386

_ZNK4llvh9StringRef6equalsES0_.exit2365.thread6768: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lx) #11
  store ptr null, ptr %i.lx, align 8, !tbaa !642
  %i.loj = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.900, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.lx)
  br i1 %i.loj, label %bb.akb, label %bb.aka

bb.aka:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2365.thread6768
  %i.lok = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lol = load ptr, ptr %i.lok, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %482) #11
  %i.lom = getelementptr inbounds nuw i8, ptr %482, i64 16
  %i.lon = getelementptr inbounds nuw i8, ptr %482, i64 17
  store i8 1, ptr %i.lon, align 1, !tbaa !611
  store ptr @.str.901, ptr %482, align 8, !tbaa !612
  store i8 3, ptr %i.lom, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lol, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %482, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %482) #11
  br label %bb.akc

bb.akb:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2365.thread6768
  %i.loo = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.lop = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.loo, i64 noundef 8) ; 7 uses
  %i.loq = load ptr, ptr %i.lx, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lop, i8 0, i64 16, i1 false)
  %i.lor = getelementptr inbounds nuw i8, ptr %i.lop, i64 16
  store i32 262, ptr %i.lor, align 8, !tbaa !627
  %i.los = getelementptr inbounds nuw i8, ptr %i.lop, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.los, i8 0, i64 28, i1 false)
  %i.lot = getelementptr inbounds nuw i8, ptr %i.lop, i64 48
  store ptr %i.loq, ptr %i.lot, align 8, !tbaa !1107
  %i.lou = getelementptr inbounds nuw i8, ptr %i.lop, i64 24
  store ptr %.sroa.05391.0, ptr %i.lou, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2936 = getelementptr inbounds nuw i8, ptr %i.lop, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2936, align 8, !tbaa !635
  %i.lov = ptrtoint ptr %i.lop to i64
  br label %bb.akc

bb.akc:                                           ; preds = %bb.akb, %bb.aka
  %.sroa.05404.206 = phi i64 [ %i.lov, %bb.akb ], [ undef, %bb.aka ]
  %.sroa.261.206 = phi i8 [ 1, %bb.akb ], [ 0, %bb.aka ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lx) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2368:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2335
  %i.low = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.lox = xor i128 %i.low, 149503515756995104109946805831162090324
  %i.loy = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.loz = load i8, ptr %i.loy, align 1
  %i.lpa = zext i8 %i.loz to i128
  %i.lpb = xor i128 %i.lpa, 101
  %i.lpc = or i128 %i.lox, %i.lpb
  %i.lpd = icmp ne i128 %i.lpc, 0
  %i.lpe = zext i1 %i.lpd to i32
  %i.lpf = icmp eq i32 %i.lpe, 0
  br i1 %i.lpf, label %_ZNK4llvh9StringRef6equalsES0_.exit2368.thread6770, label %_ZNK4llvh9StringRef6equalsES0_.exit2377

_ZNK4llvh9StringRef6equalsES0_.exit2368.thread6770: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ly) #11
  store ptr null, ptr %i.ly, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lz) #11
  store ptr null, ptr %i.lz, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ma) #11
  store ptr null, ptr %i.ma, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mb) #11
  store ptr null, ptr %i.mb, align 8, !tbaa !642
  %i.lpg = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.587, i64 9, ptr noundef nonnull align 8 dereferenceable(8) %i.ly)
  br i1 %i.lpg, label %bb.ake, label %bb.akd

bb.akd:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2368.thread6770
  %i.lph = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lpi = load ptr, ptr %i.lph, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %483) #11
  %i.lpj = getelementptr inbounds nuw i8, ptr %483, i64 16
  %i.lpk = getelementptr inbounds nuw i8, ptr %483, i64 17
  store i8 1, ptr %i.lpk, align 1, !tbaa !611
  store ptr @.str.903, ptr %483, align 8, !tbaa !612
  store i8 3, ptr %i.lpj, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lpi, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %483, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %483) #11
  br label %bb.akl

bb.ake:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2368.thread6770
  %i.lpl = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.589, i64 11, ptr noundef nonnull align 8 dereferenceable(8) %i.lz)
  br i1 %i.lpl, label %bb.akg, label %bb.akf

bb.akf:                                           ; preds = %bb.ake
  %i.lpm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lpn = load ptr, ptr %i.lpm, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %484) #11
  %i.lpo = getelementptr inbounds nuw i8, ptr %484, i64 16
  %i.lpp = getelementptr inbounds nuw i8, ptr %484, i64 17
  store i8 1, ptr %i.lpp, align 1, !tbaa !611
  store ptr @.str.904, ptr %484, align 8, !tbaa !612
  store i8 3, ptr %i.lpo, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lpn, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %484, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %484) #11
  br label %bb.akl

bb.akg:                                           ; preds = %bb.ake
  %i.lpq = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.591, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.ma)
  br i1 %i.lpq, label %bb.aki, label %bb.akh

bb.akh:                                           ; preds = %bb.akg
  %i.lpr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lps = load ptr, ptr %i.lpr, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %485) #11
  %i.lpt = getelementptr inbounds nuw i8, ptr %485, i64 16
  %i.lpu = getelementptr inbounds nuw i8, ptr %485, i64 17
  store i8 1, ptr %i.lpu, align 1, !tbaa !611
  store ptr @.str.905, ptr %485, align 8, !tbaa !612
  store i8 3, ptr %i.lpt, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lps, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %485, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %485) #11
  br label %bb.akl

bb.aki:                                           ; preds = %bb.akg
  %i.lpv = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.593, i64 9, ptr noundef nonnull align 8 dereferenceable(8) %i.mb)
  br i1 %i.lpv, label %bb.akk, label %bb.akj

bb.akj:                                           ; preds = %bb.aki
  %i.lpw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lpx = load ptr, ptr %i.lpw, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %486) #11
  %i.lpy = getelementptr inbounds nuw i8, ptr %486, i64 16
  %i.lpz = getelementptr inbounds nuw i8, ptr %486, i64 17
  store i8 1, ptr %i.lpz, align 1, !tbaa !611
  store ptr @.str.906, ptr %486, align 8, !tbaa !612
  store i8 3, ptr %i.lpy, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lpx, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %486, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %486) #11
  br label %bb.akl

bb.akk:                                           ; preds = %bb.aki
  %i.lqa = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.lqb = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 80, ptr noundef nonnull align 8 dereferenceable(656) %i.lqa, i64 noundef 8) ; 10 uses
  %i.lqc = load ptr, ptr %i.ly, align 8, !tbaa !642
  %i.lqd = load ptr, ptr %i.lz, align 8, !tbaa !642
  %i.lqe = load ptr, ptr %i.ma, align 8, !tbaa !642
  %i.lqf = load ptr, ptr %i.mb, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.lqb, i8 0, i64 16, i1 false)
  %i.lqg = getelementptr inbounds nuw i8, ptr %i.lqb, i64 16
  store i32 263, ptr %i.lqg, align 8, !tbaa !627
  %i.lqh = getelementptr inbounds nuw i8, ptr %i.lqb, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.lqh, i8 0, i64 28, i1 false)
  %i.lqi = getelementptr inbounds nuw i8, ptr %i.lqb, i64 48
  store ptr %i.lqc, ptr %i.lqi, align 8, !tbaa !1109
  %i.lqj = getelementptr inbounds nuw i8, ptr %i.lqb, i64 56
  store ptr %i.lqd, ptr %i.lqj, align 8, !tbaa !1110
  %i.lqk = getelementptr inbounds nuw i8, ptr %i.lqb, i64 64
  store ptr %i.lqe, ptr %i.lqk, align 8, !tbaa !1111
  %i.lql = getelementptr inbounds nuw i8, ptr %i.lqb, i64 72
  store ptr %i.lqf, ptr %i.lql, align 8, !tbaa !1112
  %i.lqm = getelementptr inbounds nuw i8, ptr %i.lqb, i64 24
  store ptr %.sroa.05391.0, ptr %i.lqm, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2937 = getelementptr inbounds nuw i8, ptr %i.lqb, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2937, align 8, !tbaa !635
  %i.lqn = ptrtoint ptr %i.lqb to i64
  br label %bb.akl

bb.akl:                                           ; preds = %bb.akk, %bb.akj, %bb.akh, %bb.akf, %bb.akd
  %.sroa.05404.207 = phi i64 [ %i.lqn, %bb.akk ], [ undef, %bb.akj ], [ undef, %bb.akh ], [ undef, %bb.akf ], [ undef, %bb.akd ]
  %.sroa.261.207 = phi i8 [ 1, %bb.akk ], [ 0, %bb.akj ], [ 0, %bb.akh ], [ 0, %bb.akf ], [ 0, %bb.akd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mb) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ma) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lz) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ly) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2371:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2344
  %i.lqo = load i64, ptr %.sroa.01032.0.copyload72407243734873517683, align 1
  %i.lqp = xor i64 %i.lqo, 7587551005958755156
  %i.lqq = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517683, i64 5
  %i.lqr = load i64, ptr %i.lqq, align 1
  %i.lqs = xor i64 %i.lqr, 7809649008907471973
  %i.lqt = or i64 %i.lqp, %i.lqs
  %i.lqu = icmp ne i64 %i.lqt, 0
  %i.lqv = zext i1 %i.lqu to i32
  %i.lqw = icmp eq i32 %i.lqv, 0
  br i1 %i.lqw, label %_ZNK4llvh9StringRef6equalsES0_.exit2371.thread6772, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2371.thread6772: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2371
  call void @llvm.lifetime.start.p0(ptr nonnull %487) #11
  store ptr %487, ptr %487, align 8, !tbaa !639
  %i.lqx = getelementptr inbounds nuw i8, ptr %487, i64 8 ; 2 uses
  store ptr %487, ptr %i.lqx, align 8, !tbaa !640
  %i.lqy = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.761, i64 7, ptr noundef nonnull align 8 dereferenceable(16) %487)
  br i1 %i.lqy, label %bb.akn, label %bb.akm

bb.akm:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2371.thread6772
  %i.lqz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lra = load ptr, ptr %i.lqz, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %488) #11
  %i.lrb = getelementptr inbounds nuw i8, ptr %488, i64 16
  %i.lrc = getelementptr inbounds nuw i8, ptr %488, i64 17
  store i8 1, ptr %i.lrc, align 1, !tbaa !611
  store ptr @.str.908, ptr %488, align 8, !tbaa !612
  store i8 3, ptr %i.lrb, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lra, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %488, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %488) #11
  br label %bb.akp

bb.akn:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2371.thread6772
  %i.lrd = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.lre = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.lrd, i64 noundef 8) ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lre, i8 0, i64 16, i1 false)
  %i.lrf = getelementptr inbounds nuw i8, ptr %i.lre, i64 16
  store i32 264, ptr %i.lrf, align 8, !tbaa !627
  %i.lrg = getelementptr inbounds nuw i8, ptr %i.lre, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.lrg, i8 0, i64 28, i1 false)
  %i.lrh = getelementptr inbounds nuw i8, ptr %i.lre, i64 48 ; 7 uses
  store ptr %i.lrh, ptr %i.lrh, align 8, !tbaa !639
  %i.lri = getelementptr inbounds nuw i8, ptr %i.lre, i64 56
  store ptr %i.lrh, ptr %i.lri, align 8, !tbaa !640
  %i.lrj = load ptr, ptr %i.lqx, align 8, !tbaa !640 ; 4 uses
  %i.lrk = icmp eq ptr %i.lrh, %487
  %i.lrl = icmp eq ptr %i.lrj, %487
  %or.cond.i.i.i.i.i.i2938 = or i1 %i.lrk, %i.lrl
  br i1 %or.cond.i.i.i.i.i.i2938, label %_ZN6hermes6ESTree17TSTypeLiteralNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.ako

bb.ako:                                           ; preds = %bb.akn
  %i.lrm = load ptr, ptr %487, align 8, !tbaa !639 ; 2 uses
  %i.lrn = load ptr, ptr %i.lrj, align 8, !tbaa !639
  %i.lro = getelementptr inbounds nuw i8, ptr %i.lrn, i64 8
  store ptr %487, ptr %i.lro, align 8, !tbaa !640
  %i.lrp = getelementptr inbounds nuw i8, ptr %i.lrm, i64 8
  store ptr %i.lrh, ptr %i.lrp, align 8, !tbaa !640
  store ptr %i.lrh, ptr %i.lrj, align 8, !tbaa !639
  %i.lrq = getelementptr inbounds nuw i8, ptr %i.lre, i64 56
  store ptr %i.lrj, ptr %i.lrq, align 8, !tbaa !640
  store ptr %i.lrm, ptr %i.lrh, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree17TSTypeLiteralNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree17TSTypeLiteralNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %bb.akn, %bb.ako
  %i.lrr = getelementptr inbounds nuw i8, ptr %i.lre, i64 24
  store ptr %.sroa.05391.0, ptr %i.lrr, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2939 = getelementptr inbounds nuw i8, ptr %i.lre, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2939, align 8, !tbaa !635
  %i.lrs = ptrtoint ptr %i.lre to i64
  br label %bb.akp

bb.akp:                                           ; preds = %_ZN6hermes6ESTree17TSTypeLiteralNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, %bb.akm
  %.sroa.05404.208 = phi i64 [ %i.lrs, %_ZN6hermes6ESTree17TSTypeLiteralNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.akm ]
  %.sroa.261.208 = phi i8 [ 1, %_ZN6hermes6ESTree17TSTypeLiteralNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.akm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %487) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2374:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2341
  %i.lrt = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.lru = xor i128 %i.lrt, 154696339564482100618461588001037243220
  %i.lrv = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 3
  %i.lrw = load i128, ptr %i.lrv, align 1
  %i.lrx = xor i128 %i.lrw, 134846331678693468552538663349832937330
  %i.lry = or i128 %i.lru, %i.lrx
  %i.lrz = icmp ne i128 %i.lry, 0
  %i.lsa = zext i1 %i.lrz to i32
  %i.lsb = icmp eq i32 %i.lsa, 0
  br i1 %i.lsb, label %_ZNK4llvh9StringRef6equalsES0_.exit2374.thread6774, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2374.thread6774: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mc) #11
  store ptr null, ptr %i.mc, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.md) #11
  store ptr null, ptr %i.md, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.me) #11
  store ptr null, ptr %i.me, align 8, !tbaa !642
  %i.lsc = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.282, i64 3, ptr noundef nonnull align 8 dereferenceable(8) %i.mc)
  br i1 %i.lsc, label %bb.akr, label %bb.akq

bb.akq:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2374.thread6774
  %i.lsd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lse = load ptr, ptr %i.lsd, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %489) #11
  %i.lsf = getelementptr inbounds nuw i8, ptr %489, i64 16
  %i.lsg = getelementptr inbounds nuw i8, ptr %489, i64 17
  store i8 1, ptr %i.lsg, align 1, !tbaa !611
  store ptr @.str.910, ptr %489, align 8, !tbaa !612
  store i8 3, ptr %i.lsf, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lse, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %489, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %489) #11
  br label %bb.akx

bb.akr:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2374.thread6774
  %i.lsh = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.242, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.md) ; 0 uses
  %i.lsi = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.876, i64 11, ptr noundef nonnull align 8 dereferenceable(8) %i.me) ; 0 uses
  %i.lsj = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.lsk = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.lsj, ptr nonnull @.str.196, i64 8)
  %i.lsl = extractvalue { i64, i8 } %i.lsk, 0
  %i.lsm = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.lsl
  %i.lsn = load ptr, ptr %i.lsm, align 8, !tbaa !629 ; 2 uses
  %i.lso = load i32, ptr %i.lsn, align 4, !tbaa !595
  %i.lsp = icmp eq i32 %i.lso, 4
  br i1 %i.lsp, label %bb.aks, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2941

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2941: ; preds = %bb.akr
  %i.lsq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lsr = load ptr, ptr %i.lsq, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %490) #11
  %i.lss = getelementptr inbounds nuw i8, ptr %490, i64 16
  %i.lst = getelementptr inbounds nuw i8, ptr %490, i64 17
  store i8 1, ptr %i.lst, align 1, !tbaa !611
  store ptr @.str.913, ptr %490, align 8, !tbaa !612
  store i8 3, ptr %i.lss, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lsr, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %490, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %490) #11
  br label %bb.akx

bb.aks:                                           ; preds = %bb.akr
  %i.lsu = getelementptr inbounds nuw i8, ptr %i.lsn, i64 4
  %i.lsv = load i8, ptr %i.lsu, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.lsw = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.lsx = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.lsw, ptr nonnull @.str.216, i64 8)
  %i.lsy = extractvalue { i64, i8 } %i.lsx, 0
  %i.lsz = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.lsy
  %i.lta = load ptr, ptr %i.lsz, align 8, !tbaa !629 ; 2 uses
  %i.ltb = load i32, ptr %i.lta, align 4, !tbaa !595
  %i.ltc = icmp eq i32 %i.ltb, 4
  br i1 %i.ltc, label %bb.akt, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2943

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2943: ; preds = %bb.aks
  %i.ltd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lte = load ptr, ptr %i.ltd, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %491) #11
  %i.ltf = getelementptr inbounds nuw i8, ptr %491, i64 16
  %i.ltg = getelementptr inbounds nuw i8, ptr %491, i64 17
  store i8 1, ptr %i.ltg, align 1, !tbaa !611
  store ptr @.str.914, ptr %491, align 8, !tbaa !612
  store i8 3, ptr %i.ltf, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lte, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %491, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %491) #11
  br label %bb.akx

bb.akt:                                           ; preds = %bb.aks
  %i.lth = getelementptr inbounds nuw i8, ptr %i.lta, i64 4
  %i.lti = load i8, ptr %i.lth, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.ltj = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.ltk = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ltj, ptr nonnull @.str.852, i64 8)
  %i.ltl = extractvalue { i64, i8 } %i.ltk, 0
  %i.ltm = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.ltl
  %i.ltn = load ptr, ptr %i.ltm, align 8, !tbaa !629 ; 2 uses
  %i.lto = load i32, ptr %i.ltn, align 4, !tbaa !595
  %i.ltp = icmp eq i32 %i.lto, 4
  br i1 %i.ltp, label %bb.aku, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2945

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2945: ; preds = %bb.akt
  %i.ltq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ltr = load ptr, ptr %i.ltq, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %492) #11
  %i.lts = getelementptr inbounds nuw i8, ptr %492, i64 16
  %i.ltt = getelementptr inbounds nuw i8, ptr %492, i64 17
  store i8 1, ptr %i.ltt, align 1, !tbaa !611
  store ptr @.str.915, ptr %492, align 8, !tbaa !612
  store i8 3, ptr %i.lts, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ltr, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %492, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %492) #11
  br label %bb.akx

bb.aku:                                           ; preds = %bb.akt
  %i.ltu = getelementptr inbounds nuw i8, ptr %i.ltn, i64 4
  %i.ltv = load i8, ptr %i.ltu, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.ltw = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.ltx = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ltw, ptr nonnull @.str.317, i64 6)
  %i.lty = extractvalue { i64, i8 } %i.ltx, 0
  %i.ltz = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.lty
  %i.lua = load ptr, ptr %i.ltz, align 8, !tbaa !629 ; 2 uses
  %i.lub = load i32, ptr %i.lua, align 4, !tbaa !595
  %i.luc = icmp eq i32 %i.lub, 4
  br i1 %i.luc, label %bb.akv, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2947

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2947: ; preds = %bb.aku
  %i.lud = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lue = load ptr, ptr %i.lud, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %493) #11
end_hunk_15
begin_hunk_16_@_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder5buildEPKNS_6parser9JSONValueE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %498) #11
  %i.lws = getelementptr inbounds nuw i8, ptr %498, i64 16
  %i.lwt = getelementptr inbounds nuw i8, ptr %498, i64 17
  store i8 1, ptr %i.lwt, align 1, !tbaa !611
  store ptr @.str.922, ptr %498, align 8, !tbaa !612
  store i8 3, ptr %i.lws, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lwr, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %498, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %498) #11
  br label %bb.ald

bb.alc:                                           ; preds = %bb.alb
  %i.lwu = getelementptr inbounds nuw i8, ptr %i.lwn, i64 4
  %i.lwv = load i8, ptr %i.lwu, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.lww = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.lwx = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 88, ptr noundef nonnull align 8 dereferenceable(656) %i.lww, i64 noundef 8) ; 4 uses
  %i.lwy = load ptr, ptr %i.mf, align 8, !tbaa !642
  %i.lwz = load ptr, ptr %i.mg, align 8, !tbaa !642
  %i.lxa = trunc nuw i8 %i.lwv to i1
  call void @_ZN6hermes6ESTree21TSMethodSignatureNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_b(ptr noundef nonnull align 8 dereferenceable(81) %i.lwx, ptr noundef %i.lwy, ptr noundef nonnull align 8 dereferenceable(16) %495, ptr noundef %i.lwz, i1 noundef zeroext %i.lxa)
  %i.lxb = getelementptr inbounds nuw i8, ptr %i.lwx, i64 24
  store ptr %.sroa.05391.0, ptr %i.lxb, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2953 = getelementptr inbounds nuw i8, ptr %i.lwx, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2953, align 8, !tbaa !635
  %i.lxc = ptrtoint ptr %i.lwx to i64
  br label %bb.ald

bb.ald:                                           ; preds = %bb.alc, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2952, %bb.ala, %bb.aky
  %.sroa.05404.210 = phi i64 [ %i.lxc, %bb.alc ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2952 ], [ undef, %bb.ala ], [ undef, %bb.aky ]
  %.sroa.261.210 = phi i8 [ 1, %bb.alc ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2952 ], [ 0, %bb.ala ], [ 0, %bb.aky ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mg) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %495) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mf) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2380:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2275
  %i.lxd = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.lxe = icmp ne i128 %i.lxd, 134846331678693468552538365322200699732
  %i.lxf = zext i1 %i.lxe to i32
  %i.lxg = icmp eq i32 %i.lxf, 0
  br i1 %i.lxg, label %_ZNK4llvh9StringRef6equalsES0_.exit2380.thread6790, label %_ZNK4llvh9StringRef6equalsES0_.exit2395

_ZNK4llvh9StringRef6equalsES0_.exit2380.thread6790: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2380
  call void @llvm.lifetime.start.p0(ptr nonnull %499) #11
  store ptr %499, ptr %499, align 8, !tbaa !639
  %i.lxh = getelementptr inbounds nuw i8, ptr %499, i64 8 ; 2 uses
  store ptr %499, ptr %i.lxh, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mh) #11
  store ptr null, ptr %i.mh, align 8, !tbaa !642
  %i.lxi = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.924, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %499)
  br i1 %i.lxi, label %bb.alf, label %bb.ale

bb.ale:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2380.thread6790
  %i.lxj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lxk = load ptr, ptr %i.lxj, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %500) #11
  %i.lxl = getelementptr inbounds nuw i8, ptr %500, i64 16
  %i.lxm = getelementptr inbounds nuw i8, ptr %500, i64 17
  store i8 1, ptr %i.lxm, align 1, !tbaa !611
  store ptr @.str.925, ptr %500, align 8, !tbaa !612
  store i8 3, ptr %i.lxl, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lxk, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %500, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %500) #11
  br label %bb.alh

bb.alf:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2380.thread6790
  %i.lxn = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.242, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.mh) ; 0 uses
  %i.lxo = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.lxp = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.lxo, i64 noundef 8) ; 10 uses
  %i.lxq = load ptr, ptr %i.mh, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.lxp, i8 0, i64 16, i1 false)
  %i.lxr = getelementptr inbounds nuw i8, ptr %i.lxp, i64 16
  store i32 267, ptr %i.lxr, align 8, !tbaa !627
  %i.lxs = getelementptr inbounds nuw i8, ptr %i.lxp, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.lxs, i8 0, i64 28, i1 false)
  %i.lxt = getelementptr inbounds nuw i8, ptr %i.lxp, i64 48 ; 7 uses
  store ptr %i.lxt, ptr %i.lxt, align 8, !tbaa !639
  %i.lxu = getelementptr inbounds nuw i8, ptr %i.lxp, i64 56
  store ptr %i.lxt, ptr %i.lxu, align 8, !tbaa !640
  %i.lxv = load ptr, ptr %i.lxh, align 8, !tbaa !640 ; 4 uses
  %i.lxw = icmp eq ptr %i.lxt, %499
  %i.lxx = icmp eq ptr %i.lxv, %499
  %or.cond.i.i.i.i.i.i2954 = or i1 %i.lxw, %i.lxx
  br i1 %or.cond.i.i.i.i.i.i2954, label %_ZN6hermes6ESTree20TSIndexSignatureNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, label %bb.alg

bb.alg:                                           ; preds = %bb.alf
  %i.lxy = load ptr, ptr %499, align 8, !tbaa !639 ; 2 uses
  %i.lxz = load ptr, ptr %i.lxv, align 8, !tbaa !639
  %i.lya = getelementptr inbounds nuw i8, ptr %i.lxz, i64 8
  store ptr %499, ptr %i.lya, align 8, !tbaa !640
  %i.lyb = getelementptr inbounds nuw i8, ptr %i.lxy, i64 8
  store ptr %i.lxt, ptr %i.lyb, align 8, !tbaa !640
  store ptr %i.lxt, ptr %i.lxv, align 8, !tbaa !639
  %i.lyc = getelementptr inbounds nuw i8, ptr %i.lxp, i64 56
  store ptr %i.lxv, ptr %i.lyc, align 8, !tbaa !640
  store ptr %i.lxy, ptr %i.lxt, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree20TSIndexSignatureNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit

_ZN6hermes6ESTree20TSIndexSignatureNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit: ; preds = %bb.alf, %bb.alg
  %i.lyd = getelementptr inbounds nuw i8, ptr %i.lxp, i64 64
  store ptr %i.lxq, ptr %i.lyd, align 8, !tbaa !1118
  %i.lye = getelementptr inbounds nuw i8, ptr %i.lxp, i64 24
  store ptr %.sroa.05391.0, ptr %i.lye, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2955 = getelementptr inbounds nuw i8, ptr %i.lxp, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2955, align 8, !tbaa !635
  %i.lyf = ptrtoint ptr %i.lxp to i64
  br label %bb.alh

bb.alh:                                           ; preds = %_ZN6hermes6ESTree20TSIndexSignatureNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, %bb.ale
  %.sroa.05404.211 = phi i64 [ %i.lyf, %_ZN6hermes6ESTree20TSIndexSignatureNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ undef, %bb.ale ]
  %.sroa.261.211 = phi i8 [ 1, %_ZN6hermes6ESTree20TSIndexSignatureNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ 0, %bb.ale ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mh) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %499) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2383:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2350
  %i.lyg = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.lyh = xor i128 %i.lyg, 90914247196494175718992219924475368276
  %i.lyi = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 10
  %i.lyj = load i128, ptr %i.lyi, align 1
  %i.lyk = xor i128 %i.lyj, 146793563361271670531309280729207501921
  %i.lyl = or i128 %i.lyh, %i.lyk
  %i.lym = icmp ne i128 %i.lyl, 0
  %i.lyn = zext i1 %i.lym to i32
  %i.lyo = icmp eq i32 %i.lyn, 0
  br i1 %i.lyo, label %_ZNK4llvh9StringRef6equalsES0_.exit2383.thread6792, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2383.thread6792: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2383
  call void @llvm.lifetime.start.p0(ptr nonnull %501) #11
  store ptr %501, ptr %501, align 8, !tbaa !639
  %i.lyp = getelementptr inbounds nuw i8, ptr %501, i64 8 ; 2 uses
  store ptr %501, ptr %i.lyp, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mi) #11
  store ptr null, ptr %i.mi, align 8, !tbaa !642
  %i.lyq = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder15extractNodeListEPKNS_6parser10JSONObjectEN4llvh9StringRefERNS7_12simple_ilistINS0_4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.19, i64 6, ptr noundef nonnull align 8 dereferenceable(16) %501)
  br i1 %i.lyq, label %bb.alj, label %bb.ali

bb.ali:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2383.thread6792
  %i.lyr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lys = load ptr, ptr %i.lyr, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %502) #11
  %i.lyt = getelementptr inbounds nuw i8, ptr %502, i64 16
  %i.lyu = getelementptr inbounds nuw i8, ptr %502, i64 17
  store i8 1, ptr %i.lyu, align 1, !tbaa !611
  store ptr @.str.928, ptr %502, align 8, !tbaa !612
  store i8 3, ptr %i.lyt, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.lys, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %502, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %502) #11
  br label %bb.all

bb.alj:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2383.thread6792
  %i.lyv = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.24, i64 10, ptr noundef nonnull align 8 dereferenceable(8) %i.mi) ; 0 uses
  %i.lyw = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.lyx = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.lyw, i64 noundef 8) ; 10 uses
  %i.lyy = load ptr, ptr %i.mi, align 8, !tbaa !642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.lyx, i8 0, i64 16, i1 false)
  %i.lyz = getelementptr inbounds nuw i8, ptr %i.lyx, i64 16
  store i32 268, ptr %i.lyz, align 8, !tbaa !627
  %i.lza = getelementptr inbounds nuw i8, ptr %i.lyx, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.lza, i8 0, i64 28, i1 false)
  %i.lzb = getelementptr inbounds nuw i8, ptr %i.lyx, i64 48 ; 7 uses
  store ptr %i.lzb, ptr %i.lzb, align 8, !tbaa !639
  %i.lzc = getelementptr inbounds nuw i8, ptr %i.lyx, i64 56
  store ptr %i.lzb, ptr %i.lzc, align 8, !tbaa !640
  %i.lzd = load ptr, ptr %i.lyp, align 8, !tbaa !640 ; 4 uses
  %i.lze = icmp eq ptr %i.lzb, %501
  %i.lzf = icmp eq ptr %i.lzd, %501
  %or.cond.i.i.i.i.i.i2956 = or i1 %i.lze, %i.lzf
  br i1 %or.cond.i.i.i.i.i.i2956, label %_ZN6hermes6ESTree30TSCallSignatureDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, label %bb.alk

bb.alk:                                           ; preds = %bb.alj
  %i.lzg = load ptr, ptr %501, align 8, !tbaa !639 ; 2 uses
  %i.lzh = load ptr, ptr %i.lzd, align 8, !tbaa !639
  %i.lzi = getelementptr inbounds nuw i8, ptr %i.lzh, i64 8
  store ptr %501, ptr %i.lzi, align 8, !tbaa !640
  %i.lzj = getelementptr inbounds nuw i8, ptr %i.lzg, i64 8
  store ptr %i.lzb, ptr %i.lzj, align 8, !tbaa !640
  store ptr %i.lzb, ptr %i.lzd, align 8, !tbaa !639
  %i.lzk = getelementptr inbounds nuw i8, ptr %i.lyx, i64 56
  store ptr %i.lzd, ptr %i.lzk, align 8, !tbaa !640
  store ptr %i.lzg, ptr %i.lzb, align 8, !tbaa !639
  br label %_ZN6hermes6ESTree30TSCallSignatureDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit

_ZN6hermes6ESTree30TSCallSignatureDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit: ; preds = %bb.alj, %bb.alk
  %i.lzl = getelementptr inbounds nuw i8, ptr %i.lyx, i64 64
  store ptr %i.lyy, ptr %i.lzl, align 8, !tbaa !1120
  %i.lzm = getelementptr inbounds nuw i8, ptr %i.lyx, i64 24
  store ptr %.sroa.05391.0, ptr %i.lzm, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2957 = getelementptr inbounds nuw i8, ptr %i.lyx, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2957, align 8, !tbaa !635
  %i.lzn = ptrtoint ptr %i.lyx to i64
  br label %bb.all

bb.all:                                           ; preds = %_ZN6hermes6ESTree30TSCallSignatureDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, %bb.ali
  %.sroa.05404.212 = phi i64 [ %i.lzn, %_ZN6hermes6ESTree30TSCallSignatureDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ undef, %bb.ali ]
  %.sroa.261.212 = phi i8 [ 1, %_ZN6hermes6ESTree30TSCallSignatureDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ 0, %bb.ali ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mi) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %501) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2386:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2365
  %i.lzo = load i64, ptr %.sroa.01032.0.copyload72407243734873517669, align 1
  %i.lzp = xor i64 %i.lzo, 7594873701691904852
  %i.lzq = getelementptr i8, ptr %.sroa.01032.0.copyload72407243734873517669, i64 3
  %i.lzr = load i64, ptr %i.lzq, align 1
  %i.lzs = xor i64 %i.lzr, 8318822965070881903
  %i.lzt = or i64 %i.lzp, %i.lzs
  %i.lzu = icmp ne i64 %i.lzt, 0
  %i.lzv = zext i1 %i.lzu to i32
  %i.lzw = icmp eq i32 %i.lzv, 0
  br i1 %i.lzw, label %_ZNK4llvh9StringRef6equalsES0_.exit2386.thread6794, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2386.thread6794: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2386
  %i.lzx = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.lzy = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.lzx, ptr nonnull @.str.850, i64 13)
  %i.lzz = extractvalue { i64, i8 } %i.lzy, 0
  %i.maa = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.lzz
  %i.mab = load ptr, ptr %i.maa, align 8, !tbaa !629 ; 2 uses
  %i.mac = load i32, ptr %i.mab, align 4, !tbaa !595
  %i.mad = icmp eq i32 %i.mac, 2
  br i1 %i.mad, label %bb.alm, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2959

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2959: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2386.thread6794
  %i.mae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.maf = load ptr, ptr %i.mae, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %503) #11
  %i.mag = getelementptr inbounds nuw i8, ptr %503, i64 16
  %i.mah = getelementptr inbounds nuw i8, ptr %503, i64 17
  store i8 1, ptr %i.mah, align 1, !tbaa !611
  store ptr @.str.931, ptr %503, align 8, !tbaa !612
  store i8 3, ptr %i.mag, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.maf, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %503, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %503) #11
  br label %bb.aly

bb.alm:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2386.thread6794
  %i.mai = getelementptr inbounds nuw i8, ptr %i.mab, i64 16
  %i.maj = load ptr, ptr %i.mai, align 8, !tbaa !634
  %i.mak = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.mal = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.mak, ptr nonnull @.str.852, i64 8)
  %i.mam = extractvalue { i64, i8 } %i.mal, 0
  %i.man = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.mam
  %i.mao = load ptr, ptr %i.man, align 8, !tbaa !629 ; 2 uses
  %i.map = load i32, ptr %i.mao, align 4, !tbaa !595
  %i.maq = icmp eq i32 %i.map, 4
  br i1 %i.maq, label %bb.aln, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2961

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2961: ; preds = %bb.alm
  %i.mar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mas = load ptr, ptr %i.mar, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %504) #11
  %i.mat = getelementptr inbounds nuw i8, ptr %504, i64 16
  %i.mau = getelementptr inbounds nuw i8, ptr %504, i64 17
  store i8 1, ptr %i.mau, align 1, !tbaa !611
  store ptr @.str.932, ptr %504, align 8, !tbaa !612
  store i8 3, ptr %i.mat, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.mas, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %504, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %504) #11
  br label %bb.aly

bb.aln:                                           ; preds = %bb.alm
  %i.mav = getelementptr inbounds nuw i8, ptr %i.mao, i64 4
  %i.maw = load i8, ptr %i.mav, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.max = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.may = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.max, i64 noundef 8) ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.may, i8 0, i64 16, i1 false)
  %i.maz = getelementptr inbounds nuw i8, ptr %i.may, i64 16
  store i32 269, ptr %i.maz, align 8, !tbaa !627
  %i.mba = getelementptr inbounds nuw i8, ptr %i.may, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.mba, i8 0, i64 28, i1 false)
  %i.mbb = getelementptr inbounds nuw i8, ptr %i.may, i64 48
  store ptr %i.maj, ptr %i.mbb, align 8, !tbaa !1372
  %i.mbc = getelementptr inbounds nuw i8, ptr %i.may, i64 56
  store i8 %i.maw, ptr %i.mbc, align 8, !tbaa !1373
  %i.mbd = getelementptr inbounds nuw i8, ptr %i.may, i64 24
  store ptr %.sroa.05391.0, ptr %i.mbd, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2962 = getelementptr inbounds nuw i8, ptr %i.may, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2962, align 8, !tbaa !635
  %i.mbe = ptrtoint ptr %i.may to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2389:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2347
  %i.mbf = load i64, ptr %.sroa.01036.0.copyload, align 1
  %i.mbg = xor i64 %i.mbf, 8101207662340239171
  %i.mbh = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 6
  %i.mbi = load i64, ptr %i.mbh, align 1
  %i.mbj = xor i64 %i.mbi, 8315740862499025005
  %i.mbk = or i64 %i.mbg, %i.mbj
  %i.mbl = icmp ne i64 %i.mbk, 0
  %i.mbm = zext i1 %i.mbl to i32
  %i.mbn = icmp eq i32 %i.mbm, 0
  br i1 %i.mbn, label %_ZNK4llvh9StringRef6equalsES0_.exit2389.thread6800, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2389.thread6800: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2389
  %i.mbo = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.mbp = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.mbo, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mbp, i8 0, i64 16, i1 false)
  %i.mbq = getelementptr inbounds nuw i8, ptr %i.mbp, i64 16
  store i32 272, ptr %i.mbq, align 8, !tbaa !627
  %i.mbr = getelementptr inbounds nuw i8, ptr %i.mbp, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.mbr, i8 0, i64 28, i1 false)
  %i.mbs = getelementptr inbounds nuw i8, ptr %i.mbp, i64 24
  store ptr %.sroa.05391.0, ptr %i.mbs, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2963 = getelementptr inbounds nuw i8, ptr %i.mbp, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2963, align 8, !tbaa !635
  %i.mbt = ptrtoint ptr %i.mbp to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2392:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2362
  %i.mbu = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.mbv = xor i128 %i.mbu, 145463563607968179895344570167549390659
  %i.mbw = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.mbx = load i16, ptr %i.mbw, align 1
  %i.mby = zext i16 %i.mbx to i128
  %i.mbz = xor i128 %i.mby, 24941
  %i.mca = or i128 %i.mbv, %i.mbz
  %i.mcb = icmp ne i128 %i.mca, 0
  %i.mcc = zext i1 %i.mcb to i32
  %i.mcd = icmp eq i32 %i.mcc, 0
  br i1 %i.mcd, label %_ZNK4llvh9StringRef6equalsES0_.exit2392.thread6802, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2392.thread6802: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2392
  %i.mce = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.mcf = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.mce, i64 noundef 8) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mcf, i8 0, i64 16, i1 false)
  %i.mcg = getelementptr inbounds nuw i8, ptr %i.mcf, i64 16
  store i32 273, ptr %i.mcg, align 8, !tbaa !627
  %i.mch = getelementptr inbounds nuw i8, ptr %i.mcf, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.mch, i8 0, i64 28, i1 false)
  %i.mci = getelementptr inbounds nuw i8, ptr %i.mcf, i64 24
  store ptr %.sroa.05391.0, ptr %i.mci, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2964 = getelementptr inbounds nuw i8, ptr %i.mcf, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2964, align 8, !tbaa !635
  %i.mcj = ptrtoint ptr %i.mcf to i64
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2395:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2380
  %i.mck = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.mcl = icmp ne i128 %i.mck, 152058896308663281464170744580358434627
  %i.mcm = zext i1 %i.mcl to i32
  %i.mcn = icmp eq i32 %i.mcm, 0
  br i1 %i.mcn, label %_ZNK4llvh9StringRef6equalsES0_.exit2395.thread6804, label %_ZNK4llvh9StringRef6equalsES0_.exit2398

_ZNK4llvh9StringRef6equalsES0_.exit2395.thread6804: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mj) #11
  store ptr null, ptr %i.mj, align 8, !tbaa !642
  %i.mco = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.91, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.mj)
  br i1 %i.mco, label %bb.alp, label %bb.alo

bb.alo:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2395.thread6804
  %i.mcp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mcq = load ptr, ptr %i.mcp, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %505) #11
  %i.mcr = getelementptr inbounds nuw i8, ptr %505, i64 16
  %i.mcs = getelementptr inbounds nuw i8, ptr %505, i64 17
  store i8 1, ptr %i.mcs, align 1, !tbaa !611
  store ptr @.str.936, ptr %505, align 8, !tbaa !612
  store i8 3, ptr %i.mcr, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.mcq, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %505, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %505) #11
  br label %bb.alq

bb.alp:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2395.thread6804
  %i.mct = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.mcu = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.mct, i64 noundef 8) ; 7 uses
  %i.mcv = load ptr, ptr %i.mj, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.mcu, i8 0, i64 16, i1 false)
  %i.mcw = getelementptr inbounds nuw i8, ptr %i.mcu, i64 16
  store i32 274, ptr %i.mcw, align 8, !tbaa !627
  %i.mcx = getelementptr inbounds nuw i8, ptr %i.mcu, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.mcx, i8 0, i64 28, i1 false)
  %i.mcy = getelementptr inbounds nuw i8, ptr %i.mcu, i64 48
  store ptr %i.mcv, ptr %i.mcy, align 8, !tbaa !1123
  %i.mcz = getelementptr inbounds nuw i8, ptr %i.mcu, i64 24
  store ptr %.sroa.05391.0, ptr %i.mcz, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2965 = getelementptr inbounds nuw i8, ptr %i.mcu, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2965, align 8, !tbaa !635
  %i.mda = ptrtoint ptr %i.mcu to i64
  br label %bb.alq

bb.alq:                                           ; preds = %bb.alp, %bb.alo
  %.sroa.05404.214 = phi i64 [ %i.mda, %bb.alp ], [ undef, %bb.alo ]
  %.sroa.261.214 = phi i8 [ 1, %bb.alp ], [ 0, %bb.alo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mj) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2398:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2395
  %i.mdb = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.mdc = icmp ne i128 %i.mdb, 154763657356117633141404595343595040579
  %i.mdd = zext i1 %i.mdc to i32
  %i.mde = icmp eq i32 %i.mdd, 0
  br i1 %i.mde, label %_ZNK4llvh9StringRef6equalsES0_.exit2398.thread6806, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2398.thread6806: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mk) #11
  store ptr null, ptr %i.mk, align 8, !tbaa !642
  %i.mdf = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.417, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.mk)
  br i1 %i.mdf, label %bb.als, label %bb.alr

bb.alr:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2398.thread6806
  %i.mdg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mdh = load ptr, ptr %i.mdg, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %506) #11
  %i.mdi = getelementptr inbounds nuw i8, ptr %506, i64 16
  %i.mdj = getelementptr inbounds nuw i8, ptr %506, i64 17
  store i8 1, ptr %i.mdj, align 1, !tbaa !611
  store ptr @.str.938, ptr %506, align 8, !tbaa !612
  store i8 3, ptr %i.mdi, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.mdh, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %506, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %506) #11
  br label %bb.alt

bb.als:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2398.thread6806
  %i.mdk = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.mdl = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.mdk, i64 noundef 8) ; 7 uses
  %i.mdm = load ptr, ptr %i.mk, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.mdl, i8 0, i64 16, i1 false)
  %i.mdn = getelementptr inbounds nuw i8, ptr %i.mdl, i64 16
  store i32 275, ptr %i.mdn, align 8, !tbaa !627
  %i.mdo = getelementptr inbounds nuw i8, ptr %i.mdl, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.mdo, i8 0, i64 28, i1 false)
  %i.mdp = getelementptr inbounds nuw i8, ptr %i.mdl, i64 48
  store ptr %i.mdm, ptr %i.mdp, align 8, !tbaa !1125
  %i.mdq = getelementptr inbounds nuw i8, ptr %i.mdl, i64 24
  store ptr %.sroa.05391.0, ptr %i.mdq, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2966 = getelementptr inbounds nuw i8, ptr %i.mdl, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2966, align 8, !tbaa !635
  %i.mdr = ptrtoint ptr %i.mdl to i64
  br label %bb.alt

bb.alt:                                           ; preds = %bb.als, %bb.alr
  %.sroa.05404.215 = phi i64 [ %i.mdr, %bb.als ], [ undef, %bb.alr ]
  %.sroa.261.215 = phi i8 [ 1, %bb.als ], [ 0, %bb.alr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mk) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2401:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2167
  %i.mds = load i128, ptr %.sroa.01036.0.copyload, align 1
  %i.mdt = xor i128 %i.mds, 140173485091144248959094425115359080259
  %i.mdu = getelementptr i8, ptr %.sroa.01036.0.copyload, i64 16
  %i.mdv = load i32, ptr %i.mdu, align 1
  %i.mdw = zext i32 %i.mdv to i128
  %i.mdx = xor i128 %i.mdw, 1919248742
  %i.mdy = or i128 %i.mdt, %i.mdx
  %i.mdz = icmp ne i128 %i.mdy, 0
  %i.mea = zext i1 %i.mdz to i32
  %i.meb = icmp eq i32 %i.mea, 0
  br i1 %i.meb, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread6808, label %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread

_ZNK4llvh9StringRef6equalsES0_.exit2401.thread6808: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ml) #11
  store ptr null, ptr %i.ml, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mm) #11
  store ptr null, ptr %i.mm, align 8, !tbaa !642
  %i.mec = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.79, i64 4, ptr noundef nonnull align 8 dereferenceable(8) %i.ml)
  br i1 %i.mec, label %bb.alv, label %bb.alu

bb.alu:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread6808
  %i.med = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mee = load ptr, ptr %i.med, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %507) #11
  %i.mef = getelementptr inbounds nuw i8, ptr %507, i64 16
  %i.meg = getelementptr inbounds nuw i8, ptr %507, i64 17
  store i8 1, ptr %i.meg, align 1, !tbaa !611
  store ptr @.str.940, ptr %507, align 8, !tbaa !612
  store i8 3, ptr %i.mef, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.mee, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %507, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %507) #11
  br label %bb.alx

bb.alv:                                           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread6808
  %i.meh = call fastcc noundef zeroext i1 @_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder14extractNodePtrEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull @.str.81, i64 5, ptr noundef nonnull align 8 dereferenceable(8) %i.mm) ; 0 uses
  %i.mei = load ptr, ptr %i.nn, align 8, !tbaa !616
  %i.mej = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.mei, ptr nonnull @.str.196, i64 8)
  %i.mek = extractvalue { i64, i8 } %i.mej, 0
  %i.mel = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.mek
  %i.mem = load ptr, ptr %i.mel, align 8, !tbaa !629 ; 2 uses
  %i.men = load i32, ptr %i.mem, align 4, !tbaa !595
  %i.meo = icmp eq i32 %i.men, 4
  br i1 %i.meo, label %bb.alw, label %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2968

_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2968: ; preds = %bb.alv
  %i.mep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.meq = load ptr, ptr %i.mep, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %508) #11
  %i.mer = getelementptr inbounds nuw i8, ptr %508, i64 16
  %i.mes = getelementptr inbounds nuw i8, ptr %508, i64 17
  store i8 1, ptr %i.mes, align 1, !tbaa !611
  store ptr @.str.942, ptr %508, align 8, !tbaa !612
  store i8 3, ptr %i.mer, align 8, !tbaa !613
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.meq, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %508, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %508) #11
  br label %bb.alx

bb.alw:                                           ; preds = %bb.alv
  %i.met = getelementptr inbounds nuw i8, ptr %i.mem, i64 4
  %i.meu = load i8, ptr %i.met, align 4, !tbaa !1270, !range !638, !noundef !588
  %i.mev = load ptr, ptr %0, align 8, !tbaa !1255, !nonnull !588, !align !589
  %i.mew = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.mev, i64 noundef 8) ; 9 uses
  %i.mex = load ptr, ptr %i.ml, align 8, !tbaa !642
  %i.mey = load ptr, ptr %i.mm, align 8, !tbaa !642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.mew, i8 0, i64 16, i1 false)
  %i.mez = getelementptr inbounds nuw i8, ptr %i.mew, i64 16
  store i32 276, ptr %i.mez, align 8, !tbaa !627
  %i.mfa = getelementptr inbounds nuw i8, ptr %i.mew, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.mfa, i8 0, i64 28, i1 false)
  %i.mfb = getelementptr inbounds nuw i8, ptr %i.mew, i64 48
  store ptr %i.mex, ptr %i.mfb, align 8, !tbaa !1127
  %i.mfc = getelementptr inbounds nuw i8, ptr %i.mew, i64 56
  store ptr %i.mey, ptr %i.mfc, align 8, !tbaa !1128
  %i.mfd = getelementptr inbounds nuw i8, ptr %i.mew, i64 64
  store i8 %i.meu, ptr %i.mfd, align 8, !tbaa !1374
  %i.mfe = getelementptr inbounds nuw i8, ptr %i.mew, i64 24
  store ptr %.sroa.05391.0, ptr %i.mfe, align 8, !tbaa !635
  %.sroa.2.0..sroa_idx.i2969 = getelementptr inbounds nuw i8, ptr %i.mew, i64 32
  store ptr %.sroa.262.0, ptr %.sroa.2.0..sroa_idx.i2969, align 8, !tbaa !635
  %i.mff = ptrtoint ptr %i.mew to i64
  br label %bb.alx

bb.alx:                                           ; preds = %bb.alw, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2968, %bb.alu
  %.sroa.05404.216 = phi i64 [ %i.mff, %bb.alw ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2968 ], [ undef, %bb.alu ]
  %.sroa.261.216 = phi i8 [ 1, %bb.alw ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2968 ], [ 0, %bb.alu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mm) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ml) #11
  br label %bb.aly

_ZNK4llvh9StringRef6equalsES0_.exit2401.thread:   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit1741, %_ZNK4llvh9StringRef6equalsES0_.exit2392, %_ZNK4llvh9StringRef6equalsES0_.exit2389, %_ZNK4llvh9StringRef6equalsES0_.exit2386, %_ZNK4llvh9StringRef6equalsES0_.exit2383, %_ZNK4llvh9StringRef6equalsES0_.exit2377, %_ZNK4llvh9StringRef6equalsES0_.exit2374, %_ZNK4llvh9StringRef6equalsES0_.exit2371, %_ZNK4llvh9StringRef6equalsES0_.exit2356, %_ZNK4llvh9StringRef6equalsES0_.exit2353, %_ZNK4llvh9StringRef6equalsES0_.exit2338, %_ZNK4llvh9StringRef6equalsES0_.exit2326, %_ZNK4llvh9StringRef6equalsES0_.exit2284, %_ZNK4llvh9StringRef6equalsES0_.exit2191, %_ZNK4llvh9StringRef6equalsES0_.exit2188, %_ZNK4llvh9StringRef6equalsES0_.exit2146, %_ZNK4llvh9StringRef6equalsES0_.exit2107, %_ZNK4llvh9StringRef6equalsES0_.exit2104, %_ZNK4llvh9StringRef6equalsES0_.exit2098, %_ZNK4llvh9StringRef6equalsES0_.exit2089, %_ZNK4llvh9StringRef6equalsES0_.exit1975, %_ZNK4llvh9StringRef6equalsES0_.exit2398, %_ZNK4llvh9StringRef6equalsES0_.exit1831.thread, %_ZNK4llvh9StringRef6equalsES0_.exit2401
  %i.mfg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mfh = load ptr, ptr %i.mfg, align 8, !tbaa !1256, !nonnull !588, !align !589
  call void @llvm.lifetime.start.p0(ptr nonnull %509) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %510) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %511) #11
  %i.mfi = getelementptr inbounds nuw i8, ptr %511, i64 16
  %i.mfj = getelementptr inbounds nuw i8, ptr %511, i64 17
  store i8 1, ptr %i.mfj, align 1, !tbaa !611
  store ptr @.str.943, ptr %511, align 8, !tbaa !612
  store i8 3, ptr %i.mfi, align 8, !tbaa !613
  call void @llvm.lifetime.start.p0(ptr nonnull %512) #11
  %i.mfk = getelementptr inbounds nuw i8, ptr %512, i64 16
  store i8 5, ptr %i.mfk, align 8, !tbaa !613
  %i.mfl = getelementptr inbounds nuw i8, ptr %512, i64 17
  store i8 1, ptr %i.mfl, align 1, !tbaa !611
  store ptr %11, ptr %512, align 8, !tbaa !612
  call void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Twine") align 8 %510, ptr noundef nonnull align 8 dereferenceable(18) %511, ptr noundef nonnull align 8 dereferenceable(18) %512)
  call void @llvm.lifetime.start.p0(ptr nonnull %513) #11
  %i.mfm = getelementptr inbounds nuw i8, ptr %513, i64 16
  %i.mfn = getelementptr inbounds nuw i8, ptr %513, i64 17
  store i8 1, ptr %i.mfn, align 1, !tbaa !611
  store ptr @.str.944, ptr %513, align 8, !tbaa !612
  store i8 3, ptr %i.mfm, align 8, !tbaa !613
  call void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Twine") align 8 %509, ptr noundef nonnull align 8 dereferenceable(18) %510, ptr noundef nonnull align 8 dereferenceable(18) %513)
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.mfh, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %509, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %513) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %512) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %511) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %510) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %509) #11
  br label %bb.aly

bb.aly:                                           ; preds = %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit.i, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit14.i, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit16.thread.i, %bb.ad, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2959, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2961, %bb.aln, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2829, %bb.acd, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2714, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2716, %bb.sm, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2710, %bb.sk, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeNumberEPKNS_6parser10JSONObjectEN4llvh9StringRefERd.exit2705, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2707, %bb.sj, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2700, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2702, %bb.sh, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2685, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2687, %bb.rr, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2680, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2682, %bb.rp, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2666, %bb.qi, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2573, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2577, %bb.jy, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2553, %bb.il, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2499, %bb.ex, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2496, %bb.ew, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeNumberEPKNS_6parser10JSONObjectEN4llvh9StringRefERd.exit, %bb.eu, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2490, %bb.et, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2487, %bb.es, %bb.ak, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit.i, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i2429, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit6.i, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit.i2433, %bb.ae, %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread, %bb.alx, %bb.alt, %bb.alq, %_ZNK4llvh9StringRef6equalsES0_.exit2392.thread6802, %_ZNK4llvh9StringRef6equalsES0_.exit2389.thread6800, %bb.all, %bb.alh, %bb.ald, %bb.akx, %bb.akp, %bb.akl, %bb.akc, %bb.ajz, %bb.ajv, %bb.ajr, %bb.ajn, %bb.ajk, %bb.ajg, %bb.ajd, %bb.aiz, %bb.aiu, %bb.air, %bb.ail, %bb.aih, %bb.aie, %bb.ahw, %bb.ahr, %bb.ahk, %bb.ahf, %bb.aha, %bb.agw, %bb.agr, %bb.agl, %bb.agf, %bb.agc, %bb.afz, %bb.afw, %bb.afr, %_ZNK4llvh9StringRef6equalsES0_.exit2284.thread6708, %_ZNK4llvh9StringRef6equalsES0_.exit2281.thread6706, %_ZNK4llvh9StringRef6equalsES0_.exit2278.thread6704, %_ZNK4llvh9StringRef6equalsES0_.exit2275.thread6702, %_ZNK4llvh9StringRef6equalsES0_.exit2272.thread6700, %_ZNK4llvh9StringRef6equalsES0_.exit2269.thread6698, %_ZNK4llvh9StringRef6equalsES0_.exit2266.thread6696, %_ZNK4llvh9StringRef6equalsES0_.exit2263.thread6694, %_ZNK4llvh9StringRef6equalsES0_.exit2260.thread6692, %_ZNK4llvh9StringRef6equalsES0_.exit2257.thread6690, %_ZNK4llvh9StringRef6equalsES0_.exit2254.thread6688, %bb.afo, %bb.afl, %bb.aff, %bb.afa, %bb.aev, %bb.aeq, %bb.ael, %bb.aei, %bb.aee, %bb.adz, %bb.adu, %bb.adp, %bb.adk, %bb.adf, %_ZNK4llvh9StringRef6equalsES0_.exit2209.thread6638, %bb.adc, %bb.acz, %bb.acu, %bb.acp, %bb.acl, %bb.ach, %bb.acc, %bb.abu, %bb.abo, %bb.abk, %bb.abc, %bb.aaz, %bb.aap, %bb.aae, %bb.aab, %bb.zy, %bb.zv, %bb.zs, %bb.zn, %bb.zi, %bb.zf, %bb.zb, %bb.yw, %bb.ys, %bb.ym, %bb.yj, %bb.yg, %bb.xv, %bb.xn, %bb.xk, %bb.xf, %bb.wx, %bb.ws, %bb.wn, %bb.wj, %bb.wf, %bb.vw, %bb.vq, %bb.vl, %bb.vi, %bb.ve, %bb.va, %bb.ux, %bb.uu, %bb.uo, %bb.ul, %bb.uh, %bb.uc, %bb.ty, %bb.tv, %bb.ts, %bb.tn, %bb.tk, %bb.tg, %bb.tc, %bb.sy, %bb.ss, %_ZNK4llvh9StringRef6equalsES0_.exit2032.thread6472, %_ZNK4llvh9StringRef6equalsES0_.exit2029.thread6470, %_ZNK4llvh9StringRef6equalsES0_.exit2026.thread6468, %_ZNK4llvh9StringRef6equalsES0_.exit2023.thread6466, %_ZNK4llvh9StringRef6equalsES0_.exit2020.thread6464, %_ZNK4llvh9StringRef6equalsES0_.exit2017.thread6462, %_ZNK4llvh9StringRef6equalsES0_.exit2011.thread6454, %_ZNK4llvh9StringRef6equalsES0_.exit1999.thread6436, %_ZNK4llvh9StringRef6equalsES0_.exit1996.thread6434, %_ZNK4llvh9StringRef6equalsES0_.exit1993.thread6432, %_ZNK4llvh9StringRef6equalsES0_.exit1990.thread6430, %_ZNK4llvh9StringRef6equalsES0_.exit1987.thread6428, %_ZNK4llvh9StringRef6equalsES0_.exit1984.thread6426, %bb.sf, %bb.rx, %bb.rn, %bb.rk, %bb.rh, %bb.re, %bb.qy, %bb.qv, %_ZNK4llvh9StringRef6equalsES0_.exit1951.thread6394, %bb.qs, %bb.qn, %_ZNK4llvh9StringRef6equalsES0_.exit1939.thread6384, %bb.qh, %bb.qb, %bb.pw, %bb.pr, %bb.pn, %bb.pj, %bb.pf, %bb.pb, %bb.oy, %bb.ou, %_ZNK4llvh9StringRef6equalsES0_.exit1906.thread6356, %bb.or, %bb.om, %bb.og, %bb.ob, %bb.nw, %bb.nt, %bb.np, %bb.nl, %bb.nh, %bb.ne, %bb.nb, %bb.mw, %bb.mr, %bb.mm, %bb.mj, %bb.mg, %bb.ma, %bb.lu, %bb.lm, %bb.lg, %bb.kz, %bb.kv, %bb.ko, %bb.kh, %bb.jv, %bb.jq, %bb.jl, %bb.jg, %bb.jd, %bb.ja, %bb.iw, %bb.ir, %bb.io, %bb.ik, %bb.ih, %bb.ib, %bb.hu, %bb.ho, %bb.hh, %bb.hb, %bb.gw, %bb.gr, %bb.gl, %bb.gf, %bb.fz, %bb.fw, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2514, %bb.fs, %bb.fm, %bb.fj, %bb.ff, %bb.fb, %_ZNK4llvh9StringRef6equalsES0_.exit1741.thread6174, %_ZNK4llvh9StringRef6equalsES0_.exit1738.thread6172, %_ZNK4llvh9StringRef6equalsES0_.exit1720.thread6148, %bb.er, %bb.em, %bb.ej, %bb.ef, %bb.ea, %bb.dv, %_ZNK4llvh9StringRef6equalsES0_.exit1699.thread6134, %bb.dq, %_ZNK4llvh9StringRef6equalsES0_.exit1693.thread6130, %_ZNK4llvh9StringRef6equalsES0_.exit1690.thread6128, %bb.dn, %bb.dj, %_ZNK4llvh9StringRef6equalsES0_.exit1681.thread6122, %_ZNK4llvh9StringRef6equalsES0_.exit1678.thread6120, %bb.dg, %bb.dd, %bb.cv, %bb.co, %bb.cj, %bb.ce, %bb.by, %bb.bq, %bb.bi, %bb.bb, %bb.au, %bb.an, %_ZNK4llvh9StringRef6equalsES0_.exit1639.thread6076, %_ZNK4llvh9StringRef6equalsES0_.exit1636.thread6074
  %.sroa.05404.217 = phi i64 [ undef, %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2959 ], [ %i.ade, %_ZNK4llvh9StringRef6equalsES0_.exit1636.thread6074 ], [ %i.ado, %_ZNK4llvh9StringRef6equalsES0_.exit1639.thread6076 ], [ %.sroa.05404.2, %bb.an ], [ %.sroa.05404.3, %bb.au ], [ %.sroa.05404.4, %bb.bb ], [ %.sroa.05404.5, %bb.bi ], [ %.sroa.05404.6, %bb.bq ], [ %.sroa.05404.7, %bb.by ], [ %.sroa.05404.8, %bb.ce ], [ %.sroa.05404.9, %bb.cj ], [ %.sroa.05404.10, %bb.co ], [ %.sroa.05404.11, %bb.cv ], [ %.sroa.05404.12, %bb.dd ], [ %.sroa.05404.13, %bb.dg ], [ %i.axz, %_ZNK4llvh9StringRef6equalsES0_.exit1678.thread6120 ], [ %i.ayo, %_ZNK4llvh9StringRef6equalsES0_.exit1681.thread6122 ], [ %.sroa.05404.14, %bb.dj ], [ %.sroa.05404.15, %bb.dn ], [ %i.bbe, %_ZNK4llvh9StringRef6equalsES0_.exit1690.thread6128 ], [ %i.bby, %_ZNK4llvh9StringRef6equalsES0_.exit1693.thread6130 ], [ %.sroa.05404.16, %bb.dq ], [ %i.bdm, %_ZNK4llvh9StringRef6equalsES0_.exit1699.thread6134 ], [ %.sroa.05404.17, %bb.dv ], [ %.sroa.05404.18, %bb.ea ], [ %.sroa.05404.19, %bb.ef ], [ %.sroa.05404.20, %bb.ej ], [ %.sroa.05404.21, %bb.em ], [ %.sroa.05404.22, %bb.er ], [ %i.bkr, %_ZNK4llvh9StringRef6equalsES0_.exit1720.thread6148 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit.i2433 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2487 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2490 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeNumberEPKNS_6parser10JSONObjectEN4llvh9StringRefERd.exit ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit ], [ %i.brj, %_ZNK4llvh9StringRef6equalsES0_.exit1738.thread6172 ], [ %i.brz, %_ZNK4llvh9StringRef6equalsES0_.exit1741.thread6174 ], [ %.sroa.05404.28, %bb.fb ], [ %.sroa.05404.29, %bb.ff ], [ %.sroa.05404.30, %bb.fj ], [ %.sroa.05404.31, %bb.fm ], [ %.sroa.05404.32, %bb.fs ], [ %i.byw, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2514 ], [ %.sroa.05404.33, %bb.fw ], [ %.sroa.05404.34, %bb.fz ], [ %.sroa.05404.35, %bb.gf ], [ %.sroa.05404.36, %bb.gl ], [ %.sroa.05404.37, %bb.gr ], [ %.sroa.05404.38, %bb.gw ], [ %.sroa.05404.39, %bb.hb ], [ %.sroa.05404.40, %bb.hh ], [ %.sroa.05404.41, %bb.ho ], [ %.sroa.05404.42, %bb.hu ], [ %.sroa.05404.43, %bb.ib ], [ %.sroa.05404.44, %bb.ih ], [ %.sroa.05404.45, %bb.ik ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2499 ], [ %.sroa.05404.47, %bb.io ], [ %.sroa.05404.48, %bb.ir ], [ %.sroa.05404.49, %bb.iw ], [ %.sroa.05404.50, %bb.ja ], [ %.sroa.05404.51, %bb.jd ], [ %.sroa.05404.52, %bb.jg ], [ %.sroa.05404.53, %bb.jl ], [ %.sroa.05404.54, %bb.jq ], [ %.sroa.05404.55, %bb.jv ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2553 ], [ %.sroa.05404.57, %bb.kh ], [ %.sroa.05404.58, %bb.ko ], [ %.sroa.05404.59, %bb.kv ], [ %.sroa.05404.60, %bb.kz ], [ %.sroa.05404.61, %bb.lg ], [ %.sroa.05404.62, %bb.lm ], [ %.sroa.05404.63, %bb.lu ], [ %.sroa.05404.64, %bb.ma ], [ %.sroa.05404.65, %bb.mg ], [ %.sroa.05404.66, %bb.mj ], [ %.sroa.05404.67, %bb.mm ], [ %.sroa.05404.68, %bb.mr ], [ %.sroa.05404.69, %bb.mw ], [ %.sroa.05404.70, %bb.nb ], [ %.sroa.05404.71, %bb.ne ], [ %.sroa.05404.72, %bb.nh ], [ %.sroa.05404.73, %bb.nl ], [ %.sroa.05404.74, %bb.np ], [ %.sroa.05404.75, %bb.nt ], [ %.sroa.05404.76, %bb.nw ], [ %.sroa.05404.77, %bb.ob ], [ %.sroa.05404.78, %bb.og ], [ %.sroa.05404.79, %bb.om ], [ %.sroa.05404.80, %bb.or ], [ %i.erj, %_ZNK4llvh9StringRef6equalsES0_.exit1906.thread6356 ], [ %.sroa.05404.81, %bb.ou ], [ %.sroa.05404.82, %bb.oy ], [ %.sroa.05404.83, %bb.pb ], [ %.sroa.05404.84, %bb.pf ], [ %.sroa.05404.85, %bb.pj ], [ %.sroa.05404.86, %bb.pn ], [ %.sroa.05404.87, %bb.pr ], [ %.sroa.05404.88, %bb.pw ], [ %.sroa.05404.89, %bb.qb ], [ %.sroa.05404.90, %bb.qh ], [ %i.feb, %_ZNK4llvh9StringRef6equalsES0_.exit1939.thread6384 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2573 ], [ %.sroa.05404.92, %bb.qn ], [ %.sroa.05404.93, %bb.qs ], [ %i.fib, %_ZNK4llvh9StringRef6equalsES0_.exit1951.thread6394 ], [ %.sroa.05404.94, %bb.qv ], [ %.sroa.05404.95, %bb.qy ], [ %.sroa.05404.96, %bb.re ], [ %.sroa.05404.97, %bb.rh ], [ %.sroa.05404.98, %bb.rk ], [ %.sroa.05404.99, %bb.rn ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2666 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2680 ], [ %.sroa.05404.102, %bb.rx ], [ %.sroa.05404.103, %bb.sf ], [ %i.fvf, %_ZNK4llvh9StringRef6equalsES0_.exit1984.thread6426 ], [ %i.fvv, %_ZNK4llvh9StringRef6equalsES0_.exit1987.thread6428 ], [ %i.fwl, %_ZNK4llvh9StringRef6equalsES0_.exit1990.thread6430 ], [ %i.fxa, %_ZNK4llvh9StringRef6equalsES0_.exit1993.thread6432 ], [ %i.fxq, %_ZNK4llvh9StringRef6equalsES0_.exit1996.thread6434 ], [ %i.fyg, %_ZNK4llvh9StringRef6equalsES0_.exit1999.thread6436 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2685 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2700 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeNumberEPKNS_6parser10JSONObjectEN4llvh9StringRefERd.exit2705 ], [ %i.gdg, %_ZNK4llvh9StringRef6equalsES0_.exit2011.thread6454 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2710 ], [ %i.gfm, %_ZNK4llvh9StringRef6equalsES0_.exit2017.thread6462 ], [ %i.ggc, %_ZNK4llvh9StringRef6equalsES0_.exit2020.thread6464 ], [ %i.ggs, %_ZNK4llvh9StringRef6equalsES0_.exit2023.thread6466 ], [ %i.ghh, %_ZNK4llvh9StringRef6equalsES0_.exit2026.thread6468 ], [ %i.ghx, %_ZNK4llvh9StringRef6equalsES0_.exit2029.thread6470 ], [ %i.gin, %_ZNK4llvh9StringRef6equalsES0_.exit2032.thread6472 ], [ %.sroa.05404.108, %bb.ss ], [ %.sroa.05404.109, %bb.sy ], [ %.sroa.05404.110, %bb.tc ], [ %.sroa.05404.111, %bb.tg ], [ %.sroa.05404.112, %bb.tk ], [ %.sroa.05404.113, %bb.tn ], [ %.sroa.05404.114, %bb.ts ], [ %.sroa.05404.115, %bb.tv ], [ %.sroa.05404.116, %bb.ty ], [ %.sroa.05404.117, %bb.uc ], [ %.sroa.05404.118, %bb.uh ], [ %.sroa.05404.119, %bb.ul ], [ %.sroa.05404.120, %bb.uo ], [ %.sroa.05404.121, %bb.uu ], [ %.sroa.05404.122, %bb.ux ], [ %.sroa.05404.123, %bb.va ], [ %.sroa.05404.124, %bb.ve ], [ %.sroa.05404.125, %bb.vi ], [ %.sroa.05404.126, %bb.vl ], [ %.sroa.05404.127, %bb.vq ], [ %.sroa.05404.128, %bb.vw ], [ %.sroa.05404.129, %bb.wf ], [ %.sroa.05404.130, %bb.wj ], [ %.sroa.05404.131, %bb.wn ], [ %.sroa.05404.132, %bb.ws ], [ %.sroa.05404.133, %bb.wx ], [ %.sroa.05404.134, %bb.xf ], [ %.sroa.05404.135, %bb.xk ], [ %.sroa.05404.136, %bb.xn ], [ %.sroa.05404.137, %bb.xv ], [ %.sroa.05404.138, %bb.yg ], [ %.sroa.05404.139, %bb.yj ], [ %.sroa.05404.140, %bb.ym ], [ %.sroa.05404.141, %bb.ys ], [ %.sroa.05404.142, %bb.yw ], [ %.sroa.05404.143, %bb.zb ], [ %.sroa.05404.144, %bb.zf ], [ %.sroa.05404.145, %bb.zi ], [ %.sroa.05404.146, %bb.zn ], [ %.sroa.05404.147, %bb.zs ], [ %.sroa.05404.148, %bb.zv ], [ %.sroa.05404.149, %bb.zy ], [ %.sroa.05404.150, %bb.aab ], [ %.sroa.05404.151, %bb.aae ], [ %.sroa.05404.152, %bb.aap ], [ %.sroa.05404.153, %bb.aaz ], [ %.sroa.05404.154, %bb.abc ], [ %.sroa.05404.155, %bb.abk ], [ %.sroa.05404.156, %bb.abo ], [ %.sroa.05404.157, %bb.abu ], [ %.sroa.05404.158, %bb.acc ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2714 ], [ %.sroa.05404.160, %bb.ach ], [ %.sroa.05404.161, %bb.acl ], [ %.sroa.05404.162, %bb.acp ], [ %.sroa.05404.163, %bb.acu ], [ %.sroa.05404.164, %bb.acz ], [ %.sroa.05404.165, %bb.adc ], [ %i.jkc, %_ZNK4llvh9StringRef6equalsES0_.exit2209.thread6638 ], [ %.sroa.05404.166, %bb.adf ], [ %.sroa.05404.167, %bb.adk ], [ %.sroa.05404.168, %bb.adp ], [ %.sroa.05404.169, %bb.adu ], [ %.sroa.05404.170, %bb.adz ], [ %.sroa.05404.171, %bb.aee ], [ %.sroa.05404.172, %bb.aei ], [ %.sroa.05404.173, %bb.ael ], [ %.sroa.05404.174, %bb.aeq ], [ %.sroa.05404.175, %bb.aev ], [ %.sroa.05404.176, %bb.afa ], [ %.sroa.05404.177, %bb.aff ], [ %.sroa.05404.178, %bb.afl ], [ %.sroa.05404.179, %bb.afo ], [ %i.kci, %_ZNK4llvh9StringRef6equalsES0_.exit2254.thread6688 ], [ %i.kcx, %_ZNK4llvh9StringRef6equalsES0_.exit2257.thread6690 ], [ %i.kdh, %_ZNK4llvh9StringRef6equalsES0_.exit2260.thread6692 ], [ %i.kdw, %_ZNK4llvh9StringRef6equalsES0_.exit2263.thread6694 ], [ %i.kel, %_ZNK4llvh9StringRef6equalsES0_.exit2266.thread6696 ], [ %i.kfa, %_ZNK4llvh9StringRef6equalsES0_.exit2269.thread6698 ], [ %i.kfq, %_ZNK4llvh9StringRef6equalsES0_.exit2272.thread6700 ], [ %i.kga, %_ZNK4llvh9StringRef6equalsES0_.exit2275.thread6702 ], [ %i.kgp, %_ZNK4llvh9StringRef6equalsES0_.exit2278.thread6704 ], [ %i.khe, %_ZNK4llvh9StringRef6equalsES0_.exit2281.thread6706 ], [ %i.khu, %_ZNK4llvh9StringRef6equalsES0_.exit2284.thread6708 ], [ %.sroa.05404.180, %bb.afr ], [ %.sroa.05404.181, %bb.afw ], [ %.sroa.05404.182, %bb.afz ], [ %.sroa.05404.183, %bb.agc ], [ %.sroa.05404.184, %bb.agf ], [ %.sroa.05404.185, %bb.agl ], [ %.sroa.05404.186, %bb.agr ], [ %.sroa.05404.187, %bb.agw ], [ %.sroa.05404.188, %bb.aha ], [ %.sroa.05404.189, %bb.ahf ], [ %.sroa.05404.190, %bb.ahk ], [ %.sroa.05404.191, %bb.ahr ], [ %.sroa.05404.192, %bb.ahw ], [ %.sroa.05404.193, %bb.aie ], [ %.sroa.05404.194, %bb.aih ], [ %.sroa.05404.195, %bb.ail ], [ %.sroa.05404.196, %bb.air ], [ %.sroa.05404.197, %bb.aiu ], [ %.sroa.05404.198, %bb.aiz ], [ %.sroa.05404.199, %bb.ajd ], [ %.sroa.05404.200, %bb.ajg ], [ %.sroa.05404.201, %bb.ajk ], [ %.sroa.05404.202, %bb.ajn ], [ %.sroa.05404.203, %bb.ajr ], [ %.sroa.05404.204, %bb.ajv ], [ %.sroa.05404.205, %bb.ajz ], [ %.sroa.05404.206, %bb.akc ], [ %.sroa.05404.207, %bb.akl ], [ %.sroa.05404.208, %bb.akp ], [ %.sroa.05404.209, %bb.akx ], [ %.sroa.05404.210, %bb.ald ], [ %.sroa.05404.211, %bb.alh ], [ %.sroa.05404.212, %bb.all ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2829 ], [ %i.mbt, %_ZNK4llvh9StringRef6equalsES0_.exit2389.thread6800 ], [ %i.mcj, %_ZNK4llvh9StringRef6equalsES0_.exit2392.thread6802 ], [ %.sroa.05404.214, %bb.alq ], [ %.sroa.05404.215, %bb.alt ], [ %.sroa.05404.216, %bb.alx ], [ %.sroa.045.2.i.ph, %bb.ae ], [ %i.acp, %bb.ak ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit.i ], [ undef, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i2429 ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit6.i ], [ %i.blu, %bb.es ], [ %i.bmx, %bb.et ], [ %i.boa, %bb.eu ], [ %i.bpr, %bb.ew ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2496 ], [ %i.bqu, %bb.ex ], [ %i.csz, %bb.il ], [ %i.dfx, %bb.jy ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2577 ], [ %i.ffe, %bb.qi ], [ %i.fpp, %bb.rp ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2682 ], [ %i.frg, %bb.rr ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2687 ], [ %i.fzx, %bb.sh ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2702 ], [ %i.gbo, %bb.sj ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2707 ], [ %i.gcr, %bb.sk ], [ %i.gex, %bb.sm ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2716 ], [ %i.jbi, %bb.acd ], [ %i.mbe, %bb.aln ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2961 ], [ undef, %bb.ad ], [ undef, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit16.thread.i ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit14.i ], [ undef, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit.i ]
  %.sroa.261.217 = phi i8 [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit2401.thread ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2959 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1636.thread6074 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1639.thread6076 ], [ %.sroa.261.2, %bb.an ], [ %.sroa.261.3, %bb.au ], [ %.sroa.261.4, %bb.bb ], [ %.sroa.261.5, %bb.bi ], [ %.sroa.261.6, %bb.bq ], [ %.sroa.261.7, %bb.by ], [ %.sroa.261.8, %bb.ce ], [ %.sroa.261.9, %bb.cj ], [ %.sroa.261.10, %bb.co ], [ %.sroa.261.11, %bb.cv ], [ %.sroa.261.12, %bb.dd ], [ %.sroa.261.13, %bb.dg ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1678.thread6120 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1681.thread6122 ], [ %.sroa.261.14, %bb.dj ], [ %.sroa.261.15, %bb.dn ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1690.thread6128 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1693.thread6130 ], [ %.sroa.261.16, %bb.dq ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1699.thread6134 ], [ %.sroa.261.17, %bb.dv ], [ %.sroa.261.18, %bb.ea ], [ %.sroa.261.19, %bb.ef ], [ %.sroa.261.20, %bb.ej ], [ %.sroa.261.21, %bb.em ], [ %.sroa.261.22, %bb.er ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1720.thread6148 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit.i2433 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2487 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2490 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeNumberEPKNS_6parser10JSONObjectEN4llvh9StringRefERd.exit ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1738.thread6172 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1741.thread6174 ], [ %.sroa.261.28, %bb.fb ], [ %.sroa.261.29, %bb.ff ], [ %.sroa.261.30, %bb.fj ], [ %.sroa.261.31, %bb.fm ], [ %.sroa.261.32, %bb.fs ], [ 1, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2514 ], [ %.sroa.261.33, %bb.fw ], [ %.sroa.261.34, %bb.fz ], [ %.sroa.261.35, %bb.gf ], [ %.sroa.261.36, %bb.gl ], [ %.sroa.261.37, %bb.gr ], [ %.sroa.261.38, %bb.gw ], [ %.sroa.261.39, %bb.hb ], [ %.sroa.261.40, %bb.hh ], [ %.sroa.261.41, %bb.ho ], [ %.sroa.261.42, %bb.hu ], [ %.sroa.261.43, %bb.ib ], [ %.sroa.261.44, %bb.ih ], [ %.sroa.261.45, %bb.ik ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2499 ], [ %.sroa.261.47, %bb.io ], [ %.sroa.261.48, %bb.ir ], [ %.sroa.261.49, %bb.iw ], [ %.sroa.261.50, %bb.ja ], [ %.sroa.261.51, %bb.jd ], [ %.sroa.261.52, %bb.jg ], [ %.sroa.261.53, %bb.jl ], [ %.sroa.261.54, %bb.jq ], [ %.sroa.261.55, %bb.jv ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2553 ], [ %.sroa.261.57, %bb.kh ], [ %.sroa.261.58, %bb.ko ], [ %.sroa.261.59, %bb.kv ], [ %.sroa.261.60, %bb.kz ], [ %.sroa.261.61, %bb.lg ], [ %.sroa.261.62, %bb.lm ], [ %.sroa.261.63, %bb.lu ], [ %.sroa.261.64, %bb.ma ], [ %.sroa.261.65, %bb.mg ], [ %.sroa.261.66, %bb.mj ], [ %.sroa.261.67, %bb.mm ], [ %.sroa.261.68, %bb.mr ], [ %.sroa.261.69, %bb.mw ], [ %.sroa.261.70, %bb.nb ], [ %.sroa.261.71, %bb.ne ], [ %.sroa.261.72, %bb.nh ], [ %.sroa.261.73, %bb.nl ], [ %.sroa.261.74, %bb.np ], [ %.sroa.261.75, %bb.nt ], [ %.sroa.261.76, %bb.nw ], [ %.sroa.261.77, %bb.ob ], [ %.sroa.261.78, %bb.og ], [ %.sroa.261.79, %bb.om ], [ %.sroa.261.80, %bb.or ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1906.thread6356 ], [ %.sroa.261.81, %bb.ou ], [ %.sroa.261.82, %bb.oy ], [ %.sroa.261.83, %bb.pb ], [ %.sroa.261.84, %bb.pf ], [ %.sroa.261.85, %bb.pj ], [ %.sroa.261.86, %bb.pn ], [ %.sroa.261.87, %bb.pr ], [ %.sroa.261.88, %bb.pw ], [ %.sroa.261.89, %bb.qb ], [ %.sroa.261.90, %bb.qh ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1939.thread6384 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2573 ], [ %.sroa.261.92, %bb.qn ], [ %.sroa.261.93, %bb.qs ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1951.thread6394 ], [ %.sroa.261.94, %bb.qv ], [ %.sroa.261.95, %bb.qy ], [ %.sroa.261.96, %bb.re ], [ %.sroa.261.97, %bb.rh ], [ %.sroa.261.98, %bb.rk ], [ %.sroa.261.99, %bb.rn ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2666 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2680 ], [ %.sroa.261.102, %bb.rx ], [ %.sroa.261.103, %bb.sf ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1984.thread6426 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1987.thread6428 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1990.thread6430 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1993.thread6432 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1996.thread6434 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit1999.thread6436 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2685 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2700 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeNumberEPKNS_6parser10JSONObjectEN4llvh9StringRefERd.exit2705 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2011.thread6454 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2710 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2017.thread6462 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2020.thread6464 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2023.thread6466 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2026.thread6468 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2029.thread6470 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2032.thread6472 ], [ %.sroa.261.108, %bb.ss ], [ %.sroa.261.109, %bb.sy ], [ %.sroa.261.110, %bb.tc ], [ %.sroa.261.111, %bb.tg ], [ %.sroa.261.112, %bb.tk ], [ %.sroa.261.113, %bb.tn ], [ %.sroa.261.114, %bb.ts ], [ %.sroa.261.115, %bb.tv ], [ %.sroa.261.116, %bb.ty ], [ %.sroa.261.117, %bb.uc ], [ %.sroa.261.118, %bb.uh ], [ %.sroa.261.119, %bb.ul ], [ %.sroa.261.120, %bb.uo ], [ %.sroa.261.121, %bb.uu ], [ %.sroa.261.122, %bb.ux ], [ %.sroa.261.123, %bb.va ], [ %.sroa.261.124, %bb.ve ], [ %.sroa.261.125, %bb.vi ], [ %.sroa.261.126, %bb.vl ], [ %.sroa.261.127, %bb.vq ], [ %.sroa.261.128, %bb.vw ], [ %.sroa.261.129, %bb.wf ], [ %.sroa.261.130, %bb.wj ], [ %.sroa.261.131, %bb.wn ], [ %.sroa.261.132, %bb.ws ], [ %.sroa.261.133, %bb.wx ], [ %.sroa.261.134, %bb.xf ], [ %.sroa.261.135, %bb.xk ], [ %.sroa.261.136, %bb.xn ], [ %.sroa.261.137, %bb.xv ], [ %.sroa.261.138, %bb.yg ], [ %.sroa.261.139, %bb.yj ], [ %.sroa.261.140, %bb.ym ], [ %.sroa.261.141, %bb.ys ], [ %.sroa.261.142, %bb.yw ], [ %.sroa.261.143, %bb.zb ], [ %.sroa.261.144, %bb.zf ], [ %.sroa.261.145, %bb.zi ], [ %.sroa.261.146, %bb.zn ], [ %.sroa.261.147, %bb.zs ], [ %.sroa.261.148, %bb.zv ], [ %.sroa.261.149, %bb.zy ], [ %.sroa.261.150, %bb.aab ], [ %.sroa.261.151, %bb.aae ], [ %.sroa.261.152, %bb.aap ], [ %.sroa.261.153, %bb.aaz ], [ %.sroa.261.154, %bb.abc ], [ %.sroa.261.155, %bb.abk ], [ %.sroa.261.156, %bb.abo ], [ %.sroa.261.157, %bb.abu ], [ %.sroa.261.158, %bb.acc ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2714 ], [ %.sroa.261.160, %bb.ach ], [ %.sroa.261.161, %bb.acl ], [ %.sroa.261.162, %bb.acp ], [ %.sroa.261.163, %bb.acu ], [ %.sroa.261.164, %bb.acz ], [ %.sroa.261.165, %bb.adc ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2209.thread6638 ], [ %.sroa.261.166, %bb.adf ], [ %.sroa.261.167, %bb.adk ], [ %.sroa.261.168, %bb.adp ], [ %.sroa.261.169, %bb.adu ], [ %.sroa.261.170, %bb.adz ], [ %.sroa.261.171, %bb.aee ], [ %.sroa.261.172, %bb.aei ], [ %.sroa.261.173, %bb.ael ], [ %.sroa.261.174, %bb.aeq ], [ %.sroa.261.175, %bb.aev ], [ %.sroa.261.176, %bb.afa ], [ %.sroa.261.177, %bb.aff ], [ %.sroa.261.178, %bb.afl ], [ %.sroa.261.179, %bb.afo ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2254.thread6688 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2257.thread6690 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2260.thread6692 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2263.thread6694 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2266.thread6696 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2269.thread6698 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2272.thread6700 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2275.thread6702 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2278.thread6704 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2281.thread6706 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2284.thread6708 ], [ %.sroa.261.180, %bb.afr ], [ %.sroa.261.181, %bb.afw ], [ %.sroa.261.182, %bb.afz ], [ %.sroa.261.183, %bb.agc ], [ %.sroa.261.184, %bb.agf ], [ %.sroa.261.185, %bb.agl ], [ %.sroa.261.186, %bb.agr ], [ %.sroa.261.187, %bb.agw ], [ %.sroa.261.188, %bb.aha ], [ %.sroa.261.189, %bb.ahf ], [ %.sroa.261.190, %bb.ahk ], [ %.sroa.261.191, %bb.ahr ], [ %.sroa.261.192, %bb.ahw ], [ %.sroa.261.193, %bb.aie ], [ %.sroa.261.194, %bb.aih ], [ %.sroa.261.195, %bb.ail ], [ %.sroa.261.196, %bb.air ], [ %.sroa.261.197, %bb.aiu ], [ %.sroa.261.198, %bb.aiz ], [ %.sroa.261.199, %bb.ajd ], [ %.sroa.261.200, %bb.ajg ], [ %.sroa.261.201, %bb.ajk ], [ %.sroa.261.202, %bb.ajn ], [ %.sroa.261.203, %bb.ajr ], [ %.sroa.261.204, %bb.ajv ], [ %.sroa.261.205, %bb.ajz ], [ %.sroa.261.206, %bb.akc ], [ %.sroa.261.207, %bb.akl ], [ %.sroa.261.208, %bb.akp ], [ %.sroa.261.209, %bb.akx ], [ %.sroa.261.210, %bb.ald ], [ %.sroa.261.211, %bb.alh ], [ %.sroa.261.212, %bb.all ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2829 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2389.thread6800 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit2392.thread6802 ], [ %.sroa.261.214, %bb.alq ], [ %.sroa.261.215, %bb.alt ], [ %.sroa.261.216, %bb.alx ], [ 1, %bb.ae ], [ 1, %bb.ak ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit.i ], [ 0, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i2429 ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit6.i ], [ 1, %bb.es ], [ 1, %bb.et ], [ 1, %bb.eu ], [ 1, %bb.ew ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2496 ], [ 1, %bb.ex ], [ 1, %bb.il ], [ 1, %bb.jy ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2577 ], [ 1, %bb.qi ], [ 1, %bb.rp ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2682 ], [ 1, %bb.rr ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2687 ], [ 1, %bb.sh ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder17extractNodeStringEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2702 ], [ 1, %bb.sj ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2707 ], [ 1, %bb.sk ], [ 1, %bb.sm ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit2716 ], [ 1, %bb.acd ], [ 1, %bb.aln ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder18extractNodeBooleanEPKNS_6parser10JSONObjectEN4llvh9StringRefERb.exit2961 ], [ 0, %bb.ad ], [ 0, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit16.thread.i ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit14.i ], [ 0, %_ZN6hermes6ESTree12_GLOBAL__N_110ASTBuilder16extractNodeLabelEPKNS_6parser10JSONObjectEN4llvh9StringRefERPNS_12UniqueStringE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.alz

bb.alz:                                           ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit2406, %bb.aly, %bb.d, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %.sroa.05404.219 = phi i64 [ %i.ni, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %bb.d ], [ %i.oq, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit2406 ], [ %.sroa.05404.217, %bb.aly ]
  %.sroa.261.219 = phi i8 [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %bb.d ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit2406 ], [ %.sroa.261.217, %bb.aly ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.05404.219, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.261.219, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN6hermes6ESTree11ESTreeVisitINS0_12_GLOBAL__N_124DebugLocationSynthesizerEEEvRT_PNS0_4NodeE(ptr nofree noundef %0) unnamed_addr #2 !guid !1375 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.iz, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !627
  switch i32 %i.b, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
    i32 8, label %bb.k
    i32 11, label %bb.l
    i32 13, label %bb.m
    i32 14, label %bb.n
    i32 15, label %bb.o
    i32 16, label %bb.p
    i32 17, label %bb.q
    i32 19, label %bb.r
    i32 20, label %bb.s
    i32 21, label %bb.t
    i32 22, label %bb.u
    i32 23, label %bb.v
    i32 24, label %bb.w
    i32 25, label %bb.x
    i32 26, label %bb.y
    i32 27, label %bb.z
    i32 28, label %bb.aa
    i32 29, label %bb.ab
    i32 30, label %bb.ac
    i32 31, label %bb.ad
    i32 32, label %bb.ae
    i32 34, label %bb.af
    i32 35, label %bb.ag
    i32 36, label %bb.ah
    i32 37, label %bb.ai
    i32 38, label %bb.aj
    i32 39, label %bb.ak
    i32 40, label %bb.al
    i32 41, label %bb.am
    i32 42, label %bb.an
    i32 43, label %bb.ao
    i32 44, label %bb.ap
    i32 45, label %bb.aq
    i32 46, label %bb.ar
    i32 47, label %bb.as
    i32 48, label %bb.at
    i32 49, label %bb.au
    i32 51, label %bb.av
    i32 52, label %bb.aw
    i32 54, label %bb.ax
    i32 55, label %bb.ay
    i32 56, label %bb.az
    i32 58, label %bb.ba
    i32 59, label %bb.bb
    i32 61, label %bb.bc
    i32 62, label %bb.bd
    i32 63, label %bb.be
    i32 64, label %bb.bf
    i32 65, label %bb.bg
    i32 66, label %bb.bh
    i32 67, label %bb.bi
    i32 68, label %bb.bj
    i32 69, label %bb.bk
    i32 70, label %bb.bl
    i32 71, label %bb.bm
    i32 72, label %bb.bn
    i32 73, label %bb.bo
    i32 74, label %bb.bp
    i32 75, label %bb.bq
    i32 76, label %bb.br
    i32 77, label %bb.bs
    i32 78, label %bb.bt
    i32 79, label %bb.bu
    i32 80, label %bb.bv
    i32 81, label %bb.bw
    i32 82, label %bb.bx
    i32 83, label %bb.by
    i32 84, label %bb.bz
    i32 85, label %bb.ca
    i32 86, label %bb.cb
    i32 87, label %bb.cc
    i32 88, label %bb.cd
    i32 89, label %bb.ce
    i32 90, label %bb.cf
    i32 91, label %bb.cg
    i32 92, label %bb.ch
    i32 94, label %bb.ci
    i32 95, label %bb.cj
    i32 96, label %bb.ck
    i32 97, label %bb.cl
    i32 99, label %bb.cm
    i32 100, label %bb.cn
    i32 101, label %bb.co
    i32 103, label %bb.cp
    i32 104, label %bb.cq
    i32 105, label %bb.cr
    i32 106, label %bb.cs
    i32 107, label %bb.ct
    i32 108, label %bb.cu
    i32 109, label %bb.cv
    i32 110, label %bb.cw
    i32 111, label %bb.cx
    i32 112, label %bb.cy
    i32 114, label %bb.cz
    i32 115, label %bb.da
    i32 117, label %bb.db
    i32 118, label %bb.dc
    i32 119, label %bb.dd
    i32 120, label %bb.de
    i32 121, label %bb.df
    i32 122, label %bb.dg
    i32 123, label %bb.dh
    i32 124, label %bb.di
    i32 125, label %bb.dj
    i32 126, label %bb.dk
    i32 127, label %bb.dl
    i32 128, label %bb.dm
    i32 129, label %bb.dn
    i32 130, label %bb.do
    i32 131, label %bb.dp
    i32 132, label %bb.dq
    i32 135, label %bb.dr
    i32 136, label %bb.ds
    i32 137, label %bb.dt
    i32 138, label %bb.du
    i32 139, label %bb.dv
    i32 140, label %bb.dw
    i32 141, label %bb.dx
    i32 142, label %bb.dy
    i32 143, label %bb.dz
    i32 144, label %bb.ea
    i32 145, label %bb.eb
    i32 146, label %bb.ec
    i32 147, label %bb.ed
    i32 148, label %bb.ee
    i32 149, label %bb.ef
    i32 150, label %bb.eg
    i32 151, label %bb.eh
    i32 152, label %bb.ei
    i32 153, label %bb.ej
    i32 154, label %bb.ek
    i32 155, label %bb.el
    i32 156, label %bb.em
    i32 157, label %bb.en
end_hunk_16
