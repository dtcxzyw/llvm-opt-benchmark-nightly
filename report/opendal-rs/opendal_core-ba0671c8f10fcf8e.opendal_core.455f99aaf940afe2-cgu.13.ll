Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.13?download=true
inline.NumInlined: 509
inline.NumDeleted: 257
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [23 x i8] c"fewer elements in array", align 1
@1 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @0, [8 x i8] c"\17\00\00\00\00\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCskkYVyhWgx5W_10serde_core2deReNtB5_8Expected3fmt }>, align 8
@3 = private unnamed_addr constant [34 x i8] c"struct Capability with 90 elements", align 1
@4 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @3, [8 x i8] c"\22\00\00\00\00\00\00\00" }>, align 8
@5 = private unnamed_addr constant [16 x i8] c"value is missing", align 1
@6 = private unnamed_addr constant [37 x i8] c"core/src/types/read/buffer_stream.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"$\00\00\00\00\00\00\00~\00\00\00\1A\00\00\00" }>, align 8
@8 = private unnamed_addr constant [29 x i8] c"read requires a bounded range", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNCNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBL_13ChunkedReader3new00EBR_, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNCNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtB9_13ChunkedReader3new00Bf_ }>, align 8
@10 = private unnamed_addr constant [43 x i8] c"concurrent tasks met an unrecoverable error", align 1
@11 = private unnamed_addr constant [29 x i8] c"core/src/raw/futures_util.rs\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"\1C\00\00\00\00\00\00\00\15\01\00\007\00\00\00" }>, align 8
@13 = private unnamed_addr constant [23 x i8] c"tasks must be available", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"\1C\00\00\00\00\00\00\000\01\00\00\1E\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"\1C\00\00\00\00\00\00\00\F6\00\00\00\12\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"\1C\00\00\00\00\00\00\00\DD\00\00\00=\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"\1C\00\00\00\00\00\00\00\05\01\00\00\1E\00\00\00" }>, align 8
@18 = private unnamed_addr constant [31 x i8] c"core/src/types/context/read.rs\00", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"\1E\00\00\00\00\00\00\00\ED\00\00\00X\00\00\00" }>, align 8
@20 = private unnamed_addr constant [27 x i8] c"core/src/raw/enum_utils.rs\00", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"\1A\00\00\00\00\00\00\007\00\00\000\00\00\00" }>, align 8
@22 = private unnamed_addr constant [29 x i8] c"core/src/raw/oio/read/api.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"\1C\00\00\00\00\00\00\00^\00\00\00Y\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"\1C\00\00\00\00\00\00\00b\00\00\00I\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"$\00\00\00\00\00\00\00\D4\00\00\000\00\00\00" }>, align 8
@26 = private unnamed_addr constant [26 x i8] c"operation is not supported", align 1
@27 = private unnamed_addr constant [36 x i8] c"core/src/services/memory/backend.rs\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"#\00\00\00\00\00\00\00y\00\00\00\1E\00\00\00" }>, align 8
@29 = private unnamed_addr constant [29 x i8] c"memory doesn't have this path", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"#\00\00\00\00\00\00\00\80\00\00\00Y\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"#\00\00\00\00\00\00\00\BA\00\00\00\1B\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"#\00\00\00\00\00\00\00\C1\00\00\00_\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"$\00\00\00\00\00\00\00]\01\00\00\1F\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiNtNtNtBd_5types6buffer6BufferNtB5_13ReadStreamDyn8read_dynBd_, ptr @_RNvXs4_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiNtNtNtBd_5types6buffer6BufferNtB5_13ReadStreamDyn12read_all_dynBd_ }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"#\00\00\00\00\00\00\00\D9\00\00\00^\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"\1C\00\00\00\00\00\00\00\B5\00\00\004\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"$\00\00\00\00\00\00\00J\00\00\000\00\00\00" }>, align 8
@38 = private unnamed_addr constant [37 x i8] c"core/src/raw/oio/read/stream_read.rs\00", align 1
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"$\00\00\00\00\00\00\007\00\00\00^\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"$\00\00\00\00\00\00\00;\00\00\00I\00\00\00" }>, align 8
@41 = private unnamed_addr constant [31 x i8] c"reader got unexpected data size", align 1
@42 = private unnamed_addr constant [6 x i8] c"expect", align 1
@43 = private unnamed_addr constant [6 x i8] c"actual", align 1
@44 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RNvNtCsk2Y6yuwWMc1_5bytes5bytes12static_clone, ptr @_RNvNtCsk2Y6yuwWMc1_5bytes5bytes13static_to_vec, ptr @_RNvNtCsk2Y6yuwWMc1_5bytes5bytes13static_to_mut, ptr @_RNvNtCsk2Y6yuwWMc1_5bytes5bytes16static_is_unique, ptr @_RNvNtCsk2Y6yuwWMc1_5bytes5bytes11static_drop }>, align 8
@45 = private unnamed_addr constant [6 x i8] c"memory", align 1
@46 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@47 = private unnamed_addr constant [1 x i8] c"/", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete15one_shot_delete14OneShotDeleterNtNtNtNtBM_8services6memory7deleter13MemoryDeleterEEBM_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete3apiINtNtB6_15one_shot_delete14OneShotDeleterNtNtNtNtBc_8services6memory7deleter13MemoryDeleterENtB4_9DeleteDyn10delete_dynBc_, ptr @_RNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete3apiINtNtB6_15one_shot_delete14OneShotDeleterNtNtNtNtBc_8services6memory7deleter13MemoryDeleterENtB4_9DeleteDyn9close_dynBc_ }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtBJ_13MemoryBackendNtNtNtBP_3raw8accessor7Service6rename0EBP_, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtB7_13MemoryBackendNtNtNtBd_3raw8accessor7Service6rename0Bd_ }>, align 8
@50 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio7compose3apiuNtB4_10ComposeDyn11compose_dynBc_, ptr @_RNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio7compose3apiuNtB4_10ComposeDyn9close_dynBc_ }>, align 8
@51 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtBJ_13MemoryBackendNtNtNtBP_3raw8accessor7Service7presign0EBP_, [16 x i8] c"`\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtB7_13MemoryBackendNtNtNtBd_3raw8accessor7Service7presign0Bd_ }>, align 8
@52 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps9RpRestoreNtNtNtB1w_5types5error5ErrorEEEB1w_, [16 x i8] c"X\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future5readyINtB4_5ReadyINtNtB8_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps9RpRestoreNtNtNtB1i_5types5error5ErrorEENtNtB6_6future6Future4pollB1i_ }>, align 8
@53 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtBJ_13MemoryBackendNtNtNtBP_3raw8accessor7Service10create_dir0EBP_, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtB7_13MemoryBackendNtNtNtBd_3raw8accessor7Service10create_dir0Bd_ }>, align 8
@54 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4copy3apiuNtB5_7CopyDyn8next_dynBd_, ptr @_RNvXs3_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4copy3apiuNtB5_7CopyDyn9close_dynBd_, ptr @_RNvXs3_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4copy3apiuNtB5_7CopyDyn9abort_dynBd_ }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list14hierarchy_list15HierarchyListerNtNtNtNtBM_8services6memory6lister12MemoryListerEEBM_, [16 x i8] c"\88\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtB7_14hierarchy_list15HierarchyListerNtNtNtNtBd_8services6memory6lister12MemoryListerENtB5_7ListDyn8next_dynBd_ }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read11stream_read12StreamReaderNtNtNtNtBM_8services6memory7backend12MemoryReaderEEBM_, [16 x i8] c" \01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtB6_11stream_read12StreamReaderNtNtNtNtBc_8services6memory7backend12MemoryReaderENtB4_7ReadDyn8open_dynBc_, ptr @_RNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtB6_11stream_read12StreamReaderNtNtNtNtBc_8services6memory7backend12MemoryReaderENtB4_7ReadDyn8read_dynBc_ }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtBJ_13MemoryBackendNtNtNtBP_3raw8accessor7Service4stat0EBP_, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtB7_13MemoryBackendNtNtNtBd_3raw8accessor7Service4stat0Bd_ }>, align 8
@58 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory6writer12MemoryWriterEBJ_, [16 x i8] c"`\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5write3apiNtNtNtNtBc_8services6memory6writer12MemoryWriterNtB4_8WriteDyn9write_dynBc_, ptr @_RNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5write3apiNtNtNtNtBc_8services6memory6writer12MemoryWriterNtB4_8WriteDyn13copy_from_dynBc_, ptr @_RNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5write3apiNtNtNtNtBc_8services6memory6writer12MemoryWriterNtB4_8WriteDyn9close_dynBc_, ptr @_RNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5write3apiNtNtNtNtBc_8services6memory6writer12MemoryWriterNtB4_8WriteDyn9abort_dynBc_ }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"$\00\00\00\00\00\00\00\\\01\00\004\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBJ_12BufferStreamNtNtCsagCT4lbS8Em_12futures_core6stream6Stream9poll_next0EBP_, [16 x i8] c"\B0\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtB7_12BufferStreamNtNtCsagCT4lbS8Em_12futures_core6stream6Stream9poll_next0Bd_ }>, align 8
@61 = private unnamed_addr constant [31 x i8] c"`Ready` polled after completion", align 1
@62 = private unnamed_addr constant [81 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/core/src/future/ready.rs\00", align 1
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"P\00\00\00\00\00\00\00\17\00\00\00#\00\00\00" }>, align 8
@64 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read11stream_readINtBI_12StreamReaderNtNtNtNtBQ_8services6memory7backend12MemoryReaderENtNtBK_3api4Read4open0EBQ_, [16 x i8] c"P\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read11stream_readINtB6_12StreamReaderNtNtNtNtBe_8services6memory7backend12MemoryReaderENtNtB8_3api4Read4open0Be_ }>, align 8
@65 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read11stream_readINtBI_12StreamReaderNtNtNtNtBQ_8services6memory7backend12MemoryReaderENtNtBK_3api4Read4read0EBQ_, [16 x i8] c"\A8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read11stream_readINtB6_12StreamReaderNtNtNtNtBe_8services6memory7backend12MemoryReaderENtNtB8_3api4Read4read0Be_ }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2s_5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2c_5error5ErrorENtNtB4_6marker4SendEL_EEB2e_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2c_5error5ErrorENtNtB4_6marker4SendEL_EEB2e_.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB1Z_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB21_.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #23
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB1Z_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB21_.exit4.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB1Z_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB21_.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2c_5error5ErrorENtNtB4_6marker4SendEL_EEB2e_.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadIBS_DNtNtNtNtB2t_3oio4read3api13ReadStreamDynEL_EENtNtNtB2v_5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadIBC_DNtNtNtNtB2d_3oio4read3api13ReadStreamDynEL_EENtNtNtB2f_5types5error5ErrorENtNtB4_6marker4SendEL_EEB2f_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadIBC_DNtNtNtNtB2d_3oio4read3api13ReadStreamDynEL_EENtNtNtB2f_5types5error5ErrorENtNtB4_6marker4SendEL_EEB2f_.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadIBx_DNtNtNtNtB20_3oio4read3api13ReadStreamDynEL_EENtNtNtB22_5types5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #23
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadIBx_DNtNtNtNtB20_3oio4read3api13ReadStreamDynEL_EENtNtNtB22_5types5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadIBx_DNtNtNtNtB20_3oio4read3api13ReadStreamDynEL_EENtNtNtB22_5types5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadIBC_DNtNtNtNtB2d_3oio4read3api13ReadStreamDynEL_EENtNtNtB2f_5types5error5ErrorENtNtB4_6marker4SendEL_EEB2f_.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadNtNtNtB2v_5types6buffer6BufferENtNtB3g_5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadNtNtNtB2f_5types6buffer6BufferENtNtB30_5error5ErrorENtNtB4_6marker4SendEL_EEB2f_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadNtNtNtB2f_5types6buffer6BufferENtNtB30_5error5ErrorENtNtB4_6marker4SendEL_EEB2f_.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadNtNtNtB22_5types6buffer6BufferENtNtB2N_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #23
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadNtNtNtB22_5types6buffer6BufferENtNtB2N_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadNtNtNtB22_5types6buffer6BufferENtNtB2N_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadNtNtNtB2f_5types6buffer6BufferENtNtB30_5error5ErrorENtNtB4_6marker4SendEL_EEB2f_.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB29_6buffer6BufferNtNtB29_5error5ErrorEENtNtB4_6marker4SendEL_EEEB2b_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB1T_6buffer6BufferNtNtB1T_5error5ErrorEENtNtB4_6marker4SendEL_EEB1V_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB1T_6buffer6BufferNtNtB1T_5error5ErrorEENtNtB4_6marker4SendEL_EEB1V_.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtBN_6result6ResultNtNtB1G_6buffer6BufferNtNtB1G_5error5ErrorEENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB1I_.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #23
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtBN_6result6ResultNtNtB1G_6buffer6BufferNtNtB1G_5error5ErrorEENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB1I_.exit4.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtBN_6result6ResultNtNtB1G_6buffer6BufferNtNtB1G_5error5ErrorEENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB1I_.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB1T_6buffer6BufferNtNtB1T_5error5ErrorEENtNtB4_6marker4SendEL_EEB1V_.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEEB1G_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #23
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit4.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEEECs5XgW7KoffLW_12opendal_core(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %.0.val, align 8, !range !7, !alias.scope !29, !noundef !4
  %switch.i.i.i = icmp samesign ult i64 %i.b, 2
  br i1 %switch.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #23
  resume { ptr, i32 } %i.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #23
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio3buf9queue_buf8QueueBufEEB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio3buf9queue_buf8QueueBufEBL_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio3buf9queue_buf8QueueBufEBL_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1k_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1k_.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio3buf9queue_buf8QueueBufEBL_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #23
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #23
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit4

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps9RpRestoreNtNtNtB1w_5types5error5ErrorEEEB1w_(ptr noalias nofree noundef align 8 dereferenceable(88) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !32, !noundef !4
  %switch.i = icmp ugt i64 %i.a, -3
  br i1 %switch.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps9RpRestoreNtNtNtB1p_5types5error5ErrorEEEB1p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps9RpRestoreNtNtNtB1p_5types5error5ErrorEEEB1p_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps9RpRestoreNtNtNtB1p_5types5error5ErrorEEEB1p_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtBI_5types4read13buffer_stream15StreamingReaderNtB1A_13ChunkedReaderEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !4
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !55, !nonnull !4, !noundef !4
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !55
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2.i = load ptr, ptr %i.h, align 8, !alias.scope !51, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val3.i = load ptr, ptr %i.i, align 8, !alias.scope !51
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEEB1G_(ptr %.val2.i, ptr %.val3.i) #26
          to label %common.resume unwind label %bb.k

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !51, !noundef !4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !51 ; 6 uses
  %i.l = icmp eq ptr %.val.i, null
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream15StreamingReaderEBJ_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.m = load ptr, ptr %.val1.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.m(ptr noundef nonnull %.val.i)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream15StreamingReaderEBJ_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream15StreamingReaderEBJ_.exit

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #23
  br label %common.resume

common.resume:                                    ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEEB15_.exit.i, %bb.d, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %.pn.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEEB15_.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !59, !nonnull !4, !noundef !4
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !59
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.m, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !10, !alias.scope !60, !noundef !4
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEEB15_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEEB15_.exit.i unwind label %bb.r

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i: ; preds = %bb.m, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !10, !alias.scope !61, !noundef !4
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream13ChunkedReaderEBJ_.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ah)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream13ChunkedReaderEBJ_.exit unwind label %bb.q

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEEB15_.exit.i: ; preds = %bb.q, %bb.o, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.al, %bb.q ], [ %i.ad, %bb.o ], [ %i.ad, %bb.n ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw12futures_util15ConcurrentTasksNtNtNtNtBI_5types4read13buffer_stream16ChunkedReadInputNtNtB1P_6buffer6BufferEEBI_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.ak) #26
          to label %common.resume unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEEB15_.exit.i

bb.r:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEEB15_.exit.i, %bb.o
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream13ChunkedReaderEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i, %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw12futures_util15ConcurrentTasksNtNtNtNtBI_5types4read13buffer_stream16ChunkedReadInputNtNtB1P_6buffer6BufferEEBI_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.an)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream15StreamingReaderEBJ_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream15StreamingReaderEBJ_.exit: ; preds = %bb.h, %bb.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream13ChunkedReaderEBJ_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw12futures_util15ConcurrentTasksNtNtNtNtBI_5types4read13buffer_stream16ChunkedReadInputNtNtB1P_6buffer6BufferEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !79, !nonnull !4, !noundef !4
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !79
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute8executor8ExecutorEBJ_.exit
end_hunk_0
begin_hunk_1_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list14hierarchy_list15HierarchyListerNtNtNtNtBM_8services6memory6lister12MemoryListerEEBM_:bb.a
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.f ], [ %eh.lpad-body.i, %.body.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #26
          to label %.body2 unwind label %bb.j

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory6lister12MemoryListerEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory6lister12MemoryListerEBJ_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body2 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory6lister12MemoryListerEBJ_.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.i

.body2:                                           ; preds = %bb.i, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.m, %bb.i ], [ %i.j, %bb.g ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3set7HashSetNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n)
  ret void

