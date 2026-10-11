Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_llama2-b5d2d67ec215b578.candle_wasm_example_llama2.2b2abf3c15bdb95-cgu.06?download=true
inline.NumInlined: 863
inline.NumDeleted: 472
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNCNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_future05GuardINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2L_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3J_B3H_NtB2N_9Component8rendered0NtB3J_3MsgE0EEINtNtB28_4sync3ArcNtNtNtBM_9scheduler14current_thread6HandleEEEB3L_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNCNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_future05GuardINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2L_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3J_B3H_NtB2N_9Component8rendered0NtB3J_3MsgE0EEINtNtB28_4sync3ArcNtNtNtBO_4task5local6SharedEEEB3L_(ptr nofree captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !143
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !17, !noalias !143, !noundef !7
  %i.e = invoke noundef i64 @_RNvMs2_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.d)
          to label %bb.b unwind label %bb.e, !noalias !143

bb.b:                                             ; preds = %bb.a
  store i64 %i.e, ptr %i.a, align 8, !noalias !143
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2q_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3o_B3m_NtB2s_9Component8rendered0NtB3o_3MsgE0EEEEB3q_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f)
          to label %_RNvXNCNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_future0INtB2_5GuardINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2v_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3t_B3r_NtB2x_9Component8rendered0NtB3t_3MsgE0EEINtNtB1S_4sync3ArcNtNtNtBc_4task5local6SharedEENtNtNtB1m_3ops4drop4Drop4dropB3v_.exit unwind label %bb.c, !noalias !143

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNvXs3_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread.i.i unwind label %bb.d, !noalias !143

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !143
  unreachable

.thread.i.i:                                      ; preds = %bb.e, %bb.c
  %.pn6.i.i = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %.pn6.i.i

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2q_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3o_B3m_NtB2s_9Component8rendered0NtB3o_3MsgE0EEEEB3q_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.b) #21
          to label %.thread.i.i unwind label %bb.d

_RNvXNCNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_future0INtB2_5GuardINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2v_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3t_B3r_NtB2x_9Component8rendered0NtB3t_3MsgE0EEINtNtB1S_4sync3ArcNtNtNtBc_4task5local6SharedEENtNtNtB1m_3ops4drop4Drop4dropB3v_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @_RNvXs3_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNCNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_future05GuardINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2N_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB49_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB57_B55_NtB4b_9Component8rendered0NtB57_3MsgE0E00EEINtNtB28_4sync3ArcNtNtNtBO_4task5local6SharedEEEB59_(ptr nofree captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !146
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !17, !noalias !146, !noundef !7
  %i.e = invoke noundef i64 @_RNvMs2_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.d)
          to label %bb.b unwind label %bb.e, !noalias !146

bb.b:                                             ; preds = %bb.a
  store i64 %i.e, ptr %i.a, align 8, !noalias !146
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2s_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3O_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4M_B4K_NtB3Q_9Component8rendered0NtB4M_3MsgE0E00EEEEB4O_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f)
          to label %_RNvXNCNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_future0INtB2_5GuardINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2x_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3T_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4R_B4P_NtB3V_9Component8rendered0NtB4R_3MsgE0E00EEINtNtB1S_4sync3ArcNtNtNtBc_4task5local6SharedEENtNtNtB1m_3ops4drop4Drop4dropB4T_.exit unwind label %bb.c, !noalias !146

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNvXs3_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread.i.i unwind label %bb.d, !noalias !146

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !146
  unreachable

.thread.i.i:                                      ; preds = %bb.e, %bb.c
  %.pn6.i.i = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %.pn6.i.i

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2s_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3O_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4M_B4K_NtB3Q_9Component8rendered0NtB4M_3MsgE0E00EEEEB4O_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.b) #21
          to label %.thread.i.i unwind label %bb.d

_RNvXNCNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11poll_future0INtB2_5GuardINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2x_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3T_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4R_B4P_NtB3V_9Component8rendered0NtB4R_3MsgE0E00EEINtNtB1S_4sync3ArcNtNtNtBc_4task5local6SharedEENtNtNtB1m_3ops4drop4Drop4dropB4T_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @_RNvXs3_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1z_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2x_B2v_NtB1B_9Component8rendered0NtB2x_3MsgE0EEEB2z_(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtBK_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB1H_B1F_NtBM_9Component8rendered0NtB1H_3MsgE0EB1J_(ptr noundef nonnull align 8 %.0.val)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1j_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2h_B2f_NtB1l_9Component8rendered0NtB2h_3MsgE0EEB2j_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 232, i64 noundef 8) #25
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1j_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2h_B2f_NtB1l_9Component8rendered0NtB2h_3MsgE0EEB2j_.exit: ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 232, i64 noundef 8) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskNPKTEkpOem_12aho_corasick6packed3api7BuilderEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCskNPKTEkpOem_12aho_corasick6packed3api7BuilderECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
          to label %.body.i.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.e, %bb.g ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #21
          to label %common.resume.i.i unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCskNPKTEkpOem_12aho_corasick6packed3api7BuilderECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume.i.i:                                ; preds = %bb.h, %.body.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.h, %bb.h ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.j:                                             ; preds = %.body.i.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCskNPKTEkpOem_12aho_corasick6packed3api7BuilderECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsej0D7ZFyXq_12wasm_bindgen7closure13ScopedClosureDINtNtNtB4_3ops8function5FnMutTNtB13_7JsValueEEp6OutputINtNtB4_6result6ResultuNtB13_7JsErrorEEL_EBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 4 dereferenceable(12) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !18, !noundef !7
  %1 = trunc nuw i32 %i.a to i1
  br i1 %1, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtCsej0D7ZFyXq_12wasm_bindgen7closure13ScopedClosureDINtNtNtB4_3ops8function5FnMutTNtBH_7JsValueEEp6OutputINtNtB4_6result6ResultuNtBH_7JsErrorEEL_EBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtCsej0D7ZFyXq_12wasm_bindgen7closure13ScopedClosureDINtNtNtB4_3ops8function5FnMutTNtBH_7JsValueEEp6OutputINtNtB4_6result6ResultuNtBH_7JsErrorEEL_EBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.j, %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  invoke void @_RNvXs_NtCsej0D7ZFyXq_12wasm_bindgen7closureINtB4_13ScopedClosureDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtB6_7JsValueEEp6OutputINtNtB18_6result6ResultuNtB6_7JsErrorEEL_ENtNtB16_4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val1.i.i = load i32, ptr %i.b, align 4, !alias.scope !153, !noundef !7 ; 2 uses
  %i.d = icmp ugt i32 %.val1.i.i, 1027
  br i1 %i.d, label %bb.d, label %.body.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val1.i.i) #25
  br label %.body.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.b, align 4, !alias.scope !153, !noundef !7 ; 2 uses
  %i.e = icmp ugt i32 %.val.i.i, 1027
  br i1 %i.e, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsej0D7ZFyXq_12wasm_bindgen7closure13ScopedClosureDINtNtNtB4_3ops8function5FnMutTNtBG_7JsValueEEp6OutputINtNtB4_6result6ResultuNtBG_7JsErrorEEL_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val.i.i) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsej0D7ZFyXq_12wasm_bindgen7closure13ScopedClosureDINtNtNtB4_3ops8function5FnMutTNtBG_7JsValueEEp6OutputINtNtB4_6result6ResultuNtBG_7JsErrorEEL_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

.body.i:                                          ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsej0D7ZFyXq_12wasm_bindgen7closure13ScopedClosureDINtNtNtB4_3ops8function5FnMutTNtBG_7JsValueEEp6OutputINtNtB4_6result6ResultuNtBG_7JsErrorEEL_EECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 4 dereferenceable(4) %i.f) #21
          to label %common.resume.i unwind label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsej0D7ZFyXq_12wasm_bindgen7closure13ScopedClosureDINtNtNtB4_3ops8function5FnMutTNtBG_7JsValueEEp6OutputINtNtB4_6result6ResultuNtBG_7JsErrorEEL_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXs_NtCsej0D7ZFyXq_12wasm_bindgen7closureINtB4_13ScopedClosureDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtB6_7JsValueEEp6OutputINtNtB18_6result6ResultuNtB6_7JsErrorEEL_ENtNtB16_4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsej0D7ZFyXq_12wasm_bindgen7closure13ScopedClosureDINtNtNtB4_3ops8function5FnMutTNtBG_7JsValueEEp6OutputINtNtB4_6result6ResultuNtBG_7JsErrorEEL_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val1.i1.i = load i32, ptr %i.g, align 4, !alias.scope !154, !noundef !7 ; 2 uses
  %i.i = icmp ugt i32 %.val1.i1.i, 1027
  br i1 %i.i, label %bb.h, label %common.resume.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val1.i1.i) #25
  br label %common.resume.i

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsej0D7ZFyXq_12wasm_bindgen7closure13ScopedClosureDINtNtNtB4_3ops8function5FnMutTNtBG_7JsValueEEp6OutputINtNtB4_6result6ResultuNtBG_7JsErrorEEL_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.val.i3.i = load i32, ptr %i.g, align 4, !alias.scope !154, !noundef !7 ; 2 uses
  %i.j = icmp ugt i32 %.val.i3.i, 1027
  br i1 %i.j, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtCsej0D7ZFyXq_12wasm_bindgen7closure13ScopedClosureDINtNtNtB4_3ops8function5FnMutTNtBH_7JsValueEEp6OutputINtNtB4_6result6ResultuNtBH_7JsErrorEEL_EBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val.i3.i) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtCsej0D7ZFyXq_12wasm_bindgen7closure13ScopedClosureDINtNtNtB4_3ops8function5FnMutTNtBH_7JsValueEEp6OutputINtNtB4_6result6ResultuNtBH_7JsErrorEEL_EBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit

common.resume.i:                                  ; preds = %bb.h, %bb.g, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.h, %bb.h ], [ %i.c, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.k:                                             ; preds = %.body.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !159, !noundef !7
  switch i64 %i.a, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputEBF_.exit [
    i64 -1, label %bb.i
    i64 0, label %bb.b
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputEBF_.exit.sink.split unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.c, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.c, %bb.c ], [ %i.k, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !range !9, !alias.scope !160, !noundef !7
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputEBF_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputEBF_.exit.sink.split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputEBF_.exit.sink.split unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputEBF_.exit.sink.split: ; preds = %bb.i, %bb.b, %bb.f
  %.sink.i.sink = phi ptr [ %i.e, %bb.f ], [ %i.b, %bb.b ], [ %i.j, %bb.i ]
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink.i.sink)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputEBF_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputEBF_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputEBF_.exit.sink.split, %bb.a, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsej0D7ZFyXq_12wasm_bindgen7closure13ScopedClosureDINtNtNtB4_3ops8function5FnMutTNtBG_7JsValueEEp6OutputINtNtB4_6result6ResultuNtBG_7JsErrorEEL_EECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs_NtCsej0D7ZFyXq_12wasm_bindgen7closureINtB4_13ScopedClosureDINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtB6_7JsValueEEp6OutputINtNtB18_6result6ResultuNtB6_7JsErrorEEL_ENtNtB16_4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val1 = load i32, ptr %0, align 4, !noundef !7 ; 2 uses
  %i.b = icmp ugt i32 %.val1, 1027
  br i1 %i.b, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsej0D7ZFyXq_12wasm_bindgen7closure9JsClosureECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val1) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsej0D7ZFyXq_12wasm_bindgen7closure9JsClosureECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 4, !noundef !7  ; 2 uses
  %i.c = icmp ugt i32 %.val, 1027
  br i1 %i.c, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsej0D7ZFyXq_12wasm_bindgen7closure9JsClosureECsemnSGAKhbl_26candle_wasm_example_llama2.exit2

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsej0D7ZFyXq_12wasm_bindgen7closure9JsClosureECsemnSGAKhbl_26candle_wasm_example_llama2.exit2

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsej0D7ZFyXq_12wasm_bindgen7closure9JsClosureECsemnSGAKhbl_26candle_wasm_example_llama2.exit2: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsej0D7ZFyXq_12wasm_bindgen7closure9JsClosureECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerINtNtB4_4cell7RefCellNtNtCs3OdvwEu12o7_6js_sys7futures5InnerEEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %.val5.i.i.i = load i32, ptr %i.a, align 8, !range !19, !alias.scope !170, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.val6.i.i.i = load i32, ptr %i.b, align 4, !alias.scope !170 ; 2 uses
  %i.c = icmp ne i32 %.val5.i.i.i, 2
  %i.d = icmp ugt i32 %.val6.i.i.i, 1027
  %or.cond.i.i.i.i = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueB1j_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val6.i.i.i) #25, !noalias !170
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueB1j_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i
end_hunk_0
begin_hunk_1_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCskNPKTEkpOem_12aho_corasick4util9prefilter13MemmemBuilderECsemnSGAKhbl_26candle_wasm_example_llama2:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCskNPKTEkpOem_12aho_corasick4util9prefilter7BuilderECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 16 dereferenceable(480) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecbEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecbEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCskNPKTEkpOem_12aho_corasick4util9prefilter17StartBytesBuilderECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecbEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCskNPKTEkpOem_12aho_corasick4util9prefilter13MemmemBuilderECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #21
          to label %.body2 unwind label %bb.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCskNPKTEkpOem_12aho_corasick4util9prefilter17StartBytesBuilderECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecbEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.e = load i64, ptr %0, align 16, !range !9, !alias.scope !581, !noundef !7
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCskNPKTEkpOem_12aho_corasick4util9prefilter13MemmemBuilderECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCskNPKTEkpOem_12aho_corasick4util9prefilter17StartBytesBuilderECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.body2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCskNPKTEkpOem_12aho_corasick4util9prefilter13MemmemBuilderECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.h

.body2:                                           ; preds = %bb.h, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.h ], [ %i.g, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskNPKTEkpOem_12aho_corasick6packed3api7BuilderEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(80) %i.i) #21
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCskNPKTEkpOem_12aho_corasick4util9prefilter13MemmemBuilderECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCskNPKTEkpOem_12aho_corasick4util9prefilter17StartBytesBuilderECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskNPKTEkpOem_12aho_corasick6packed3api7BuilderEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(80) %i.k)
  ret void

