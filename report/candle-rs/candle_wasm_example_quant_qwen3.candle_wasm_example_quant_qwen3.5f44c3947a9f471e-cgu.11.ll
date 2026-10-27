Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_quant_qwen3.candle_wasm_example_quant_qwen3.5f44c3947a9f471e-cgu.11?download=true
inline.NumInlined: 512
inline.NumDeleted: 272
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCs5Xr050g3D4S_3std3sys5stdio4unix6StderrEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3:bb.a
  ], !prof !14

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !138
  store i8 3, ptr %i.a, align 8, !alias.scope !138
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.b = load i64, ptr %.0.val, align 8, !range !147, !alias.scope !148, !noundef !4
  switch i64 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorImplEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !148, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorImplEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !148, !nonnull !4, !noundef !4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #29, !noalias !148
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorImplEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val2.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !148, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !148
  %i.g = ptrtoint ptr %.val2.i.i.i to i64         ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i
    i64 1, label %bb.f
  ], !prof !14

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ult ptr %.val2.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %.val2.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !149, !noalias !148
  store i8 3, ptr %i.a, align 8, !alias.scope !149, !noalias !148
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !148
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorImplEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #29
  resume { ptr, i32 } %i.n

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorImplEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.a, %bb.b, %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #29
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
    i64 1, label %bb.c
  ], !prof !14

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !152
  store i8 3, ptr %i.a, align 8, !alias.scope !152
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !158, !noundef !4
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.e
    i8 1, label %bb.e
    i8 2, label %bb.e
    i8 3, label %bb.e
    i8 4, label %bb.e
    i8 5, label %bb.e
    i8 6, label %bb.e
    i8 7, label %bb.e
    i8 8, label %bb.e
    i8 9, label %bb.e
    i8 10, label %bb.e
    i8 11, label %bb.e
    i8 12, label %bb.f
    i8 13, label %bb.e
    i8 14, label %bb.i
    i8 15, label %bb.e
    i8 16, label %bb.e
    i8 17, label %bb.l
    i8 18, label %bb.e
    i8 19, label %bb.n
    i8 20, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentB19_EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume.sink.split:                         ; preds = %bb.m, %bb.o
  %.sink = phi ptr [ %i.o, %bb.o ], [ %i.l, %bb.m ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.p, %bb.o ], [ %i.m, %bb.m ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 32, i64 noundef 8) #29, !noalias !4
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.q, %bb.j, %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.j ], [ %i.c, %bb.c ], [ %i.f, %bb.g ], [ %i.r, %bb.q ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentB19_EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentB19_EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.e

bb.i:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.i
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %bb.e

bb.l:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !159, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.m, !noalias !159, !inline_history !155

bb.m:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.l
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 32, i64 noundef 8) #29, !noalias !159
  br label %bb.e

bb.n:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !160, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit3 unwind label %bb.o, !noalias !160, !inline_history !155

bb.o:                                             ; preds = %bb.n
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit3: ; preds = %bb.n
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef 32, i64 noundef 8) #29, !noalias !160
  br label %bb.e

