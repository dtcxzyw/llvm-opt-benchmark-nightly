Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_http_transport_reqwest-ace230cc2b728a46.opendal_http_transport_reqwest.ebf727c168c768d5-cgu.0?download=true
inline.NumInlined: 441
inline.NumDeleted: 266
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCselJpgKOOZlr_6anyhow5error11object_dropNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RINvNtCselJpgKOOZlr_6anyhow5error10object_refNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RINvNtCselJpgKOOZlr_6anyhow5error12object_boxedNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RINvNtCselJpgKOOZlr_6anyhow5error23object_reallocate_boxedNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RINvNtCselJpgKOOZlr_6anyhow5error15object_downcastNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RINvNtCselJpgKOOZlr_6anyhow5error17object_drop_frontNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvNtCselJpgKOOZlr_6anyhow5error12no_backtrace }>, align 8
@1 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCselJpgKOOZlr_6anyhow5error11object_dropNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RINvNtCselJpgKOOZlr_6anyhow5error10object_refNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RINvNtCselJpgKOOZlr_6anyhow5error12object_boxedNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RINvNtCselJpgKOOZlr_6anyhow5error23object_reallocate_boxedNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RINvNtCselJpgKOOZlr_6anyhow5error15object_downcastNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RINvNtCselJpgKOOZlr_6anyhow5error17object_drop_frontNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvNtCselJpgKOOZlr_6anyhow5error12no_backtrace }>, align 8
@2 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtCskg2ocPruTU7_30opendal_http_transport_reqwest16ReqwestTransportE5force0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1M_, ptr @_RNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtCskg2ocPruTU7_30opendal_http_transport_reqwest16ReqwestTransportE5force0E0B1H_ }>, align 8
@3 = private unnamed_addr constant [77 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/sync/once.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"L\00\00\00\00\00\00\00\E2\00\00\00\14\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskzxhmhyEueV_12futures_util6stream10try_stream6MapErrINtBE_5MapOkINtNtBE_10try_filter9TryFilterINtNtCs9xqX0QiqdKy_14http_body_util6stream14BodyDataStreamINtNtNtB2l_11combinators7map_err6MapErrINtNtB3h_8box_body7BoxBodyNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5J_4SyncEL_EEINvNtCsl7c65Kbohav_7reqwest5error6decodeB4P_EEEINtNtNtB4_6future5ready5ReadybENCNCNvXs2_Cskg2ocPruTU7_30opendal_http_transport_reqwestNtB7G_16ReqwestTransportNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport13HttpTransport5fetch0s0_0ENvYNtNtB8S_6buffer6BufferINtNtB4_7convert4FromB4f_E4fromENCB7y_s1_0EEB7G_, [16 x i8] c"\90\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsv_NtNtCskzxhmhyEueV_12futures_util6stream10try_streamINtB5_6MapErrINtB5_5MapOkINtNtB5_10try_filter9TryFilterINtNtCs9xqX0QiqdKy_14http_body_util6stream14BodyDataStreamINtNtNtB1S_11combinators7map_err6MapErrINtNtB2O_8box_body7BoxBodyNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCsgxBkk5gSRhY_4core5error5ErrorNtNtB4Z_6marker4SendNtB5w_4SyncEL_EEINvNtCsl7c65Kbohav_7reqwest5error6decodeB4m_EEEINtNtNtB4Z_6future5ready5ReadybENCNCNvXs2_Cskg2ocPruTU7_30opendal_http_transport_reqwestNtB7v_16ReqwestTransportNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport13HttpTransport5fetch0s0_0ENvYNtNtB8H_6buffer6BufferINtNtB4Z_7convert4FromB3M_E4fromENCB7n_s1_0ENtNtCsagCT4lbS8Em_12futures_core6stream6Stream9poll_nextB7v_, ptr @_RNvXsv_NtNtCskzxhmhyEueV_12futures_util6stream10try_streamINtB5_6MapErrINtB5_5MapOkINtNtB5_10try_filter9TryFilterINtNtCs9xqX0QiqdKy_14http_body_util6stream14BodyDataStreamINtNtNtB1S_11combinators7map_err6MapErrINtNtB2O_8box_body7BoxBodyNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCsgxBkk5gSRhY_4core5error5ErrorNtNtB4Z_6marker4SendNtB5w_4SyncEL_EEINvNtCsl7c65Kbohav_7reqwest5error6decodeB4m_EEEINtNtNtB4Z_6future5ready5ReadybENCNCNvXs2_Cskg2ocPruTU7_30opendal_http_transport_reqwestNtB7v_16ReqwestTransportNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport13HttpTransport5fetch0s0_0ENvYNtNtB8H_6buffer6BufferINtNtB4Z_7convert4FromB3M_E4fromENCB7n_s1_0ENtNtCsagCT4lbS8Em_12futures_core6stream6Stream9size_hintB7v_ }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http3uri3UriECskg2ocPruTU7_30opendal_http_transport_reqwest, [16 x i8] c"X\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsgxBkk5gSRhY_4core3anyNtNtCs76KlaVGnJsc_4http3uri3UriNtB2_3Any7type_idCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvXs1_NtCs76KlaVGnJsc_4http10extensionsNtNtB7_3uri3UriNtB5_8AnyClone9clone_boxCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvXs1_NtCs76KlaVGnJsc_4http10extensionsNtNtB7_3uri3UriNtB5_8AnyClone6as_anyCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvXs1_NtCs76KlaVGnJsc_4http10extensionsNtNtB7_3uri3UriNtB5_8AnyClone10as_any_mutCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvXs1_NtCs76KlaVGnJsc_4http10extensionsNtNtB7_3uri3UriNtB5_8AnyClone8into_anyCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvXs1_NtCs76KlaVGnJsc_4http10extensionsNtNtB7_3uri3UriNtB5_8AnyClone9type_nameCskg2ocPruTU7_30opendal_http_transport_reqwest }>, align 8
@7 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2575837496534388768 to ptr), ptr inttoptr (i64 3000631394279709211 to ptr) }>, align 8
@8 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCs8HcOsDT3sMt_3url6parserNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt }>, align 8
@9 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsg_NtCs8HcOsDT3sMt_3url6parserNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt, ptr @_RNvXs9_NtCs8HcOsDT3sMt_3url6parserNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr @8, ptr @_RNvYNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvYNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvYNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvYNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvYNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCskg2ocPruTU7_30opendal_http_transport_reqwest }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsl7c65Kbohav_7reqwest5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsl7c65Kbohav_7reqwest5errorNtB4_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt, ptr @_RNvXs0_NtCsl7c65Kbohav_7reqwest5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr @10, ptr @_RNvXs1_NtCsl7c65Kbohav_7reqwest5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source, ptr @_RNvYNtNtCsl7c65Kbohav_7reqwest5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvYNtNtCsl7c65Kbohav_7reqwest5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvYNtNtCsl7c65Kbohav_7reqwest5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvYNtNtCsl7c65Kbohav_7reqwest5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCskg2ocPruTU7_30opendal_http_transport_reqwest }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEECskg2ocPruTU7_30opendal_http_transport_reqwest, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCskg2ocPruTU7_30opendal_http_transport_reqwest }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEECskg2ocPruTU7_30opendal_http_transport_reqwest, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @12, ptr @_RNvXs7_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core5error5Error6sourceCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core5error5Error7type_idCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core5error5Error5causeCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core5error5Error7provideCskg2ocPruTU7_30opendal_http_transport_reqwest }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorEECskg2ocPruTU7_30opendal_http_transport_reqwest, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCskg2ocPruTU7_30opendal_http_transport_reqwest }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorEECskg2ocPruTU7_30opendal_http_transport_reqwest, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorENtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @14, ptr @_RNvXs7_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error6sourceCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error7type_idCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error5causeCskg2ocPruTU7_30opendal_http_transport_reqwest, ptr @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error7provideCskg2ocPruTU7_30opendal_http_transport_reqwest }>, align 8
@16 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8016930996482052805 to ptr), ptr inttoptr (i64 7843138411365202819 to ptr) }>, align 8
@17 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1130496635228172335 to ptr), ptr inttoptr (i64 3821503898198274481 to ptr) }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"L\00\00\00\00\00\00\00\E2\00\00\001\00\00\00" }>, align 8
@19 = private unnamed_addr constant [22 x i8] c"request url is invalid", align 1
@20 = private unnamed_addr constant [14 x i8] c"reqwest::fetch", align 1
@21 = private unnamed_addr constant [3 x i8] c"url", align 1
@22 = private unnamed_addr constant [28 x i8] c"read data from http response", align 1
@23 = private unnamed_addr constant [17 x i8] c"send http request", align 1
@24 = private unnamed_addr constant [13 x i8] c"reqwest::send", align 1
@25 = private unnamed_addr constant [35 x i8] c"http-transports/reqwest/src/lib.rs\00", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"\22\00\00\00\00\00\00\00L\00\00\00O\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"\22\00\00\00\00\00\00\00\91\00\00\00$\00\00\00" }>, align 8
@28 = private unnamed_addr constant [27 x i8] c"response must build succeed", align 1
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"\22\00\00\00\00\00\00\00\A1\00\00\00 \00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"\22\00\00\00\00\00\00\00\B2\00\00\00O\00\00\00" }>, align 8
@_RNvCskg2ocPruTU7_30opendal_http_transport_reqwest25DEFAULT_REQWEST_TRANSPORT = global <{ ptr, [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvCskg2ocPruTU7_30opendal_http_transport_reqwest25DEFAULT_REQWEST_TRANSPORT0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_onceB6_, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@31 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs76KlaVGnJsc_4http5errorNtB2_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt }>, align 8
@32 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCsgxBkk5gSRhY_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@33 = private unnamed_addr constant [16 x i8] c"ReqwestTransport", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs3_Cskg2ocPruTU7_30opendal_http_transport_reqwestNtBJ_20LazyReqwestTransportNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport13HttpTransport5fetch0EBJ_, [16 x i8] c"\B0\04\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXs3_Cskg2ocPruTU7_30opendal_http_transport_reqwestNtB7_20LazyReqwestTransportNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport13HttpTransport5fetch0B7_ }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http3uri3UriECskg2ocPruTU7_30opendal_http_transport_reqwest, [16 x i8] c"X\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsgxBkk5gSRhY_4core3anyNtNtCs76KlaVGnJsc_4http3uri3UriNtB2_3Any7type_idCskg2ocPruTU7_30opendal_http_transport_reqwest }>, align 8
@36 = private unnamed_addr constant [14 x i8] c"http::uri::Uri", align 1
@37 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@38 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @37, [24 x i8] zeroinitializer }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskg2ocPruTU7_30opendal_http_transport_reqwest, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs6i54tJFfzR_5alloc6string6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write9write_fmtCskg2ocPruTU7_30opendal_http_transport_reqwest }>, align 8
@40 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@41 = private unnamed_addr constant [76 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/alloc/src/string.rs\00", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"K\00\00\00\00\00\00\00\7F\0B\00\00\0E\00\00\00" }>, align 8
@43 = private unnamed_addr constant [5 x i8] c"Error", align 1
@44 = private unnamed_addr constant [9 x i8] c"EmptyHost", align 1
@45 = private unnamed_addr constant [9 x i8] c"IdnaError", align 1
@46 = private unnamed_addr constant [11 x i8] c"InvalidPort", align 1
@47 = private unnamed_addr constant [18 x i8] c"InvalidIpv4Address", align 1
@48 = private unnamed_addr constant [18 x i8] c"InvalidIpv6Address", align 1
@49 = private unnamed_addr constant [22 x i8] c"InvalidDomainCharacter", align 1
@50 = private unnamed_addr constant [22 x i8] c"RelativeUrlWithoutBase", align 1
@51 = private unnamed_addr constant [32 x i8] c"RelativeUrlWithCannotBeABaseBase", align 1
@52 = private unnamed_addr constant [25 x i8] c"SetHostOnCannotBeABaseUrl", align 1
@53 = private unnamed_addr constant [8 x i8] c"Overflow", align 1
@54 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@55 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 5563929419595574345 to ptr), ptr inttoptr (i64 8478964974589150749 to ptr) }>, align 8
@56 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 852296266071951157 to ptr), ptr inttoptr (i64 -617637004511603908 to ptr) }>, align 8
@switch.table._RNvXsg_NtCs8HcOsDT3sMt_3url6parserNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt = private unnamed_addr constant [10 x i8] c"\09\09\0B\12\12\16\16 \19\08", align 8
@switch.table._RNvXsg_NtCs8HcOsDT3sMt_3url6parserNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.101 = private unnamed_addr constant [10 x ptr] [ptr @44, ptr @45, ptr @46, ptr @47, ptr @48, ptr @49, ptr @50, ptr @51, ptr @52, ptr @53], align 8

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(i8 noundef range(i8 0, 10) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %0, ptr %i.c, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !32
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1201) 64, i64 noundef range(i64 1, 9) 8) #20, !noalias !32 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEE3newCskg2ocPruTU7_30opendal_http_transport_reqwest.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load i64, ptr %i.b, align 8, !range !9, !alias.scope !33, !noundef !10
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEE3newCskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !36
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1201) 64, i64 noundef range(i64 1, 9) 8) #20, !noalias !36 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorEE3newCskg2ocPruTU7_30opendal_http_transport_reqwest.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorEECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #23
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorEE3newCskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCselJpgKOOZlr_6anyhow5error10object_refNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @9, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCselJpgKOOZlr_6anyhow5error10object_refNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @11, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCselJpgKOOZlr_6anyhow5error11object_dropNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !41, !noundef !10
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #20
  resume { ptr, i32 } %i.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #20
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCselJpgKOOZlr_6anyhow5error11object_dropNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !46, !noundef !10
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #23
          to label %bb.f unwind label %bb.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorEEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.e, %bb.c ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #20
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorEEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCselJpgKOOZlr_6anyhow5error12object_boxedNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @13, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCselJpgKOOZlr_6anyhow5error12object_boxedNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @15, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_RINvNtCselJpgKOOZlr_6anyhow5error15object_downcastNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !10
  %i.b = icmp eq i128 %i.a, 144680367009134802484556807290616704315
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_RINvNtCselJpgKOOZlr_6anyhow5error15object_downcastNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !10
  %i.b = icmp eq i128 %i.a, 70494304386746969428861282894633283631
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCselJpgKOOZlr_6anyhow5error17object_drop_frontNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noundef nonnull %0, ptr noalias nofree readonly align 8 captures(none) dead_on_return %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !51, !noundef !10
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEEEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEEEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #20
  resume { ptr, i32 } %i.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEEEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #20
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCselJpgKOOZlr_6anyhow5error17object_drop_frontNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noundef nonnull %0, ptr noalias nofree readonly align 8 captures(none) dead_on_return %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !56, !noundef !10
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsl7c65Kbohav_7reqwest5error5ErrorEEEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
end_hunk_0
begin_hunk_1_@_RNvXs7_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core5error5Error6sourceCskg2ocPruTU7_30opendal_http_transport_reqwest:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs7_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error6sourceCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !10, !nonnull !10
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #26
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCselJpgKOOZlr_6anyhow3fmtNtNtB4_5error9ErrorImpl5debug(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorENtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCselJpgKOOZlr_6anyhow3fmtNtNtB4_5error9ErrorImpl5debug(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !10, !nonnull !10
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCsl7c65Kbohav_7reqwest5error5ErrorENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !10, !nonnull !10
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsgxBkk5gSRhY_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1147, !noundef !10 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1147, !nonnull !10, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1147, !nonnull !10, !noundef !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !1147
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !1153
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1154, !noalias !1153, !noundef !10 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1154, !noalias !1153, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1154, !noalias !1153
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !1154, !noalias !1153
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs_Cskg2ocPruTU7_30opendal_http_transport_reqwestNtB4_16ReqwestTransportNtNtCsgxBkk5gSRhY_4core7default7Default7default() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCskg2ocPruTU7_30opendal_http_transport_reqwest25DEFAULT_REQWEST_TRANSPORT, i64 8) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCskg2ocPruTU7_30opendal_http_transport_reqwest16ReqwestTransportE5force0EB1F_.exit, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvCskg2ocPruTU7_30opendal_http_transport_reqwest25DEFAULT_REQWEST_TRANSPORT, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs9k3SxhrAWiO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCskg2ocPruTU7_30opendal_http_transport_reqwest25DEFAULT_REQWEST_TRANSPORT, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCskg2ocPruTU7_30opendal_http_transport_reqwest16ReqwestTransportE5force0EB1F_.exit

_RINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCskg2ocPruTU7_30opendal_http_transport_reqwest16ReqwestTransportE5force0EB1F_.exit: ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr @_RNvCskg2ocPruTU7_30opendal_http_transport_reqwest25DEFAULT_REQWEST_TRANSPORT, align 8, !nonnull !10, !noundef !10
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCskg2ocPruTU7_30opendal_http_transport_reqwest16ReqwestTransportE5force0EB1F_.exit
  %i.h = load ptr, ptr @_RNvCskg2ocPruTU7_30opendal_http_transport_reqwest25DEFAULT_REQWEST_TRANSPORT, align 8, !nonnull !10, !noundef !10
  ret ptr %i.h

bb.d:                                             ; preds = %_RINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCskg2ocPruTU7_30opendal_http_transport_reqwest16ReqwestTransportE5force0EB1F_.exit
  call void @llvm.trap()
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorE4fromCskg2ocPruTU7_30opendal_http_transport_reqwest(i8 noundef range(i8 0, 10) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(i8 noundef range(i8 0, 10) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtCsl7c65Kbohav_7reqwest5error5ErrorE4fromCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error18construct_from_stdNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest.exit unwind label %bb.c

_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error18construct_from_stdNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #23
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCskzxhmhyEueV_12futures_util3fnsNCNCNvXs2_Cskg2ocPruTU7_30opendal_http_transport_reqwestNtBM_16ReqwestTransportNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport13HttpTransport5fetch0s1_0INtB4_6FnMut1NtNtCsl7c65Kbohav_7reqwest5error5ErrorE8call_mutBM_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, ptr noalias noundef nonnull align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 5 uses
  %i.g = alloca [88 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %2, ptr %i.h, align 8, !noalias !1162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1162
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.e, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 28)
          to label %bb.b unwind label %.thread9.i, !noalias !1163

.thread9.i:                                       ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error14with_operationReECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 14)
          to label %bb.c unwind label %.thread9.i, !noalias !1163

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1164
  store i64 0, ptr %i.c, align 8, !noalias !1164
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1164
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1164
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.i, align 8, !noalias !1164
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !1164
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !1164
  store ptr %i.c, ptr %i.b, align 8, !noalias !1164
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @39, ptr %i.j, align 8, !noalias !1164
  %i.k = invoke noundef zeroext i1 @_RNvXsh_NtCs76KlaVGnJsc_4http3uriNtB5_3UriNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.d, !noalias !1165

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #23
          to label %bb.k unwind label %bb.g, !noalias !1165

bb.e:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.f, label %bb.h, !prof !8

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #21
          to label %.noexc.i.i unwind label %bb.d, !noalias !1165

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !1165
  unreachable

.body.i:                                          ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1164
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextNtNtCs6i54tJFfzR_5alloc6string6StringECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.i unwind label %.body.i, !noalias !1166

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1162
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.p = load i16, ptr %i.o, align 8, !range !24, !alias.scope !1161, !noalias !1163, !noundef !10
  switch i16 %i.p, label %_RNCNCNvXs2_Cskg2ocPruTU7_30opendal_http_transport_reqwestNtB9_16ReqwestTransportNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport13HttpTransport5fetch0s1_0B9_.exit [
    i16 1, label %bb.j
    i16 4, label %bb.j
    i16 5, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i8 1, ptr %i.q, align 8, !noalias !1162
  br label %_RNCNCNvXs2_Cskg2ocPruTU7_30opendal_http_transport_reqwestNtB9_16ReqwestTransportNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport13HttpTransport5fetch0s1_0B9_.exit

bb.k:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f) #23
          to label %.thread.i unwind label %bb.l, !noalias !1166

bb.l:                                             ; preds = %.thread.i, %bb.k
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !1166
  unreachable

bb.m:                                             ; preds = %.thread.i
  resume { ptr, i32 } %.pn7.i

.thread.i:                                        ; preds = %bb.k, %.body.i, %.thread9.i
  %.pn7.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread9.i ], [ %i.n, %.body.i ], [ %i.l, %bb.k ]
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #23
          to label %bb.m unwind label %bb.l, !noalias !1166

_RNCNCNvXs2_Cskg2ocPruTU7_30opendal_http_transport_reqwestNtB9_16ReqwestTransportNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport13HttpTransport5fetch0s1_0B9_.exit: ; preds = %bb.i, %bb.j
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error10set_sourceNtNtCsl7c65Kbohav_7reqwest5error5ErrorECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.g, ptr noalias noundef nonnull align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtCskzxhmhyEueV_12futures_util3fnsNvYNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE4fromINtB4_6FnMut1B28_E8call_mutCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  store ptr null, ptr %0, align 8, !alias.scope !1175, !noalias !1176
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !alias.scope !1177
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs9xqX0QiqdKy_14http_body_util11combinators7map_errINtB4_6MapErrINtNtNtCsl7c65Kbohav_7reqwest10async_impl4body13IntoBytesBodyNtCskg2ocPruTU7_30opendal_http_transport_reqwest14HttpBufferBodyENvYNtNtCsgxBkk5gSRhY_4core7convert10InfallibleINtB3h_4IntoINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB3j_5error5ErrorNtNtB3j_6marker4SendNtB53_4SyncEL_EE4intoENtCsa5pOSVVJaQf_9http_body4Body10poll_frameB2b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsa_NtNtCsl7c65Kbohav_7reqwest10async_impl4bodyINtB5_13IntoBytesBodyNtCskg2ocPruTU7_30opendal_http_transport_reqwest14HttpBufferBodyENtCsa5pOSVVJaQf_9http_body4Body10poll_frameB19_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.b = load i64, ptr %i.a, align 8, !range !1178, !noundef !10
  switch i64 %i.b, label %bb.d [
    i64 -3, label %bb.b
    i64 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i64 3, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -3, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs9xqX0QiqdKy_14http_body_util11combinators7map_errINtB4_6MapErrINtNtNtCsl7c65Kbohav_7reqwest10async_impl4body13IntoBytesBodyNtCskg2ocPruTU7_30opendal_http_transport_reqwest14HttpBufferBodyENvYNtNtCsgxBkk5gSRhY_4core7convert10InfallibleINtB3h_4IntoINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB3j_5error5ErrorNtNtB3j_6marker4SendNtB53_4SyncEL_EE4intoENtCsa5pOSVVJaQf_9http_body4Body13is_end_streamB2b_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !10
  %.not.i.i = icmp eq ptr %i.a, null
  %.sroa.0.0.in.v.i.i = select i1 %.not.i.i, i64 24, i64 16
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.in.v.i.i
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8, !noundef !10
  %i.b = icmp eq i64 %.sroa.0.0.i.i, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtNtCs9xqX0QiqdKy_14http_body_util11combinators7map_errINtB4_6MapErrINtNtNtCsl7c65Kbohav_7reqwest10async_impl4body13IntoBytesBodyNtCskg2ocPruTU7_30opendal_http_transport_reqwest14HttpBufferBodyENvYNtNtCsgxBkk5gSRhY_4core7convert10InfallibleINtB3h_4IntoINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB3j_5error5ErrorNtNtB3j_6marker4SendNtB53_4SyncEL_EE4intoENtCsa5pOSVVJaQf_9http_body4Body9size_hintB2b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
end_hunk_1
