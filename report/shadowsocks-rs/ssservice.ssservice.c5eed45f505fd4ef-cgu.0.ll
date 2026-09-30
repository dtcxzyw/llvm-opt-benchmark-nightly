Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40157
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE9next_backCsgZAIVb0XKpv_9ssservice:bb.a
bb.h:                                             ; preds = %bb.f
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !95765, !noalias !95766
  br label %.loopexit

bb.i:                                             ; preds = %bb.k, %bb.j, %bb.g
  store i64 %i.ag, ptr %i.o, align 8, !alias.scope !95765, !noalias !95766
  %i.ah = icmp ult i64 %i.ag, %i.n
  br i1 %i.ah, label %.loopexit, label %bb.e

bb.j:                                             ; preds = %bb.g
  %i.ai = sub nuw i64 %i.ag, %i.v                 ; 5 uses
  %i.aj = add i64 %i.ai, %i.u                     ; 4 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %.not16.i = icmp ugt i64 %i.aj, %.val6
  %or.cond.i = or i1 %i.ak, %.not16.i
  br i1 %or.cond.i, label %bb.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ai
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.al, ptr nonnull %i.r, i64 %i.u), !noalias !95766
  %i.am = icmp eq i32 %bcmp.i, 0
  br i1 %i.am, label %bb.n, label %bb.i

bb.l:                                             ; preds = %bb.c
  %i.an = load i8, ptr %i.a, align 1, !range !181, !noundef !178
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.m, label %bb.d

bb.m:                                             ; preds = %bb.l, %bb.c, %bb.a, %bb.o
  %.sroa.8.0 = phi i64 [ %i.i, %bb.c ], [ %.sroa.8.1, %bb.o ], [ undef, %bb.a ], [ undef, %bb.l ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ %.sroa.0.1, %bb.o ], [ null, %bb.a ], [ null, %bb.l ]
  %i.ap = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.aq = insertvalue { ptr, i64 } %i.ap, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %i.aq

bb.n:                                             ; preds = %bb.k
  store i64 %i.ai, ptr %i.o, align 8, !alias.scope !95765, !noalias !95766
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !178
  %i.at = sub nuw i64 %i.as, %i.aj
  store i64 %i.ai, ptr %i.ar, align 8
  br label %bb.o

.loopexit:                                        ; preds = %bb.i, %bb.e, %bb.h, %bb.d
  store i8 1, ptr %i.a, align 1
  %i.au = load i64, ptr %0, align 8, !noundef !178 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noundef !178
  %i.ax = sub nuw i64 %i.aw, %i.au
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.loopexit
  %.sroa.8.1 = phi i64 [ %i.at, %bb.n ], [ %i.ax, %.loopexit ]
  %.pn = phi i64 [ %i.aj, %bb.n ], [ %i.au, %.loopexit ]
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.val, i64 %.pn
  br label %bb.m
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE8try_sendCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(176) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95798)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !181, !alias.scope !95798, !noundef !178
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !95798, !nonnull !178, !noundef !178 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  %i.i = cmpxchg ptr %i.h, i32 0, i32 1 acquire monotonic, align 4, !noalias !95799
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.c, !prof !192

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.h) #53, !noalias !95799
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !95799
  %i.l = and i64 %i.k, 9223372036854775807
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.e, !prof !192

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #60, !noalias !95799
  %i.o = xor i1 %i.n, true
  %i.p = zext i1 %i.o to i8
  br label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i

_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i.i = phi i8 [ %i.p, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 3 uses
  %i.r = load atomic i8, ptr %i.q monotonic, align 1, !noalias !95799
  %.not.i.i.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.not.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.f, !prof !192

bb.f:                                             ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !95800
  store ptr %i.h, ptr %i.b, align 8, !noalias !95800
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.s, align 8, !noalias !95800
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1963, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1970, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2346) #63, !noalias !95801
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i
  %i.t = trunc nuw i8 %.sroa.01.0.i.i.i to i1     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.v = load i8, ptr %i.u, align 8, !range !181, !noalias !95798, !noundef !178
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i
  store i8 0, ptr %i.c, align 8, !alias.scope !95798
  br i1 %i.t, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !95798
  %i.y = and i64 %i.x, 9223372036854775807
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.i, !prof !192

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #60, !noalias !95798
  br i1 %i.aa, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store atomic i8 1, ptr %i.q monotonic, align 4, !noalias !95798
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.ab = atomicrmw xchg ptr %i.h, i32 0 release, align 4, !noalias !95798
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread, !prof !187

