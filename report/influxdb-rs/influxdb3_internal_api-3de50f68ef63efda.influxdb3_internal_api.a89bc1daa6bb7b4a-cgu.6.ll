Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_internal_api-3de50f68ef63efda.influxdb3_internal_api.a89bc1daa6bb7b4a-cgu.6?download=true
inline.NumInlined: 192
inline.NumDeleted: 92
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@1 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @0, [24 x i8] zeroinitializer }>, align 8
@_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local local_unnamed_addr global { { { [2 x i64] } }, i8, [7 x i8] }
@2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsetuUZXazHC0_22influxdb3_internal_api, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common5spans4SpanENtB6_5Debug3fmtCsetuUZXazHC0_22influxdb3_internal_api }>, align 8
@4 = private unnamed_addr constant [14 x i8] c"DiagnosticNote", align 1
@5 = private unnamed_addr constant [7 x i8] c"message", align 1
@6 = private unnamed_addr constant [4 x i8] c"span", align 1
@7 = private unnamed_addr constant [14 x i8] c"DiagnosticHelp", align 1
@8 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCsetuUZXazHC0_22influxdb3_internal_api }>, align 8
@9 = private unnamed_addr constant [11 x i8] c"InvalidPart", align 1
@10 = private unnamed_addr constant [7 x i8] c"segment", align 1
@11 = private unnamed_addr constant [7 x i8] c"illegal", align 1
@12 = private unnamed_addr constant [12 x i8] c"EmptySegment", align 1
@13 = private unnamed_addr constant [4 x i8] c"path", align 1
@14 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtB6_5Debug3fmtCsetuUZXazHC0_22influxdb3_internal_api }>, align 8
@15 = private unnamed_addr constant [10 x i8] c"BadSegment", align 1
@16 = private unnamed_addr constant [6 x i8] c"source", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsetuUZXazHC0_22influxdb3_internal_api, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsG_NtCs2AWtUsOyxgP_3std4pathNtB5_7PathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@18 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB6_5Debug3fmtCsetuUZXazHC0_22influxdb3_internal_api }>, align 8
@19 = private unnamed_addr constant [12 x i8] c"Canonicalize", align 1
@20 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB6_5Debug3fmtCsetuUZXazHC0_22influxdb3_internal_api }>, align 8
@21 = private unnamed_addr constant [11 x i8] c"InvalidPath", align 1
@22 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsetuUZXazHC0_22influxdb3_internal_api }>, align 8
@23 = private unnamed_addr constant [10 x i8] c"NonUnicode", align 1
@24 = private unnamed_addr constant [14 x i8] c"PrefixMismatch", align 1
@25 = private unnamed_addr constant [6 x i8] c"prefix", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartECsetuUZXazHC0_22influxdb3_internal_api, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCs1LivM9IBWqb_12object_store4path5partsNtB5_11InvalidPartNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartECsetuUZXazHC0_22influxdb3_internal_api, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCs1LivM9IBWqb_12object_store4path5partsNtB5_11InvalidPartNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs5_NtNtCs1LivM9IBWqb_12object_store4path5partsNtB5_11InvalidPartNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @26, ptr @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsetuUZXazHC0_22influxdb3_internal_api }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsetuUZXazHC0_22influxdb3_internal_api, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsetuUZXazHC0_22influxdb3_internal_api, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @28, ptr @_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source, ptr @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5cause, ptr @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsetuUZXazHC0_22influxdb3_internal_api }>, align 8
@30 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt }>, align 8
@31 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt, ptr @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt, ptr @30, ptr @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error5causeCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCsetuUZXazHC0_22influxdb3_internal_api }>, align 8
@32 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@33 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsetuUZXazHC0_22influxdb3_internal_api }>, align 8
@34 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@35 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@36 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@37 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path5ErrorECsetuUZXazHC0_22influxdb3_internal_api, [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtCs1LivM9IBWqb_12object_store4pathNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path5ErrorECsetuUZXazHC0_22influxdb3_internal_api, [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCs1LivM9IBWqb_12object_store4pathNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs7_NtCs1LivM9IBWqb_12object_store4pathNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @37, ptr @_RNvXs6_NtCs1LivM9IBWqb_12object_store4pathNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source, ptr @_RNvYNtNtCs1LivM9IBWqb_12object_store4path5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtCs1LivM9IBWqb_12object_store4path5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtCs1LivM9IBWqb_12object_store4path5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtCs1LivM9IBWqb_12object_store4path5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsetuUZXazHC0_22influxdb3_internal_api }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorECsetuUZXazHC0_22influxdb3_internal_api, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task5errorNtB4_9JoinErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorECsetuUZXazHC0_22influxdb3_internal_api, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task5errorNtB5_9JoinErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task5errorNtB4_9JoinErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @39, ptr @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsetuUZXazHC0_22influxdb3_internal_api, ptr @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsetuUZXazHC0_22influxdb3_internal_api }>, align 8
@41 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@42 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1727666092023348359 to ptr), ptr inttoptr (i64 1656143016589042219 to ptr) }>, align 8
@43 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8258812536611094200 to ptr), ptr inttoptr (i64 -279198307899696793 to ptr) }>, align 8
@44 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7080536387315632578 to ptr), ptr inttoptr (i64 5296459061437125857 to ptr) }>, align 8
@45 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2236892227862618217 to ptr), ptr inttoptr (i64 -1826079698350918737 to ptr) }>, align 8
@46 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2469464724414060682 to ptr), ptr inttoptr (i64 -402711423528045109 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs5_NtCsj9JzdWj4GcM_12arrow_schema5fieldNtB6_5Field3newReECsetuUZXazHC0_22influxdb3_internal_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !9
  %i.d = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !9 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsetuUZXazHC0_22influxdb3_internal_api.exit.i.i.i.i, label %bb.c

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsetuUZXazHC0_22influxdb3_internal_api.exit.i.i.i.i: ; preds = %bb.b
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %2) #26
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsetuUZXazHC0_22influxdb3_internal_api.exit.i.i.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %5 = ptrtoint ptr %i.d to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.i = phi i64 [ %5, %bb.c ], [ 1, %bb.a ]
  store i64 %2, ptr %i.b, align 8, !alias.scope !18, !noalias !19
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !18, !noalias !19
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !18, !noalias !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !20, !noalias !21, !noundef !30
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsetuUZXazHC0_22influxdb3_internal_api.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsetuUZXazHC0_22influxdb3_internal_api.exit.i.i, !prof !31

