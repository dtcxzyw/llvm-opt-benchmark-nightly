Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.07?download=true
inline.NumInlined: 7757
inline.NumDeleted: 2965
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvMs2_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake:bb.a
bb.cg:                                            ; preds = %bb.cf
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.07.0.copyload.i.i.i.i, ptr %i.b, align 8, !noalias !11958
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.59.0..sroa_idx10.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.59.0..sroa_idx.i.i.i.i, i64 56, i1 false), !noalias !11958
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.b, ptr nonnull %i.hl)
          to label %bb.ci unwind label %bb.cn, !noalias !11958

bb.ch:                                            ; preds = %bb.cf
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #34
          to label %bb.cb unwind label %bb.cn, !noalias !11958

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11958
  %i.hx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !11958, !noundef !13 ; 3 uses
  store ptr %i.hx, ptr %i.a, align 8, !noalias !11958
  store ptr %i.hl, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !11958
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hz = atomicrmw sub ptr %i.hx, i64 1 release, align 8, !noalias !11969
  %i.ia = icmp eq i64 %i.hz, 1
  br i1 %i.ia, label %bb.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.ck:                                            ; preds = %bb.cj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.cl, !noalias !11958

bb.cl:                                            ; preds = %bb.ck
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ic = load i64, ptr %i.d, align 8, !range !16, !alias.scope !11970, !noalias !11958, !noundef !13
  %i.id = icmp eq i64 %i.ic, 2
  br i1 %i.id, label %.body.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5error16SendTimeoutErrorINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.body.i.i unwind label %bb.ce, !noalias !11958

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.ck, %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !11957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11958
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0IB3t_uINtNtB1S_5error16SendTimeoutErrorB3s_EEEs_0B4S_ECs7p2uQeJxui2_9deltalake.exit.i.i

bb.cn:                                            ; preds = %bb.ch, %bb.cg
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = atomicrmw sub ptr %i.hl, i64 1 release, align 8, !noalias !11971
  %i.ig = icmp eq i64 %i.if, 1
  br i1 %i.ig, label %bb.co, label %.body.i.i

bb.co:                                            ; preds = %bb.cn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #35
          to label %.body.i.i unwind label %bb.ce, !noalias !11958

bb.cp:                                            ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0IB3t_uINtNtB1S_5error16SendTimeoutErrorB3s_EEEs_0B4S_ECs7p2uQeJxui2_9deltalake.exit.thread.i.i, %bb.cd, %bb.bw, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ca, %bb.bz
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ih, %bb.cp ], [ %i.ib, %bb.cm ], [ %i.hn, %bb.bz ], [ %i.hn, %bb.ca ], [ %i.ib, %bb.cl ], [ %i.ie, %bb.co ], [ %i.ie, %bb.cn ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB1a_7ChannelINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.h) #37
          to label %common.resume unwind label %bb.cs, !noalias !11953

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0IB3t_uINtNtB1S_5error16SendTimeoutErrorB3s_EEEs_0B4S_ECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i.i
  %.sroa.04.0.copyload5.i.i = load i64, ptr %i.g, align 8, !noalias !11953 ; 2 uses
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx6.i.i, i64 24, i1 false), !noalias !11953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11957
  %i.ii = icmp eq i64 %.sroa.04.0.copyload5.i.i, 3
  br i1 %i.ii, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0IB3t_uINtNtB1S_5error16SendTimeoutErrorB3s_EEEs_0B4S_ECs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %bb.cq

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0IB3t_uINtNtB1S_5error16SendTimeoutErrorB3s_EEEs_0B4S_ECs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0IB3t_uINtNtB1S_5error16SendTimeoutErrorB3s_EEEs_0B4S_ECs7p2uQeJxui2_9deltalake.exit.i.i, %.noexc.i.i
  invoke fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4zeroINtB1b_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0IB1B_uINtNtB7_5error16SendTimeoutErrorB1A_EEEs0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.w, ptr nonnull %i.h)
          to label %bb.cr unwind label %bb.cp, !noalias !11972

bb.cq:                                            ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0IB3t_uINtNtB1S_5error16SendTimeoutErrorB3s_EEEs_0B4S_ECs7p2uQeJxui2_9deltalake.exit.i.i
  store i64 %.sroa.04.0.copyload5.i.i, ptr %i.w, align 8, !alias.scope !11973
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, i64 24, i1 false), !noalias !11972
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0IB3t_uINtNtB1S_5error16SendTimeoutErrorB3s_EEEs_0B4S_ECs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB1a_7ChannelINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.h), !noalias !11932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11953
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake.exit