bb.k:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.val.i = load ptr, ptr %i.ad, align 8, !noalias !95798, !align !186, !noundef !178 ; 2 uses
  %i.ae = icmp eq ptr %.val.i, null
  br i1 %i.ae, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.g, i64 32
  %.val4.i = load ptr, ptr %i.af, align 8, !noalias !95798
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !95798, !nonnull !178, !noundef !178
  tail call void %i.ah(ptr noundef %.val4.i) #53, !noalias !95798, !inline_history !95775
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.l, %bb.k
  store ptr null, ptr %i.ad, align 8, !noalias !95798
  br i1 %i.t, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i
  %i.ai = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !95798
  %i.aj = and i64 %i.ai, 9223372036854775807
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i, label %bb.n, !prof !192

bb.n:                                             ; preds = %bb.m
  %i.al = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #60, !noalias !95798
  br i1 %i.al, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store atomic i8 1, ptr %i.q monotonic, align 4, !noalias !95798
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i: ; preds = %bb.o, %bb.n, %bb.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i
  %i.am = atomicrmw xchg ptr %i.h, i32 0 release, align 4, !noalias !95798
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread6, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread4, !prof !187

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread6: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.h) #53, !noalias !95798
  br label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread4

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.h) #53, !noalias !95798
  br label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread4: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %2, i64 176, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE9do_send_bCsgZAIVb0XKpv_9ssservice.exit

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.a, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95805)
  %i.ao = load ptr, ptr %1, align 8, !alias.scope !95806, !noalias !95807, !nonnull !178, !noundef !178
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 8, !noalias !95808
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread
  %.sroa.05.0.i.i = phi i64 [ %i.aq, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.01.0.i.i.i1, %bb.s ] ; 3 uses
  %.not.i.i = icmp sgt i64 %.sroa.05.0.i.i, -1
  %i.ar = and i64 %.sroa.05.0.i.i, 9223372036854775807 ; 3 uses
  br i1 %.not.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not11.i.i = icmp eq i64 %i.ar, 9223372036854775807
  br i1 %.not11.i.i, label %bb.r, label %bb.s, !prof !187

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2347, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2348) #63, !noalias !95808
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.as = add nuw nsw i64 %i.ar, -9223372036854775807
  %i.at = cmpxchg ptr %i.ap, i64 %.sroa.05.0.i.i, i64 %i.as seq_cst seq_cst, align 8, !noalias !95808 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.at, 1
  %.sroa.01.0.i.i.i1 = extractvalue { i64, i1 } %i.at, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.t, label %bb.p

bb.t:                                             ; preds = %bb.s
  %i.au = load ptr, ptr %1, align 8, !alias.scope !95803, !noalias !95807, !nonnull !178, !noundef !178 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !noalias !95809, !noundef !178
  %.not.i = icmp ult i64 %i.ar, %i.aw
  br i1 %.not.i, label %bb.v, label %bb.x

bb.u:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull readonly align 8 dereferenceable(176) %2, i64 176, i1 false), !alias.scope !95807, !noalias !95803
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !95802, !noalias !95810
  br label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE9do_send_bCsgZAIVb0XKpv_9ssservice.exit

