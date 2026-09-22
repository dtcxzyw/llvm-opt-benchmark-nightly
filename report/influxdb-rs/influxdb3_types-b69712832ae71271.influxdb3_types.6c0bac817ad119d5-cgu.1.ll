Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_types-b69712832ae71271.influxdb3_types.6c0bac817ad119d5-cgu.1?download=true
inline.NumInlined: 95
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@14 = private unnamed_addr constant [35 x i8] c"struct DistinctCacheCreatedResponse", align 1
@15 = private unnamed_addr constant [33 x i8] c"struct DistinctCacheDeleteRequest", align 1
@16 = private unnamed_addr constant [29 x i8] c"struct LastCacheCreateRequest", align 1
@17 = private unnamed_addr constant [29 x i8] c"struct LastCacheDeleteRequest", align 1
@18 = private unnamed_addr constant [33 x i8] c"struct SchedulePluginTestResponse", align 1
@19 = private unnamed_addr constant [27 x i8] c"struct ShowDatabasesRequest", align 1
@20 = private unnamed_addr constant [28 x i8] c"struct CreateDatabaseRequest", align 1
@21 = private unnamed_addr constant [28 x i8] c"struct UpdateDatabaseRequest", align 1
@22 = private unnamed_addr constant [28 x i8] c"struct DeleteDatabaseRequest", align 1
@23 = private unnamed_addr constant [25 x i8] c"struct CreateTableRequest", align 1
@24 = private unnamed_addr constant [23 x i8] c"struct CreateTableField", align 1
@25 = private unnamed_addr constant [14 x i8] c"enum FieldType", align 1
@26 = private unnamed_addr constant [25 x i8] c"struct DeleteTableRequest", align 1
@27 = private unnamed_addr constant [16 x i8] c"enum QueryFormat", align 1
@28 = private unnamed_addr constant [18 x i8] c"struct WriteParams", align 1
@29 = private unnamed_addr constant [41 x i8] c"struct CreateTokenWithPermissionsResponse", align 1
@30 = private unnamed_addr constant [42 x i8] c"struct ProcessingEnginePluginCreateRequest", align 1
@31 = private unnamed_addr constant [42 x i8] c"struct ProcessingEnginePluginDeleteRequest", align 1
@32 = private unnamed_addr constant [43 x i8] c"struct ProcessingEngineTriggerCreateRequest", align 1
@33 = private unnamed_addr constant [43 x i8] c"struct ProcessingEngineTriggerDeleteRequest", align 1
@34 = private unnamed_addr constant [30 x i8] c"struct UpdatePluginFileRequest", align 1
@35 = private unnamed_addr constant [36 x i8] c"struct ReplacePluginDirectoryRequest", align 1
@36 = private unnamed_addr constant [22 x i8] c"struct PluginFileEntry", align 1
@37 = private unnamed_addr constant [45 x i8] c"struct ProcessingEngineInstallPackagesRequest", align 1
@38 = private unnamed_addr constant [49 x i8] c"struct ProcessingEngineInstallRequirementsRequest", align 1
@39 = private unnamed_addr constant [40 x i8] c"struct ProcessingEngineTriggerIdentifier", align 1
@40 = private unnamed_addr constant [27 x i8] c"struct WalPluginTestRequest", align 1
@41 = private unnamed_addr constant [28 x i8] c"struct WalPluginTestResponse", align 1
@42 = private unnamed_addr constant [32 x i8] c"struct SchedulePluginTestRequest", align 1
@43 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs9h7Hq22ZyhR_15influxdb3_types, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs9h7Hq22ZyhR_15influxdb3_types }>, align 8
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCs9h7Hq22ZyhR_15influxdb3_types }>, align 8
@45 = private unnamed_addr constant [13 x i8] c"FromUtf8Error", align 1
@46 = private unnamed_addr constant [5 x i8] c"bytes", align 1
@47 = private unnamed_addr constant [5 x i8] c"error", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCs9h7Hq22ZyhR_15influxdb3_types }>, align 8
@49 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@50 = private unnamed_addr constant [116 x i8] c"/home/opt-bench/.rustup/toolchains/1.97.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/string.rs\00", align 1
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @50, [16 x i8] c"s\00\00\00\00\00\00\00q\0B\00\00\0E\00\00\00" }>, align 8
@52 = private unnamed_addr constant [5 x i8] c"Error", align 1
@53 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorECs9h7Hq22ZyhR_15influxdb3_types, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCscdodAO9FK5_5alloc6stringNtB5_13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@54 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorECs9h7Hq22ZyhR_15influxdb3_types, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1m_NtCscdodAO9FK5_5alloc6stringNtB6_13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs0_NtCscdodAO9FK5_5alloc6stringNtB5_13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @53, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCs9h7Hq22ZyhR_15influxdb3_types, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs9h7Hq22ZyhR_15influxdb3_types, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs9h7Hq22ZyhR_15influxdb3_types, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCs9h7Hq22ZyhR_15influxdb3_types, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs9h7Hq22ZyhR_15influxdb3_types }>, align 8
@55 = private unnamed_addr constant [24 x i8] c"\13invalid mime type (\C0\01)\00", align 1
@56 = private unnamed_addr constant [47 x i8] c",the mime type specified was not valid UTF8: \C0\00", align 1
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"w\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8
@58 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@59 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2226241016354847951 to ptr), ptr inttoptr (i64 3141863331777474449 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs9h7Hq22ZyhR_15influxdb3_types.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs9h7Hq22ZyhR_15influxdb3_types.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorECs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs9h7Hq22ZyhR_15influxdb3_types.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs9h7Hq22ZyhR_15influxdb3_types.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs9h7Hq22ZyhR_15influxdb3_types.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs9h7Hq22ZyhR_15influxdb3_types.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs9h7Hq22ZyhR_15influxdb3_types.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs9h7Hq22ZyhR_15influxdb3_types.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs9h7Hq22ZyhR_15influxdb3_types.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs9h7Hq22ZyhR_15influxdb3_types.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscooQ3B8uchQ_8iox_http5write6params11WriteParamsECs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3, !alias.scope !12, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsIdnmPPg5ba_10data_types14namespace_name13NamespaceNameECs9h7Hq22ZyhR_15influxdb3_types.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsIdnmPPg5ba_10data_types14namespace_name13NamespaceNameECs9h7Hq22ZyhR_15influxdb3_types.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsIdnmPPg5ba_10data_types14namespace_name13NamespaceNameECs9h7Hq22ZyhR_15influxdb3_types.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !18 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !18 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !18 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !18 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9h7Hq22ZyhR_15influxdb3_types.exit.i.us.preheader, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9h7Hq22ZyhR_15influxdb3_types.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us), "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9h7Hq22ZyhR_15influxdb3_types.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9h7Hq22ZyhR_15influxdb3_types.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9h7Hq22ZyhR_15influxdb3_types.exit.i.us

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9h7Hq22ZyhR_15influxdb3_types.exit.i.us: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9h7Hq22ZyhR_15influxdb3_types.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9h7Hq22ZyhR_15influxdb3_types.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !4
  %i.t = load i8, ptr %i.r, align 1, !noundef !4
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs9h7Hq22ZyhR_15influxdb3_types.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.09.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.030.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.029.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.030.i, align 1, !alias.scope !16, !noalias !17
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.029.i, align 1, !alias.scope !17, !noalias !16
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.029.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !16, !noalias !17
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !17, !noalias !16
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.09, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs9h7Hq22ZyhR_15influxdb3_types4httpNtB5_11QueryFormat16try_from_headers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.7.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.f = call noundef align 8 ptr @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 68 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 10 uses
  switch i64 %i.j, label %bb.f [
    i64 30, label %bb.d
    i64 8, label %bb.aj
    i64 10, label %bb.as
    i64 16, label %bb.bd
    i64 3, label %bb.bt
  ]

