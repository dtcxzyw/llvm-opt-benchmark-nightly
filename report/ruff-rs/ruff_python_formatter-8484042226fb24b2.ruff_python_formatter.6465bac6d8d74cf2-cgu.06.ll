Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_formatter-8484042226fb24b2.ruff_python_formatter.6465bac6d8d74cf2-cgu.06?download=true
inline.NumInlined: 778
inline.NumDeleted: 393
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE9put_valueCs8CpBcHC8tKo_21ruff_python_formatter:bb.a
  %i.ez = icmp eq i32 %i.ey, 2
  br i1 %i.ez, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20.8, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs8CpBcHC8tKo_21ruff_python_formatter.exit26.8, !prof !14

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20.8: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8
  invoke void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16.8)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs8CpBcHC8tKo_21ruff_python_formatter.exit26.8 unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs8CpBcHC8tKo_21ruff_python_formatter.exit26.8: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20.8, %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fa = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %i.fb = icmp ult i64 %i.g, %i.fa
  br i1 %i.fb, label %bb.bz, label %bb.f

bb.bz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs8CpBcHC8tKo_21ruff_python_formatter.exit26.8
  %i.fc = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  %i.fd = getelementptr inbounds nuw [64 x i8], ptr %i.fc, i64 %i.g
  invoke void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEE8try_lockCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.fd)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bz
  %i.fe = load i64, ptr %i.a, align 8, !range !7, !noundef !8
  %i.ff = trunc nuw i64 %i.fe to i1
  br i1 %i.ff, label %bb.cb, label %bb.h

bb.cb:                                            ; preds = %bb.ca
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %.val.i16.9 = load ptr, ptr %i.i, align 8, !alias.scope !990 ; 4 uses
  %.val3.i17.9 = load i8, ptr %i.j, align 8, !range !22, !alias.scope !990, !noundef !8 ; 2 uses
  %.not.i.i18.9 = icmp eq i8 %.val3.i17.9, 2
  br i1 %.not.i.i18.9, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs8CpBcHC8tKo_21ruff_python_formatter.exit26.9, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.9) ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i16.9, i64 4
  %i.fh = trunc nuw i8 %.val3.i17.9 to i1
  br i1 %i.fh, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fi = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !990
  %i.fj = and i64 %i.fi, 9223372036854775807
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, label %bb.ce, !prof !9

bb.ce:                                            ; preds = %bb.cd
  %i.fl = invoke noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc24.9 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc24.9:                                       ; preds = %bb.ce
  br i1 %i.fl, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, label %bb.cf

