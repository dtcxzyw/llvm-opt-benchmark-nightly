Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE8try_sendCsgZAIVb0XKpv_9ssservice:bb.a
  br label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE9do_send_bCsgZAIVb0XKpv_9ssservice.exit

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.a, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93630)
  %i.ao = load ptr, ptr %1, align 8, !alias.scope !93631, !nonnull !177, !noundef !177
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 8, !noalias !93632
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread
  %.sroa.05.0.i.i = phi i64 [ %i.aq, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.01.0.i.i.i1, %bb.s ] ; 4 uses
  %.not.i.i = icmp sgt i64 %.sroa.05.0.i.i, -1
  %i.ar = and i64 %.sroa.05.0.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not11.i.i = icmp eq i64 %i.ar, 9223372036854775807
  br i1 %.not11.i.i, label %bb.r, label %bb.s, !prof !186

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2347, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2348) #62, !noalias !93632
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.as = add nsw i64 %.sroa.05.0.i.i, 1
  %i.at = or i64 %i.as, -9223372036854775808
  %i.au = cmpxchg ptr %i.ap, i64 %.sroa.05.0.i.i, i64 %i.at seq_cst seq_cst, align 8, !noalias !93632 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.au, 1
  %.sroa.01.0.i.i.i1 = extractvalue { i64, i1 } %i.au, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.t, label %bb.p

bb.t:                                             ; preds = %bb.s
  %i.av = load ptr, ptr %1, align 8, !alias.scope !93628, !nonnull !177, !noundef !177 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !93633, !noundef !177
  %.not.i = icmp ult i64 %i.ar, %i.ax
  br i1 %.not.i, label %bb.v, label %bb.x

bb.u:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull readonly align 8 dereferenceable(176) %2, i64 176, i1 false), !alias.scope !93634
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !93627
  br label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE9do_send_bCsgZAIVb0XKpv_9ssservice.exit

bb.v:                                             ; preds = %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE4parkCsgZAIVb0XKpv_9ssservice.exit.i, %bb.t
  %.val.i2 = phi ptr [ %.val.pre.i, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE4parkCsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.av, %bb.t ] ; 2 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !93635
  %i.ay = tail call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 184, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !93635 ; 5 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.w, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE21queue_push_and_signalCsgZAIVb0XKpv_9ssservice.exit.i, !prof !182

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 184) #61, !noalias !93635
  unreachable

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE21queue_push_and_signalCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ay, ptr noundef nonnull readonly align 8 dereferenceable(176) %2, i64 176, i1 false), !noalias !93636
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 176
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !93637
  %i.bb = atomicrmw xchg ptr %i.ba, ptr %i.ay acq_rel, align 8, !noalias !93637
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 176
  store atomic ptr %i.ay, ptr %i.bc release, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i2, i64 72
  tail call void @_RNvMNtNtNtCsaUkHVQFH9AD_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.bd) #52, !noalias !93638
  store i64 -2, ptr %0, align 8, !alias.scope !93627
  br label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE9do_send_bCsgZAIVb0XKpv_9ssservice.exit

bb.x:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93639)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !93640, !nonnull !177, !noundef !177 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 5 uses
  %i.bh = cmpxchg ptr %i.bg, i32 0, i32 1 acquire monotonic, align 4, !noalias !93641
  %i.bi = extractvalue { i32, i1 } %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.y, !prof !191

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bg) #52, !noalias !93641
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bj = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !93641
  %i.bk = and i64 %i.bj, 9223372036854775807
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.aa, !prof !191

bb.aa:                                            ; preds = %bb.z
  %i.bm = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #59, !noalias !93641
  %i.bn = xor i1 %i.bm, true
  %i.bo = zext i1 %i.bn to i8
  br label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.bo, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 20 ; 2 uses
  %i.bq = load atomic i8, ptr %i.bp monotonic, align 1, !noalias !93641
  %.not.i.i.not.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.ab, !prof !191