bb.p:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.p
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvXNvXs0_NvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtBe_23PrecompiledDeserializerNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1l_7Visitor9visit_mapNtB3_17___DeserializeWithB1j_11deserializeINtNtNtNtCsiOg657KYfD4_5serde7private2de7content22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3:bb.a
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs0_NvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtBe_23PrecompiledDeserializerNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1l_7Visitor9visit_mapNtB3_17___DeserializeWithB1j_11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB3F_4read7StrReadEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvCslUjavNzuXCV_15spm_precompiled11from_base64QINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtBQ_4read7StrReadEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs0_NvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtBe_23PrecompiledDeserializerNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1l_7Visitor9visit_seqNtB3_17___DeserializeWithB1j_11deserializeINtNtNtNtCsiOg657KYfD4_5serde7private2de7content22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvCslUjavNzuXCV_15spm_precompiled11from_base64INtNtNtNtCsiOg657KYfD4_5serde7private2de7content22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs0_NvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtBe_23PrecompiledDeserializerNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1l_7Visitor9visit_seqNtB3_17___DeserializeWithB1j_11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB3F_4read7StrReadEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvCslUjavNzuXCV_15spm_precompiled11from_base64QINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtBQ_4read7StrReadEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesmNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB3z_7HashSetB2e_NtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateEINtNtNtBa_6traits7collect6ExtendB2e_E6extendBX_E0ENtNtB5h_8iterator8Iterator4folduNCINvNvB60_8for_each4callTB2e_uENCINvXs1i_NtB3B_3mapINtB7c_7HashMapB2e_uB4m_EIB5d_B6V_E6extendBN_E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesmNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1X_TB1X_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB4v_7HashSetB1X_NtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateEINtNtB3d_7collect6ExtendB1X_E6extendBP_E0NCINvNvB39_8for_each4callB4e_NCINvXs1i_NtB4x_3mapINtB7q_7HashMapB1X_uB5i_EIB69_B4e_E6extendINtB3S_3MapBP_B4m_EE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEEENCNvMsi_NtCshBhMCGs0DAb_10tokenizers9tokenizerINtB2B_13TokenizerImplNtNtB2D_6models12ModelWrapperNtNtB2D_11normalizers17NormalizerWrapperNtNtB2D_14pre_tokenizers19PreTokenizerWrapperNtNtB2D_10processors20PostProcessorWrapperNtNtB2D_8decoders14DecoderWrapperE22encode_single_sequences1_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzINtNtB1U_5boxed3BoxDNtNtBc_5error5ErrorNtNtBc_6marker4SendNtB9m_4SyncEL_EEEB76_8try_folduNCINvNvB76_12try_for_each4callNtNtB2B_8encoding8EncodingINtNtNtBc_3ops12control_flow11ControlFlowBaC_ENcNtBb2_5Break0E0Bb2_E0IBb3_Bb2_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readnone captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.7.i.i.i = alloca [232 x i8], align 8     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !226, !nonnull !4, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !226, !nonnull !4, !noundef !4
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.k, ptr %1, align 8, !alias.scope !226
  %i.l = getelementptr i8, ptr %i.f, i64 8
  %.val.i.i = load ptr, ptr %i.l, align 8, !noalias !227, !nonnull !4, !noundef !4
  %i.m = getelementptr i8, ptr %i.f, i64 16
  %.val4.i.i = load i64, ptr %i.m, align 8, !noalias !227, !noundef !4
  %i.n = load i64, ptr %i.e, align 8, !alias.scope !223, !noalias !228, !noundef !4 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !229, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !232
  %i.o = load ptr, ptr %.val.i.i.i.i, align 8, !alias.scope !230, !noalias !231, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !232, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 560
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1032 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !21, !noalias !232, !noundef !4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.s, -1
  %..i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.r
  call void @_RINvMs1_NtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabularyNtB6_15AddedVocabulary21extract_and_normalizeNtNtBa_11normalizers17NormalizerWrapperECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) %..i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val4.i.i), !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !232
  %i.t = load ptr, ptr %i.o, align 8, !noalias !233, !nonnull !4, !align !5, !noundef !4
  call void @_RINvMsn_NtCshBhMCGs0DAb_10tokenizers9tokenizerINtB6_13TokenizerImplNtNtB8_6models12ModelWrapperNtNtB8_11normalizers17NormalizerWrapperNtNtB8_14pre_tokenizers19PreTokenizerWrapperNtNtB8_10processors20PostProcessorWrapperNtNtB8_8decoders14DecoderWrapperE15do_pre_tokenizeNtNtB6_13pre_tokenizer18PreTokenizedStringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d), !noalias !233
  %i.u = load i64, ptr %i.c, align 8, !range !6, !noalias !232, !noundef !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !232 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !noalias !232 ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !232
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.sroa.623.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.10.0..sroa_idx7.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx7.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623.0..sroa_idx.i.i.i.i.i.i, i64 24, i1 false), !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !232
  store i64 %i.u, ptr %i.b, align 8, !noalias !232
  %.sroa.6.0..sroa_idx3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.x, ptr %.sroa.6.0..sroa_idx3.i.i.i.i.i.i, align 8, !noalias !232
  %.sroa.8.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.z, ptr %.sroa.8.0..sroa_idx5.i.i.i.i.i.i, align 8, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !232
  %i.aa = load ptr, ptr %i.o, align 8, !noalias !233, !nonnull !4, !align !5, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !230, !noalias !231, !nonnull !4, !align !22, !noundef !4
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !233, !noundef !4
  %i.ae = trunc i64 %i.n to i32
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !230, !noalias !231, !nonnull !4, !noundef !4
  %i.ah = load i8, ptr %i.ag, align 1, !range !8, !noalias !233, !noundef !4
  call void @_RINvMsk_NtCshBhMCGs0DAb_10tokenizers9tokenizerINtB6_13TokenizerImplNtNtB8_6models12ModelWrapperNtNtB8_11normalizers17NormalizerWrapperNtNtB8_14pre_tokenizers19PreTokenizerWrapperNtNtB8_10processors20PostProcessorWrapperNtNtB8_8decoders14DecoderWrapperE11do_tokenizeNtNtB6_13pre_tokenizer18PreTokenizedStringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.a, ptr noundef nonnull align 8 %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, i32 noundef %i.ad, i32 noundef 1, i32 %i.ae, i8 noundef %i.ah), !noalias !233
  %i.ai = load i64, ptr %i.a, align 8, !range !6, !noalias !232, !noundef !4 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !232 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !noalias !232 ; 2 uses
  br i1 %i.aj, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !232
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.10.0.ph.i.i.i.i = phi ptr [ %i.an, %bb.e ], [ %i.z, %bb.c ] ; 2 uses
  %.sroa.66.0.ph.i.i.i.i = phi ptr [ %i.al, %bb.e ], [ %i.x, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !231
  %.val.i.i.i.i.i = load ptr, ptr %3, align 8, !noalias !234, !noundef !4 ; 4 uses
  %i.ao = getelementptr i8, ptr %3, i64 8         ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !noalias !234 ; 6 uses
  %i.ap = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.ap, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i) ]
  %i.aq = load ptr, ptr %.val2.i.i.i.i.i, align 8, !invariant.load !4, !noalias !235 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.aq(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.i unwind label %bb.k, !noalias !235

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !12, !invariant.load !4, !noalias !235 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !13, !invariant.load !4, !noalias !235
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #29, !noalias !235
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !12, !invariant.load !4, !noalias !235 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %.body.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !13, !invariant.load !4, !noalias !235
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ay, i64 noundef range(i64 1, 536870913) %i.bb) #29, !noalias !235
  br label %.body.i.i.i.i.i

bb.m:                                             ; preds = %bb.d
  %.sroa.627.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.627.0..sroa_idx.i.i.i.i.i.i, i64 232, i1 false), !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !231
  br label %bb.o