bb.j:                                             ; preds = %.body2, %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3set7HashSetNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.body2
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read11stream_read12StreamReaderNtNtNtNtBM_8services6memory7backend12MemoryReaderEEBM_(ptr noalias nofree noundef align 8 dereferenceable(288) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backend13MemoryBackendEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #26
          to label %common.resume.i unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backend12MemoryReaderEBJ_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume.i:                                  ; preds = %bb.d, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backend12MemoryReaderEBJ_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete15one_shot_delete14OneShotDeleterNtNtNtNtBM_8services6memory7deleter13MemoryDeleterEEBM_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !130, !nonnull !4, !noundef !4
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !130
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreEEB1g_.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreEEB1g_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #26
          to label %common.resume.i unwind label %bb.f

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreEEB1g_.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7deleter13MemoryDeleterEBJ_.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreEEB1g_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume.i:                                  ; preds = %bb.d, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.e, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7deleter13MemoryDeleterEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreEEB1g_.exit.i
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNCNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBL_13ChunkedReader3new00EBR_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !4
  switch i8 %i.b, label %common.ret [
    i8 0, label %common.ret.sink.split
    i8 3, label %bb.b
    i8 4, label %bb.i
  ]

common.ret.sink.split:                            ; preds = %bb.i, %bb.l, %bb.m, %bb.r, %bb.s, %bb.a
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEBJ_(ptr noalias nofree noundef align 8 dereferenceable(48) %0)
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i8, ptr %i.c, align 8, !range !12, !noundef !4
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.e, align 8           ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 104
  %.val1.i = load ptr, ptr %i.f, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.g = load ptr, ptr %.val1.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.g(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #23
  br label %.body

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load i8, ptr %i.s, align 8, !range !12, !noundef !4
  %cond.i11 = icmp eq i8 %i.t, 3
  br i1 %cond.i11, label %bb.j, label %common.ret.sink.split

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i12 = load ptr, ptr %i.u, align 8         ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 96
  %.val1.i13 = load ptr, ptr %i.v, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.w = load ptr, ptr %.val1.i13, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i14, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i12) ]
  invoke void %i.w(ptr noundef nonnull %.val.i12)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i13, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %common.ret.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i13, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i12) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i12, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #23
  br label %common.ret.sink.split

bb.n:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i13, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body17, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i13, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i12, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #23
  br label %.body17

bb.p:                                             ; preds = %.body17
  resume { ptr, i32 } %.pn.pn

.body:                                            ; preds = %bb.g, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val9 = load ptr, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %0, i64 80
  %.val10 = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !13, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_(ptr %.val9, ptr nonnull %.val10) #26
          to label %.body17 unwind label %bb.v

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit: ; preds = %bb.f, %bb.e, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.ak, align 8            ; 5 uses
  %i.al = getelementptr i8, ptr %0, i64 80
  %.val8 = load ptr, ptr %i.al, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.am = load ptr, ptr %.val8, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.am(ptr noundef nonnull %.val)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %common.ret.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ao, i64 noundef range(i64 1, 536870913) %i.ar) #23
  br label %common.ret.sink.split

bb.t:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.body17, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #23
  br label %.body17

bb.v:                                             ; preds = %.body, %.body17
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