bb.ab:                                            ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93642
  store ptr %i.bg, ptr %i.a, align 8, !noalias !93642
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.br, align 8, !noalias !93642
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1963, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1970, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2349) #62, !noalias !93643
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.bs = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.bt, align 8, !noalias !93644, !align !185, !noundef !177 ; 2 uses
  %i.bu = icmp eq ptr %.val.i.i, null
  br i1 %i.bu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.bv = getelementptr i8, ptr %i.bf, i64 32
  %.val1.i.i = load ptr, ptr %i.bv, align 8, !noalias !93644
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !93644, !nonnull !177, !noundef !177
  tail call void %i.bx(ptr noundef %.val1.i.i) #52, !noalias !93644, !inline_history !93620
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.ac, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i
  store ptr null, ptr %i.bt, align 8, !noalias !93644
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store i8 1, ptr %i.by, align 8, !noalias !93644
  br i1 %i.bs, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.bz = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !93644
  %i.ca = and i64 %i.bz, 9223372036854775807
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ae, !prof !191

bb.ae:                                            ; preds = %bb.ad
  %i.cc = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #59, !noalias !93644
  br i1 %i.cc, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store atomic i8 1, ptr %i.bp monotonic, align 4, !noalias !93644
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.cd = atomicrmw xchg ptr %i.bg, i32 0 release, align 4, !noalias !93644
  %i.ce = icmp eq i32 %i.cd, 2
  br i1 %i.ce, label %bb.ag, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsgZAIVb0XKpv_9ssservice.exit.i.i, !prof !186

bb.ag:                                            ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bg) #52, !noalias !93644
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.ag, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.cf = atomicrmw add ptr %i.bf, i64 1 monotonic, align 8, !noalias !93644
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsgZAIVb0XKpv_9ssservice.exit.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !93645
  %i.ch = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !93645 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ai, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE4parkCsgZAIVb0XKpv_9ssservice.exit.i, !prof !182

bb.ai:                                            ; preds = %bb.ah
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61, !noalias !93645
  unreachable

