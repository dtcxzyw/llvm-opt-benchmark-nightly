Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.12?download=true
inline.NumInlined: 8307
inline.NumDeleted: 3471
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0
@277 = private unnamed_addr constant [13 x i8] c"PayloadTooBig", align 1
@278 = private unnamed_addr constant [8 x i8] c"Rejected", align 1
@279 = private unnamed_addr constant [21 x i8] c"ReleaseCapacityTooBig", align 1
@280 = private unnamed_addr constant [18 x i8] c"OverflowedStreamId", align 1
@281 = private unnamed_addr constant [16 x i8] c"MalformedHeaders", align 1
@282 = private unnamed_addr constant [28 x i8] c"MissingUriSchemeAndAuthority", align 1
@283 = private unnamed_addr constant [26 x i8] c"PollResetAfterSendResponse", align 1
@284 = private unnamed_addr constant [20 x i8] c"SendPingWhilePending", align 1
@285 = private unnamed_addr constant [24 x i8] c"SendSettingsWhilePending", align 1
@286 = private unnamed_addr constant [22 x i8] c"PeerDisabledServerPush", align 1
@287 = private unnamed_addr constant [30 x i8] c"InvalidInformationalStatusCode", align 1
@288 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs1LivM9IBWqb_12object_store4path4PathNtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib }>, align 8
@289 = private unnamed_addr constant [15 x i8] c"CatalogFilePath", align 1
@290 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @200, [16 x i8] c"\\\00\00\00\00\00\00\00v\05\00\00$\00\00\00" }>, align 8
@291 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @200, [16 x i8] c"\\\00\00\00\00\00\00\00y\05\00\00*\00\00\00" }>, align 8
@292 = private unnamed_addr constant [6 x i8] c"Create", align 1
@293 = private unnamed_addr constant [6 x i8] c"Delete", align 1
@294 = private unnamed_addr constant [4 x i8] c"Read", align 1
@295 = private unnamed_addr constant [10 x i8] c"ReadSchema", align 1
@296 = private unnamed_addr constant [5 x i8] c"Write", align 1
@297 = private unnamed_addr constant [8 x i8] c"Describe", align 1
@298 = private unnamed_addr constant [8 x i8] c"\03-- \C0\01;\00", align 1
@299 = private unnamed_addr constant [13 x i8] c"tracing::span", align 1
@300 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @200, [16 x i8] c"\\\00\00\00\00\00\00\00\AB\05\00\00*\00\00\00" }>, align 8
@301 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @200, [16 x i8] c"\\\00\00\00\00\00\00\00\86\05\00\00\1D\00\00\00" }>, align 8
@302 = private unnamed_addr constant [40 x i8] c"connection closed before reading preface", align 1
@303 = private unnamed_addr constant [24 x i8] c"PRI * HTTP/2.0\0D\0A\0D\0ASM\0D\0A\0D\0A", align 1
@304 = private unnamed_addr constant [65 x i8] c"connection error PROTOCOL_ERROR -- read_preface: invalid preface;", align 1
@305 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.0/src/io/read_buf.rs\00", align 1
@306 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @305, [16 x i8] c"d\00\00\00\00\00\00\00A\00\00\00\1E\00\00\00" }>, align 8
@307 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @200, [16 x i8] c"\\\00\00\00\00\00\00\00\A1\05\00\00\18\00\00\00" }>, align 8
@308 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @200, [16 x i8] c"\\\00\00\00\00\00\00\00\96\05\00\000\00\00\00" }>, align 8
@309 = private unnamed_addr constant [5 x i8] c"Inner", align 1
@310 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsa_NtNtCseCDlJsl44RV_5tokio4sync7oneshotNtB5_5StateNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@311 = private unnamed_addr constant [5 x i8] c"state", align 1
@312 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_10DebugValueRINtNtCsi8UQarL1hXO_2h26server11HandshakingINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB2C_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEEINtNtNtB1N_5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEENtB5_5Value6recordCsgsNUVCRJO2f_13influxdb3_lib }>, align 8
@313 = private unnamed_addr constant [5 x i8] c"Ready", align 1
@314 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @313, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@315 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRReENtB5_5Value6recordCsgsNUVCRJO2f_13influxdb3_lib }>, align 8
@_RNvNvXs9_NtCsi8UQarL1hXO_2h26serverINtB7_9HandshakeppENtNtNtCs4NRVxsYgnAr_4core6future6future6Future4polls1_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@316 = private unnamed_addr constant [7 x i8] c"Pending", align 1
@317 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @316, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@318 = private unnamed_addr constant [23 x i8] c"connection established!", align 1
@319 = private unnamed_addr constant [63 x i8] c"Handshaking::poll() called again after handshaking was complete", align 1
@320 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @200, [16 x i8] c"\\\00\00\00\00\00\00\00\F0\05\00\00\15\00\00\00" }>, align 8
@321 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_10DebugValueRINtNtCsi8UQarL1hXO_2h26server11HandshakingINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB2C_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB1N_5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEENtB5_5Value6recordCsgsNUVCRJO2f_13influxdb3_lib }>, align 8
@322 = private unnamed_addr constant [27 x i8] c"NoopCatalogSnapshotObserver", align 1
@_RNvNvXs_NtNtCsi8UQarL1hXO_2h25codec11framed_readINtB6_10FramedReadpENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_next10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@323 = private unnamed_addr constant [4 x i8] c"poll", align 1
@324 = private unnamed_addr constant [8 x i8] c"received", align 1
@325 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_10DebugValueRNtNtCsi8UQarL1hXO_2h25frame5FrameENtB5_5Value6recordCsgsNUVCRJO2f_13influxdb3_lib }>, align 8
@326 = private unnamed_addr constant [20 x i8] c"inconsistent in drop", align 1
@327 = private unnamed_addr constant [9 x i8] c"AllTables", align 1
@328 = private unnamed_addr constant [11 x i8] c"SingleTable", align 1
@329 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@330 = private unnamed_addr constant [14 x i8] c"WriteLineError", align 1
@331 = private unnamed_addr constant [13 x i8] c"original_line", align 1
@332 = private unnamed_addr constant [11 x i8] c"line_number", align 1
@333 = private unnamed_addr constant [13 x i8] c"error_message", align 1
@334 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEENtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib }>, align 8
@335 = private unnamed_addr constant [6 x i8] c"Sender", align 1
@336 = private unnamed_addr constant [5 x i8] c"inner", align 1
@337 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsgsNUVCRJO2f_13influxdb3_lib, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsV_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib }>, align 8
@338 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCsh4GC5dvIChH_27influxdb3_processing_engine14WalRouteFilterNtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib }>, align 8
@339 = private unnamed_addr constant [8 x i8] c"WalRoute", align 1
@340 = private unnamed_addr constant [13 x i8] c"database_name", align 1
@341 = private unnamed_addr constant [6 x i8] c"filter", align 1
@342 = private unnamed_addr constant [11 x i8] c"Flushing(_)", align 1
@343 = private unnamed_addr constant [17 x i8] c"ReadingPreface(_)", align 1
@344 = private unnamed_addr constant [4 x i8] c"Done", align 1
@345 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCsh4GC5dvIChH_27influxdb3_processing_engine8WalRouteNtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib }>, align 8
@346 = private unnamed_addr constant [3 x i8] c"Wal", align 1
@347 = private unnamed_addr constant [7 x i8] c"Request", align 1
@348 = private unnamed_addr constant [4 x i8] c"path", align 1
@349 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler10TriggerKeyNtB1k_12TriggerRouteEECsgsNUVCRJO2f_13influxdb3_lib, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtCsc96bKABWO34_9hashbrown3mapINtB5_7HashMapNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler10TriggerKeyNtBR_12TriggerRouteENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib }>, align 8
@350 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler10TriggerKeyENtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib }>, align 8
@351 = private unnamed_addr constant [15 x i8] c"TriggerRegistry", align 1
@352 = private unnamed_addr constant [6 x i8] c"routes", align 1
@353 = private unnamed_addr constant [13 x i8] c"request_paths", align 1
@354 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz10permission8ResourceECsgsNUVCRJO2f_13influxdb3_lib, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs21s4ZTvHFSd_5authz10permissionNtB5_8ResourceNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@355 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs21s4ZTvHFSd_5authz10permission6ActionNtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib }>, align 8
@356 = private unnamed_addr constant [14 x i8] c"ResourceAction", align 1
@357 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs21s4ZTvHFSd_5authz10permission6TargetNtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib }>, align 8
@358 = private unnamed_addr constant [8 x i8] c"Database", align 1
@359 = private unnamed_addr constant [12 x i8] c"ResourceName", align 1
@360 = private unnamed_addr constant [10 x i8] c"ResourceId", align 1
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs21s4ZTvHFSd_5authz10permission6ActionNtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib = private unnamed_addr constant [6 x i8] c"\06\06\04\0A\05\08", align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs21s4ZTvHFSd_5authz10permission6ActionNtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib.1073 = private unnamed_addr constant [6 x ptr] [ptr @292, ptr @293, ptr @294, ptr @295, ptr @296, ptr @297], align 8
@switch.table._RNvXs5_NtNtCsi8UQarL1hXO_2h25codec5errorNtB5_9UserErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [13 x i8] c"\10\13\0D\08\15\12\10\1C\1A\14\18\16\1E", align 8
@switch.table._RNvXs5_NtNtCsi8UQarL1hXO_2h25codec5errorNtB5_9UserErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.1075 = private unnamed_addr constant [13 x ptr] [ptr @275, ptr @276, ptr @277, ptr @278, ptr @279, ptr @280, ptr @281, ptr @282, ptr @283, ptr @284, ptr @285, ptr @286, ptr @287], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsuxFxh2mtOX_5bytes5bytesNtB3_5Bytes5sliceNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvCsuxFxh2mtOX_5bytes5rangeNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECsgsNUVCRJO2f_13influxdb3_lib.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !25 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_RINvCsuxFxh2mtOX_5bytes5rangeNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.d = load ptr, ptr %1, align 8, !nonnull !25, !align !26, !noundef !25
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !25, !noundef !25
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noundef !25
  tail call void %i.e(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %i.f, ptr noundef %i.h, i64 noundef %i.b)
  br label %bb.c