.body17:                                          ; preds = %bb.o, %bb.n, %bb.u, %bb.t, %.body
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.t ], [ %i.m, %.body ], [ %i.ac, %bb.n ], [ %i.as, %bb.u ], [ %i.ac, %bb.o ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEBJ_(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #26
          to label %bb.p unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs_NtNtCs5XgW7KoffLW_12opendal_core3raw12futures_utilINtBI_15ConcurrentTasksNtNtNtNtBM_5types4read13buffer_stream16ChunkedReadInputNtNtB1Z_6buffer6BufferE7execute0EBM_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !4
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
    i8 4, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB29_6buffer6BufferNtNtB29_5error5ErrorEENtNtB4_6marker4SendEL_EEEB2b_.exit
  ]

common.ret:                                       ; preds = %bb.b, %bb.a, %bb.i
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEBJ_(ptr noalias nofree noundef align 8 dereferenceable(48) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 80
  %.val4 = load ptr, ptr %i.d, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.e = load ptr, ptr %.val4, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB29_6buffer6BufferNtNtB29_5error5ErrorEENtNtB4_6marker4SendEL_EEEB2b_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB29_6buffer6BufferNtNtB29_5error5ErrorEENtNtB4_6marker4SendEL_EEEB2b_.exit

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #23
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB29_6buffer6BufferNtNtB29_5error5ErrorEENtNtB4_6marker4SendEL_EEEB2b_.exit: ; preds = %bb.f, %bb.e, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !range !14, !noundef !4
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.j, label %bb.i

.body:                                            ; preds = %bb.h, %bb.g, %bb.k
  %.pn = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.k, %bb.g ], [ %i.k, %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 0, ptr %i.t, align 1
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.j, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB29_6buffer6BufferNtNtB29_5error5ErrorEENtNtB4_6marker4SendEL_EEEB2b_.exit
  store i8 0, ptr %i.q, align 1
  br label %common.ret

bb.j:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB29_6buffer6BufferNtNtB29_5error5ErrorEENtNtB4_6marker4SendEL_EEEB2b_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEBJ_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u)
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtBI_13ReadGenerator11next_reader0EBO_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !4
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 8, !range !12, !noundef !4
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %common.ret

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.e, align 8           ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 56
  %.val1.i = load ptr, ptr %i.f, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.g = load ptr, ptr %.val1.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.g(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %common.ret, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #23
  br label %common.ret

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadIBx_DNtNtNtNtB20_3oio4read3api13ReadStreamDynEL_EENtNtNtB22_5types5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #23
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadIBx_DNtNtNtNtB20_3oio4read3api13ReadStreamDynEL_EENtNtNtB22_5types5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i.i.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadIBx_DNtNtNtNtB20_3oio4read3api13ReadStreamDynEL_EENtNtNtB22_5types5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utilsINtBG_7TwoWaysNtNtNtNtBK_5types4read13buffer_stream15StreamingReaderNtB1I_13ChunkedReaderENtNtNtNtBI_3oio4read3api10ReadStream4read0EBK_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !4
  switch i8 %i.b, label %common.ret [
    i8 4, label %bb.c
    i8 3, label %bb.b
  ]

common.ret:                                       ; preds = %common.ret.sink.split.i, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBI_15StreamingReaderNtNtNtNtNtBO_3raw3oio4read3api10ReadStream4read0EBO_(ptr noundef nonnull align 8 %i.c)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !15, !noundef !4
  switch i8 %i.f, label %common.ret [
    i8 4, label %bb.d
    i8 3, label %common.ret.sink.split.i
  ]

common.ret.sink.split.i:                          ; preds = %bb.d, %bb.c
  %.sink4.i = phi i64 [ 24, %bb.d ], [ 72, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink4.i
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs_NtNtCs5XgW7KoffLW_12opendal_core3raw12futures_utilINtBI_15ConcurrentTasksNtNtNtNtBM_5types4read13buffer_stream16ChunkedReadInputNtNtB1Z_6buffer6BufferE7execute0EBM_(ptr noundef nonnull align 8 %i.g)
  br label %common.ret

bb.d:                                             ; preds = %bb.c
  br label %common.ret.sink.split.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs0_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ReadDynEL_ENtBJ_4Read4open0EBR_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !4
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 40
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #23
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadIBx_DNtNtNtNtB20_3oio4read3api13ReadStreamDynEL_EENtNtNtB22_5types5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #23
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadIBx_DNtNtNtNtB20_3oio4read3api13ReadStreamDynEL_EENtNtNtB22_5types5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadIBx_DNtNtNtNtB20_3oio4read3api13ReadStreamDynEL_EENtNtNtB22_5types5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs0_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ReadDynEL_ENtBJ_4Read4read0EBR_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !4
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 40
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #23
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadNtNtNtB22_5types6buffer6BufferENtNtB2N_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #23
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadNtNtNtB22_5types6buffer6BufferENtNtB2N_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadNtNtNtB22_5types6buffer6BufferENtNtB2N_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtBJ_13MemoryBackendNtNtNtBP_3raw8accessor7Service10create_dir0EBP_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 {
common.ret:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtBJ_13MemoryBackendNtNtNtBP_3raw8accessor7Service4stat0EBP_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !16, !noundef !4
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %common.ret

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !144, !noundef !4 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %common.ret, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !145
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %common.ret

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %common.ret

common.ret:                                       ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtBJ_13MemoryBackendNtNtNtBP_3raw8accessor7Service6rename0EBP_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 {
common.ret:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtBJ_13MemoryBackendNtNtNtBP_3raw8accessor7Service7presign0EBP_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i8, ptr %i.a, align 8, !range !16, !noundef !4
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %common.ret

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.d = load i64, ptr %0, align 8, !range !17, !alias.scope !192, !noundef !4 ; 3 uses
  %i.e = icmp ne i64 %i.d, 4
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -3
  %i.g = icmp samesign ugt i64 %i.d, 2
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %bb.c [
    i64 0, label %bb.e
    i64 1, label %bb.g
    i64 2, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !196, !noundef !4 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %common.ret, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !197
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit.sink.split.i.i, label %common.ret

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !201, !noundef !4 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %common.ret, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !202
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit.sink.split.i.i, label %common.ret

bb.g:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !206, !noundef !4 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %common.ret, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !207
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit.sink.split.i.i, label %common.ret

bb.i:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !211, !noundef !4 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %common.ret, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !212
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit.sink.split.i.i, label %common.ret

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit.sink.split.i.i: ; preds = %bb.j, %bb.h, %bb.f, %bb.d
  %.sink.i.i = phi ptr [ %i.s, %bb.h ], [ %i.n, %bb.f ], [ %i.i, %bb.d ], [ %i.x, %bb.j ]
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.i) #25
  br label %common.ret

common.ret:                                       ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit.sink.split.i.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBJ_12BufferStreamNtNtCsagCT4lbS8Em_12futures_core6stream6Stream9poll_next0EBP_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !4
  switch i8 %i.b, label %common.ret [
    i8 0, label %common.ret.sink.split
    i8 3, label %bb.b
  ]

common.ret.sink.split:                            ; preds = %common.ret.sink.split.i.i, %bb.c, %bb.b, %bb.d, %bb.a
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtBI_5types4read13buffer_stream15StreamingReaderNtB1A_13ChunkedReaderEEBI_(ptr noalias nofree noundef align 8 dereferenceable(208) %0)
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load i8, ptr %i.c, align 8, !range !11, !noundef !4
  switch i8 %i.d, label %common.ret.sink.split [
    i8 4, label %bb.d
    i8 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBI_15StreamingReaderNtNtNtNtNtBO_3raw3oio4read3api10ReadStream4read0EBO_(ptr noundef nonnull align 8 %i.e)
          to label %common.ret.sink.split unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = load i8, ptr %i.g, align 8, !range !15, !noundef !4
  switch i8 %i.h, label %common.ret.sink.split [
    i8 4, label %bb.e
    i8 3, label %common.ret.sink.split.i.i
  ]

common.ret.sink.split.i.i:                        ; preds = %bb.e, %bb.d
  %.sink4.i.i = phi i64 [ 24, %bb.e ], [ 72, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink4.i.i
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs_NtNtCs5XgW7KoffLW_12opendal_core3raw12futures_utilINtBI_15ConcurrentTasksNtNtNtNtBM_5types4read13buffer_stream16ChunkedReadInputNtNtB1Z_6buffer6BufferE7execute0EBM_(ptr noundef nonnull align 8 %i.i)
          to label %common.ret.sink.split unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  br label %common.ret.sink.split.i.i

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %common.ret.sink.split.i.i, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtBI_5types4read13buffer_stream15StreamingReaderNtB1A_13ChunkedReaderEEBI_(ptr noalias nofree noundef align 8 dereferenceable(208) %0) #26
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !4
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #23
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB1Z_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB21_.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #23
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB1Z_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB21_.exit4.i.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB1Z_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB21_.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBI_15StreamingReaderNtNtNtNtNtBO_3raw3oio4read3api10ReadStream4read0EBO_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !4
  switch i8 %i.b, label %common.ret [
    i8 4, label %bb.j
    i8 3, label %bb.b
  ]

common.ret:                                       ; preds = %bb.m, %bb.l, %bb.g, %bb.f, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i8, ptr %i.c, align 8, !range !12, !noundef !4
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %common.ret

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !range !12, !noundef !4
  %cond.i.i = icmp eq i8 %i.f, 3
  br i1 %cond.i.i, label %bb.d, label %common.ret

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i = load ptr, ptr %i.g, align 8         ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 80
  %.val1.i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.i = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.i(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %common.ret, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #23
  br label %common.ret

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #23
  br label %common.resume

common.resume:                                    ; preds = %bb.n, %bb.o, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.o, %bb.i ], [ %i.ac, %bb.o ], [ %i.ac, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.u, align 8             ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 32
  %.val4 = load ptr, ptr %i.v, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.w = load ptr, ptr %.val4, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.w(ptr noundef nonnull %.val)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %common.ret, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #23
  br label %common.ret

bb.n:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #23
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read11stream_readINtBI_12StreamReaderNtNtNtNtBQ_8services6memory7backend12MemoryReaderENtNtBK_3api4Read4open0EBQ_(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
common.ret:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read11stream_readINtBI_12StreamReaderNtNtNtNtBQ_8services6memory7backend12MemoryReaderENtNtBK_3api4Read4read0EBQ_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !4
  %cond = icmp eq i8 %i.b, 4
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load i8, ptr %i.c, align 8, !range !12, !noundef !4
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val.i = load ptr, ptr %i.e, align 8           ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 152
  %.val1.i = load ptr, ptr %i.f, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.g = load ptr, ptr %.val1.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.g(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #23
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val6 = load ptr, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %0, i64 128
  %.val7 = load ptr, ptr %i.t, align 8, !nonnull !4, !align !13, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_(ptr %.val6, ptr nonnull %.val7) #26
          to label %.body8 unwind label %bb.s

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit: ; preds = %bb.f, %bb.e, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.u, align 8             ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 128
  %.val5 = load ptr, ptr %i.v, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.w = load ptr, ptr %.val5, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.w(ptr noundef nonnull %.val)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit

bb.l:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body8, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #23
  br label %.body8

.body8:                                           ; preds = %bb.m, %bb.l, %.body
  %.pn = phi { ptr, i32 } [ %i.m, %.body ], [ %i.ac, %bb.l ], [ %i.ac, %bb.m ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ai) #26
          to label %bb.q unwind label %bb.s

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit: ; preds = %bb.k, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.ak = load i64, ptr %i.aj, align 8, !range !18, !alias.scope !229, !noundef !4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !233, !noundef !4 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !234
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.am) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit unwind label %bb.r

bb.q:                                             ; preds = %bb.r, %.body8
  %.pn2 = phi { ptr, i32 } [ %i.as, %bb.r ], [ %.pn, %.body8 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 0, ptr %i.ar, align 1
  resume { ptr, i32 } %.pn2

bb.r:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit: ; preds = %bb.o, %bb.n, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 0, ptr %i.at, align 1
  br label %common.ret

bb.s:                                             ; preds = %.body, %.body8
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !15, !noundef !4
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpPresignEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.a = load i64, ptr %0, align 8, !range !17, !alias.scope !277, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -3
  %i.d = icmp samesign ugt i64 %i.a, 2
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.f
    i64 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !281, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops16PresignOperationEBH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !282
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit.sink.split.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops16PresignOperationEBH_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
end_hunk_1
begin_hunk_2_@_RINvXsa_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15MapDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9MapAccess15next_value_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDataINtNtB28_6option6OptionjEEECs5XgW7KoffLW_12opendal_core:bb.a
  %.not = icmp eq i8 %.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx, i64 31, i1 false)
  call void @_RINvXse_NtNtCskkYVyhWgx5W_10serde_core2de5implsINtNtCsgxBkk5gSRhY_4core6option6OptionjENtB8_11Deserialize11deserializeNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 ptr @_RINvXs6_NtCsdMEyVxnODSb_10serde_json5errorNtB6_5ErrorNtNtCskkYVyhWgx5W_10serde_core2de5Error6customReECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 16)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsa_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15MapDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9MapAccess15next_value_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.0.0.copyload = load i8, ptr %i.b, align 8 ; 2 uses
  store i8 -1, ptr %i.b, align 8
  %.not = icmp eq i8 %.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx, i64 31, i1 false)
  call void @_RINvXs1_NtNtCskkYVyhWgx5W_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 ptr @_RINvXs6_NtCsdMEyVxnODSb_10serde_json5errorNtB6_5ErrorNtNtCskkYVyhWgx5W_10serde_core2de5Error6customReECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 16)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i8 1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNCNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtB9_13ChunkedReader3new00Bf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.2.sroa.3 = alloca [40 x i8], align 8     ; 3 uses
  %.sroa.2.sroa.4 = alloca [40 x i8], align 8     ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 10 uses
  %.sroa.4 = alloca [40 x i8], align 8            ; 4 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 3 uses
  %i.e = alloca [88 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !range !11, !noundef !4
  switch i8 %i.g, label %default.unreachable75 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.w
  ]

default.unreachable75:                            ; preds = %bb.w, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !720, !noundef !4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !720 ; 2 uses
  store ptr null, ptr %i.h, align 8, !alias.scope !720
  store ptr %i.j, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.l, ptr %i.m, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store ptr %i.j, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.n, ptr %i.p, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.f

.body:                                            ; preds = %bb.p, %bb.o, %bb.g
  %.pn27 = phi { ptr, i32 } [ %i.ak, %bb.o ], [ %i.x, %bb.g ], [ %i.ak, %bb.p ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val32 = load ptr, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %1, i64 80
  %.val33 = load ptr, ptr %i.r, align 8, !nonnull !4, !align !13, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_(ptr %.val32, ptr nonnull %.val33) #26
          to label %.body36 unwind label %bb.v

.thread:                                          ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val35 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.val35, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.t, ptr %.sroa.758.0..sroa_idx, align 8
  %.sroa.960.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i8 0, ptr %.sroa.960.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.z

.body36:                                          ; preds = %.body40, %bb.au, %bb.u, %bb.t, %.body
  %.pn29 = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %.pn27, %.body ], [ %i.ay, %bb.u ], [ %i.cw, %bb.au ], [ %.pn18, %.body40 ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEBJ_(ptr noalias nofree noundef align 8 dereferenceable(48) %1) #26
          to label %bb.av unwind label %bb.v

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #28
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #28
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  invoke fastcc void @_RNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_13ReadStreamDynEL_ENtB7_10ReadStream8read_all0Bf_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.e, ptr noundef nonnull align 8 %i.w, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_(ptr noundef nonnull align 8 %i.w) #26
          to label %.body unwind label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.y = load i64, ptr %i.e, align 8, !range !9, !noundef !4 ; 3 uses
  %i.z = icmp eq i64 %i.y, -2
  br i1 %i.z, label %bb.i, label %bb.j

common.ret:                                       ; preds = %bb.ao, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit, %bb.i
  %.sink = phi i8 [ 4, %bb.ao ], [ 1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit ], [ 3, %bb.i ]
  store i8 %.sink, ptr %i.f, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 -1, ptr %0, align 8
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, i64 40, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ab = load i8, ptr %i.aa, align 8, !range !12, !noundef !4
  %cond.i = icmp eq i8 %i.ab, 3
  br i1 %cond.i, label %bb.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i = load ptr, ptr %i.ac, align 8          ; 5 uses
  %i.ad = getelementptr i8, ptr %1, i64 104
  %.val1.i = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.ae = load ptr, ptr %.val1.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.ae(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit

bb.o:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.am, i64 noundef range(i64 1, 536870913) %i.ap) #23
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit: ; preds = %bb.n, %bb.m, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val = load ptr, ptr %i.aq, align 8            ; 5 uses
  %i.ar = getelementptr i8, ptr %1, i64 80
  %.val31 = load ptr, ptr %i.ar, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.as = load ptr, ptr %.val31, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.as(ptr noundef nonnull %.val)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.val31, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %.val31, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit

bb.t:                                             ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val31, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.body36, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %.val31, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ba, i64 noundef range(i64 1, 536870913) %i.bd) #23
  br label %.body36

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit: ; preds = %bb.at, %bb.aq, %bb.s, %bb.r
  %.sroa.0.0 = phi i64 [ %i.y, %bb.s ], [ %i.y, %bb.r ], [ %.sroa.2.sroa.0.0.copyload, %bb.aq ], [ -1, %bb.at ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4, i64 40, i1 false)
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  %.sroa.2.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0, ptr %.sroa.2.0..sroa_idx14, align 8
  br label %common.ret

bb.v:                                             ; preds = %.body, %bb.as, %.body40, %bb.g, %.body36
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

.body40:                                          ; preds = %bb.an, %.body.i
  %i.bf = phi ptr [ %i.bw, %.body.i ], [ %i.bg, %bb.an ]
  %.pn18 = phi { ptr, i32 } [ %.pn2.i, %.body.i ], [ %i.cs, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs0_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ReadDynEL_ENtBJ_4Read4read0EBR_(ptr noundef nonnull align 8 %i.bf) #26
          to label %.body36 unwind label %bb.v

bb.w:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !12, !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  switch i8 %.pre, label %default.unreachable75 [
    i8 0, label %bb.z
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !721
  br label %bb.ad

bb.y:                                             ; preds = %bb.z
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.z:                                             ; preds = %.thread, %bb.w
  %i.bj = phi ptr [ %i.v, %.thread ], [ %i.bh, %bb.w ] ; 2 uses
  %i.bk = phi ptr [ %i.u, %.thread ], [ %i.bg, %bb.w ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !721, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !noalias !721
  %.val7.i = load ptr, ptr %i.bm, align 8, !noalias !721, !nonnull !4, !noundef !4
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %.val8.i = load ptr, ptr %i.bn, align 8, !noalias !721, !nonnull !4, !align !13, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.val8.i, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !721, !nonnull !4
  %i.bq = invoke { ptr, ptr } %i.bp(ptr noundef nonnull %.val7.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aa unwind label %bb.y, !noalias !721 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.br = extractvalue { ptr, ptr } %i.bq, 0
  %i.bs = extractvalue { ptr, ptr } %i.bq, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.br, ptr %i.bt, align 8, !noalias !721
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.bs, ptr %i.bu, align 8, !noalias !721
  br label %bb.ad

.body.i:                                          ; preds = %bb.al, %bb.ak, %bb.ae, %bb.y
  %i.bv = phi ptr [ %i.bj, %bb.y ], [ %i.bx, %bb.ae ], [ %i.bx, %bb.ak ], [ %i.bx, %bb.al ]
  %i.bw = phi ptr [ %i.bk, %bb.y ], [ %i.by, %bb.ae ], [ %i.by, %bb.ak ], [ %i.by, %bb.al ]
  %.pn2.i = phi { ptr, i32 } [ %i.bi, %bb.y ], [ %i.ca, %bb.ae ], [ %i.cl, %bb.ak ], [ %i.cl, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !721
  store i8 2, ptr %i.bv, align 8, !noalias !721
  br label %.body40

bb.ab:                                            ; preds = %bb.w
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #28
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.w
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #28
          to label %.noexc42 unwind label %bb.an

.noexc42:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.aa, %bb.x
  %i.bx = phi ptr [ %i.bj, %bb.aa ], [ %i.bh, %bb.x ] ; 5 uses
  %i.by = phi ptr [ %i.bk, %bb.aa ], [ %i.bg, %bb.x ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadNtNtNtB2h_5types6buffer6BufferENtNtB32_5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2h_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %.val5.i = load ptr, ptr %i.bz, align 8, !noalias !721
  %i.cb = getelementptr i8, ptr %1, i64 96
  %.val6.i = load ptr, ptr %i.cb, align 8, !noalias !721, !nonnull !4, !align !13, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadNtNtNtB2v_5types6buffer6BufferENtNtB3g_5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_(ptr %.val5.i, ptr nonnull %.val6.i) #26
          to label %.body.i unwind label %bb.am, !noalias !722

bb.af:                                            ; preds = %bb.ad
  %i.cc = load i64, ptr %i.d, align 8, !range !7, !alias.scope !722, !noalias !723, !noundef !4 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 2
  br i1 %i.cd, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val.i38 = load ptr, ptr %i.bz, align 8, !noalias !721 ; 5 uses
  %i.ce = getelementptr i8, ptr %1, i64 96
  %.val4.i = load ptr, ptr %i.ce, align 8, !noalias !721, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.cf = load ptr, ptr %.val4.i, align 8, !invariant.load !4, !noalias !722 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i39, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i38) ]
  invoke void %i.cf(ptr noundef nonnull %.val.i38)
          to label %bb.ai unwind label %bb.ak, !noalias !722

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cg = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !5, !invariant.load !4, !noalias !722 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cj = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !range !6, !invariant.load !4, !noalias !722
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i38) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i38, i64 noundef range(i64 1, -9223372036854775808) %i.ch, i64 noundef range(i64 1, 536870913) %i.ck) #23, !noalias !722
  br label %bb.ap

bb.ak:                                            ; preds = %bb.ah
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !range !5, !invariant.load !4, !noalias !722 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.body.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cp = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !range !6, !invariant.load !4, !noalias !722
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i38, i64 noundef range(i64 1, -9223372036854775808) %i.cn, i64 noundef range(i64 1, 536870913) %i.cq) #23, !noalias !722
  br label %.body.i

bb.am:                                            ; preds = %bb.ae
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !722
  unreachable

bb.an:                                            ; preds = %bb.ac, %bb.ab
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body40

bb.ao:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !721
  store i8 3, ptr %i.bx, align 8, !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -1, ptr %0, align 8
  br label %common.ret

bb.ap:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !721
  store i8 1, ptr %i.bx, align 8, !noalias !721
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2.sroa.0.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.sroa.3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, i64 40, i1 false)
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.sroa.4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ct = trunc nuw i64 %i.cc to i1
  br i1 %i.ct, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.sroa.3, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.sroa.4, i64 40, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit

bb.ar:                                            ; preds = %bb.ap
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.563.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.sroa.3, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.sroa.4, i64 40, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val34 = load ptr, ptr %i.cu, align 8, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  store i64 %.sroa.2.sroa.0.0.copyload, ptr %i.b, align 8
  invoke void @_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtB2_11ReadContext21observe_read_response(ptr noundef nonnull align 8 %i.cv, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #26
          to label %bb.au unwind label %bb.v

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.sroa.4, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.body36

bb.av:                                            ; preds = %.body36
  store i8 2, ptr %i.f, align 8
  resume { ptr, i32 } %.pn29
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtCs5XgW7KoffLW_12opendal_core3raw12futures_utilINtB6_15ConcurrentTasksNtNtNtNtBa_5types4read13buffer_stream16ChunkedReadInputNtNtB1n_6buffer6BufferE7execute0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6 = alloca [80 x i8], align 8            ; 5 uses
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [88 x i8], align 8                ; 11 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [136 x i8], align 8               ; 3 uses
  %i.i = alloca [136 x i8], align 8               ; 7 uses
  %i.j = alloca [88 x i8], align 8                ; 14 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [136 x i8], align 8               ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [136 x i8], align 8               ; 9 uses
  %i.p = alloca [88 x i8], align 8                ; 10 uses
  %i.q = alloca [88 x i8], align 8                ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.s = load i8, ptr %i.r, align 8, !range !11, !noundef !4
  switch i8 %i.s, label %default.unreachable115 [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.c
    i8 4, label %bb.an
  ]

default.unreachable115:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !13, !noundef !4 ; 11 uses
  store ptr %i.w, ptr %i.u, align 8
  store i8 1, ptr %i.t, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.z = load i8, ptr %i.y, align 8, !range !14, !noundef !4
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.q, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43)
          to label %bb.p unwind label %bb.o

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr i8, ptr %i.w, i64 96
  %.val44 = load i64, ptr %i.ab, align 8, !noundef !4 ; 2 uses
  %i.ac = icmp ugt i64 %.val44, 1
  br i1 %i.ac, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 0, ptr %i.t, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.af = invoke { ptr, ptr } %i.ae(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.n)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.body

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ah = extractvalue { ptr, ptr } %i.af, 0
  %i.ai = extractvalue { ptr, ptr } %i.af, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.ah, ptr %i.aj, align 8
  store ptr %i.ai, ptr %i.x, align 8
  br label %bb.u

.body:                                            ; preds = %bb.ad, %bb.ac, %bb.v, %bb.g
  %.pn19 = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.bp, %bb.v ], [ %i.ca, %bb.ac ], [ %i.ca, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !732, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load atomic i64, ptr %i.am monotonic, align 8, !noalias !732
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !732, !noundef !4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !732, !noundef !4
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.an)
  %i.as = add i64 %.sroa.0.0.i.i, %.val44
  %i.at = icmp ult i64 %i.ap, %i.as
  br i1 %i.at, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #28
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !733, !noundef !4 ; 2 uses
  %i.ax = load i64, ptr %i.w, align 8, !range !5, !alias.scope !733, !noundef !4 ; 2 uses
  %.not5.i = icmp ult i64 %i.aw, %i.ax
  %i.ay = select i1 %.not5.i, i64 0, i64 %i.ax
  %.sroa.03.0.i = sub nuw i64 %i.aw, %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !733, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %.sroa.03.0.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.bb, ptr %i.bc, align 8
  br label %bb.an

bb.n:                                             ; preds = %bb.i, %bb.ba
  %i.bd = phi ptr [ %i.w, %bb.i ], [ %.pre, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  store i8 0, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.bf, i64 48, i1 false)
  %i.bg = invoke { ptr, ptr } @_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core3raw12futures_utilINtB4_15ConcurrentTasksNtNtNtNtB8_5types4read13buffer_stream16ChunkedReadInputNtNtB1l_6buffer6BufferE11create_taskB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.bc unwind label %bb.bb     ; 2 uses

bb.o:                                             ; preds = %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.r

bb.p:                                             ; preds = %bb.d
  %.sroa.07.0.copyload = load i64, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.q

bb.q:                                             ; preds = %bb.bt, %bb.ai, %bb.p
  %.sroa.07.0 = phi i64 [ %.sroa.07.0.copyload, %bb.p ], [ %.sroa.014.0.copyload79, %bb.bt ], [ %i.ch, %bb.ai ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !range !14, !noundef !4
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.bw, label %bb.bv

bb.r:                                             ; preds = %bb.bb, %bb.bd, %.body, %.thread68, %bb.ay, %bb.l, %bb.ao, %bb.o
  %.pn37 = phi { ptr, i32 } [ %i.bh, %bb.o ], [ %i.du, %bb.bd ], [ %i.dr, %bb.bb ], [ %.pn35, %bb.ay ], [ %i.cv, %bb.ao ], [ %.pn19, %.body ], [ %i.au, %bb.l ], [ %.pn2164, %.thread68 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.bm = load i8, ptr %i.bl, align 1, !range !14, !noundef !4
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.cd, label %bb.bx

bb.s:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28
  unreachable

bb.u:                                             ; preds = %bb.c, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB8_6result6ResultNtNtB1V_6buffer6BufferNtNtB1V_5error5ErrorEENtNtB8_6marker4SendEL_EEB1u_4pollB1X_(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val42 = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr i8, ptr %1, i64 80
  %.val43 = load ptr, ptr %i.bq, align 8, !nonnull !4, !align !13, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB29_6buffer6BufferNtNtB29_5error5ErrorEENtNtB4_6marker4SendEL_EEEB2b_(ptr %.val42, ptr nonnull %.val43) #26
          to label %.body unwind label %bb.am

bb.w:                                             ; preds = %bb.u
  %i.br = load i64, ptr %i.m, align 8, !range !10, !noundef !4
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.x, label %bb.y

common.ret:                                       ; preds = %bb.bf, %bb.aq, %bb.x
  %.sink = phi i8 [ 1, %bb.bf ], [ 4, %bb.aq ], [ 3, %bb.x ]
  store i8 %.sink, ptr %i.r, align 8
  ret void

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %common.ret

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.o, ptr noundef nonnull align 8 dereferenceable(136) %i.m, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val = load ptr, ptr %i.bo, align 8            ; 5 uses
  %i.bt = getelementptr i8, ptr %1, i64 80
  %.val41 = load ptr, ptr %i.bt, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.bu = load ptr, ptr %.val41, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bu(ptr noundef nonnull %.val)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %.val41, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB29_6buffer6BufferNtNtB29_5error5ErrorEENtNtB4_6marker4SendEL_EEEB2b_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = getelementptr inbounds nuw i8, ptr %.val41, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.bw, i64 noundef range(i64 1, 536870913) %i.bz) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB29_6buffer6BufferNtNtB29_5error5ErrorEENtNtB4_6marker4SendEL_EEEB2b_.exit

bb.ac:                                            ; preds = %bb.z
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val41, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %.body, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ce = getelementptr inbounds nuw i8, ptr %.val41, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.cc, i64 noundef range(i64 1, 536870913) %i.cf) #23
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB29_6buffer6BufferNtNtB29_5error5ErrorEENtNtB4_6marker4SendEL_EEEB2b_.exit: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.cg, i64 88, i1 false)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEBJ_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.o)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB29_6buffer6BufferNtNtB29_5error5ErrorEENtNtB4_6marker4SendEL_EEEB2b_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ch = load i64, ptr %i.p, align 8, !range !8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.ch, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %i.ci, i64 80, i1 false)
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.ci, i64 40, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !4, !align !13, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  invoke void @_RNvMs3_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE9push_backB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.l)
          to label %bb.ah unwind label %.thread

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.q

bb.aj:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB29_6buffer6BufferNtNtB29_5error5ErrorEENtNtB4_6marker4SendEL_EEEB2b_.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.cn = load i64, ptr %i.p, align 8, !range !8, !noundef !4
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %bb.al, label %bb.ak

.thread:                                          ; preds = %bb.ag
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cq = load i64, ptr %i.p, align 8, !range !8, !noundef !4
  %i.cr = icmp eq i64 %i.cq, -1
  br i1 %i.cr, label %.thread68, label %bb.ak

bb.ak:                                            ; preds = %.thread, %bb.aj
  %.pn2165 = phi { ptr, i32 } [ %i.cp, %.thread ], [ %i.cm, %bb.aj ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.p) #26
          to label %.thread68 unwind label %bb.am

.thread68:                                        ; preds = %.thread, %bb.al, %bb.ak
  %.pn2164 = phi { ptr, i32 } [ %i.cm, %bb.al ], [ %.pn2165, %bb.ak ], [ %i.cp, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.r

bb.al:                                            ; preds = %bb.aj
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs) #26
          to label %.thread68 unwind label %bb.am

bb.am:                                            ; preds = %bb.bq, %bb.v, %bb.cd, %bb.cc, %.thread102, %bb.cb, %bb.bm, %bb.bh, %bb.al, %bb.ak
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.an:                                            ; preds = %bb.m, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXNtNtCsgxBkk5gSRhY_4core6future6futureQINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtBL_4read13buffer_stream16ChunkedReadInputINtNtB6_6result6ResultNtNtBL_6buffer6BufferNtNtBL_5error5ErrorEEENtB2_6Future4pollBN_(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

bb.ap:                                            ; preds = %bb.an
  %i.cw = load i64, ptr %i.i, align 8, !range !10, !noundef !4
  %i.cx = icmp eq i64 %i.cw, -1
  br i1 %i.cx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(136) %i.i, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.cy, i64 88, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 8 uses
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !4, !align !13, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 88
  %.val45 = load ptr, ptr %i.db, align 8, !nonnull !4, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %.val45, i64 16
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 monotonic, align 8 ; 0 uses
  %i.de = load i64, ptr %i.j, align 8, !range !8, !noundef !4
  %.not25 = icmp eq i64 %i.de, -1
  br i1 %.not25, label %bb.as, label %bb.bi

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.df, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dg = load ptr, ptr %i.cz, align 8, !nonnull !4, !align !13, !noundef !4
  %i.dh = invoke { ptr, ptr } @_RNvMs3_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB1b_4read13buffer_stream16ChunkedReadInputINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1b_6buffer6BufferNtNtB1b_5error5ErrorEEEE9pop_frontB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dg)
          to label %bb.au unwind label %bb.at     ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.au:                                            ; preds = %bb.as
  %i.dj = extractvalue { ptr, ptr } %i.dh, 0      ; 2 uses
  %i.dk = extractvalue { ptr, ptr } %i.dh, 1
  store ptr %i.dj, ptr %i.f, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.dk, ptr %i.dl, align 8
  %i.dm = icmp eq ptr %i.dj, null
  br i1 %i.dm, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB14_4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB14_6buffer6BufferNtNtB14_5error5ErrorEEEEEB16_.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskzxhmhyEueV_12futures_util6future6future13remote_handle12RemoteHandleTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB20_6buffer6BufferNtNtB20_5error5ErrorEEEEB22_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB14_4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB14_6buffer6BufferNtNtB14_5error5ErrorEEEEEB16_.exit unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB14_4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB14_6buffer6BufferNtNtB14_5error5ErrorEEEEEB16_.exit: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.do = load ptr, ptr %i.cz, align 8, !nonnull !4, !align !13, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  invoke void @_RNvMs3_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE9push_backB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.ax unwind label %bb.bg

bb.ax:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB14_4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtB14_6buffer6BufferNtNtB14_5error5ErrorEEEEEB16_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEBJ_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k)
          to label %bb.ba unwind label %bb.az

bb.ay:                                            ; preds = %bb.cc, %bb.ca, %bb.az
  %.pn35 = phi { ptr, i32 } [ %i.dq, %bb.az ], [ %.pn30.pn.pn.pn90111, %bb.cc ], [ %.pn30.pn.pn, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.r

bb.az:                                            ; preds = %bb.bu, %bb.ax
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.pre = load ptr, ptr %i.cz, align 8
  br label %bb.n

bb.bb:                                            ; preds = %bb.n
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.bc:                                            ; preds = %bb.n
  %i.ds = extractvalue { ptr, ptr } %i.bg, 0
end_hunk_2
begin_hunk_3_@_RNCNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtB7_12BufferStreamNtNtCsagCT4lbS8Em_12futures_core6stream6Stream9poll_next0Bd_:bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23.i.sroa.7.i)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.f

bb.b:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtBI_5types4read13buffer_stream15StreamingReaderNtB1A_13ChunkedReaderEEBI_(ptr noalias nofree noundef align 8 dereferenceable(208) %1) #26
          to label %bb.ga unwind label %bb.fz

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28
  unreachable

.body:                                            ; preds = %bb.fw, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBJ_13ChunkedReaderNtNtNtNtNtBP_3raw3oio4read3api10ReadStream4read0EBP_.exit.i
  %i.y = phi ptr [ %i.jq, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBJ_13ChunkedReaderNtNtNtNtNtBP_3raw3oio4read3api10ReadStream4read0EBP_.exit.i ], [ %i.z, %bb.fw ]
  %.pn2 = phi { ptr, i32 } [ %.pn6.pn.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBJ_13ChunkedReaderNtNtNtNtNtBP_3raw3oio4read3api10ReadStream4read0EBP_.exit.i ], [ %i.rv, %bb.fw ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utilsINtBG_7TwoWaysNtNtNtNtBK_5types4read13buffer_stream15StreamingReaderNtB1I_13ChunkedReaderENtNtNtNtBI_3oio4read3api10ReadStream4read0EBK_(ptr noundef nonnull align 8 %i.y) #26
          to label %bb.b unwind label %bb.fz

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !11, !noalias !919
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23.i.sroa.7.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 17 uses
  switch i8 %.pre, label %default.unreachable61 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.cm
  ]

bb.f:                                             ; preds = %.thread, %bb.e
  %i.ab = phi ptr [ %i.x, %.thread ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ac = phi ptr [ %i.w, %.thread ], [ %i.z, %bb.e ] ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !919, !nonnull !4, !align !13, !noundef !4 ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !7, !noalias !920, !noundef !4
  %.not.i = icmp eq i64 %i.ae, 2
  br i1 %.not.i, label %.thread.i, label %.thread144.i

.thread.i:                                        ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !noalias !919
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !919
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.591.sroa.4.i.i)
  br label %bb.j

.thread144.i:                                     ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.ad, ptr %i.ah, align 8, !noalias !919
  %.sroa.840.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  store i8 0, ptr %.sroa.840.0..sroa_idx.i, align 8, !noalias !919
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6104.sroa.3.sroa.3.sroa.3.sroa.5.i.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.373.sroa.7.i.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.7.i.sroa.5.i)
  br label %bb.cn

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #28
          to label %.noexc unwind label %bb.fw

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #28
          to label %.noexc6 unwind label %bb.fw