bb.i:                                             ; preds = %.body2, %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.j:                                             ; preds = %.body2
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core7TrailerECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !align !13, !noundef !7 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7
  invoke void %i.e(ptr noundef %.val1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.c, !inline_history !1

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !600, !noundef !7 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !601
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_INtNtNtCsdIJosCPXwkf_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.h

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !604, !noundef !7 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsemnSGAKhbl_26candle_wasm_example_llama2.exit3, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !605
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsemnSGAKhbl_26candle_wasm_example_llama2.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_INtNtNtCsdIJosCPXwkf_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #23
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsemnSGAKhbl_26candle_wasm_example_llama2.exit3

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsemnSGAKhbl_26candle_wasm_example_llama2.exit3: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task3raw15try_read_outputINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3e_(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !615
  br i1 %i.c, label %bb.b, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB3i_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !616
  store i32 2, ptr %i.d, align 8, !noalias !616
  %i.e = load i32, ptr %i.a, align 8, !range !19, !noalias !616, !noundef !7
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B3e_.exit.i, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #20
          to label %bb.d unwind label %bb.e, !noalias !617

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.w, %.body.i ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2q_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3o_B3m_NtB2s_9Component8rendered0NtB3o_3MsgE0EEEEB3q_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #21
          to label %common.resume.i unwind label %bb.f, !noalias !617

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !617
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B3e_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.j = load i64, ptr %1, align 8, !range !6, !alias.scope !620, !noalias !621, !noundef !7
  %3 = trunc nuw i64 %i.j to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B3e_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !623, !noalias !621, !noundef !7
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !623, !noalias !621, !noundef !7 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !623, !noalias !621 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i.i, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !7, !noalias !623 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i.i)
          to label %bb.k unwind label %bb.m, !noalias !623

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !10, !invariant.load !7, !noalias !623 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !16, !invariant.load !7, !noalias !623
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #25, !noalias !623
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !10, !invariant.load !7, !noalias !623 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !16, !invariant.load !7, !noalias !623
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #25, !noalias !623
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.m
  store i64 0, ptr %1, align 8, !alias.scope !615, !noalias !621
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !621
  br label %common.resume.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B3e_.exit.i
  store i64 0, ptr %1, align 8, !alias.scope !615, !noalias !621
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB3i_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB3i_.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task3raw15try_read_outputINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB3e_(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !633
  br i1 %i.c, label %bb.b, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB3i_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !634
  store i32 2, ptr %i.d, align 8, !noalias !634
  %i.e = load i32, ptr %i.a, align 8, !range !19, !noalias !634, !noundef !7
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3e_.exit.i, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #20
          to label %bb.d unwind label %bb.e, !noalias !635

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.w, %.body.i ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2q_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3o_B3m_NtB2s_9Component8rendered0NtB3o_3MsgE0EEEEB3q_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #21
          to label %common.resume.i unwind label %bb.f, !noalias !635

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !635
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3e_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.j = load i64, ptr %1, align 8, !range !6, !alias.scope !638, !noalias !639, !noundef !7
  %3 = trunc nuw i64 %i.j to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3e_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !641, !noalias !639, !noundef !7
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !641, !noalias !639, !noundef !7 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !641, !noalias !639 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i.i, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !7, !noalias !641 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i.i)
          to label %bb.k unwind label %bb.m, !noalias !641

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !10, !invariant.load !7, !noalias !641 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !16, !invariant.load !7, !noalias !641
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #25, !noalias !641
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !10, !invariant.load !7, !noalias !641 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !16, !invariant.load !7, !noalias !641
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #25, !noalias !641
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.m
  store i64 0, ptr %1, align 8, !alias.scope !633, !noalias !639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !639
  br label %common.resume.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3e_.exit.i
  store i64 0, ptr %1, align 8, !alias.scope !633, !noalias !639
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !639
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB3i_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB3i_.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task3raw15try_read_outputINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB4C_(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !651
  br i1 %i.c, label %bb.b, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB4G_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !652
  store i32 2, ptr %i.d, align 8, !noalias !652
  %i.e = load i32, ptr %i.a, align 8, !range !19, !noalias !652, !noundef !7
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B4C_.exit.i, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #20
          to label %bb.d unwind label %bb.e, !noalias !653

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.w, %.body.i ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2s_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3O_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4M_B4K_NtB3Q_9Component8rendered0NtB4M_3MsgE0E00EEEEB4O_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #21
          to label %common.resume.i unwind label %bb.f, !noalias !653

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !653
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B4C_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !652
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.j = load i64, ptr %1, align 8, !range !6, !alias.scope !656, !noalias !657, !noundef !7
  %3 = trunc nuw i64 %i.j to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B4C_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !659, !noalias !657, !noundef !7
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !659, !noalias !657, !noundef !7 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !659, !noalias !657 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i.i, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !7, !noalias !659 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i.i)
          to label %bb.k unwind label %bb.m, !noalias !659

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !10, !invariant.load !7, !noalias !659 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !16, !invariant.load !7, !noalias !659
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #25, !noalias !659
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !10, !invariant.load !7, !noalias !659 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !16, !invariant.load !7, !noalias !659
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #25, !noalias !659
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.m
  store i64 0, ptr %1, align 8, !alias.scope !651, !noalias !657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !657
  br label %common.resume.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B4C_.exit.i
  store i64 0, ptr %1, align 8, !alias.scope !651, !noalias !657
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !657
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB4G_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB4G_.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task3raw15try_read_outputNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB29_(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 6 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !669
  br i1 %i.c, label %bb.b, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB2d_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef nonnull align 8 dereferenceable(240) %i.d, i64 240, i1 false), !noalias !670
  store i32 2, ptr %i.d, align 8, !noalias !670
  %i.e = load i32, ptr %i.a, align 8, !range !19, !noalias !670, !noundef !7
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B29_.exit.i, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #20
          to label %bb.e unwind label %bb.d, !noalias !671

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !range !19, !noalias !670, !noundef !7
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %common.resume.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.y, %.body.i ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1B_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2z_B2x_NtB1D_9Component8rendered0NtB2z_3MsgE0EEB2B_(ptr noundef nonnull align 8 %i.a) #21
          to label %common.resume.i unwind label %bb.g, !noalias !671

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !671
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B29_.exit.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !670
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.l = load i64, ptr %1, align 8, !range !6, !alias.scope !674, !noalias !675, !noundef !7
  %3 = trunc nuw i64 %i.l to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B29_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !677, !noalias !675, !noundef !7
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !677, !noalias !675, !noundef !7 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !677, !noalias !675 ; 6 uses
  %i.r = icmp eq ptr %.val.i.i.i, null
  br i1 %i.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !7, !noalias !677 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i.i)
          to label %bb.l unwind label %bb.n, !noalias !677

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !10, !invariant.load !7, !noalias !677 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !7, !noalias !677
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #25, !noalias !677
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !10, !invariant.load !7, !noalias !677 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !16, !invariant.load !7, !noalias !677
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #25, !noalias !677
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.n
  store i64 0, ptr %1, align 8, !alias.scope !669, !noalias !675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !675
  br label %common.resume.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B29_.exit.i
  store i64 0, ptr %1, align 8, !alias.scope !669, !noalias !675
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !675
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB2d_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB2d_.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task3raw15try_read_outputNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB29_(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 6 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !687
  br i1 %i.c, label %bb.b, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB2d_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef nonnull align 8 dereferenceable(240) %i.d, i64 240, i1 false), !noalias !688
  store i32 2, ptr %i.d, align 8, !noalias !688
  %i.e = load i32, ptr %i.a, align 8, !range !19, !noalias !688, !noundef !7
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B29_.exit.i, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #20
          to label %bb.e unwind label %bb.d, !noalias !689

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !range !19, !noalias !688, !noundef !7
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %common.resume.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.y, %.body.i ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1B_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2z_B2x_NtB1D_9Component8rendered0NtB2z_3MsgE0EEB2B_(ptr noundef nonnull align 8 %i.a) #21
          to label %common.resume.i unwind label %bb.g, !noalias !689

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !689
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B29_.exit.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.l = load i64, ptr %1, align 8, !range !6, !alias.scope !692, !noalias !693, !noundef !7
  %3 = trunc nuw i64 %i.l to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B29_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !695, !noalias !693, !noundef !7
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !695, !noalias !693, !noundef !7 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !695, !noalias !693 ; 6 uses
  %i.r = icmp eq ptr %.val.i.i.i, null
  br i1 %i.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !7, !noalias !695 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i.i)
          to label %bb.l unwind label %bb.n, !noalias !695

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !10, !invariant.load !7, !noalias !695 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !7, !noalias !695
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #25, !noalias !695
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !10, !invariant.load !7, !noalias !695 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !16, !invariant.load !7, !noalias !695
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #25, !noalias !695
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.n
  store i64 0, ptr %1, align 8, !alias.scope !687, !noalias !693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !693
  br label %common.resume.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB19_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB27_B25_NtB1b_9Component8rendered0NtB27_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B29_.exit.i
  store i64 0, ptr %1, align 8, !alias.scope !687, !noalias !693
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB2d_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB2d_.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task3raw15try_read_outputNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component8rendered0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB3x_(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [496 x i8], align 8               ; 6 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !705
  br i1 %i.c, label %bb.b, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component8rendered0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB3B_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %i.a, ptr noundef nonnull align 8 dereferenceable(496) %i.d, i64 496, i1 false), !noalias !706
  store i32 2, ptr %i.d, align 8, !noalias !706
  %i.e = load i32, ptr %i.a, align 8, !range !19, !noalias !706, !noundef !7
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component8rendered0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3x_.exit.i, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #20
          to label %bb.e unwind label %bb.d, !noalias !707

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !range !19, !noalias !706, !noundef !7
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %common.resume.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.y, %.body.i ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1D_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2Z_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3X_B3V_NtB31_9Component8rendered0NtB3X_3MsgE0E00EEB3Z_(ptr noundef nonnull align 8 %i.a) #21
          to label %common.resume.i unwind label %bb.g, !noalias !707

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !707
  unreachable

