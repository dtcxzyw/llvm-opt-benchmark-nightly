Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_yolo-8383caacbfc2b2c9.candle_wasm_example_yolo.a69836c64f6f67e8-cgu.05?download=true
inline.NumInlined: 452
inline.NumDeleted: 249
begin_hunk_0_@_RNSNvYNCNvXs3_NtNtCsej0D7ZFyXq_12wasm_bindgen7convert8closuresNCNvXs2_NtCs3OdvwEu12o7_6js_sys7futuresNtB16_8JsFutureINtNtCsf3Ta7LF998c_4core7convert4FromNtB18_7PromiseE4from0INtNtBg_7closure17WasmClosureFnOnceDINtNtNtB1V_3ops8function5FnMutTNtBg_7JsValueEEp6OutputINtNtB1V_6result6ResultuNtBg_7JsErrorEEL_B3R_B4e_E11into_fn_mut0INtB3p_6FnOnceB3Q_E9call_once6vtableCseiMiKruFR5A_24candle_wasm_example_yolo:bb.a

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #22
          to label %bb.h unwind label %bb.i, !noalias !857

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = icmp ugt i32 %1, 1027
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #18, !noalias !857
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.d, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.l, %bb.j ], [ %i.d, %bb.d ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body.i

_RNvYNCNvXs3_NtNtCsej0D7ZFyXq_12wasm_bindgen7convert8closuresNCNvXs2_NtCs3OdvwEu12o7_6js_sys7futuresNtB14_8JsFutureINtNtCsf3Ta7LF998c_4core7convert4FromNtB16_7PromiseE4from0INtNtBe_7closure17WasmClosureFnOnceDINtNtNtB1T_3ops8function5FnMutTNtBe_7JsValueEEp6OutputINtNtB1T_6result6ResultuNtBe_7JsErrorEEL_B3P_B4c_E11into_fn_mut0INtB3n_6FnOnceB3O_E9call_onceCseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %_RNCNvXs2_NtCs3OdvwEu12o7_6js_sys7futuresNtB7_8JsFutureINtNtCsf3Ta7LF998c_4core7convert4FromNtB9_7PromiseE4from0CseiMiKruFR5A_24candle_wasm_example_yolo.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !857
  ret { i32, i32 } { i32 0, i32 undef }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i32, i32 } @_RNSNvYNCNvXs3_NtNtCsej0D7ZFyXq_12wasm_bindgen7convert8closuresNCNvXs2_NtCs3OdvwEu12o7_6js_sys7futuresNtB16_8JsFutureINtNtCsf3Ta7LF998c_4core7convert4FromNtB18_7PromiseE4froms_0INtNtBg_7closure17WasmClosureFnOnceDINtNtNtB1V_3ops8function5FnMutTNtBg_7JsValueEEp6OutputINtNtB1V_6result6ResultuNtBg_7JsErrorEEL_B3T_B4g_E11into_fn_mut0INtB3r_6FnOnceB3S_E9call_once6vtableCseiMiKruFR5A_24candle_wasm_example_yolo(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !6   ; 7 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.g, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !878
  store ptr %i.b, ptr %i.a, align 8, !noalias !878
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke fastcc void @_RINvNvXs2_NtCs3OdvwEu12o7_6js_sys7futuresINtB8_8JsFuturepEINtNtCsf3Ta7LF998c_4core7convert4FromINtBa_7PromisepEE4from6finishNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noundef nonnull align 8 %i.c, i32 noundef 1, i32 noundef %1)
          to label %_RNCNvXs2_NtCs3OdvwEu12o7_6js_sys7futuresNtB7_8JsFutureINtNtCsf3Ta7LF998c_4core7convert4FromNtB9_7PromiseE4froms_0CseiMiKruFR5A_24candle_wasm_example_yolo.exit.i.i.i unwind label %bb.c, !noalias !878

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !noalias !879, !noundef !6
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.b, align 8, !noalias !879
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCs3OdvwEu12o7_6js_sys7futures5InnerEE9drop_slowCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #20
          to label %bb.k unwind label %bb.f, !noalias !878

