Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_quant_qwen3.candle_wasm_example_quant_qwen3.5f44c3947a9f471e-cgu.11?download=true
inline.NumInlined: 512
inline.NumDeleted: 272
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3:bb.a
  %i.j = load i64, ptr %i.i, align 8, !noalias !432
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #30
          to label %.noexc2 unwind label %bb.d

.noexc2:                                          ; preds = %bb.b
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i: ; preds = %.noexc
  %i.k = load ptr, ptr %i.i, align 8, !noalias !432, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = icmp ule i64 %.val1, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !432
  %.not.i.i.i = icmp eq i64 %.val1, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val1, i1 false), !noalias !433
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #26
          to label %common.resume unwind label %bb.i

bb.e:                                             ; preds = %bb.c, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i
  store i64 %i.h, ptr %i.b, align 8, !alias.scope !434
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !434
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !434
  %i.n = invoke noundef nonnull align 8 ptr @_RNvNtCsaPlfBUY5LAj_10serde_json5error10make_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.m, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret ptr %i.n

bb.i:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customReECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !444
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !444
  %i.c = load i64, ptr %i.a, align 8, !range !9, !noalias !444, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !10, !noalias !444, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !444
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #30, !noalias !444
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !444, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = icmp ule i64 %1, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !444
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringReNtB5_8ToString9to_stringCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %1, i1 false), !noalias !445
  br label %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringReNtB5_8ToString9to_stringCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringReNtB5_8ToString9to_stringCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i, %bb.c
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !446
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !446
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !446
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCsaPlfBUY5LAj_10serde_json5error10make_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCseZbltJ5Yqe_10serde_core2de5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCsaPlfBUY5LAj_10serde_json2de6MapKeyNtNtB1U_4read9SliceReadEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !459, !noalias !460, !noundef !4
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !459, !noalias !460
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !461, !noalias !460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !462
  call void @_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !460
  %i.g = load i64, ptr %i.a, align 8, !range !463, !noalias !462, !noundef !4
  %i.h = icmp eq i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !462, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !460, !noalias !461
  store i64 -1, ptr %0, align 8, !alias.scope !460, !noalias !461
  br label %_RINvXsh_NtCsaPlfBUY5LAj_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_stringNtNtB1d_5impls13StringVisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !462
  call void @_RINvXs4_NtNtCseZbltJ5Yqe_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i.i)
  br label %_RINvXsh_NtCsaPlfBUY5LAj_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_stringNtNtB1d_5impls13StringVisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