bb.v:                                             ; preds = %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE4parkCsgZAIVb0XKpv_9ssservice.exit.i, %bb.t
  %.val.i2 = phi ptr [ %.val.pre.i, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE4parkCsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.au, %bb.t ] ; 2 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !95811
  %i.ax = tail call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 184, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !95811 ; 5 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.w, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE21queue_push_and_signalCsgZAIVb0XKpv_9ssservice.exit.i, !prof !183

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 184) #62, !noalias !95811
  unreachable

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE21queue_push_and_signalCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(176) %2, i64 176, i1 false), !noalias !95812
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 176
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !95813
  %i.ba = atomicrmw xchg ptr %i.az, ptr %i.ax acq_rel, align 8, !noalias !95813
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 176
  store atomic ptr %i.ax, ptr %i.bb release, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i2, i64 72
  tail call void @_RNvMNtNtNtCsaUkHVQFH9AD_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.bc) #53, !noalias !95814
  store i64 -2, ptr %0, align 8, !alias.scope !95802, !noalias !95810
  br label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE9do_send_bCsgZAIVb0XKpv_9ssservice.exit

bb.x:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95815)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !95816, !noalias !95807, !nonnull !178, !noundef !178 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 5 uses
  %i.bg = cmpxchg ptr %i.bf, i32 0, i32 1 acquire monotonic, align 4, !noalias !95817
  %i.bh = extractvalue { i32, i1 } %i.bg, 1
  br i1 %i.bh, label %bb.z, label %bb.y, !prof !192

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bf) #53, !noalias !95817
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bi = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !95817
  %i.bj = and i64 %i.bi, 9223372036854775807
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.aa, !prof !192

bb.aa:                                            ; preds = %bb.z
  %i.bl = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #60, !noalias !95817
  %i.bm = xor i1 %i.bl, true
  %i.bn = zext i1 %i.bm to i8
  br label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.bn, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 20 ; 2 uses
  %i.bp = load atomic i8, ptr %i.bo monotonic, align 1, !noalias !95817
  %.not.i.i.not.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.ab, !prof !192

bb.ab:                                            ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !95818
  store ptr %i.bf, ptr %i.a, align 8, !noalias !95818
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.bq, align 8, !noalias !95818
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1963, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1970, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2349) #63, !noalias !95819
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.br = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.bs, align 8, !noalias !95820, !align !186, !noundef !178 ; 2 uses
  %i.bt = icmp eq ptr %.val.i.i, null
  br i1 %i.bt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.bu = getelementptr i8, ptr %i.be, i64 32
  %.val1.i.i = load ptr, ptr %i.bu, align 8, !noalias !95820
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !95820, !nonnull !178, !noundef !178
  tail call void %i.bw(ptr noundef %.val1.i.i) #53, !noalias !95820, !inline_history !95795
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.ac, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i
  store ptr null, ptr %i.bs, align 8, !noalias !95820
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store i8 1, ptr %i.bx, align 8, !noalias !95820
  br i1 %i.br, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.by = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !95820
  %i.bz = and i64 %i.by, 9223372036854775807
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ae, !prof !192

bb.ae:                                            ; preds = %bb.ad
  %i.cb = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #60, !noalias !95820
  br i1 %i.cb, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store atomic i8 1, ptr %i.bo monotonic, align 4, !noalias !95820
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.cc = atomicrmw xchg ptr %i.bf, i32 0 release, align 4, !noalias !95820
  %i.cd = icmp eq i32 %i.cc, 2
  br i1 %i.cd, label %bb.ag, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsgZAIVb0XKpv_9ssservice.exit.i.i, !prof !187

bb.ag:                                            ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bf) #53, !noalias !95820
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.ag, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.ce = atomicrmw add ptr %i.be, i64 1 monotonic, align 8, !noalias !95820
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsgZAIVb0XKpv_9ssservice.exit.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !95821
  %i.cg = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !95821 ; 5 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.ai, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE4parkCsgZAIVb0XKpv_9ssservice.exit.i, !prof !183

bb.ai:                                            ; preds = %bb.ah
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #62, !noalias !95821
  unreachable