_RNCNvXs2_NtCs3OdvwEu12o7_6js_sys7futuresNtB7_8JsFutureINtNtCsf3Ta7LF998c_4core7convert4FromNtB9_7PromiseE4froms_0CseiMiKruFR5A_24candle_wasm_example_yolo.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8, !noalias !880, !noundef !6
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.b, align 8, !noalias !880
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %_RNvYNCNvXs3_NtNtCsej0D7ZFyXq_12wasm_bindgen7convert8closuresNCNvXs2_NtCs3OdvwEu12o7_6js_sys7futuresNtB14_8JsFutureINtNtCsf3Ta7LF998c_4core7convert4FromNtB16_7PromiseE4froms_0INtNtBe_7closure17WasmClosureFnOnceDINtNtNtB1T_3ops8function5FnMutTNtBe_7JsValueEEp6OutputINtNtB1T_6result6ResultuNtBe_7JsErrorEEL_B3R_B4e_E11into_fn_mut0INtB3p_6FnOnceB3Q_E9call_onceCseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.e:                                             ; preds = %_RNCNvXs2_NtCs3OdvwEu12o7_6js_sys7futuresNtB7_8JsFutureINtNtCsf3Ta7LF998c_4core7convert4FromNtB9_7PromiseE4froms_0CseiMiKruFR5A_24candle_wasm_example_yolo.exit.i.i.i
  call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCs3OdvwEu12o7_6js_sys7futures5InnerEE9drop_slowCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #20, !noalias !878
  br label %_RNvYNCNvXs3_NtNtCsej0D7ZFyXq_12wasm_bindgen7convert8closuresNCNvXs2_NtCs3OdvwEu12o7_6js_sys7futuresNtB14_8JsFutureINtNtCsf3Ta7LF998c_4core7convert4FromNtB16_7PromiseE4froms_0INtNtBe_7closure17WasmClosureFnOnceDINtNtNtB1T_3ops8function5FnMutTNtBe_7JsValueEEp6OutputINtNtB1T_6result6ResultuNtBe_7JsErrorEEL_B3R_B4e_E11into_fn_mut0INtB3p_6FnOnceB3Q_E9call_onceCseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !878
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #22
          to label %bb.h unwind label %bb.i, !noalias !878

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = icmp ugt i32 %1, 1027
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #18, !noalias !878
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.d, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.l, %bb.j ], [ %i.d, %bb.d ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body.i

_RNvYNCNvXs3_NtNtCsej0D7ZFyXq_12wasm_bindgen7convert8closuresNCNvXs2_NtCs3OdvwEu12o7_6js_sys7futuresNtB14_8JsFutureINtNtCsf3Ta7LF998c_4core7convert4FromNtB16_7PromiseE4froms_0INtNtBe_7closure17WasmClosureFnOnceDINtNtNtB1T_3ops8function5FnMutTNtBe_7JsValueEEp6OutputINtNtB1T_6result6ResultuNtBe_7JsErrorEEL_B3R_B4e_E11into_fn_mut0INtB3p_6FnOnceB3Q_E9call_onceCseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %_RNCNvXs2_NtCs3OdvwEu12o7_6js_sys7futuresNtB7_8JsFutureINtNtCsf3Ta7LF998c_4core7convert4FromNtB9_7PromiseE4froms_0CseiMiKruFR5A_24candle_wasm_example_yolo.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !878
  ret { i32, i32 } { i32 0, i32 undef }
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCscNeReUgPDN9_11gloo_worker6worker5queueINtB2_5QueueNtNtCsf3Ta7LF998c_4core3any6TypeIdE13remove_workerCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !noundef !6
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIduNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6removeBO_ECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load i64, ptr %0, align 8, !noundef !6
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.i = load i64, ptr %0, align 8, !noundef !6
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  store i64 -1, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1n_hEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6removeBO_ECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #21
  unreachable

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.t, %bb.k ]
  %i.p = load i64, ptr %i.k, align 8, !noundef !6
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.k, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.a, align 8, !range !883, !alias.scope !884, !noundef !6
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecIBY_hEEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecIBY_hEEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit unwind label %bb.h

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecIBY_hEEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit.i
  %i.v = load i64, ptr %i.k, align 8, !noundef !6
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.m:                                             ; preds = %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCscNeReUgPDN9_11gloo_worker6worker5queueINtB2_5QueueNtNtCsf3Ta7LF998c_4core3any6TypeIdE16add_msg_to_queueCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  %.not47 = icmp eq i64 %i.f, 0
  br i1 %.not47, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1y_hEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE11rustc_entryCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.d)
          to label %bb.d unwind label %3

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22
          to label %bb.p unwind label %bb.m