_RINvXsh_NtCsaPlfBUY5LAj_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_stringNtNtB1d_5impls13StringVisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !462
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCseZbltJ5Yqe_10serde_core2de5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtNtNtCsiOg657KYfD4_5serde7private2de7content19ContentDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsr_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_stringNtNtB1Z_5impls13StringVisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCseZbltJ5Yqe_10serde_core2de5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtNtNtCsiOg657KYfD4_5serde7private2de7content22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_stringNtNtB22_5impls13StringVisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCseZbltJ5Yqe_10serde_core2de5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_stringNtNtBW_5impls13StringVisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCseZbltJ5Yqe_10serde_core2de5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtNtCsaPlfBUY5LAj_10serde_json5value2de18MapKeyDeserializerECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXso_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB6_26BorrowedCowStrDeserializerNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtB1i_5impls13StringVisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCseZbltJ5Yqe_10serde_core2de5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB1V_4read9SliceReadEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_stringNtNtB1l_5impls13StringVisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB5_6CopiedINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4ItermEB1m_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1U_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB37_3VecmE14extend_trustedBP_E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 9 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 9 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 14 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2Q_3VecmE14extend_trustedINtB1J_6CopiedINtNtB1L_5chain5ChainBF_BF_EEE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.a = icmp eq ptr %.sroa.0.0.copyload, %.sroa.4.0.copyload
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2Q_3VecmE14extend_trustedINtB1J_6CopiedINtNtB1L_5chain5ChainBF_BF_EEE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.c = ptrtoint ptr %.sroa.0.0.copyload to i64  ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr i64 %i.d, 2                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 48
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %2 = ptrtoaddr ptr %.sroa.9.0.copyload to i64
  %i.f = shl i64 %.sroa.52.0.copyload, 2
  %i.g = add i64 %i.f, %2
  %i.h = sub i64 %i.c, %i.g
  %diff.check = icmp ugt i64 %i.h, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.i = add i64 %.sroa.52.0.copyload, %n.vec     ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.9.0.copyload, i64 %.sroa.52.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !noalias !489
  %wide.load9 = load <4 x i32>, ptr %i.l, align 4, !noalias !489
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> %wide.load, ptr %i.m, align 4, !noalias !490
  store <4 x i32> %wide.load9, ptr %i.n, align 4, !noalias !490
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !475

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2Q_3VecmE14extend_trustedINtB1J_6CopiedINtNtB1L_5chain5ChainBF_BF_EEE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.c, %middle.block
  %.ph26 = phi i64 [ %.sroa.52.0.copyload, %vector.memcheck ], [ %.sroa.52.0.copyload, %bb.c ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.c ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph26, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.01.0.i.i.prol
  %.val8.i.i.prol = load i32, ptr %i.q, align 4, !noalias !489, !noundef !4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.copyload, i64 %i.p
  store i32 %.val8.i.i.prol, ptr %i.r, align 4, !noalias !490
  %i.s = add i64 %i.p, 1                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !476

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa27.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph26, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.i.unr = phi i64 [ %.sroa.01.0.i.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.i.ph, %i.e
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2Q_3VecmE14extend_trustedINtB1J_6CopiedINtNtB1L_5chain5ChainBF_BF_EEE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.al, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i.i = phi i64 [ %i.am, %scalar.ph ], [ %.sroa.01.0.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.01.0.i.i
  %.val8.i.i = load i32, ptr %i.x, align 4, !noalias !489, !noundef !4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.copyload, i64 %i.w
  store i32 %.val8.i.i, ptr %i.y, align 4, !noalias !490
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.01.0.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.val8.i.i.1 = load i32, ptr %i.aa, align 4, !noalias !489, !noundef !4
  %i.ab = getelementptr [4 x i8], ptr %.sroa.9.0.copyload, i64 %i.w
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  store i32 %.val8.i.i.1, ptr %i.ac, align 4, !noalias !490
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.01.0.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val8.i.i.2 = load i32, ptr %i.ae, align 4, !noalias !489, !noundef !4
  %i.af = getelementptr [4 x i8], ptr %.sroa.9.0.copyload, i64 %i.w
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  store i32 %.val8.i.i.2, ptr %i.ag, align 4, !noalias !490
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.01.0.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %.val8.i.i.3 = load i32, ptr %i.ai, align 4, !noalias !489, !noundef !4
  %i.aj = getelementptr [4 x i8], ptr %.sroa.9.0.copyload, i64 %i.w
  %i.ak = getelementptr i8, ptr %i.aj, i64 12
  store i32 %.val8.i.i.3, ptr %i.ak, align 4, !noalias !490
  %i.al = add i64 %i.w, 4                         ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i.i, 4          ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.e
  br i1 %i.an, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2Q_3VecmE14extend_trustedINtB1J_6CopiedINtNtB1L_5chain5ChainBF_BF_EEE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i, label %scalar.ph, !llvm.loop !477

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2Q_3VecmE14extend_trustedINtB1J_6CopiedINtNtB1L_5chain5ChainBF_BF_EEE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b, %bb.a
  %.sroa.52.0 = phi i64 [ %.sroa.52.0.copyload, %bb.a ], [ %.sroa.52.0.copyload, %bb.b ], [ %i.i, %middle.block ], [ %.lcssa27.unr, %scalar.ph.prol.loopexit ], [ %i.al, %scalar.ph ] ; 7 uses
  %.not4.i = icmp eq ptr %.sroa.5.0.copyload, null
  br i1 %.not4.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4ItermEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6copied9copy_foldmuNCINvNvB1x_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3d_3VecmE14extend_trustedINtB2g_6CopiedBO_EE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, label %bb.d

bb.d:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2Q_3VecmE14extend_trustedINtB1J_6CopiedINtNtB1L_5chain5ChainBF_BF_EEE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.ao = icmp eq ptr %.sroa.5.0.copyload, %.sroa.6.0.copyload
  br i1 %i.ao, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4ItermEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6copied9copy_foldmuNCINvNvB1x_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3d_3VecmE14extend_trustedINtB2g_6CopiedBO_EE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = ptrtoint ptr %.sroa.6.0.copyload to i64
  %i.aq = ptrtoint ptr %.sroa.5.0.copyload to i64 ; 2 uses
  %i.ar = sub nuw i64 %i.ap, %i.aq                ; 2 uses
  %i.as = lshr i64 %i.ar, 2                       ; 5 uses
  %min.iters.check14 = icmp ult i64 %i.ar, 48
  br i1 %min.iters.check14, label %scalar.ph13.preheader, label %vector.memcheck11

vector.memcheck11:                                ; preds = %bb.e
  %3 = ptrtoaddr ptr %.sroa.9.0.copyload to i64
  %i.at = shl i64 %.sroa.52.0, 2
  %i.au = add i64 %i.at, %3
  %i.av = sub i64 %i.aq, %i.au
  %diff.check12 = icmp ugt i64 %i.av, -32
  br i1 %diff.check12, label %scalar.ph13.preheader, label %vector.ph15

vector.ph15:                                      ; preds = %vector.memcheck11
  %n.vec16 = and i64 %i.as, 4611686018427387896   ; 4 uses
  %i.aw = add i64 %.sroa.52.0, %n.vec16           ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %.sroa.9.0.copyload, i64 %.sroa.52.0
  br label %vector.body17

vector.body17:                                    ; preds = %vector.body17, %vector.ph15
  %index18 = phi i64 [ 0, %vector.ph15 ], [ %index.next21, %vector.body17 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %index18 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load19 = load <4 x i32>, ptr %i.ay, align 4, !noalias !493
  %wide.load20 = load <4 x i32>, ptr %i.az, align 4, !noalias !493
  %i.ba = getelementptr [4 x i8], ptr %i.ax, i64 %index18 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <4 x i32> %wide.load19, ptr %i.ba, align 4, !noalias !494
  store <4 x i32> %wide.load20, ptr %i.bb, align 4, !noalias !494
  %index.next21 = add nuw i64 %index18, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next21, %n.vec16
  br i1 %i.bc, label %middle.block22, label %vector.body17, !llvm.loop !486

middle.block22:                                   ; preds = %vector.body17
  %cmp.n23 = icmp eq i64 %i.as, %n.vec16
  br i1 %cmp.n23, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4ItermEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6copied9copy_foldmuNCINvNvB1x_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3d_3VecmE14extend_trustedINtB2g_6CopiedBO_EE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, label %scalar.ph13.preheader

scalar.ph13.preheader:                            ; preds = %vector.memcheck11, %bb.e, %middle.block22
  %.ph = phi i64 [ %.sroa.52.0, %vector.memcheck11 ], [ %.sroa.52.0, %bb.e ], [ %i.aw, %middle.block22 ] ; 2 uses
  %.sroa.01.0.i9.i.ph = phi i64 [ 0, %vector.memcheck11 ], [ 0, %bb.e ], [ %n.vec16, %middle.block22 ] ; 3 uses
  %xtraiter28 = and i64 %i.as, 3                  ; 2 uses
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %scalar.ph13.prol.loopexit, label %scalar.ph13.prol

scalar.ph13.prol:                                 ; preds = %scalar.ph13.preheader, %scalar.ph13.prol
  %i.bd = phi i64 [ %i.bg, %scalar.ph13.prol ], [ %.ph, %scalar.ph13.preheader ] ; 2 uses
  %.sroa.01.0.i9.i.prol = phi i64 [ %i.bh, %scalar.ph13.prol ], [ %.sroa.01.0.i9.i.ph, %scalar.ph13.preheader ] ; 2 uses
  %prol.iter30 = phi i64 [ %prol.iter30.next, %scalar.ph13.prol ], [ 0, %scalar.ph13.preheader ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.01.0.i9.i.prol
  %.val.i.i.prol = load i32, ptr %i.be, align 4, !noalias !493, !noundef !4
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.copyload, i64 %i.bd
  store i32 %.val.i.i.prol, ptr %i.bf, align 4, !noalias !494
  %i.bg = add i64 %i.bd, 1                        ; 3 uses
  %i.bh = add nuw i64 %.sroa.01.0.i9.i.prol, 1    ; 2 uses
  %prol.iter30.next = add i64 %prol.iter30, 1     ; 2 uses
  %prol.iter30.cmp.not = icmp eq i64 %prol.iter30.next, %xtraiter28
  br i1 %prol.iter30.cmp.not, label %scalar.ph13.prol.loopexit, label %scalar.ph13.prol, !llvm.loop !487

scalar.ph13.prol.loopexit:                        ; preds = %scalar.ph13.prol, %scalar.ph13.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph13.preheader ], [ %i.bg, %scalar.ph13.prol ]
  %.unr31 = phi i64 [ %.ph, %scalar.ph13.preheader ], [ %i.bg, %scalar.ph13.prol ]
  %.sroa.01.0.i9.i.unr = phi i64 [ %.sroa.01.0.i9.i.ph, %scalar.ph13.preheader ], [ %i.bh, %scalar.ph13.prol ]
  %i.bi = sub nsw i64 %.sroa.01.0.i9.i.ph, %i.as
  %i.bj = icmp ugt i64 %i.bi, -4
  br i1 %i.bj, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4ItermEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6copied9copy_foldmuNCINvNvB1x_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3d_3VecmE14extend_trustedINtB2g_6CopiedBO_EE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, label %scalar.ph13

scalar.ph13:                                      ; preds = %scalar.ph13.prol.loopexit, %scalar.ph13
  %i.bk = phi i64 [ %i.bz, %scalar.ph13 ], [ %.unr31, %scalar.ph13.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i9.i = phi i64 [ %i.ca, %scalar.ph13 ], [ %.sroa.01.0.i9.i.unr, %scalar.ph13.prol.loopexit ] ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.01.0.i9.i
  %.val.i.i = load i32, ptr %i.bl, align 4, !noalias !493, !noundef !4
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.copyload, i64 %i.bk
  store i32 %.val.i.i, ptr %i.bm, align 4, !noalias !494
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.01.0.i9.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %.val.i.i.1 = load i32, ptr %i.bo, align 4, !noalias !493, !noundef !4
  %i.bp = getelementptr [4 x i8], ptr %.sroa.9.0.copyload, i64 %i.bk
  %i.bq = getelementptr i8, ptr %i.bp, i64 4
  store i32 %.val.i.i.1, ptr %i.bq, align 4, !noalias !494
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.01.0.i9.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.val.i.i.2 = load i32, ptr %i.bs, align 4, !noalias !493, !noundef !4
  %i.bt = getelementptr [4 x i8], ptr %.sroa.9.0.copyload, i64 %i.bk
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  store i32 %.val.i.i.2, ptr %i.bu, align 4, !noalias !494
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.01.0.i9.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.val.i.i.3 = load i32, ptr %i.bw, align 4, !noalias !493, !noundef !4
  %i.bx = getelementptr [4 x i8], ptr %.sroa.9.0.copyload, i64 %i.bk
  %i.by = getelementptr i8, ptr %i.bx, i64 12
  store i32 %.val.i.i.3, ptr %i.by, align 4, !noalias !494
  %i.bz = add i64 %i.bk, 4                        ; 2 uses
  %i.ca = add nuw i64 %.sroa.01.0.i9.i, 4         ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.as
  br i1 %i.cb, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4ItermEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6copied9copy_foldmuNCINvNvB1x_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3d_3VecmE14extend_trustedINtB2g_6CopiedBO_EE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, label %scalar.ph13, !llvm.loop !488

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4ItermEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6copied9copy_foldmuNCINvNvB1x_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3d_3VecmE14extend_trustedINtB2g_6CopiedBO_EE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %scalar.ph13.prol.loopexit, %scalar.ph13, %middle.block22, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2Q_3VecmE14extend_trustedINtB1J_6CopiedINtNtB1L_5chain5ChainBF_BF_EEE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i, %bb.d
  %.sroa.52.0.sink = phi i64 [ %.sroa.52.0, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2Q_3VecmE14extend_trustedINtB1J_6CopiedINtNtB1L_5chain5ChainBF_BF_EEE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i ], [ %.sroa.52.0, %bb.d ], [ %i.aw, %middle.block22 ], [ %.lcssa.unr, %scalar.ph13.prol.loopexit ], [ %i.bz, %scalar.ph13 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  store i64 %.sroa.52.0.sink, ptr %.sroa.01.0.copyload, align 8, !noalias !495
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysmNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENtNtNtB9_6traits8iterator8Iterator4foldmNvYmNtNtBb_3cmp3Ord3maxECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call noundef i32 @_RINvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_4ItermNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4foldmNCINvXsJ_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB37_4KeysmBM_EB1X_4foldmNCINvNtNtB23_8adapters6copied9copy_foldmmNvYmNtNtB25_3cmp3Ord3maxE0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, ptr noundef nonnull %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEB1b_ENCINvMs1_B1D_NtB1D_15AddedVocabulary20refresh_added_tokensNtNtB1H_11normalizers17NormalizerWrapperNtNtB1H_6models12ModelWrapperE0ENtNtNtBa_6traits8iterator8Iterator9partitionINtNtCsgCecv3eZDcN_5alloc3vec3VecTRB1B_mEENCB2T_s_0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !549
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !alias.scope !549
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  store i64 0, ptr %i.d, align 8, !alias.scope !549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !550
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !550
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  store i64 0, ptr %i.f, align 8, !alias.scope !550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !alias.scope !551 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !551 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !551 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !551 ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !alias.scope !551, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !551, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB27_8adapters3map8map_foldRBQ_TB3m_mEuNCINvMs1_BS_NtBS_15AddedVocabulary20refresh_added_tokensNtNtBW_11normalizers17NormalizerWrapperNtNtBW_6models12ModelWrapperE0NCINvNvB21_9partition6extendB3q_INtNtCsgCecv3eZDcN_5alloc3vec3VecB3q_ENCB3A_s_0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i, label %bb.c

bb.b:                                             ; preds = %.loopexit.split-lp
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenmEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #26
          to label %bb.r unwind label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.k = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.4.0.copyload.i
  br i1 %i.k, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB27_8adapters3map8map_foldRBQ_TB3m_mEuNCINvMs1_BS_NtBS_15AddedVocabulary20refresh_added_tokensNtNtBW_11normalizers17NormalizerWrapperNtNtBW_6models12ModelWrapperE0NCINvNvB21_9partition6extendB3q_INtNtCsgCecv3eZDcN_5alloc3vec3VecB3q_ENCB3A_s_0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %.sroa.4.0.copyload.i to i64
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 5
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenTB1t_mEuNCINvMs1_B1w_NtB1w_15AddedVocabulary20refresh_added_tokensNtNtB1A_11normalizers17NormalizerWrapperNtNtB1A_6models12ModelWrapperE0NCINvNvNtNtNtBX_6traits8iterator8Iterator9partition6extendB2E_INtNtCsgCecv3eZDcN_5alloc3vec3VecB2E_ENCB2O_s_0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i, %bb.d
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenTB1t_mEuNCINvMs1_B1w_NtB1w_15AddedVocabulary20refresh_added_tokensNtNtB1A_11normalizers17NormalizerWrapperNtNtB1A_6models12ModelWrapperE0NCINvNvNtNtNtBX_6traits8iterator8Iterator9partition6extendB2E_INtNtCsgCecv3eZDcN_5alloc3vec3VecB2E_ENCB2O_s_0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.01.0.i.i.i ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.q = load ptr, ptr %i.h, align 8, !noalias !555, !nonnull !4, !align !5, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !556, !noalias !557, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !556, !noalias !557, !noundef !4
  %i.v = load ptr, ptr %i.j, align 8, !noalias !555, !nonnull !4, !align !5, !noundef !4
  %i.w = invoke { i32, i32 } @_RINvMs1_NtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabularyNtB6_15AddedVocabulary11token_to_idNtNtBa_6models12ModelWrapperECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u, ptr noundef nonnull align 8 %i.v)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.x = extractvalue { i32, i32 } %i.w, 0
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %_RNCINvMs1_NtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabularyNtB8_15AddedVocabulary20refresh_added_tokensNtNtBc_11normalizers17NormalizerWrapperNtNtBc_6models12ModelWrapperE0Cs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i, label %.invoke, !prof !16

_RNCINvMs1_NtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabularyNtB8_15AddedVocabulary20refresh_added_tokensNtNtBc_11normalizers17NormalizerWrapperNtNtBc_6models12ModelWrapperE0Cs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i: ; preds = %.noexc
  %i.z = extractvalue { i32, i32 } %i.w, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 27
  %i.ab = load i8, ptr %i.aa, align 1, !range !17, !alias.scope !559, !noalias !557, !noundef !4
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_RNCINvMs1_NtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabularyNtB8_15AddedVocabulary20refresh_added_tokensNtNtBc_11normalizers17NormalizerWrapperNtNtBc_6models12ModelWrapperE0Cs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i
  %i.ad = load i64, ptr %i.f, align 8, !alias.scope !560, !noalias !561, !noundef !4 ; 3 uses
  %i.ae = load i64, ptr %i.a, align 8, !range !12, !alias.scope !560, !noalias !561, !noundef !4
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenmEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenmEE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #31
          to label %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenmEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit

_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenmEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.ag = load ptr, ptr %i.e, align 8, !alias.scope !560, !noalias !561, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ad ; 2 uses
  store ptr %i.p, ptr %i.ah, align 8, !noalias !561
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.z, ptr %i.ai, align 8, !noalias !557
  %i.aj = add i64 %i.ad, 1
  store i64 %i.aj, ptr %i.f, align 8, !alias.scope !560, !noalias !562
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenTB1t_mEuNCINvMs1_B1w_NtB1w_15AddedVocabulary20refresh_added_tokensNtNtB1A_11normalizers17NormalizerWrapperNtNtB1A_6models12ModelWrapperE0NCINvNvNtNtNtBX_6traits8iterator8Iterator9partition6extendB2E_INtNtCsgCecv3eZDcN_5alloc3vec3VecB2E_ENCB2O_s_0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i

bb.h:                                             ; preds = %_RNCINvMs1_NtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabularyNtB8_15AddedVocabulary20refresh_added_tokensNtNtBc_11normalizers17NormalizerWrapperNtNtBc_6models12ModelWrapperE0Cs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i
  %i.ak = load i64, ptr %i.d, align 8, !alias.scope !563, !noalias !564, !noundef !4 ; 3 uses
end_hunk_0