.body.i.i.i.i.i:                                  ; preds = %bb.l, %bb.k
  store ptr %.sroa.66.0.ph.i.i.i.i, ptr %3, align 8, !noalias !234
  store ptr %.sroa.10.0.ph.i.i.i.i, ptr %i.ao, align 8, !noalias !234
  resume { ptr, i32 } %i.aw

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.f
  store ptr %.sroa.66.0.ph.i.i.i.i, ptr %3, align 8, !noalias !234
  store ptr %.sroa.10.0.ph.i.i.i.i, ptr %i.ao, align 8, !noalias !234
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !236
  br label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_EINtNtBb_6result6ResultNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingINtNtB1D_5boxed3BoxDNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB5t_4SyncEL_EEuINtNtNtBb_3ops12control_flow11ControlFlowIB62_B3Q_EENCNvMsi_B3U_INtB3U_13TokenizerImplNtNtB3W_6models12ModelWrapperNtNtB3W_11normalizers17NormalizerWrapperNtNtB3W_14pre_tokenizers19PreTokenizerWrapperNtNtB3W_10processors20PostProcessorWrapperNtNtB3W_8decoders14DecoderWrapperE22encode_single_sequences1_0NCINvXB7_INtB7_12GenericShuntINtB2Z_3MapBS_B6R_EIB3v_zB4O_EEB2c_8try_folduNCINvNvB2c_12try_for_each4callB3Q_B6G_NcNtB6G_5Break0E0B6G_E0E0B61_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i, %bb.m
  %.sroa.6.0.i.i.i = phi ptr [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i ], [ %i.an, %bb.m ]
  %.sroa.5.0.i.i.i = phi ptr [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i ], [ %i.al, %bb.m ]
  %.sroa.0.0.i5.i.i = phi i64 [ -1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i ], [ %i.ai, %bb.m ]
  %i.bc = add i64 %i.n, 1
  store i64 %i.bc, ptr %i.e, align 8, !alias.scope !223, !noalias !228
  store i64 %.sroa.0.0.i5.i.i, ptr %0, align 8, !alias.scope !237
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !237
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !alias.scope !237
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.7.i.i.i, i64 232, i1 false), !noalias !238
  br label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_EINtNtBb_6result6ResultNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingINtNtB1D_5boxed3BoxDNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB5t_4SyncEL_EEuINtNtNtBb_3ops12control_flow11ControlFlowIB62_B3Q_EENCNvMsi_B3U_INtB3U_13TokenizerImplNtNtB3W_6models12ModelWrapperNtNtB3W_11normalizers17NormalizerWrapperNtNtB3W_14pre_tokenizers19PreTokenizerWrapperNtNtB3W_10processors20PostProcessorWrapperNtNtB3W_8decoders14DecoderWrapperE22encode_single_sequences1_0NCINvXB7_INtB7_12GenericShuntINtB2Z_3MapBS_B6R_EIB3v_zB4O_EEB2c_8try_folduNCINvNvB2c_12try_for_each4callB3Q_B6G_NcNtB6G_5Break0E0B6G_E0E0B61_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_EINtNtBb_6result6ResultNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingINtNtB1D_5boxed3BoxDNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB5t_4SyncEL_EEuINtNtNtBb_3ops12control_flow11ControlFlowIB62_B3Q_EENCNvMsi_B3U_INtB3U_13TokenizerImplNtNtB3W_6models12ModelWrapperNtNtB3W_11normalizers17NormalizerWrapperNtNtB3W_14pre_tokenizers19PreTokenizerWrapperNtNtB3W_10processors20PostProcessorWrapperNtNtB3W_8decoders14DecoderWrapperE22encode_single_sequences1_0NCINvXB7_INtB7_12GenericShuntINtB2Z_3MapBS_B6R_EIB3v_zB4O_EEB2c_8try_folduNCINvNvB2c_12try_for_each4callB3Q_B6G_NcNtB6G_5Break0E0B6G_E0E0B61_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvMsi_NtCshBhMCGs0DAb_10tokenizers9tokenizerINtB2B_13TokenizerImplNtNtB2D_6models12ModelWrapperNtNtB2D_11normalizers17NormalizerWrapperNtNtB2D_14pre_tokenizers19PreTokenizerWrapperNtNtB2D_10processors20PostProcessorWrapperNtNtB2D_8decoders14DecoderWrapperE22encode_single_sequences0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzINtNtB1T_5boxed3BoxDNtNtBc_5error5ErrorNtNtBc_6marker4SendNtB9m_4SyncEL_EEEB76_8try_folduNCINvNvB76_12try_for_each4callNtNtB2B_8encoding8EncodingINtNtNtBc_3ops12control_flow11ControlFlowBaC_ENcNtBb2_5Break0E0Bb2_E0IBb3_Bb2_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readnone captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.7.i.i.i = alloca [232 x i8], align 8     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !274, !nonnull !4, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !274, !nonnull !4, !noundef !4
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.k, ptr %1, align 8, !alias.scope !274
  %i.l = getelementptr i8, ptr %i.f, i64 8
  %.val.i.i = load ptr, ptr %i.l, align 8, !noalias !275, !nonnull !4, !noundef !4
  %i.m = getelementptr i8, ptr %i.f, i64 16
  %.val4.i.i = load i64, ptr %i.m, align 8, !noalias !275, !noundef !4
  %i.n = load i64, ptr %i.e, align 8, !alias.scope !271, !noalias !276, !noundef !4 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !277, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !280
  %i.o = load ptr, ptr %.val.i.i.i.i, align 8, !alias.scope !278, !noalias !279, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !280, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 560
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1032 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !21, !noalias !280, !noundef !4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.s, -1
  %..i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.r
  call void @_RINvMs1_NtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabularyNtB6_15AddedVocabulary21extract_and_normalizeNtNtBa_11normalizers17NormalizerWrapperECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) %..i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val4.i.i), !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !280
  %i.t = load ptr, ptr %i.o, align 8, !noalias !281, !nonnull !4, !align !5, !noundef !4
  call void @_RINvMsn_NtCshBhMCGs0DAb_10tokenizers9tokenizerINtB6_13TokenizerImplNtNtB8_6models12ModelWrapperNtNtB8_11normalizers17NormalizerWrapperNtNtB8_14pre_tokenizers19PreTokenizerWrapperNtNtB8_10processors20PostProcessorWrapperNtNtB8_8decoders14DecoderWrapperE15do_pre_tokenizeNtNtB6_13pre_tokenizer18PreTokenizedStringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d), !noalias !281
  %i.u = load i64, ptr %i.c, align 8, !range !6, !noalias !280, !noundef !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !280 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !noalias !280 ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !280
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.sroa.623.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.10.0..sroa_idx7.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx7.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623.0..sroa_idx.i.i.i.i.i.i, i64 24, i1 false), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !280
  store i64 %i.u, ptr %i.b, align 8, !noalias !280
  %.sroa.6.0..sroa_idx3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.x, ptr %.sroa.6.0..sroa_idx3.i.i.i.i.i.i, align 8, !noalias !280
  %.sroa.8.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.z, ptr %.sroa.8.0..sroa_idx5.i.i.i.i.i.i, align 8, !noalias !280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !280
  %i.aa = load ptr, ptr %i.o, align 8, !noalias !281, !nonnull !4, !align !5, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !278, !noalias !279, !nonnull !4, !align !22, !noundef !4
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !281, !noundef !4
  %i.ae = trunc i64 %i.n to i32
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !278, !noalias !279, !nonnull !4, !noundef !4
  %i.ah = load i8, ptr %i.ag, align 1, !range !8, !noalias !281, !noundef !4
  call void @_RINvMsk_NtCshBhMCGs0DAb_10tokenizers9tokenizerINtB6_13TokenizerImplNtNtB8_6models12ModelWrapperNtNtB8_11normalizers17NormalizerWrapperNtNtB8_14pre_tokenizers19PreTokenizerWrapperNtNtB8_10processors20PostProcessorWrapperNtNtB8_8decoders14DecoderWrapperE11do_tokenizeNtNtB6_13pre_tokenizer18PreTokenizedStringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.a, ptr noundef nonnull align 8 %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, i32 noundef %i.ad, i32 noundef 1, i32 %i.ae, i8 noundef %i.ah), !noalias !281
  %i.ai = load i64, ptr %i.a, align 8, !range !6, !noalias !280, !noundef !4 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !280 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !noalias !280 ; 2 uses
  br i1 %i.aj, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !280
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.10.0.ph.i.i.i.i = phi ptr [ %i.an, %bb.e ], [ %i.z, %bb.c ] ; 2 uses
  %.sroa.66.0.ph.i.i.i.i = phi ptr [ %i.al, %bb.e ], [ %i.x, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !279
  %.val.i.i.i.i.i = load ptr, ptr %3, align 8, !noalias !282, !noundef !4 ; 4 uses
  %i.ao = getelementptr i8, ptr %3, i64 8         ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !noalias !282 ; 6 uses
  %i.ap = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.ap, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i) ]
  %i.aq = load ptr, ptr %.val2.i.i.i.i.i, align 8, !invariant.load !4, !noalias !283 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.aq(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.i unwind label %bb.k, !noalias !283

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !12, !invariant.load !4, !noalias !283 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !13, !invariant.load !4, !noalias !283
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #29, !noalias !283
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !12, !invariant.load !4, !noalias !283 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %.body.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !13, !invariant.load !4, !noalias !283
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ay, i64 noundef range(i64 1, 536870913) %i.bb) #29, !noalias !283
  br label %.body.i.i.i.i.i

