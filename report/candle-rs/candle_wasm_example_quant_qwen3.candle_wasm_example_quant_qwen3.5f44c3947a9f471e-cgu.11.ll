Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_quant_qwen3.candle_wasm_example_quant_qwen3.5f44c3947a9f471e-cgu.11?download=true
inline.NumInlined: 512
inline.NumDeleted: 272
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler13profile_clear:bb.a
  br i1 %i.d, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.c:                                             ; preds = %bb.b
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.b) #29
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.d:                                             ; preds = %bb.a
  %i.e = icmp ugt i32 %i.b, 1027
  br i1 %i.e, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit2

bb.e:                                             ; preds = %bb.d
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.b) #29
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit2

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit2: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler13profile_reset() unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler8ProfilerEE4withNCNvB1x_13profile_reset0uEB1z_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @52)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler13profile_start(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler8ProfilerEE4withNCNvB1x_13profile_start0uEB1z_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @52, ptr noundef nonnull %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler14profile_enable(i1 noundef zeroext %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = zext i1 %0 to i8
  store i8 %i.d, ptr %i.a, align 1
  call void @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler8ProfilerEE4withNCNvB1x_19profile_set_enabled0uEB1z_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @52, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = call noundef i32 @_RINvNvNtCsej0D7ZFyXq_12wasm_bindgen4___rt8wbg_cast17breaks_if_inlinedReNtB6_7JsValueEB6_(i32 noundef ptrtoint (ptr @54 to i32), i32 noundef 21) #32 ; 5 uses
  store i32 %i.e, ptr %i.b, align 4
  invoke void @_RNvNtNtNtCsey8dOKI5XLb_7web_sys8features11gen_console7console5log_1(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = call noundef i32 @_RINvNvNtCsej0D7ZFyXq_12wasm_bindgen4___rt8wbg_cast17breaks_if_inlinedReNtB6_7JsValueEB6_(i32 noundef ptrtoint (ptr @55 to i32), i32 noundef 20) #32 ; 5 uses
  store i32 %i.f, ptr %i.c, align 4
  invoke void @_RNvNtNtNtCsey8dOKI5XLb_7web_sys8features11gen_console7console5log_1(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
          to label %bb.i unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = icmp ugt i32 %i.e, 1027
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.sink.split, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.e:                                             ; preds = %bb.b
  %i.i = icmp ugt i32 %i.e, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit5

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.e) #29
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit5

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit5: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit7, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit5
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.sink.split: ; preds = %bb.d, %bb.h
  %.sink = phi i32 [ %i.f, %bb.h ], [ %i.e, %bb.d ]
  %.pn.ph = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.g, %bb.d ]
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.sink) #29
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.sink.split, %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.g, %bb.d ], [ %.pn.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.sink.split ]
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = icmp ugt i32 %i.f, 1027
  br i1 %i.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.sink.split, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.i:                                             ; preds = %bb.c
  %i.l = icmp ugt i32 %i.f, 1027
  br i1 %i.l, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit7