bb.c:                                             ; preds = %bb.a, %bb.bv, %bb.bs
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.k, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.co

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.h, align 1, !noundef !4
  %i.m = icmp eq i8 %i.l, 97
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.o = load i8, ptr %i.n, align 1, !noundef !4
  %i.p = icmp eq i8 %i.o, 112
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.q = load i64, ptr %i.c, align 8, !range !5, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !22, !noundef !4 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.r, label %bb.bw, label %bb.bx, !prof !6

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.w = load i8, ptr %i.v, align 1, !noundef !4
  %i.x = icmp eq i8 %i.w, 112
  br i1 %i.x, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.z = load i8, ptr %i.y, align 1, !noundef !4
  %i.aa = icmp eq i8 %i.z, 108
  br i1 %i.aa, label %bb.i, label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !4
  %i.ad = icmp eq i8 %i.ac, 105
  br i1 %i.ad, label %bb.j, label %bb.f

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4
  %i.ag = icmp eq i8 %i.af, 99
  br i1 %i.ag, label %bb.k, label %bb.f

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !4
  %i.aj = icmp eq i8 %i.ai, 97
  br i1 %i.aj, label %bb.l, label %bb.f

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 7
  %i.al = load i8, ptr %i.ak, align 1, !noundef !4
  %i.am = icmp eq i8 %i.al, 116
  br i1 %i.am, label %bb.m, label %bb.f

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ao = load i8, ptr %i.an, align 1, !noundef !4
  %i.ap = icmp eq i8 %i.ao, 105
  br i1 %i.ap, label %bb.n, label %bb.f

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.ar = load i8, ptr %i.aq, align 1, !noundef !4
  %i.as = icmp eq i8 %i.ar, 111
  br i1 %i.as, label %bb.o, label %bb.f

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.au = load i8, ptr %i.at, align 1, !noundef !4
  %i.av = icmp eq i8 %i.au, 110
  br i1 %i.av, label %bb.p, label %bb.f

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 11
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !4
  %i.ay = icmp eq i8 %i.ax, 47
  br i1 %i.ay, label %bb.q, label %bb.f

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ba = load i8, ptr %i.az, align 1, !noundef !4
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCs9h7Hq22ZyhR_15influxdb3_types4httpNtB5_11QueryFormat16try_from_headers:bb.a
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i64 16, i1 false), !noalias !4
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4159.sroa.4.0..sroa.4159.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hr = load <2 x i64>, ptr %i.hq, align 8, !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4159.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false)
  store i64 %i.t, ptr %0, align 8
  store <2 x i64> %i.hr, ptr %.sroa.4159.sroa.4.0..sroa.4159.0..sroa_idx.sroa_idx, align 8
  br label %bb.ck