bb.m:                                             ; preds = %bb.d
  %.sroa.627.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.627.0..sroa_idx.i.i.i.i.i.i, i64 232, i1 false), !noalias !275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !279
  br label %bb.o

.body.i.i.i.i.i:                                  ; preds = %bb.l, %bb.k
  store ptr %.sroa.66.0.ph.i.i.i.i, ptr %3, align 8, !noalias !282
  store ptr %.sroa.10.0.ph.i.i.i.i, ptr %i.ao, align 8, !noalias !282
  resume { ptr, i32 } %i.aw

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.f
  store ptr %.sroa.66.0.ph.i.i.i.i, ptr %3, align 8, !noalias !282
  store ptr %.sroa.10.0.ph.i.i.i.i, ptr %i.ao, align 8, !noalias !282
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !284
  br label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_EINtNtBb_6result6ResultNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingINtNtB1C_5boxed3BoxDNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB5t_4SyncEL_EEuINtNtNtBb_3ops12control_flow11ControlFlowIB62_B3Q_EENCNvMsi_B3U_INtB3U_13TokenizerImplNtNtB3W_6models12ModelWrapperNtNtB3W_11normalizers17NormalizerWrapperNtNtB3W_14pre_tokenizers19PreTokenizerWrapperNtNtB3W_10processors20PostProcessorWrapperNtNtB3W_8decoders14DecoderWrapperE22encode_single_sequences0_0NCINvXB7_INtB7_12GenericShuntINtB2Z_3MapBS_B6R_EIB3v_zB4O_EEB2c_8try_folduNCINvNvB2c_12try_for_each4callB3Q_B6G_NcNtB6G_5Break0E0B6G_E0E0B61_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i, %bb.m
  %.sroa.6.0.i.i.i = phi ptr [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i ], [ %i.an, %bb.m ]
  %.sroa.5.0.i.i.i = phi ptr [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i ], [ %i.al, %bb.m ]
  %.sroa.0.0.i5.i.i = phi i64 [ -1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i ], [ %i.ai, %bb.m ]
  %i.bc = add i64 %i.n, 1
  store i64 %i.bc, ptr %i.e, align 8, !alias.scope !271, !noalias !276
  store i64 %.sroa.0.0.i5.i.i, ptr %0, align 8, !alias.scope !285
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !285
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !alias.scope !285
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.7.i.i.i, i64 232, i1 false), !noalias !286
  br label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_EINtNtBb_6result6ResultNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingINtNtB1C_5boxed3BoxDNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB5t_4SyncEL_EEuINtNtNtBb_3ops12control_flow11ControlFlowIB62_B3Q_EENCNvMsi_B3U_INtB3U_13TokenizerImplNtNtB3W_6models12ModelWrapperNtNtB3W_11normalizers17NormalizerWrapperNtNtB3W_14pre_tokenizers19PreTokenizerWrapperNtNtB3W_10processors20PostProcessorWrapperNtNtB3W_8decoders14DecoderWrapperE22encode_single_sequences0_0NCINvXB7_INtB7_12GenericShuntINtB2Z_3MapBS_B6R_EIB3v_zB4O_EEB2c_8try_folduNCINvNvB2c_12try_for_each4callB3Q_B6G_NcNtB6G_5Break0E0B6G_E0E0B61_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_EINtNtBb_6result6ResultNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingINtNtB1C_5boxed3BoxDNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB5t_4SyncEL_EEuINtNtNtBb_3ops12control_flow11ControlFlowIB62_B3Q_EENCNvMsi_B3U_INtB3U_13TokenizerImplNtNtB3W_6models12ModelWrapperNtNtB3W_11normalizers17NormalizerWrapperNtNtB3W_14pre_tokenizers19PreTokenizerWrapperNtNtB3W_10processors20PostProcessorWrapperNtNtB3W_8decoders14DecoderWrapperE22encode_single_sequences0_0NCINvXB7_INtB7_12GenericShuntINtB2Z_3MapBS_B6R_EIB3v_zB4O_EEB2c_8try_folduNCINvNvB2c_12try_for_each4callB3Q_B6G_NcNtB6G_5Break0E0B6G_E0E0B61_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterReEENCNvMsi_NtCshBhMCGs0DAb_10tokenizers9tokenizerINtB21_13TokenizerImplNtNtB23_6models12ModelWrapperNtNtB23_11normalizers17NormalizerWrapperNtNtB23_14pre_tokenizers19PreTokenizerWrapperNtNtB23_10processors20PostProcessorWrapperNtNtB23_8decoders14DecoderWrapperE22encode_single_sequences_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtBc_5error5ErrorNtNtBc_6marker4SendNtB91_4SyncEL_EEEB6v_8try_folduNCINvNvB6v_12try_for_each4callNtNtB21_8encoding8EncodingINtNtNtBc_3ops12control_flow11ControlFlowBah_ENcNtBaH_5Break0E0BaH_E0IBaI_BaH_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readnone captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.7.i.i.i = alloca [232 x i8], align 8     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !322, !nonnull !4, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !322, !nonnull !4, !noundef !4
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.k, ptr %1, align 8, !alias.scope !322
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !323, !nonnull !4, !noundef !4
  %i.l = getelementptr i8, ptr %i.f, i64 8
  %.val4.i.i = load i64, ptr %i.l, align 8, !noalias !323, !noundef !4
  %i.m = load i64, ptr %i.e, align 8, !alias.scope !319, !noalias !324, !noundef !4 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !325, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !328
  %i.n = load ptr, ptr %.val.i.i.i.i, align 8, !alias.scope !326, !noalias !327, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !328, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 560
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1032 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !21, !noalias !328, !noundef !4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.r, -1
  %..i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.q
  call void @_RINvMs1_NtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabularyNtB6_15AddedVocabulary21extract_and_normalizeNtNtBa_11normalizers17NormalizerWrapperECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) %..i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val4.i.i), !noalias !329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !328
  %i.s = load ptr, ptr %i.n, align 8, !noalias !329, !nonnull !4, !align !5, !noundef !4
  call void @_RINvMsn_NtCshBhMCGs0DAb_10tokenizers9tokenizerINtB6_13TokenizerImplNtNtB8_6models12ModelWrapperNtNtB8_11normalizers17NormalizerWrapperNtNtB8_14pre_tokenizers19PreTokenizerWrapperNtNtB8_10processors20PostProcessorWrapperNtNtB8_8decoders14DecoderWrapperE15do_pre_tokenizeNtNtB6_13pre_tokenizer18PreTokenizedStringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d), !noalias !329
  %i.t = load i64, ptr %i.c, align 8, !range !6, !noalias !328, !noundef !4 ; 2 uses
  %i.u = icmp eq i64 %i.t, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !328 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !328 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !328
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.sroa.623.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.10.0..sroa_idx7.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx7.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623.0..sroa_idx.i.i.i.i.i.i, i64 24, i1 false), !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !328
  store i64 %i.t, ptr %i.b, align 8, !noalias !328
  %.sroa.6.0..sroa_idx3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx3.i.i.i.i.i.i, align 8, !noalias !328
  %.sroa.8.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.y, ptr %.sroa.8.0..sroa_idx5.i.i.i.i.i.i, align 8, !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !328
  %i.z = load ptr, ptr %i.n, align 8, !noalias !329, !nonnull !4, !align !5, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !326, !noalias !327, !nonnull !4, !align !22, !noundef !4
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !329, !noundef !4
  %i.ad = trunc i64 %i.m to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !326, !noalias !327, !nonnull !4, !noundef !4
  %i.ag = load i8, ptr %i.af, align 1, !range !8, !noalias !329, !noundef !4
  call void @_RINvMsk_NtCshBhMCGs0DAb_10tokenizers9tokenizerINtB6_13TokenizerImplNtNtB8_6models12ModelWrapperNtNtB8_11normalizers17NormalizerWrapperNtNtB8_14pre_tokenizers19PreTokenizerWrapperNtNtB8_10processors20PostProcessorWrapperNtNtB8_8decoders14DecoderWrapperE11do_tokenizeNtNtB6_13pre_tokenizer18PreTokenizedStringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.a, ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, i32 noundef %i.ac, i32 noundef 1, i32 %i.ad, i8 noundef %i.ag), !noalias !329
  %i.ah = load i64, ptr %i.a, align 8, !range !6, !noalias !328, !noundef !4 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !328 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !noalias !328 ; 2 uses
  br i1 %i.ai, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !328
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.10.0.ph.i.i.i.i = phi ptr [ %i.am, %bb.e ], [ %i.y, %bb.c ] ; 2 uses
  %.sroa.64.0.ph.i.i.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.w, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !327
  %.val.i.i.i.i.i = load ptr, ptr %3, align 8, !noalias !330, !noundef !4 ; 4 uses
  %i.an = getelementptr i8, ptr %3, i64 8         ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.an, align 8, !noalias !330 ; 6 uses
  %i.ao = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i) ]
  %i.ap = load ptr, ptr %.val2.i.i.i.i.i, align 8, !invariant.load !4, !noalias !331 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.ap(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.i unwind label %bb.k, !noalias !331

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !12, !invariant.load !4, !noalias !331 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !13, !invariant.load !4, !noalias !331
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ar, i64 noundef range(i64 1, 536870913) %i.au) #29, !noalias !331
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !12, !invariant.load !4, !noalias !331 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.body.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !4, !noalias !331
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ax, i64 noundef range(i64 1, 536870913) %i.ba) #29, !noalias !331
  br label %.body.i.i.i.i.i