bb.b:                                             ; preds = %_RINvCsuxFxh2mtOX_5bytes5rangeNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noundef !25
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = getelementptr i8, ptr null, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.n, align 8
  store ptr @1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB3_6Handle14spawn_blockingNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1i_9GetResult5bytes00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtB1i_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !27, !noundef !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !25
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.i = atomicrmw add ptr @_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !126 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !126
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.d unwind label %bb.h, !noalias !128

bb.d:                                             ; preds = %bb.c
  %i.j = trunc nuw i64 %i.f to i1
  %.sroa.0.0.v = select i1 %i.j, i64 560, i64 776
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !126
  call void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1y_9GetResult5bytes00ENtNtBR_8schedule16BlockingScheduleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.i), !noalias !128
  %i.k = load ptr, ptr %i.a, align 8, !noalias !126, !nonnull !25, !noundef !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !126, !nonnull !25, !noundef !25 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !126
  %i.n = invoke { i64, ptr } @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0, ptr noundef nonnull %i.k, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1B_9GetResult5bytes00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtB1B_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.e, !noalias !129 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.m)
          to label %.noexc.i.i unwind label %bb.g, !noalias !129

.noexc.i.i:                                       ; preds = %bb.e
  br i1 %i.p, label %bb.f, label %common.resume.i

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.m)
          to label %common.resume.i unwind label %bb.g, !noalias !129

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !129
  unreachable

common.resume.i:                                  ; preds = %bb.n, %.noexc.i, %bb.h, %bb.f, %.noexc.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.o, %.noexc.i.i ], [ %i.r, %bb.h ], [ %i.v, %.noexc.i ], [ %i.v, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1O_9GetResult5bytes00EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.c) #36
          to label %common.resume.i unwind label %bb.g, !noalias !128

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1B_9GetResult5bytes00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtB1B_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.d
  %i.s = extractvalue { i64, ptr } %i.n, 0
  %i.t = extractvalue { i64, ptr } %i.n, 1        ; 2 uses
  %i.u = trunc nuw i64 %i.s to i1
  %.not.i = icmp ne ptr %i.t, null
  %or.cond.not.i = select i1 %i.u, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.i, label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1v_9GetResult5bytes00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtB1v_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !28

bb.i:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1B_9GetResult5bytes00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtB1B_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !130
  store ptr %i.t, ptr %i.e, align 8, !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !130
  store ptr %i.e, ptr %i.d, align 8, !noalias !130
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !130
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @98, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #37
          to label %bb.k unwind label %bb.j, !noalias !131

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val15.i = load ptr, ptr %i.e, align 8, !noalias !130, !nonnull !25, !noundef !25
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val15.i) #36
          to label %bb.m unwind label %bb.l, !noalias !131

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.n, %bb.m, %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !131
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.m)
          to label %.noexc.i unwind label %bb.l, !noalias !131

.noexc.i:                                         ; preds = %bb.m
  br i1 %i.x, label %bb.n, label %common.resume.i

bb.n:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.m)
          to label %common.resume.i unwind label %bb.l, !noalias !131

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1v_9GetResult5bytes00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtB1v_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1B_9GetResult5bytes00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtB1B_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  ret ptr %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsi8UQarL1hXO_2h25proto7go_awayNtB3_6GoAway20send_pending_go_awayINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB28_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEEINtNtNtB5_7streams10prioritize11PrioritizedINtNtNtB1j_5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef align 8 dereferenceable(32) %2, ptr noalias noundef align 8 dereferenceable(2096) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [296 x i8], align 8               ; 9 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.sroa.5.0.copyload = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.sroa.6.0.copyload = load ptr, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.6.sroa.8.0.copyload = load i32, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %i.c = load <2 x i32>, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %1, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke { i64, ptr } @_RNvMNtNtCsi8UQarL1hXO_2h25codec12framed_writeINtB2_11FramedWriteINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1Y_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedINtNtNtB19_5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEE10poll_readyCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(1528) %3, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.i       ; 2 uses

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = load i8, ptr %i.e, align 4, !range !29
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.l, label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, ptr } %i.d, 0
  %i.i = extractvalue { i64, ptr } %i.d, 1        ; 2 uses
  %i.j = trunc nuw i64 %i.h to i1
  br i1 %i.j, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not39 = icmp eq ptr %i.i, null
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %0, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.535.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noalias !147, !nonnull !25, !noundef !25
  tail call void %i.l(ptr noundef %.sroa.6.sroa.6.0.copyload, ptr noundef %.sroa.6.sroa.0.0.copyload, i64 noundef %.sroa.6.sroa.5.0.copyload), !noalias !147, !inline_history !0
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.m, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.sroa.0.0.copyload, ptr %.sroa.482.0..sroa_idx, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.6.sroa.5.0.copyload, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.6.sroa.6.0.copyload, ptr %.sroa.684.0..sroa_idx, align 8
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x i32> %i.c, ptr %.sroa.785.0..sroa_idx, align 8
  store i8 6, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 1168
  %i.o = call noundef i8 @_RNvMs_NtNtCsi8UQarL1hXO_2h25codec12framed_writeINtB4_7EncoderINtNtNtNtB8_5proto7streams10prioritize11PrioritizedINtNtNtCs2LSxCQSJWSD_5hyper5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEE6bufferCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(296) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i8 %i.o, -1
  br i1 %.not.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtNtCsi8UQarL1hXO_2h25codec5error9UserErrorE6expectCsgsNUVCRJO2f_13influxdb3_lib.exit, label %.noexc43, !prof !30

.noexc43:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !148
  store i8 %i.o, ptr %i.a, align 1, !noalias !148
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 20, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #37
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtNtCsi8UQarL1hXO_2h25codec5error9UserErrorE6expectCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.g
  store i32 0, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6.sroa.8.0.copyload, ptr %.sroa.413.0..sroa_idx, align 4
  br label %bb.m