bb.aj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsgZAIVb0XKpv_9ssservice.exit.i.i
  tail call void @llvm.trap()
  unreachable

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE4parkCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.ah
  %i.cj = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr null, ptr %i.ch, align 8, !noalias !93644
  %.sroa.4.0..sroa_idx.i.i4.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.bf, ptr %.sroa.4.0..sroa_idx.i.i4.i, align 8, !noalias !93644
  %i.ck = atomicrmw xchg ptr %i.cj, ptr %i.ch acq_rel, align 8, !noalias !93644
  store atomic ptr %i.ch, ptr %i.ck release, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.cm = load atomic i64, ptr %i.cl seq_cst, align 8, !noalias !93644
  %.lobit.i.i = lshr i64 %i.cm, 63
  %i.cn = trunc nuw nsw i64 %.lobit.i.i to i8
  store i8 %i.cn, ptr %i.c, align 8, !alias.scope !93640
  %.val.pre.i = load ptr, ptr %1, align 8, !alias.scope !93628
  br label %bb.v

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE9do_send_bCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE21queue_push_and_signalCsgZAIVb0XKpv_9ssservice.exit.i, %bb.u, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RNvMsk_NtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aesINtB5_3AesKjb_E3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(352) initializes((0, 352)) %0, <2 x i64> %.0.val) unnamed_addr #25 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %.0.val, i8 1)
  %i.b = bitcast <2 x i64> %i.a to <4 x i32>
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.d = bitcast <4 x i32> %i.c to <2 x i64>
  %i.e = bitcast <2 x i64> %.0.val to <16 x i8>
  %1 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.e, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %2 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %1, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %3 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %2, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.f = xor <16 x i8> %1, %3
  %i.g = xor <16 x i8> %i.f, %2
  %i.h = bitcast <16 x i8> %i.g to <2 x i64>
  %i.i = xor <2 x i64> %i.h, %i.d
  %i.j = xor <2 x i64> %i.i, %.0.val              ; 5 uses
  %i.k = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.j, i8 2)
  %i.l = bitcast <2 x i64> %i.k to <4 x i32>
  %i.m = shufflevector <4 x i32> %i.l, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.n = bitcast <4 x i32> %i.m to <2 x i64>
  %i.o = bitcast <2 x i64> %i.j to <16 x i8>
  %4 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.o, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %5 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %4, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %6 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %5, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.p = xor <16 x i8> %4, %6
  %i.q = xor <16 x i8> %i.p, %5
  %i.r = bitcast <16 x i8> %i.q to <2 x i64>
  %i.s = xor <2 x i64> %i.n, %i.r
  %i.t = xor <2 x i64> %i.s, %i.j                 ; 5 uses
  %i.u = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.t, i8 4)
  %i.v = bitcast <2 x i64> %i.u to <4 x i32>
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.x = bitcast <4 x i32> %i.w to <2 x i64>
  %i.y = bitcast <2 x i64> %i.t to <16 x i8>
  %7 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.y, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %8 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %7, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %9 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %8, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.z = xor <16 x i8> %7, %9
  %i.aa = xor <16 x i8> %i.z, %8
  %i.ab = bitcast <16 x i8> %i.aa to <2 x i64>
  %i.ac = xor <2 x i64> %i.x, %i.ab
  %i.ad = xor <2 x i64> %i.ac, %i.t               ; 5 uses
  %i.ae = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.ad, i8 8)
  %i.af = bitcast <2 x i64> %i.ae to <4 x i32>
  %i.ag = shufflevector <4 x i32> %i.af, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ah = bitcast <4 x i32> %i.ag to <2 x i64>
  %i.ai = bitcast <2 x i64> %i.ad to <16 x i8>
  %10 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ai, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %11 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %10, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %12 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %11, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.aj = xor <16 x i8> %10, %12
  %i.ak = xor <16 x i8> %i.aj, %11
  %i.al = bitcast <16 x i8> %i.ak to <2 x i64>
  %i.am = xor <2 x i64> %i.ah, %i.al
  %i.an = xor <2 x i64> %i.am, %i.ad              ; 5 uses
  %i.ao = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.an, i8 16)
  %i.ap = bitcast <2 x i64> %i.ao to <4 x i32>
  %i.aq = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ar = bitcast <4 x i32> %i.aq to <2 x i64>
  %i.as = bitcast <2 x i64> %i.an to <16 x i8>
  %13 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.as, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %14 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %13, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %15 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %14, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.at = xor <16 x i8> %13, %15
  %i.au = xor <16 x i8> %i.at, %14
  %i.av = bitcast <16 x i8> %i.au to <2 x i64>
  %i.aw = xor <2 x i64> %i.ar, %i.av
  %i.ax = xor <2 x i64> %i.aw, %i.an              ; 5 uses
  %i.ay = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.ax, i8 32)
  %i.az = bitcast <2 x i64> %i.ay to <4 x i32>
  %i.ba = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bb = bitcast <4 x i32> %i.ba to <2 x i64>
  %i.bc = bitcast <2 x i64> %i.ax to <16 x i8>
  %16 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bc, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %17 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %16, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %18 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %17, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bd = xor <16 x i8> %16, %18
  %i.be = xor <16 x i8> %i.bd, %17
  %i.bf = bitcast <16 x i8> %i.be to <2 x i64>
  %i.bg = xor <2 x i64> %i.bb, %i.bf
  %i.bh = xor <2 x i64> %i.bg, %i.ax              ; 5 uses
  %i.bi = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.bh, i8 64)
  %i.bj = bitcast <2 x i64> %i.bi to <4 x i32>
  %i.bk = shufflevector <4 x i32> %i.bj, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bl = bitcast <4 x i32> %i.bk to <2 x i64>
  %i.bm = bitcast <2 x i64> %i.bh to <16 x i8>
  %19 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bm, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %20 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %19, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %21 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %20, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bn = xor <16 x i8> %19, %21
  %i.bo = xor <16 x i8> %i.bn, %20
  %i.bp = bitcast <16 x i8> %i.bo to <2 x i64>
  %i.bq = xor <2 x i64> %i.bl, %i.bp
  %i.br = xor <2 x i64> %i.bq, %i.bh              ; 5 uses
  %i.bs = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.br, i8 -128)
  %i.bt = bitcast <2 x i64> %i.bs to <4 x i32>
  %i.bu = shufflevector <4 x i32> %i.bt, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bv = bitcast <4 x i32> %i.bu to <2 x i64>
  %i.bw = bitcast <2 x i64> %i.br to <16 x i8>
  %22 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bw, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %23 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %22, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %24 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %23, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bx = xor <16 x i8> %22, %24
  %i.by = xor <16 x i8> %i.bx, %23
  %i.bz = bitcast <16 x i8> %i.by to <2 x i64>
  %i.ca = xor <2 x i64> %i.bv, %i.bz
  %i.cb = xor <2 x i64> %i.ca, %i.br              ; 5 uses
  %i.cc = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.cb, i8 27)
  %i.cd = bitcast <2 x i64> %i.cc to <4 x i32>
  %i.ce = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cf = bitcast <4 x i32> %i.ce to <2 x i64>
  %i.cg = bitcast <2 x i64> %i.cb to <16 x i8>
  %25 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.cg, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %26 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %25, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %27 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %26, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ch = xor <16 x i8> %25, %27
  %i.ci = xor <16 x i8> %i.ch, %26
  %i.cj = bitcast <16 x i8> %i.ci to <2 x i64>
  %i.ck = xor <2 x i64> %i.cf, %i.cj
  %i.cl = xor <2 x i64> %i.ck, %i.cb              ; 5 uses
  %i.cm = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.cl, i8 54)
  %i.cn = bitcast <2 x i64> %i.cm to <4 x i32>
  %i.co = shufflevector <4 x i32> %i.cn, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cp = bitcast <4 x i32> %i.co to <2 x i64>
  %i.cq = bitcast <2 x i64> %i.cl to <16 x i8>
  %28 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.cq, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %29 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %28, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %30 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %29, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.cr = xor <16 x i8> %28, %30
  %i.cs = xor <16 x i8> %i.cr, %29
  %i.ct = bitcast <16 x i8> %i.cs to <2 x i64>
  %i.cu = xor <2 x i64> %i.cp, %i.ct
  %i.cv = xor <2 x i64> %i.cu, %i.cl              ; 2 uses
  %i.cw = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.cl)
  %i.cx = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.cb)
  %i.cy = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.br)
  %i.cz = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.bh)
  %i.da = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.ax)
  %i.db = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.an)
  %i.dc = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.ad)
  %i.dd = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.t)
  %i.de = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.j)
  store <2 x i64> %.0.val, ptr %0, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.j, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.t, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.ad, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.an, ptr %.sroa.11.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.ax, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %i.bh, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.br, ptr %.sroa.17.0..sroa_idx, align 16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i64> %i.cb, ptr %.sroa.19.0..sroa_idx, align 16
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x i64> %i.cl, ptr %.sroa.21.0..sroa_idx, align 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x i64> %i.cv, ptr %.sroa.23.0..sroa_idx, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x i64> %i.cv, ptr %i.df, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x i64> %i.cw, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x i64> %i.cx, ptr %.sroa.52.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x i64> %i.cy, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x i64> %i.cz, ptr %.sroa.73.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <2 x i64> %i.da, ptr %.sroa.8.0..sroa_idx, align 16
  %.sroa.94.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <2 x i64> %i.db, ptr %.sroa.94.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <2 x i64> %i.dc, ptr %.sroa.10.0..sroa_idx, align 16
  %.sroa.115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x i64> %i.dd, ptr %.sroa.115.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <2 x i64> %i.de, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <2 x i64> %.0.val, ptr %.sroa.136.0..sroa_idx, align 16
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local14ServerReloaderE9drop_slowCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !177, !noundef !177 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93658)
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !93659 ; 2 uses
  %i.c = icmp eq i64 %.val.i, 0
  br i1 %i.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !93658, !nonnull !177, !noundef !177
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !93660
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93663)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !93664, !nonnull !177, !noundef !177
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !93664
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local14ServerReloaderECsgZAIVb0XKpv_9ssservice.exit

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsgZAIVb0XKpv_9ssservice.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancer17PingBalancerInnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #59
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local14ServerReloaderECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local14ServerReloaderECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsgZAIVb0XKpv_9ssservice.exit.i, %bb.c
  %i.i = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local14ServerReloaderRNtNtBG_5alloc6GlobalEECsgZAIVb0XKpv_9ssservice.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local14ServerReloaderECsgZAIVb0XKpv_9ssservice.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local14ServerReloaderRNtNtBG_5alloc6GlobalEECsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local14ServerReloaderRNtNtBG_5alloc6GlobalEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local14ServerReloaderRNtNtBG_5alloc6GlobalEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local14ServerReloaderECsgZAIVb0XKpv_9ssservice.exit, %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RNvMsq_NtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aesINtB5_3AesKjf_E3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(480) initializes((0, 480)) %0, <2 x i64> %.0.val, <2 x i64> %.16.val) unnamed_addr #25 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %.16.val, i8 1)
  %i.b = bitcast <2 x i64> %i.a to <4 x i32>
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.d = bitcast <4 x i32> %i.c to <2 x i64>
  %i.e = bitcast <2 x i64> %.0.val to <16 x i8>
  %1 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.e, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %2 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %1, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %3 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %2, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.f = xor <16 x i8> %1, %3
  %i.g = xor <16 x i8> %i.f, %2
  %i.h = bitcast <16 x i8> %i.g to <2 x i64>
  %i.i = xor <2 x i64> %i.h, %i.d
  %i.j = xor <2 x i64> %i.i, %.0.val              ; 5 uses
  %i.k = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.j, i8 0)
  %i.l = bitcast <2 x i64> %i.k to <4 x i32>
  %i.m = shufflevector <4 x i32> %i.l, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.n = bitcast <2 x i64> %.16.val to <16 x i8>
  %4 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.n, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %5 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %4, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %6 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %5, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.o = xor <16 x i8> %4, %6
  %i.p = xor <16 x i8> %i.o, %5
  %i.q = bitcast <16 x i8> %i.p to <2 x i64>
  %i.r = bitcast <4 x i32> %i.m to <2 x i64>
  %i.s = xor <2 x i64> %i.q, %i.r
  %i.t = xor <2 x i64> %i.s, %.16.val             ; 5 uses
  %i.u = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.t, i8 2)
  %i.v = bitcast <2 x i64> %i.u to <4 x i32>
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.x = bitcast <4 x i32> %i.w to <2 x i64>
  %i.y = bitcast <2 x i64> %i.j to <16 x i8>
  %7 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.y, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %8 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %7, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %9 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %8, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.z = xor <16 x i8> %7, %9
  %i.aa = xor <16 x i8> %i.z, %8
  %i.ab = bitcast <16 x i8> %i.aa to <2 x i64>
  %i.ac = xor <2 x i64> %i.x, %i.ab
  %i.ad = xor <2 x i64> %i.ac, %i.j               ; 5 uses
  %i.ae = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.ad, i8 0)
  %i.af = bitcast <2 x i64> %i.ae to <4 x i32>
  %i.ag = shufflevector <4 x i32> %i.af, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ah = bitcast <2 x i64> %i.t to <16 x i8>
  %10 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ah, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %11 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %10, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %12 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %11, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ai = xor <16 x i8> %10, %12
  %i.aj = xor <16 x i8> %i.ai, %11
  %i.ak = bitcast <16 x i8> %i.aj to <2 x i64>
  %i.al = bitcast <4 x i32> %i.ag to <2 x i64>
  %i.am = xor <2 x i64> %i.al, %i.ak
  %i.an = xor <2 x i64> %i.am, %i.t               ; 5 uses
  %i.ao = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.an, i8 4)
  %i.ap = bitcast <2 x i64> %i.ao to <4 x i32>
  %i.aq = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ar = bitcast <4 x i32> %i.aq to <2 x i64>
  %i.as = bitcast <2 x i64> %i.ad to <16 x i8>
  %13 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.as, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %14 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %13, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %15 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %14, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.at = xor <16 x i8> %13, %15
  %i.au = xor <16 x i8> %i.at, %14
  %i.av = bitcast <16 x i8> %i.au to <2 x i64>
  %i.aw = xor <2 x i64> %i.ar, %i.av
  %i.ax = xor <2 x i64> %i.aw, %i.ad              ; 5 uses
  %i.ay = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.ax, i8 0)
  %i.az = bitcast <2 x i64> %i.ay to <4 x i32>
  %i.ba = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bb = bitcast <2 x i64> %i.an to <16 x i8>
  %16 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bb, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %17 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %16, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %18 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %17, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bc = xor <16 x i8> %16, %18
  %i.bd = xor <16 x i8> %i.bc, %17
  %i.be = bitcast <16 x i8> %i.bd to <2 x i64>
  %i.bf = bitcast <4 x i32> %i.ba to <2 x i64>
  %i.bg = xor <2 x i64> %i.bf, %i.be
  %i.bh = xor <2 x i64> %i.bg, %i.an              ; 5 uses
  %i.bi = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.bh, i8 8)
  %i.bj = bitcast <2 x i64> %i.bi to <4 x i32>
  %i.bk = shufflevector <4 x i32> %i.bj, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bl = bitcast <4 x i32> %i.bk to <2 x i64>
  %i.bm = bitcast <2 x i64> %i.ax to <16 x i8>
  %19 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bm, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %20 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %19, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %21 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %20, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bn = xor <16 x i8> %19, %21
  %i.bo = xor <16 x i8> %i.bn, %20
  %i.bp = bitcast <16 x i8> %i.bo to <2 x i64>
  %i.bq = xor <2 x i64> %i.bl, %i.bp
  %i.br = xor <2 x i64> %i.bq, %i.ax              ; 5 uses
  %i.bs = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.br, i8 0)
  %i.bt = bitcast <2 x i64> %i.bs to <4 x i32>
  %i.bu = shufflevector <4 x i32> %i.bt, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bv = bitcast <2 x i64> %i.bh to <16 x i8>
  %22 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bv, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %23 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %22, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %24 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %23, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bw = xor <16 x i8> %22, %24
  %i.bx = xor <16 x i8> %i.bw, %23
  %i.by = bitcast <16 x i8> %i.bx to <2 x i64>
  %i.bz = bitcast <4 x i32> %i.bu to <2 x i64>
  %i.ca = xor <2 x i64> %i.bz, %i.by
  %i.cb = xor <2 x i64> %i.ca, %i.bh              ; 5 uses
  %i.cc = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.cb, i8 16)
  %i.cd = bitcast <2 x i64> %i.cc to <4 x i32>
  %i.ce = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cf = bitcast <4 x i32> %i.ce to <2 x i64>
  %i.cg = bitcast <2 x i64> %i.br to <16 x i8>
  %25 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.cg, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %26 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %25, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %27 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %26, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ch = xor <16 x i8> %25, %27
  %i.ci = xor <16 x i8> %i.ch, %26
  %i.cj = bitcast <16 x i8> %i.ci to <2 x i64>
  %i.ck = xor <2 x i64> %i.cf, %i.cj
  %i.cl = xor <2 x i64> %i.ck, %i.br              ; 5 uses
  %i.cm = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.cl, i8 0)
  %i.cn = bitcast <2 x i64> %i.cm to <4 x i32>
  %i.co = shufflevector <4 x i32> %i.cn, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cp = bitcast <2 x i64> %i.cb to <16 x i8>
  %28 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.cp, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %29 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %28, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %30 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %29, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.cq = xor <16 x i8> %28, %30
  %i.cr = xor <16 x i8> %i.cq, %29
  %i.cs = bitcast <16 x i8> %i.cr to <2 x i64>
  %i.ct = bitcast <4 x i32> %i.co to <2 x i64>
  %i.cu = xor <2 x i64> %i.ct, %i.cs
  %i.cv = xor <2 x i64> %i.cu, %i.cb              ; 5 uses
  %i.cw = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.cv, i8 32)
  %i.cx = bitcast <2 x i64> %i.cw to <4 x i32>
  %i.cy = shufflevector <4 x i32> %i.cx, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cz = bitcast <4 x i32> %i.cy to <2 x i64>
  %i.da = bitcast <2 x i64> %i.cl to <16 x i8>
  %31 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.da, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %32 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %31, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %33 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %32, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.db = xor <16 x i8> %31, %33
  %i.dc = xor <16 x i8> %i.db, %32
  %i.dd = bitcast <16 x i8> %i.dc to <2 x i64>
  %i.de = xor <2 x i64> %i.cz, %i.dd
  %i.df = xor <2 x i64> %i.de, %i.cl              ; 5 uses
  %i.dg = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.df, i8 0)
  %i.dh = bitcast <2 x i64> %i.dg to <4 x i32>
  %i.di = shufflevector <4 x i32> %i.dh, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dj = bitcast <2 x i64> %i.cv to <16 x i8>
  %34 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dj, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %35 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %34, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %36 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %35, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.dk = xor <16 x i8> %34, %36
  %i.dl = xor <16 x i8> %i.dk, %35
  %i.dm = bitcast <16 x i8> %i.dl to <2 x i64>
  %i.dn = bitcast <4 x i32> %i.di to <2 x i64>
  %i.do = xor <2 x i64> %i.dn, %i.dm
  %i.dp = xor <2 x i64> %i.do, %i.cv              ; 3 uses
  %i.dq = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.dp, i8 64)
  %i.dr = bitcast <2 x i64> %i.dq to <4 x i32>
  %i.ds = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dt = bitcast <4 x i32> %i.ds to <2 x i64>
  %i.du = bitcast <2 x i64> %i.df to <16 x i8>
  %37 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.du, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %38 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %37, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %39 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %38, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.dv = xor <16 x i8> %37, %39
  %i.dw = xor <16 x i8> %i.dv, %38
  %i.dx = bitcast <16 x i8> %i.dw to <2 x i64>
  %i.dy = xor <2 x i64> %i.dt, %i.dx
  %i.dz = xor <2 x i64> %i.dy, %i.df              ; 2 uses
  %i.ea = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.dp)
  %i.eb = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.df)
  %i.ec = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.cv)
  %i.ed = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.cl)
  %i.ee = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.cb)
  %i.ef = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.br)
  %i.eg = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.bh)
  %i.eh = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.ax)
  %i.ei = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.an)
  %i.ej = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.ad)
  %i.ek = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.t)
  %i.el = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.j)
  %i.em = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %.16.val)
  store <2 x i64> %.0.val, ptr %0, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %.16.val, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.j, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.t, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.ad, ptr %.sroa.11.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.an, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %i.ax, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.bh, ptr %.sroa.17.0..sroa_idx, align 16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i64> %i.br, ptr %.sroa.19.0..sroa_idx, align 16
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x i64> %i.cb, ptr %.sroa.21.0..sroa_idx, align 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x i64> %i.cl, ptr %.sroa.23.0..sroa_idx, align 16
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x i64> %i.cv, ptr %.sroa.25.0..sroa_idx, align 16
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x i64> %i.df, ptr %.sroa.27.0..sroa_idx, align 16
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x i64> %i.dp, ptr %.sroa.29.0..sroa_idx, align 16
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x i64> %i.dz, ptr %.sroa.31.0..sroa_idx, align 16
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x i64> %i.dz, ptr %i.en, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <2 x i64> %i.ea, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <2 x i64> %i.eb, ptr %.sroa.52.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <2 x i64> %i.ec, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x i64> %i.ed, ptr %.sroa.73.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <2 x i64> %i.ee, ptr %.sroa.8.0..sroa_idx, align 16
  %.sroa.94.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <2 x i64> %i.ef, ptr %.sroa.94.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <2 x i64> %i.eg, ptr %.sroa.10.0..sroa_idx, align 16
  %.sroa.115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store <2 x i64> %i.eh, ptr %.sroa.115.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <2 x i64> %i.ei, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store <2 x i64> %i.ej, ptr %.sroa.136.0..sroa_idx, align 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 416
  store <2 x i64> %i.ek, ptr %.sroa.14.0..sroa_idx, align 16
  %.sroa.157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  store <2 x i64> %i.el, ptr %.sroa.157.0..sroa_idx, align 16
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <2 x i64> %i.em, ptr %.sroa.16.0..sroa_idx, align 16
  %.sroa.178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464
  store <2 x i64> %.0.val, ptr %.sroa.178.0..sroa_idx, align 16
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEEE12next_messageCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.4.i.i = alloca [16 x i8], align 8        ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !noundef !177 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !93686, !noundef !177 ; 3 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8, !noalias !93686 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtCslXgxf2tUV4p_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEEE3popCsgZAIVb0XKpv_9ssservice.exit.i, %bb.b
  %.lcssa9.i = phi ptr [ %i.f, %bb.b ], [ %i.s, %_RNvMs1_NtNtCslXgxf2tUV4p_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEEE3popCsgZAIVb0XKpv_9ssservice.exit.i ] ; 3 uses
  %.lcssa.i = phi ptr [ %i.g, %bb.b ], [ %i.t, %_RNvMs1_NtNtCslXgxf2tUV4p_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEEE3popCsgZAIVb0XKpv_9ssservice.exit.i ] ; 3 uses
  store ptr %.lcssa.i, ptr %i.e, align 8, !noalias !93686
  %i.i = getelementptr inbounds nuw i8, ptr %.lcssa9.i, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !noalias !93686, !noundef !177
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !191

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtCslXgxf2tUV4p_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEEE3popCsgZAIVb0XKpv_9ssservice.exit.i
  %i.k = phi ptr [ %i.s, %_RNvMs1_NtNtCslXgxf2tUV4p_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEEE3popCsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.f, %bb.b ]
  %i.l = load atomic ptr, ptr %i.d acquire, align 8, !noalias !93686
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %bb.u, label %_RNvMs1_NtNtCslXgxf2tUV4p_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEEE3popCsgZAIVb0XKpv_9ssservice.exit.i