._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsetuUZXazHC0_22influxdb3_internal_api.exit_crit_edge.i.i: ; preds = %bb.d
  %.pre.i.i = load i64, ptr %i.f, align 8, !noalias !32
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !32
  br label %bb.f

_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsetuUZXazHC0_22influxdb3_internal_api.exit.i.i: ; preds = %bb.d
  %i.j = invoke { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc7 unwind label %bb.e    ; 2 uses

.noexc7:                                          ; preds = %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsetuUZXazHC0_22influxdb3_internal_api.exit.i.i
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.l, ptr %i.m, align 8, !noalias !33
  store i8 1, ptr %i.g, align 8, !noalias !33
  br label %bb.f

bb.e:                                             ; preds = %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsetuUZXazHC0_22influxdb3_internal_api.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj9JzdWj4GcM_12arrow_schema8datatype8DataTypeECsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %.noexc7, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsetuUZXazHC0_22influxdb3_internal_api.exit_crit_edge.i.i
  %.pre-phi13 = phi i64 [ %i.l, %.noexc7 ], [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsetuUZXazHC0_22influxdb3_internal_api.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.k, %.noexc7 ], [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsetuUZXazHC0_22influxdb3_internal_api.exit_crit_edge.i.i ] ; 2 uses
  %i.o = add i64 %.pre-phi, 1
  store i64 %i.o, ptr %i.f, align 8, !noalias !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = zext i1 %4 to i8
  store i8 %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 0, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.pre-phi, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.pre-phi13, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.j, %bb.h, %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.h:                                             ; preds = %bb.e
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #27
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h, %bb.j
  %.pn10 = phi { ptr, i32 } [ %i.w, %bb.j ], [ %i.n, %bb.h ]
  resume { ptr, i32 } %.pn10

bb.j:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsetuUZXazHC0_22influxdb3_internal_api.exit.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj9JzdWj4GcM_12arrow_schema8datatype8DataTypeECsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef align 8 dereferenceable(24) %3) #27
          to label %bb.i unwind label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs5_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB6_6Schema3newINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB8_5field5FieldEECsetuUZXazHC0_22influxdb3_internal_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !20, !noalias !36, !noundef !30
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsetuUZXazHC0_22influxdb3_internal_api.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsetuUZXazHC0_22influxdb3_internal_api.exit.i.i, !prof !31

._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsetuUZXazHC0_22influxdb3_internal_api.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.c, align 8, !noalias !45
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !45
  br label %bb.b