bb.h:                                             ; preds = %bb.d
  store ptr %.sroa.0.0.copyload, ptr %1, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsi8UQarL1hXO_2h25frame7go_away6GoAwayECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.i:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !noalias !149, !nonnull !25, !noundef !25
  invoke void %i.q(ptr noundef %.sroa.6.sroa.6.0.copyload, ptr noundef %.sroa.6.sroa.0.0.copyload, i64 noundef %.sroa.6.sroa.5.0.copyload)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsi8UQarL1hXO_2h25frame7go_away6GoAwayECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.j, !inline_history !1

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.k:                                             ; preds = %bb.c
  store i32 2, ptr %0, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i32, ptr %i.s, align 8, !range !31, !noundef !25
  %i.u = trunc nuw i32 %i.t to i1
  br i1 %i.u, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.h, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtNtCsi8UQarL1hXO_2h25codec5error9UserErrorE6expectCsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.f, %bb.k
  ret void

bb.n:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i32, ptr %i.v, align 8, !noundef !25
  store i32 0, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.w, ptr %.sroa.421.0..sroa_idx, align 4
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  store i32 2, ptr %0, align 8
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsi8UQarL1hXO_2h25proto7go_awayNtB3_6GoAway20send_pending_go_awayINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB28_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB5_7streams10prioritize11PrioritizedINtNtNtB1j_5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef align 8 dereferenceable(32) %2, ptr noalias noundef align 8 dereferenceable(992) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [296 x i8], align 8               ; 9 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.sroa.5.0.copyload = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.sroa.6.0.copyload = load ptr, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.6.sroa.8.0.copyload = load i32, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %i.c = load <2 x i32>, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %1, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke { i64, ptr } @_RNvMNtNtCsi8UQarL1hXO_2h25codec12framed_writeINtB2_11FramedWriteINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1Y_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedINtNtNtB19_5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEE10poll_readyCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(424) %3, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.i       ; 2 uses

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = load i8, ptr %i.e, align 4, !range !29
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.l, label %bb.k
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNCNvMs0_NtCs92BnbMq7p8c_15influxdb3_write17table_index_cacheNtB12_15TableIndexCache50split_persisted_snapshots_to_table_index_snapshots0s1_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNCNvMs0_NtCs92BnbMq7p8c_15influxdb3_write17table_index_cacheNtB12_15TableIndexCache50split_persisted_snapshots_to_table_index_snapshots0s1_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvMs0_NtCs92BnbMq7p8c_15influxdb3_write17table_index_cacheNtB1e_15TableIndexCache50split_persisted_snapshots_to_table_index_snapshots0s1_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB11_9Persister18persist_checkpoint00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB1d_9Persister18persist_checkpoint00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB11_9Persister18persist_checkpoint00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB1d_9Persister18persist_checkpoint00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNCNvNtCs92BnbMq7p8c_15influxdb3_write12write_buffer28check_mem_and_force_snapshot00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs92BnbMq7p8c_15influxdb3_write12write_buffer28check_mem_and_force_snapshot00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNCNvNtCs92BnbMq7p8c_15influxdb3_write12write_buffer28check_mem_and_force_snapshot00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs92BnbMq7p8c_15influxdb3_write12write_buffer28check_mem_and_force_snapshot00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNCNvNtCs92BnbMq7p8c_15influxdb3_write12write_buffer33check_mem_and_force_snapshot_loop00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs92BnbMq7p8c_15influxdb3_write12write_buffer33check_mem_and_force_snapshot_loop00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNCNvNtCs92BnbMq7p8c_15influxdb3_write12write_buffer33check_mem_and_force_snapshot_loop00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs92BnbMq7p8c_15influxdb3_write12write_buffer33check_mem_and_force_snapshot_loop00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNCNvNtCseuJFo0eutjj_19influxdb3_telemetry6sender28send_telemetry_in_background00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCseuJFo0eutjj_19influxdb3_telemetry6sender28send_telemetry_in_background00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNCNvNtCseuJFo0eutjj_19influxdb3_telemetry6sender28send_telemetry_in_background00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCseuJFo0eutjj_19influxdb3_telemetry6sender28send_telemetry_in_background00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNCNvNtCseuJFo0eutjj_19influxdb3_telemetry7sampler14sample_metrics00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCseuJFo0eutjj_19influxdb3_telemetry7sampler14sample_metrics00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNCNvNtCseuJFo0eutjj_19influxdb3_telemetry7sampler14sample_metrics00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCseuJFo0eutjj_19influxdb3_telemetry7sampler14sample_metrics00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNCNvNtNtCsgsNUVCRJO2f_13influxdb3_lib8commands5serve28initialize_table_index_cache0s_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB12_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtCsgsNUVCRJO2f_13influxdb3_lib8commands5serve28initialize_table_index_cache0s_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1e_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNCNvNtNtCsgsNUVCRJO2f_13influxdb3_lib8commands5serve28initialize_table_index_cache0s_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB12_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtCsgsNUVCRJO2f_13influxdb3_lib8commands5serve28initialize_table_index_cache0s_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownB1e_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNvMsc_NtCsh4GC5dvIChH_27influxdb3_processing_engine9schedulerNtB10_16SchedulerRuntime3run0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNvMsc_NtCsh4GC5dvIChH_27influxdb3_processing_engine9schedulerNtB1c_16SchedulerRuntime3run0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNvMsc_NtCsh4GC5dvIChH_27influxdb3_processing_engine9schedulerNtB10_16SchedulerRuntime3run0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNvMsc_NtCsh4GC5dvIChH_27influxdb3_processing_engine9schedulerNtB1c_16SchedulerRuntime3run0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB11_14WalObjectStore6replay012get_contents0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB1d_14WalObjectStore6replay012get_contents0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB11_14WalObjectStore6replay012get_contents0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessNCNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB1d_14WalObjectStore6replay012get_contents0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB1W_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = invoke { i64, ptr } @_RNvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !17194 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw i64 %i.h to i1
  %.sroa.01.0.v = select i1 %i.l, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17194
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.i, !noalias !17195

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17194
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.k)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !noalias !17194, !nonnull !25, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !17194, !nonnull !25, !noundef !25 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17194
  %i.p = invoke { i64, ptr } @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.m, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.f, !noalias !17196 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i.i unwind label %bb.h, !noalias !17196

.noexc.i.i:                                       ; preds = %bb.f
  br i1 %i.r, label %bb.g, label %.body

bb.g:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.h, !noalias !17196

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17196
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtBK_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.c) #36
          to label %.body unwind label %bb.h, !noalias !17195

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.noexc
  %i.u = extractvalue { i64, ptr } %i.p, 0
  %i.v = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1
  %.not.i = icmp ne ptr %i.v, null
  %or.cond.not.i = select i1 %i.w, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !28

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17197
  store ptr %i.v, ptr %i.e, align 8, !noalias !17197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17197
  store ptr %i.e, ptr %i.d, align 8, !noalias !17197
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !17197
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @98, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
          to label %bb.l unwind label %bb.k, !noalias !17198

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !17197, !nonnull !25, !noundef !25
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i) #36
          to label %bb.n unwind label %bb.m, !noalias !17198

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17198
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.z = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i unwind label %bb.m, !noalias !17198

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.z, label %bb.o, label %.body

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.m, !noalias !17198

bb.p:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.g, %bb.i, %.noexc.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %i.q, %bb.g ], [ %i.q, %.noexc.i.i ], [ %i.t, %bb.i ], [ %i.x, %.noexc.i ], [ %i.x, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.f) #36
          to label %.thread unwind label %bb.u

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17199)
  call void @llvm.experimental.noalias.scope.decl(metadata !17200)
  %i.ab = load i64, ptr %i.f, align 8, !range !27, !alias.scope !17201, !noundef !25
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17202)
  call void @llvm.experimental.noalias.scope.decl(metadata !17203)
  %i.ad = load ptr, ptr %i.j, align 8, !alias.scope !17204, !nonnull !25, !noundef !25
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !17204
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17205)
  call void @llvm.experimental.noalias.scope.decl(metadata !17206)
  %i.ag = load ptr, ptr %i.j, align 8, !alias.scope !17207, !nonnull !25, !noundef !25
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !17207
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.o

bb.u:                                             ; preds = %bb.v, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