bb.m:                                             ; preds = %bb.d
  %.sroa.627.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.627.0..sroa_idx.i.i.i.i.i.i, i64 232, i1 false), !noalias !323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !327
  br label %bb.o

.body.i.i.i.i.i:                                  ; preds = %bb.l, %bb.k
  store ptr %.sroa.64.0.ph.i.i.i.i, ptr %3, align 8, !noalias !330
  store ptr %.sroa.10.0.ph.i.i.i.i, ptr %i.an, align 8, !noalias !330
  resume { ptr, i32 } %i.av

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.f
  store ptr %.sroa.64.0.ph.i.i.i.i, ptr %3, align 8, !noalias !330
  store ptr %.sroa.10.0.ph.i.i.i.i, ptr %i.an, align 8, !noalias !330
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !332
  br label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_EINtNtBb_6result6ResultNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB59_4SyncEL_EEuINtNtNtBb_3ops12control_flow11ControlFlowIB5I_B3g_EENCNvMsi_B3k_INtB3k_13TokenizerImplNtNtB3m_6models12ModelWrapperNtNtB3m_11normalizers17NormalizerWrapperNtNtB3m_14pre_tokenizers19PreTokenizerWrapperNtNtB3m_10processors20PostProcessorWrapperNtNtB3m_8decoders14DecoderWrapperE22encode_single_sequences_0NCINvXB7_INtB7_12GenericShuntINtB2p_3MapBS_B6x_EIB2V_zB4e_EEB1C_8try_folduNCINvNvB1C_12try_for_each4callB3g_B6m_NcNtB6m_5Break0E0B6m_E0E0B5H_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i, %bb.m
  %.sroa.6.0.i.i.i = phi ptr [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i ], [ %i.am, %bb.m ]
  %.sroa.5.0.i.i.i = phi ptr [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i ], [ %i.ak, %bb.m ]
  %.sroa.0.0.i5.i.i = phi i64 [ -1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2f_4SyncEL_EEEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i.i.i.i.i ], [ %i.ah, %bb.m ]
  %i.bb = add i64 %i.m, 1
  store i64 %i.bb, ptr %i.e, align 8, !alias.scope !319, !noalias !324
  store i64 %.sroa.0.0.i5.i.i, ptr %0, align 8, !alias.scope !333
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !333
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !alias.scope !333
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.7.i.i.i, i64 232, i1 false), !noalias !334
  br label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_EINtNtBb_6result6ResultNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB59_4SyncEL_EEuINtNtNtBb_3ops12control_flow11ControlFlowIB5I_B3g_EENCNvMsi_B3k_INtB3k_13TokenizerImplNtNtB3m_6models12ModelWrapperNtNtB3m_11normalizers17NormalizerWrapperNtNtB3m_14pre_tokenizers19PreTokenizerWrapperNtNtB3m_10processors20PostProcessorWrapperNtNtB3m_8decoders14DecoderWrapperE22encode_single_sequences_0NCINvXB7_INtB7_12GenericShuntINtB2p_3MapBS_B6x_EIB2V_zB4e_EEB1C_8try_folduNCINvNvB1C_12try_for_each4callB3g_B6m_NcNtB6m_5Break0E0B6m_E0E0B5H_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_EINtNtBb_6result6ResultNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB59_4SyncEL_EEuINtNtNtBb_3ops12control_flow11ControlFlowIB5I_B3g_EENCNvMsi_B3k_INtB3k_13TokenizerImplNtNtB3m_6models12ModelWrapperNtNtB3m_11normalizers17NormalizerWrapperNtNtB3m_14pre_tokenizers19PreTokenizerWrapperNtNtB3m_10processors20PostProcessorWrapperNtNtB3m_8decoders14DecoderWrapperE22encode_single_sequences_0NCINvXB7_INtB7_12GenericShuntINtB2p_3MapBS_B6x_EIB2V_zB4e_EEB1C_8try_folduNCINvNvB1C_12try_for_each4callB3g_B6m_NcNtB6m_5Break0E0B6m_E0E0B5H_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenENCINvMs1_B1q_NtB1q_15AddedVocabulary20refresh_added_tokensNtNtB1u_11normalizers17NormalizerWrapperNtNtB1u_6models12ModelWrapperEs1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4I_8for_each4callNtNtB1s_10normalizer16NormalizedStringNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6w_3VecB5L_E14extend_trustedBN_E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !5, !noundef !4
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.i = icmp eq ptr %i.d, %i.f
  br i1 %i.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_NtNtBV_10normalizer16NormalizedStringuNCINvMs1_BT_NtBT_15AddedVocabulary20refresh_added_tokensNtNtBX_11normalizers17NormalizerWrapperNtNtBX_6models12ModelWrapperEs1_0NCINvNvB22_8for_each4callB3q_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6I_3VecB3q_E14extend_trustedINtB2S_3MapBF_B42_EE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.d:                                             ; preds = %bb.m, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ad, %bb.m ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.m ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.01.0.i
  %.val15.i = load ptr, ptr %i.o, align 8, !noalias !345, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !346
  %i.p = getelementptr inbounds nuw i8, ptr %.val15.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !346, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.val15.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !346, !noundef !4
  invoke void @_RNvXs2_NtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizerNtB5_16NormalizedStringINtNtCsf3Ta7LF998c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.s)
          to label %.noexc.i unwind label %bb.c, !noalias !345