.noexc6:                                          ; preds = %bb.h
  unreachable

.body.i:                                          ; preds = %bb.cf, %.body41.i.i
  %i.ai = phi ptr [ %i.iv, %.body41.i.i ], [ %i.aa, %bb.cf ]
  %i.aj = phi ptr [ %i.iw, %.body41.i.i ], [ %i.z, %bb.cf ]
  %i.ak = phi ptr [ %i.iy, %.body41.i.i ], [ %i.al, %bb.cf ]
  %.pn.i = phi { ptr, i32 } [ %.pn15.pn.i.i, %.body41.i.i ], [ %i.ja, %bb.cf ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBI_15StreamingReaderNtNtNtNtNtBO_3raw3oio4read3api10ReadStream4read0EBO_(ptr noundef nonnull align 8 %i.ak) #26
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBJ_13ChunkedReaderNtNtNtNtNtBP_3raw3oio4read3api10ReadStream4read0EBP_.exit.i unwind label %bb.ck, !noalias !920

bb.i:                                             ; preds = %bb.e
  %.phi.trans.insert123.i = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 8 uses
  %.pre124.i = load i8, ptr %.phi.trans.insert123.i, align 8, !range !11, !noalias !921
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.591.sroa.4.i.i)
  switch i8 %.pre124.i, label %default.unreachable61 [
    i8 0, label %._crit_edge43
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.al
    i8 4, label %bb.k
  ]

._crit_edge43:                                    ; preds = %bb.i
  %.pre44 = load ptr, ptr %i.al, align 8, !noalias !921
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge43, %.thread.i
  %i.am = phi ptr [ %i.ab, %.thread.i ], [ %i.aa, %._crit_edge43 ]
  %i.an = phi ptr [ %i.ac, %.thread.i ], [ %i.z, %._crit_edge43 ]
  %i.ao = phi ptr [ %i.af, %.thread.i ], [ %.pre44, %._crit_edge43 ] ; 2 uses
  %i.ap = phi ptr [ %.sroa.8.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert123.i, %._crit_edge43 ]
  %i.aq = phi ptr [ %i.ag, %.thread.i ], [ %i.al, %._crit_edge43 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.ao, ptr %i.ar, align 8, !noalias !921
  br label %bb.ak

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !921
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
          to label %.noexc.i unwind label %bb.cf, !noalias !920

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
          to label %.noexc9.i unwind label %bb.cf, !noalias !920

.noexc9.i:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.cb, %bb.k
  %i.as = phi ptr [ %i.ie, %bb.cb ], [ %i.aa, %bb.k ] ; 8 uses
  %i.at = phi ptr [ %i.if, %bb.cb ], [ %i.z, %bb.k ] ; 7 uses
  %i.au = phi ptr [ %i.ig, %bb.cb ], [ %.phi.trans.insert123.i, %bb.k ] ; 8 uses
  %i.av = phi ptr [ %i.ih, %bb.cb ], [ %i.al, %bb.k ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !921
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2e_5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2g_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.p unwind label %bb.o, !noalias !922

bb.o:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !921
  %.val23.i.i = load ptr, ptr %i.aw, align 8, !noalias !921
  %i.ay = getelementptr i8, ptr %1, i64 256
  %.val24.i.i = load ptr, ptr %i.ay, align 8, !noalias !921, !nonnull !4, !align !13, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2s_5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_(ptr %.val23.i.i, ptr nonnull %.val24.i.i) #26
          to label %.body.i.i unwind label %bb.cd, !noalias !922

bb.p:                                             ; preds = %bb.n
  %i.az = load i64, ptr %i.r, align 8, !range !9, !noalias !921, !noundef !4 ; 3 uses
  %i.ba = icmp eq i64 %i.az, -2
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !921
  br label %bb.cg

bb.r:                                             ; preds = %bb.p
  %.sroa.390.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.390.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.390.0..sroa_idx.i.i, align 8, !noalias !921 ; 3 uses
  %.sroa.390.sroa.3.0..sroa.390.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.390.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.390.sroa.3.0..sroa.390.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !921 ; 2 uses
  %.sroa.390.sroa.5.0..sroa.390.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.390.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.390.sroa.5.0..sroa.390.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !921 ; 3 uses
  %.sroa.390.sroa.7.0..sroa.390.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.390.sroa.7.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.390.sroa.7.0..sroa.390.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !921 ; 3 uses
  %.sroa.390.sroa.7.i.sroa.6.0..sroa.390.sroa.7.0..sroa.390.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.390.sroa.7.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.390.sroa.7.i.sroa.6.0..sroa.390.sroa.7.0..sroa.390.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !921 ; 2 uses
  %.sroa.591.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.591.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.591.0..sroa_idx.i.i, align 8, !noalias !921
  %.sroa.591.sroa.2.0..sroa.591.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.bb = load <2 x ptr>, ptr %.sroa.591.sroa.2.0..sroa.591.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !921
  %.sroa.591.sroa.4.0..sroa.591.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.591.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.591.sroa.4.0..sroa.591.0..sroa_idx.sroa_idx.i.i, i64 16, i1 false), !noalias !921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !921
  %.val21.i.i = load ptr, ptr %i.aw, align 8, !noalias !921 ; 5 uses
  %i.bc = getelementptr i8, ptr %1, i64 256
  %.val22.i.i = load ptr, ptr %i.bc, align 8, !noalias !921, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.bd = load ptr, ptr %.val22.i.i, align 8, !invariant.load !4, !noalias !922 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i.i) ]
  invoke void %i.bd(ptr noundef nonnull %.val21.i.i)
          to label %bb.t unwind label %bb.v, !noalias !922

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !5, !invariant.load !4, !noalias !922 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2s_5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !range !6, !invariant.load !4, !noalias !922
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bf, i64 noundef range(i64 1, 536870913) %i.bi) #23, !noalias !922
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2s_5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_.exit.i.i

bb.v:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !5, !invariant.load !4, !noalias !922 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.body.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !range !6, !invariant.load !4, !noalias !922
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bl, i64 noundef range(i64 1, 536870913) %i.bo) #23, !noalias !922
  br label %.body.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2s_5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_.exit.i.i: ; preds = %bb.u, %bb.t
  %.not.i26.i.i = icmp eq i64 %i.az, -1
  br i1 %.not.i26.i.i, label %bb.x, label %bb.ce

bb.x:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2s_5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_.exit.i.i
  %.sroa.6114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  store i64 %.sroa.390.sroa.7.i.sroa.0.0.copyload.i, ptr %.sroa.6114.0..sroa_idx.i.i, align 8, !noalias !921
  %.sroa.390.sroa.7.i.sroa.6.0..sroa.6114.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store i64 %.sroa.390.sroa.7.i.sroa.6.0.copyload.i, ptr %.sroa.390.sroa.7.i.sroa.6.0..sroa.6114.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !921
  store ptr %.sroa.390.sroa.0.0.copyload.i.i, ptr %i.s, align 8, !noalias !921
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %.sroa.390.sroa.3.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !921
  %.sroa.5113.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store ptr %.sroa.390.sroa.5.0.copyload.i.i, ptr %.sroa.5113.0..sroa_idx.i.i, align 8, !noalias !921
  %.not.i27.i.i = icmp eq ptr %.sroa.390.sroa.0.0.copyload.i.i, null
  %i.bp = ptrtoint ptr %.sroa.390.sroa.5.0.copyload.i.i to i64
  %.sroa.0.0.i.i.i = select i1 %.not.i27.i.i, i64 %.sroa.390.sroa.7.i.sroa.0.0.copyload.i, i64 %i.bp
  %i.bq = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.bq, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !921, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %.val19.i.i = load ptr, ptr %i.bt, align 8, !noalias !922, !noundef !4 ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bs, i64 48
  %.val20.i.i = load ptr, ptr %i.bu, align 8, !noalias !922 ; 6 uses
  %i.bv = icmp eq ptr %.val19.i.i, null
  br i1 %i.bv, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEEB1G_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i) ]
  %i.bw = load ptr, ptr %.val20.i.i, align 8, !invariant.load !4, !noalias !922 ; 2 uses
  %.not.i.i28.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i28.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void %i.bw(ptr noundef nonnull %.val19.i.i)
          to label %bb.ab unwind label %bb.ad, !noalias !922

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !5, !invariant.load !4, !noalias !922 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEEB1G_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !6, !invariant.load !4, !noalias !922
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.by, i64 noundef range(i64 1, 536870913) %i.cb) #23, !noalias !922
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEEB1G_.exit.i.i

bb.ad:                                            ; preds = %bb.aa
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !5, !invariant.load !4, !noalias !922 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.body29.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cg = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !6, !invariant.load !4, !noalias !922
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ce, i64 noundef range(i64 1, 536870913) %i.ch) #23, !noalias !922
  br label %.body29.i.i

