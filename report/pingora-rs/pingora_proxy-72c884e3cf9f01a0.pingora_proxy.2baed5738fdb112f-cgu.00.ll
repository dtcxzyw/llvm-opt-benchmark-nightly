Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_proxy-72c884e3cf9f01a0.pingora_proxy.2baed5738fdb112f-cgu.00?download=true
inline.NumInlined: 281
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs2_NtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE9put_valueCs3Kwrwkha1e5_13pingora_proxy:bb.a
  %.val.i16.7 = load ptr, ptr %i.i, align 8, !alias.scope !405 ; 4 uses
  %.val3.i17.7 = load i8, ptr %i.j, align 8, !range !16, !alias.scope !405, !noundef !5 ; 2 uses
  %.not.i.i18.7 = icmp eq i8 %.val3.i17.7, 2
  br i1 %.not.i.i18.7, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit26.7, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.7) ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i16.7, i64 4
  %i.ef = trunc nuw i8 %.val3.i17.7 to i1
  br i1 %i.ef, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.7, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.eg = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !405
  %i.eh = and i64 %i.eg, 9223372036854775807
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.7, label %bb.bq, !prof !13

bb.bq:                                            ; preds = %bb.bp
  %i.ej = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #25
          to label %.noexc24.7 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc24.7:                                       ; preds = %bb.bq
  br i1 %i.ej, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.7, label %bb.br

bb.br:                                            ; preds = %.noexc24.7
  store atomic i8 1, ptr %i.ee monotonic, align 1, !noalias !405
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.7

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.7: ; preds = %bb.br, %.noexc24.7, %bb.bp, %bb.bo
  %i.ek = atomicrmw xchg ptr %.val.i16.7, i32 0 release, align 4, !noalias !405
  %i.el = icmp eq i32 %i.ek, 2
  br i1 %i.el, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.7, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit26.7, !prof !10

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.7: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.7
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16.7)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit26.7 unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit26.7: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.7, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.7, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.em = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.en = icmp ult i64 %i.g, %i.em
  br i1 %i.en, label %bb.bs, label %bb.f

bb.bs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit26.7
  %i.eo = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.ep = getelementptr inbounds nuw [64 x i8], ptr %i.eo, i64 %i.g
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEE8try_lockCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.ep)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  %i.eq = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.er = trunc nuw i64 %i.eq to i1
  br i1 %i.er, label %bb.bu, label %bb.h

bb.bu:                                            ; preds = %bb.bt
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %.val.i16.8 = load ptr, ptr %i.i, align 8, !alias.scope !406 ; 4 uses
  %.val3.i17.8 = load i8, ptr %i.j, align 8, !range !16, !alias.scope !406, !noundef !5 ; 2 uses
  %.not.i.i18.8 = icmp eq i8 %.val3.i17.8, 2
  br i1 %.not.i.i18.8, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit26.8, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.8) ]
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i16.8, i64 4
  %i.et = trunc nuw i8 %.val3.i17.8 to i1
  br i1 %i.et, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.eu = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !406
  %i.ev = and i64 %i.eu, 9223372036854775807
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8, label %bb.bx, !prof !13

bb.bx:                                            ; preds = %bb.bw
  %i.ex = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #25
          to label %.noexc24.8 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc24.8:                                       ; preds = %bb.bx
  br i1 %i.ex, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8, label %bb.by

bb.by:                                            ; preds = %.noexc24.8
  store atomic i8 1, ptr %i.es monotonic, align 1, !noalias !406
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8: ; preds = %bb.by, %.noexc24.8, %bb.bw, %bb.bv
  %i.ey = atomicrmw xchg ptr %.val.i16.8, i32 0 release, align 4, !noalias !406
  %i.ez = icmp eq i32 %i.ey, 2
  br i1 %i.ez, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.8, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit26.8, !prof !10

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.8: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16.8)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit26.8 unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit26.8: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.8, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fa = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.fb = icmp ult i64 %i.g, %i.fa
  br i1 %i.fb, label %bb.bz, label %bb.f

bb.bz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit26.8
  %i.fc = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.fd = getelementptr inbounds nuw [64 x i8], ptr %i.fc, i64 %i.g
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEE8try_lockCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.fd)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bz
  %i.fe = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.ff = trunc nuw i64 %i.fe to i1
  br i1 %i.ff, label %bb.cb, label %bb.h

bb.cb:                                            ; preds = %bb.ca
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %.val.i16.9 = load ptr, ptr %i.i, align 8, !alias.scope !407 ; 4 uses
  %.val3.i17.9 = load i8, ptr %i.j, align 8, !range !16, !alias.scope !407, !noundef !5 ; 2 uses
  %.not.i.i18.9 = icmp eq i8 %.val3.i17.9, 2
  br i1 %.not.i.i18.9, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit26.9, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.9) ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i16.9, i64 4
  %i.fh = trunc nuw i8 %.val3.i17.9 to i1
  br i1 %i.fh, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fi = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !407
  %i.fj = and i64 %i.fi, 9223372036854775807
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, label %bb.ce, !prof !13

bb.ce:                                            ; preds = %bb.cd
  %i.fl = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #25
          to label %.noexc24.9 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc24.9:                                       ; preds = %bb.ce
  br i1 %i.fl, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, label %bb.cf

bb.cf:                                            ; preds = %.noexc24.9
  store atomic i8 1, ptr %i.fg monotonic, align 1, !noalias !407
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9: ; preds = %bb.cf, %.noexc24.9, %bb.cd, %bb.cc
  %i.fm = atomicrmw xchg ptr %.val.i16.9, i32 0 release, align 4, !noalias !407
  %i.fn = icmp eq i32 %i.fm, 2
  br i1 %i.fn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.9, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit26.9, !prof !10

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.9: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16.9)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit26.9 unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy.exit26.9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.9, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEECs3Kwrwkha1e5_13pingora_proxy(ptr nonnull %1)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit

bb.cg:                                            ; preds = %.body, %.loopexit.split-lp.loopexit.split-lp
  %.pn29 = phi { ptr, i32 } [ %i.v, %.body ], [ %lpad.loopexit.split-lp36, %.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn29

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.t, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20, %bb.v, %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.1, %bb.ac, %bb.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.2, %bb.aj, %bb.ao, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.3, %bb.aq, %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.4, %bb.ax, %bb.bc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.5, %bb.be, %bb.bj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.6, %bb.bl, %bb.bq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.7, %bb.bs, %bb.bx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.8, %bb.bz, %bb.ce, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECs3Kwrwkha1e5_13pingora_proxy.exit.sink.split.i20.9, %bb.a, %bb.f, %bb.c
  %lpad.loopexit.split-lp36 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEECs3Kwrwkha1e5_13pingora_proxy(ptr nonnull %1) #22
          to label %bb.cg unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB4_9RangeType9new_multi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB2_14MultiRangeInfo3new(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !11, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1 = load i64, ptr %i.e, align 8, !noundef !5 ; 31 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.f = load i64, ptr %0, align 8, !range !6, !alias.scope !434, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  switch i64 %i.f, label %default.unreachable [
    i64 0, label %.preheader.i
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

.preheader.i:                                     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2, !range !11, !alias.scope !434
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br i1 %i.j, label %bb.ah, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.promoted206.i = load i8, ptr %i.k, align 8, !alias.scope !434 ; 4 uses
  %.promoted157.i = load i64, ptr %i.g, align 8, !alias.scope !434 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.l = trunc nuw i8 %.promoted206.i to i1       ; 2 uses
  %i.m = icmp eq i64 %.promoted157.i, 0
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i
  %.not.i.i.us.i.peel = icmp ult i64 %.promoted157.i, %.val1
  br i1 %.not.i.i.us.i.peel, label %bb.d, label %.split.i.i.us.i.peel

.split.i.i.us.i.peel:                             ; preds = %bb.c
  %i.n = icmp eq i64 %.promoted157.i, %.val1
  br i1 %i.n, label %bb.e, label %.split.us161.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted157.i
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !436, !noalias !437, !noundef !5
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.e, label %.split.us161.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.us.i.peel, %.lr.ph.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted157.i ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted157.i, %.val1
  br i1 %i.s, label %.split166.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.r, align 1, !noalias !438, !noundef !5 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.g, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i.peel

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i.peel: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted157.i, 1
  %i.z = icmp samesign ne i64 %i.y, %.val1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !438, !noundef !5
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i.peel, label %bb.h

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted157.i, 2
  %i.ai = icmp samesign ne i64 %i.ah, %.val1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !438, !noundef !5
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i.peel, label %bb.h

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted157.i, 3
  %i.at = icmp samesign ne i64 %i.as, %.val1
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !438, !noundef !5
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i.peel, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i.peel, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i.peel
  %.sroa.4.0.i.ph.i.us.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i.peel ], [ %i.bc, %bb.g ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit42.split.us.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 128
  br i1 %i.be, label %.lr.ph.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 2048
  br i1 %i.bf, label %.lr.ph.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 65536
  %..i.us.i.peel = select i1 %i.bg, i64 3, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.01.0.i.us.i.peel = phi i64 [ 2, %bb.j ], [ %..i.us.i.peel, %bb.k ], [ 1, %bb.i ]
  %i.bh = add i64 %.sroa.01.0.i.us.i.peel, %.promoted157.i ; 16 uses
  store i64 %i.bh, ptr %i.g, align 8, !alias.scope !439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %.not.i.i.us.i = icmp ult i64 %i.bh, %.val1
  br i1 %.not.i.i.us.i, label %bb.m, label %.split.i.i.us.i

.split.i.i.us.i:                                  ; preds = %bb.l
  %i.bj = icmp eq i64 %i.bh, %.val1
  br i1 %i.bj, label %bb.n, label %.split.us161.i

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bh
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !436, !noalias !441, !noundef !5
  %i.bm = icmp sgt i8 %i.bl, -65
  br i1 %i.bm, label %bb.n, label %.split.us161.i

bb.n:                                             ; preds = %bb.m, %.split.i.i.us.i, %.lr.ph.i
  %i.bn = icmp samesign eq i64 %i.bh, %.val1
  br i1 %i.bn, label %.split166.us.i.thread, label %bb.o

.split166.us.i.thread:                            ; preds = %bb.n
  store i8 0, ptr %i.k, align 8, !alias.scope !442
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bh
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !443, !noundef !5 ; 3 uses
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %.loopexit42.split.us.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i: ; preds = %bb.o
  %i.br = add nuw nsw i64 %i.bh, 1
  %i.bs = icmp samesign ne i64 %i.br, %.val1
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp samesign ugt i8 %i.bp, -33
  br i1 %i.bt, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i, label %.loopexit42.split.us.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i
  %i.bu = add nuw nsw i64 %i.bh, 2
  %i.bv = icmp samesign ne i64 %i.bu, %.val1
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp samesign ugt i8 %i.bp, -17
  br i1 %i.bw, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i, label %.loopexit42.split.us.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i
  %i.bx = add nuw nsw i64 %i.bh, 3
  %i.by = icmp samesign ne i64 %i.bx, %.val1
  tail call void @llvm.assume(i1 %i.by)
  br label %.loopexit42.split.us.i

.split.us161.i:                                   ; preds = %bb.m, %.split.i.i.us.i, %bb.d, %.split.i.i.us.i.peel
  %.lcssa31 = phi i64 [ %.promoted157.i, %.split.i.i.us.i.peel ], [ %.promoted157.i, %bb.d ], [ %i.bh, %.split.i.i.us.i ], [ %i.bh, %bb.m ]
  %.lcssa28 = phi i8 [ %.promoted206.i, %.split.i.i.us.i.peel ], [ %.promoted206.i, %bb.d ], [ 1, %.split.i.i.us.i ], [ 1, %bb.m ]
  %i.bz = xor i8 %.lcssa28, 1
  store i8 %i.bz, ptr %i.k, align 8, !alias.scope !442
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, i64 noundef %.lcssa31, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #24, !noalias !441
  unreachable

.split166.us.i:                                   ; preds = %bb.e
  %i.ca = xor i8 %.promoted206.i, 1
  store i8 %i.ca, ptr %i.k, align 8, !alias.scope !442
  br i1 %i.l, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.p

.loopexit42.split.us.i:                           ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i, %bb.o, %bb.h
  %.lcssa33 = phi i64 [ %.promoted157.i, %bb.h ], [ %i.bh, %bb.o ], [ %i.bh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit12.i.i.us.i ], [ %i.bh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit14.i.i.us.i ], [ %i.bh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Kwrwkha1e5_13pingora_proxy.exit16.i.i.us.i ] ; 2 uses
  store i8 0, ptr %i.k, align 8, !alias.scope !442
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.p:                                             ; preds = %.split166.us.i
  store i8 1, ptr %i.h, align 2, !alias.scope !442
  br label %bb.ah

bb.q:                                             ; preds = %bb.b
  %i.cb = load i64, ptr %i.g, align 8, !alias.scope !434, !noundef !5 ; 4 uses
  %.not.i = icmp ult i64 %i.cb, %.val1
  br i1 %.not.i, label %bb.s, label %bb.ah

bb.r:                                             ; preds = %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !434, !noundef !5 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !434, !nonnull !5, !noundef !5 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !434, !noundef !5 ; 14 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.ck = add nsw i64 %i.ci, -1                   ; 4 uses
  br i1 %i.ce, label %bb.ad, label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = load i8, ptr %i.cl, align 8, !alias.scope !434, !noundef !5 ; 2 uses
  %i.cn = sub nuw i64 %.val1, %i.cb               ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cb ; 2 uses
  %i.cp = icmp samesign ult i64 %i.cn, 16
  br i1 %i.cp, label %.lr.ph.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.cm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef range(i64 0, -9223372036854775808) %i.cn), !noalias !444 ; 2 uses
  %i.cr = extractvalue { i64, i64 } %i.cq, 0
  %i.cs = extractvalue { i64, i64 } %i.cq, 1
  %i.ct = trunc nuw i64 %i.cr to i1
  br i1 %i.ct, label %.loopexit43.i, label %.loopexit44.i

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.u
  %.sroa.04.011.i.i = phi i64 [ %i.cx, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.04.011.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !445, !noalias !444, !noundef !5
  %i.cw = icmp eq i8 %i.cv, %i.cm
  br i1 %i.cw, label %.loopexit43.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.cx = add nuw nsw i64 %.sroa.04.011.i.i, 1    ; 2 uses
  %exitcond.not.i7.i = icmp eq i64 %i.cx, %i.cn
  br i1 %exitcond.not.i7.i, label %.loopexit44.i, label %.lr.ph.i.i

.loopexit43.i:                                    ; preds = %.lr.ph.i.i, %bb.t
  %.sroa.5.0.i.i = phi i64 [ %i.cs, %bb.t ], [ %.sroa.04.011.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cy = icmp ult i64 %.sroa.5.0.i.i, %i.cn
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = add i64 %.sroa.5.0.i.i, %i.cb           ; 2 uses
  %i.da = add i64 %i.cz, 1                        ; 2 uses
  store i64 %i.da, ptr %i.g, align 8, !alias.scope !434
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit44.i:                                    ; preds = %bb.u, %bb.t
  store i64 %.val1, ptr %i.g, align 8, !alias.scope !434
  br label %bb.ah

bb.v:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %.promoted.i.i = load i64, ptr %i.cj, align 8, !alias.scope !449 ; 2 uses
  %i.db = add i64 %.promoted.i.i, %i.ck           ; 2 uses
  %i.dc = icmp ult i64 %i.db, %.val1
  br i1 %i.dc, label %.lr.ph.i8.i, label %._crit_edge.i.i

.lr.ph.i8.i:                                      ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !449, !noundef !5
  %i.df = load i64, ptr %i.g, align 8, !alias.scope !449 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !449 ; 2 uses
  %i.di = sub i64 %i.ci, %i.dh
  %invariant.op = sub i64 1, %i.df
  br label %.lr.ph.split.i.i

._crit_edge.i.i:                                  ; preds = %bb.y, %bb.v
  store i64 %.val1, ptr %i.cj, align 8, !alias.scope !449
  br label %bb.ah

.lr.ph.split.i.i:                                 ; preds = %bb.y, %.lr.ph.i8.i
  %i.dj = phi i64 [ %.sink70.i.i, %bb.y ], [ %i.cd, %.lr.ph.i8.i ] ; 3 uses
  %i.dk = phi i64 [ %i.du, %bb.y ], [ %i.db, %.lr.ph.i8.i ]
  %i.dl = phi i64 [ %.sink71.i.i, %bb.y ], [ %.promoted.i.i, %.lr.ph.i8.i ] ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dk
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !447, !noalias !444, !noundef !5
  %i.do = and i8 %i.dn, 63
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = shl nuw i64 1, %i.dp
  %i.dr = and i64 %i.dq, %i.de
  %.not.i9.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i9.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.split.i.i
  %i.ds = add i64 %i.dl, %i.ci
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.i.i
  %..i.i10.i = tail call noundef i64 @llvm.umax.i64(i64 %i.dj, i64 %i.df) ; 2 uses
  %i.dt = icmp ult i64 %..i.i10.i, %i.ci
  br i1 %i.dt, label %.lr.ph, label %.preheader36.i.i.preheader

bb.y:                                             ; preds = %bb.ac, %bb.ab, %bb.w
  %.sink71.i.i = phi i64 [ %i.eq, %bb.ac ], [ %i.ep, %bb.ab ], [ %i.ds, %bb.w ] ; 3 uses
  %.sink70.i.i = phi i64 [ 0, %bb.ac ], [ %i.di, %bb.ab ], [ 0, %bb.w ] ; 2 uses
  store i64 %.sink71.i.i, ptr %i.cj, align 8, !alias.scope !449
  store i64 %.sink70.i.i, ptr %i.cc, align 8, !alias.scope !449
  %i.du = add i64 %.sink71.i.i, %i.ck             ; 2 uses
  %i.dv = icmp ult i64 %i.du, %.val1
  br i1 %i.dv, label %.lr.ph.split.i.i, label %._crit_edge.i.i

bb.z:                                             ; preds = %.lr.ph
  %i.dw = add nuw nsw i64 %.sroa.04.0.i.i90, 1    ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.ci
  br i1 %i.dx, label %.lr.ph, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.z, %bb.x
  %i.dy = icmp ult i64 %i.dj, %i.df
  br i1 %i.dy, label %.lr.ph92, label %.split.us.i11.i

.lr.ph:                                           ; preds = %bb.x, %bb.z
  %.sroa.04.0.i.i90 = phi i64 [ %i.dw, %bb.z ], [ %..i.i10.i, %bb.x ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.i.i90
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !448, !noalias !444, !noundef !5
  %i.eb = add i64 %.sroa.04.0.i.i90, %i.dl        ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %.val1
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %.val, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !447, !noalias !444, !noundef !5
  %.not21.i.i = icmp eq i8 %i.ea, %i.ee
  br i1 %.not21.i.i, label %bb.z, label %bb.ac

.preheader36.i.i:                                 ; preds = %bb.aa
  %i.ef = icmp ult i64 %i.dj, %i.eh
  br i1 %i.ef, label %.lr.ph92, label %.split.us.i11.i

.split.us.i11.i:                                  ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %i.eg = add i64 %i.dl, %i.ci                    ; 2 uses
  store i64 %i.eg, ptr %i.cj, align 8, !alias.scope !449
  store i64 0, ptr %i.cc, align 8, !alias.scope !449
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph92:                                         ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i91 = phi i64 [ %i.eh, %.preheader36.i.i ], [ %i.df, %.preheader36.i.i.preheader ]
  %i.eh = add i64 %.sroa.2.0.i.i91, -1            ; 6 uses
  %i.ei = icmp ult i64 %i.eh, %i.ci
  br i1 %i.ei, label %bb.aa, label %.split32.us.i.i

bb.aa:                                            ; preds = %.lr.ph92
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.eh
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !448, !noalias !444, !noundef !5
  %i.el = add i64 %i.eh, %i.dl                    ; 2 uses
  %i.em = icmp ult i64 %i.el, %.val1
  tail call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %.val, i64 %i.el
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !447, !noalias !444, !noundef !5
  %.not20.i.i = icmp eq i8 %i.ek, %i.eo
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.ab

.split32.us.i.i:                                  ; preds = %.lr.ph92
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.eh, i64 noundef range(i64 0, -9223372036854775808) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !450
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.ep = add i64 %i.dl, %i.dh
  br label %bb.y

bb.ac:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.dl, %invariant.op
  %i.eq = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i90
  br label %bb.y

bb.ad:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %.promoted.i12.i = load i64, ptr %i.cj, align 8, !alias.scope !454 ; 2 uses
  %i.er = add i64 %.promoted.i12.i, %i.ck         ; 2 uses
  %i.es = icmp ult i64 %i.er, %.val1
  br i1 %i.es, label %.lr.ph.i15.i, label %._crit_edge.i13.i

.lr.ph.i15.i:                                     ; preds = %bb.ad
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !454, !noundef !5
  %i.ev = load i64, ptr %i.g, align 8, !alias.scope !454
  %.fr215.i = freeze i64 %i.ev                    ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !454
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr215.i, i64 range(i64 0, -9223372036854775808) %i.ci)
  %i.ey = add i64 %.fr215.i, -1                   ; 2 uses
  %.first_iter.i16.i = icmp ult i64 %i.ey, %i.ci
  %exitcond.not.i17.i94.not = icmp ult i64 %.fr215.i, %i.ci
  %invariant.op134 = sub i64 1, %.fr215.i
  %.not34.i.us.i97 = icmp eq i64 %.fr215.i, 0     ; 2 uses
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.ag, %.lr.ph.i15.i
  %i.ez = phi i64 [ %i.fy, %bb.ag ], [ %i.er, %.lr.ph.i15.i ]
  %i.fa = phi i64 [ %.sink.i18.i, %bb.ag ], [ %.promoted.i12.i, %.lr.ph.i15.i ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !452, !noalias !444, !noundef !5
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.eu
  %.not.us.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not.us.i.i, label %bb.af, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
  br i1 %exitcond.not.i17.i94.not, label %.lr.ph96, label %.preheader.i19.preheader.i

.preheader35.i.i:                                 ; preds = %.lr.ph96
  %i.fh = add i64 %.sroa.04.0.us.i.i95, 1         ; 2 uses
  %exitcond.not.i17.i = icmp eq i64 %i.fh, %umax.i.i
  br i1 %exitcond.not.i17.i, label %.preheader.i19.preheader.i, label %.lr.ph96

.preheader.i19.preheader.i:                       ; preds = %.preheader35.i.i, %.preheader35.i.i.preheader
  br i1 %.first_iter.i16.i, label %.preheader.i19.us.i.preheader, label %.preheader.i19.i

.preheader.i19.us.i.preheader:                    ; preds = %.preheader.i19.preheader.i
  br i1 %.not34.i.us.i97, label %.split.us.i21.i, label %.lr.ph99

.preheader.i19.us.i:                              ; preds = %.lr.ph99
  %.not34.i.us.i = icmp eq i64 %i.fi, 0
  br i1 %.not34.i.us.i, label %.split.us.i21.i, label %.lr.ph99

.lr.ph99:                                         ; preds = %.preheader.i19.us.i.preheader, %.preheader.i19.us.i
  %.sroa.2.0.us.i.us.i98 = phi i64 [ %i.fi, %.preheader.i19.us.i ], [ %.fr215.i, %.preheader.i19.us.i.preheader ]
  %i.fi = add i64 %.sroa.2.0.us.i.us.i98, -1      ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !453, !noalias !444, !noundef !5
  %i.fl = add i64 %i.fi, %i.fa                    ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %.val1
  tail call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fl
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !452, !noalias !444, !noundef !5
  %.not20.us.i.us.i = icmp eq i8 %i.fk, %i.fo
  br i1 %.not20.us.i.us.i, label %.preheader.i19.us.i, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph99
  %i.fp = add i64 %i.fa, %i.ex
  br label %bb.ag

.lr.ph96:                                         ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i95 = phi i64 [ %i.fh, %.preheader35.i.i ], [ %.fr215.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.us.i.i95
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !453, !noalias !444, !noundef !5
  %i.fs = add i64 %.sroa.04.0.us.i.i95, %i.fa     ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %.val1
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fs
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !452, !noalias !444, !noundef !5
  %.not21.us.i.i = icmp eq i8 %i.fr, %i.fv
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.ae

.preheader.i19.i:                                 ; preds = %.preheader.i19.preheader.i
  br i1 %.not34.i.us.i97, label %.split.us.i21.i, label %.split32.us.i20.i

.split32.us.i20.i:                                ; preds = %.preheader.i19.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ey, i64 noundef range(i64 0, -9223372036854775808) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !455
  unreachable

bb.ae:                                            ; preds = %.lr.ph96
  %.reass282.i.reass.reass = add i64 %i.fa, %invariant.op134
  %i.fw = add i64 %.reass282.i.reass.reass, %.sroa.04.0.us.i.i95
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.us.i.i
  %i.fx = add i64 %i.fa, %i.ci
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.split.us.i
  %.sink.i18.i = phi i64 [ %i.fx, %bb.af ], [ %i.fw, %bb.ae ], [ %i.fp, %.split.us.i ] ; 3 uses
  store i64 %.sink.i18.i, ptr %i.cj, align 8, !alias.scope !454
  %i.fy = add i64 %.sink.i18.i, %i.ck             ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %.val1
  br i1 %i.fz, label %.lr.ph.split.us.i.i, label %._crit_edge.i13.i

._crit_edge.i13.i:                                ; preds = %bb.ag, %bb.ad
  store i64 %.val1, ptr %i.cj, align 8, !alias.scope !454
  br label %bb.ah

.split.us.i21.i:                                  ; preds = %.preheader.i19.us.i.preheader, %.preheader.i19.us.i, %.preheader.i19.i
  %i.ga = add i64 %i.fa, %i.ci                    ; 2 uses
  store i64 %i.ga, ptr %i.cj, align 8, !alias.scope !454
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %.split166.us.i.thread, %.split.us.i21.i, %.split.us.i11.i, %.loopexit43.i, %.loopexit42.split.us.i, %.split166.us.i
  %.sroa.9.0 = phi i64 [ %.val1, %.split166.us.i ], [ %i.eg, %.split.us.i11.i ], [ %.lcssa33, %.loopexit42.split.us.i ], [ %i.da, %.loopexit43.i ], [ %i.ga, %.split.us.i21.i ], [ %.val1, %.split166.us.i.thread ]
  %.sroa.4.03 = phi i64 [ %.val1, %.split166.us.i ], [ %i.dl, %.split.us.i11.i ], [ %.lcssa33, %.loopexit42.split.us.i ], [ %i.cz, %.loopexit43.i ], [ %i.fa, %.split.us.i21.i ], [ %.val1, %.split166.us.i.thread ]
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !noundef !5 ; 2 uses
  %i.gd = sub nuw i64 %.sroa.4.03, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gc
  store i64 %.sroa.9.0, ptr %i.gb, align 8
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3Kwrwkha1e5_13pingora_proxy.exit

bb.ah:                                            ; preds = %bb.p, %.preheader.i, %._crit_edge.i13.i, %._crit_edge.i.i, %.loopexit44.i, %bb.q
  store i8 1, ptr %i.a, align 1, !alias.scope !456
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gg = load i8, ptr %i.gf, align 8, !range !11, !alias.scope !456, !noundef !5
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %._crit_edge.i, label %bb.ai

._crit_edge.i:                                    ; preds = %bb.ah
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !456
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i = load i64, ptr %.phi.trans.insert2.i, align 8, !alias.scope !456
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !456, !noundef !5 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !456, !noundef !5 ; 2 uses
  %.not.i2 = icmp eq i64 %i.gj, %i.gl
  br i1 %.not.i2, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3Kwrwkha1e5_13pingora_proxy.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i
  %i.gm = phi i64 [ %.pre3.i, %._crit_edge.i ], [ %i.gj, %bb.ai ]
  %i.gn = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.gl, %bb.ai ] ; 2 uses
  %i.go = sub nuw i64 %i.gm, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gn
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3Kwrwkha1e5_13pingora_proxy.exit

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.aj, %bb.ai, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, %bb.a
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %i.gd, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %i.go, %bb.aj ], [ undef, %bb.ai ]
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.ge, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %i.gp, %bb.aj ], [ null, %bb.ai ]
  %i.gq = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.gr = insertvalue { ptr, i64 } %i.gq, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.gr
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @12, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs1eA6bChxBZF_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter19range_header_filter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, ptr noalias nofree noundef align 8 dereferenceable(232) %2, i64 noundef range(i64 0, 2) %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 17 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 17 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 17 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 17 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 17 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 17 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [40 x i8], align 8                ; 17 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 10 uses
  %i.q = alloca [40 x i8], align 8                ; 11 uses
  %i.r = alloca [48 x i8], align 8                ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [72 x i8], align 8                ; 9 uses
  %i.x = alloca [72 x i8], align 8                ; 17 uses
  %i.y = alloca [24 x i8], align 8                ; 12 uses
  %i.z = alloca [136 x i8], align 8               ; 12 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [32 x i8], align 8               ; 4 uses
  %i.ar = alloca [32 x i8], align 8               ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 2 uses
  %i.aw = alloca [40 x i8], align 8               ; 8 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 2 uses
  %i.az = alloca [32 x i8], align 8               ; 4 uses
  %i.ba = alloca [48 x i8], align 8               ; 9 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 2 uses
  %i.bd = alloca [80 x i8], align 8               ; 28 uses
  %i.be = alloca [8 x i8], align 8                ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bg = load i16, ptr %i.bf, align 8, !range !759, !noundef !5
  %.not = icmp eq i16 %i.bg, 200
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) @37, i64 32, i1 false)
  %i.bh = call noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.as) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.not50 = icmp eq ptr %i.bh, null
  br i1 %.not50, label %bb.k, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.if

