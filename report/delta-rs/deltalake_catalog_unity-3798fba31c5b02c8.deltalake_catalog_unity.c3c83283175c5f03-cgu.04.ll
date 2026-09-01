Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_catalog_unity-3798fba31c5b02c8.deltalake_catalog_unity.c3c83283175c5f03-cgu.04?download=true
inline.NumInlined: 996
inline.NumDeleted: 405
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0
@325 = private unnamed_addr constant [9 x i8] c"EmptyHost", align 1
@326 = private unnamed_addr constant [9 x i8] c"IdnaError", align 1
@327 = private unnamed_addr constant [11 x i8] c"InvalidPort", align 1
@328 = private unnamed_addr constant [18 x i8] c"InvalidIpv4Address", align 1
@329 = private unnamed_addr constant [18 x i8] c"InvalidIpv6Address", align 1
@330 = private unnamed_addr constant [22 x i8] c"InvalidDomainCharacter", align 1
@331 = private unnamed_addr constant [22 x i8] c"RelativeUrlWithoutBase", align 1
@332 = private unnamed_addr constant [32 x i8] c"RelativeUrlWithCannotBeABaseBase", align 1
@333 = private unnamed_addr constant [25 x i8] c"SetHostOnCannotBeABaseUrl", align 1
@334 = private unnamed_addr constant [8 x i8] c"Overflow", align 1
@335 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@336 = private unnamed_addr constant [18 x i8] c"AmbiguousReference", align 1
@337 = private unnamed_addr constant [5 x i8] c"field", align 1
@338 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@339 = private unnamed_addr constant [23 x i8] c"DuplicateQualifiedField", align 1
@340 = private unnamed_addr constant [9 x i8] c"qualifier", align 1
@341 = private unnamed_addr constant [4 x i8] c"name", align 1
@342 = private unnamed_addr constant [25 x i8] c"DuplicateUnqualifiedField", align 1
@343 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@344 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@345 = private unnamed_addr constant [13 x i8] c"FieldNotFound", align 1
@346 = private unnamed_addr constant [12 x i8] c"valid_fields", align 1
@347 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt }>, align 8
@348 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr @_RNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr @347, ptr @_RNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source, ptr @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@349 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRxNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@350 = private unnamed_addr constant [20 x i8] c"VersionAlreadyExists", align 1
@351 = private unnamed_addr constant [16 x i8] c"SerializeLogJson", align 1
@352 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@353 = private unnamed_addr constant [14 x i8] c"CommitConflict", align 1
@354 = private unnamed_addr constant [17 x i8] c"MaxCommitAttempts", align 1
@355 = private unnamed_addr constant [20 x i8] c"DeltaTableAppendOnly", align 1
@356 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@357 = private unnamed_addr constant [24 x i8] c"UnsupportedTableFeatures", align 1
@358 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@359 = private unnamed_addr constant [21 x i8] c"TableFeaturesRequired", align 1
@360 = private unnamed_addr constant [13 x i8] c"LogStoreError", align 1
@361 = private unnamed_addr constant [3 x i8] c"msg", align 1
@362 = private unnamed_addr constant [1 x i8] c"/", align 1
@363 = private unnamed_addr constant [4 x i8] c"\C0\01/\00", align 1
@364 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@365 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4062658205892911658 to ptr), ptr inttoptr (i64 -1673642344005855114 to ptr) }>, align 8
@366 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6643184139997087177 to ptr), ptr inttoptr (i64 -6638648697157688142 to ptr) }>, align 8
@367 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4414288146774337550 to ptr), ptr inttoptr (i64 -8558894266253906705 to ptr) }>, align 8
@368 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4914948277808166054 to ptr), ptr inttoptr (i64 2111995574219228527 to ptr) }>, align 8
@369 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3777913656534941959 to ptr), ptr inttoptr (i64 -118864294603038420 to ptr) }>, align 8
@370 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3651422087534687841 to ptr), ptr inttoptr (i64 2851108417614871623 to ptr) }>, align 8
@371 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 5129058246674624926 to ptr), ptr inttoptr (i64 -4087297904167668688 to ptr) }>, align 8
@372 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8624493539382464842 to ptr), ptr inttoptr (i64 2641902377492434536 to ptr) }>, align 8
@373 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4069448148467762142 to ptr), ptr inttoptr (i64 7697028363475239054 to ptr) }>, align 8
@374 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8323180243871607072 to ptr), ptr inttoptr (i64 8252819442054161944 to ptr) }>, align 8
@375 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -998379692241478772 to ptr), ptr inttoptr (i64 -2078416414408924215 to ptr) }>, align 8
@376 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -322766124794770741 to ptr), ptr inttoptr (i64 -892469035244066555 to ptr) }>, align 8
@377 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7427888754994705989 to ptr), ptr inttoptr (i64 2511292006441954338 to ptr) }>, align 8
@378 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7539305650227036060 to ptr), ptr inttoptr (i64 -8292528805303079907 to ptr) }>, align 8
@379 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3507362091528036829 to ptr), ptr inttoptr (i64 1122656065655540163 to ptr) }>, align 8
@380 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5993614711327303695 to ptr), ptr inttoptr (i64 3164883434463997331 to ptr) }>, align 8
@381 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7138977279839204526 to ptr), ptr inttoptr (i64 -8957275379254221844 to ptr) }>, align 8
@382 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2718257976296401963 to ptr), ptr inttoptr (i64 5839602908536361288 to ptr) }>, align 8
@383 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6180351501431046636 to ptr), ptr inttoptr (i64 2058528345871583318 to ptr) }>, align 8
@384 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2239750145236301727 to ptr), ptr inttoptr (i64 -7197517621448377411 to ptr) }>, align 8
@385 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2699011438706630775 to ptr), ptr inttoptr (i64 -4576157216679854341 to ptr) }>, align 8
@386 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3264876230281771869 to ptr), ptr inttoptr (i64 1331140511824731892 to ptr) }>, align 8
@387 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1294208861291987719 to ptr), ptr inttoptr (i64 7526452654611091669 to ptr) }>, align 8
@switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCshmPyUV8PP35_6chrono6format14ParseErrorKindNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity = private unnamed_addr constant [8 x i8] c"\0A\0A\09\07\08\07\09\0F", align 8
@switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCshmPyUV8PP35_6chrono6format14ParseErrorKindNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity.165 = private unnamed_addr constant [8 x ptr] [ptr @75, ptr @76, ptr @77, ptr @78, ptr @79, ptr @80, ptr @81, ptr @82], align 8
@switch.table._RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt = private unnamed_addr constant [10 x i8] c"\09\09\0B\12\12\16\16 \19\08", align 8
@switch.table._RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.166 = private unnamed_addr constant [10 x ptr] [ptr @325, ptr @326, ptr @327, ptr @328, ptr @329, ptr @330, ptr @331, ptr @332, ptr @333, ptr @334], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMap10try_entry2NtNtB8_4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(96) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.833 = alloca [16 x i8], align 8          ; 2 uses
  %i.a = invoke noundef zeroext i1 @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 3, ptr %i.b, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %i.c = load ptr, ptr %2, align 8, !alias.scope !9, !noundef !10 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !23, !nonnull !10, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !23, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !23, !noundef !10
  tail call void %i.f(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k), !inline_history !24
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.b
  %i.l = tail call noundef i16 @_RINvNtNtCs4j34XAPZOn0_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load i16, ptr %i.m, align 8, !noundef !10 ; 3 uses
  %i.o = and i16 %i.n, %i.l
  %i.p = zext nneg i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load i64, ptr %i.q, align 8, !noundef !10 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = zext i16 %i.n to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not184 = icmp eq i64 %i.r, 0
  %i.y = load ptr, ptr %i.s, align 8, !nonnull !10, !noundef !10
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, %bb.e
  %.sroa.07.0.ph = phi i64 [ %i.ar, %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.e ] ; 4 uses
  %.sroa.0.0.ph = phi i64 [ %i.as, %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ %i.p, %bb.e ] ; 2 uses
  %i.z = icmp ult i64 %.sroa.0.0.ph, %i.r         ; 2 uses
  %.not184.not = xor i1 %.not184, true
  %brmerge = or i1 %i.z, %.not184.not
  %.sroa.0.0.ph.mux = select i1 %i.z, i64 %.sroa.0.0.ph, i64 0 ; 6 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.0.0.ph.mux ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2, !noundef !10 ; 2 uses
  %.not = icmp eq i16 %i.ab, -1
  br i1 %.not, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.p
  unreachable

