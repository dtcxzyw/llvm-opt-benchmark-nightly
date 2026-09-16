Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_proxy-72c884e3cf9f01a0.pingora_proxy.2baed5738fdb112f-cgu.05?download=true
inline.NumInlined: 352
inline.NumDeleted: 196
begin_hunk_0_@_RNvMs2_NtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCs3Kwrwkha1e5_13pingora_proxy:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noundef !9 ; 3 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ao = trunc nuw i8 %i.aj to i1
  br i1 %i.ao, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc19, !prof !14

.noexc19:                                         ; preds = %bb.n
  %i.as = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21
  br i1 %i.as, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc19
  store atomic i8 1, ptr %i.an monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.o, %.noexc19, %bb.n, %bb.m
  %i.at = atomicrmw xchg ptr %i.ai, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit, !prof !15

bb.p:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ai)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit

bb.q:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.aw = add nsw i64 %i.al, -1                   ; 3 uses
  store i64 %i.aw, ptr %i.ak, align 8
  %i.ax = load i64, ptr %i.av, align 8, !range !12, !noundef !9
  %i.ay = icmp samesign ult i64 %i.aw, %i.ax
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !9, !noundef !9
  %i.bb = icmp ult i64 %i.al, 1152921504606846977
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.aw
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !9, !align !11, !noundef !9
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.be, align 8
  store i64 0, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.bi = trunc nuw i8 %i.aj to i1
  br i1 %i.bi, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bk = and i64 %i.bj, 9223372036854775807
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.s, !prof !14

bb.s:                                             ; preds = %bb.r
  %i.bm = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21
  br i1 %i.bm, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.t

bb.t:                                             ; preds = %bb.s
  store atomic i8 1, ptr %i.bh monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.bn = atomicrmw xchg ptr %i.ai, i32 0 release, align 4
  %i.bo = icmp eq i32 %i.bn, 2
  br i1 %i.bo, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit22, !prof !15

bb.u:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ai)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.p, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bp)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !532
  %i.bq = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef 8) #22, !noalias !532 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.v, label %bb.y, !prof !15

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #25
          to label %.noexc23 unwind label %bb.w

.noexc23:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.b) #20
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bq, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bu, align 8
  store i64 0, ptr %0, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bq, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bw, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit22

bb.z:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %.val.i25 = load ptr, ptr %i.aa, align 8, !alias.scope !533 ; 4 uses
  %.val3.i26 = load i8, ptr %i.ab, align 8, !range !534, !alias.scope !533, !noundef !9 ; 2 uses
  %.not.i.i27 = icmp eq i8 %.val3.i26, 2
  br i1 %.not.i.i27, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit32, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i25) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i25, i64 4
  %i.by = trunc nuw i8 %.val3.i26 to i1
  br i1 %i.by, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !533
  %i.ca = and i64 %i.bz, 9223372036854775807
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  %i.cc = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21, !noalias !533
  br i1 %i.cc, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store atomic i8 1, ptr %i.bx monotonic, align 1, !noalias !533
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.cd = atomicrmw xchg ptr %.val.i25, i32 0 release, align 4, !noalias !533
  %i.ce = icmp eq i32 %i.cd, 2
  br i1 %i.ce, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i29, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit32, !prof !15

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i29: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i25), !noalias !533
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit32

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit32: ; preds = %bb.z, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cf)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !535
  %i.cg = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef 8) #22, !noalias !535 ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.h, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheE3newCs3Kwrwkha1e5_13pingora_proxy.exit9, !prof !15
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE11extend_withCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i16 noundef %2, i16 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !540, !noundef !9 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !12, !alias.scope !540, !noundef !9
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE7reserveCs3Kwrwkha1e5_13pingora_proxy.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 2, i64 noundef 4)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE7reserveCs3Kwrwkha1e5_13pingora_proxy.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE7reserveCs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9
  %i.i = icmp ult i64 %i.f, 2305843009213693952
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 5 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE7reserveCs3Kwrwkha1e5_13pingora_proxy.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 9
  br i1 %min.iters.check, label %.lr.ph.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %4 = shl i64 %n.vec, 2
  %5 = getelementptr i8, ptr %i.j, i64 %4         ; 2 uses
  %6 = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splatinsert31 = insertelement <4 x i16> poison, i16 %3, i64 0
  %interleaved.vec = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> %broadcast.splatinsert31, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.m
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m
  %next.gep33 = getelementptr i8, ptr %i.n, i64 16
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2
  store <8 x i16> %interleaved.vec, ptr %next.gep33, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !538

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.a, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.023.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %5, %middle.block ]
  %.sroa.03.022.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %6, %middle.block ]
  br label %.lr.ph