bb.cs:                                            ; preds = %.body.i.i
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !11953
  unreachable

bb.ct:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i5, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !alias.scope !11932
  store i64 1, ptr %i.w, align 8, !alias.scope !11930
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  br i1 %i.fa, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i29.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.il = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !11932
  %i.im = and i64 %i.il, 9223372036854775807
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i29.i, label %.noexc30.i, !prof !22

.noexc30.i:                                       ; preds = %bb.cu
  %i.io = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35, !noalias !11932
  br i1 %i.io, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i29.i, label %bb.cv

bb.cv:                                            ; preds = %.noexc30.i
  store atomic i8 1, ptr %i.ik monotonic, align 4, !noalias !11932
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i29.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i29.i: ; preds = %bb.cv, %.noexc30.i, %bb.cu, %bb.ct
  %i.ip = atomicrmw xchg ptr %i.ex, i32 0 release, align 4, !noalias !11932
  %i.iq = icmp eq i32 %i.ip, 2
  br i1 %i.iq, label %bb.cw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake.exit, !prof !19

bb.cw:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i29.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ex), !noalias !11932
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake.exit

bb.cx:                                            ; preds = %.noexc15.i, %bb.be, %.lr.ph.i.preheader.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.ex, i8 %i.ez) #37
          to label %.body.thread.i2 unwind label %bb.bu, !noalias !11932

.body.thread.i2:                                  ; preds = %bb.cx, %bb.aw, %.split.i, %.body.i
  %.pn.pn63.i = phi { ptr, i32 } [ %eh.lpad-body21.i, %.body.i ], [ %i.eu, %bb.aw ], [ %lpad.thr_comm.i, %bb.cx ], [ %lpad.thr_comm.split-lp.i, %.split.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #37
          to label %common.resume unwind label %bb.bu, !noalias !11930

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit24.i, %bb.cr, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i29.i, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.cy

bb.cy:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake.exit, %bb.b
  %i.ir = load i64, ptr %i.w, align 8, !range !16, !noundef !13
  %.not = icmp eq i64 %i.ir, 2
  br i1 %.not, label %bb.de, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !11974)
  %i.is = load i64, ptr %i.s, align 8, !range !18, !alias.scope !11974, !noundef !13
  %i.it = trunc nuw i64 %i.is to i1
  br i1 %i.it, label %_RNCNvMs2_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0Cs7p2uQeJxui2_9deltalake.exit, label %bb.da, !prof !22

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #34
          to label %bb.db unwind label %bb.dc, !noalias !11975

bb.db:                                            ; preds = %bb.da
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.iu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5error16SendTimeoutErrorINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s) #37
          to label %common.resume unwind label %bb.dd, !noalias !11976

bb.dd:                                            ; preds = %bb.dc
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !11976
  unreachable

_RNCNvMs2_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.cz
  %i.iw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.iw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.df

bb.de:                                            ; preds = %bb.cy
  store i64 -9223372036854775805, ptr %0, align 8
  br label %bb.df

bb.df:                                            ; preds = %_RNCNvMs2_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0Cs7p2uQeJxui2_9deltalake.exit, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE8get_slowCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 5 uses
  %i.b = alloca [1400 x i8], align 8              ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [1400 x i8], align 8              ; 5 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = cmpxchg ptr %i.f, i64 0, i64 1 acq_rel acquire, align 8
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.g, 1
  br i1 %.sroa.18.0.in.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !13 ; 3 uses
  %i.j = icmp ult i64 %i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheNtNtBP_6marker4SyncNtB2r_4SendNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtB2V_10UnwindSafeEL_EIBJ_uE4callCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !range !32, !alias.scope !11985, !noundef !13
  %i.o = icmp eq i64 %i.n, 3
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs7p2uQeJxui2_9deltalake.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.m, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.m, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = inttoptr i64 %2 to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.r, align 8
  store i64 1, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.t, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit22

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit22: ; preds = %bb.v, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, %bb.r, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheE3newCs7p2uQeJxui2_9deltalake.exit9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs7p2uQeJxui2_9deltalake.exit
  ret void