bb.g:                                             ; preds = %.loopexit
  %i.ac = icmp samesign ugt i64 %.sroa.07.0.ph, 511
  br i1 %i.ac, label %.sink.split, label %bb.i

bb.h:                                             ; preds = %.loopexit
  %i.ad = zext i16 %i.ab to i64                   ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.af = load i16, ptr %i.ae, align 2, !noundef !10 ; 2 uses
  %i.ag = and i16 %i.af, %i.n
  %i.ah = zext i16 %i.ag to i64
  %i.ai = sub i64 %.sroa.0.0.ph.mux, %i.ah
  %i.aj = and i64 %i.ai, %i.t
  %i.ak = icmp samesign ult i64 %i.aj, %.sroa.07.0.ph
  br i1 %i.ak, label %bb.k, label %bb.j

.sink.split:                                      ; preds = %bb.g, %bb.k
  %i.al = load i64, ptr %1, align 8, !range !25, !noundef !10
  %i.am = icmp ne i64 %i.al, 2
  %i.an = zext i1 %i.am to i8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %bb.k
  %.sroa.10.0 = phi i8 [ 0, %bb.k ], [ 0, %bb.g ], [ %i.an, %.sink.split ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.833, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load <2 x i64>, ptr %2, align 8
  store <2 x i64> %i.ao, ptr %.sroa.523.0..sroa_idx24, align 8
  %.sroa.833.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.833.0..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.833, i64 16, i1 false)
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.836.0..sroa_idx37, align 8
  %.sroa.941.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %i.l, ptr %.sroa.941.0..sroa_idx42, align 8
  %.sroa.10.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx46, align 2
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.j:                                             ; preds = %bb.h
  %i.ap = icmp eq i16 %i.af, %i.l
  br i1 %i.ap, label %bb.l, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.k:                                             ; preds = %bb.h
  %i.aq = icmp samesign ugt i64 %.sroa.07.0.ph, 511
  br i1 %i.aq, label %.sink.split, label %bb.i