_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsetuUZXazHC0_22influxdb3_internal_api.exit.i.i: ; preds = %bb.a
  %i.g = invoke { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsetuUZXazHC0_22influxdb3_internal_api.exit.i.i
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.i, ptr %i.j, align 8, !noalias !46
  store i8 1, ptr %i.d, align 8, !noalias !46
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsetuUZXazHC0_22influxdb3_internal_api.exit_crit_edge.i.i
  %.pre-phi9 = phi i64 [ %i.i, %.noexc ], [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsetuUZXazHC0_22influxdb3_internal_api.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.h, %.noexc ], [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsetuUZXazHC0_22influxdb3_internal_api.exit_crit_edge.i.i ] ; 2 uses
  %i.k = add i64 %.pre-phi, 1
  store i64 %i.k, ptr %i.c, align 8, !noalias !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.pre-phi, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.pre-phi9, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.l = invoke { ptr, i64 } @_RNvXs3_NtCsj9JzdWj4GcM_12arrow_schema6fieldsNtB5_6FieldsINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB7_5field5FieldEE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %.body unwind label %bb.d, !noalias !54

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !54
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.o = extractvalue { ptr, i64 } %i.l, 0
  %i.p = extractvalue { ptr, i64 } %i.l, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !alias.scope !56, !noalias !57
  store ptr %i.o, ptr %0, align 8, !alias.scope !49, !noalias !58
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !alias.scope !49, !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.m, %bb.c ]
  resume { ptr, i32 } %eh.lpad-body6