bb.d:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !760
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef range(i64 0, -9223372036854775808) %i.bl)
  %i.bm = load i64, ptr %i.af, align 8, !range !9, !noalias !760, !noundef !5
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !760
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !760, !nonnull !5, !noundef !5 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !noalias !760, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !760
  switch i64 %i.br, label %thread-pre-split.i.i [
    i64 0, label %.loopexit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.bs = load i8, ptr %i.bp, align 1, !alias.scope !761, !noundef !5 ; 2 uses
  switch i8 %i.bs, label %bb.h [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i.i:                             ; preds = %bb.f
  %.pr.i.i = load i8, ptr %i.bp, align 1, !alias.scope !761
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i.i, %bb.g
  %i.bt = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.bs, %bb.g ]
  %cond.i.i = icmp eq i8 %i.bt, 43                ; 2 uses
  %i.bu = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.br, %i.bu      ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.bv = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.bv, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.h
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %.loopexit353, label %.lr.ph.i.i

.preheader56.i.i:                                 ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i555, i64 1
  %i.bx = add nsw i64 %.sroa.15.1.i.i554, -1      ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!242 = distinct !{!242, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!243 = distinct !{!243, !242, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!244 = distinct !{!244, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!245 = distinct !{!245, !244, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!246 = distinct !{!246, i1 true, !"_RNvMs1_NtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB5_15RangeBodyFilter8finalize"}
!247 = distinct !{!247, !246, !"_RNvMs1_NtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB5_15RangeBodyFilter8finalize: argument 1"}
!248 = distinct !{!248, !246, !"_RNvMs1_NtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB5_15RangeBodyFilter8finalize: argument 2"}
!249 = distinct !{!249, !246, !"_RNvMs1_NtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB5_15RangeBodyFilter8finalize: argument 0"}
!250 = distinct !{!250, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice"}
!251 = distinct !{!251, !250, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice: argument 0"}
!252 = distinct !{!252, !250, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice: argument 1"}
!253 = distinct !{!253, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!254 = distinct !{!254, !253, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!255 = distinct !{!255, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!256 = distinct !{!256, !255, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!257 = distinct !{!257, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!258 = distinct !{!258, !257, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!259 = distinct !{!259, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!260 = distinct !{!260, !259, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!261 = distinct !{!261, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze"}
!262 = distinct !{!262, !261, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 1"}
!263 = distinct !{!263, !261, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 0"}
!264 = distinct !{!264, i1 true, !"_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance"}
!265 = distinct !{!265, !264, !"_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!266 = distinct !{!266, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!267 = distinct !{!267, !266, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!268 = distinct !{!268, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!269 = distinct !{!269, !268, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!270 = distinct !{!270, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!271 = distinct !{!271, !270, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!272 = distinct !{!272, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!273 = distinct !{!273, !272, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!274 = distinct !{null}
!275 = distinct !{!275, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!276 = distinct !{!276, !275, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!277 = distinct !{!277, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!278 = distinct !{!278, !277, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!279 = !{!169}
!280 = !{!171}
!281 = !{!173}
!282 = !{!173, !171, !169}
!283 = !{!176}
!284 = !{!177}
!285 = !{!176, !177}
!286 = !{!179}
!287 = !{!181}
!288 = !{!181, !179, !177}
!289 = !{!181, !179, !176}
!290 = !{!186, !184, !177}
!291 = !{!184}
!292 = !{!186}
!293 = !{!186, !184, !176}
!294 = !{!189}
!295 = !{!190}
!296 = !{!191}
!297 = !{!189, !190, !191}
!298 = !{!193}
!299 = !{!193, !189, !190, !191}
!300 = !{!195}
!301 = !{!197}
!302 = !{!197, !195, !191}
!303 = !{!197, !195, !189}
!304 = !{!199, !193}
!305 = !{!201}
!306 = !{!202}
!307 = !{!201, !202}
!308 = !{!204}
!309 = !{!206}
!310 = !{!206, !204, !202}
!311 = !{!206, !204, !201, !189}
!312 = !{!201, !189}
!313 = !{!201, !202, !189, !190, !191}
!314 = !{!202, !189, !190, !191}
!315 = !{!210, !208, !202}
!316 = !{!208}
!317 = !{!210}
!318 = !{!210, !208, !201, !189}
!319 = !{!212}
!320 = !{!212, !213, !189, !190, !191}
!321 = !{!215}
!322 = !{!219, !215, !218, !217, !216, !189, !190, !191}
!323 = !{!221}
!324 = !{!222}
!325 = !{!221, !223, !222, !219, !215, !218, !217, !216, !189, !190, !191}
!326 = !{!226, !225, !221, !223, !222, !219, !215, !218, !217, !216, !189, !190, !191}
!327 = !{!222, !219, !215, !189}
!328 = !{!221, !222}
!329 = !{!221, !219, !215, !189}
!330 = !{!219, !189}
!331 = !{!230, !228, !189}
!332 = !{!232}
!333 = !{!232, !233, !189, !190, !191}
!334 = !{!235}
!335 = !{!237}
!336 = !{!237, !235}
!337 = !{!237, !235, !189}
!338 = !{!239}
!339 = !{!241}
!340 = !{!241, !239}
!341 = !{!241, !239, !189}
!342 = !{!245, !243, !189}
!343 = !{!247}
!344 = !{!249, !247, !248, !189, !190, !191}
!345 = !{!247, !190}
!346 = !{!251}
!347 = !{!251, !252, !189, !190, !191}
!348 = !{!256, !254, !189}
!349 = !{!260, !258, !189}
!350 = !{!263, !262, !189, !190, !191}
!351 = !{!265}
!352 = !{!265, !263, !262, !189, !190, !191}
!353 = !{!263, !262, !189}
!354 = !{!267}
!355 = !{!269}
!356 = !{!269, !267}
!357 = !{!269, !267, !263, !262, !189}
!358 = !{!262, !189, !190, !191}
!359 = !{!271}
!360 = !{!273}
!361 = !{!273, !271, !191}
!362 = !{!273, !271, !189}
!363 = !{!276}
!364 = !{!278}
!365 = !{!278, !276, !191}
!366 = !{!278, !276, !189}
!367 = distinct !{!367, i1 true, !"_RNvXs8_NtNtCskKLDkoKarTP_4core5clone5implsjNtB7_5Clone5clone"}
!368 = distinct !{!368, !367, !"_RNvXs8_NtNtCskKLDkoKarTP_4core5clone5implsjNtB7_5Clone5clone: argument 0"}
!369 = distinct !{!369, i1 true, !"_RNvXs8_NtNtCskKLDkoKarTP_4core5clone5implsjNtB7_5Clone5clone"}
!370 = distinct !{!370, !369, !"_RNvXs8_NtNtCskKLDkoKarTP_4core5clone5implsjNtB7_5Clone5clone: argument 0"}
!371 = !{!368}
!372 = !{!370}
!373 = distinct !{!373, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEE8push_mutCs3Kwrwkha1e5_13pingora_proxy"}
!374 = distinct !{!374, !373, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEE8push_mutCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!375 = distinct !{!375, !373, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEE8push_mutCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!376 = distinct !{!376, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy"}
!377 = distinct !{!377, !376, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!378 = distinct !{!378, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy"}
!379 = distinct !{!379, !378, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy: argument 0:It1"}
!380 = distinct !{!380, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy"}
!381 = distinct !{!381, !380, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy: argument 0:It2"}
!382 = distinct !{!382, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy"}
!383 = distinct !{!383, !382, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy: argument 0:It3"}
!384 = distinct !{!384, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy"}
!385 = distinct !{!385, !384, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy: argument 0:It4"}
!386 = distinct !{!386, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy"}
!387 = distinct !{!387, !386, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy: argument 0:It5"}
!388 = distinct !{!388, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy"}
!389 = distinct !{!389, !388, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy: argument 0:It6"}
!390 = distinct !{!390, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy"}
!391 = distinct !{!391, !390, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy: argument 0:It7"}
!392 = distinct !{!392, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy"}
!393 = distinct !{!393, !392, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy: argument 0:It8"}
!394 = distinct !{!394, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy"}
!395 = distinct !{!395, !394, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs3Kwrwkha1e5_13pingora_proxy: argument 0:It9"}
!396 = !{!374}
!397 = !{!375}
!398 = !{!377}
!399 = !{!379}
!400 = !{!381}
!401 = !{!383}
!402 = !{!385}
!403 = !{!387}
!404 = !{!389}
!405 = !{!391}
!406 = !{!393}
!407 = !{!395}
!408 = distinct !{!408, i1 true, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!409 = distinct !{!409, !408, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!410 = distinct !{!410, i1 true, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!411 = distinct !{!411, !410, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!412 = distinct !{!412, i1 true, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!413 = distinct !{!413, !412, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!414 = distinct !{!414, !408, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!415 = distinct !{!415, i1 true, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!416 = distinct !{!416, !415, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!417 = distinct !{!417, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3Kwrwkha1e5_13pingora_proxy"}
!418 = distinct !{!418, !417, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!419 = distinct !{!419, !415, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!420 = distinct !{!420, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!421 = distinct !{!421, !420, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!422 = distinct !{!422, i1 true, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3Kwrwkha1e5_13pingora_proxy"}
!423 = distinct !{!423, !422, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!424 = distinct !{!424, !422, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3Kwrwkha1e5_13pingora_proxy: argument 2"}
!425 = distinct !{!425, !422, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3Kwrwkha1e5_13pingora_proxy: argument 3"}
!426 = distinct !{!426, !422, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!427 = distinct !{!427, i1 true, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3Kwrwkha1e5_13pingora_proxy"}
!428 = distinct !{!428, !427, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!429 = distinct !{!429, !427, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3Kwrwkha1e5_13pingora_proxy: argument 2"}
!430 = distinct !{!430, !427, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3Kwrwkha1e5_13pingora_proxy: argument 3"}
!431 = distinct !{!431, !427, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!432 = distinct !{!432, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3Kwrwkha1e5_13pingora_proxy"}
!433 = distinct !{!433, !432, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!434 = !{!409}
!435 = !{!411}
!436 = !{!413}
!437 = !{!416, !411, !414, !409}
!438 = !{!418, !416, !411, !414, !409}
!439 = !{!411, !409}
!440 = !{!419}
!441 = !{!416, !419, !414, !409}
!442 = !{!419, !409}
!443 = !{!418, !416, !419, !414, !409}
!444 = !{!414, !409}
!445 = !{!421}
!446 = !{!423}
!447 = !{!424}
!448 = !{!425}
!449 = !{!423, !409}
!450 = !{!426, !423, !424, !425, !414, !409}
!451 = !{!428}
!452 = !{!429}
!453 = !{!430}
!454 = !{!428, !409}
!455 = !{!431, !428, !429, !430, !414, !409}
!456 = !{!433}
!457 = distinct !{!457, i1 true, !"_RNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter12parse_number"}
!458 = distinct !{!458, !457, !"_RNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter12parse_number: argument 0"}
!459 = distinct !{!459, i1 true, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl"}
!460 = distinct !{!460, !459, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl: argument 1"}
!461 = distinct !{!461, i1 true, !"_RNvNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter19range_header_filter18request_range_type"}
!462 = distinct !{!462, !461, !"_RNvNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter19range_header_filter18request_range_type: argument 0"}
!463 = distinct !{!463, i1 true, !"_RNvXsq_NtCs84JG9zk80ZV_4http6methodNtB5_5InnerNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq"}
!464 = distinct !{!464, !463, !"_RNvXsq_NtCs84JG9zk80ZV_4http6methodNtB5_5InnerNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq: argument 0"}
!465 = distinct !{!465, !461, !"_RNvNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter19range_header_filter18request_range_type: argument 1"}
!466 = distinct !{!466, i1 true, !"_RNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter18parse_range_header"}
!467 = distinct !{!467, !466, !"_RNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter18parse_range_header: argument 0"}
!468 = distinct !{!468, !466, !"_RNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter18parse_range_header: argument 1"}
!469 = distinct !{!469, i1 true, !"_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple"}
!470 = distinct !{!470, !469, !"_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 0"}
!471 = distinct !{!471, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3Kwrwkha1e5_13pingora_proxy"}
!472 = distinct !{!472, !471, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!473 = distinct !{!473, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCs3Kwrwkha1e5_13pingora_proxy"}
!474 = distinct !{!474, !473, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!475 = distinct !{!475, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!476 = distinct !{!476, !475, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!477 = distinct !{!477, !475, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!478 = distinct !{!478, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!479 = distinct !{!479, !478, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!480 = distinct !{!480, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCs3Kwrwkha1e5_13pingora_proxy"}
!481 = distinct !{!481, !480, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!482 = distinct !{!482, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!483 = distinct !{!483, !482, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!484 = distinct !{!484, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!485 = distinct !{!485, !484, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!486 = distinct !{!486, !482, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!487 = distinct !{!487, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs3Kwrwkha1e5_13pingora_proxy"}
!488 = distinct !{!488, !487, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!489 = distinct !{!489, i1 true, !"_RNvMs4_NtNtCs6xJwbBeREfY_5regex5regex6stringNtB5_5Regex11captures_at"}
!490 = distinct !{!490, !489, !"_RNvMs4_NtNtCs6xJwbBeREfY_5regex5regex6stringNtB5_5Regex11captures_at: argument 1"}
!491 = distinct !{!491, !489, !"_RNvMs4_NtNtCs6xJwbBeREfY_5regex5regex6stringNtB5_5Regex11captures_at: argument 2"}
!492 = distinct !{!492, !489, !"_RNvMs4_NtNtCs6xJwbBeREfY_5regex5regex6stringNtB5_5Regex11captures_at: argument 0"}
!493 = distinct !{!493, i1 true, !"_RNvMs0_NtNtCs3gSIjo26Km0_14regex_automata4meta5regexNtB5_5Regex12search_slots"}
!494 = distinct !{!494, !493, !"_RNvMs0_NtNtCs3gSIjo26Km0_14regex_automata4meta5regexNtB5_5Regex12search_slots: argument 1"}
!495 = distinct !{!495, !493, !"_RNvMs0_NtNtCs3gSIjo26Km0_14regex_automata4meta5regexNtB5_5Regex12search_slots: argument 0"}
!496 = distinct !{!496, i1 true, !"_RNvMs4_NtNtCs3gSIjo26Km0_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible"}
!497 = distinct !{!497, !496, !"_RNvMs4_NtNtCs3gSIjo26Km0_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible: argument 1"}
!498 = distinct !{!498, !496, !"_RNvMs4_NtNtCs3gSIjo26Km0_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible: argument 0"}
!499 = distinct !{!499, i1 true, !"_RNvMs2_NtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs3Kwrwkha1e5_13pingora_proxy"}
!500 = distinct !{!500, !499, !"_RNvMs2_NtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!501 = distinct !{!501, i1 true, !"_RNvMs4_NtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB1b_NtNtNtB2i_5panic11unwind_safe13RefUnwindSafeNtNtB2i_6marker4SendNtB3P_4SyncNtB37_10UnwindSafeEL_EE7put_impCs3Kwrwkha1e5_13pingora_proxy"}
!502 = distinct !{!502, !501, !"_RNvMs4_NtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB1b_NtNtNtB2i_5panic11unwind_safe13RefUnwindSafeNtNtB2i_6marker4SendNtB3P_4SyncNtB37_10UnwindSafeEL_EE7put_impCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!503 = distinct !{!503, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!504 = distinct !{!504, !503, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!505 = distinct !{!505, i1 true, !"_RNvMs6_NtNtCs6xJwbBeREfY_5regex5regex6stringNtB5_5Match6as_str"}
!506 = distinct !{!506, !505, !"_RNvMs6_NtNtCs6xJwbBeREfY_5regex5regex6stringNtB5_5Match6as_str: argument 0"}
!507 = distinct !{!507, i1 true, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl"}
!508 = distinct !{!508, !507, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl: argument 1"}
!509 = distinct !{!509, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!510 = distinct !{!510, !509, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!511 = distinct !{!511, i1 true, !"_RNvMs6_NtNtCs6xJwbBeREfY_5regex5regex6stringNtB5_5Match6as_str"}
!512 = distinct !{!512, !511, !"_RNvMs6_NtNtCs6xJwbBeREfY_5regex5regex6stringNtB5_5Match6as_str: argument 0"}
!513 = distinct !{!513, i1 true, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl"}
!514 = distinct !{!514, !513, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl: argument 1"}
!515 = distinct !{!515, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEE8push_mutCs3Kwrwkha1e5_13pingora_proxy"}
!516 = distinct !{!516, !515, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEE8push_mutCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!517 = distinct !{!517, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCs3Kwrwkha1e5_13pingora_proxy"}
!518 = distinct !{!518, !517, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCs3Kwrwkha1e5_13pingora_proxy: argument 0:pre.rot:h.rot"}
!519 = distinct !{!519, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCs3Kwrwkha1e5_13pingora_proxy"}
!520 = distinct !{!520, !519, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCs3Kwrwkha1e5_13pingora_proxy: argument 0:h.rot"}
!521 = distinct !{!521, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy"}
!522 = distinct !{!522, !521, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!523 = distinct !{!523, !521, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!524 = distinct !{!524, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy"}
!525 = distinct !{!525, !524, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!526 = distinct !{!526, !524, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!527 = distinct !{!527, i1 true, !"_RINvCskspKcFIsYcD_12pingora_http13remove_headerNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueNtNtBN_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy"}
!528 = distinct !{!528, !527, !"_RINvCskspKcFIsYcD_12pingora_http13remove_headerNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueNtNtBN_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy: argument 2"}
!529 = distinct !{!529, !527, !"_RINvCskspKcFIsYcD_12pingora_http13remove_headerNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueNtNtBN_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!530 = distinct !{!530, !527, !"_RINvCskspKcFIsYcD_12pingora_http13remove_headerNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueNtNtBN_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!531 = distinct !{!531, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy"}
!532 = distinct !{!532, !531, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!533 = distinct !{!533, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECs3Kwrwkha1e5_13pingora_proxy"}
!534 = distinct !{!534, !533, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!535 = distinct !{!535, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!536 = distinct !{!536, !535, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!537 = distinct !{!537, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!538 = distinct !{!538, !537, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!539 = distinct !{null}
!540 = distinct !{!540, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECs3Kwrwkha1e5_13pingora_proxy"}
!541 = distinct !{!541, !540, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!542 = distinct !{!542, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs3Kwrwkha1e5_13pingora_proxy"}
!543 = distinct !{!543, !542, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!544 = distinct !{!544, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!545 = distinct !{!545, !544, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!546 = distinct !{!546, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!547 = distinct !{!547, !546, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!548 = distinct !{null}
!549 = distinct !{!549, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy"}
!550 = distinct !{!550, !549, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!551 = distinct !{!551, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECs3Kwrwkha1e5_13pingora_proxy"}
!552 = distinct !{!552, !551, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!553 = distinct !{!553, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!554 = distinct !{!554, !553, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!555 = distinct !{!555, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!556 = distinct !{!556, !555, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!557 = distinct !{!557, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy"}
!558 = distinct !{!558, !557, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!559 = distinct !{!559, !557, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!560 = distinct !{!560, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy"}
!561 = distinct !{!561, !560, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!562 = distinct !{!562, !560, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!563 = distinct !{!563, !823, !824}
!564 = distinct !{!564, !823, !824}
!565 = distinct !{!565, !824, !823}
!566 = distinct !{!566, i1 true, !"_RNvMNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB2_14MultiRangeInfo16set_content_type"}
!567 = distinct !{!567, !566, !"_RNvMNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB2_14MultiRangeInfo16set_content_type: argument 1"}
!568 = distinct !{!568, !566, !"_RNvMNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filterNtB2_14MultiRangeInfo16set_content_type: argument 0"}
!569 = distinct !{!569, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3Kwrwkha1e5_13pingora_proxy"}
!570 = distinct !{!570, !569, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!571 = distinct !{!571, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy"}
!572 = distinct !{!572, !571, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!573 = distinct !{!573, !571, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!574 = distinct !{!574, i1 true, !"_RINvCskspKcFIsYcD_12pingora_http13remove_headerNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueNtNtBN_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy"}
!575 = distinct !{!575, !574, !"_RINvCskspKcFIsYcD_12pingora_http13remove_headerNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueNtNtBN_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy: argument 2"}
!576 = distinct !{!576, !574, !"_RINvCskspKcFIsYcD_12pingora_http13remove_headerNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueNtNtBN_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!577 = distinct !{!577, !574, !"_RINvCskspKcFIsYcD_12pingora_http13remove_headerNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueNtNtBN_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!578 = distinct !{!578, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy"}
!579 = distinct !{!579, !578, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!580 = distinct !{!580, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECs3Kwrwkha1e5_13pingora_proxy"}
!581 = distinct !{!581, !580, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!582 = distinct !{!582, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!583 = distinct !{!583, !582, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!584 = distinct !{!584, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!585 = distinct !{!585, !584, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!586 = distinct !{!586, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECs3Kwrwkha1e5_13pingora_proxy"}
!587 = distinct !{!587, !586, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!588 = distinct !{!588, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs3Kwrwkha1e5_13pingora_proxy"}
!589 = distinct !{!589, !588, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!590 = distinct !{!590, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!591 = distinct !{!591, !590, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!592 = distinct !{!592, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!593 = distinct !{!593, !592, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!594 = distinct !{!594, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy"}
!595 = distinct !{!595, !594, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!596 = distinct !{!596, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECs3Kwrwkha1e5_13pingora_proxy"}
!597 = distinct !{!597, !596, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!598 = distinct !{!598, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!599 = distinct !{!599, !598, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!600 = distinct !{!600, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!601 = distinct !{!601, !600, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!602 = distinct !{!602, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy"}
!603 = distinct !{!603, !602, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!604 = distinct !{!604, !602, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!605 = distinct !{!605, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy"}
!606 = distinct !{!606, !605, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!607 = distinct !{!607, !605, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!608 = distinct !{!608, i1 true, !"_RINvCskspKcFIsYcD_12pingora_http13remove_headerNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueNtNtBN_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy"}
!609 = distinct !{!609, !608, !"_RINvCskspKcFIsYcD_12pingora_http13remove_headerNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueNtNtBN_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy: argument 2"}
!610 = distinct !{!610, !608, !"_RINvCskspKcFIsYcD_12pingora_http13remove_headerNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueNtNtBN_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!611 = distinct !{!611, !608, !"_RINvCskspKcFIsYcD_12pingora_http13remove_headerNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueNtNtBN_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!612 = distinct !{!612, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy"}
!613 = distinct !{!613, !612, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!614 = distinct !{!614, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECs3Kwrwkha1e5_13pingora_proxy"}
!615 = distinct !{!615, !614, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!616 = distinct !{!616, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!617 = distinct !{!617, !616, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!618 = distinct !{!618, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!619 = distinct !{!619, !618, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!620 = distinct !{!620, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECs3Kwrwkha1e5_13pingora_proxy"}
!621 = distinct !{!621, !620, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!622 = distinct !{!622, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs3Kwrwkha1e5_13pingora_proxy"}
!623 = distinct !{!623, !622, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!624 = distinct !{!624, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!625 = distinct !{!625, !624, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!626 = distinct !{!626, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!627 = distinct !{!627, !626, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!628 = distinct !{!628, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy"}
!629 = distinct !{!629, !628, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!630 = distinct !{!630, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECs3Kwrwkha1e5_13pingora_proxy"}
!631 = distinct !{!631, !630, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!632 = distinct !{!632, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy"}
!633 = distinct !{!633, !632, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!634 = distinct !{!634, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!635 = distinct !{!635, !634, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!636 = distinct !{!636, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy"}
!637 = distinct !{!637, !636, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!638 = distinct !{!638, !636, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
!639 = distinct !{!639, i1 true, !"_RNvMNtNtCs84JG9zk80ZV_4http6header5valueNtB2_11HeaderValue11from_static"}
!640 = distinct !{!640, !639, !"_RNvMNtNtCs84JG9zk80ZV_4http6header5valueNtB2_11HeaderValue11from_static: argument 0"}
!641 = distinct !{!641, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy"}
!642 = distinct !{!642, !641, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 1"}
!643 = distinct !{!643, !641, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy: argument 0"}
end_hunk_1