bb.aj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsgZAIVb0XKpv_9ssservice.exit.i.i
  tail call void @llvm.trap()
  unreachable

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE4parkCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.ah
  %i.ci = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store ptr null, ptr %i.cg, align 8, !noalias !95820
  %.sroa.4.0..sroa_idx.i.i4.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx.i.i4.i, align 8, !noalias !95820
  %i.cj = atomicrmw xchg ptr %i.ci, ptr %i.cg acq_rel, align 8, !noalias !95820
  store atomic ptr %i.cg, ptr %i.cj release, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.cl = load atomic i64, ptr %i.ck seq_cst, align 8, !noalias !95820
  %.lobit.i.i = lshr i64 %i.cl, 63
  %i.cm = trunc nuw nsw i64 %.lobit.i.i to i8
  store i8 %i.cm, ptr %i.c, align 8, !alias.scope !95816, !noalias !95807
  %.val.pre.i = load ptr, ptr %1, align 8, !alias.scope !95803, !noalias !95807
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
  %i.f = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.e, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.g = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.f, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.h = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.g, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.i = xor <16 x i8> %i.f, %i.h
  %i.j = xor <16 x i8> %i.i, %i.g
  %i.k = bitcast <16 x i8> %i.j to <2 x i64>
  %i.l = xor <2 x i64> %i.k, %i.d
  %i.m = xor <2 x i64> %i.l, %.0.val              ; 5 uses
  %i.n = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.m, i8 2)
  %i.o = bitcast <2 x i64> %i.n to <4 x i32>
  %i.p = shufflevector <4 x i32> %i.o, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.q = bitcast <4 x i32> %i.p to <2 x i64>
  %i.r = bitcast <2 x i64> %i.m to <16 x i8>
  %i.s = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.r, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.t = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.s, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.u = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.t, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.v = xor <16 x i8> %i.s, %i.u
  %i.w = xor <16 x i8> %i.v, %i.t
  %i.x = bitcast <16 x i8> %i.w to <2 x i64>
  %i.y = xor <2 x i64> %i.q, %i.x
  %i.z = xor <2 x i64> %i.y, %i.m                 ; 5 uses
  %i.aa = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.z, i8 4)
  %i.ab = bitcast <2 x i64> %i.aa to <4 x i32>
  %i.ac = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ad = bitcast <4 x i32> %i.ac to <2 x i64>
  %i.ae = bitcast <2 x i64> %i.z to <16 x i8>
  %i.af = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ae, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ag = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.af, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ah = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ag, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCscVsx2cUGvkQ_12futures_util6future10select_allINtB5_9SelectAllNtNtCs8UFHSMUhzWe_19shadowsocks_service5utils12ServerHandleENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice:bb.a
  %i.am = add nsw i64 %i.i, -1                    ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !noalias !97309
  store i64 %i.ao, ptr %i.ak, align 8, !noalias !97309
  store i64 %i.am, ptr %i.h, align 8, !alias.scope !97309
  store ptr %i.al, ptr %i.e, align 8
  call void @_RNvMs_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask12remote_abort(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #53
  %i.ap = call noundef zeroext i1 @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.al) #53
  br i1 %i.ap, label %bb.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service5utils12ServerHandleECsgZAIVb0XKpv_9ssservice.exit