bb.j:                                             ; preds = %bb.i
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.f) #29
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit7

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit7: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15get_memory_info(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 6 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [64 x i8], align 8                ; 11 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = tail call { i32, i32 } @_RNvCsey8dOKI5XLb_7web_sys6window() ; 2 uses
  %i.r = extractvalue { i32, i32 } %i.q, 0
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.t = extractvalue { i32, i32 } %i.q, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %i.t, ptr %i.j, align 4
  %i.u = invoke { i32, i32 } @_RNvMs4H_NtNtCsey8dOKI5XLb_7web_sys8features10gen_WindowNtB6_6Window11performance(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp ugt i32 %i.t, 1027
  br i1 %i.w, label %common.resume.sink.split, label %common.resume

bb.d:                                             ; preds = %bb.b
  %i.x = icmp ugt i32 %i.t, 1027
  br i1 %i.x, label %bb.e, label %_RNCNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15get_memory_info0B5_.exit

bb.e:                                             ; preds = %bb.d
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.t) #29
  br label %_RNCNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15get_memory_info0B5_.exit

common.resume.sink.split:                         ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i
  %.sink = phi i32 [ %i.aa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i ], [ %i.ah, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.i ], [ %i.t, %bb.c ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ae, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i ], [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.i ], [ %i.v, %bb.c ]
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.sink) #29
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i ], [ %i.v, %bb.c ], [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RNCNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15get_memory_info0B5_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.y = extractvalue { i32, i32 } %i.u, 0
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %bb.f, label %bb.m

bb.f:                                             ; preds = %_RNCNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15get_memory_info0B5_.exit
  %i.aa = extractvalue { i32, i32 } %i.u, 1       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %i.aa, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ab = call noundef i32 @_RINvNvNtCsej0D7ZFyXq_12wasm_bindgen4___rt8wbg_cast17breaks_if_inlinedReNtB6_7JsValueEB6_(i32 noundef ptrtoint (ptr @43 to i32), i32 noundef 6) #32 ; 5 uses
  store i32 %i.ab, ptr %i.h, align 4
  %i.ac = invoke { i32, i32 } @_RNvNtCs3OdvwEu12o7_6js_sys7Reflect3get(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h)
          to label %bb.i unwind label %bb.g       ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i: ; preds = %bb.h, %bb.g
  %i.ad = icmp ugt i32 %i.aa, 1027
  br i1 %i.ad, label %common.resume.sink.split, label %common.resume

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp ugt i32 %i.ab, 1027
  br i1 %i.af, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.ab) #29
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i

bb.i:                                             ; preds = %bb.f
  %i.ag = extractvalue { i32, i32 } %i.ac, 0
  %i.ah = extractvalue { i32, i32 } %i.ac, 1      ; 5 uses
  %i.ai = trunc i32 %i.ag to i1                   ; 2 uses
  %i.aj = icmp ugt i32 %i.ah, 1027                ; 3 uses
  %or.cond.i = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i

bb.j:                                             ; preds = %bb.i
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.ah) #29
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i: ; preds = %bb.j, %bb.i
  %i.ak = icmp ugt i32 %i.ab, 1027
  br i1 %i.ak, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit8.i

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.ab) #29
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit8.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit8.i: ; preds = %bb.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.al = icmp ugt i32 %i.aa, 1027
  br i1 %i.al, label %bb.l, label %_RNCNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15get_memory_infos_0B5_.exit

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit8.i
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.aa) #29
  br label %_RNCNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15get_memory_infos_0B5_.exit

_RNCNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15get_memory_infos_0B5_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit8.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.ai, label %bb.m, label %.split

bb.m:                                             ; preds = %_RNCNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15get_memory_info0B5_.exit, %bb.a, %_RNCNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15get_memory_infos_0B5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 25, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.am = load i64, ptr %i.k, align 8, !range !9, !noundef !4
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !10, !noundef !4 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.an, label %bb.ax, label %bb.ay, !prof !7

.split:                                           ; preds = %_RNCNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15get_memory_infos_0B5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.ah, ptr %i.g, align 4, !noalias !649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !649
  %i.ar = call noundef i32 @_RINvNvNtCsej0D7ZFyXq_12wasm_bindgen4___rt8wbg_cast17breaks_if_inlinedReNtB6_7JsValueEB6_(i32 noundef ptrtoint (ptr @40 to i32), i32 noundef 14) #32, !noalias !649 ; 5 uses
  store i32 %i.ar, ptr %i.f, align 4, !noalias !649
  %i.as = invoke { i32, i32 } @_RNvNtCs3OdvwEu12o7_6js_sys7Reflect3get(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f)
          to label %bb.o unwind label %bb.n, !noalias !649 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.sink.split.i: ; preds = %.body46.i, %.body39.i, %.body.i
  %.sink.i = phi i32 [ %i.bh, %.body39.i ], [ %i.ar, %.body.i ], [ %i.by, %.body46.i ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body40.i, %.body39.i ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body47.i, %.body46.i ]
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.sink.i) #29, !noalias !649
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.i: ; preds = %.body46.i, %.body39.i, %.body.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.sink.split.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body40.i, %.body39.i ], [ %eh.lpad-body47.i, %.body46.i ], [ %.pn.ph.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.sink.split.i ] ; 2 uses
  br i1 %i.aj, label %common.resume.sink.split, label %common.resume

