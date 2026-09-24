Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/tensor_tools.tensor_tools.f3cbf8f2a35afc65-cgu.14?download=true
inline.NumInlined: 379
inline.NumDeleted: 249
begin_hunk_0_@_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerNtNtB7_6extend15ListVecConsumerENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB2w_ppEE13from_par_iter2okTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENtNtB4L_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EINtNtB7_8plumbing8ConsumerTB44_RNtNtB4J_9gguf_file10TensorInfoEE11into_folderB5W_
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerNtNtB7_6extend15ListVecConsumerENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB2w_ppEE13from_par_iter2okTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENtNtB4L_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EINtNtB7_8plumbing8ConsumerTB44_RNtNtB4J_9gguf_file10TensorInfoEE11into_folderB5W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !align !9, !noundef !8
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.c, ptr %.sroa.6.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.b, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerNtNtB7_6extend15ListVecConsumerENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB2w_ppEE13from_par_iter2okTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENtNtB4L_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EINtNtB7_8plumbing8ConsumerTB44_RNtNtB4J_9gguf_file10TensorInfoEE4fullB5W_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !684, !nonnull !8, !noundef !8
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !noalias !684
  %.not.i.i = icmp ne i8 %i.b, 0
  ret i1 %.not.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerNtNtB7_6extend15ListVecConsumerENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB2w_ppEE13from_par_iter2okTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENtNtB4L_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EINtNtB7_8plumbing8ConsumerTB44_RNtNtB4J_9gguf_file10TensorInfoEE8split_atB5W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.f, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_9MapFolderIBD_INtNtB7_10while_some15WhileSomeFolderINtNtB7_6extend13ListVecFolderTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB3S_ppEE13from_par_iter2okB21_NtNtB2I_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EINtNtB7_8plumbing6FolderTB22_NtNtB2I_6tensor6TensorEE8completeB5U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 24, i1 false), !noalias !692
  call void @_RNvXs0_NtNtCs7fP0opQOXdx_5rayon4iter6extendINtB5_13ListVecFolderTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEINtNtB7_8plumbing6FolderB10_E8completeCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !691
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_9MapFolderIBD_INtNtB7_10while_some15WhileSomeFolderINtNtB7_6extend13ListVecFolderTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB3T_ppEE13from_par_iter2okB21_NtNtB2J_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EINtNtB7_8plumbing6FolderTB22_RNtNtB2H_9gguf_file10TensorInfoEE8completeB5V_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 24, i1 false), !noalias !701
  call void @_RNvXs0_NtNtCs7fP0opQOXdx_5rayon4iter6extendINtB5_13ListVecFolderTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEINtNtB7_8plumbing6FolderB10_E8completeCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !700
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs6_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_9MapFolderIBD_INtNtB7_10while_some15WhileSomeFolderINtNtNtB7_7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB44_ppEE13from_par_iter2okB2d_NtNtB2U_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EINtNtB7_8plumbing6FolderTB2e_NtNtB2U_6tensor6TensorEE8completeB66_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !709
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs6_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_9MapFolderIBD_INtNtB7_10while_some15WhileSomeFolderINtNtNtB7_7collect8consumer13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB45_ppEE13from_par_iter2okB2d_NtNtB2V_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantize0EINtNtB7_8plumbing6FolderTB2e_RNtNtB2T_9gguf_file10TensorInfoEE8completeB67_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !716
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEE6reduceCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.d
  %i.f = load ptr, ptr %2, align 8, !noundef !8
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @_RNvXs2_NtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %2)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !8
  %i.l = add i64 %i.k, %i.i
  store i64 %i.l, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !8
  store i64 0, ptr %i.m, align 8
  invoke void @_RNvXs2_NtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit3 unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit3
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit3: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = add i64 %i.n, %i.d
  store i64 %i.o, ptr %i.c, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit

bb.d:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit4: ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit4 unwind label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEE6reduceCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %i.c
  %i.e = load ptr, ptr %2, align 8, !noundef !8   ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val7 = load i64, ptr %i.g, align 8, !alias.scope !12, !noundef !8 ; 4 uses
  %i.h = icmp eq i64 %.val7, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i: ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %.val7
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i
  %.sroa.0.0.i.i.i19 = phi i64 [ %i.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %.sroa.0.0.i.i.i19
  %i.k = add nuw nsw i64 %.sroa.0.0.i.i.i19, 1    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(80) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i unwind label %bb.c, !noalias !719

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i.i.i: ; preds = %.lr.ph21
  %i.m = add i64 %.sroa.0.1.i.i.i20, 1            ; 2 uses
  %i.n = icmp eq i64 %i.m, %.val7
  br i1 %i.n, label %.body, label %.lr.ph21

bb.c:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.k, %.val7
  br i1 %i.p, label %.body, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i.i.i
  %.sroa.0.1.i.i.i20 = phi i64 [ %i.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %.sroa.0.1.i.i.i20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(80) %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i.i.i unwind label %bb.d, !noalias !719

bb.d:                                             ; preds = %.lr.ph21
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16, !noalias !719
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i, %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit14
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit14: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !8
  %i.x = add i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.415.0.copyload = load i64, ptr %.sroa.415.0..sroa_idx, align 8
  %i.y = add i64 %.sroa.415.0.copyload, %i.c
  store i64 %i.y, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumer13CollectResultTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEECskVIURZGHVHJ_12tensor_tools.exit

.body:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit7.i.i.i, %bb.c
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs7fP0opQOXdx_5rayon3vecINtB5_13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtB7_4iter8plumbing8Producer8split_atCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  store i64 0, ptr %i.b, align 8
  %.not.i = icmp ugt i64 %3, %2
  br i1 %.not.i, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7fP0opQOXdx_5rayon3vec13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECskVIURZGHVHJ_12tensor_tools.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7fP0opQOXdx_5rayon3vec13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #15
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7fP0opQOXdx_5rayon3vec13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %3
  %i.e = sub nuw nsw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.h, align 8
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs7fP0opQOXdx_5rayon3vecINtB5_13DrainProducerTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtNtB7_4iter8plumbing8Producer8split_atCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp ugt i64 %3, %2
  br i1 %.not.i, label %.noexc, label %bb.b, !prof !7

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3
  %i.b = sub nuw nsw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file9ValueTypeuEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringBK_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringBV_EE9next_implKb0_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !8
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -48
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.h, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEE9next_implKb0_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !8
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -72
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -48
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.h, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoEE9next_implKb0_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !8
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -144
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -120
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.h, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE9next_implKb0_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !8
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.h, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j
}
end_hunk_0