common.resume:                                    ; preds = %5, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.t ], [ %i.p, %bb.f ], [ %6, %5 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #36
  unreachable

4:                                                ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit32
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #34
          to label %.noexc15 unwind label %5

.noexc15:                                         ; preds = %4
  unreachable

5:                                                ; preds = %4
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.a) #37
          to label %common.resume unwind label %7

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheE3newCs7p2uQeJxui2_9deltalake.exit9: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bx, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %9, align 8
  store i64 0, ptr %0, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %11, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit22

bb.h:                                             ; preds = %bb.c
  %12 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %14 = urem i64 %2, %i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !13, !noundef !13
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %14
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEE8try_lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.w)
  %i.x = load i64, ptr %i.c, align 8, !range !18, !noundef !13
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %12, align 8, !nonnull !13, !align !20, !noundef !13 ; 9 uses
  %i.aa = load i8, ptr %13, align 8, !range !21, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !13 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.af = trunc nuw i8 %i.aa to i1
  br i1 %i.af, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc19, !prof !22

.noexc19:                                         ; preds = %bb.k
  %i.aj = tail call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
  br i1 %i.aj, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc19
  store atomic i8 1, ptr %i.ae monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc19, %bb.k, %bb.j
  %i.ak = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit, !prof !19

bb.m:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit

bb.n:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.an = add nsw i64 %i.ac, -1                   ; 3 uses
  store i64 %i.an, ptr %i.ab, align 8
  %i.ao = load i64, ptr %i.am, align 8, !range !23, !noundef !13
  %i.ap = icmp samesign ult i64 %i.an, %i.ao
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !13, !noundef !13
  %i.as = icmp ult i64 %i.ac, 1152921504606846977
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.an
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !13, !align !20, !noundef !13
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.av, align 8
  store i64 0, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.az = trunc nuw i8 %i.aa to i1
  br i1 %i.az, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bb = and i64 %i.ba, 9223372036854775807
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.p, !prof !22

bb.p:                                             ; preds = %bb.o
  %i.bd = tail call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
  br i1 %i.bd, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.ay monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.be = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.bf = icmp eq i32 %i.be, 2
  br i1 %i.bf, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit22, !prof !19

bb.r:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21
  tail call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit22

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.m, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheNtNtBP_6marker4SyncNtB2r_4SendNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtB2V_10UnwindSafeEL_EIBJ_uE4callCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bg)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !11986
  %i.bh = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 3025) 1400, i64 noundef range(i64 8, 129) 8) #27, !noalias !11986 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.s, label %bb.v, !prof !19

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #34
          to label %.noexc23 unwind label %bb.t

.noexc23:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.b) #37
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bh, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bl, align 8
  store i64 0, ptr %0, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bn, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit22

bb.w:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11987)
  %.val.i25 = load ptr, ptr %12, align 8, !alias.scope !11987 ; 4 uses
  %.val3.i26 = load i8, ptr %13, align 8, !range !26, !alias.scope !11987, !noundef !13 ; 2 uses
  %.not.i.i27 = icmp eq i8 %.val3.i26, 2
  br i1 %.not.i.i27, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit32, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i25) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i25, i64 4
  %i.bp = trunc nuw i8 %.val3.i26 to i1
  br i1 %i.bp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !11987
  %i.br = and i64 %i.bq, 9223372036854775807
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.z, !prof !22

bb.z:                                             ; preds = %bb.y
  %i.bt = tail call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35, !noalias !11987
  br i1 %i.bt, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bo monotonic, align 1, !noalias !11987
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bu = atomicrmw xchg ptr %.val.i25, i32 0 release, align 4, !noalias !11987
  %i.bv = icmp eq i32 %i.bu, 2
  br i1 %i.bv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i29, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit32, !prof !19

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i29: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28
  tail call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i25), !noalias !11987
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit32

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit32: ; preds = %bb.w, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheNtNtBP_6marker4SyncNtB2r_4SendNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtB2V_10UnwindSafeEL_EIBJ_uE4callCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bw)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !11988
  %i.bx = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 3025) 1400, i64 noundef range(i64 8, 129) 8) #27, !noalias !11988 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %4, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheE3newCs7p2uQeJxui2_9deltalake.exit9, !prof !19
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE9put_valueCs7p2uQeJxui2_9deltalake(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 43 uses
  %i.b = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe13RefUnwindSafeNtB4D_10UnwindSafeEL_EE9put_value0jECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @275)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !13 ; 3 uses
  %i.e = icmp ult i64 %i.d, 144115188075855872
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #34
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.g, %bb.c
  unreachable