bb.n:                                             ; preds = %.split
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.n
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.at, %bb.n ], [ %i.ba, %bb.s ], [ %i.ba, %bb.r ] ; 2 uses
  %i.au = icmp ugt i32 %i.ar, 1027
  br i1 %i.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.sink.split.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.i

bb.o:                                             ; preds = %.split
  %i.av = extractvalue { i32, i32 } %i.as, 0
  %i.aw = extractvalue { i32, i32 } %i.as, 1      ; 7 uses
  %i.ax = trunc i32 %i.av to i1
  br i1 %i.ax, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i34

bb.p:                                             ; preds = %bb.o
  %i.ay = icmp ugt i32 %i.aw, 1027
  br i1 %i.ay, label %bb.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.thread.i

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.aw) #29, !noalias !649
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.thread.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i34: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !649
  store i32 %i.aw, ptr %i.c, align 4, !noalias !649
  %i.az = invoke { i64, double } @_RNvCsej0D7ZFyXq_12wasm_bindgen21___wbindgen_number_get(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
          to label %bb.t unwind label %bb.r, !noalias !649 ; 2 uses

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i34
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = icmp ugt i32 %i.aw, 1027
  br i1 %i.bb, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.aw) #29, !noalias !649
  br label %.body.i

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i34
  %i.bc = icmp ugt i32 %i.aw, 1027
  br i1 %i.bc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.aw) #29, !noalias !649
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !649
  %i.bd = extractvalue { i64, double } %i.az, 0
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.w, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.bf = extractvalue { i64, double } %i.az, 1
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.thread.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.thread.i: ; preds = %bb.w, %bb.v, %bb.q, %bb.p
  %.sroa.0.0.i = phi double [ %i.bf, %bb.w ], [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.p ] ; 2 uses
  %i.bg = icmp ugt i32 %i.ar, 1027
  br i1 %i.bg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.thread.i
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.ar) #29, !noalias !649
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !649
  %i.bh = call noundef i32 @_RINvNvNtCsej0D7ZFyXq_12wasm_bindgen4___rt8wbg_cast17breaks_if_inlinedReNtB6_7JsValueEB6_(i32 noundef ptrtoint (ptr @41 to i32), i32 noundef 15) #32, !noalias !649 ; 5 uses
  store i32 %i.bh, ptr %i.e, align 4, !noalias !649
  %i.bi = invoke { i32, i32 } @_RNvNtCs3OdvwEu12o7_6js_sys7Reflect3get(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e)
          to label %bb.aa unwind label %bb.z, !noalias !649 ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i

.body39.i:                                        ; preds = %bb.ae, %bb.ad, %bb.z
  %eh.lpad-body40.i = phi { ptr, i32 } [ %i.bj, %bb.z ], [ %i.bq, %bb.ae ], [ %i.bq, %bb.ad ] ; 2 uses
  %i.bk = icmp ugt i32 %i.bh, 1027
  br i1 %i.bk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.sink.split.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.i

bb.aa:                                            ; preds = %bb.y
  %i.bl = extractvalue { i32, i32 } %i.bi, 0
  %i.bm = extractvalue { i32, i32 } %i.bi, 1      ; 7 uses
  %i.bn = trunc i32 %i.bl to i1
  br i1 %i.bn, label %bb.ab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit37.i

bb.ab:                                            ; preds = %bb.aa
  %i.bo = icmp ugt i32 %i.bm, 1027
  br i1 %i.bo, label %bb.ac, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit37.thread.i

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.bm) #29, !noalias !649
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit37.thread.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit37.i: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !649
  store i32 %i.bm, ptr %i.b, align 4, !noalias !649
  %i.bp = invoke { i64, double } @_RNvCsej0D7ZFyXq_12wasm_bindgen21___wbindgen_number_get(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.af unwind label %bb.ad, !noalias !649 ; 2 uses

bb.ad:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit37.i
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = icmp ugt i32 %i.bm, 1027
  br i1 %i.br, label %bb.ae, label %.body39.i

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.bm) #29, !noalias !649
  br label %.body39.i

