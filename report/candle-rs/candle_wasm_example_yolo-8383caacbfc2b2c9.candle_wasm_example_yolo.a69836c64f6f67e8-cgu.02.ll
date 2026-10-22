Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_yolo-8383caacbfc2b2c9.candle_wasm_example_yolo.a69836c64f6f67e8-cgu.02?download=true
inline.NumInlined: 783
inline.NumDeleted: 482
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtCseiMiKruFR5A_24candle_wasm_example_yolo3app9fetch_url0EBH_:bb.a
  %i.af = icmp ugt i32 %.val14, 1027
  br i1 %i.af, label %bb.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features8gen_Blob4BlobECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val14) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features8gen_Blob4BlobECseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3OdvwEu12o7_6js_sys7futures8JsFutureECseiMiKruFR5A_24candle_wasm_example_yolo.exit22: ; preds = %bb.f, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val13 = load i32, ptr %i.ag, align 8, !noundef !5 ; 2 uses
  %i.ah = icmp ugt i32 %.val13, 1027
  br i1 %i.ah, label %bb.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3OdvwEu12o7_6js_sys7futures8JsFutureECseiMiKruFR5A_24candle_wasm_example_yolo.exit20

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3OdvwEu12o7_6js_sys7futures8JsFutureECseiMiKruFR5A_24candle_wasm_example_yolo.exit22
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val13) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3OdvwEu12o7_6js_sys7futures8JsFutureECseiMiKruFR5A_24candle_wasm_example_yolo.exit20