_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.o, %bb.m, %.split, %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.j
  %i.ar = add nuw nsw i64 %.sroa.07.0.ph, 1
  %i.as = add i64 %.sroa.0.0.ph.mux, 1
  br label %.outer

bb.l:                                             ; preds = %bb.j
  %i.at = load i64, ptr %i.u, align 8, !noundef !10 ; 2 uses
  %i.au = icmp ugt i64 %i.at, %i.ad
  br i1 %i.au, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.v, align 8, !nonnull !10, !noundef !10
  %i.aw = getelementptr inbounds nuw [104 x i8], ptr %i.av, i64 %i.ad ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !noundef !10
  %i.az = icmp ne ptr %i.ay, null                 ; 2 uses
  %i.ba = load ptr, ptr %2, align 8, !noundef !10 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null                 ; 3 uses
  %not..i.i = xor i1 %i.bb, true
  %i.bc = xor i1 %i.az, %i.bb
  br i1 %i.bc, label %bb.n, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %i.az, label %bb.o, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.assume(i1 %not..i.i)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.be = load i64, ptr %i.bd, align 8, !noundef !10 ; 3 uses
  %i.bf = load i64, ptr %i.x, align 8, !noundef !10
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %.split, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.o
  %i.bh = load ptr, ptr %i.w, align 8, !noundef !10 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !noundef !10
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.bj, ptr %i.bh, i64 %i.be)
  %i.bk = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bk, label %bb.q, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.p:                                             ; preds = %bb.l
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33
          to label %bb.f unwind label %bb.r

_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.bb)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.bm = load i8, ptr %i.bl, align 8, !range !26, !noundef !10
  %i.bn = load i8, ptr %i.w, align 8, !range !26, !noundef !10
  %i.bo = icmp eq i8 %i.bm, %i.bn
  br i1 %i.bo, label %.thread, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

.thread:                                          ; preds = %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx2677 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.523.0..sroa_idx2677, align 8
  %.sroa.728.0..sroa_idx3178 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ad, ptr %.sroa.728.0..sroa_idx3178, align 8
  %.sroa.10.0..sroa_idx4880 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 2, ptr %.sroa.10.0..sroa_idx4880, align 2
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.q:                                             ; preds = %.split
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.523.0..sroa_idx26, align 8
  %.sroa.728.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ad, ptr %.sroa.728.0..sroa_idx31, align 8
  %.sroa.10.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 2, ptr %.sroa.10.0..sroa_idx48, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !27, !nonnull !10, !noundef !10
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void %i.bq(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef %i.bh, i64 noundef %i.be), !inline_history !24
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.q, %.thread, %bb.d, %bb.c, %bb.i
  ret void

.noexc:                                           ; preds = %bb.s, %bb.r
  resume { ptr, i32 } %i.bs

bb.r:                                             ; preds = %bb.a, %bb.p
  %i.bs = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.bt = load ptr, ptr %2, align 8, !alias.scope !46, !noundef !10 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.noexc, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !59, !nonnull !10, !noundef !10
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !59, !noundef !10
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !59, !noundef !10
  invoke void %i.bw(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef %i.bz, i64 noundef %i.cb)
          to label %.noexc unwind label %bb.t, !inline_history !60