bb.af:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit37.i
  %i.bs = icmp ugt i32 %i.bm, 1027
  br i1 %i.bs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.bm) #29, !noalias !649
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !649
  %i.bt = extractvalue { i64, double } %i.bp, 0
  %i.bu = trunc nuw i64 %i.bt to i1
  br i1 %i.bu, label %bb.ai, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit37.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.bv = extractvalue { i64, double } %i.bp, 1
  %i.bw = fmul double %i.bv, f0x3EB0000000000000
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit37.thread.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit37.thread.i: ; preds = %bb.ai, %bb.ah, %bb.ac, %bb.ab
  %.sroa.05.0.i = phi double [ %i.bw, %bb.ai ], [ 0.000000e+00, %bb.ah ], [ 0.000000e+00, %bb.ac ], [ 0.000000e+00, %bb.ab ]
  %i.bx = icmp ugt i32 %i.bh, 1027
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit37.thread.i
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.bh) #29, !noalias !649
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit37.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !649
  %i.by = call noundef i32 @_RINvNvNtCsej0D7ZFyXq_12wasm_bindgen4___rt8wbg_cast17breaks_if_inlinedReNtB6_7JsValueEB6_(i32 noundef ptrtoint (ptr @42 to i32), i32 noundef 15) #32, !noalias !649 ; 5 uses
  store i32 %i.by, ptr %i.d, align 4, !noalias !649
  %i.bz = invoke { i32, i32 } @_RNvNtCs3OdvwEu12o7_6js_sys7Reflect3get(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d)
          to label %bb.am unwind label %bb.al, !noalias !649 ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i

.body46.i:                                        ; preds = %bb.aq, %bb.ap, %bb.al
  %eh.lpad-body47.i = phi { ptr, i32 } [ %i.ca, %bb.al ], [ %i.ch, %bb.aq ], [ %i.ch, %bb.ap ] ; 2 uses
  %i.cb = icmp ugt i32 %i.by, 1027
  br i1 %i.cb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.sink.split.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit33.i

bb.am:                                            ; preds = %bb.ak
  %i.cc = extractvalue { i32, i32 } %i.bz, 0
  %i.cd = extractvalue { i32, i32 } %i.bz, 1      ; 7 uses
  %i.ce = trunc i32 %i.cc to i1
  br i1 %i.ce, label %bb.an, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit44.i

bb.an:                                            ; preds = %bb.am
  %i.cf = icmp ugt i32 %i.cd, 1027
  br i1 %i.cf, label %bb.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit44.thread.i

bb.ao:                                            ; preds = %bb.an
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.cd) #29, !noalias !649
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit44.thread.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit44.i: ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !649
  store i32 %i.cd, ptr %i.a, align 4, !noalias !649
  %i.cg = invoke { i64, double } @_RNvCsej0D7ZFyXq_12wasm_bindgen21___wbindgen_number_get(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.ar unwind label %bb.ap, !noalias !649 ; 2 uses

bb.ap:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit44.i
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = icmp ugt i32 %i.cd, 1027
  br i1 %i.ci, label %bb.aq, label %.body46.i

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.cd) #29, !noalias !649
  br label %.body46.i

bb.ar:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit44.i
  %i.cj = icmp ugt i32 %i.cd, 1027
  br i1 %i.cj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.cd) #29, !noalias !649
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !649
  %i.ck = extractvalue { i64, double } %i.cg, 0
  %i.cl = trunc nuw i64 %i.ck to i1
  br i1 %i.cl, label %bb.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit44.thread.i

bb.au:                                            ; preds = %bb.at
  %i.cm = extractvalue { i64, double } %i.cg, 1
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit44.thread.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit44.thread.i: ; preds = %bb.au, %bb.at, %bb.ao, %bb.an
  %.sroa.012.0.i = phi double [ %i.cm, %bb.au ], [ 0.000000e+00, %bb.at ], [ 0.000000e+00, %bb.ao ], [ 0.000000e+00, %bb.an ] ; 2 uses
  %i.cn = icmp ugt i32 %i.by, 1027
  br i1 %i.cn, label %bb.av, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit48.i

bb.av:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit44.thread.i
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.by) #29, !noalias !649
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit48.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit48.i: ; preds = %bb.av, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit44.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !649
  br i1 %i.aj, label %bb.aw, label %_RNCNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15get_memory_infos0_0B5_.exit