3:                                                ; preds = %bb.b
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = load i64, ptr %i.e, align 8, !noundef !6
  %6 = add i64 %5, 1
  store i64 %6, ptr %i.e, align 8
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.526.0.copyload = load ptr, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.627.0.copyload = load i64, ptr %.sroa.627.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.k = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 65) 24, i64 noundef 8) #18 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !18

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22
          to label %.noexc unwind label %.thread45

.thread45:                                        ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load i64, ptr %i.e, align 8, !noundef !6
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.e, align 8
  br label %.thread

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.q = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !888, !noundef !6 ; 3 uses
  %i.s = load i64, ptr %i.p, align 8, !range !10, !alias.scope !888, !noundef !6
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEE8grow_oneCs5Xr050g3D4S_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.k unwind label %bb.i, !noalias !889

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %.sink.split unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.w = getelementptr inbounds i8, ptr %i.j, i64 -16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !888, !nonnull !6, !noundef !6
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.z = add i64 %i.r, 1
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.e
  %i.aa = ptrtoint ptr %i.j to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.526.0.copyload, ptr %i.a, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.627.0.copyload, ptr %.sroa.430.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.ab, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.k, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %.sroa.516.0..sroa_idx, align 8
  %i.ac = invoke noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE14insert_no_growCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.l unwind label %bb.q       ; 0 uses

bb.l:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.m:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.n:                                             ; preds = %bb.k, %bb.l
  %i.ae = load i64, ptr %i.e, align 8, !noundef !6
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.e, align 8
  ret void

bb.o:                                             ; preds = %.thread
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.p:                                             ; preds = %bb.c
  unreachable

bb.q:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.q
  %.pn3339.ph = phi { ptr, i32 } [ %i.ah, %bb.q ], [ %i.u, %bb.i ]
  %i.ai = load i64, ptr %i.e, align 8, !noundef !6
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.e, align 8
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %.thread
  %.pn3339 = phi { ptr, i32 } [ %.pn3340, %.thread ], [ %.pn3339.ph, %.sink.split ]
  resume { ptr, i32 } %.pn3339