bb.o:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features8gen_Blob4BlobECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.p:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features12gen_Response8ResponseECseiMiKruFR5A_24candle_wasm_example_yolo.exit24

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features11gen_Request7RequestECseiMiKruFR5A_24candle_wasm_example_yolo.exit23: ; preds = %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features12gen_Response8ResponseECseiMiKruFR5A_24candle_wasm_example_yolo.exit24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.val16 = load i32, ptr %i.ak, align 4, !noundef !5 ; 2 uses
  %i.al = icmp ugt i32 %.val16, 1027
  br i1 %i.al, label %bb.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features15gen_RequestInit11RequestInitECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.q:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features11gen_Request7RequestECseiMiKruFR5A_24candle_wasm_example_yolo.exit23
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val16) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features15gen_RequestInit11RequestInitECseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features11gen_Request7RequestECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3OdvwEu12o7_6js_sys7futures8JsFutureECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.val15 = load i32, ptr %i.am, align 4, !noundef !5 ; 2 uses
  %i.an = icmp ugt i32 %.val15, 1027
  br i1 %i.an, label %bb.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features15gen_RequestInit11RequestInitECseiMiKruFR5A_24candle_wasm_example_yolo.exit26

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features11gen_Request7RequestECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val15) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features15gen_RequestInit11RequestInitECseiMiKruFR5A_24candle_wasm_example_yolo.exit26

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features15gen_RequestInit11RequestInitECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.q, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features11gen_Request7RequestECseiMiKruFR5A_24candle_wasm_example_yolo.exit23
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i32, ptr %i.ao, align 8, !noundef !5 ; 2 uses
  %i.ap = icmp ugt i32 %.val18, 1027
  br i1 %i.ap, label %bb.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features10gen_Window6WindowECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features15gen_RequestInit11RequestInitECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val18) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features10gen_Window6WindowECseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features15gen_RequestInit11RequestInitECseiMiKruFR5A_24candle_wasm_example_yolo.exit26: ; preds = %bb.r, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features11gen_Request7RequestECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i32, ptr %i.aq, align 8, !noundef !5 ; 2 uses
  %i.ar = icmp ugt i32 %.val17, 1027
  br i1 %i.ar, label %bb.t, label %common.ret

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features15gen_RequestInit11RequestInitECseiMiKruFR5A_24candle_wasm_example_yolo.exit26
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val17) #13
  br label %common.ret

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features10gen_Window6WindowECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.s, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features15gen_RequestInit11RequestInitECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core7TrailerECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !align !6, !noundef !5 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  invoke void %i.e(ptr noundef %.val1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit unwind label %bb.c, !inline_history !0

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !610, !noundef !5 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !611
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_INtNtNtCsdIJosCPXwkf_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #10
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECseiMiKruFR5A_24candle_wasm_example_yolo.exit unwind label %bb.h

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !614, !noundef !5 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECseiMiKruFR5A_24candle_wasm_example_yolo.exit3, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.o = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !615
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECseiMiKruFR5A_24candle_wasm_example_yolo.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_INtNtNtCsdIJosCPXwkf_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #10
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECseiMiKruFR5A_24candle_wasm_example_yolo.exit3

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECseiMiKruFR5A_24candle_wasm_example_yolo.exit3: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component6update0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB3t_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB3i_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !622
  store i32 2, ptr %i.d, align 8, !noalias !622
  %i.e = load i32, ptr %i.a, align 8, !range !7, !noalias !622, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B3e_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.d unwind label %bb.e, !noalias !622

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2q_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3o_B3m_NtB2s_9Component6update0NtB3o_3MsgE0EEEEB3q_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.f, !noalias !622

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !622
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B3e_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !622
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.j = load i64, ptr %1, align 8, !range !12, !alias.scope !623, !noundef !5
  %3 = trunc nuw i64 %i.j to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B3e_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !625, !noundef !5
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !625, !noundef !5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !625 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !625 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !noalias !625

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5, !noalias !625 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5, !noalias !625
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13, !noalias !625
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5, !noalias !625 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5, !noalias !625
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13, !noalias !625
  br label %.body

bb.o:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  ret void

.body:                                            ; preds = %bb.m, %bb.n
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B3e_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB3i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component6update0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB3c_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component6update0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB3t_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RNvMs6_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB3i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit
    i8 3, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB3i_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3e_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !636
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !637
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component6update0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB3c_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !636

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !636
  store i32 2, ptr %i.f, align 8, !noalias !636
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component6update0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB3c_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !636

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !636
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !636
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !637 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11, !noalias !637
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !636
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !637, !noundef !5
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3e_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB3i_:bb.a
bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCsdIJosCPXwkf_5tokio7runtime9scheduler14current_threadINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component6update0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB3t_(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB3i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component6update0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB3t_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component6update0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB3c_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3e_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3e_.exit

_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3e_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component6update0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB3c_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB3i_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3e_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component6update0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB3t_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB3i_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !645
  store i32 2, ptr %i.d, align 8, !noalias !645
  %i.e = load i32, ptr %i.a, align 8, !range !7, !noalias !645, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3e_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.d unwind label %bb.e, !noalias !645

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2q_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3o_B3m_NtB2s_9Component6update0NtB3o_3MsgE0EEEEB3q_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.f, !noalias !645

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !645
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3e_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !645
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %i.j = load i64, ptr %1, align 8, !range !12, !alias.scope !646, !noundef !5
  %3 = trunc nuw i64 %i.j to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3e_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !648, !noundef !5
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !648, !noundef !5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !648 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !648 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !noalias !648

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5, !noalias !648 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5, !noalias !648
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13, !noalias !648
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5, !noalias !648 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5, !noalias !648
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13, !noalias !648
  br label %.body

bb.o:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  ret void

.body:                                            ; preds = %bb.m, %bb.n
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3e_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE21drop_join_handle_slowB3i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component6update0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3c_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component6update0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB3t_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RNvMs6_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB3i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit
    i8 3, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE10poll_innerB3i_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB3e_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !659
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !660
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component6update0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB3c_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !659

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !659
  store i32 2, ptr %i.f, align 8, !noalias !659
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component6update0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3c_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !659

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !659
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !659
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !660 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11, !noalias !660
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !659
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !660, !noundef !5
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB3e_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE8completeB3i_:bb.a
bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXsb_NtNtCsdIJosCPXwkf_5tokio4task5localINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB5_6SharedENtNtNtB9_7runtime4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component6update0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB3t_(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE8shutdownB3i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component6update0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB3t_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component6update0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3c_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB3e_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB3e_.exit

_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB3e_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component6update0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3c_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE8completeB3i_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component6update0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component6update0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB3e_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component8rendered0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB3t_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB3i_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !668
  store i32 2, ptr %i.d, align 8, !noalias !668
  %i.e = load i32, ptr %i.a, align 8, !range !7, !noalias !668, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B3e_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.d unwind label %bb.e, !noalias !668

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2q_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3o_B3m_NtB2s_9Component8rendered0NtB3o_3MsgE0EEEEB3q_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.f, !noalias !668

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !668
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B3e_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.j = load i64, ptr %1, align 8, !range !12, !alias.scope !669, !noundef !5
  %3 = trunc nuw i64 %i.j to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B3e_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !671, !noundef !5
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !671, !noundef !5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !671 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !671 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !noalias !671

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5, !noalias !671 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5, !noalias !671
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13, !noalias !671
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5, !noalias !671 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5, !noalias !671
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13, !noalias !671
  br label %.body

bb.o:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  ret void

.body:                                            ; preds = %bb.m, %bb.n
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B3e_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB3i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component8rendered0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB3c_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component8rendered0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB3t_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RNvMs6_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB3i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit
    i8 3, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB3i_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3e_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !682
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !683
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component8rendered0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB3c_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !682

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !682
  store i32 2, ptr %i.f, align 8, !noalias !682
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component8rendered0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB3c_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !682

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !682
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !682
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !683 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11, !noalias !683
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !682
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !683, !noundef !5
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3e_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB3i_:bb.a
bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCsdIJosCPXwkf_5tokio7runtime9scheduler14current_threadINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component8rendered0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB3t_(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB3i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component8rendered0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB3t_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component8rendered0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB3c_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3e_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3e_.exit

_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3e_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component8rendered0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB3c_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB3i_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3e_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component8rendered0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB3t_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB3i_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !691
  store i32 2, ptr %i.d, align 8, !noalias !691
  %i.e = load i32, ptr %i.a, align 8, !range !7, !noalias !691, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3e_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.d unwind label %bb.e, !noalias !691

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2q_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3o_B3m_NtB2s_9Component8rendered0NtB3o_3MsgE0EEEEB3q_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.f, !noalias !691

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !691
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3e_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !691
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.j = load i64, ptr %1, align 8, !range !12, !alias.scope !692, !noundef !5
  %3 = trunc nuw i64 %i.j to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3e_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !694, !noundef !5
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !694, !noundef !5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !694 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !694 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !noalias !694

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5, !noalias !694 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5, !noalias !694
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13, !noalias !694
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5, !noalias !694 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5, !noalias !694
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13, !noalias !694
  br label %.body

bb.o:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  ret void

.body:                                            ; preds = %bb.m, %bb.n
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3e_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE21drop_join_handle_slowB3i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component8rendered0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3c_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component8rendered0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB3t_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RNvMs6_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB3i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit
    i8 3, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE10poll_innerB3i_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB3e_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !705
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !706
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component8rendered0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB3c_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !705

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !705
  store i32 2, ptr %i.f, align 8, !noalias !705
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component8rendered0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3c_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !705

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !705
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !705
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !706 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11, !noalias !706
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !705
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !706, !noundef !5
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB3e_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_3
begin_hunk_4_@_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE8completeB3i_:bb.a
bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXsb_NtNtCsdIJosCPXwkf_5tokio4task5localINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB5_6SharedENtNtNtB9_7runtime4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component8rendered0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB3t_(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE8shutdownB3i_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component8rendered0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB3t_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component8rendered0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3c_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB3e_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB3e_.exit

_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB3e_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component8rendered0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3c_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE8completeB3i_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB3e_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2v_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3R_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4P_B4N_NtB3T_9Component6update0NtB4P_3MsgE0E00EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4R_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB4G_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !714
  store i32 2, ptr %i.d, align 8, !noalias !714
  %i.e = load i32, ptr %i.a, align 8, !range !7, !noalias !714, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component6update0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B4C_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.d unwind label %bb.e, !noalias !714

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2s_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3O_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4M_B4K_NtB3Q_9Component6update0NtB4M_3MsgE0E00EEEEB4O_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.f, !noalias !714

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !714
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component6update0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B4C_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !714
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %i.j = load i64, ptr %1, align 8, !range !12, !alias.scope !715, !noundef !5
  %3 = trunc nuw i64 %i.j to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component6update0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B4C_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !717, !noundef !5
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !717, !noundef !5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !717 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !717 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !noalias !717

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5, !noalias !717 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5, !noalias !717
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13, !noalias !717
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5, !noalias !717 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5, !noalias !717
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13, !noalias !717
  br label %.body

bb.o:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  ret void

.body:                                            ; preds = %bb.m, %bb.n
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component6update0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B4C_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE21drop_join_handle_slowB4G_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2e_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3A_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4y_B4w_NtB3C_9Component6update0NtB4y_3MsgE0E00EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB4A_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2v_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3R_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4P_B4N_NtB3T_9Component6update0NtB4P_3MsgE0E00EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4R_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RNvMs6_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB4G_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit
    i8 3, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE10poll_innerB4G_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component6update0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB4C_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !728
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !729
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2e_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3A_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4y_B4w_NtB3C_9Component6update0NtB4y_3MsgE0E00EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB4A_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !728

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !728
  store i32 2, ptr %i.f, align 8, !noalias !728
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2e_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3A_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4y_B4w_NtB3C_9Component6update0NtB4y_3MsgE0E00EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB4A_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !728

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !728
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !728
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !729 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11, !noalias !729
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !728
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !729, !noundef !5
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component6update0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB4C_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_4
begin_hunk_5_@_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE8completeB4G_:bb.a
bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXsb_NtNtCsdIJosCPXwkf_5tokio4task5localINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB5_6SharedENtNtNtB9_7runtime4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2v_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3R_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4P_B4N_NtB3T_9Component6update0NtB4P_3MsgE0E00EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4R_(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE8shutdownB4G_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2v_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3R_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4P_B4N_NtB3T_9Component6update0NtB4P_3MsgE0E00EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4R_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2e_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3A_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4y_B4w_NtB3C_9Component6update0NtB4y_3MsgE0E00EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB4A_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component6update0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB4C_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component6update0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB4C_.exit

_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component6update0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB4C_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2e_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3A_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4y_B4w_NtB3C_9Component6update0NtB4y_3MsgE0E00EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB4A_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE8completeB4G_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component6update0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component6update0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB4C_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2v_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3R_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4P_B4N_NtB3T_9Component8rendered0NtB4P_3MsgE0E00EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4R_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB4G_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !737
  store i32 2, ptr %i.d, align 8, !noalias !737
  %i.e = load i32, ptr %i.a, align 8, !range !7, !noalias !737, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B4C_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.d unwind label %bb.e, !noalias !737

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2s_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3O_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4M_B4K_NtB3Q_9Component8rendered0NtB4M_3MsgE0E00EEEEB4O_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.f, !noalias !737

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !737
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B4C_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.j = load i64, ptr %1, align 8, !range !12, !alias.scope !738, !noundef !5
  %3 = trunc nuw i64 %i.j to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B4C_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !740, !noundef !5
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !740, !noundef !5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !740 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !740 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !noalias !740

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5, !noalias !740 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5, !noalias !740
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13, !noalias !740
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5, !noalias !740 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5, !noalias !740
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13, !noalias !740
  br label %.body

bb.o:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  ret void

.body:                                            ; preds = %bb.m, %bb.n
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B4C_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE21drop_join_handle_slowB4G_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2e_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3A_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4y_B4w_NtB3C_9Component8rendered0NtB4y_3MsgE0E00EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB4A_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2v_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3R_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4P_B4N_NtB3T_9Component8rendered0NtB4P_3MsgE0E00EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4R_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RNvMs6_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB4G_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit
    i8 3, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE10poll_innerB4G_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB4C_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !751
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !752
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2e_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3A_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4y_B4w_NtB3C_9Component8rendered0NtB4y_3MsgE0E00EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB4A_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !751

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !751
  store i32 2, ptr %i.f, align 8, !noalias !751
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2e_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3A_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4y_B4w_NtB3C_9Component8rendered0NtB4y_3MsgE0E00EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB4A_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !751

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !751
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !751
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !752 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11, !noalias !752
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !751
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !752, !noundef !5
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB4C_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_5
begin_hunk_6_@_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE8completeB4G_:bb.a

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXsb_NtNtCsdIJosCPXwkf_5tokio4task5localINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB5_6SharedENtNtNtB9_7runtime4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2v_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3R_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4P_B4N_NtB3T_9Component8rendered0NtB4P_3MsgE0E00EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4R_(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE8shutdownB4G_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2v_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3R_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4P_B4N_NtB3T_9Component8rendered0NtB4P_3MsgE0E00EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4R_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2e_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3A_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4y_B4w_NtB3C_9Component8rendered0NtB4y_3MsgE0E00EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB4A_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB4C_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB4C_.exit

_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB4C_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2e_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3A_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4y_B4w_NtB3C_9Component8rendered0NtB4y_3MsgE0E00EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB4A_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE8completeB4G_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB4C_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component6update0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB39_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB2d_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %i.d, i64 176, i1 false), !noalias !760
  store i32 2, ptr %i.d, align 8, !noalias !760
  %i.e = load i32, ptr %i.a, align 8, !range !7, !noalias !760, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B29_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !noalias !760

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !range !7, !noalias !760, !noundef !5
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %common.resume, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2z_B2x_NtB1D_9Component6update0NtB2z_3MsgE0EEB2B_(ptr noundef nonnull align 8 %i.a) #12
          to label %common.resume unwind label %bb.g, !noalias !760

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !760
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B29_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %i.l = load i64, ptr %1, align 8, !range !12, !alias.scope !761, !noundef !5
  %3 = trunc nuw i64 %i.l to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B29_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !763, !noundef !5
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !763, !noundef !5 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.q, align 8, !alias.scope !763 ; 6 uses
  %i.r = icmp eq ptr %.val.i.i, null
  br i1 %i.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !763 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !noalias !763

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5, !noalias !763 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5, !noalias !763
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !noalias !763
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !8, !invariant.load !5, !noalias !763 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !9, !invariant.load !5, !noalias !763
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #13, !noalias !763
  br label %.body

bb.p:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  ret void

.body:                                            ; preds = %bb.n, %bb.o
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B29_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB2d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component6update0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB27_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component6update0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB39_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @_RNvMs6_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB2d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 7 uses
  %i.c = alloca [176 x i8], align 8               ; 4 uses
  %i.d = alloca [176 x i8], align 8               ; 7 uses
  %i.e = alloca [176 x i8], align 8               ; 7 uses
  %i.f = alloca [176 x i8], align 8               ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit
    i8 3, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2d_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB29_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !774
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !775
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component6update0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB27_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !774

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !774
  store i32 2, ptr %i.f, align 8, !noalias !774
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component6update0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB27_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !774

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !774
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !774
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !775 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11, !noalias !775
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !774
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !775, !noundef !5
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB29_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_6
begin_hunk_7_@_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2d_:bb.a

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCsdIJosCPXwkf_5tokio7runtime9scheduler14current_threadINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component6update0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB39_(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB2d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component6update0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB39_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component6update0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB27_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB29_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB29_.exit

_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB29_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component6update0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB27_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2d_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB29_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component6update0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB39_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB2d_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %i.d, i64 176, i1 false), !noalias !783
  store i32 2, ptr %i.d, align 8, !noalias !783
  %i.e = load i32, ptr %i.a, align 8, !range !7, !noalias !783, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B29_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !noalias !783

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !range !7, !noalias !783, !noundef !5
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %common.resume, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2z_B2x_NtB1D_9Component6update0NtB2z_3MsgE0EEB2B_(ptr noundef nonnull align 8 %i.a) #12
          to label %common.resume unwind label %bb.g, !noalias !783

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !783
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B29_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !783
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.l = load i64, ptr %1, align 8, !range !12, !alias.scope !784, !noundef !5
  %3 = trunc nuw i64 %i.l to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B29_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !786, !noundef !5
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !786, !noundef !5 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.q, align 8, !alias.scope !786 ; 6 uses
  %i.r = icmp eq ptr %.val.i.i, null
  br i1 %i.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !786 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !noalias !786

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5, !noalias !786 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5, !noalias !786
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !noalias !786
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !8, !invariant.load !5, !noalias !786 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !9, !invariant.load !5, !noalias !786
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #13, !noalias !786
  br label %.body

bb.p:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  ret void

.body:                                            ; preds = %bb.n, %bb.o
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B29_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE21drop_join_handle_slowB2d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component6update0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB27_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component6update0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB39_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @_RNvMs6_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB2d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 7 uses
  %i.c = alloca [176 x i8], align 8               ; 4 uses
  %i.d = alloca [176 x i8], align 8               ; 7 uses
  %i.e = alloca [176 x i8], align 8               ; 7 uses
  %i.f = alloca [176 x i8], align 8               ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit
    i8 3, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE10poll_innerB2d_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB29_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !797
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !798
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component6update0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB27_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !797

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !797
  store i32 2, ptr %i.f, align 8, !noalias !797
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component6update0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB27_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !797

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !797
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !797
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !798 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11, !noalias !798
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !797
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !798, !noundef !5
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB29_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_7
begin_hunk_8_@_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE8completeB2d_:bb.a

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXsb_NtNtCsdIJosCPXwkf_5tokio4task5localINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB5_6SharedENtNtNtB9_7runtime4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component6update0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB39_(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE8shutdownB2d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component6update0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB39_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component6update0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB27_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB29_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB29_.exit

_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB29_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component6update0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB27_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE8completeB2d_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component6update0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component6update0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB29_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component8rendered0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB39_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB2d_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef nonnull align 8 dereferenceable(192) %i.d, i64 192, i1 false), !noalias !806
  store i32 2, ptr %i.d, align 8, !noalias !806
  %i.e = load i32, ptr %i.a, align 8, !range !7, !noalias !806, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B29_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !noalias !806

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !range !7, !noalias !806, !noundef !5
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %common.resume, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2z_B2x_NtB1D_9Component8rendered0NtB2z_3MsgE0EEB2B_(ptr noundef nonnull align 8 %i.a) #12
          to label %common.resume unwind label %bb.g, !noalias !806

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !806
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B29_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !806
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %i.l = load i64, ptr %1, align 8, !range !12, !alias.scope !807, !noundef !5
  %3 = trunc nuw i64 %i.l to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B29_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !809, !noundef !5
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !809, !noundef !5 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.q, align 8, !alias.scope !809 ; 6 uses
  %i.r = icmp eq ptr %.val.i.i, null
  br i1 %i.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !809 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !noalias !809

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5, !noalias !809 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5, !noalias !809
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !noalias !809
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !8, !invariant.load !5, !noalias !809 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !9, !invariant.load !5, !noalias !809
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #13, !noalias !809
  br label %.body

bb.p:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  ret void

.body:                                            ; preds = %bb.n, %bb.o
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B29_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB2d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component8rendered0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB27_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component8rendered0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB39_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @_RNvMs6_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB2d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = alloca [192 x i8], align 8               ; 7 uses
  %i.c = alloca [192 x i8], align 8               ; 4 uses
  %i.d = alloca [192 x i8], align 8               ; 7 uses
  %i.e = alloca [192 x i8], align 8               ; 7 uses
  %i.f = alloca [192 x i8], align 8               ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit
    i8 3, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerB2d_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB29_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !820
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !821
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component8rendered0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB27_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !820

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !820
  store i32 2, ptr %i.f, align 8, !noalias !820
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component8rendered0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB27_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !820

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !820
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !820
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !821 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11, !noalias !821
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !820
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !821, !noundef !5
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB29_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_8
begin_hunk_9_@_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2d_:bb.a

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCsdIJosCPXwkf_5tokio7runtime9scheduler14current_threadINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component8rendered0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB39_(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB2d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = alloca [192 x i8], align 8               ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component8rendered0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB39_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component8rendered0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB27_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB29_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB29_.exit

_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB29_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component8rendered0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB27_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2d_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB29_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component8rendered0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB39_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB2d_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef nonnull align 8 dereferenceable(192) %i.d, i64 192, i1 false), !noalias !829
  store i32 2, ptr %i.d, align 8, !noalias !829
  %i.e = load i32, ptr %i.a, align 8, !range !7, !noalias !829, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B29_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !noalias !829

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !range !7, !noalias !829, !noundef !5
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %common.resume, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2z_B2x_NtB1D_9Component8rendered0NtB2z_3MsgE0EEB2B_(ptr noundef nonnull align 8 %i.a) #12
          to label %common.resume unwind label %bb.g, !noalias !829

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !829
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B29_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !829
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.l = load i64, ptr %1, align 8, !range !12, !alias.scope !830, !noundef !5
  %3 = trunc nuw i64 %i.l to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B29_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !832, !noundef !5
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !832, !noundef !5 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.q, align 8, !alias.scope !832 ; 6 uses
  %i.r = icmp eq ptr %.val.i.i, null
  br i1 %i.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !832 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !noalias !832

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5, !noalias !832 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5, !noalias !832
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !noalias !832
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !8, !invariant.load !5, !noalias !832 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !9, !invariant.load !5, !noalias !832
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #13, !noalias !832
  br label %.body

bb.p:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  ret void

.body:                                            ; preds = %bb.n, %bb.o
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B29_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE21drop_join_handle_slowB2d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component8rendered0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB27_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component8rendered0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB39_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @_RNvMs6_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB2d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = alloca [192 x i8], align 8               ; 7 uses
  %i.c = alloca [192 x i8], align 8               ; 4 uses
  %i.d = alloca [192 x i8], align 8               ; 7 uses
  %i.e = alloca [192 x i8], align 8               ; 7 uses
  %i.f = alloca [192 x i8], align 8               ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit
    i8 3, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE10poll_innerB2d_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB29_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !843
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !844
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component8rendered0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB27_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !843

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !843
  store i32 2, ptr %i.f, align 8, !noalias !843
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component8rendered0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB27_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !843

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !843
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !843
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !844 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11, !noalias !844
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !843
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !844, !noundef !5
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB29_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_9
begin_hunk_10_@_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE8completeB2d_:bb.a

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXsb_NtNtCsdIJosCPXwkf_5tokio4task5localINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB5_6SharedENtNtNtB9_7runtime4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component8rendered0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB39_(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE8shutdownB2d_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = alloca [192 x i8], align 8               ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component8rendered0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB39_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component8rendered0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB27_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB29_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB29_.exit

_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB29_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB17_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB25_B23_NtB19_9Component8rendered0NtB25_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB27_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE8completeB2d_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB29_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4v_B4t_NtB3z_9Component6update0NtB4v_3MsgE0E00INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4x_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB3B_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [368 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.a, ptr noundef nonnull align 8 dereferenceable(368) %i.d, i64 368, i1 false), !noalias !852
  store i32 2, ptr %i.d, align 8, !noalias !852
  %i.e = load i32, ptr %i.a, align 8, !range !7, !noalias !852, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component6update0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3x_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !noalias !852

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !range !7, !noalias !852, !noundef !5
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %common.resume, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1D_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2Z_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3X_B3V_NtB31_9Component6update0NtB3X_3MsgE0E00EEB3Z_(ptr noundef nonnull align 8 %i.a) #12
          to label %common.resume unwind label %bb.g, !noalias !852

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !852
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component6update0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3x_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !852
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.l = load i64, ptr %1, align 8, !range !12, !alias.scope !853, !noundef !5
  %3 = trunc nuw i64 %i.l to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component6update0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3x_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !855, !noundef !5
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !855, !noundef !5 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.q, align 8, !alias.scope !855 ; 6 uses
  %i.r = icmp eq ptr %.val.i.i, null
  br i1 %i.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !855 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !noalias !855

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5, !noalias !855 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5, !noalias !855
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !noalias !855
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !8, !invariant.load !5, !noalias !855 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !9, !invariant.load !5, !noalias !855
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #13, !noalias !855
  br label %.body

bb.p:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  ret void

.body:                                            ; preds = %bb.n, %bb.o
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component6update0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3x_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE21drop_join_handle_slowB3B_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [368 x i8], align 8               ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB19_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2v_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3t_B3r_NtB2x_9Component6update0NtB3t_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3v_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(368) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4v_B4t_NtB3z_9Component6update0NtB4v_3MsgE0E00INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4x_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @_RNvMs6_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB3B_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [368 x i8], align 8               ; 4 uses
  %i.b = alloca [368 x i8], align 8               ; 7 uses
  %i.c = alloca [368 x i8], align 8               ; 4 uses
  %i.d = alloca [368 x i8], align 8               ; 7 uses
  %i.e = alloca [368 x i8], align 8               ; 7 uses
  %i.f = alloca [368 x i8], align 8               ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_.exit
    i8 3, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE10poll_innerB3B_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component6update0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB3x_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !866
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !867
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB19_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2v_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3t_B3r_NtB2x_9Component6update0NtB3t_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB3v_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !866

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !866
  store i32 2, ptr %i.f, align 8, !noalias !866
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB19_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2v_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3t_B3r_NtB2x_9Component6update0NtB3t_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3v_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(368) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !866

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !866
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !866
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !867 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11, !noalias !867
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !866
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !867, !noundef !5
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component6update0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB3x_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_10
begin_hunk_11_@_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE8completeB3B_:bb.a

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXsb_NtNtCsdIJosCPXwkf_5tokio4task5localINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB5_6SharedENtNtNtB9_7runtime4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4v_B4t_NtB3z_9Component6update0NtB4v_3MsgE0E00INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4x_(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE8shutdownB3B_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [368 x i8], align 8               ; 4 uses
  %i.b = alloca [368 x i8], align 8               ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4v_B4t_NtB3z_9Component6update0NtB4v_3MsgE0E00INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4x_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB19_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2v_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3t_B3r_NtB2x_9Component6update0NtB3t_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3v_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(368) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component6update0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB3x_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component6update0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB3x_.exit

_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component6update0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB3x_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB19_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2v_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3t_B3r_NtB2x_9Component6update0NtB3t_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3v_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(368) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE8completeB3B_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component6update0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component6update0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB3x_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component8rendered0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4v_B4t_NtB3z_9Component8rendered0NtB4v_3MsgE0E00INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4x_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component8rendered0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB3B_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [400 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.a, ptr noundef nonnull align 8 dereferenceable(400) %i.d, i64 400, i1 false), !noalias !875
  store i32 2, ptr %i.d, align 8, !noalias !875
  %i.e = load i32, ptr %i.a, align 8, !range !7, !noalias !875, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component8rendered0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3x_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !noalias !875

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !range !7, !noalias !875, !noundef !5
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %common.resume, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1D_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2Z_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3X_B3V_NtB31_9Component8rendered0NtB3X_3MsgE0E00EEB3Z_(ptr noundef nonnull align 8 %i.a) #12
          to label %common.resume unwind label %bb.g, !noalias !875

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !875
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component8rendered0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3x_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !875
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.l = load i64, ptr %1, align 8, !range !12, !alias.scope !876, !noundef !5
  %3 = trunc nuw i64 %i.l to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component8rendered0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3x_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !878, !noundef !5
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !878, !noundef !5 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.q, align 8, !alias.scope !878 ; 6 uses
  %i.r = icmp eq ptr %.val.i.i, null
  br i1 %i.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !878 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !noalias !878

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5, !noalias !878 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5, !noalias !878
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !noalias !878
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !8, !invariant.load !5, !noalias !878 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !9, !invariant.load !5, !noalias !878
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #13, !noalias !878
  br label %.body

bb.p:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  ret void

.body:                                            ; preds = %bb.n, %bb.o
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component8rendered0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3x_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component8rendered0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE21drop_join_handle_slowB3B_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [400 x i8], align 8               ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB19_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2v_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3t_B3r_NtB2x_9Component8rendered0NtB3t_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3v_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(400) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component8rendered0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4v_B4t_NtB3z_9Component8rendered0NtB4v_3MsgE0E00INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4x_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component8rendered0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component8rendered0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @_RNvMs6_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component8rendered0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB3B_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [400 x i8], align 8               ; 4 uses
  %i.b = alloca [400 x i8], align 8               ; 7 uses
  %i.c = alloca [400 x i8], align 8               ; 4 uses
  %i.d = alloca [400 x i8], align 8               ; 7 uses
  %i.e = alloca [400 x i8], align 8               ; 7 uses
  %i.f = alloca [400 x i8], align 8               ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component8rendered0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_.exit
    i8 3, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component8rendered0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE10poll_innerB3B_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component8rendered0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB3x_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !889
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !890
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB19_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2v_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3t_B3r_NtB2x_9Component8rendered0NtB3t_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE4pollB3v_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !889

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !889
  store i32 2, ptr %i.f, align 8, !noalias !889
  invoke void @_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB19_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2v_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3t_B3r_NtB2x_9Component8rendered0NtB3t_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3v_(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(400) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !889

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !889
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !889
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !890 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #11, !noalias !890
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !889
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !890, !noundef !5
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_futureNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component8rendered0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB3x_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_11