.noexc.i:                                         ; preds = %bb.d
  %i.t = load ptr, ptr %i.h, align 8, !noalias !346, !align !5, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %i.u = invoke { ptr, ptr } @_RNvXs_NtCshBhMCGs0DAb_10tokenizers11normalizersNtB4_17NormalizerWrapperNtNtB6_9tokenizer10Normalizer9normalize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %bb.g unwind label %bb.f, !noalias !346 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.z, %bb.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(80) %i.b) #26
          to label %bb.n unwind label %bb.l, !noalias !346

bb.g:                                             ; preds = %bb.e
  %i.w = extractvalue { ptr, ptr } %i.u, 0        ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.x = extractvalue { ptr, ptr } %i.u, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !346
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  store ptr %i.w, ptr %i.a, align 8, !noalias !346
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.x, ptr %i.y, align 8, !noalias !346
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #30
          to label %bb.j unwind label %bb.i, !noalias !346

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #26
          to label %.body.i.i.i unwind label %bb.k, !noalias !346

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !346
  unreachable

bb.l:                                             ; preds = %.body.i.i.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !346
  unreachable

bb.m:                                             ; preds = %bb.g, %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !346
  %i.ac = getelementptr inbounds nuw [80 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.c, i64 80, i1 false), !noalias !348
  %i.ad = add i64 %.val10.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.m
  br i1 %i.af, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_NtNtBV_10normalizer16NormalizedStringuNCINvMs1_BT_NtBT_15AddedVocabulary20refresh_added_tokensNtNtBX_11normalizers17NormalizerWrapperNtNtBX_6models12ModelWrapperEs1_0NCINvNvB22_8for_each4callB3q_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6I_3VecB3q_E14extend_trustedINtB2S_3MapBF_B42_EE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, label %bb.d