.thread:                                          ; preds = %3, %bb.m, %.thread45
  %.pn3340 = phi { ptr, i32 } [ %i.m, %.thread45 ], [ %4, %3 ], [ %i.ad, %bb.m ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #19
          to label %bb.r unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCscNeReUgPDN9_11gloo_worker6worker5queueINtB2_5QueueNtNtCsf3Ta7LF998c_4core3any6TypeIdE3newCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @23) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  store i64 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @25, i64 32, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.c, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.d, ptr %.sroa.511.0..sroa_idx, align 8
  %i.f = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @23)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEENtNtNtBT_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtB4_3any6TypeIdEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, i64 } %i.f, 0
  %i.i = extractvalue { i64, i64 } %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @25, i64 32, i1 false)
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.h, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtB4_3any6TypeIdEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE10bind_innerCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %1, ptr %i.d, align 8
  store ptr %2, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !range !7, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCsdIJosCPXwkf_5tokio4util12sharded_listINtB2_11ShardedListINtNtNtB6_7runtime4task4TaskINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB17_9scheduler14current_thread6HandleEEE10lock_shardCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.e unwind label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  %.sroa.02.0 = phi i1 [ true, %bb.c ], [ %.sroa.02.1, %bb.d ]
  invoke void @_RNvXsd_NtNtCsdIJosCPXwkf_5tokio7runtime4taskINtB5_4TaskINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio7runtime4task8NotifiedINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.k, %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, %bb.f
  %.sroa.02.1 = phi i1 [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit ], [ true, %bb.k ], [ false, %bb.f ], [ true, %bb.i ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load atomic i8, ptr %i.j acquire, align 8
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.l = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  invoke void @_RNvMs_NtNtCsdIJosCPXwkf_5tokio4util12sharded_listINtB4_10ShardGuardINtNtNtB8_7runtime4task4TaskINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB18_9scheduler14current_thread6HandleEEE4pushCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %i.l)
          to label %bb.l unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 4
  %i.n = trunc nuw i8 %.sroa.4.0.copyload to i1
  br i1 %i.n, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.p = and i64 %i.o, 9223372036854775807
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #20
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.i
  br i1 %i.r, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.m monotonic, align 1
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.j, %.noexc, %bb.h, %bb.g
  %i.s = atomicrmw xchg ptr %.sroa.3.0.copyload, i32 0 release, align 4
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, !prof !18

bb.k:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sroa.3.0.copyload)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit unwind label %bb.d

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio7runtime4task8NotifiedINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit12

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio7runtime4task8NotifiedINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit12: ; preds = %bb.m, %bb.l
  %.sroa.0.0 = phi ptr [ %i.u, %bb.l ], [ null, %bb.m ]
  ret ptr %.sroa.0.0

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.k
  %i.v = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  invoke void @_RNvMs_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task3rawNtB4_7RawTask8shutdown(ptr noundef nonnull %i.v)
          to label %bb.m unwind label %bb.d

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXsd_NtNtCsdIJosCPXwkf_5tokio7runtime4taskINtB5_4TaskINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio7runtime4task8NotifiedINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit12

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio7runtime4task8NotifiedINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.b
  br i1 %.sroa.02.0, label %bb.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio7runtime4task4TaskINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.n:                                             ; preds = %bb.o, %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio7runtime4task4TaskINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.o, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio7runtime4task8NotifiedINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio7runtime4task8NotifiedINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  invoke void @_RNvXsd_NtNtCsdIJosCPXwkf_5tokio7runtime4taskINtB5_4TaskINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsdIJosCPXwkf_5tokio7runtime4task4TaskINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit unwind label %bb.n
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTINtNtBL_6result6ResultNtNtCseiMiKruFR5A_24candle_wasm_example_yolo6worker12WorkerOutputNtNtB7_6string6StringEEEp6OutputuEL_E9drop_slowB1L_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !11, !invariant.load !6 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCseiMiKruFR5A_24candle_wasm_example_yolo6worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEEp6OutputuEL_EB1t_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke void %.val(ptr noundef nonnull %i.i) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCseiMiKruFR5A_24candle_wasm_example_yolo6worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEEp6OutputuEL_EB1t_.exit unwind label %bb.c, !inline_history !890

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc4WeakDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCseiMiKruFR5A_24candle_wasm_example_yolo6worker12WorkerOutputNtNtBG_6string6StringEEEp6OutputuEL_RNtNtBG_5alloc6GlobalEEB20_(ptr nonnull %i.a, ptr nonnull %i.c) #19
  resume { ptr, i32 } %i.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCseiMiKruFR5A_24candle_wasm_example_yolo6worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEEp6OutputuEL_EB1t_.exit: ; preds = %bb.a, %bb.b
  %i.k = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
end_hunk_0