bb.ce:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !alias.scope !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false)
  %.sroa.7.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.j, ptr %.sroa.7.sroa.7.0..sroa_idx, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.hu = invoke fastcc noundef zeroext i1 @_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ht, i64 noundef %i.j)
          to label %bb.cg unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.ce
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #21
          to label %common.resume unwind label %bb.cp

bb.cg:                                            ; preds = %bb.ce
  br i1 %i.hu, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hw = invoke fastcc noundef zeroext i1 @_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ht, i64 noundef %i.j)
          to label %bb.ci unwind label %bb.cf

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.hw, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0)
  br label %bb.co

bb.cl:                                            ; preds = %bb.ci, %bb.cg
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.hx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types.exit unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types.exit: ; preds = %bb.cl
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0)
  br label %bb.co

bb.co:                                            ; preds = %bb.c, %bb.ai, %bb.ar, %bb.bc, %bb.ck, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types.exit
  ret void

bb.cp:                                            ; preds = %bb.cf
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtCs9h7Hq22ZyhR_15influxdb3_types4httpNtB5_34CreateTokenWithPermissionsResponse15from_token_info(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = alloca [8 x i8], align 8                 ; 9 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775807
  br i1 %i.h, label %_RNvMs_NtCs8tMIthlWNBj_6chrono8datetimeINtB4_8DateTimeNtNtNtB6_6offset3utc3UtcE14from_timestamp.exit, label %bb.c

_RNvMs_NtCs8tMIthlWNBj_6chrono8datetimeINtB4_8DateTimeNtNtNtB6_6offset3utc3UtcE14from_timestamp.exit: ; preds = %bb.e, %bb.c, %.noexc, %bb.a
  %.sroa.7.0 = phi i32 [ undef, %bb.a ], [ %i.v, %bb.e ], [ undef, %bb.c ], [ undef, %.noexc ]
  %.sroa.6.0 = phi i32 [ undef, %bb.a ], [ %i.ae, %bb.e ], [ undef, %bb.c ], [ undef, %.noexc ]
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %i.ad, %bb.e ], [ 0, %bb.c ], [ 0, %.noexc ]
  %i.i = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit15, %bb.h, %bb.b
  %.pn8 = phi { ptr, i32 } [ %i.p, %bb.b ], [ %.pn6, %bb.h ], [ %.pn6, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit15 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #21
          to label %.body32 unwind label %bb.aj

bb.b:                                             ; preds = %bb.ae, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit

bb.c:                                             ; preds = %bb.a
  %i.q = sdiv i64 %i.g, 1000
  %i.r = srem i64 %i.g, 1000                      ; 3 uses
  %.lobit.i = ashr i64 %i.r, 63
  %.sroa.0.0.i = add nsw i64 %.lobit.i, %i.q      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %i.t = select i1 %i.s, i64 1000, i64 0
  %spec.select.i = add nsw i64 %i.t, %i.r
  %i.u = trunc nuw nsw i64 %spec.select.i to i32
  %i.v = mul nuw nsw i32 %i.u, 1000000
  %i.w = sdiv i64 %.sroa.0.0.i, 86400
  %i.x = srem i64 %.sroa.0.0.i, 86400             ; 3 uses
  %.lobit.i.i = ashr i64 %i.x, 63
  %.sroa.0.0.i.i = add nsw i64 %.lobit.i.i, %i.w  ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  %i.z = select i1 %i.y, i64 86400, i64 0
  %spec.select.i.i = add nsw i64 %i.z, %i.x
  %i.aa = add nsw i64 %.sroa.0.0.i.i, -2146764485
  %or.cond.i = icmp ult i64 %i.aa, -4294967296
  br i1 %or.cond.i, label %_RNvMs_NtCs8tMIthlWNBj_6chrono8datetimeINtB4_8DateTimeNtNtNtB6_6offset3utc3UtcE14from_timestamp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = trunc i64 %.sroa.0.0.i.i to i32
  %i.ac = add i32 %i.ab, 719163
  %i.ad = invoke noundef i32 @_RNvMNtNtCs8tMIthlWNBj_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.ac)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %bb.d
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %_RNvMs_NtCs8tMIthlWNBj_6chrono8datetimeINtB4_8DateTimeNtNtNtB6_6offset3utc3UtcE14from_timestamp.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.ae = trunc nuw nsw i64 %spec.select.i.i to i32
  br label %_RNvMs_NtCs8tMIthlWNBj_6chrono8datetimeINtB4_8DateTimeNtNtNtB6_6offset3utc3UtcE14from_timestamp.exit