bb.t:                                             ; preds = %bb.s
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMap12contains_keyNtNtB8_4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !67, !noalias !68, !noundef !10 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %._RINvXs0_NtNtNtCs4j34XAPZOn0_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit_crit_edge, label %bb.b

._RINvXs0_NtNtNtCs4j34XAPZOn0_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !71
  br label %_RINvXs0_NtNtNtCs4j34XAPZOn0_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_RINvNtNtCs4j34XAPZOn0_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !68 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !67, !noalias !68, !noundef !10 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !67, !noalias !68, !noundef !10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !67, !noalias !68, !nonnull !10
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !67, !noalias !68, !nonnull !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load ptr, ptr %1, align 8                ; 4 uses
  %i.t = icmp eq ptr %i.s, null                   ; 3 uses
  %not..i.i.i.i = xor i1 %i.t, true
  %i.u = load i8, ptr %i.q, align 8, !range !26
  %i.v = load i64, ptr %i.r, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.aj, %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.ak, %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.i.ph, %i.k     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !76, !noundef !10 ; 2 uses
  %.not.i.i = icmp eq i16 %i.z, -1
  br i1 %.not.i.i, label %_RINvXs0_NtNtNtCs4j34XAPZOn0_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !76, !noundef !10 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ag
  br i1 %i.ah, label %_RINvXs0_NtNtNtCs4j34XAPZOn0_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !76, !noundef !10
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !76, !noundef !10
  %i.at = icmp eq i64 %i.as, %i.v
  br i1 %i.at, label %.split.i.i, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !noalias !76, !noundef !10
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.w, i64 %i.v), !noalias !76
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_RINvXs0_NtNtNtCs4j34XAPZOn0_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ay = load i8, ptr %i.ax, align 8, !range !26, !noalias !76, !noundef !10
  %i.az = icmp eq i8 %i.ay, %i.u
  br i1 %i.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit2, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #35
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.bb = load ptr, ptr %1, align 8, !alias.scope !83, !noundef !10 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !96, !nonnull !10, !noundef !10
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = load ptr, ptr %i.q, align 8, !alias.scope !96, !noundef !10
  %i.bh = load i64, ptr %i.r, align 8, !alias.scope !96, !noundef !10
  invoke void %i.be(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef %i.bg, i64 noundef %i.bh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.m, !inline_history !60

_RINvXs0_NtNtNtCs4j34XAPZOn0_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %.loopexit, %.split.i.i, %._RINvXs0_NtNtNtCs4j34XAPZOn0_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit_crit_edge
  %2 = phi ptr [ %.pre, %._RINvXs0_NtNtNtCs4j34XAPZOn0_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit_crit_edge ], [ %i.s, %.split.i.i ], [ %i.s, %.loopexit ], [ %i.s, %bb.c ] ; 2 uses
  %3 = phi i1 [ false, %._RINvXs0_NtNtNtCs4j34XAPZOn0_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit_crit_edge ], [ false, %bb.c ], [ false, %.loopexit ], [ true, %.split.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.bi = icmp eq ptr %2, null
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit2, label %bb.l

bb.l:                                             ; preds = %_RINvXs0_NtNtNtCs4j34XAPZOn0_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !111, !nonnull !10, !noundef !10
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !111, !noundef !10
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !111, !noundef !10
  tail call void %i.bk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef %i.bn, i64 noundef %i.bp), !inline_history !24
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit2: ; preds = %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %_RINvXs0_NtNtNtCs4j34XAPZOn0_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.l
  %i.bq = phi i1 [ %3, %bb.l ], [ %3, %_RINvXs0_NtNtNtCs4j34XAPZOn0_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ true, %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i ]
  ret i1 %i.bq

bb.m:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.ba

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE7reserveNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !112

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0EB2K_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE7reserveNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !112

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0EB2K_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !112

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE14reserve_rehashNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0EB2G_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %.not11 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not11, label %.lr.ph, label %._crit_edge18

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge18

._crit_edge18:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [104 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted13, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val9 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val9, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1664 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %.not11 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not11, label %.lr.ph, label %._crit_edge18

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge18

._crit_edge18:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted13, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val9 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val9, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -640 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %.not11 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not11, label %.lr.ph, label %._crit_edge18

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge18

._crit_edge18:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted13, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val9 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val9, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -640 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtCseKAYRfgxGTE_14event_listener5InneruEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef readnone captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i64 16
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsI2hFLkJvVt_12futures_task5waker12drop_arc_rawNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