bb.m:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs8UFHSMUhzWe_19shadowsocks_service5utils12ServerHandleE11swap_removeCsgZAIVb0XKpv_9ssservice.exit
  call void @_RNvMs_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.al) #53
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service5utils12ServerHandleECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service5utils12ServerHandleECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs8UFHSMUhzWe_19shadowsocks_service5utils12ServerHandleE11swap_removeCsgZAIVb0XKpv_9ssservice.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  store i64 0, ptr %i.h, align 8
  store ptr %.sroa.8.0.ph, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service5utils12ServerHandleECsgZAIVb0XKpv_9ssservice.exit
  %.sink = phi i64 [ 8, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service5utils12ServerHandleECsgZAIVb0XKpv_9ssservice.exit ], [ 16, %bb.a ], [ 16, %bb.j ]
  %.sroa.7.018.sink = phi i64 [ %.sroa.7.018, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service5utils12ServerHandleECsgZAIVb0XKpv_9ssservice.exit ], [ -1, %bb.a ], [ -1, %bb.j ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  store i64 %.sroa.7.018.sink, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtCsi1FNhPBS7PW_11hickory_net4xfer12dns_exchangeINtB5_11DnsExchangeNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtNtB7_10dns_handle9DnsHandle4sendCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(272) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [288 x i8], align 8               ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.9.i = alloca [272 x i8], align 8         ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 16 uses
  %i.h = alloca [288 x i8], align 8               ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.8.i = alloca [272 x i8], align 8         ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97399)
  %i.m = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !97400
  %i.n = icmp ult i64 %i.m, 2
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandlepENtNtB7_10dns_handle9DnsHandle4send10___CALLSITE, i64 16) monotonic, align 8, !noalias !97400 ; 3 uses
  switch i8 %i.o, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !185

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandlepENtNtB7_10dns_handle9DnsHandle4send10___CALLSITE) #60, !noalias !97401 ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.b
  %.sroa.06.0.i = phi i8 [ %i.p, %bb.c ], [ %i.o, %bb.b ], [ %i.o, %bb.b ]
  %i.r = load ptr, ptr @_RNvNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandlepENtNtB7_10dns_handle9DnsHandle4send10___CALLSITE, align 8, !noalias !97400, !nonnull !178, !align !186, !noundef !178
  %i.s = tail call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r, i8 noundef %.sroa.06.0.i) #53, !noalias !97401
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !97400
  call void @_RNvMs7_NtCsi1FNhPBS7PW_11hickory_net4xferNtB5_17OneshotDnsRequest7oneshot(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %2) #53, !noalias !97401
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %.sroa.056.0.copyload.i = load i64, ptr %i.h, align 8, !noalias !97400 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.0..sroa_idx.i, i64 272, i1 false), !noalias !97400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !97400
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.u = load ptr, ptr %i.t, align 8, !noalias !97400, !nonnull !178, !noundef !178
  store ptr %i.u, ptr %i.i, align 8, !noalias !97400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !97400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !97400
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !199, !alias.scope !97399, !noalias !97402, !noundef !178
  %.not.i = icmp eq i8 %i.w, 2                    ; 2 uses
  br i1 %.not.i, label %bb.ai, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr @_RNvNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandlepENtNtB7_10dns_handle9DnsHandle4send10___CALLSITE, align 8, !noalias !97400, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !97400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !97400
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !97400
  store ptr %i.z, ptr %i.j, align 8, !noalias !97400
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXNtNtCs2Z77Vc7pSLS_13hickory_proto2op7op_codeNtB2_6OpCodeNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !97400
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %2, ptr %i.aa, align 8, !noalias !97400
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsr_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !97400
  store ptr @3010, ptr %i.k, align 8, !noalias !97400
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.ab, align 8, !noalias !97400
  store ptr %i.k, ptr %i.l, align 8, !noalias !97400
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @19, ptr %i.ac, align 8, !noalias !97400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !97400
  store i64 1, ptr %i.f, align 8, !noalias !97400
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.l, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !97400
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !97400
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !97400
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f) #53, !noalias !97401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !97400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !97400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !97400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !97400
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !97403)
  %i.ad = load ptr, ptr %1, align 8, !alias.scope !97404, !noalias !97405, !nonnull !178, !noundef !178 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  %i.af = load atomic i64, ptr %i.ae seq_cst, align 8, !noalias !97406
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i.i = phi i64 [ %i.af, %bb.g ], [ %.sroa.01.0.i.i.i, %bb.i ] ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !97406, !noundef !178
  %i.ai = sub i64 9223372036854775807, %i.ah
  %i.aj = icmp eq i64 %.sroa.04.0.i.i, %i.ai
  br i1 %i.aj, label %bb.j, label %bb.i, !prof !187