_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component8rendered0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3x_.exit.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !706
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.l = load i64, ptr %1, align 8, !range !6, !alias.scope !710, !noalias !711, !noundef !7
  %3 = trunc nuw i64 %i.l to i1
  br i1 %3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component8rendered0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3x_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !713, !noalias !711, !noundef !7
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !713, !noalias !711, !noundef !7 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !713, !noalias !711 ; 6 uses
  %i.r = icmp eq ptr %.val.i.i.i, null
  br i1 %i.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !7, !noalias !713 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i.i)
          to label %bb.l unwind label %bb.n, !noalias !713

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !10, !invariant.load !7, !noalias !713 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !7, !noalias !713
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #25, !noalias !713
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !10, !invariant.load !7, !noalias !713 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !16, !invariant.load !7, !noalias !713
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #25, !noalias !713
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.n
  store i64 0, ptr %1, align 8, !alias.scope !705, !noalias !711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !711
  br label %common.resume.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2x_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3v_B3t_NtB2z_9Component8rendered0NtB3v_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBd_4task5local6SharedEE11take_output0B3x_.exit.i
  store i64 0, ptr %1, align 8, !alias.scope !705, !noalias !711
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !711
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component8rendered0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB3B_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component8rendered0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE15try_read_outputB3B_.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5error9JoinErrorEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task3raw17drop_abort_handleINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2g_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3e_B3c_NtB2i_9Component8rendered0NtB3e_3MsgE0EEINtNtB1D_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3g_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2p_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3n_B3l_NtB2r_9Component8rendered0NtB3n_3MsgE0EEINtNtB1M_4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEEB3p_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component8rendered0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB3t_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 128) #25
  resume { ptr, i32 } %i.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component8rendered0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB3t_.exit.i: ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 128) #25
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB3i_.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component8rendered0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB3t_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task3raw17drop_abort_handleINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2g_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3e_B3c_NtB2i_9Component8rendered0NtB3e_3MsgE0EEINtNtB1D_4sync3ArcNtNtNtB8_4task5local6SharedEEB3g_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2p_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3n_B3l_NtB2r_9Component8rendered0NtB3n_3MsgE0EEINtNtB1M_4sync3ArcNtNtNtBK_4task5local6SharedEEEB3p_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component8rendered0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB3t_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 128) #25
  resume { ptr, i32 } %i.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component8rendered0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB3t_.exit.i: ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 128) #25
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2i_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3g_B3e_NtB2k_9Component8rendered0NtB3g_3MsgE0EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3i_.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2t_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3r_B3p_NtB2v_9Component8rendered0NtB3r_3MsgE0EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB3t_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task3raw17drop_abort_handleINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2i_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3E_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4C_B4A_NtB3G_9Component8rendered0NtB4C_3MsgE0E00EEINtNtB1D_4sync3ArcNtNtNtB8_4task5local6SharedEEB4E_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2r_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3N_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4L_B4J_NtB3P_9Component8rendered0NtB4L_3MsgE0E00EEINtNtB1M_4sync3ArcNtNtNtBK_4task5local6SharedEEEB4N_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2v_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3R_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4P_B4N_NtB3T_9Component8rendered0NtB4P_3MsgE0E00EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4R_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 128) #25
  resume { ptr, i32 } %i.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2v_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3R_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4P_B4N_NtB3T_9Component8rendered0NtB4P_3MsgE0E00EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4R_.exit.i: ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 128) #25
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2k_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3G_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4E_B4C_NtB3I_9Component8rendered0NtB4E_3MsgE0E00EEINtNtB1F_4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB4G_.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2v_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3R_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4P_B4N_NtB3T_9Component8rendered0NtB4P_3MsgE0E00EEINtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4R_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task3raw17drop_abort_handleNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1b_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB29_B27_NtB1d_9Component8rendered0NtB29_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1A_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2y_B2w_NtB1C_9Component8rendered0NtB2y_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEEB2A_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component8rendered0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB39_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #25
  resume { ptr, i32 } %i.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component8rendered0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB39_.exit.i: ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #25
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2d_.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component8rendered0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB39_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task3raw17drop_abort_handleNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1b_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB29_B27_NtB1d_9Component8rendered0NtB29_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB2b_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1A_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2y_B2w_NtB1C_9Component8rendered0NtB2y_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBK_4task5local6SharedEEEB2A_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component8rendered0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB39_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #25
  resume { ptr, i32 } %i.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component8rendered0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB39_.exit.i: ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #25
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1d_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB2b_B29_NtB1f_9Component8rendered0NtB2b_3MsgE0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB2d_.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB29_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB37_B35_NtB2b_9Component8rendered0NtB37_3MsgE0INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB39_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task3raw17drop_abort_handleNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1d_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2z_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3x_B3v_NtB2B_9Component8rendered0NtB3x_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB8_4task5local6SharedEEB3z_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component8rendered0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_.exit

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1C_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2Y_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3W_B3U_NtB30_9Component8rendered0NtB3W_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBK_4task5local6SharedEEEB3Y_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3x_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4v_B4t_NtB3z_9Component8rendered0NtB4v_3MsgE0E00INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4x_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 640, i64 noundef 128) #25
  resume { ptr, i32 } %i.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3x_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4v_B4t_NtB3z_9Component8rendered0NtB4v_3MsgE0E00INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4x_.exit.i: ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 640, i64 noundef 128) #25
  br label %_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component8rendered0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_.exit

_RNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1f_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2B_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3z_B3x_NtB2D_9Component8rendered0NtB3z_3MsgE0E00INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtBb_4task5local6SharedEE14drop_referenceB3B_.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core4CellNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2b_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3x_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4v_B4t_NtB3z_9Component8rendered0NtB4v_3MsgE0E00INtNtBG_4sync3ArcNtNtNtB1j_4task5local6SharedEEEEB4x_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2k_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3i_B3g_NtB2m_9Component8rendered0NtB3i_3MsgE0EEINtNtB1H_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3k_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = tail call { i1, i1 } @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.d = extractvalue { i1, i1 } %i.c, 0
  %i.e = extractvalue { i1, i1 } %i.c, 1
  br i1 %i.e, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.m, %bb.l, %bb.i, %.thread.i, %bb.a
  br i1 %i.d, label %bb.s, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !716
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !range !17, !noalias !716, !noundef !7
  %i.h = invoke noundef i64 @_RNvMs2_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.g)
          to label %bb.c unwind label %bb.f, !noalias !716

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.a, align 8, !noalias !716
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2q_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3o_B3m_NtB2s_9Component8rendered0NtB3o_3MsgE0EEEEB3q_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i)
          to label %_RNvXsl_NtNtCsf3Ta7LF998c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs0_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harnessINtB1h_7HarnessINtNtB9_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3f_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4d_B4b_NtB3h_9Component8rendered0NtB4d_3MsgE0EEINtNtB2C_4sync3ArcNtNtNtB1l_9scheduler14current_thread6HandleEE21drop_join_handle_slow0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB4f_.exit.i.i unwind label %bb.d, !noalias !716

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNvXs3_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body.i unwind label %bb.e, !noalias !716

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !716
  unreachable

end_hunk_1
begin_hunk_2_@_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2e_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3c_B3a_NtB2g_9Component8rendered0NtB3c_3MsgE0EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB3e_:bb.a
bb.i:                                             ; preds = %.body
  %i.p = extractvalue { ptr, ptr } %i.n, 0
  %i.q = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.8.0 = phi ptr [ %i.q, %bb.i ], [ undef, %bb.h ]
  %.sroa.6.0 = phi ptr [ %i.p, %bb.i ], [ null, %bb.h ]
  %.sroa.01.0 = load i64, ptr %i.e, align 8, !range !17, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0, ptr %i.r, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0, ptr %.sroa.63.0..sroa_idx, align 8
  store i32 1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !867
  %i.s = invoke noundef i64 @_RNvMs2_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %.sroa.01.0)
          to label %bb.k unwind label %bb.n, !noalias !867