bb.c:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2190, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2192) #62, !noalias !93686
  unreachable

bb.d:                                             ; preds = %._crit_edge.i
  %i.n = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !93686, !noundef !177 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.o, null
  br i1 %.not6.i.i, label %bb.e, label %bb.f, !prof !186

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2193, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2194) #62, !noalias !93686
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false)
  store ptr null, ptr %i.n, align 8, !noalias !93686
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !noalias !93686, !noundef !177 ; 3 uses
  %i.p = getelementptr i8, ptr %.lcssa9.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.p, align 8, !noalias !93686 ; 2 uses
  %i.q = icmp eq ptr %.val.i.i.i, null
  %i.r = icmp eq i64 %.val1.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond.i.i.i.i.i, label %bb.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #52, !noalias !93687
  br label %bb.i

_RNvMs1_NtNtCslXgxf2tUV4p_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEEE3popCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now() #52, !noalias !93688
  %i.s = load ptr, ptr %i.e, align 8, !noalias !93686, !noundef !177 ; 3 uses
  %i.t = load atomic ptr, ptr %i.s acquire, align 8, !noalias !93686 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEEE10unpark_oneCsgZAIVb0XKpv_9ssservice.exit.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCslXgxf2tUV4p_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtB12_5boxed3BoxShEEEEEECsgZAIVb0XKpv_9ssservice.exit, %bb.v, %bb.g
  ret void