.thread:                                          ; preds = %.body, %bb.v
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %.pn8

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %0) #36
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB1W_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = invoke { i64, ptr } @_RNvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !17230 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw i64 %i.h to i1
  %.sroa.01.0.v = select i1 %i.l, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17230
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.i, !noalias !17231

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17230
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ENtNtBR_8schedule16BlockingScheduleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.k)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !noalias !17230, !nonnull !25, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !17230, !nonnull !25, !noundef !25 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17230
  %i.p = invoke { i64, ptr } @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.m, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.f, !noalias !17232 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i.i unwind label %bb.h, !noalias !17232

.noexc.i.i:                                       ; preds = %bb.f
  br i1 %i.r, label %bb.g, label %.body

bb.g:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.h, !noalias !17232

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17232
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtBK_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.c) #36
          to label %.body unwind label %bb.h, !noalias !17231

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.noexc
  %i.u = extractvalue { i64, ptr } %i.p, 0
  %i.v = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1
  %.not.i = icmp ne ptr %i.v, null
  %or.cond.not.i = select i1 %i.w, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !28

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17233
  store ptr %i.v, ptr %i.e, align 8, !noalias !17233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17233
  store ptr %i.e, ptr %i.d, align 8, !noalias !17233
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !17233
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @98, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
          to label %bb.l unwind label %bb.k, !noalias !17234

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !17233, !nonnull !25, !noundef !25
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i) #36
          to label %bb.n unwind label %bb.m, !noalias !17234

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17234
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.z = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i unwind label %bb.m, !noalias !17234

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.z, label %bb.o, label %.body

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.m, !noalias !17234

bb.p:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.g, %bb.i, %.noexc.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %i.q, %bb.g ], [ %i.q, %.noexc.i.i ], [ %i.t, %bb.i ], [ %i.x, %.noexc.i ], [ %i.x, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.f) #36
          to label %.thread unwind label %bb.u

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17235)
  call void @llvm.experimental.noalias.scope.decl(metadata !17236)
  %i.ab = load i64, ptr %i.f, align 8, !range !27, !alias.scope !17237, !noundef !25
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17238)
  call void @llvm.experimental.noalias.scope.decl(metadata !17239)
  %i.ad = load ptr, ptr %i.j, align 8, !alias.scope !17240, !nonnull !25, !noundef !25
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !17240
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17241)
  call void @llvm.experimental.noalias.scope.decl(metadata !17242)
  %i.ag = load ptr, ptr %i.j, align 8, !alias.scope !17243, !nonnull !25, !noundef !25
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !17243
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.o

bb.u:                                             ; preds = %bb.v, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

.thread:                                          ; preds = %.body, %bb.v
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %.pn8

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %0) #36
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB1W_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = invoke { i64, ptr } @_RNvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !17266 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw i64 %i.h to i1
  %.sroa.01.0.v = select i1 %i.l, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17266
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.i, !noalias !17267

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17266
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.k)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !noalias !17266, !nonnull !25, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !17266, !nonnull !25, !noundef !25 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17266
  %i.p = invoke { i64, ptr } @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.m, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.f, !noalias !17268 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i.i unwind label %bb.h, !noalias !17268

.noexc.i.i:                                       ; preds = %bb.f
  br i1 %i.r, label %bb.g, label %.body

bb.g:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.h, !noalias !17268

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17268
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtBK_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path4PathE00EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.c) #36
          to label %.body unwind label %bb.h, !noalias !17267

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.noexc
  %i.u = extractvalue { i64, ptr } %i.p, 0
  %i.v = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1
  %.not.i = icmp ne ptr %i.v, null
  %or.cond.not.i = select i1 %i.w, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !28

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17269
  store ptr %i.v, ptr %i.e, align 8, !noalias !17269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17269
  store ptr %i.e, ptr %i.d, align 8, !noalias !17269
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !17269
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @98, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
          to label %bb.l unwind label %bb.k, !noalias !17270

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !17269, !nonnull !25, !noundef !25
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i) #36
          to label %bb.n unwind label %bb.m, !noalias !17270

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17270
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.z = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i unwind label %bb.m, !noalias !17270

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.z, label %bb.o, label %.body

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.m, !noalias !17270

bb.p:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.g, %bb.i, %.noexc.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %i.q, %bb.g ], [ %i.q, %.noexc.i.i ], [ %i.t, %bb.i ], [ %i.x, %.noexc.i ], [ %i.x, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.f) #36
          to label %.thread unwind label %bb.u

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17271)
  call void @llvm.experimental.noalias.scope.decl(metadata !17272)
  %i.ab = load i64, ptr %i.f, align 8, !range !27, !alias.scope !17273, !noundef !25
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17274)
  call void @llvm.experimental.noalias.scope.decl(metadata !17275)
  %i.ad = load ptr, ptr %i.j, align 8, !alias.scope !17276, !nonnull !25, !noundef !25
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !17276
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path4PathE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17277)
  call void @llvm.experimental.noalias.scope.decl(metadata !17278)
  %i.ag = load ptr, ptr %i.j, align 8, !alias.scope !17279, !nonnull !25, !noundef !25
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !17279
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.o

bb.u:                                             ; preds = %bb.v, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

.thread:                                          ; preds = %.body, %bb.v
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %.pn8

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %0) #36
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB1W_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = invoke { i64, ptr } @_RNvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !17302 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw i64 %i.h to i1
  %.sroa.01.0.v = select i1 %i.l, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17302
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.i, !noalias !17303

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17302
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ENtNtBR_8schedule16BlockingScheduleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.k)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !noalias !17302, !nonnull !25, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !17302, !nonnull !25, !noundef !25 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17302
  %i.p = invoke { i64, ptr } @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.m, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.f, !noalias !17304 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i.i unwind label %bb.h, !noalias !17304

.noexc.i.i:                                       ; preds = %bb.f
  br i1 %i.r, label %bb.g, label %.body

bb.g:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.h, !noalias !17304

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17304
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtBK_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.c) #36
          to label %.body unwind label %bb.h, !noalias !17303

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.noexc
  %i.u = extractvalue { i64, ptr } %i.p, 0
  %i.v = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1
  %.not.i = icmp ne ptr %i.v, null
  %or.cond.not.i = select i1 %i.w, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !28

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17305
  store ptr %i.v, ptr %i.e, align 8, !noalias !17305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17305
  store ptr %i.e, ptr %i.d, align 8, !noalias !17305
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !17305
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @98, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
          to label %bb.l unwind label %bb.k, !noalias !17306

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !17305, !nonnull !25, !noundef !25
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i) #36
          to label %bb.n unwind label %bb.m, !noalias !17306

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17306
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.z = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i unwind label %bb.m, !noalias !17306

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.z, label %bb.o, label %.body

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.m, !noalias !17306

bb.p:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.g, %bb.i, %.noexc.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %i.q, %bb.g ], [ %i.q, %.noexc.i.i ], [ %i.t, %bb.i ], [ %i.x, %.noexc.i ], [ %i.x, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.f) #36
          to label %.thread unwind label %bb.u

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17307)
  call void @llvm.experimental.noalias.scope.decl(metadata !17308)
  %i.ab = load i64, ptr %i.f, align 8, !range !27, !alias.scope !17309, !noundef !25
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17310)
  call void @llvm.experimental.noalias.scope.decl(metadata !17311)
  %i.ad = load ptr, ptr %i.j, align 8, !alias.scope !17312, !nonnull !25, !noundef !25
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !17312
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17313)
  call void @llvm.experimental.noalias.scope.decl(metadata !17314)
  %i.ag = load ptr, ptr %i.j, align 8, !alias.scope !17315, !nonnull !25, !noundef !25
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !17315
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.o

bb.u:                                             ; preds = %bb.v, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

.thread:                                          ; preds = %.body, %bb.v
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %.pn8

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14read_to_string14read_to_stringRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %0) #36
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs14remove_dir_all14remove_dir_allNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = invoke { i64, ptr } @_RNvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !17338 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw i64 %i.h to i1
  %.sroa.01.0.v = select i1 %i.l, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17338
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.i, !noalias !17339

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17338
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs14remove_dir_all14remove_dir_allNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ENtNtBR_8schedule16BlockingScheduleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.k)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !noalias !17338, !nonnull !25, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !17338, !nonnull !25, !noundef !25 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17338
  %i.p = invoke { i64, ptr } @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.m, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2i_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.f, !noalias !17340 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i.i unwind label %bb.h, !noalias !17340