bb.af:                                            ; preds = %bb.ce, %bb.x
  %.sroa.14.0.i.i = phi i64 [ %.sroa.591.sroa.0.0.copyload.i.i, %bb.ce ], [ undef, %bb.x ]
  %i.ci = phi <2 x ptr> [ %i.bb, %bb.ce ], [ undef, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !921
  br label %bb.ch

.body29.i.i:                                      ; preds = %bb.ae, %bb.ad
  %i.cj = load ptr, ptr %i.br, align 8, !noalias !921, !nonnull !4, !align !13, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store ptr null, ptr %i.ck, align 8, !noalias !922
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s) #26
          to label %.body.i.i unwind label %bb.cd, !noalias !922

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEEB1G_.exit.i.i: ; preds = %bb.ac, %bb.ab, %bb.y
  %i.cl = load ptr, ptr %i.br, align 8, !noalias !921, !nonnull !4, !align !13, !noundef !4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store ptr null, ptr %i.cm, align 8, !noalias !922
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %i.cn = load ptr, ptr %i.s, align 8, !alias.scope !925, !noalias !921, !noundef !4 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEEB1G_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !926)
  call void @llvm.experimental.noalias.scope.decl(metadata !927)
  %i.cp = load ptr, ptr %.sroa.390.sroa.7.i.sroa.6.0..sroa.6114.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !928, !noalias !921, !noundef !4
  %i.cq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !928, !noalias !921, !nonnull !4, !align !13, !noundef !4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !929, !nonnull !4, !noundef !4
  %i.ct = load ptr, ptr %.sroa.5113.0..sroa_idx.i.i, align 8, !alias.scope !928, !noalias !921, !noundef !4
  %i.cu = load i64, ptr %.sroa.6114.0..sroa_idx.i.i, align 8, !alias.scope !928, !noalias !921, !noundef !4
  invoke void %i.cs(ptr noundef %i.cp, ptr noundef %i.ct, i64 noundef %i.cu)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.i.i unwind label %bb.aj, !noalias !922, !inline_history !23

bb.ah:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEEB1G_.exit.i.i
  %i.cv = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !930
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.ai, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.i.i unwind label %bb.aj, !noalias !922

.body.i.i:                                        ; preds = %bb.ca, %bb.aj, %.body29.i.i, %bb.w, %bb.v, %bb.o
  %i.cx = phi ptr [ %i.as, %.body29.i.i ], [ %i.as, %bb.aj ], [ %i.as, %bb.v ], [ %i.ie, %bb.ca ], [ %i.as, %bb.o ], [ %i.as, %bb.w ]
  %i.cy = phi ptr [ %i.at, %.body29.i.i ], [ %i.at, %bb.aj ], [ %i.at, %bb.v ], [ %i.if, %bb.ca ], [ %i.at, %bb.o ], [ %i.at, %bb.w ]
  %i.cz = phi ptr [ %i.au, %.body29.i.i ], [ %i.au, %bb.aj ], [ %i.au, %bb.v ], [ %i.ig, %bb.ca ], [ %i.au, %bb.o ], [ %i.au, %bb.w ]
  %i.da = phi ptr [ %i.av, %.body29.i.i ], [ %i.av, %bb.aj ], [ %i.av, %bb.v ], [ %i.ih, %bb.ca ], [ %i.av, %bb.o ], [ %i.av, %bb.w ]
  %.pn12.pn.i.i = phi { ptr, i32 } [ %i.cc, %.body29.i.i ], [ %i.db, %bb.aj ], [ %i.bj, %bb.v ], [ %i.iq, %bb.ca ], [ %i.ax, %bb.o ], [ %i.bj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !921
  br label %.body41.i.i

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !921
  %.pre.i.i = load ptr, ptr %i.br, align 8, !noalias !921
  br label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.i.i, %bb.j
  %i.dc = phi ptr [ %i.am, %bb.j ], [ %i.as, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.i.i ] ; 2 uses
  %i.dd = phi ptr [ %i.an, %bb.j ], [ %i.at, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.i.i ] ; 2 uses
  %i.de = phi ptr [ %i.ap, %bb.j ], [ %i.au, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.i.i ] ; 2 uses
  %i.df = phi ptr [ %i.aq, %bb.j ], [ %i.av, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.i.i ] ; 2 uses
  %i.dg = phi ptr [ %i.ao, %bb.j ], [ %.pre.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.i.i ] ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %.val25.i.i = load ptr, ptr %i.dh, align 8, !noalias !922, !noundef !4
  %.not.i.i.i = icmp eq ptr %.val25.i.i, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %.thread165.i.i

.thread.i.i:                                      ; preds = %bb.ak
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  store ptr %i.dg, ptr %i.di, align 8, !noalias !921
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !921
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.938.i.i.i)
  br label %bb.am

.body35.i.i:                                      ; preds = %bb.bq, %bb.aq
  %i.dj = phi ptr [ %i.ed, %bb.aq ], [ %i.aa, %bb.bq ]
  %i.dk = phi ptr [ %i.ee, %bb.aq ], [ %i.z, %bb.bq ]
  %i.dl = phi ptr [ %i.ef, %bb.aq ], [ %.phi.trans.insert123.i, %bb.bq ]
  %i.dm = phi ptr [ %i.eg, %bb.aq ], [ %i.al, %bb.bq ]
  %i.dn = phi ptr [ %i.ei, %bb.aq ], [ %i.do, %bb.bq ]
  %.pn4.i.i = phi { ptr, i32 } [ %.pn9.pn.pn.i.i.i, %bb.aq ], [ %i.hc, %bb.bq ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtBI_13ReadGenerator11next_reader0EBO_(ptr noundef nonnull align 8 %i.dn) #26
          to label %.body41.i.i unwind label %bb.cd, !noalias !922

bb.al:                                            ; preds = %bb.i
  %.phi.trans.insert142.i.i = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 5 uses
  %.pre143.i.i = load i8, ptr %.phi.trans.insert142.i.i, align 8, !range !12, !noalias !931
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.938.i.i.i)
  switch i8 %.pre143.i.i, label %default.unreachable61 [
    i8 0, label %._crit_edge125.i
    i8 1, label %bb.ar
    i8 2, label %bb.as
    i8 3, label %bb.at
  ]

._crit_edge125.i:                                 ; preds = %bb.al
  %.pre126.i = load ptr, ptr %i.do, align 8, !noalias !931
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge125.i, %.thread.i.i
  %i.dp = phi ptr [ %i.dc, %.thread.i.i ], [ %i.aa, %._crit_edge125.i ] ; 3 uses
  %i.dq = phi ptr [ %i.dd, %.thread.i.i ], [ %i.z, %._crit_edge125.i ] ; 3 uses
  %i.dr = phi ptr [ %i.de, %.thread.i.i ], [ %.phi.trans.insert123.i, %._crit_edge125.i ] ; 3 uses
  %i.ds = phi ptr [ %i.df, %.thread.i.i ], [ %i.al, %._crit_edge125.i ] ; 3 uses
  %i.dt = phi ptr [ %i.dg, %.thread.i.i ], [ %.pre126.i, %._crit_edge125.i ] ; 2 uses
  %i.du = phi ptr [ %.sroa.9.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert142.i.i, %._crit_edge125.i ] ; 3 uses
  %i.dv = phi ptr [ %i.di, %.thread.i.i ], [ %i.do, %._crit_edge125.i ] ; 2 uses
end_hunk_3
begin_hunk_4_@_RNCNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtB7_12BufferStreamNtNtCsagCT4lbS8Em_12futures_core6stream6Stream9poll_next0Bd_:bb.a
bb.ao:                                            ; preds = %bb.am
  %i.dy = load i64, ptr %i.q, align 8, !range !10, !noalias !931, !noundef !4
  %.not.i34.i.i = icmp eq i64 %i.dy, -1
  br i1 %.not.i34.i.i, label %bb.ap, label %.thread.i.i.i

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !931
  br label %bb.bs

.thread.i.i.i:                                    ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.033.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.033.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !931
  %i.dz = load ptr, ptr %i.dw, align 8, !noalias !931, !nonnull !4, !align !13, !noundef !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %.val15.i.i.i = load ptr, ptr %i.ea, align 8, !noalias !932, !nonnull !4, !noundef !4
  %i.eb = getelementptr inbounds nuw i8, ptr %.val15.i.i.i, i64 136 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.033.i.i.i, i64 24, i1 false), !noalias !931
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.eb, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !931
  %.sroa.1034.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  store i8 0, ptr %.sroa.1034.0..sroa_idx.i.i.i, align 8, !noalias !931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !931
  br label %bb.aw

.body19.i.i.i:                                    ; preds = %.body.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.033.i.i.i)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.bn, %.body19.i.i.i, %bb.an
  %i.ed = phi ptr [ %i.dp, %bb.an ], [ %i.ej, %.body19.i.i.i ], [ %i.fr, %bb.bn ]
  %i.ee = phi ptr [ %i.dq, %bb.an ], [ %i.ek, %.body19.i.i.i ], [ %i.fs, %bb.bn ]
  %i.ef = phi ptr [ %i.dr, %bb.an ], [ %i.el, %.body19.i.i.i ], [ %i.ft, %bb.bn ]
  %i.eg = phi ptr [ %i.ds, %bb.an ], [ %i.em, %.body19.i.i.i ], [ %i.fu, %bb.bn ]
  %i.eh = phi ptr [ %i.du, %bb.an ], [ %i.en, %.body19.i.i.i ], [ %i.fv, %bb.bn ]
  %i.ei = phi ptr [ %i.dv, %bb.an ], [ %i.eo, %.body19.i.i.i ], [ %i.fw, %bb.bn ]
  %.pn9.pn.pn.i.i.i = phi { ptr, i32 } [ %i.dx, %bb.an ], [ %.pn4.i.i.i, %.body19.i.i.i ], [ %i.gy, %bb.bn ]
  store i8 2, ptr %i.eh, align 8, !noalias !931
  br label %.body35.i.i

bb.ar:                                            ; preds = %bb.al
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
          to label %.noexc37.i.i unwind label %bb.bq, !noalias !922

.noexc37.i.i:                                     ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.al
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
          to label %.noexc38.i.i unwind label %bb.bq, !noalias !922

.noexc38.i.i:                                     ; preds = %bb.as
  unreachable

.body.i.i.i:                                      ; preds = %bb.bk, %.body.i.i.i.i
  %i.ej = phi ptr [ %i.fj, %.body.i.i.i.i ], [ %i.aa, %bb.bk ]
  %i.ek = phi ptr [ %i.fk, %.body.i.i.i.i ], [ %i.z, %bb.bk ]
  %i.el = phi ptr [ %i.fl, %.body.i.i.i.i ], [ %.phi.trans.insert123.i, %bb.bk ]
  %i.em = phi ptr [ %i.fm, %.body.i.i.i.i ], [ %i.al, %bb.bk ]
  %i.en = phi ptr [ %i.fn, %.body.i.i.i.i ], [ %.phi.trans.insert142.i.i, %bb.bk ]
  %i.eo = phi ptr [ %i.fo, %.body.i.i.i.i ], [ %i.do, %bb.bk ]
  %i.ep = phi ptr [ %i.fq, %.body.i.i.i.i ], [ %i.eq, %bb.bk ]
  %.pn4.i.i.i = phi { ptr, i32 } [ %.pn2.i.i.i.i, %.body.i.i.i.i ], [ %i.gs, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !931
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs0_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ReadDynEL_ENtBJ_4Read4open0EBR_(ptr noundef nonnull align 8 %i.ep) #26
          to label %.body19.i.i.i unwind label %bb.bp, !noalias !933

bb.at:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.033.i.i.i)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !range !12, !noalias !934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !931
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  switch i8 %.pre.i.i.i, label %default.unreachable61 [
    i8 0, label %._crit_edge.i.i
    i8 1, label %bb.ay
    i8 2, label %bb.az
    i8 3, label %bb.au
  ]

._crit_edge.i.i:                                  ; preds = %bb.at
  %.phi.trans.insert144.i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.pre145.i.i = load ptr, ptr %.phi.trans.insert144.i.i, align 8, !noalias !934
  br label %bb.aw

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !934
  br label %bb.ba