bb.i:                                             ; preds = %bb.h
  %i.ak = add i64 %.sroa.04.0.i.i, 1
  %i.al = cmpxchg ptr %i.ae, i64 %.sroa.04.0.i.i, i64 %i.ak seq_cst seq_cst, align 8, !noalias !97406 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.al, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.al, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.k, label %bb.h

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3698, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3699) #63, !noalias !97406
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.am = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !97406
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !97407
  %i.ao = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !97407 ; 8 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.m, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread.i.i, !prof !183

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #62, !noalias !97407
  unreachable

bb.n:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread.i.i: ; preds = %bb.l
  store i64 1, ptr %i.ao, align 8, !noalias !97406
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !97406
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !97406
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !97406
  %.sroa.721.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr null, ptr %.sroa.721.0..sroa_idx.i.i, align 8, !noalias !97406
  %.sroa.822.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i8 0, ptr %.sroa.822.0..sroa_idx.i.i, align 8, !noalias !97406
  store ptr %i.ad, ptr %i.g, align 8, !noalias !97400
  %.sroa.027.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.ao, ptr %.sroa.027.sroa.4.0..sroa_idx.i, align 8, !noalias !97400
  %.sroa.428.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i8 0, ptr %.sroa.428.0..sroa_idx29.i, align 8, !noalias !97400
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !97408)
  call void @llvm.experimental.noalias.scope.decl(metadata !97409)
  call void @llvm.experimental.noalias.scope.decl(metadata !97410)
  call void @llvm.experimental.noalias.scope.decl(metadata !97411)
  call void @llvm.experimental.noalias.scope.decl(metadata !97412)
  call void @llvm.experimental.noalias.scope.decl(metadata !97413)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  %i.ar = load atomic i64, ptr %i.aq seq_cst, align 8, !noalias !97414
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread.i.i
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.ar, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %.sroa.01.0.i.i.i1.i.i, %bb.r ] ; 3 uses
  %.not.i.i.i.i = icmp sgt i64 %.sroa.05.0.i.i.i.i, -1
  %i.as = and i64 %.sroa.05.0.i.i.i.i, 9223372036854775807 ; 3 uses
  br i1 %.not.i.i.i.i, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE8try_sendCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not11.i.i.i.i = icmp eq i64 %i.as, 9223372036854775807
  br i1 %.not11.i.i.i.i, label %bb.q, label %bb.r, !prof !187

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2347, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2348) #63, !noalias !97414
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.at = add nuw nsw i64 %i.as, -9223372036854775807
  %i.au = cmpxchg ptr %i.aq, i64 %.sroa.05.0.i.i.i.i, i64 %i.at seq_cst seq_cst, align 8, !noalias !97414 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.au, 1
  %.sroa.01.0.i.i.i1.i.i = extractvalue { i64, i1 } %i.au, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.s, label %bb.o

bb.s:                                             ; preds = %bb.r
  %i.av = load ptr, ptr %i.g, align 8, !alias.scope !97415, !noalias !97416, !nonnull !178, !noundef !178 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !97417, !noundef !178
  %.not.i.i.i = icmp ult i64 %i.as, %i.ax
  br i1 %.not.i.i.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE4parkCsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.s
  %.val.i2.i.i = phi ptr [ %.val.pre.i.i.i, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE4parkCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %i.av, %bb.s ] ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !97418
  %i.ay = call noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !97418 ; 6 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.u, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE8try_sendCsgZAIVb0XKpv_9ssservice.exit.thread.i, !prof !183

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #62, !noalias !97418
  unreachable

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE8try_sendCsgZAIVb0XKpv_9ssservice.exit.thread.i: ; preds = %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i2.i.i, i64 16
  store i64 %.sroa.056.0.copyload.i, ptr %i.ay, align 8, !noalias !97419
  %.sroa.8.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.0..sroa_idx59.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.i, i64 272, i1 false), !noalias !97419
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 280
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !97420
  %i.bb = atomicrmw xchg ptr %i.ba, ptr %i.ay acq_rel, align 8, !noalias !97420
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 280
  store atomic ptr %i.ay, ptr %i.bc release, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i2.i.i, i64 72
  call void @_RNvMNtNtNtCsaUkHVQFH9AD_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.bd) #53, !noalias !97421
  br label %bb.ay

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !97422)
  %i.be = load ptr, ptr %.sroa.027.sroa.4.0..sroa_idx.i, align 8, !alias.scope !97423, !noalias !97416, !nonnull !178, !noundef !178 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 5 uses
  %i.bg = cmpxchg ptr %i.bf, i32 0, i32 1 acquire monotonic, align 4, !noalias !97424
  %i.bh = extractvalue { i32, i1 } %i.bg, 1
  br i1 %i.bh, label %bb.x, label %bb.w, !prof !192