bb.f:                                             ; preds = %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsetuUZXazHC0_22influxdb3_internal_api.exit.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEECsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef align 8 dereferenceable(24) %i.b) #27
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden noundef range(i64 0, -1) i64 @_RINvNtCs4NRVxsYgnAr_4core3ptr12align_offsethECsetuUZXazHC0_22influxdb3_internal_api(ptr noundef %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = add i64 %i.a, %i.b
  %i.d = sub i64 0, %1
  %i.e = and i64 %i.c, %i.d
  %i.f = sub i64 %i.e, %i.b                       ; 2 uses
  %i.g = icmp ult i64 %i.f, %1
  tail call void @llvm.assume(i1 %i.g)
  ret i64 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6OdVU8oGBWI_10arrow_data4data9ArrayDataEECsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs6OdVU8oGBWI_10arrow_data4data9ArrayDataENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !59, !alias.scope !60, !noundef !30 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs6OdVU8oGBWI_10arrow_data4data9ArrayDataEECsetuUZXazHC0_22influxdb3_internal_api.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !30, !noundef !30
  %i.d = mul nuw i64 %.val2, 136
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !63
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutable6BufferENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsetuUZXazHC0_22influxdb3_internal_api:bb.a
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !30, !noundef !30
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsetuUZXazHC0_22influxdb3_internal_api.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsetuUZXazHC0_22influxdb3_internal_api.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !59, !noundef !30 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsetuUZXazHC0_22influxdb3_internal_api.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !30, !noundef !30
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsetuUZXazHC0_22influxdb3_internal_api.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsetuUZXazHC0_22influxdb3_internal_api.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2lpxFwhfAIc_5trace3ctx7TraceIdNtBO_6SpanIdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !59, !noundef !30 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsetuUZXazHC0_22influxdb3_internal_api.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !30, !noundef !30
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 16) #25
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsetuUZXazHC0_22influxdb3_internal_api.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsetuUZXazHC0_22influxdb3_internal_api.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !59, !noundef !30 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsetuUZXazHC0_22influxdb3_internal_api.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !30, !noundef !30
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #25
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsetuUZXazHC0_22influxdb3_internal_api.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsetuUZXazHC0_22influxdb3_internal_api.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !59, !noundef !30 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsetuUZXazHC0_22influxdb3_internal_api.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !30, !noundef !30
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsetuUZXazHC0_22influxdb3_internal_api.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsetuUZXazHC0_22influxdb3_internal_api.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB6_5Debug3fmtCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !30, !align !426, !noundef !30
  %i.b = tail call noundef zeroext i1 @_RNvXsG_NtCs2AWtUsOyxgP_3std4pathNtB5_7PathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !30, !align !426, !noundef !30 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !434, !noalias !437, !nonnull !30, !noundef !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !434, !noalias !437, !noundef !30
  %i.f = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !434
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticHelpNtB6_5Debug3fmtCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !30, !align !426, !noundef !30 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !439
  store ptr %i.b, ptr %i.a, align 8, !noalias !439
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 7, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !439
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticNoteNtB6_5Debug3fmtCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !30, !align !426, !noundef !30 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !443
  store ptr %i.b, ptr %i.a, align 8, !noalias !443
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 7, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !443
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnNtB6_5Debug3fmtCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !30, !align !426, !noundef !30
  %i.b = tail call noundef zeroext i1 @_RNvXNtCslWccy9wMl4f_17datafusion_common6columnNtB2_6ColumnNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB6_5Debug3fmtCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !30, !align !426, !noundef !30
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtB6_5Debug3fmtCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !30, !align !426, !noundef !30
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task5errorNtB5_9JoinErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !30, !align !426, !noundef !30 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !30, !noundef !30
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !30
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtNtCs1LivM9IBWqb_12object_store4path5partsNtB5_11InvalidPartNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array10byte_arrayNtNtCs6OdVU8oGBWI_10arrow_data4data9ArrayDataINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEEE4fromCsetuUZXazHC0_22influxdb3_internal_api(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [184 x i8], align 8               ; 17 uses
  %i.d = alloca [184 x i8], align 8               ; 4 uses
  %i.e = alloca [184 x i8], align 8               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !noundef !30
  %i.j = lshr i64 %i.i, 2
  %i.k = add nsw i64 %i.j, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store i64 8, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 %i.k, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i64 0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i64 0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 177
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.l = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #25 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !447

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

.thread36:                                        ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.thread31

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  store i64 2, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 2, ptr %i.r, align 8
  invoke void @_RNvMs3_NtCs6OdVU8oGBWI_10arrow_data4dataNtB5_16ArrayDataBuilder7buffers(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.c unwind label %.thread36

bb.c:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  call void @_RNvMs3_NtCs6OdVU8oGBWI_10arrow_data4dataNtB5_16ArrayDataBuilder5nulls(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.d, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvMs3_NtCs6OdVU8oGBWI_10arrow_data4dataNtB5_16ArrayDataBuilder15build_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6OdVU8oGBWI_10arrow_data4data16ArrayDataBuilderECsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef align 8 dereferenceable(184) %i.c) #27
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.h, %bb.g, %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.v = load ptr, ptr %i.f, align 8, !alias.scope !457, !nonnull !30, !noundef !30
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !457
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutable6BufferECsetuUZXazHC0_22influxdb3_internal_api.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutable6BufferECsetuUZXazHC0_22influxdb3_internal_api.exit unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutable6BufferECsetuUZXazHC0_22influxdb3_internal_api.exit: ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !467, !nonnull !30, !noundef !30
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !467
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.h, label %.thread31

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutable6BufferECsetuUZXazHC0_22influxdb3_internal_api.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.thread31 unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferEECsetuUZXazHC0_22influxdb3_internal_api.exit: ; preds = %bb.i, %.thread31, %bb.j
  resume { ptr, i32 } %.pn3035

.thread31:                                        ; preds = %bb.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutable6BufferECsetuUZXazHC0_22influxdb3_internal_api.exit, %.thread36
  %.pn3035 = phi { ptr, i32 } [ %i.n, %.thread36 ], [ %i.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutable6BufferECsetuUZXazHC0_22influxdb3_internal_api.exit ], [ %i.t, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !468, !noundef !30 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferEECsetuUZXazHC0_22influxdb3_internal_api.exit, label %bb.i

bb.i:                                             ; preds = %.thread31
  %i.af = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !471
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferEECsetuUZXazHC0_22influxdb3_internal_api.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferEECsetuUZXazHC0_22influxdb3_internal_api.exit unwind label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtCs1LivM9IBWqb_12object_store4pathNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !103, !noundef !30 ; 3 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775807
  tail call void @llvm.assume(i1 %i.h)
  %i.i = xor i64 %i.g, -9223372036854775808
  %i.j = icmp slt i64 %i.g, 0
  %i.k = select i1 %i.j, i64 %i.i, i64 1
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.f, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.n, ptr %i.e, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.q, ptr %i.d, align 8
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.c, align 8
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.v, ptr %i.b, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.y, ptr %i.a, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.m, %bb.c ], [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ %i.t, %bb.f ], [ %i.w, %bb.g ], [ %i.z, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXs6_NtCs1LivM9IBWqb_12object_store4pathNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #7 {
bb.a:
end_hunk_1