bb.av:                                            ; preds = %bb.aw
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.aw:                                            ; preds = %._crit_edge.i.i, %.thread.i.i.i
  %i.es = phi ptr [ %i.dp, %.thread.i.i.i ], [ %i.aa, %._crit_edge.i.i ] ; 2 uses
  %i.et = phi ptr [ %i.dq, %.thread.i.i.i ], [ %i.z, %._crit_edge.i.i ] ; 2 uses
  %i.eu = phi ptr [ %i.dr, %.thread.i.i.i ], [ %.phi.trans.insert123.i, %._crit_edge.i.i ] ; 2 uses
  %i.ev = phi ptr [ %i.ds, %.thread.i.i.i ], [ %i.al, %._crit_edge.i.i ] ; 2 uses
  %i.ew = phi ptr [ %i.du, %.thread.i.i.i ], [ %.phi.trans.insert142.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.ex = phi ptr [ %i.dv, %.thread.i.i.i ], [ %i.do, %._crit_edge.i.i ] ; 2 uses
  %i.ey = phi ptr [ %i.eb, %.thread.i.i.i ], [ %.pre145.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.ez = phi ptr [ %.sroa.1034.0..sroa_idx.i.i.i, %.thread.i.i.i ], [ %.phi.trans.insert.i.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.fa = phi ptr [ %i.ec, %.thread.i.i.i ], [ %i.eq, %._crit_edge.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i64 24, i1 false), !noalias !934
  %.val.i.i.i.i = load ptr, ptr %i.ey, align 8, !noalias !936, !nonnull !4, !noundef !4
  %i.fb = getelementptr i8, ptr %i.ey, i64 8
  %.val4.i.i.i.i = load ptr, ptr %i.fb, align 8, !noalias !936, !nonnull !4, !align !13, !noundef !4
  %i.fc = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !invariant.load !4, !noalias !936, !nonnull !4
  %i.fe = invoke { ptr, ptr } %i.fd(ptr noundef nonnull %.val.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.ax unwind label %bb.av, !noalias !936 ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.ff = extractvalue { ptr, ptr } %i.fe, 0
  %i.fg = extractvalue { ptr, ptr } %i.fe, 1
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %i.ff, ptr %i.fh, align 8, !noalias !934
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr %i.fg, ptr %i.fi, align 8, !noalias !934
  br label %bb.ba

.body.i.i.i.i:                                    ; preds = %bb.bi, %bb.bh, %bb.bb, %bb.av
  %i.fj = phi ptr [ %i.es, %bb.av ], [ %i.fr, %bb.bb ], [ %i.fr, %bb.bh ], [ %i.fr, %bb.bi ]
  %i.fk = phi ptr [ %i.et, %bb.av ], [ %i.fs, %bb.bb ], [ %i.fs, %bb.bh ], [ %i.fs, %bb.bi ]
  %i.fl = phi ptr [ %i.eu, %bb.av ], [ %i.ft, %bb.bb ], [ %i.ft, %bb.bh ], [ %i.ft, %bb.bi ]
  %i.fm = phi ptr [ %i.ev, %bb.av ], [ %i.fu, %bb.bb ], [ %i.fu, %bb.bh ], [ %i.fu, %bb.bi ]
  %i.fn = phi ptr [ %i.ew, %bb.av ], [ %i.fv, %bb.bb ], [ %i.fv, %bb.bh ], [ %i.fv, %bb.bi ]
  %i.fo = phi ptr [ %i.ex, %bb.av ], [ %i.fw, %bb.bb ], [ %i.fw, %bb.bh ], [ %i.fw, %bb.bi ]
  %i.fp = phi ptr [ %i.ez, %bb.av ], [ %i.fx, %bb.bb ], [ %i.fx, %bb.bh ], [ %i.fx, %bb.bi ]
  %i.fq = phi ptr [ %i.fa, %bb.av ], [ %i.fy, %bb.bb ], [ %i.fy, %bb.bh ], [ %i.fy, %bb.bi ]
  %.pn2.i.i.i.i = phi { ptr, i32 } [ %i.er, %bb.av ], [ %i.ga, %bb.bb ], [ %i.gl, %bb.bh ], [ %i.gl, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !934
  store i8 2, ptr %i.fp, align 8, !noalias !934
  br label %.body.i.i.i

bb.ay:                                            ; preds = %bb.at
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28
          to label %.noexc.i.i.i unwind label %bb.bk, !noalias !932

.noexc.i.i.i:                                     ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.at
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28
          to label %.noexc16.i.i.i unwind label %bb.bk, !noalias !932

.noexc16.i.i.i:                                   ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.ax, %bb.au
  %i.fr = phi ptr [ %i.es, %bb.ax ], [ %i.aa, %bb.au ] ; 7 uses
  %i.fs = phi ptr [ %i.et, %bb.ax ], [ %i.z, %bb.au ] ; 6 uses
  %i.ft = phi ptr [ %i.eu, %bb.ax ], [ %.phi.trans.insert123.i, %bb.au ] ; 7 uses
  %i.fu = phi ptr [ %i.ev, %bb.ax ], [ %i.al, %bb.au ] ; 6 uses
  %i.fv = phi ptr [ %i.ew, %bb.ax ], [ %.phi.trans.insert142.i.i, %bb.au ] ; 7 uses
  %i.fw = phi ptr [ %i.ex, %bb.ax ], [ %i.do, %bb.au ] ; 4 uses
  %i.fx = phi ptr [ %i.ez, %bb.ax ], [ %.phi.trans.insert.i.i.i, %bb.au ] ; 5 uses
  %i.fy = phi ptr [ %i.fa, %bb.ax ], [ %i.eq, %bb.au ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadIBW_DNtNtNtNtB2f_3oio4read3api13ReadStreamDynEL_EENtNtNtB2h_5types5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2h_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bc unwind label %bb.bb, !noalias !933

bb.bb:                                            ; preds = %bb.ba
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %.val7.i.i.i.i = load ptr, ptr %i.fz, align 8, !noalias !934
  %i.gb = getelementptr i8, ptr %1, i64 304
  %.val8.i.i.i.i = load ptr, ptr %i.gb, align 8, !noalias !934, !nonnull !4, !align !13, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadIBS_DNtNtNtNtB2t_3oio4read3api13ReadStreamDynEL_EENtNtNtB2v_5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_(ptr %.val7.i.i.i.i, ptr nonnull %.val8.i.i.i.i) #26
          to label %.body.i.i.i.i unwind label %bb.bj, !noalias !937

bb.bc:                                            ; preds = %bb.ba
  %i.gc = load i64, ptr %i.p, align 8, !range !9, !alias.scope !935, !noalias !938, !noundef !4 ; 3 uses
  %i.gd = icmp eq i64 %i.gc, -2
  br i1 %i.gd, label %bb.br, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val5.i.i.i.i = load ptr, ptr %i.fz, align 8, !noalias !934 ; 5 uses
  %i.ge = getelementptr i8, ptr %1, i64 304
  %.val6.i.i.i.i = load ptr, ptr %i.ge, align 8, !noalias !934, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.gf = load ptr, ptr %.val6.i.i.i.i, align 8, !invariant.load !4, !noalias !937 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i) ]
  invoke void %i.gf(ptr noundef nonnull %.val5.i.i.i.i)
          to label %bb.bf unwind label %bb.bh, !noalias !937

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.gg = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !range !5, !invariant.load !4, !noalias !937 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gj = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 16
  %i.gk = load i64, ptr %i.gj, align 8, !range !6, !invariant.load !4, !noalias !937
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.gh, i64 noundef range(i64 1, 536870913) %i.gk) #23, !noalias !937
  br label %bb.bl

bb.bh:                                            ; preds = %bb.be
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !range !5, !invariant.load !4, !noalias !937 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %.body.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gp = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !range !6, !invariant.load !4, !noalias !937
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.gn, i64 noundef range(i64 1, 536870913) %i.gq) #23, !noalias !937
  br label %.body.i.i.i.i

bb.bj:                                            ; preds = %bb.bb
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !937
  unreachable

bb.bk:                                            ; preds = %bb.az, %bb.ay
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.bl:                                            ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !934
  store i8 1, ptr %i.fx, align 8, !noalias !934
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.3.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !931 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.3.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !931 ; 2 uses
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.3.sroa.5.i.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !931 ; 2 uses
  %.sroa.3.sroa.5.i.sroa.5.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.3.sroa.5.i.sroa.5.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.3.sroa.5.i.sroa.5.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx.i.i, align 8, !noalias !931 ; 2 uses
  %.sroa.3.sroa.5.i.sroa.5.i.sroa.7.0..sroa.3.sroa.5.i.sroa.5.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.3.sroa.5.i.sroa.5.i.sroa.7.0.copyload.i = load i64, ptr %.sroa.3.sroa.5.i.sroa.5.i.sroa.7.0..sroa.3.sroa.5.i.sroa.5.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx.i.sroa_idx.i, align 8, !noalias !931 ; 2 uses
  %.sroa.3.sroa.5.i.sroa.6.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.3.sroa.5.i.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.3.sroa.5.i.sroa.6.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx.i.i, align 8, !noalias !931 ; 2 uses
  %.sroa.536.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.gt = load <2 x ptr>, ptr %.sroa.536.0..sroa_idx.i.i.i, align 8, !noalias !931 ; 4 uses
  %.sroa.938.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.938.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.938.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !931
  %.not.i.i33.i.i = icmp eq i64 %i.gc, -1
  br i1 %.not.i.i33.i.i, label %bb.bm, label %bb.cc

bb.bm:                                            ; preds = %bb.bl
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !931
  store ptr %.sroa.3.sroa.5.i.sroa.0.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !931
  %.sroa.3.sroa.5.i.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %.sroa.3.sroa.5.i.sroa.5.i.sroa.0.0.copyload.i, ptr %.sroa.3.sroa.5.i.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !931
  %.sroa.3.sroa.5.i.sroa.5.i.sroa.7.0..sroa.3.sroa.5.i.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %.sroa.3.sroa.5.i.sroa.5.i.sroa.7.0.copyload.i, ptr %.sroa.3.sroa.5.i.sroa.5.i.sroa.7.0..sroa.3.sroa.5.i.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx.i.sroa_idx.i, align 8, !noalias !931
  %.sroa.3.sroa.5.i.sroa.6.0..sroa.6.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 %.sroa.3.sroa.5.i.sroa.6.0.copyload.i.i, ptr %.sroa.3.sroa.5.i.sroa.6.0..sroa.6.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !931
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.033.i.i.i)
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !931, !nonnull !4, !align !13, !noundef !4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %.val14.i.i.i = load ptr, ptr %i.gw, align 8, !noalias !933, !nonnull !4, !noundef !4
  %i.gx = getelementptr inbounds nuw i8, ptr %.val14.i.i.i, i64 16
  store ptr %.sroa.3.sroa.0.0.copyload.i.i.i, ptr %i.o, align 8, !noalias !931
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.3.sroa.3.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !931
  invoke void @_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtB2_11ReadContext21observe_read_response(ptr noundef nonnull align 8 %i.gx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.o)
          to label %bb.bo unwind label %bb.bn, !noalias !933

bb.bn:                                            ; preds = %bb.bm
  %i.gy = landingpad { ptr, i32 }
          cleanup
  %i.gz = extractelement <2 x ptr> %i.gt, i64 1
  %i.ha = extractelement <2 x ptr> %i.gt, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !931
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_(ptr nonnull %i.ha, ptr nonnull %i.gz) #26
          to label %bb.aq unwind label %bb.bp, !noalias !933

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !931
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bn, %.body.i.i.i
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !933
  unreachable

bb.bq:                                            ; preds = %bb.as, %bb.ar
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.body35.i.i

bb.br:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !934
  store i8 3, ptr %i.fx, align 8, !noalias !934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !931
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.033.i.i.i)
  store i8 3, ptr %i.fv, align 8, !noalias !931
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.938.i.i.i)
  br label %bb.cg

bb.bs:                                            ; preds = %bb.bo, %bb.ap
  %i.hd = phi ptr [ %i.fr, %bb.bo ], [ %i.dp, %bb.ap ] ; 3 uses
  %i.he = phi ptr [ %i.fs, %bb.bo ], [ %i.dq, %bb.ap ] ; 3 uses
  %i.hf = phi ptr [ %i.ft, %bb.bo ], [ %i.dr, %bb.ap ] ; 3 uses
  %i.hg = phi ptr [ %i.fu, %bb.bo ], [ %i.ds, %bb.ap ] ; 3 uses
  %.ph.i = phi ptr [ %i.fv, %bb.bo ], [ %i.du, %bb.ap ]
  %i.hh = phi <2 x ptr> [ %i.gt, %bb.bo ], [ <ptr null, ptr undef>, %bb.ap ] ; 2 uses
  store i8 1, ptr %.ph.i, align 8, !noalias !931
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.938.i.i.i)
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 4 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !921, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %.val.i.i = load ptr, ptr %i.hk, align 8, !noalias !922, !noundef !4 ; 4 uses
  %i.hl = getelementptr i8, ptr %i.hj, i64 48
  %.val18.i.i = load ptr, ptr %i.hl, align 8, !noalias !922 ; 6 uses
  %i.hm = icmp eq ptr %.val.i.i, null
  br i1 %i.hm, label %bb.bz, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18.i.i) ]
  %i.hn = load ptr, ptr %.val18.i.i, align 8, !invariant.load !4, !noalias !922 ; 2 uses
  %.not.i.i44.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i44.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke void %i.hn(ptr noundef nonnull %.val.i.i)
          to label %bb.bv unwind label %bb.bx, !noalias !922

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ho = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !range !5, !invariant.load !4, !noalias !922 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hr = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !range !6, !invariant.load !4, !noalias !922
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.hp, i64 noundef range(i64 1, 536870913) %i.hs) #23, !noalias !922
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bu
  %i.ht = landingpad { ptr, i32 }
          cleanup
  %i.hu = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !range !5, !invariant.load !4, !noalias !922 ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %.body46.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hx = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 16
  %i.hy = load i64, ptr %i.hx, align 8, !range !6, !invariant.load !4, !noalias !922
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.hv, i64 noundef range(i64 1, 536870913) %i.hy) #23, !noalias !922
  br label %.body46.i.i

.body46.i.i:                                      ; preds = %bb.by, %bb.bx
  %i.hz = load ptr, ptr %i.hi, align 8, !noalias !921, !nonnull !4, !align !13, !noundef !4
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  store <2 x ptr> %i.hh, ptr %i.ia, align 8, !noalias !922
  br label %.body41.i.i

bb.bz:                                            ; preds = %bb.bw, %bb.bv, %bb.bs
  %i.ib = load ptr, ptr %i.hi, align 8, !noalias !921, !nonnull !4, !align !13, !noundef !4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  store <2 x ptr> %i.hh, ptr %i.ic, align 8, !noalias !922
  %.pre147.i.i = load ptr, ptr %i.hi, align 8, !noalias !921 ; 2 uses
  %.phi.trans.insert148.i.i = getelementptr inbounds nuw i8, ptr %.pre147.i.i, i64 40
  %.pre149.i.i = load ptr, ptr %.phi.trans.insert148.i.i, align 8, !alias.scope !939, !noalias !922
  %i.id = icmp eq ptr %.pre149.i.i, null
  br i1 %i.id, label %bb.ch, label %.thread165.i.i

.thread165.i.i:                                   ; preds = %bb.bz, %bb.ak
  %i.ie = phi ptr [ %i.hd, %bb.bz ], [ %i.dc, %bb.ak ] ; 2 uses
  %i.if = phi ptr [ %i.he, %bb.bz ], [ %i.dd, %bb.ak ] ; 2 uses
  %i.ig = phi ptr [ %i.hf, %bb.bz ], [ %i.de, %bb.ak ] ; 2 uses
  %i.ih = phi ptr [ %i.hg, %bb.bz ], [ %i.df, %bb.ak ] ; 2 uses
  %i.ii = phi ptr [ %.pre147.i.i, %bb.bz ], [ %i.dg, %bb.ak ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !921
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !922, !nonnull !4, !noundef !4
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 48
  %i.im = load ptr, ptr %i.il, align 8, !noalias !922, !nonnull !4, !align !13, !noundef !4
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !invariant.load !4, !noalias !922, !nonnull !4
  %i.ip = invoke { ptr, ptr } %i.io(ptr noundef nonnull %i.ik)
          to label %bb.cb unwind label %bb.ca, !noalias !922 ; 2 uses

bb.ca:                                            ; preds = %.thread165.i.i
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.cb:                                            ; preds = %.thread165.i.i
  %i.ir = extractvalue { ptr, ptr } %i.ip, 0
  %i.is = extractvalue { ptr, ptr } %i.ip, 1
end_hunk_4
begin_hunk_5_@_RNCNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtB7_12MemoryReaderNtNtNtNtNtBd_3raw3oio4read11stream_read10StreamRead4open0Bd_:bb.a
  %.sroa.12.sroa.8.0..sroa.12.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1237, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.8.0..sroa.12.0..sroa_idx17.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  %i.br = load ptr, ptr %i.i, align 8, !alias.scope !1049, !noundef !4 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i37, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bt = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !1050
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.an, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i37

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.i) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i37 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ae) #26
          to label %.body32 unwind label %bb.as

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i37: ; preds = %bb.an, %bb.am, %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %i.bw = load ptr, ptr %i.ae, align 8, !alias.scope !1053, !noundef !4 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i37
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !1056, !noundef !4
  %i.ca = load ptr, ptr %.sroa.648.0..sroa_idx, align 8, !alias.scope !1056, !nonnull !4, !align !13, !noundef !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !1057, !nonnull !4, !noundef !4
  %i.cd = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !1056, !noundef !4
  %i.ce = load i64, ptr %.sroa.849.0..sroa_idx, align 8, !alias.scope !1056, !noundef !4
  invoke void %i.cc(ptr noundef %i.bz, ptr noundef %i.cd, i64 noundef %i.ce)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_.exit42 unwind label %bb.ae, !inline_history !1042

bb.aq:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i37
  %i.cf = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !1058
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.ar, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_.exit42

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ae) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_.exit42 unwind label %bb.ae

bb.as:                                            ; preds = %bb.ao
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_.exit42: ; preds = %bb.j, %bb.av, %bb.aq, %bb.ap, %bb.ar
  %.sroa.11.2 = phi ptr [ %.sroa.12.sroa.7.0.copyload, %bb.aq ], [ %.sroa.12.sroa.7.0.copyload, %bb.ar ], [ %.sroa.12.sroa.7.0.copyload, %bb.ap ], [ %.sroa.10.sroa.11.0.copyload45, %bb.av ], [ %.sroa.11.0.copyload, %bb.j ]
  %.sroa.1032.2 = phi ptr [ %.sroa.12.sroa.6.0.copyload, %bb.aq ], [ %.sroa.12.sroa.6.0.copyload, %bb.ar ], [ %.sroa.12.sroa.6.0.copyload, %bb.ap ], [ %.sroa.10.sroa.10.0.copyload43, %bb.av ], [ %.sroa.1032.0.copyload, %bb.j ]
  %.sroa.827.2 = phi i64 [ %i.al, %bb.aq ], [ %i.al, %bb.ar ], [ %i.al, %bb.ap ], [ %.sroa.10.sroa.8.0.copyload41, %bb.av ], [ %.sroa.827.0.copyload, %bb.j ]
  %.sroa.523.2 = phi i64 [ %i.aj, %bb.aq ], [ %i.aj, %bb.ar ], [ %i.aj, %bb.ap ], [ %.sroa.10.sroa.0.0.copyload39, %bb.av ], [ %.sroa.523.0.copyload, %bb.j ]
  %.sroa.021.2 = phi i64 [ %i.ah, %bb.aq ], [ %i.ah, %bb.ar ], [ %i.ah, %bb.ap ], [ %.sroa.6.8.copyload5, %bb.av ], [ %.sroa.021.0.copyload, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i44 unwind label %bb.at

bb.at:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_.exit42
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body34 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i44: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_.exit42
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit48 unwind label %bb.ah

bb.av:                                            ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.sroa.9, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1237, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.12, i64 16, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_.exit42

bb.aw:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28
  unreachable

bb.ax:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_13ReadStreamDynEL_ENtB7_10ReadStream8read_all0Bf_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !4
  switch i8 %i.b, label %default.unreachable11 [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable11:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %.val7 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val8 = load ptr, ptr %i.e, align 8, !nonnull !4, !align !13, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %.val8, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4
  %i.h = invoke { ptr, ptr } %i.g(ptr noundef nonnull %.val7)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.j, ptr %i.l, align 8
  br label %bb.g

.body:                                            ; preds = %bb.o, %bb.n, %bb.h, %bb.b
  %.pn2 = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.n, %bb.h ], [ %i.y, %bb.n ], [ %i.y, %bb.o ]
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %.pn2

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2e_5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2g_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  %.val5 = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %1, i64 16
  %.val6 = load ptr, ptr %i.o, align 8, !nonnull !4, !align !13, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2s_5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_(ptr %.val5, ptr nonnull %.val6) #26
          to label %.body unwind label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.p = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.q = icmp eq i64 %i.p, -2
  br i1 %i.q, label %common.ret, label %bb.j

common.ret:                                       ; preds = %bb.i, %bb.m, %bb.l
  %storemerge = phi i8 [ 1, %bb.m ], [ 1, %bb.l ], [ 3, %bb.i ]
  store i8 %storemerge, ptr %i.a, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  %.val = load ptr, ptr %i.m, align 8             ; 5 uses
  %i.r = getelementptr i8, ptr %1, i64 16
  %.val4 = load ptr, ptr %i.r, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.s = load ptr, ptr %.val4, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.s(ptr noundef nonnull %.val)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %common.ret, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #23
  br label %common.ret

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #23
  br label %.body

bb.p:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read11stream_readINtB6_12StreamReaderNtNtNtNtBe_8services6memory7backend12MemoryReaderENtNtB8_3api4Read4open0Be_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !4
  switch i8 %i.b, label %default.unreachable8 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable8:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !13, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.d, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RNCNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtB7_12MemoryReaderNtNtNtNtNtBd_3raw3oio4read11stream_read10StreamRead4open0Bd_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %i.f)
          to label %common.ret unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %i.g