._crit_edge.thread.a:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %5, %middle.block ], [ %i.v, %.lr.ph ]
  %i.p = add i64 %i.f, %1
  %i.q = add i64 %i.p, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE7reserveCs3Kwrwkha1e5_13pingora_proxy.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.a, %._crit_edge
  %.sroa.0.0.lcssa30 = phi ptr [ %.lcssa, %._crit_edge.thread.a ], [ %i.j, %._crit_edge ] ; 2 uses
  %storemerge.lcssa29 = phi i64 [ %i.q, %._crit_edge.thread.a ], [ %i.f, %._crit_edge ]
  store i16 %2, ptr %.sroa.0.0.lcssa30, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa30, i64 2
  store i16 %3, ptr %i.r, align 2
  %i.s = add i64 %storemerge.lcssa29, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge20 = phi i64 [ %i.s, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge20, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader36, %.lr.ph
  %.sroa.0.023 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.0.023.ph, %.lr.ph.preheader36 ] ; 3 uses
  %.sroa.03.022 = phi i64 [ %i.t, %.lr.ph ], [ %.sroa.03.022.ph, %.lr.ph.preheader36 ]
  %i.t = add nuw i64 %.sroa.03.022, 1             ; 2 uses
  store i16 %2, ptr %.sroa.0.023, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 2
  store i16 %3, ptr %i.u, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 4 ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %1
  br i1 %exitcond.not, label %._crit_edge.thread.a, label %.lr.ph, !llvm.loop !539
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE16into_boxed_sliceCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 2, i64 noundef 4)
          to label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs3Kwrwkha1e5_13pingora_proxy.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs3Kwrwkha1e5_13pingora_proxy.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs3Kwrwkha1e5_13pingora_proxy.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !9, !noundef !9
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs84JG9zk80ZV_4http6header3map3PosENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECs3Kwrwkha1e5_13pingora_proxy.exit unwind label %bb.g

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs3Kwrwkha1e5_13pingora_proxy.exit._crit_edge, label %bb.e, !prof !14

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs3Kwrwkha1e5_13pingora_proxy.exit._crit_edge: ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs3Kwrwkha1e5_13pingora_proxy.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs3Kwrwkha1e5_13pingora_proxy.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #25
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtB6_5Debug3fmtCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.c = load i64, ptr %i.b, align 8, !range !16, !alias.scope !544, !noalias !545, !noundef !9
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !546
  store ptr %i.b, ptr %i.a, align 8, !noalias !546
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !546
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs3Kwrwkha1e5_13pingora_proxy.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4), !noalias !544
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs3Kwrwkha1e5_13pingora_proxy.exit

_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrENtB6_5Debug3fmtCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.c = load i64, ptr %i.b, align 8, !range !18, !alias.scope !550, !noalias !551, !noundef !9
  %.not.i = icmp eq i64 %i.c, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !552
  store ptr %i.b, ptr %i.a, align 8, !noalias !552
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !552
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrENtNtB7_3fmt5Debug3fmtCs3Kwrwkha1e5_13pingora_proxy.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4), !noalias !550
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrENtNtB7_3fmt5Debug3fmtCs3Kwrwkha1e5_13pingora_proxy.exit