.noexc.i.i:                                       ; preds = %bb.f
  br i1 %i.r, label %bb.g, label %.body

bb.g:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.h, !noalias !17340

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17340
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtBK_2fs14remove_dir_all14remove_dir_allNtNtCs2AWtUsOyxgP_3std4path7PathBufE00EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.c) #36
          to label %.body unwind label %bb.h, !noalias !17339

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2i_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.noexc
  %i.u = extractvalue { i64, ptr } %i.p, 0
  %i.v = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1
  %.not.i = icmp ne ptr %i.v, null
  %or.cond.not.i = select i1 %i.w, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2c_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !28

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2i_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17341
  store ptr %i.v, ptr %i.e, align 8, !noalias !17341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17341
  store ptr %i.e, ptr %i.d, align 8, !noalias !17341
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !17341
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @98, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
          to label %bb.l unwind label %bb.k, !noalias !17342

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !17341, !nonnull !25, !noundef !25
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i) #36
          to label %bb.n unwind label %bb.m, !noalias !17342

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17342
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.z = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i unwind label %bb.m, !noalias !17342

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.z, label %bb.o, label %.body

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.m, !noalias !17342

bb.p:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.g, %bb.i, %.noexc.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %i.q, %bb.g ], [ %i.q, %.noexc.i.i ], [ %i.t, %bb.i ], [ %i.x, %.noexc.i ], [ %i.x, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.f) #36
          to label %.thread unwind label %bb.u

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2c_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2i_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17343)
  call void @llvm.experimental.noalias.scope.decl(metadata !17344)
  %i.ab = load i64, ptr %i.f, align 8, !range !27, !alias.scope !17345, !noundef !25
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2c_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17346)
  call void @llvm.experimental.noalias.scope.decl(metadata !17347)
  %i.ad = load ptr, ptr %i.j, align 8, !alias.scope !17348, !nonnull !25, !noundef !25
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !17348
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2c_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17349)
  call void @llvm.experimental.noalias.scope.decl(metadata !17350)
  %i.ag = load ptr, ptr %i.j, align 8, !alias.scope !17351, !nonnull !25, !noundef !25
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !17351
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.o

bb.u:                                             ; preds = %bb.v, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

.thread:                                          ; preds = %.body, %bb.v
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %.pn8

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %0) #36
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB1W_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = invoke { i64, ptr } @_RNvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !17374 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw i64 %i.h to i1
  %.sroa.01.0.v = select i1 %i.l, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17374
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.i, !noalias !17375

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17374
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ENtNtBR_8schedule16BlockingScheduleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.k)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !noalias !17374, !nonnull !25, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !17374, !nonnull !25, !noundef !25 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17374
  %i.p = invoke { i64, ptr } @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.m, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.f, !noalias !17376 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i.i unwind label %bb.h, !noalias !17376

.noexc.i.i:                                       ; preds = %bb.f
  br i1 %i.r, label %bb.g, label %.body

bb.g:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.h, !noalias !17376

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17376
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtBK_2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.c) #36
          to label %.body unwind label %bb.h, !noalias !17375

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.noexc
  %i.u = extractvalue { i64, ptr } %i.p, 0
  %i.v = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1
  %.not.i = icmp ne ptr %i.v, null
  %or.cond.not.i = select i1 %i.w, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !28

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17377
  store ptr %i.v, ptr %i.e, align 8, !noalias !17377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17377
  store ptr %i.e, ptr %i.d, align 8, !noalias !17377
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !17377
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @98, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
          to label %bb.l unwind label %bb.k, !noalias !17378

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !17377, !nonnull !25, !noundef !25
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i) #36
          to label %bb.n unwind label %bb.m, !noalias !17378

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17378
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.z = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i unwind label %bb.m, !noalias !17378

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.z, label %bb.o, label %.body

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.m, !noalias !17378

bb.p:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.g, %bb.i, %.noexc.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %i.q, %bb.g ], [ %i.q, %.noexc.i.i ], [ %i.t, %bb.i ], [ %i.x, %.noexc.i ], [ %i.x, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.f) #36
          to label %.thread unwind label %bb.u

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2j_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17379)
  call void @llvm.experimental.noalias.scope.decl(metadata !17380)
  %i.ab = load i64, ptr %i.f, align 8, !range !27, !alias.scope !17381, !noundef !25
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17382)
  call void @llvm.experimental.noalias.scope.decl(metadata !17383)
  %i.ad = load ptr, ptr %i.j, align 8, !alias.scope !17384, !nonnull !25, !noundef !25
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !17384
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB2d_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17385)
  call void @llvm.experimental.noalias.scope.decl(metadata !17386)
  %i.ag = load ptr, ptr %i.j, align 8, !alias.scope !17387, !nonnull !25, !noundef !25
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !17387
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.o

bb.u:                                             ; preds = %bb.v, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

.thread:                                          ; preds = %.body, %bb.v
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %.pn8

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %0) #36
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs8metadata8metadataRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB1I_2fs8MetadataNtNtNtB1I_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = invoke { i64, ptr } @_RNvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !17410 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw i64 %i.h to i1
  %.sroa.01.0.v = select i1 %i.l, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17410
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.i, !noalias !17411

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17410
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs8metadata8metadataRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ENtNtBR_8schedule16BlockingScheduleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.k)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !noalias !17410, !nonnull !25, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !17410, !nonnull !25, !noundef !25 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17410
  %i.p = invoke { i64, ptr } @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.m, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs8metadata8metadataRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB25_2fs8MetadataNtNtNtB25_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.f, !noalias !17412 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i.i unwind label %bb.h, !noalias !17412

.noexc.i.i:                                       ; preds = %bb.f
  br i1 %i.r, label %bb.g, label %.body

bb.g:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.h, !noalias !17412

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17412
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtBK_2fs8metadata8metadataRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.c) #36
          to label %.body unwind label %bb.h, !noalias !17411

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs8metadata8metadataRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB25_2fs8MetadataNtNtNtB25_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.noexc
  %i.u = extractvalue { i64, ptr } %i.p, 0
  %i.v = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1
  %.not.i = icmp ne ptr %i.v, null
  %or.cond.not.i = select i1 %i.w, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs8metadata8metadataRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB1Z_2fs8MetadataNtNtNtB1Z_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !28

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs8metadata8metadataRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB25_2fs8MetadataNtNtNtB25_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17413
  store ptr %i.v, ptr %i.e, align 8, !noalias !17413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17413
  store ptr %i.e, ptr %i.d, align 8, !noalias !17413
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !17413
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @98, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
          to label %bb.l unwind label %bb.k, !noalias !17414

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !17413, !nonnull !25, !noundef !25
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i) #36
          to label %bb.n unwind label %bb.m, !noalias !17414

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17414
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.z = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i unwind label %bb.m, !noalias !17414

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.z, label %bb.o, label %.body

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.m, !noalias !17414

bb.p:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.g, %bb.i, %.noexc.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %i.q, %bb.g ], [ %i.q, %.noexc.i.i ], [ %i.t, %bb.i ], [ %i.x, %.noexc.i ], [ %i.x, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.f) #36
          to label %.thread unwind label %bb.u

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs8metadata8metadataRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB1Z_2fs8MetadataNtNtNtB1Z_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs8metadata8metadataRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB25_2fs8MetadataNtNtNtB25_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17415)
  call void @llvm.experimental.noalias.scope.decl(metadata !17416)
  %i.ab = load i64, ptr %i.f, align 8, !range !27, !alias.scope !17417, !noundef !25
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs8metadata8metadataRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB1Z_2fs8MetadataNtNtNtB1Z_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17418)
  call void @llvm.experimental.noalias.scope.decl(metadata !17419)
  %i.ad = load ptr, ptr %i.j, align 8, !alias.scope !17420, !nonnull !25, !noundef !25
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !17420
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs8metadata8metadataRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB1Z_2fs8MetadataNtNtNtB1Z_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17421)
  call void @llvm.experimental.noalias.scope.decl(metadata !17422)
  %i.ag = load ptr, ptr %i.j, align 8, !alias.scope !17423, !nonnull !25, !noundef !25
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !17423
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.o

bb.u:                                             ; preds = %bb.v, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