common.ret:                                       ; preds = %bb.e
  %i.h = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.i = icmp eq i64 %i.h, -2
  %. = select i1 %i.i, i8 3, i8 1
  store i8 %., ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read11stream_readINtB6_12StreamReaderNtNtNtNtBe_8services6memory7backend12MemoryReaderENtNtB8_3api4Read4read0Be_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.14117.sroa.0 = alloca [32 x i8], align 8 ; 6 uses
  %.sroa.18 = alloca [16 x i8], align 8           ; 6 uses
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
  %i.c = alloca [88 x i8], align 8                ; 11 uses
  %.sroa.3106.sroa.3 = alloca [32 x i8], align 8  ; 4 uses
  %.sroa.5107.sroa.4 = alloca [16 x i8], align 8  ; 2 uses
  %i.d = alloca [88 x i8], align 8                ; 12 uses
  %i.e = alloca [40 x i8], align 8                ; 15 uses
  %.sroa.3.sroa.3 = alloca [32 x i8], align 8     ; 3 uses
  %.sroa.982 = alloca [16 x i8], align 8          ; 2 uses
  %i.f = alloca [88 x i8], align 8                ; 12 uses
  %i.g = alloca [88 x i8], align 8                ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !range !11, !noundef !4
  switch i8 %i.i, label %default.unreachable183 [
    i8 0, label %bb.c
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.b
  ]

default.unreachable183:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 65
  store i8 0, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !13, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.val38 = load i64, ptr %i.m, align 8, !range !7, !noundef !4
  %.not = icmp eq i64 %.val38, 0
  br i1 %.not, label %bb.d, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE10ok_or_elseNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNCNCNvXs_NtNtNtNtB12_3raw3oio4read11stream_readINtB1V_12StreamReaderNtNtNtNtB12_8services6memory7backend12MemoryReaderENtNtB1X_3api4Read4read00EB12_.exit.thread

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE10ok_or_elseNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNCNCNvXs_NtNtNtNtB12_3raw3oio4read11stream_readINtB1V_12StreamReaderNtNtNtNtB12_8services6memory7backend12MemoryReaderENtNtB1X_3api4Read4read00EB12_.exit.thread: ; preds = %bb.c
  %i.n = getelementptr i8, ptr %1, i64 40
  %.val39 = load i64, ptr %i.n, align 8
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE10ok_or_elseNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNCNCNvXs_NtNtNtNtB12_3raw3oio4read11stream_readINtB1V_12StreamReaderNtNtNtNtB12_8services6memory7backend12MemoryReaderENtNtB1X_3api4Read4read00EB12_.exit._crit_edge

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.g, i8 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 29)
          to label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE10ok_or_elseNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNCNCNvXs_NtNtNtNtB12_3raw3oio4read11stream_readINtB1V_12StreamReaderNtNtNtNtB12_8services6memory7backend12MemoryReaderENtNtB1X_3api4Read4read00EB12_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.g

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE10ok_or_elseNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNCNCNvXs_NtNtNtNtB12_3raw3oio4read11stream_readINtB1V_12StreamReaderNtNtNtNtB12_8services6memory7backend12MemoryReaderENtNtB1X_3api4Read4read00EB12_.exit: ; preds = %bb.d
  %.pr = load i64, ptr %i.g, align 8, !alias.scope !1088, !noalias !1089 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %.not.i = icmp eq i64 %.pr, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1090 ; 2 uses
  br i1 %.not.i, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE10ok_or_elseNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNCNCNvXs_NtNtNtNtB12_3raw3oio4read11stream_readINtB1V_12StreamReaderNtNtNtNtB12_8services6memory7backend12MemoryReaderENtNtB1X_3api4Read4read00EB12_.exit._crit_edge, label %bb.f

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE10ok_or_elseNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNCNCNvXs_NtNtNtNtB12_3raw3oio4read11stream_readINtB1V_12StreamReaderNtNtNtNtB12_8services6memory7backend12MemoryReaderENtNtB1X_3api4Read4read00EB12_.exit._crit_edge: ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE10ok_or_elseNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNCNCNvXs_NtNtNtNtB12_3raw3oio4read11stream_readINtB1V_12StreamReaderNtNtNtNtB12_8services6memory7backend12MemoryReaderENtNtB1X_3api4Read4read00EB12_.exit, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE10ok_or_elseNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNCNCNvXs_NtNtNtNtB12_3raw3oio4read11stream_readINtB1V_12StreamReaderNtNtNtNtB12_8services6memory7backend12MemoryReaderENtNtB1X_3api4Read4read00EB12_.exit.thread
  %i.p = phi i64 [ %.val39, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE10ok_or_elseNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNCNCNvXs_NtNtNtNtB12_3raw3oio4read11stream_readINtB1V_12StreamReaderNtNtNtNtB12_8services6memory7backend12MemoryReaderENtNtB1X_3api4Read4read00EB12_.exit.thread ], [ %.pre, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE10ok_or_elseNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNCNCNvXs_NtNtNtNtB12_3raw3oio4read11stream_readINtB1V_12StreamReaderNtNtNtNtB12_8services6memory7backend12MemoryReaderENtNtB1X_3api4Read4read00EB12_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.l, ptr %.sroa.877.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.j

bb.f:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE10ok_or_elseNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNCNCNvXs_NtNtNtNtB12_3raw3oio4read11stream_readINtB1V_12StreamReaderNtNtNtNtB12_8services6memory7backend12MemoryReaderENtNtB1X_3api4Read4read00EB12_.exit
  %.sroa.10.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14117.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx62, i64 32, i1 false)
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx62.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.10.sroa.6.0.copyload = load i64, ptr %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx62.sroa_idx, align 8, !alias.scope !1091
  %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx62.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.10.sroa.7.0.copyload = load ptr, ptr %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx62.sroa_idx, align 8, !alias.scope !1091
  %.sroa.10.sroa.8.0..sroa.10.0..sroa_idx62.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.10.sroa.8.0.copyload = load ptr, ptr %.sroa.10.sroa.8.0..sroa.10.0..sroa_idx62.sroa_idx, align 8, !alias.scope !1091
  %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx62.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx62.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ak

bb.g:                                             ; preds = %bb.bg, %bb.e, %bb.k
  %.pn30.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.t, %bb.k ], [ %.pn26, %bb.bg ]
  store i8 2, ptr %i.h, align 8
  resume { ptr, i32 } %.pn30.pn

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28
  unreachable

bb.j:                                             ; preds = %bb.a, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE10ok_or_elseNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNCNCNvXs_NtNtNtNtB12_3raw3oio4read11stream_readINtB1V_12StreamReaderNtNtNtNtB12_8services6memory7backend12MemoryReaderENtNtB1X_3api4Read4read00EB12_.exit._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  invoke fastcc void @_RNCNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtB7_12MemoryReaderNtNtNtNtNtBd_3raw3oio4read11stream_read10StreamRead4open0Bd_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.f, ptr noundef nonnull align 8 %i.s)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.g

bb.l:                                             ; preds = %bb.j
  %i.u = load i64, ptr %i.f, align 8, !range !9, !noundef !4 ; 3 uses
  %i.v = icmp eq i64 %i.u, -2
  br i1 %i.v, label %bb.m, label %bb.n

common.ret:                                       ; preds = %bb.ak, %bb.u, %bb.m
  %.sink = phi i8 [ 1, %bb.ak ], [ 4, %bb.u ], [ 3, %bb.m ]
  store i8 %.sink, ptr %i.h, align 8
  ret void

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 2, ptr %0, align 8
  br label %common.ret

bb.n:                                             ; preds = %bb.l
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.sroa.0.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.3.sroa.5.0.copyload = load i64, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.580.0.copyload = load ptr, ptr %.sroa.580.0..sroa_idx, align 8 ; 3 uses
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.781.0.copyload = load ptr, ptr %.sroa.781.0..sroa_idx, align 8 ; 3 uses
  %.sroa.982.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.982, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.982.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not.i40 = icmp eq i64 %i.u, -1
  br i1 %.not.i40, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.580.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.781.0.copyload) ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 65
  store i8 1, ptr %i.w, align 1
  store i64 %.sroa.3.sroa.0.0.copyload, ptr %i.s, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %.sroa.3.sroa.5.0.copyload, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  store ptr %.sroa.580.0.copyload, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %.sroa.781.0.copyload, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.x, ptr %i.z, align 8
  %.sroa.9103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 0, ptr %.sroa.9103.0..sroa_idx, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.982, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14117.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3, i64 32, i1 false)
  br label %bb.ak

bb.q:                                             ; preds = %.body, %bb.bi, %bb.ba, %bb.s
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.r:                                             ; preds = %bb.b, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  invoke fastcc void @_RNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_13ReadStreamDynEL_ENtB7_10ReadStream8read_all0Bf_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.d, ptr noundef nonnull align 8 %i.ab, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_(ptr noundef nonnull align 8 %i.ab) #26
          to label %.body unwind label %bb.q

bb.t:                                             ; preds = %bb.r
  %i.ad = load i64, ptr %i.d, align 8, !range !9, !noundef !4 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, -2
  br i1 %i.ae, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %common.ret

bb.v:                                             ; preds = %bb.t
  %.sroa.3106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3106.sroa.0.0.copyload = load i64, ptr %.sroa.3106.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3106.sroa.3.0..sroa.3106.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3106.sroa.3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3106.sroa.3.0..sroa.3106.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.5107.sroa.0.0.copyload = load i64, ptr %.sroa.5107.0..sroa_idx, align 8
  %.sroa.5107.sroa.2.0..sroa.5107.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.5107.sroa.2.0.copyload = load ptr, ptr %.sroa.5107.sroa.2.0..sroa.5107.0..sroa_idx.sroa_idx, align 8
  %.sroa.5107.sroa.3.0..sroa.5107.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.5107.sroa.3.0.copyload = load ptr, ptr %.sroa.5107.sroa.3.0..sroa.5107.0..sroa_idx.sroa_idx, align 8
  %.sroa.5107.sroa.4.0..sroa.5107.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5107.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5107.sroa.4.0..sroa.5107.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ag = load i8, ptr %i.af, align 8, !range !12, !noundef !4
  %cond.i = icmp eq i8 %i.ag, 3
  br i1 %cond.i, label %bb.w, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit

bb.w:                                             ; preds = %bb.v
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val.i = load ptr, ptr %i.ah, align 8          ; 5 uses
  %i.ai = getelementptr i8, ptr %1, i64 152
  %.val1.i = load ptr, ptr %i.ai, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.aj = load ptr, ptr %.val1.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.aj(ptr noundef nonnull %.val.i)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.an = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.al, i64 noundef range(i64 1, 536870913) %i.ao) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit

bb.aa:                                            ; preds = %bb.x
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.body, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.at = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ar, i64 noundef range(i64 1, 536870913) %i.au) #23
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit: ; preds = %bb.z, %bb.y, %bb.v
  %.not.i41 = icmp eq i64 %i.ad, -1
  br i1 %.not.i41, label %bb.ac, label %bb.bc

bb.ac:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3106.sroa.3, i64 32, i1 false)
  store i64 %.sroa.3106.sroa.0.0.copyload, ptr %i.e, align 8
  %.not.i42 = icmp eq i64 %.sroa.3106.sroa.0.0.copyload, 0
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %.sroa.gep88 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %.sroa.gep.val = load i64, ptr %.sroa.gep, align 8
  %.sroa.gep88.val = load i64, ptr %.sroa.gep88, align 8 ; 2 uses
  %.sroa.0.0.i = select i1 %.not.i42, i64 %.sroa.gep.val, i64 %.sroa.gep88.val
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !noundef !4
  %.not14 = icmp eq i64 %.sroa.0.0.i, %i.aw
  %i.ax = inttoptr i64 %.sroa.gep88.val to ptr
  br i1 %.not14, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  store i8 0, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0148.0.copyload = load i64, ptr %i.az, align 8
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.4149.0.copyload = load i64, ptr %.sroa.4149.0..sroa_idx, align 8
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14117.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5150.0..sroa_idx, i64 32, i1 false)
  %.sroa.4145.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.3106.sroa.3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val36 = load ptr, ptr %i.bb, align 8          ; 5 uses
  %i.bc = getelementptr i8, ptr %1, i64 128
  %.val37 = load ptr, ptr %i.bc, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.bd = load ptr, ptr %.val37, align 8, !invariant.load !4 ; 2 uses
  %.not.i43 = icmp eq ptr %i.bd, null
  br i1 %.not.i43, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val36) ]
  invoke void %i.bd(ptr noundef nonnull %.val36)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.be = getelementptr inbounds nuw i8, ptr %.val37, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bh = getelementptr inbounds nuw i8, ptr %.val37, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val36) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val36, i64 noundef range(i64 1, -9223372036854775808) %i.bf, i64 noundef range(i64 1, 536870913) %i.bi) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit

bb.ah:                                            ; preds = %bb.ae
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val37, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.body44, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bn = getelementptr inbounds nuw i8, ptr %.val37, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val36, i64 noundef range(i64 1, -9223372036854775808) %i.bl, i64 noundef range(i64 1, 536870913) %i.bo) #23
  br label %.body44

bb.aj:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 31)
          to label %bb.am unwind label %bb.al

.body44:                                          ; preds = %bb.ay, %bb.az, %bb.ai, %bb.ah, %.body
  %.pn24 = phi { ptr, i32 } [ %.pn21.pn, %.body ], [ %i.bj, %bb.ah ], [ %i.bj, %bb.ai ], [ %i.ct, %bb.ay ], [ %i.ct, %bb.az ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.bq = load i8, ptr %i.bp, align 1, !range !14, !noundef !4
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.bi, label %bb.bg

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit: ; preds = %bb.ag, %bb.af
  store i8 0, ptr %i.ay, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.f, %bb.p, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit
  %.sroa.14117.sroa.6.0 = phi i64 [ %.sroa.3106.sroa.0.0.copyload, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit ], [ %.sroa.14117.sroa.6.1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit ], [ %.sroa.3.sroa.5.0.copyload, %bb.p ], [ %.sroa.10.sroa.6.0.copyload, %bb.f ]
  %.sroa.17.0 = phi ptr [ %i.ax, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit ], [ %.sroa.17.1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit ], [ %.sroa.781.0.copyload, %bb.p ], [ %.sroa.10.sroa.8.0.copyload, %bb.f ]
  %.sroa.16.0 = phi ptr [ %.sroa.4145.0.copyload, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit ], [ %.sroa.16.1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit ], [ %.sroa.580.0.copyload, %bb.p ], [ %.sroa.10.sroa.7.0.copyload, %bb.f ]
  %.sroa.11.0 = phi i64 [ %.sroa.4149.0.copyload, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit ], [ %.sroa.11.1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit ], [ %.sroa.3.sroa.0.0.copyload, %bb.p ], [ %.pre, %bb.f ]
  %.sroa.6112.0 = phi i64 [ %.sroa.0148.0.copyload, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit ], [ %.sroa.6112.1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit ], [ %i.u, %bb.p ], [ %.pr, %bb.f ]
  %.sroa.0111.0 = phi i64 [ 0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit ], [ 1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit ], [ 1, %bb.p ], [ 1, %bb.f ]
  store i64 %.sroa.0111.0, ptr %0, align 8
  %.sroa.6112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6112.0, ptr %.sroa.6112.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.14117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14117.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14117.sroa.0, i64 32, i1 false)
  %.sroa.14117.sroa.6.0..sroa.14117.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.14117.sroa.6.0, ptr %.sroa.14117.sroa.6.0..sroa.14117.0..sroa_idx.sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18, i64 16, i1 false)
  br label %common.ret