bb.w:                                             ; preds = %bb.v
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bf) #53, !noalias !97424
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bi = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !97425
  %i.bj = and i64 %i.bi, 9223372036854775807
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.y, !prof !192

bb.y:                                             ; preds = %bb.x
  %i.bl = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #60, !noalias !97424
  %i.bm = xor i1 %i.bl, true
  %i.bn = zext i1 %i.bm to i8
  br label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.y, %bb.x
  %.sroa.01.0.i.i.i.i.i.i = phi i8 [ %i.bn, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 20 ; 2 uses
  %i.bp = load atomic i8, ptr %i.bo monotonic, align 1, !noalias !97424
  %.not.i.i.not.i.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.not.i.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.z, !prof !192

bb.z:                                             ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !97426
  store ptr %i.bf, ptr %i.d, align 8, !noalias !97426
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i.i, ptr %i.bq, align 8, !noalias !97426
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1963, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1970, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2349) #63, !noalias !97427
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.br = trunc nuw i8 %.sroa.01.0.i.i.i.i.i.i to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.bs, align 8, !noalias !97428, !align !186, !noundef !178 ; 2 uses
  %i.bt = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.bt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.bu = getelementptr i8, ptr %i.be, i64 32
  %.val1.i.i.i.i = load ptr, ptr %i.bu, align 8, !noalias !97428
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !97428, !nonnull !178, !noundef !178
  call void %i.bw(ptr noundef %.val1.i.i.i.i) #53, !noalias !97428, !inline_history !97342
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.aa, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  store ptr null, ptr %i.bs, align 8, !noalias !97428
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store i8 1, ptr %i.bx, align 8, !noalias !97428
  br i1 %i.br, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.by = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !97429
  %i.bz = and i64 %i.by, 9223372036854775807
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.ac, !prof !192

bb.ac:                                            ; preds = %bb.ab
  %i.cb = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #60, !noalias !97428
  br i1 %i.cb, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store atomic i8 1, ptr %i.bo monotonic, align 4, !noalias !97428
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.cc = atomicrmw xchg ptr %i.bf, i32 0 release, align 4, !noalias !97428
  %i.cd = icmp eq i32 %i.cc, 2
  br i1 %i.cd, label %bb.ae, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, !prof !187

bb.ae:                                            ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bf) #53, !noalias !97428
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.ae, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %i.ce = atomicrmw add ptr %i.be, i64 1 monotonic, align 8, !noalias !97428
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !97430
  %i.cg = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !97430 ; 5 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.ag, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE4parkCsgZAIVb0XKpv_9ssservice.exit.i.i.i, !prof !183

bb.ag:                                            ; preds = %bb.af
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #62, !noalias !97430
  unreachable

bb.ah:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.trap()
  unreachable

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE4parkCsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.af
  %i.ci = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr null, ptr %i.cg, align 8, !noalias !97428
  %.sroa.4.0..sroa_idx.i.i4.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx.i.i4.i.i.i, align 8, !noalias !97428
  %i.cj = atomicrmw xchg ptr %i.ci, ptr %i.cg acq_rel, align 8, !noalias !97428
  store atomic ptr %i.cg, ptr %i.cj release, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.cl = load atomic i64, ptr %i.ck seq_cst, align 8, !noalias !97428
  %.lobit.i.i.i.i = lshr i64 %i.cl, 63
  %i.cm = trunc nuw nsw i64 %.lobit.i.i.i.i to i8
  store i8 %i.cm, ptr %.sroa.428.0..sroa_idx29.i, align 8, !alias.scope !97423, !noalias !97416
  %.val.pre.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !97415, !noalias !97416
  br label %bb.t

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE8try_sendCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.i, i64 272, i1 false), !alias.scope !97431, !noalias !97432
  %.not38.i = icmp eq i64 %.sroa.056.0.copyload.i, -1
  br i1 %.not38.i, label %bb.ay, label %bb.aj