.thread:                                          ; preds = %.body, %bb.v
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %.pn8

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs8metadata8metadataRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %0) #36
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtB8_2fs12open_optionsNtB1b_11OpenOptions8std_open00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtNtB2J_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = invoke { i64, ptr } @_RNvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !17446 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw i64 %i.h to i1
  %.sroa.01.0.v = select i1 %i.l, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17446
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.i, !noalias !17447

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17446
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtB6_2fs12open_optionsNtB1v_11OpenOptions8std_open00ENtNtBR_8schedule16BlockingScheduleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.k)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !noalias !17446, !nonnull !25, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !17446, !nonnull !25, !noundef !25 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17446
  %i.p = invoke { i64, ptr } @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.m, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs12open_optionsNtB1y_11OpenOptions8std_open00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtNtB36_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.f, !noalias !17448 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i.i unwind label %bb.h, !noalias !17448

.noexc.i.i:                                       ; preds = %bb.f
  br i1 %i.r, label %bb.g, label %.body

bb.g:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.h, !noalias !17448

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17448
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCNvMNtNtBK_2fs12open_optionsNtB1L_11OpenOptions8std_open00EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(40) %i.c) #36
          to label %.body unwind label %bb.h, !noalias !17447

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs12open_optionsNtB1y_11OpenOptions8std_open00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtNtB36_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.noexc
  %i.u = extractvalue { i64, ptr } %i.p, 0
  %i.v = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1
  %.not.i = icmp ne ptr %i.v, null
  %or.cond.not.i = select i1 %i.w, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtBc_2fs12open_optionsNtB1s_11OpenOptions8std_open00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtNtB30_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !28

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs12open_optionsNtB1y_11OpenOptions8std_open00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtNtB36_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17449
  store ptr %i.v, ptr %i.e, align 8, !noalias !17449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17449
  store ptr %i.e, ptr %i.d, align 8, !noalias !17449
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !17449
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @98, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
          to label %bb.l unwind label %bb.k, !noalias !17450

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !17449, !nonnull !25, !noundef !25
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i) #36
          to label %bb.n unwind label %bb.m, !noalias !17450

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17450
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.z = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i unwind label %bb.m, !noalias !17450

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.z, label %bb.o, label %.body

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.m, !noalias !17450

bb.p:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.g, %bb.i, %.noexc.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %i.q, %bb.g ], [ %i.q, %.noexc.i.i ], [ %i.t, %bb.i ], [ %i.x, %.noexc.i ], [ %i.x, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.f) #36
          to label %.thread unwind label %bb.u

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtBc_2fs12open_optionsNtB1s_11OpenOptions8std_open00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtNtB30_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs12open_optionsNtB1y_11OpenOptions8std_open00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtNtB36_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17451)
  call void @llvm.experimental.noalias.scope.decl(metadata !17452)
  %i.ab = load i64, ptr %i.f, align 8, !range !27, !alias.scope !17453, !noundef !25
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtBc_2fs12open_optionsNtB1s_11OpenOptions8std_open00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtNtB30_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17454)
  call void @llvm.experimental.noalias.scope.decl(metadata !17455)
  %i.ad = load ptr, ptr %i.j, align 8, !alias.scope !17456, !nonnull !25, !noundef !25
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !17456
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtBc_2fs12open_optionsNtB1s_11OpenOptions8std_open00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtNtB30_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17457)
  call void @llvm.experimental.noalias.scope.decl(metadata !17458)
  %i.ag = load ptr, ptr %i.j, align 8, !alias.scope !17459, !nonnull !25, !noundef !25
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !17459
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.o

bb.u:                                             ; preds = %bb.v, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

.thread:                                          ; preds = %.body, %bb.v
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %.pn8

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMNtNtCseCDlJsl44RV_5tokio2fs12open_optionsNtBI_11OpenOptions8std_open00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(40) %0) #36
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1e_27ProcessingEngineManagerImpl18dry_run_wal_plugin00NtNtCs9h7Hq22ZyhR_15influxdb3_types4http21WalPluginTestResponseECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [200 x i8], align 8               ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = invoke { i64, ptr } @_RNvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !17486 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw i64 %i.h to i1
  %.sroa.01.0.v = select i1 %i.l, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef nonnull align 8 dereferenceable(200) %0, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17486
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.i, !noalias !17487

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17486
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1y_27ProcessingEngineManagerImpl18dry_run_wal_plugin00ENtNtBR_8schedule16BlockingScheduleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.k)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !noalias !17486, !nonnull !25, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !17486, !nonnull !25, !noundef !25 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17486
  %i.p = invoke { i64, ptr } @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.m, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1B_27ProcessingEngineManagerImpl18dry_run_wal_plugin00NtNtCs9h7Hq22ZyhR_15influxdb3_types4http21WalPluginTestResponseECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.f, !noalias !17488 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i.i unwind label %bb.h, !noalias !17488

.noexc.i.i:                                       ; preds = %bb.f
  br i1 %i.r, label %bb.g, label %.body

bb.g:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.h, !noalias !17488

bb.h:                                             ; preds = %bb.j, %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17488
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load i64, ptr %i.c, align 8, !range !49, !alias.scope !17489, !noalias !17486, !noundef !25
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBL_27ProcessingEngineManagerImpl18dry_run_wal_plugin00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.c)
          to label %.body unwind label %bb.h, !noalias !17487

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1B_27ProcessingEngineManagerImpl18dry_run_wal_plugin00NtNtCs9h7Hq22ZyhR_15influxdb3_types4http21WalPluginTestResponseECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.noexc
  %i.w = extractvalue { i64, ptr } %i.p, 0
  %i.x = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  %.not.i = icmp ne ptr %i.x, null
  %or.cond.not.i = select i1 %i.y, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1v_27ProcessingEngineManagerImpl18dry_run_wal_plugin00NtNtCs9h7Hq22ZyhR_15influxdb3_types4http21WalPluginTestResponseECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !28

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1B_27ProcessingEngineManagerImpl18dry_run_wal_plugin00NtNtCs9h7Hq22ZyhR_15influxdb3_types4http21WalPluginTestResponseECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17490
  store ptr %i.x, ptr %i.e, align 8, !noalias !17490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17490
  store ptr %i.e, ptr %i.d, align 8, !noalias !17490
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !17490
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @98, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
          to label %bb.m unwind label %bb.l, !noalias !17491

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !17490, !nonnull !25, !noundef !25
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i) #36
          to label %bb.o unwind label %bb.n, !noalias !17491

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17491
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ab = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i unwind label %bb.n, !noalias !17491

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ab, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.n, !noalias !17491

bb.q:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.g, %bb.i, %bb.j, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %i.t, %bb.j ], [ %i.t, %bb.i ], [ %i.q, %.noexc.i.i ], [ %i.q, %bb.g ], [ %i.z, %.noexc.i ], [ %i.z, %bb.p ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.f) #36
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1v_27ProcessingEngineManagerImpl18dry_run_wal_plugin00NtNtCs9h7Hq22ZyhR_15influxdb3_types4http21WalPluginTestResponseECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1B_27ProcessingEngineManagerImpl18dry_run_wal_plugin00NtNtCs9h7Hq22ZyhR_15influxdb3_types4http21WalPluginTestResponseECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17492)
  call void @llvm.experimental.noalias.scope.decl(metadata !17493)
  %i.ad = load i64, ptr %i.f, align 8, !range !27, !alias.scope !17494, !noundef !25
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1v_27ProcessingEngineManagerImpl18dry_run_wal_plugin00NtNtCs9h7Hq22ZyhR_15influxdb3_types4http21WalPluginTestResponseECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17495)
  call void @llvm.experimental.noalias.scope.decl(metadata !17496)
  %i.af = load ptr, ptr %i.j, align 8, !alias.scope !17497, !nonnull !25, !noundef !25
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !17497
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1v_27ProcessingEngineManagerImpl18dry_run_wal_plugin00NtNtCs9h7Hq22ZyhR_15influxdb3_types4http21WalPluginTestResponseECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17498)
  call void @llvm.experimental.noalias.scope.decl(metadata !17499)
  %i.ai = load ptr, ptr %i.j, align 8, !alias.scope !17500, !nonnull !25, !noundef !25
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !17500
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.o