bb.aw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit48.i
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.ah) #29, !noalias !649
  br label %_RNCNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15get_memory_infos0_0B5_.exit

_RNCNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15get_memory_infos0_0B5_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit48.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.co = fmul double %.sroa.0.0.i, f0x3EB0000000000000
  store double %i.co, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store double %.sroa.05.0.i, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cp = fmul double %.sroa.012.0.i, f0x3EB0000000000000
  store double %i.cp, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cq = fdiv double %.sroa.0.0.i, %.sroa.012.0.i
  %i.cr = fmul double %i.cq, 1.000000e+02
  store double %i.cr, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.p, ptr %i.l, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs7_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.o, ptr %i.cs, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs7_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.n, ptr %i.ct, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @_RNvXs7_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.m, ptr %i.cu, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr @_RNvXs7_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.424.0..sroa_idx, align 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @57, ptr noundef nonnull %i.l), !noalias !650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.az

bb.ax:                                            ; preds = %bb.m
  %i.cv = load i64, ptr %i.aq, align 8
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.cv) #30
  unreachable

bb.ay:                                            ; preds = %bb.m
  %i.cw = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cx = icmp samesign ugt i64 %i.ap, 24
  call void @llvm.assume(i1 %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.cw, ptr noundef nonnull align 1 dereferenceable(25) @56, i64 25, i1 false)
  store i64 %i.ap, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cw, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 25, ptr %.sroa.629.0..sroa_idx, align 8
  br label %bb.az

bb.az:                                            ; preds = %_RNCNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15get_memory_infos0_0B5_.exit, %bb.ay
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler15log_wasm_memory() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !655
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 8, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !655
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !655, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !655, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler20get_wasm_memory_info.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !655
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30, !noalias !655
  unreachable

_RNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler20get_wasm_memory_info.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !655, !nonnull !4, !noundef !4 ; 3 uses
  %i.m = icmp samesign ugt i64 %i.i, 7
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !655
  store i64 5571869006449897294, ptr %i.l, align 1, !noalias !655
  store i64 %i.i, ptr %i.e, align 8, !alias.scope !655
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !655
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 8, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 8, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %bb.c

.body:                                            ; preds = %bb.j, %bb.i, %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.n, %bb.c ], [ %i.ac, %bb.i ], [ %i.ac, %bb.j ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #26
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i, %bb.e, %_RNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler20get_wasm_memory_info.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %_RNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler20get_wasm_memory_info.exit
  %i.o = load i64, ptr %i.b, align 8, !range !9, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !10, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.s, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #30
          to label %bb.p unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.v = icmp samesign ugt i64 %i.r, 7
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = load i64, ptr %i.l, align 1
  store i64 %i.w, ptr %i.u, align 1
  store i64 %i.r, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 8, ptr %.sroa.6.0..sroa_idx, align 8
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = trunc i64 %i.x to i32
  %i.z = tail call noundef i32 @_RINvNvNtCsej0D7ZFyXq_12wasm_bindgen4___rt8wbg_cast17breaks_if_inlinedReNtB6_7JsValueEB6_(i32 noundef %i.y, i32 noundef 8) #32, !noalias !656 ; 5 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvXss_Csej0D7ZFyXq_12wasm_bindgenNtB5_7JsValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from.exit unwind label %bb.c

_RNvXss_Csej0D7ZFyXq_12wasm_bindgenNtB5_7JsValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i
  store i32 %i.z, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvNtNtNtCsey8dOKI5XLb_7web_sys8features11gen_console7console5log_1(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %_RNvXss_Csej0D7ZFyXq_12wasm_bindgenNtB5_7JsValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = icmp ugt i32 %i.z, 1027
  br i1 %i.ad, label %bb.j, label %.body

bb.j:                                             ; preds = %bb.i
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.z) #29
  br label %.body

bb.k:                                             ; preds = %_RNvXss_Csej0D7ZFyXq_12wasm_bindgenNtB5_7JsValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from.exit
  %i.ae = icmp ugt i32 %i.z, 1027
  br i1 %i.ae, label %bb.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit5

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.z) #29
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit5

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit5: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit5
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
end_hunk_0