bb.al:                                            ; preds = %bb.aj
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.am:                                            ; preds = %bb.aj
  %i.bt = load i64, ptr %i.av, align 8, !noundef !4
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextyEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 6, i64 noundef %i.bt)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bv = load ptr, ptr %i.e, align 8, !noundef !4
  %.not.i46 = icmp eq ptr %i.bv, null
  %.sroa.gep.val169 = load i64, ptr %.sroa.gep, align 8
  %.sroa.gep88.val170 = load i64, ptr %.sroa.gep88, align 8
  %.sroa.0.0.i49 = select i1 %.not.i46, i64 %.sroa.gep.val169, i64 %.sroa.gep88.val170
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextyEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 6, i64 noundef %.sroa.0.0.i49)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.6112.8.copyload113 = load i64, ptr %i.c, align 8 ; 3 uses
  %.sroa.11.8..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.11.8.copyload115 = load i64, ptr %.sroa.11.8..sroa_idx114, align 8 ; 3 uses
  %.sroa.14117.8..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14117.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14117.8..sroa_idx118, i64 32, i1 false)
  %.sroa.14117.sroa.6.0..sroa.14117.8..sroa_idx118.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.14117.sroa.6.0.copyload126 = load i64, ptr %.sroa.14117.sroa.6.0..sroa.14117.8..sroa_idx118.sroa_idx, align 8 ; 3 uses
  %.sroa.16.8..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.16.8.copyload120 = load ptr, ptr %.sroa.16.8..sroa_idx119, align 8 ; 3 uses
  %.sroa.17.8..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.17.8.copyload122 = load ptr, ptr %.sroa.17.8..sroa_idx121, align 8 ; 3 uses
  %.sroa.18.8..sroa_idx123 = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.8..sroa_idx123, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %i.bx = load ptr, ptr %i.e, align 8, !alias.scope !1094, !noundef !4 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !1097, !noundef !4
  %i.cb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1097, !nonnull !4, !align !13, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1097, !nonnull !4, !noundef !4
  %i.ce = load ptr, ptr %.sroa.gep88, align 8, !alias.scope !1097, !noundef !4
  %i.cf = load i64, ptr %.sroa.gep, align 8, !alias.scope !1097, !noundef !4
  invoke void %i.cd(ptr noundef %i.ca, ptr noundef %i.ce, i64 noundef %i.cf)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.au, !inline_history !23

bb.as:                                            ; preds = %bb.aq
  %i.cg = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !1098
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.at, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.au

.body:                                            ; preds = %bb.s, %bb.aa, %bb.ab, %bb.ba, %bb.au
  %.pn21.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.ba ], [ %i.ck, %bb.au ], [ %i.ap, %bb.ab ], [ %i.ap, %bb.aa ], [ %i.ac, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val34 = load ptr, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %1, i64 128
  %.val35 = load ptr, ptr %i.cj, align 8, !nonnull !4, !align !13, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_(ptr %.val34, ptr nonnull %.val35) #26
          to label %.body44 unwind label %bb.q

bb.au:                                            ; preds = %bb.at, %bb.ar
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.as, %bb.ar, %bb.at, %bb.bc
  %.sroa.14117.sroa.6.1 = phi i64 [ %.sroa.5107.sroa.0.0.copyload, %bb.bc ], [ %.sroa.14117.sroa.6.0.copyload126, %bb.at ], [ %.sroa.14117.sroa.6.0.copyload126, %bb.ar ], [ %.sroa.14117.sroa.6.0.copyload126, %bb.as ]
  %.sroa.17.1 = phi ptr [ %.sroa.5107.sroa.3.0.copyload, %bb.bc ], [ %.sroa.17.8.copyload122, %bb.at ], [ %.sroa.17.8.copyload122, %bb.ar ], [ %.sroa.17.8.copyload122, %bb.as ]
  %.sroa.16.1 = phi ptr [ %.sroa.5107.sroa.2.0.copyload, %bb.bc ], [ %.sroa.16.8.copyload120, %bb.at ], [ %.sroa.16.8.copyload120, %bb.ar ], [ %.sroa.16.8.copyload120, %bb.as ]
  %.sroa.11.1 = phi i64 [ %.sroa.3106.sroa.0.0.copyload, %bb.bc ], [ %.sroa.11.8.copyload115, %bb.at ], [ %.sroa.11.8.copyload115, %bb.ar ], [ %.sroa.11.8.copyload115, %bb.as ]
  %.sroa.6112.1 = phi i64 [ %i.ad, %bb.bc ], [ %.sroa.6112.8.copyload113, %bb.at ], [ %.sroa.6112.8.copyload113, %bb.ar ], [ %.sroa.6112.8.copyload113, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val = load ptr, ptr %i.cl, align 8            ; 5 uses
  %i.cm = getelementptr i8, ptr %1, i64 128
  %.val33 = load ptr, ptr %i.cm, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.cn = load ptr, ptr %.val33, align 8, !invariant.load !4 ; 2 uses
  %.not.i52 = icmp eq ptr %i.cn, null
  br i1 %.not.i52, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.cn(ptr noundef nonnull %.val)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %.val33, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit56, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cr = getelementptr inbounds nuw i8, ptr %.val33, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit56

bb.ay:                                            ; preds = %bb.av
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val33, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.body44, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cx = getelementptr inbounds nuw i8, ptr %.val33, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.cv, i64 noundef range(i64 1, 536870913) %i.cy) #23
  br label %.body44

bb.ba:                                            ; preds = %bb.ap, %bb.bb
  %.pn17.pn = phi { ptr, i32 } [ %.pn15, %bb.bb ], [ %i.bw, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #26
          to label %.body unwind label %bb.q

bb.bb:                                            ; preds = %bb.an, %bb.al
  %.pn15 = phi { ptr, i32 } [ %i.bu, %bb.an ], [ %i.bs, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ba

bb.bc:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5107.sroa.4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14117.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3106.sroa.3, i64 32, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit56: ; preds = %bb.ax, %bb.aw
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %i.da = load i64, ptr %i.cz, align 8, !range !18, !alias.scope !1101, !noundef !4
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit56
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !1105, !noundef !4 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.df = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !1106
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.bf, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dc) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bi, %bb.bh, %.body44
  %.pn26 = phi { ptr, i32 } [ %i.di, %bb.bh ], [ %.pn24, %bb.bi ], [ %.pn24, %.body44 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 65
  store i8 0, ptr %i.dh, align 1
  br label %bb.g

bb.bh:                                            ; preds = %bb.bf
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit: ; preds = %bb.be, %bb.bd, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit56, %bb.bf
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 65
  store i8 0, ptr %i.dj, align 1
  br label %bb.ak

bb.bi:                                            ; preds = %.body44
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.dk) #26
          to label %bb.bg unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtB2_13MemoryBuilder4root(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.b, %bb.c ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backend13MemoryBuilderEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #26
          to label %bb.o unwind label %bb.n

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !18, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !22, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.e, label %bb.f, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.h = load i64, ptr %i.g, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #27
          to label %bb.m unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = icmp ule i64 %3, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.k, %bb.f
  %i.k = load i64, ptr %1, align 8, !range !8, !alias.scope !1109, !noundef !4
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %bb.g

bb.l:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.l ], [ %i.m, %bb.i ]
  store i64 %i.f, ptr %1, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %3, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i
  store i64 %i.f, ptr %1, align 8
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %.sroa.55.0..sroa_idx6, align 8
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %3, ptr %.sroa.68.0..sroa_idx9, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.m:                                             ; preds = %bb.e
  unreachable

bb.n:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.o:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EE32forget_allocation_drop_remainingCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 48                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_5
begin_hunk_6_@_RNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtB5_13MemoryBackendNtNtNtBb_3raw8accessor7Service5write:bb.a
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops7OpWriteEBH_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %5) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops7OpWriteEBH_.exit unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops7OpWriteEBH_.exit: ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtB5_13MemoryBackendNtNtNtBb_3raw8accessor7Service6delete(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !1511
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreEEB1g_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreEEB1g_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreEEB1g_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtB5_12BufferStreamNtNtCsagCT4lbS8Em_12futures_core6stream6Stream9poll_next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [208 x i8], align 8               ; 5 uses
  %i.c = alloca [296 x i8], align 8               ; 7 uses
  %i.d = alloca [88 x i8], align 8                ; 12 uses
  %i.e = alloca [432 x i8], align 8               ; 7 uses
  %i.f = load i64, ptr %1, align 8, !range !1530, !noundef !4 ; 3 uses
  %i.g = icmp eq i64 %i.f, -2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  br i1 %i.g, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre58 = load ptr, ptr %.phi.trans.insert57, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 -1, ptr %1, align 8
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.m, label %bb.b, !prof !19

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_.exit
  %i.i = phi ptr [ %.pre58, %.._crit_edge_crit_edge ], [ @60, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_.exit ]
  %i.j = phi ptr [ %.pre, %.._crit_edge_crit_edge ], [ %i.r, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !4, !nonnull !4
  call void %i.n(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(address) dereferenceable(296) %i.c, ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #29
  %i.o = load i64, ptr %i.c, align 8, !range !10, !noundef !4
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %bb.o, label %bb.p

bb.b:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 424
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.phi.trans.insert, i64 200, i1 false)
  store i64 %i.f, ptr %i.e, align 8
  store i8 0, ptr %i.q, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !1531
  %i.r = tail call noundef align 8 dereferenceable_or_null(432) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 433) 432, i64 noundef range(i64 1, 9) 8) #23, !noalias !1531 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.c, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxNCNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBL_12BufferStreamNtNtCsagCT4lbS8Em_12futures_core6stream6Stream9poll_next0E3newBR_.exit, !prof !24

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 432) #27
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBJ_12BufferStreamNtNtCsagCT4lbS8Em_12futures_core6stream6Stream9poll_next0EBP_(ptr noundef nonnull align 8 dereferenceable(432) %i.e) #26
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %.body, %bb.ai, %bb.aj, %.thread, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.d ], [ %eh.lpad-body36, %bb.aj ], [ %eh.lpad-body, %.body ], [ %.pn44, %bb.ai ], [ %i.bw, %.thread ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxNCNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBL_12BufferStreamNtNtCsagCT4lbS8Em_12futures_core6stream6Stream9poll_next0E3newBR_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.r, ptr noundef nonnull align 8 dereferenceable(432) %i.e, i64 432, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.v = load i64, ptr %1, align 8, !range !1530, !alias.scope !1532, !noundef !4
  switch i64 %i.v, label %bb.f [
    i64 -2, label %bb.g
    i64 -1, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_.exit
  ]

bb.f:                                             ; preds = %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxNCNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBL_12BufferStreamNtNtCsagCT4lbS8Em_12futures_core6stream6Stream9poll_next0E3newBR_.exit
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtBI_5types4read13buffer_stream15StreamingReaderNtB1A_13ChunkedReaderEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %1)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_.exit unwind label %bb.n

bb.g:                                             ; preds = %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxNCNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBL_12BufferStreamNtNtCsagCT4lbS8Em_12futures_core6stream6Stream9poll_next0E3newBR_.exit
  %.val.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1532 ; 5 uses
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !1532, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.w = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !1532 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.w(ptr noundef nonnull %.val.i)
          to label %bb.i unwind label %bb.k, !noalias !1532

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !4, !noalias !1532 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !6, !invariant.load !4, !noalias !1532
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #23, !noalias !1532
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_.exit

bb.k:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !5, !invariant.load !4, !noalias !1532 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !6, !invariant.load !4, !noalias !1532
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #23, !noalias !1532
  br label %.body

bb.m:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28
  unreachable

bb.n:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.l, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.ac, %bb.l ], [ %i.ac, %bb.k ]
  store i64 -2, ptr %1, align 8
  store ptr %i.r, ptr %.phi.trans.insert, align 8
  store ptr @60, ptr %i.h, align 8
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_.exit: ; preds = %bb.j, %bb.i, %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxNCNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBL_12BufferStreamNtNtCsagCT4lbS8Em_12futures_core6stream6Stream9poll_next0E3newBR_.exit, %bb.f
  store i64 -2, ptr %1, align 8
  store ptr %i.r, ptr %.phi.trans.insert, align 8
  store ptr @60, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %._crit_edge

bb.o:                                             ; preds = %._crit_edge
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ah

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %i.c, i64 208, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.aj, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  %i.ak = load i64, ptr %1, align 8, !range !1530, !alias.scope !1533, !noundef !4
  switch i64 %i.ak, label %bb.q [
    i64 -2, label %bb.r
    i64 -1, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_.exit37
  ]

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtBI_5types4read13buffer_stream15StreamingReaderNtB1A_13ChunkedReaderEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %1)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_.exit37 unwind label %bb.x

bb.r:                                             ; preds = %bb.p
  %.val.i30 = load ptr, ptr %i.k, align 8, !alias.scope !1533 ; 5 uses
  %.val1.i31 = load ptr, ptr %i.l, align 8, !alias.scope !1533, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.al = load ptr, ptr %.val1.i31, align 8, !invariant.load !4, !noalias !1533 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i32, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i30) ]
  invoke void %i.al(ptr noundef nonnull %.val.i30)
          to label %bb.t unwind label %bb.v, !noalias !1533

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %.val1.i31, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !5, !invariant.load !4, !noalias !1533 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_.exit37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1.i31, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !6, !invariant.load !4, !noalias !1533
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i30) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i30, i64 noundef range(i64 1, -9223372036854775808) %i.an, i64 noundef range(i64 1, 536870913) %i.aq) #23, !noalias !1533
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_.exit37

bb.v:                                             ; preds = %bb.s
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val1.i31, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !5, !invariant.load !4, !noalias !1533 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %.val1.i31, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !6, !invariant.load !4, !noalias !1533
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i30, i64 noundef range(i64 1, -9223372036854775808) %i.at, i64 noundef range(i64 1, 536870913) %i.aw) #23, !noalias !1533
  br label %bb.ag

bb.x:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_.exit37: ; preds = %bb.u, %bb.t, %bb.p, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ay = load i64, ptr %i.d, align 8, !range !8, !noundef !4
  %.not25 = icmp eq i64 %i.ay, -1
  br i1 %.not25, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_.exit37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false)
  br label %bb.af

bb.z:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_.exit37
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !noundef !4
  %.not26 = icmp eq ptr %i.ba, null
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.be = load i64, ptr %i.bd, align 8
  %.sroa.023.0 = select i1 %.not26, i64 %i.be, i64 %i.bc
  %i.bf = icmp eq i64 %.sroa.023.0, 0
  br i1 %i.bf, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.418.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  %i.bg = load ptr, ptr %i.a, align 8, !alias.scope !1536, !noundef !4 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !1539, !noundef !4
  %i.bl = load ptr, ptr %i.bi, align 8, !alias.scope !1539, !nonnull !4, !align !13, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !1539, !nonnull !4, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !1539, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !1539, !noundef !4
  invoke void %i.bn(ptr noundef %i.bk, ptr noundef %i.bp, i64 noundef %i.br)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %.thread, !inline_history !23

bb.ad:                                            ; preds = %bb.ab
  %i.bs = atomicrmw sub ptr %i.bg, i64 1 release, align 8, !noalias !1540
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.ae, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %.thread

bb.af:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit, %bb.aa, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.x, %bb.w, %bb.v
  %eh.lpad-body36 = phi { ptr, i32 } [ %i.ax, %bb.x ], [ %i.ar, %bb.w ], [ %i.ar, %bb.v ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  %i.bu = load i64, ptr %i.d, align 8, !range !8, !noundef !4
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %bb.aj, label %bb.ai

.thread:                                          ; preds = %bb.ac, %bb.ae
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load i64, ptr %i.d, align 8, !range !8, !noundef !4
  %i.by = icmp eq i64 %i.bx, -1
  br i1 %i.by, label %common.resume, label %bb.ai

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.ad, %bb.ac, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.af

bb.ah:                                            ; preds = %bb.af, %bb.o
  ret void

bb.ai:                                            ; preds = %.thread, %bb.ag
  %.pn44 = phi { ptr, i32 } [ %i.bw, %.thread ], [ %eh.lpad-body36, %bb.ag ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.d) #26
          to label %common.resume unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bz) #26
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future5readyINtB4_5ReadyINtNtB8_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps9RpRestoreNtNtNtB1i_5types5error5ErrorEENtNtB6_6future6Future4pollB1i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 -2, ptr %1, align 8
  %.not = icmp eq i64 %.sroa.01.0.copyload, -2
  br i1 %.not, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa.0.0..sroa_idx, i64 80, i1 false)
  store i64 %.sroa.01.0.copyload, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtB4_13MemoryBuilderNtNtNtBa_5types7builder7Builder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [264 x i8], align 8               ; 31 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.o = load i64, ptr %1, align 8, !range !8, !noundef !4
  %.not = icmp eq i64 %i.o, -1                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %.sroa.3.0 = select i1 %.not, i64 1, i64 %i.s
  %.sroa.0.0 = select i1 %.not, ptr @47, ptr %i.q
  invoke void @_RNvNtNtCs5XgW7KoffLW_12opendal_core3raw4path14normalize_root(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.3.0)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.ai, %bb.ap, %bb.b
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.ap ], [ %i.t, %bb.b ], [ %.pn8.i, %bb.ai ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backend13MemoryBuilderEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #26
          to label %common.resume unwind label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.u = invoke noundef nonnull ptr @_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4coreNtB4_10MemoryCore3new()
          to label %bb.e unwind label %bb.d       ; 5 uses

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1587)
end_hunk_6