bb.i:                                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.f
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.lcssa9.i, i64 noundef 32, i64 noundef 8) #52, !noalias !93686
  %.val = load ptr, ptr %1, align 8, !noundef !177 ; 3 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEEE10unpark_oneCsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.w = tail call fastcc noundef ptr @_RNvMs1_NtNtCslXgxf2tUV4p_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEE8pop_spinCsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.v) #52 ; 5 uses
  %.not2.i = icmp eq ptr %i.w, null
  br i1 %.not2.i, label %_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEEE10unpark_oneCsgZAIVb0XKpv_9ssservice.exit.thread17, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.w, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %i.y = cmpxchg ptr %i.x, i32 0, i32 1 acquire monotonic, align 4, !noalias !93689
  %i.z = extractvalue { i32, i1 } %i.y, 1
  br i1 %i.z, label %bb.m, label %bb.l, !prof !191

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.x) #52, !noalias !93689
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !93689
  %i.ab = and i64 %i.aa, 9223372036854775807
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.n, !prof !191

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #59, !noalias !93689
  %i.ae = xor i1 %i.ad, true
  %i.af = zext i1 %i.ae to i8
  br label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i

_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.n, %bb.m
  %.sroa.01.0.i.i.i = phi i8 [ %i.af, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 20 ; 2 uses
  %i.ah = load atomic i8, ptr %i.ag monotonic, align 1, !noalias !93689
  %.not.i.i.not.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.not.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.o, !prof !191
end_hunk_0