bb.f:                                             ; preds = %_RNvMs_NtCs8tMIthlWNBj_6chrono8datetimeINtB4_8DateTimeNtNtNtB6_6offset3utc3UtcE14from_timestamp.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.ag = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ah = load i64, ptr %i.af, align 8, !noundef !4
  store ptr %i.ag, ptr %i.d, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.ah, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !4
  %i.an = invoke { ptr, i64 } @_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.am)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.g:                                             ; preds = %_RNvMs_NtCs8tMIthlWNBj_6chrono8datetimeINtB4_8DateTimeNtNtNtB6_6offset3utc3UtcE14from_timestamp.exit
  tail call void @llvm.trap()
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit15: ; preds = %.body, %bb.l, %bb.i
  %.pn6 = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %.body ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.ao = load ptr, ptr %i.d, align 8, !alias.scope !66, !nonnull !4, !noundef !4
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !66
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit15
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit unwind label %bb.aj

bb.i:                                             ; preds = %bb.ad, %bb.j, %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit15

bb.j:                                             ; preds = %bb.f
  %i.as = extractvalue { ptr, i64 } %i.an, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %3 = extractvalue { ptr, i64 } %i.an, 1         ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.au = invoke noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offseteECs9h7Hq22ZyhR_15influxdb3_types(ptr noundef nonnull %i.at, i64 noundef %3)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av
  store ptr %i.aw, ptr %i.c, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %3, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ay = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  invoke void @_RINvCsgJv5yGpdWgp_3hex6encodeRINtNtCscdodAO9FK5_5alloc3vec3VechEECs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %bb.n unwind label %bb.m

.body:                                            ; preds = %bb.u, %bb.v, %bb.o, %bb.r, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.o ], [ %i.bd, %bb.m ], [ %i.bn, %bb.r ], [ %i.bq, %bb.v ], [ %i.bq, %bb.u ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.ba = load ptr, ptr %i.c, align 8, !alias.scope !69, !nonnull !4, !noundef !4
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !69
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit15

bb.l:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit15 unwind label %bb.aj

bb.m:                                             ; preds = %bb.ac, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types.exit.i, %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !70, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !70, !noundef !4
  %i.bi = invoke { ptr, i64 } @_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef %i.bh)
          to label %bb.p unwind label %bb.o, !noalias !70 ; 2 uses

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #21
          to label %.body unwind label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.bk = extractvalue { ptr, i64 } %i.bi, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  %4 = extractvalue { ptr, i64 } %i.bi, 1         ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bm = invoke noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offseteECs9h7Hq22ZyhR_15influxdb3_types(ptr noundef nonnull %i.bl, i64 noundef %4)
          to label %bb.q unwind label %bb.o, !noalias !70

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types.exit.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.w unwind label %bb.m