bb.v:                                             ; preds = %bb.w, %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBL_27ProcessingEngineManagerImpl18dry_run_wal_plugin00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(200) %0) #36
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1e_27ProcessingEngineManagerImpl20test_schedule_plugin00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http26SchedulePluginTestResponseNtNtB1e_7plugins11PluginErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [200 x i8], align 8               ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = invoke { i64, ptr } @_RNvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !17527 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw i64 %i.h to i1
  %.sroa.01.0.v = select i1 %i.l, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef nonnull align 8 dereferenceable(200) %0, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17527
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.i, !noalias !17528

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17527
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1y_27ProcessingEngineManagerImpl20test_schedule_plugin00ENtNtBR_8schedule16BlockingScheduleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.k)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !noalias !17527, !nonnull !25, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !17527, !nonnull !25, !noundef !25 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17527
  %i.p = invoke { i64, ptr } @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.m, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1B_27ProcessingEngineManagerImpl20test_schedule_plugin00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http26SchedulePluginTestResponseNtNtB1B_7plugins11PluginErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.f, !noalias !17529 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i.i unwind label %bb.h, !noalias !17529

.noexc.i.i:                                       ; preds = %bb.f
  br i1 %i.r, label %bb.g, label %.body

bb.g:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.h, !noalias !17529

bb.h:                                             ; preds = %bb.j, %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17529
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load i64, ptr %i.c, align 8, !range !49, !alias.scope !17530, !noalias !17527, !noundef !25
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBL_27ProcessingEngineManagerImpl20test_schedule_plugin00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.c)
          to label %.body unwind label %bb.h, !noalias !17528

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1B_27ProcessingEngineManagerImpl20test_schedule_plugin00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http26SchedulePluginTestResponseNtNtB1B_7plugins11PluginErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.noexc
  %i.w = extractvalue { i64, ptr } %i.p, 0
  %i.x = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  %.not.i = icmp ne ptr %i.x, null
  %or.cond.not.i = select i1 %i.y, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1v_27ProcessingEngineManagerImpl20test_schedule_plugin00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http26SchedulePluginTestResponseNtNtB1v_7plugins11PluginErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !28

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1B_27ProcessingEngineManagerImpl20test_schedule_plugin00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http26SchedulePluginTestResponseNtNtB1B_7plugins11PluginErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17531
  store ptr %i.x, ptr %i.e, align 8, !noalias !17531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17531
  store ptr %i.e, ptr %i.d, align 8, !noalias !17531
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !17531
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @98, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
          to label %bb.m unwind label %bb.l, !noalias !17532

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !17531, !nonnull !25, !noundef !25
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i) #36
          to label %bb.o unwind label %bb.n, !noalias !17532

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17532
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ab = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i unwind label %bb.n, !noalias !17532

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ab, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.n, !noalias !17532

bb.q:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.g, %bb.i, %bb.j, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %i.t, %bb.j ], [ %i.t, %bb.i ], [ %i.q, %.noexc.i.i ], [ %i.q, %bb.g ], [ %i.z, %.noexc.i ], [ %i.z, %bb.p ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.f) #36
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1v_27ProcessingEngineManagerImpl20test_schedule_plugin00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http26SchedulePluginTestResponseNtNtB1v_7plugins11PluginErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1B_27ProcessingEngineManagerImpl20test_schedule_plugin00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http26SchedulePluginTestResponseNtNtB1B_7plugins11PluginErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17533)
  call void @llvm.experimental.noalias.scope.decl(metadata !17534)
  %i.ad = load i64, ptr %i.f, align 8, !range !27, !alias.scope !17535, !noundef !25
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1v_27ProcessingEngineManagerImpl20test_schedule_plugin00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http26SchedulePluginTestResponseNtNtB1v_7plugins11PluginErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17536)
  call void @llvm.experimental.noalias.scope.decl(metadata !17537)
  %i.af = load ptr, ptr %i.j, align 8, !alias.scope !17538, !nonnull !25, !noundef !25
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !17538
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB1v_27ProcessingEngineManagerImpl20test_schedule_plugin00INtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http26SchedulePluginTestResponseNtNtB1v_7plugins11PluginErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17539)
  call void @llvm.experimental.noalias.scope.decl(metadata !17540)
  %i.ai = load ptr, ptr %i.j, align 8, !alias.scope !17541, !nonnull !25, !noundef !25
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !17541
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.o

bb.v:                                             ; preds = %bb.w, %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBL_27ProcessingEngineManagerImpl20test_schedule_plugin00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(200) %0) #36
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvNtNtB8_2fs5write20write_spawn_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = invoke { i64, ptr } @_RNvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !17568 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw i64 %i.h to i1
  %.sroa.01.0.v = select i1 %i.l, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17568
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.i, !noalias !17569

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17568
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvNtNtB6_2fs5write20write_spawn_blocking00ENtNtBR_8schedule16BlockingScheduleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.k)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !noalias !17568, !nonnull !25, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !17568, !nonnull !25, !noundef !25 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17568
  %i.p = invoke { i64, ptr } @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.m, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.f, !noalias !17570 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i.i unwind label %bb.h, !noalias !17570

.noexc.i.i:                                       ; preds = %bb.f
  br i1 %i.r, label %bb.g, label %.body

bb.g:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.h, !noalias !17570

bb.h:                                             ; preds = %bb.j, %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17570
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load i64, ptr %i.c, align 8, !range !49, !alias.scope !17571, !noalias !17568, !noundef !25
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvNtNtCseCDlJsl44RV_5tokio2fs5write20write_spawn_blocking00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %.body unwind label %bb.h, !noalias !17569

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.noexc
  %i.w = extractvalue { i64, ptr } %i.p, 0
  %i.x = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  %.not.i = icmp ne ptr %i.x, null
  %or.cond.not.i = select i1 %i.y, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !28

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17572
  store ptr %i.x, ptr %i.e, align 8, !noalias !17572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17572
  store ptr %i.e, ptr %i.d, align 8, !noalias !17572
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !17572
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @98, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
          to label %bb.m unwind label %bb.l, !noalias !17573

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !17572, !nonnull !25, !noundef !25
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i) #36
          to label %bb.o unwind label %bb.n, !noalias !17573

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17573
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ab = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i unwind label %bb.n, !noalias !17573

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ab, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.n, !noalias !17573

bb.q:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.g, %bb.i, %bb.j, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %i.t, %bb.j ], [ %i.t, %bb.i ], [ %i.q, %.noexc.i.i ], [ %i.q, %bb.g ], [ %i.z, %.noexc.i ], [ %i.z, %bb.p ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.f) #36
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17574)
  call void @llvm.experimental.noalias.scope.decl(metadata !17575)
  %i.ad = load i64, ptr %i.f, align 8, !range !27, !alias.scope !17576, !noundef !25
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17577)
  call void @llvm.experimental.noalias.scope.decl(metadata !17578)
  %i.af = load ptr, ptr %i.j, align 8, !alias.scope !17579, !nonnull !25, !noundef !25
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !17579
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17580)
  call void @llvm.experimental.noalias.scope.decl(metadata !17581)
  %i.ai = load ptr, ptr %i.j, align 8, !alias.scope !17582, !nonnull !25, !noundef !25
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !17582
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.o

bb.v:                                             ; preds = %bb.w, %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvNtNtCseCDlJsl44RV_5tokio2fs5write20write_spawn_blocking00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(56) %0) #36
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvNtNtB8_2fs6rename15rename_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = invoke { i64, ptr } @_RNvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !17609 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw i64 %i.h to i1
  %.sroa.01.0.v = select i1 %i.l, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17609
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.i, !noalias !17610

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17609
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvNtNtB6_2fs6rename15rename_blocking00ENtNtBR_8schedule16BlockingScheduleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.k)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !noalias !17609, !nonnull !25, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !17609, !nonnull !25, !noundef !25 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17609
  %i.p = invoke { i64, ptr } @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.m, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs6rename15rename_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.f, !noalias !17611 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i.i unwind label %bb.h, !noalias !17611

.noexc.i.i:                                       ; preds = %bb.f
  br i1 %i.r, label %bb.g, label %.body

bb.g:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.h, !noalias !17611