bb.k:                                             ; preds = %bb.j
  store i64 %i.s, ptr %i.c, align 8, !noalias !867
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2q_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3o_B3m_NtB2s_9Component8rendered0NtB3o_3MsgE0EEEEB3q_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t)
          to label %_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component8rendered0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3c_.exit unwind label %bb.l, !noalias !867

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  invoke void @_RNvXs3_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.thread.i unwind label %bb.m, !noalias !867

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !867
  unreachable

.thread.i:                                        ; preds = %bb.n, %bb.l
  %.pn6.i = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.w, %bb.n ]
  resume { ptr, i32 } %.pn6.i

bb.n:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2q_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3o_B3m_NtB2s_9Component8rendered0NtB3o_3MsgE0EEEEB3q_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.d) #21
          to label %.thread.i unwind label %bb.m

_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2c_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB3a_B38_NtB2e_9Component8rendered0NtB3a_3MsgE0EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB3c_.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @_RNvXs3_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2g_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3C_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4A_B4y_NtB3E_9Component8rendered0NtB4A_3MsgE0E00EEINtNtB1B_4sync3ArcNtNtNtB8_4task5local6SharedEEB4C_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !872
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !17, !noalias !872, !noundef !7
  %i.g = invoke noundef i64 @_RNvMs2_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.f)
          to label %bb.b unwind label %bb.e, !noalias !872

bb.b:                                             ; preds = %bb.a
  store i64 %i.g, ptr %i.a, align 8, !noalias !872
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2s_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3O_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4M_B4K_NtB3Q_9Component8rendered0NtB4M_3MsgE0E00EEEEB4O_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h)
          to label %_RNvXsl_NtNtCsf3Ta7LF998c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtB9_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB3c_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB4y_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB5w_B5u_NtB4A_9Component8rendered0NtB5w_3MsgE0E00EEINtNtB2x_4sync3ArcNtNtNtB1k_4task5local6SharedEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5y_.exit.i unwind label %bb.c, !noalias !872

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNvXs3_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.d, !noalias !872

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !872
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2s_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3O_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4M_B4K_NtB3Q_9Component8rendered0NtB4M_3MsgE0E00EEEEB4O_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.b) #21
          to label %.body unwind label %bb.d

_RNvXsl_NtNtCsf3Ta7LF998c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtB9_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB3c_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB4y_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB5w_B5u_NtB4A_9Component8rendered0NtB5w_3MsgE0E00EEINtNtB2x_4sync3ArcNtNtNtB1k_4task5local6SharedEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5y_.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNvXs3_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvXsl_NtNtCsf3Ta7LF998c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtB9_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB3c_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB4y_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB5w_B5u_NtB4A_9Component8rendered0NtB5w_3MsgE0E00EEINtNtB2x_4sync3ArcNtNtNtB1k_4task5local6SharedEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5y_.exit.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.i, %bb.c ], [ %i.k, %bb.e ]
  %i.m = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.h:                                             ; preds = %_RNvXsl_NtNtCsf3Ta7LF998c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCsdIJosCPXwkf_5tokio7runtime4task7harness11cancel_taskINtNtB9_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB3c_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB4y_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB5w_B5u_NtB4A_9Component8rendered0NtB5w_3MsgE0E00EEINtNtB2x_4sync3ArcNtNtNtB1k_4task5local6SharedEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5y_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %.body
  %i.p = extractvalue { ptr, ptr } %i.n, 0
  %i.q = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.8.0 = phi ptr [ %i.q, %bb.i ], [ undef, %bb.h ]
  %.sroa.6.0 = phi ptr [ %i.p, %bb.i ], [ null, %bb.h ]
  %.sroa.01.0 = load i64, ptr %i.e, align 8, !range !17, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0, ptr %i.r, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0, ptr %.sroa.63.0..sroa_idx, align 8
  store i32 1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !873
  %i.s = invoke noundef i64 @_RNvMs2_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %.sroa.01.0)
          to label %bb.k unwind label %bb.n, !noalias !873

bb.k:                                             ; preds = %bb.j
  store i64 %i.s, ptr %i.c, align 8, !noalias !873
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2s_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3O_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4M_B4K_NtB3Q_9Component8rendered0NtB4M_3MsgE0E00EEEEB4O_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t)
          to label %_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2e_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3A_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4y_B4w_NtB3C_9Component8rendered0NtB4y_3MsgE0E00EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB4A_.exit unwind label %bb.l, !noalias !873

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  invoke void @_RNvXs3_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.thread.i unwind label %bb.m, !noalias !873

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !873
  unreachable

.thread.i:                                        ; preds = %bb.n, %bb.l
  %.pn6.i = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.w, %bb.n ]
  resume { ptr, i32 } %.pn6.i

bb.n:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2s_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3O_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4M_B4K_NtB3Q_9Component8rendered0NtB4M_3MsgE0E00EEEEB4O_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.d) #21
          to label %.thread.i unwind label %bb.m