common.resume:                                    ; preds = %bb.ch, %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.w, %.body ], [ %lpad.phi, %bb.ch ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.9
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #27
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.p, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs7p2uQeJxui2_9deltalake.exit
  ret void

bb.f:                                             ; preds = %bb.b
  %i.h = urem i64 %i.b, %i.d                      ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = load ptr, ptr %i.i, align 8, !nonnull !13, !noundef !13
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.h
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEE8try_lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.m)
          to label %bb.h unwind label %.loopexit

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26
  %.lcssa = phi i64 [ %i.fb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.8 ], [ %i.at, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26 ], [ %i.bh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.1 ], [ %i.bv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.2 ], [ %i.cj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.3 ], [ %i.cx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.4 ], [ %i.dl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.5 ], [ %i.dz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.6 ], [ %i.en, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.7 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %.lcssa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #34
          to label %bb.d unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.a, align 8, !range !18, !noundef !13
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.cb, %bb.bu, %bb.bn, %bb.bg, %bb.az, %bb.as, %bb.al, %bb.ae, %bb.x, %bb.h
  %i.p = load ptr, ptr %i.j, align 8, !nonnull !13, !align !20, !noundef !13 ; 7 uses
  %i.q = load i8, ptr %i.k, align 8, !range !21, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !12012, !noundef !13 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !range !23, !alias.scope !12012, !noundef !13
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEE8grow_oneCs387lRdTAbEW_11hdfs_native(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.m unwind label %bb.k, !noalias !12013

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs7p2uQeJxui2_9deltalake(ptr nonnull align 8 %1) #37
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body:                                            ; preds = %bb.k
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.p, i8 %i.q) #37
          to label %common.resume unwind label %bb.q

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !12012, !nonnull !13, !noundef !13
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.t
  store ptr %1, ptr %i.aa, align 8, !noalias !12013
  %i.ab = add i64 %i.t, 1
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !12012
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ad = trunc nuw i8 %i.q to i1
  br i1 %i.ad, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.af = and i64 %i.ae, 9223372036854775807
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc14, !prof !22

.noexc14:                                         ; preds = %bb.n
  %i.ah = tail call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
  br i1 %i.ah, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc14
  store atomic i8 1, ptr %i.ac monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.o, %.noexc14, %bb.n, %bb.m
  %i.ai = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit, !prof !19

bb.p:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit

bb.q:                                             ; preds = %bb.ch, %.body
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.r:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12014)
  %.val.i16 = load ptr, ptr %i.j, align 8, !alias.scope !12014 ; 4 uses
  %.val3.i17 = load i8, ptr %i.k, align 8, !range !26, !alias.scope !12014, !noundef !13 ; 2 uses
  %.not.i.i18 = icmp eq i8 %.val3.i17, 2
  br i1 %.not.i.i18, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i16, i64 4
  %i.am = trunc nuw i8 %.val3.i17 to i1
  br i1 %i.am, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !12014
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.u, !prof !22

bb.u:                                             ; preds = %bb.t
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %bb.u
  br i1 %i.aq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.v

bb.v:                                             ; preds = %.noexc24
  store atomic i8 1, ptr %i.al monotonic, align 1, !noalias !12014
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19: ; preds = %bb.v, %.noexc24, %bb.t, %bb.s
  %i.ar = atomicrmw xchg ptr %.val.i16, i32 0 release, align 4, !noalias !12014
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26, !prof !19

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26 unwind label %.loopexit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.at = load i64, ptr %i.c, align 8, !noundef !13 ; 2 uses
  %i.au = icmp ult i64 %i.h, %i.at
  br i1 %i.au, label %bb.w, label %bb.g

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26
  %i.av = load ptr, ptr %i.i, align 8, !nonnull !13, !noundef !13
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.h
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEE8try_lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.aw)
          to label %bb.x unwind label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.ax = load i64, ptr %i.a, align 8, !range !18, !noundef !13
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.y, label %bb.i

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12015)
  %.val.i16.1 = load ptr, ptr %i.j, align 8, !alias.scope !12015 ; 4 uses
  %.val3.i17.1 = load i8, ptr %i.k, align 8, !range !26, !alias.scope !12015, !noundef !13 ; 2 uses
  %.not.i.i18.1 = icmp eq i8 %.val3.i17.1, 2
  br i1 %.not.i.i18.1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.1, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.1) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i16.1, i64 4
end_hunk_0