bb.h:                                             ; preds = %bb.j, %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17611
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load i64, ptr %i.c, align 8, !range !49, !alias.scope !17612, !noalias !17609, !noundef !25
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvNtNtCseCDlJsl44RV_5tokio2fs6rename15rename_blocking00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.body unwind label %bb.h, !noalias !17610

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs6rename15rename_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.noexc
  %i.w = extractvalue { i64, ptr } %i.p, 0
  %i.x = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  %.not.i = icmp ne ptr %i.x, null
  %or.cond.not.i = select i1 %i.y, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvNtNtBc_2fs6rename15rename_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !28

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs6rename15rename_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17613
  store ptr %i.x, ptr %i.e, align 8, !noalias !17613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17613
  store ptr %i.e, ptr %i.d, align 8, !noalias !17613
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !17613
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @98, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
          to label %bb.m unwind label %bb.l, !noalias !17614

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !17613, !nonnull !25, !noundef !25
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i) #36
          to label %bb.o unwind label %bb.n, !noalias !17614

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17614
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ab = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i unwind label %bb.n, !noalias !17614

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ab, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.n, !noalias !17614

bb.q:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.g, %bb.i, %bb.j, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %i.t, %bb.j ], [ %i.t, %bb.i ], [ %i.q, %.noexc.i.i ], [ %i.q, %bb.g ], [ %i.z, %.noexc.i ], [ %i.z, %bb.p ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.f) #36
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvNtNtBc_2fs6rename15rename_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs6rename15rename_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17615)
  call void @llvm.experimental.noalias.scope.decl(metadata !17616)
  %i.ad = load i64, ptr %i.f, align 8, !range !27, !alias.scope !17617, !noundef !25
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvNtNtBc_2fs6rename15rename_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17618)
  call void @llvm.experimental.noalias.scope.decl(metadata !17619)
  %i.af = load ptr, ptr %i.j, align 8, !alias.scope !17620, !nonnull !25, !noundef !25
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !17620
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvNtNtBc_2fs6rename15rename_blocking00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17621)
  call void @llvm.experimental.noalias.scope.decl(metadata !17622)
  %i.ai = load ptr, ptr %i.j, align 8, !alias.scope !17623, !nonnull !25, !noundef !25
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !17623
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.o

bb.v:                                             ; preds = %bb.w, %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvNtNtCseCDlJsl44RV_5tokio2fs6rename15rename_blocking00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %0) #36
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNvCsdcTKIql9anY_14jemalloc_stats26dump_heap_profile_blockingINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtB16_13HeapDumpErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = tail call { i64, ptr } @_RNvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = trunc nuw i64 %i.g to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %. = select i1 %i.j, i64 560, i64 776
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !17644 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17644
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17644
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNvCsdcTKIql9anY_14jemalloc_stats26dump_heap_profile_blockingENtNtBR_8schedule16BlockingScheduleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.l)
          to label %.noexc4 unwind label %bb.m

.noexc4:                                          ; preds = %.noexc
  %i.m = load ptr, ptr %i.a, align 8, !noalias !17644, !nonnull !25, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !17644, !nonnull !25, !noundef !25 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17644
  %i.p = invoke { i64, ptr } @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.m, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNvCsdcTKIql9anY_14jemalloc_stats26dump_heap_profile_blockingINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtB1t_13HeapDumpErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.d, !noalias !17645 ; 2 uses

bb.d:                                             ; preds = %.noexc4
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i.i unwind label %bb.f, !noalias !17645

.noexc.i.i:                                       ; preds = %bb.d
  br i1 %i.r, label %bb.e, label %.body

bb.e:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.f, !noalias !17645

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !17645
  unreachable

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNvCsdcTKIql9anY_14jemalloc_stats26dump_heap_profile_blockingINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtB1t_13HeapDumpErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.noexc4
  %i.t = extractvalue { i64, ptr } %i.p, 0
  %i.u = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.v = trunc nuw i64 %i.t to i1
  %.not.i = icmp ne ptr %i.u, null
  %or.cond.not.i = select i1 %i.v, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.g, label %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNvCsdcTKIql9anY_14jemalloc_stats26dump_heap_profile_blockingINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtB1n_13HeapDumpErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !28

bb.g:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNvCsdcTKIql9anY_14jemalloc_stats26dump_heap_profile_blockingINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtB1t_13HeapDumpErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17646
  store ptr %i.u, ptr %i.d, align 8, !noalias !17646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17646
  store ptr %i.d, ptr %i.c, align 8, !noalias !17646
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !17646
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @98, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #37
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !17646, !nonnull !25, !noundef !25
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i) #36
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.l, %bb.k, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.y = invoke noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.k
  br i1 %i.y, label %bb.l, label %.body

bb.l:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %.body unwind label %bb.j

bb.m:                                             ; preds = %.noexc, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.e, %.noexc.i, %bb.l, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.q, %.noexc.i.i ], [ %i.q, %bb.e ], [ %i.w, %.noexc.i ], [ %i.w, %bb.l ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.e) #36
          to label %bb.s unwind label %bb.r

_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNvCsdcTKIql9anY_14jemalloc_stats26dump_heap_profile_blockingINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtB1n_13HeapDumpErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNvCsdcTKIql9anY_14jemalloc_stats26dump_heap_profile_blockingINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtB1t_13HeapDumpErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17647)
  call void @llvm.experimental.noalias.scope.decl(metadata !17648)
  %i.aa = load i64, ptr %i.e, align 8, !range !27, !alias.scope !17649, !noundef !25
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNvCsdcTKIql9anY_14jemalloc_stats26dump_heap_profile_blockingINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtB1n_13HeapDumpErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17650)
  call void @llvm.experimental.noalias.scope.decl(metadata !17651)
  %i.ac = load ptr, ptr %i.i, align 8, !alias.scope !17652, !nonnull !25, !noundef !25
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !17652
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.p:                                             ; preds = %_RINvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNvCsdcTKIql9anY_14jemalloc_stats26dump_heap_profile_blockingINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtB1n_13HeapDumpErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17653)
  call void @llvm.experimental.noalias.scope.decl(metadata !17654)
  %i.af = load ptr, ptr %i.i, align 8, !alias.scope !17655, !nonnull !25, !noundef !25
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !17655
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.o

bb.r:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.s:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperINCNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog0s_00lEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINCNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog0s_00lEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %0)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store ptr %i.d, ptr %i.a, align 8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !17660
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINCNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog0s_00lEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINCNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog0s_00lEEEE9drop_slowB2I_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINCNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog0s_00lEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINCNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog0s_00lEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperINCNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v229load_catalog_from_paths_inner000lEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINCNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v229load_catalog_from_paths_inner000lEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %0)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store ptr %i.d, ptr %i.a, align 8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !17665
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINCNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v229load_catalog_from_paths_inner000lEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINCNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v229load_catalog_from_paths_inner000lEEEE9drop_slowB2I_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINCNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v229load_catalog_from_paths_inner000lEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINCNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v229load_catalog_from_paths_inner000lEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperINtNtNtNtBa_6future10try_future11into_future10IntoFutureINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB3i_6future6future6Futurep6OutputINtNtB3i_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB3i_6marker4SendEL_EEEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB4_5boxed3BoxDNtNtNtB3s_6future6future6Futurep6OutputINtNtB3s_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB3s_6marker4SendEL_EEEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %0)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store ptr %i.d, ptr %i.a, align 8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !17670
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB3s_6future6future6Futurep6OutputINtNtB3s_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB3s_6marker4SendEL_EEEEEE9drop_slowCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperINtNtNtNtBa_6future10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB3p_13V1HttpHandler13execute_query0s2_00EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB3z_13V1HttpHandler13execute_query0s2_00EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %0)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store ptr %i.d, ptr %i.a, align 8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !17675
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB44_13V1HttpHandler13execute_query0s2_00EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB3z_13V1HttpHandler13execute_query0s2_00EEEE9drop_slowCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB44_13V1HttpHandler13execute_query0s2_00EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB44_13V1HttpHandler13execute_query0s2_00EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperINtNtNtNtBa_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3p_20CatalogSubscriptions11send_update0s_00EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3z_20CatalogSubscriptions11send_update0s_00EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %0)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
end_hunk_1