bb.cf:                                            ; preds = %.noexc24.9
  store atomic i8 1, ptr %i.fg monotonic, align 1, !noalias !990
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9: ; preds = %bb.cf, %.noexc24.9, %bb.cd, %bb.cc
  %i.fm = atomicrmw xchg ptr %.val.i16.9, i32 0 release, align 4, !noalias !990
  %i.fn = icmp eq i32 %i.fm, 2
  br i1 %i.fn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20.9, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs8CpBcHC8tKo_21ruff_python_formatter.exit26.9, !prof !14

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20.9: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9
  invoke void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16.9)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs8CpBcHC8tKo_21ruff_python_formatter.exit26.9 unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs8CpBcHC8tKo_21ruff_python_formatter.exit26.9: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20.9, %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEECs8CpBcHC8tKo_21ruff_python_formatter(ptr nonnull %1)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.cg:                                            ; preds = %.body, %.loopexit.split-lp.loopexit.split-lp
  %.pn29 = phi { ptr, i32 } [ %i.v, %.body ], [ %lpad.loopexit.split-lp36, %.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn29

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.t, %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20, %bb.v, %bb.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20.1, %bb.ac, %bb.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20.2, %bb.aj, %bb.ao, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20.3, %bb.aq, %bb.av, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20.4, %bb.ax, %bb.bc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20.5, %bb.be, %bb.bj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20.6, %bb.bl, %bb.bq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20.7, %bb.bs, %bb.bx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20.8, %bb.bz, %bb.ce, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.sink.split.i20.9, %bb.a, %bb.f, %bb.c
  %lpad.loopexit.split-lp36 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEECs8CpBcHC8tKo_21ruff_python_formatter(ptr nonnull %1) #24
          to label %bb.cg unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_14CodeExampleRst18push_format_action(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(80) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1002 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !8 ; 9 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.loopexit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.idx = mul nuw nsw i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB7_14CodeExampleRst18push_format_action0Bb_.exit.i
  %.sroa.03.013.i = phi i64 [ %i.m, %_RNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB7_14CodeExampleRst18push_format_action0Bb_.exit.i ], [ %i.h, %.lr.ph.i.preheader ] ; 4 uses
  %i.k = phi ptr [ %i.l, %_RNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB7_14CodeExampleRst18push_format_action0Bb_.exit.i ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -56 ; 3 uses
  %i.m = add i64 %.sroa.03.013.i, -1              ; 2 uses
  %.val.i = load ptr, ptr %i.l, align 8, !noalias !1003, !nonnull !8, !noundef !8 ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 -48
  %.val9.i = load i64, ptr %i.n, align 8, !noalias !1003, !noundef !8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val9.i ; 4 uses
  %.not.i11.not.i.i.i = icmp samesign eq i64 %.val9.i, 0
  br i1 %.not.i11.not.i.i.i, label %_RNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB7_14CodeExampleRst18push_format_action0Bb_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkcNCNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB1m_14CodeExampleRst18push_format_action00E0B1q_.exit.i.i.i
  %i.p = phi ptr [ %i.ay, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkcNCNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB1m_14CodeExampleRst18push_format_action00E0B1q_.exit.i.i.i ], [ %.val.i, %.lr.ph.i ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  %i.r = load i8, ptr %i.p, align 1, !noalias !1004, !noundef !8 ; 5 uses
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %bb.b, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.t = and i8 %i.r, 31
  %i.u = zext nneg i8 %i.t to i32                 ; 3 uses
  %i.v = icmp ne ptr %i.q, %i.o
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 3 uses
  %i.x = load i8, ptr %i.q, align 1, !noalias !1004, !noundef !8
  %i.y = shl nuw nsw i32 %i.u, 6
  %i.z = and i8 %i.x, 63
  %i.aa = zext nneg i8 %i.z to i32                ; 2 uses
  %i.ab = or disjoint i32 %i.y, %i.aa
  %i.ac = icmp samesign ugt i8 %i.r, -33
  br i1 %i.ac, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = zext nneg i8 %i.r to i32
  br label %bb.c

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i.i.i.i
  %i.ae = icmp ne ptr %i.w, %i.o
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 3 ; 3 uses
  %i.ag = load i8, ptr %i.w, align 1, !noalias !1004, !noundef !8
  %i.ah = shl nuw nsw i32 %i.aa, 6
  %i.ai = and i8 %i.ag, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj            ; 2 uses
  %i.al = shl nuw nsw i32 %i.u, 12
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = icmp samesign ugt i8 %i.r, -17
  br i1 %i.an, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i.i.i.i
  %i.ao = icmp ne ptr %i.af, %i.o
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.aq = load i8, ptr %i.af, align 1, !noalias !1004, !noundef !8
  %i.ar = shl nuw nsw i32 %i.u, 18
  %i.as = and i32 %i.ar, 1835008
  %i.at = shl nuw nsw i32 %i.ak, 6
  %i.au = and i8 %i.aq, 63
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = or disjoint i32 %i.aw, %i.as
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i.i.i.i
  %i.ay = phi ptr [ %i.af, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i.i.i.i ], [ %i.ap, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i.i.i.i ], [ %i.w, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i.i.i.i ], [ %i.q, %bb.b ] ; 2 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i.i.i.i ], [ %i.ax, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i.i.i.i ], [ %i.ad, %bb.b ]
  switch i32 %spec.select.i.ph.i.i.i, label %.loopexit [
    i32 32, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkcNCNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB1m_14CodeExampleRst18push_format_action00E0B1q_.exit.i.i.i
    i32 9, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkcNCNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB1m_14CodeExampleRst18push_format_action00E0B1q_.exit.i.i.i
    i32 12, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkcNCNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB1m_14CodeExampleRst18push_format_action00E0B1q_.exit.i.i.i
  ]

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkcNCNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB1m_14CodeExampleRst18push_format_action00E0B1q_.exit.i.i.i: ; preds = %bb.c, %bb.c, %bb.c
  %.not.i.not.i.i.i = icmp eq ptr %i.ay, %i.o
  br i1 %.not.i.not.i.i.i, label %_RNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB7_14CodeExampleRst18push_format_action0Bb_.exit.i, label %.lr.ph.i.i.i

_RNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB7_14CodeExampleRst18push_format_action0Bb_.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkcNCNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB1m_14CodeExampleRst18push_format_action00E0B1q_.exit.i.i.i, %.lr.ph.i
  %i.az = icmp eq ptr %i.f, %i.l
  br i1 %i.az, label %.loopexit.thread, label %.lr.ph.i

.loopexit.thread:                                 ; preds = %_RNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB7_14CodeExampleRst18push_format_action0Bb_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ba = icmp ult i64 %i.h, 164703072086692426
  tail call void @llvm.assume(i1 %i.ba)
  br label %bb.d

.loopexit:                                        ; preds = %bb.c
  %i.bb = icmp ult i64 %i.m, %i.h
  tail call void @llvm.assume(i1 %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  %i.bc = icmp ult i64 %i.h, 164703072086692426
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp ugt i64 %.sroa.03.013.i, %i.h
  br i1 %i.bd, label %bb.f, label %bb.d, !prof !1007

bb.d:                                             ; preds = %.loopexit.thread, %.loopexit
  %.sroa.0.0.i22 = phi i64 [ 0, %.loopexit.thread ], [ %.sroa.03.013.i, %.loopexit ] ; 3 uses
  %i.be = sub nuw nsw i64 %i.h, %.sroa.0.0.i22    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1008
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 -164703072086692425, 164703072086692426) %i.be, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.d
  %i.bf = load i64, ptr %i.a, align 8, !range !7, !noalias !1008, !noundef !8
  %i.bg = trunc nuw i64 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !1009, !noalias !1008, !noundef !8 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bg, label %bb.e, label %bb.g, !prof !14

bb.e:                                             ; preds = %.noexc
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !1008
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bi, i64 %i.bk) #25
          to label %.noexc6 unwind label %bb.k

.noexc6:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.loopexit
  invoke void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE9split_off13assert_failed(i64 noundef %.sroa.03.013.i, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #25
          to label %.noexc7 unwind label %bb.k

.noexc7:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc
  %i.bl = load ptr, ptr %i.bj, align 8, !noalias !1008, !nonnull !8, !noundef !8 ; 5 uses
  %i.bm = icmp ule i64 %i.be, %i.bi
  tail call void @llvm.assume(i1 %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1008
  store i64 %i.bi, ptr %i.d, align 8, !alias.scope !1005
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bl, ptr %i.bn, align 8, !alias.scope !1005
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.0.0.i22, ptr %i.g, align 8, !alias.scope !1006
  store i64 %i.be, ptr %i.bo, align 8, !alias.scope !1005
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %.sroa.0.0.i22
  %i.bq = mul nuw nsw i64 %i.be, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr nonnull align 8 %i.bp, i64 %i.bq, i1 false), !noalias !1008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  %i.br = invoke noundef nonnull align 8 ptr @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstring20CodeExampleAddActionE13push_back_mutB1a_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.c)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %2 = icmp samesign ult i64 %i.be, 164703072086692426
  call void @llvm.assume(i1 %2)
  %i.bs = getelementptr inbounds nuw [56 x i8], ptr %i.bl, i64 %i.be
  store ptr %i.bl, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bl, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bi, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.bs, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvXs_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque11spec_extendINtB6_8VecDequeNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstring20CodeExampleAddActionEINtB4_10SpecExtendB1i_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterNtB1k_15CodeExampleLineENCNvMs4_B1k_NtB1k_14CodeExampleRst18push_format_actions0_0EE11spec_extendB1o_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstring15CodeExampleLineEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #24
          to label %.thread unwind label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %bb.i, %bb.k
  %.pn10 = phi { ptr, i32 } [ %i.bv, %bb.k ], [ %i.bt, %bb.i ]
  resume { ptr, i32 } %.pn10

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstring14CodeExampleRstEBH_(ptr noalias noundef align 8 dereferenceable(80) %0) #24
          to label %.thread unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation14trim_start_str(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !guid !1018 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !25, !alias.scope !1019, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1019, !noundef !8 ; 5 uses
  switch i32 %i.a, label %default.unreachable [
    i32 0, label %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %i.c, 3
  br label %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1019, !noundef !8
  %i.g = shl i64 %i.c, 3
  %i.h = add i64 %i.f, %i.g
  br label %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1019, !noundef !8
  %reass.sub.i = and i64 %i.c, -8
  %i.k = shl i64 %i.j, 3
  %i.l = add i64 %i.k, %reass.sub.i
  br label %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit

_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.c, %bb.a ], [ %i.d, %bb.b ], [ %i.h, %bb.c ], [ %i.l, %bb.d ], [ %i.c, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.n = icmp samesign eq i64 %2, 0
  br i1 %i.n, label %_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space6lookup.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit, %bb.l
  %.sroa.0.072 = phi ptr [ %.sroa.0.1, %bb.l ], [ %1, %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit ] ; 10 uses
  %.sroa.10.070 = phi i64 [ %.pn61, %bb.l ], [ %2, %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit ] ; 14 uses
  %.sroa.014.069 = phi i64 [ %.sroa.014.1, %bb.l ], [ 0, %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit ] ; 4 uses
  %.sroa.0.04468 = phi ptr [ %.sroa.0.145.ph, %bb.l ], [ %1, %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.04468, i64 1 ; 3 uses
  %i.p = load i8, ptr %.sroa.0.04468, align 1, !noalias !1020, !noundef !8 ; 5 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.e, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i: ; preds = %.lr.ph
  %i.r = and i8 %i.p, 31
  %i.s = zext nneg i8 %i.r to i32                 ; 3 uses
  %i.t = icmp ne ptr %i.o, %i.m
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.04468, i64 2 ; 3 uses
  %i.v = load i8, ptr %i.o, align 1, !noalias !1020, !noundef !8
  %i.w = shl nuw nsw i32 %i.s, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32                 ; 2 uses
  %i.z = or disjoint i32 %i.w, %i.y
  %i.aa = icmp samesign ugt i8 %i.p, -33
  br i1 %i.aa, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ab = zext nneg i8 %i.p to i32
  br label %bb.f

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i
  %i.ac = icmp ne ptr %i.u, %i.m
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.04468, i64 3 ; 3 uses
  %i.ae = load i8, ptr %i.u, align 1, !noalias !1020, !noundef !8
  %i.af = shl nuw nsw i32 %i.y, 6
  %i.ag = and i8 %i.ae, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah            ; 2 uses
  %i.aj = shl nuw nsw i32 %i.s, 12
  %i.ak = or disjoint i32 %i.ai, %i.aj
  %i.al = icmp samesign ugt i8 %i.p, -17
  br i1 %i.al, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i, label %bb.f

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i
  %i.am = icmp ne ptr %i.ad, %i.m
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.04468, i64 4
  %i.ao = load i8, ptr %i.ad, align 1, !noalias !1020, !noundef !8
  %i.ap = shl nuw nsw i32 %i.s, 18
  %i.aq = and i32 %i.ap, 1835008
  %i.ar = shl nuw nsw i32 %i.ai, 6
  %i.as = and i8 %i.ao, 63
  %i.at = zext nneg i8 %i.as to i32
  %i.au = or disjoint i32 %i.ar, %i.at
  %i.av = or disjoint i32 %i.au, %i.aq
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i
  %.sroa.0.145.ph = phi ptr [ %i.u, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i ], [ %i.ad, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i ], [ %i.an, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.z, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i ], [ %i.ak, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i ], [ %i.av, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i ], [ %i.ab, %bb.e ] ; 11 uses
  %i.aw = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.aw)
  %.not = icmp ult i64 %.sroa.014.069, %.sroa.0.0.i
  br i1 %.not, label %bb.g, label %_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space6lookup.exit.thread

bb.g:                                             ; preds = %bb.f
  switch i32 %.sroa.4.0.i.ph, label %bb.m [
    i32 9, label %bb.h
    i32 32, label %bb.u
  ]

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp ugt i64 %.sroa.10.070, 1
  br i1 %.not.i, label %bb.i, label %.split.i

.split.i:                                         ; preds = %bb.h
  %i.ax = icmp eq i64 %.sroa.10.070, 1
  br i1 %i.ax, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.072, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !1021, !noundef !8
  %i.ba = icmp sgt i8 %i.az, -65
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %.split.i
  %i.bb = add i64 %.sroa.10.070, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.072, i64 1
  %reass.sub = and i64 %.sroa.014.069, -8
  %i.bd = add i64 %reass.sub, 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %.split.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.072, i64 noundef %.sroa.10.070, i64 noundef 1, i64 noundef %.sroa.10.070, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #25
  unreachable

bb.l:                                             ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit43, %bb.j
  %.sroa.014.1 = phi i64 [ %i.bd, %bb.j ], [ %.sroa.014.2, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit43 ]
  %.pn61 = phi i64 [ %i.bb, %bb.j ], [ %i.cg, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit43 ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.bc, %bb.j ], [ %i.ch, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit43 ] ; 2 uses
  %i.be = icmp eq ptr %.sroa.0.145.ph, %i.m
  br i1 %i.be, label %_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space6lookup.exit.thread, label %.lr.ph

bb.m:                                             ; preds = %bb.g
  %i.bf = add nsw i32 %.sroa.4.0.i.ph, -9
  %or.cond = icmp ult i32 %i.bf, 5
  br i1 %or.cond, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph, 133
  br i1 %i.bg, label %_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space6lookup.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = lshr i32 %.sroa.4.0.i.ph, 8
  switch i32 %i.bh, label %_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space6lookup.exit.thread [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.bi = icmp eq i32 %.sroa.4.0.i.ph, 5760
end_hunk_0