_RNvMs4_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreINtB5_4CoreINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB2e_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3A_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB4y_B4w_NtB3C_9Component8rendered0NtB4y_3MsgE0E00EEINtNtB1z_4sync3ArcNtNtNtBb_4task5local6SharedEE9set_stageB4A_.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @_RNvXs3_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs2_NtCs3OdvwEu12o7_6js_sys7futuresINtB8_8JsFuturepEINtNtCsf3Ta7LF998c_4core7convert4FromINtBa_7PromisepEE4from6finishNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECsemnSGAKhbl_26candle_wasm_example_llama2(ptr nofree noundef nonnull align 8 captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !7
  %.not23 = icmp eq i64 %i.b, 0
  br i1 %.not23, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !range !18, !noundef !7
  %3 = trunc nuw i32 %i.e to i1
  br i1 %3, label %bb.d, label %.invoke, !prof !12

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
          to label %bb.e unwind label %.split.thread

.split.thread:                                    ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.invoke:                                          ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ @12, %bb.d ], [ @9, %bb.b ]
  %i.h = phi ptr [ inttoptr (i64 59 to ptr), %bb.d ], [ inttoptr (i64 65 to ptr), %bb.b ]
  %i.i = phi ptr [ @13, %bb.d ], [ @11, %bb.b ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i) #20
          to label %.cont unwind label %.thread

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.c, align 8, !range !19, !noundef !7
  %.not6 = icmp eq i32 %i.j, 2
  br i1 %.not6, label %bb.f, label %.invoke, !prof !12

.thread:                                          ; preds = %.invoke, %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i64, ptr %0, align 8, !noundef !7
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  store i32 0, ptr %i.d, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsej0D7ZFyXq_12wasm_bindgen7closure13ScopedClosureDINtNtNtB4_3ops8function5FnMutTNtB13_7JsValueEEp6OutputINtNtB4_6result6ResultuNtB13_7JsErrorEEL_EBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 4 dereferenceable(12) %i.a)
          to label %bb.g unwind label %.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val11.a = load i32, ptr %i.c, align 8, !range !19, !noundef !7
  %i.n = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %.val12 = load i32, ptr %i.n, align 4           ; 2 uses
  %i.o = icmp ne i32 %.val11.a, 2
  %i.p = icmp ugt i32 %.val12, 1027
  %or.cond.i = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val12) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  store i32 %1, ptr %i.c, align 8
  store i32 %2, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !align !13, !noundef !7 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  store ptr null, ptr %i.q, align 8
  %i.u = load i64, ptr %0, align 8, !noundef !7
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %0, align 8
  %.not8 = icmp eq ptr %i.r, null
  br i1 %.not8, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !7, !noundef !7
  call void %i.x(ptr noundef %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.m, %bb.l
  resume { ptr, i32 } %.pn920

bb.l:                                             ; preds = %.split.thread, %.thread
  %.pn920 = phi { ptr, i32 } [ %i.f, %.split.thread ], [ %i.k, %.thread ]
  %i.y = icmp ugt i32 %2, 1027
  br i1 %i.y, label %bb.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.m:                                             ; preds = %bb.l
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %2) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsej0D7ZFyXq_12wasm_bindgen7JsValueBX_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtNtCs9OLX912zl7o_3yew11virtual_dom5vnodeNtB6_5VNodeINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBL_E9from_iterINtNtNtB13_8adapters3map3MapNtNtNtB15_3str4iter5CharsNCNvXNtCsemnSGAKhbl_26candle_wasm_example_llama23appNtB36_3AppNtNtNtBa_4html9component9Component4views1_0EEB38_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs2_NtNtCs9OLX912zl7o_3yew11virtual_dom5vlistNtB6_5VListINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorNtNtB8_5vnode5VNodeE9from_iterINtNtNtB13_8adapters3map3MapIB2r_NtNtNtB15_3str4iter5CharsNCNvXNtCsemnSGAKhbl_26candle_wasm_example_llama23appNtB3r_3AppNtNtNtBa_4html9component9Component4views1_0ENCINvXs8_B1Y_B1W_IBX_B1W_E9from_iterB2S_E0EEB3t_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull %1, ptr noundef %2)
  store i64 1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.c, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !876
  %i.d = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 4, 641) 48, i64 noundef range(i64 4, 129) 8) #25, !noalias !876 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vlist5VListEE3newCsemnSGAKhbl_26candle_wasm_example_llama2.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #20
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vlist5VListEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #21
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vlist5VListEE3newCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.h, align 8
  store i32 3, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB8_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE11send_futureNCNvXB15_B13_NtBa_9Component8rendered0NtB15_3MsgE0B17_(ptr noundef nonnull align 8 %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.549.i.i = alloca [36 x i8], align 4      ; 9 uses
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.532.i.i = alloca [12 x i8], align 4      ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.510.i.i = alloca [12 x i8], align 4      ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.6.i = alloca [36 x i8], align 4          ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [4 x i8], align 4                 ; 7 uses
  %.sroa.4.i = alloca [36 x i8], align 4          ; 5 uses
  %.sroa.10.i = alloca [36 x i8], align 4         ; 8 uses
  %i.j = alloca [56 x i8], align 8                ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !range !20, !noundef !7
  switch i8 %i.l, label %default.unreachable11 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.b
  ]

default.unreachable11:                            ; preds = %bb.f, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.n, ptr noundef nonnull align 8 dereferenceable(96) %i.m, i64 96, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.q = load i8, ptr %i.p, align 8, !range !20, !noalias !890, !noundef !7
  switch i8 %i.q, label %default.unreachable11 [
    i8 0, label %.thread.i
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]
end_hunk_2