bb.t:                                             ; preds = %bb.o
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.u:                                             ; preds = %bb.x
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.br = load ptr, ptr %i.b, align 8, !alias.scope !73, !nonnull !4, !noundef !4
  %i.bs = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !73
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.v, label %.body

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.body unwind label %bb.aj

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types.exit.i
  %i.bu = sub nsw i64 0, %i.bm
  %i.bv = getelementptr inbounds i8, ptr %i.bl, i64 %i.bu ; 2 uses
  store ptr %i.bv, ptr %i.b, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %4, ptr %i.bw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bx = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 160
  %i.bz = load i64, ptr %i.by, align 8, !noundef !4 ; 2 uses
  %i.ca = sdiv i64 %i.bz, 1000
  %i.cb = srem i64 %i.bz, 1000                    ; 3 uses
  %.lobit.i17 = ashr i64 %i.cb, 63
  %.sroa.0.0.i18 = add nsw i64 %.lobit.i17, %i.ca ; 2 uses
  %i.cc = icmp slt i64 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 1000, i64 0
  %spec.select.i21 = add nsw i64 %i.cd, %i.cb
  %i.ce = trunc nuw nsw i64 %spec.select.i21 to i32
  %i.cf = mul nuw nsw i32 %i.ce, 1000000
  %i.cg = sdiv i64 %.sroa.0.0.i18, 86400
  %i.ch = srem i64 %.sroa.0.0.i18, 86400          ; 3 uses
  %.lobit.i.i22 = ashr i64 %i.ch, 63
  %.sroa.0.0.i.i23 = add nsw i64 %.lobit.i.i22, %i.cg ; 2 uses
  %i.ci = icmp slt i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 86400, i64 0
  %spec.select.i.i24 = add nsw i64 %i.cj, %i.ch
  %i.ck = add nsw i64 %.sroa.0.0.i.i23, -2146764485
  %or.cond.i25 = icmp ult i64 %i.ck, -4294967296
  br i1 %or.cond.i25, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = trunc i64 %.sroa.0.0.i.i23 to i32
  %i.cm = add i32 %i.cl, 719163
  %i.cn = invoke noundef i32 @_RNvMNtNtCs8tMIthlWNBj_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.cm)
          to label %.noexc30 unwind label %bb.u   ; 2 uses

.noexc30:                                         ; preds = %bb.x
  %.not.i26 = icmp eq i32 %i.cn, 0
  %.pre = load ptr, ptr %i.b, align 8             ; 2 uses
  br i1 %.not.i26, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.noexc30
  %i.co = trunc nuw nsw i64 %spec.select.i.i24 to i32
  %i.cp = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.cq = load i64, ptr %i.ai, align 8, !noundef !4
  %i.cr = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.cs = load i64, ptr %i.ax, align 8, !noundef !4
  %i.ct = load i64, ptr %i.bw, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.cp, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cq, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cs, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.pre, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ct, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.k, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.cn, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.co, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.cf, ptr %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.sroa.0.0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.12.sroa.5.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sroa.6.0, ptr %.sroa.12.sroa.5.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %.sroa.7.0, ptr %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx.sroa_idx, align 4
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs9h7Hq22ZyhR_15influxdb3_types.exit.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %.body32 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs9h7Hq22ZyhR_15influxdb3_types.exit.i: ; preds = %bb.y
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types.exit unwind label %bb.ai

bb.ab:                                            ; preds = %bb.w, %.noexc30
  %i.cw = phi ptr [ %i.bv, %bb.w ], [ %.pre, %.noexc30 ]
  store ptr null, ptr %0, align 8
  %i.cx = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !noalias !74
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit36

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit36 unwind label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit36: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.cz = load ptr, ptr %i.c, align 8, !alias.scope !77, !nonnull !4, !noundef !4
  %i.da = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !noalias !77
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit38

bb.ad:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit36
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit38 unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit38: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit36, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.dc = load ptr, ptr %i.d, align 8, !alias.scope !80, !nonnull !4, !noundef !4
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !80
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit40

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit38
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit40 unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit40: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit38, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs9h7Hq22ZyhR_15influxdb3_types.exit.i42 unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit40
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %.body32 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs9h7Hq22ZyhR_15influxdb3_types.exit.i42: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit40
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs9h7Hq22ZyhR_15influxdb3_types.exit46 unwind label %bb.ai
end_hunk_1