bb.ai:                                            ; preds = %bb.e
  %.sroa.027.sroa.4.0..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.428.0..sroa_idx2971.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i8 2, ptr %.sroa.428.0..sroa_idx2971.i, align 8, !noalias !97400
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.i, i64 272, i1 false), !noalias !97400
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE8try_sendCsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.428.0..sroa_idx2976.i = phi ptr [ %.sroa.428.0..sroa_idx2971.i, %bb.ai ], [ %.sroa.428.0..sroa_idx29.i, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE8try_sendCsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.027.sroa.4.0..sroa_idx74.i = phi ptr [ %.sroa.027.sroa.4.0..sroa_idx70.i, %bb.ai ], [ %.sroa.027.sroa.4.0..sroa_idx.i, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE8try_sendCsgZAIVb0XKpv_9ssservice.exit.i ] ; 2 uses
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !97400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.462.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.9.i, i64 272, i1 false), !noalias !97400
  store i64 %.sroa.056.0.copyload.i, ptr %i.e, align 8, !noalias !97400
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  store i8 1, ptr %.sroa.563.0..sroa_idx.i, align 8, !noalias !97400
  %i.cn = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !97433
  %i.co = icmp ult i64 %i.cn, 2
  br i1 %i.co, label %bb.ak, label %_RNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandleNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtNtB7_10dns_handle9DnsHandle4send0CsgZAIVb0XKpv_9ssservice.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.cp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB9_25BufDnsRequestStreamHandlepENtNtB9_10dns_handle9DnsHandle4send010___CALLSITE, i64 16) monotonic, align 8, !noalias !97433 ; 3 uses
  switch i8 %i.cp, label %bb.al [
    i8 0, label %_RNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandleNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtNtB7_10dns_handle9DnsHandle4send0CsgZAIVb0XKpv_9ssservice.exit.i
    i8 1, label %bb.am
    i8 2, label %bb.am
  ], !prof !185

bb.al:                                            ; preds = %bb.ak
  %i.cq = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB9_25BufDnsRequestStreamHandlepENtNtB9_10dns_handle9DnsHandle4send010___CALLSITE) #60, !noalias !97434 ; 2 uses
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %_RNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandleNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtNtB7_10dns_handle9DnsHandle4send0CsgZAIVb0XKpv_9ssservice.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.ak
  %.sroa.06.0.i.i = phi i8 [ %i.cq, %bb.al ], [ %i.cp, %bb.ak ], [ %i.cp, %bb.ak ]
  %i.cs = load ptr, ptr @_RNvNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB9_25BufDnsRequestStreamHandlepENtNtB9_10dns_handle9DnsHandle4send010___CALLSITE, align 8, !noalias !97433, !nonnull !178, !align !186, !noundef !178
  %i.ct = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cs, i8 noundef %.sroa.06.0.i.i) #53, !noalias !97434
  br i1 %i.ct, label %bb.an, label %_RNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandleNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtNtB7_10dns_handle9DnsHandle4send0CsgZAIVb0XKpv_9ssservice.exit.i

bb.an:                                            ; preds = %bb.am
  %i.cu = load ptr, ptr @_RNvNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB9_25BufDnsRequestStreamHandlepENtNtB9_10dns_handle9DnsHandle4send010___CALLSITE, align 8, !noalias !97433, !nonnull !178, !align !186, !noundef !178 ; 2 uses
end_hunk_1