_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrENtNtB7_3fmt5Debug3fmtCs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %.val = load i8, ptr %i.a, align 1, !range !553, !noundef !9 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3Kwrwkha1e5_13pingora_proxy, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3Kwrwkha1e5_13pingora_proxy.58, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCshOOEgrNSCIs_4rand4rngs7adapter9reseedingINtB5_13ReseedingCoreNtNtCsiZkILOpdhTx_11rand_chacha6chacha12ChaCha12CoreNtNtCsdOELMQXDeDk_9rand_core2os5OsRngENtNtB26_5block12BlockRngCore8generateCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 16 dereferenceable(80) %0, ptr noalias nofree noundef align 4 dereferenceable(256) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvNtNtNtNtCshOOEgrNSCIs_4rand4rngs7adapter9reseeding4fork16get_fork_counter() ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 2 uses
  %i.d = icmp slt i64 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 16, !noundef !9
  %i.g = sub i64 %i.f, %i.a
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i64 %i.c, -256
  store i64 %i.i, ptr %i.b, align 8
  tail call void @_RNvNtCsiZkILOpdhTx_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %0, i32 noundef 6, ptr noalias nofree noundef nonnull align 4 dereferenceable(256) %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  tail call void @_RNvMs3_NtNtNtCshOOEgrNSCIs_4rand4rngs7adapter9reseedingINtB5_13ReseedingCoreNtNtCsiZkILOpdhTx_11rand_chacha6chacha12ChaCha12CoreNtNtCsdOELMQXDeDk_9rand_core2os5OsRngE19reseed_and_generateBb_(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 4 dereferenceable(256) %1, i64 noundef %i.a) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEENtNtBM_5clone5Clone5cloneCs3Kwrwkha1e5_13pingora_proxy(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9 ; 5 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !9 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !560
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !560
  %i.f = load i64, ptr %i.a, align 8, !range !21, !noalias !560, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !561, !noalias !560, !noundef !9 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3Kwrwkha1e5_13pingora_proxy.exit.i, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !560
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25, !noalias !560
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3Kwrwkha1e5_13pingora_proxy.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !560, !nonnull !9, !noundef !9 ; 4 uses
  %i.m = icmp samesign ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !560
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs3Kwrwkha1e5_13pingora_proxy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3Kwrwkha1e5_13pingora_proxy.exit.i
  %i.p = and i64 %i.e, 1152921504606846975
  %i.q = add i64 %i.i, -1
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.r, 1152921504606846974      ; 4 uses
  %2 = shl nuw i64 %n.vec, 4
  %3 = getelementptr i8, ptr %i.d, i64 %2
  %4 = sub i64 %i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.s = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.s
  %i.t = getelementptr i8, ptr %i.d, i64 %i.s
  %next.gep2 = getelementptr i8, ptr %i.t, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !noalias !562
  %wide.load3 = load <2 x i64>, ptr %next.gep2, align 8, !noalias !562
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %index
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x i64> %wide.load, ptr %i.u, align 8, !noalias !560
  store <2 x i64> %wide.load3, ptr %i.w, align 8, !noalias !560
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %.lr.ph.i.preheader6, label %vector.body, !llvm.loop !557

.lr.ph.i.preheader6:                              ; preds = %vector.body, %.lr.ph.i.preheader
  %.sroa.014.023.i.ph = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %3, %vector.body ]
  %.sroa.7.022.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %vector.body ]
  %.sroa.10.021.i.ph = phi i64 [ %i.i, %.lr.ph.i.preheader ], [ %4, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader6, %bb.c
  %.sroa.014.023.i = phi ptr [ %i.ab, %bb.c ], [ %.sroa.014.023.i.ph, %.lr.ph.i.preheader6 ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.aa, %bb.c ], [ %.sroa.7.022.i.ph, %.lr.ph.i.preheader6 ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %i.z, %bb.c ], [ %.sroa.10.021.i.ph, %.lr.ph.i.preheader6 ]
  %i.y = icmp eq ptr %.sroa.014.023.i, %i.n
  br i1 %i.y, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i, i64 16
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.7.022.i
  %i.ad = load <2 x i64>, ptr %.sroa.014.023.i, align 8, !alias.scope !559, !noalias !562
  store <2 x i64> %i.ad, ptr %i.ac, align 8, !noalias !560
  %i.ae = icmp eq i64 %i.z, 0
  br i1 %i.ae, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs3Kwrwkha1e5_13pingora_proxy.exit, label %.lr.ph.i, !llvm.loop !558

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %.lr.ph.i, %bb.c, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3Kwrwkha1e5_13pingora_proxy.exit.i
  store i64 %i.i, ptr %0, align 8, !noalias !559
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !559
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !559
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !571, !noundef !9 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB35_4SyncEL_EENtNtB1Q_5alloc6GlobalECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !573, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECs3Kwrwkha1e5_13pingora_proxy.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !573, !nonnull !9, !noundef !9 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !574
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i ] ; 2 uses
  %.sroa.87.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i ] ; 2 uses
  %.sroa.108.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.87.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECs3Kwrwkha1e5_13pingora_proxy.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !575
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECs3Kwrwkha1e5_13pingora_proxy.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECs3Kwrwkha1e5_13pingora_proxy.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.108.014.i.i, -1           ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -16
  %.val.i.i = load ptr, ptr %i.w, align 8, !noalias !573 ; 5 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -8
  %.val5.i.i = load ptr, ptr %i.x, align 8, !noalias !573, !nonnull !9, !align !11, !noundef !9 ; 5 uses
  %i.y = load ptr, ptr %.val5.i.i, align 8, !invariant.load !9, !noalias !573 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECs3Kwrwkha1e5_13pingora_proxy.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.y(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !573

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECs3Kwrwkha1e5_13pingora_proxy.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !12, !invariant.load !9, !noalias !573 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !13, !invariant.load !9, !noalias !573
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #22, !noalias !573
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !12, !invariant.load !9, !noalias !573 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_ENtNtNtB1u_3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy.exit5.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !13, !invariant.load !9, !noalias !573
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) %i.aj) #22, !noalias !573
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_ENtNtNtB1u_3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy.exit5.i.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_ENtNtNtB1u_3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy.exit5.i.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.g
  resume { ptr, i32 } %i.ae

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f
  %i.ak = icmp eq i64 %i.v, 0
  br i1 %i.ak, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECs3Kwrwkha1e5_13pingora_proxy.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECs3Kwrwkha1e5_13pingora_proxy.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i, %bb.b
  %i.al = shl i64 %i.b, 5                         ; 2 uses
  %i.am = add i64 %i.al, 32                       ; 2 uses
  %i.an = add i64 %i.b, 17
  %i.ao = add i64 %i.an, %i.am                    ; 4 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  %i.aq = icmp ult i64 %i.ao, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ap)
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB35_4SyncEL_EENtNtB1Q_5alloc6GlobalECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECs3Kwrwkha1e5_13pingora_proxy.exit.i
  %i.as = load ptr, ptr %0, align 8, !alias.scope !571, !nonnull !9, !noundef !9
  %i.at = sub nuw nsw i64 -32, %i.al
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 16) #22, !noalias !571
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB35_4SyncEL_EENtNtB1Q_5alloc6GlobalECs3Kwrwkha1e5_13pingora_proxy.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB35_4SyncEL_EENtNtB1Q_5alloc6GlobalECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECs3Kwrwkha1e5_13pingora_proxy.exit.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs3gSIjo26Km0_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !592, !noundef !9 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs3gSIjo26Km0_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !594, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs3gSIjo26Km0_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs3Kwrwkha1e5_13pingora_proxy.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !594, !nonnull !9, !noundef !9 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !595
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCs3gSIjo26Km0_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCs3gSIjo26Km0_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCs3gSIjo26Km0_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCs3gSIjo26Km0_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCs3gSIjo26Km0_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs3Kwrwkha1e5_13pingora_proxy.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs3gSIjo26Km0_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs3Kwrwkha1e5_13pingora_proxy.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !596
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs3gSIjo26Km0_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs3Kwrwkha1e5_13pingora_proxy.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs3gSIjo26Km0_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs3Kwrwkha1e5_13pingora_proxy.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
end_hunk_0