bb.n:                                             ; preds = %.body.i.i.i, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.c ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !345
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_NtNtBV_10normalizer16NormalizedStringuNCINvMs1_BT_NtBT_15AddedVocabulary20refresh_added_tokensNtNtBX_11normalizers17NormalizerWrapperNtNtBX_6models12ModelWrapperEs1_0NCINvNvB22_8for_each4callB3q_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6I_3VecB3q_E14extend_trustedINtB2S_3MapBF_B42_EE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.m, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ad, %bb.m ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !345
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen31m5ModelENCINvNtNtCsej0D7ZFyXq_12wasm_bindgen7convert5impls24js_value_vector_into_abiB1L_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4callNtB2S_7JsValueNCINvMsk_B12_INtB12_3VecB57_E14extend_trustedBN_E0E0EB1P_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen31m5ModelENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB21_8adapters3map8map_foldBX_NtCsej0D7ZFyXq_12wasm_bindgen7JsValueuNCINvNtNtB3A_7convert5impls24js_value_vector_into_abiBX_E0NCINvNvB1V_8for_each4callB3y_NCINvMsk_B8_INtB8_3VecB3y_E14extend_trustedINtB31_3MapBI_B4a_EE0E0E0EB11_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileStatsENCINvNtNtCsej0D7ZFyXq_12wasm_bindgen7convert5impls24js_value_vector_into_abiB1L_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4j_8for_each4callNtB37_7JsValueNCINvMsk_B12_INtB12_3VecB5m_E14extend_trustedBN_E0E0EB1P_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileStatsENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2g_8adapters3map8map_foldBX_NtCsej0D7ZFyXq_12wasm_bindgen7JsValueuNCINvNtNtB3P_7convert5impls24js_value_vector_into_abiBX_E0NCINvNvB2a_8for_each4callB3N_NCINvMsk_B8_INtB8_3VecB3N_E14extend_trustedINtB3g_3MapBI_B4p_EE0E0E0EB11_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENCINvXs0_NtB1P_13serializationINtB3b_16TokenizerVisitorNtNtB1R_6models12ModelWrapperNtNtB1R_11normalizers17NormalizerWrapperNtNtB1R_14pre_tokenizers19PreTokenizerWrapperNtNtB1R_10processors20PostProcessorWrapperNtNtB1R_8decoders14DecoderWrapperENtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_mapINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB7S_4read9SliceReadEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB1N_10AddedTokenENCINvNtB12_16in_place_collect24write_in_place_with_dropBag_E0INtNtBc_6result6ResultB9F_zEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtBZ_10AddedTokenENCINvNtNtB2k_8adapters3map12map_try_foldBX_B3S_B3i_INtNtB2m_6result6ResultB3i_zENCINvXs0_NtB11_13serializationINtB5B_16TokenizerVisitorNtNtB13_6models12ModelWrapperNtNtB13_11normalizers17NormalizerWrapperNtNtB13_14pre_tokenizers19PreTokenizerWrapperNtNtB13_10processors20PostProcessorWrapperNtNtB13_8decoders14DecoderWrapperENtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_mapINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtBai_4read9SliceReadEEs_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3S_E0E0B4Z_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterReENCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB1X_7HashSetB1L_NtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateEINtNtNtBa_6traits7collect6ExtendB1L_E6extendBX_E0ENtNtB3F_8iterator8Iterator4folduNCINvNvB4o_8for_each4callTB1L_uENCINvXs1i_NtB1Z_3mapINtB5A_7HashMapB1L_uB2K_EIB3B_B5j_E6extendBN_E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterReENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBX_TBX_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB2T_7HashSetBX_NtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateEINtNtB14_7collect6ExtendBX_E6extendBI_E0NCINvNvB10_8for_each4callB2D_NCINvXs1i_NtB2V_3mapINtB5M_7HashMapBX_uB3F_EIB4w_B2D_E6extendINtB26_3MapBI_B2K_EE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItermENCINvMs3_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB1W_7Content4readINtNtNtBc_2io6cursor6CursorINtB12_3VechEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3M_8for_each4calljNCINvMsk_B12_IB3w_jE14extend_trustedBN_E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoItermENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldmjuNCINvMs3_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB2L_7Content4readINtNtNtB17_2io6cursor6CursorINtB8_3VechEEE0NCINvNvBZ_8for_each4calljNCINvMsk_B8_IB4m_jE14extend_trustedINtB25_3MapBI_B2C_EE0E0E0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers10byte_levels1_1__NtBb_13ByteLevelTypeNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1z_7Visitor10visit_enumINtNtNtNtCsiOg657KYfD4_5serde7private2de7content19EnumRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvXsN_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de10EnumAccess12variant_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers10byte_levels1_1__NtB3I_13ByteLevelTypeNtB1Z_11Deserialize11deserialize7___FieldEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 3 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de13VariantAccess12unit_variantCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers10byte_levels1_1__NtBb_13ByteLevelTypeNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1z_7Visitor10visit_enumNtNtNtCsaPlfBUY5LAj_10serde_json5value2de16EnumDeserializerECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RINvXs3_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB6_16EnumDeserializerNtNtCseZbltJ5Yqe_10serde_core2de10EnumAccess12variant_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers10byte_levels1_1__NtB2R_13ByteLevelTypeNtB18_11Deserialize11deserialize7___FieldEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0)
  %i.b = load i8, ptr %i.a, align 8, !range !20, !noundef !4
  %i.c = icmp eq i8 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !5, !noundef !4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef align 8 ptr @_RNvXs6_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB5_19VariantDeserializerNtNtCseZbltJ5Yqe_10serde_core2de13VariantAccess12unit_variant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtBb_15FixedLengthTypeNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1D_7Visitor10visit_enumINtNtNtNtCsiOg657KYfD4_5serde7private2de7content19EnumRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvXsN_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de10EnumAccess12variant_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB3I_15FixedLengthTypeNtB1Z_11Deserialize11deserialize7___FieldEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 3 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de13VariantAccess12unit_variantCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtBb_15FixedLengthTypeNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1D_7Visitor10visit_enumNtNtNtCsaPlfBUY5LAj_10serde_json5value2de16EnumDeserializerECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RINvXs3_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB6_16EnumDeserializerNtNtCseZbltJ5Yqe_10serde_core2de10EnumAccess12variant_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB2R_15FixedLengthTypeNtB18_11Deserialize11deserialize7___FieldEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0)
  %i.b = load i8, ptr %i.a, align 8, !range !20, !noundef !4
  %i.c = icmp eq i8 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !5, !noundef !4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef align 8 ptr @_RNvXs6_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB5_19VariantDeserializerNtNtCseZbltJ5Yqe_10serde_core2de13VariantAccess12unit_variant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  br label %bb.d

end_hunk_1
