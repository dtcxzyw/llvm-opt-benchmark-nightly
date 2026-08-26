Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.01?download=true
inline.NumInlined: 869
inline.NumDeleted: 416
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsINtB4_10DynStreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesE18recv_window_updateCsi17nFaBu4HY_10ech_client:bb.a
  %i.by = load ptr, ptr @_RNvNvMs0_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsNtB7_5Inner18recv_window_update10___CALLSITE, align 8, !noalias !1653, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1653
  store ptr %i.j, ptr %i.d, align 8, !noalias !1653
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs2_NtNtCs4okMlIQ9Z13_2h25frame9stream_idNtB5_8StreamIdNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.475.0..sroa_idx.i, align 8, !noalias !1653
  store ptr @23, ptr %i.e, align 8, !noalias !1653
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %i.ca, align 8, !noalias !1653
  store ptr %i.e, ptr %i.f, align 8, !noalias !1653
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @4, ptr %i.cb, align 8, !noalias !1653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1653
  store i64 1, ptr %i.b, align 8, !noalias !1653
  %.sroa.010.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %.sroa.010.sroa.4.0..sroa_idx.i, align 8, !noalias !1653
  %.sroa.010.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.010.sroa.5.0..sroa_idx.i, align 8, !noalias !1653
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.bz, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1653
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %bb.ad unwind label %bb.l, !noalias !1648

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1653
  br label %bb.ab

bb.ae:                                            ; preds = %bb.ag, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1653
  br label %bb.am

bb.af:                                            ; preds = %bb.o
  %i.cc = extractvalue { i32, i32 } %i.bf, 0
  %i.cd = trunc i32 %i.cc to i1
  br i1 %i.cd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ce = extractvalue { i32, i32 } %i.bf, 1
  store i8 1, ptr %0, align 8, !alias.scope !1648, !noalias !1651
  %.sroa.4138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.4138.0..sroa_idx.i, align 1, !alias.scope !1648, !noalias !1651
  %.sroa.6140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ce, ptr %.sroa.6140.0..sroa_idx.i, align 4, !alias.scope !1648, !noalias !1651
  %.sroa.7141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @5, ptr %.sroa.7141.0..sroa_idx.i, align 8, !alias.scope !1648, !noalias !1651
  %.sroa.8142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.8142.0..sroa_idx.i, align 8, !alias.scope !1648, !noalias !1651
  %.sroa.9143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9143.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1648, !noalias !1651
  br label %bb.ae

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1653
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aq, %bb.ah
  store i8 -1, ptr %0, align 8, !alias.scope !1648, !noalias !1651
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  br i1 %i.ar, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cg = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1653
  %i.ch = and i64 %i.cg, 9223372036854775807
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ak, !prof !34

bb.ak:                                            ; preds = %bb.aj
  %i.cj = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #29
          to label %.noexc4 unwind label %bb.at

.noexc4:                                          ; preds = %bb.ak
  br i1 %i.cj, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %.noexc4
  store atomic i8 1, ptr %i.cf monotonic, align 4, !noalias !1648
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.al, %.noexc4, %bb.aj, %bb.ai
  %i.ck = atomicrmw xchg ptr %i.ao, i32 0 release, align 4, !noalias !1648
  %i.cl = icmp eq i32 %i.ck, 2
  br i1 %i.cl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams6buffer6BufferNtNtB1F_5frame5FrameEEECsi17nFaBu4HY_10ech_client.exit.sink.split.i, label %bb.au, !prof !13

bb.am:                                            ; preds = %bb.ar, %bb.ae
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  br i1 %i.ar, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i154.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cn = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1653
  %i.co = and i64 %i.cn, 9223372036854775807
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i154.i, label %bb.ao, !prof !34

bb.ao:                                            ; preds = %bb.an
  %i.cq = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #29
          to label %.noexc5 unwind label %bb.at

.noexc5:                                          ; preds = %bb.ao
  br i1 %i.cq, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i154.i, label %bb.ap

bb.ap:                                            ; preds = %.noexc5
  store atomic i8 1, ptr %i.cm monotonic, align 4, !noalias !1648
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i154.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i154.i: ; preds = %bb.ap, %.noexc5, %bb.an, %bb.am
  %i.cr = atomicrmw xchg ptr %i.ao, i32 0 release, align 4, !noalias !1648
  %i.cs = icmp eq i32 %i.cr, 2
  br i1 %i.cs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams6buffer6BufferNtNtB1F_5frame5FrameEEECsi17nFaBu4HY_10ech_client.exit.sink.split.i, label %bb.au, !prof !13

bb.aq:                                            ; preds = %bb.k
  %i.ct = extractvalue { i32, i32 } %i.aw, 0
  %i.cu = trunc i32 %i.ct to i1
  br i1 %i.cu, label %bb.ar, label %bb.ai

bb.ar:                                            ; preds = %bb.aq
  %i.cv = extractvalue { i32, i32 } %i.aw, 1
  store i8 1, ptr %0, align 8, !alias.scope !1648, !noalias !1651
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.464.0..sroa_idx.i, align 1, !alias.scope !1648, !noalias !1651
  %.sroa.666.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cv, ptr %.sroa.666.0..sroa_idx.i, align 4, !alias.scope !1648, !noalias !1651
  %.sroa.767.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @5, ptr %.sroa.767.0..sroa_idx.i, align 8, !alias.scope !1648, !noalias !1651
  %.sroa.868.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.868.0..sroa_idx.i, align 8, !alias.scope !1648, !noalias !1651
  %.sroa.969.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.969.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1648, !noalias !1651
  br label %bb.am

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams6buffer6BufferNtNtB1F_5frame5FrameEEECsi17nFaBu4HY_10ech_client.exit.sink.split.i: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i154.i, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ao)
          to label %bb.au unwind label %bb.at

bb.as:                                            ; preds = %bb.l
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27, !noalias !1648
  unreachable

bb.at:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams6buffer6BufferNtNtB1F_5frame5FrameEEECsi17nFaBu4HY_10ech_client.exit.sink.split.i, %bb.ao, %bb.ak, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.l, %bb.at
  %eh.lpad-body = phi { ptr, i32 } [ %i.cx, %bb.at ], [ %i.al, %bb.g ], [ %i.ax, %bb.l ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEECsi17nFaBu4HY_10ech_client(ptr nonnull %i.x, i8 %i.z) #26
          to label %common.resume unwind label %bb.az

bb.au:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i154.i, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams6buffer6BufferNtNtB1F_5frame5FrameEEECsi17nFaBu4HY_10ech_client.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  br i1 %i.aa, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cz = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.da = and i64 %i.cz, 9223372036854775807
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.aw, !prof !34

bb.aw:                                            ; preds = %bb.av
  %i.dc = call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #29
  br i1 %i.dc, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store atomic i8 1, ptr %i.cy monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au
  %i.dd = atomicrmw xchg ptr %i.x, i32 0 release, align 4
  %i.de = icmp eq i32 %i.dd, 2
  br i1 %i.de, label %bb.ay, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEECsi17nFaBu4HY_10ech_client.exit, !prof !13

bb.ay:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.x)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEECsi17nFaBu4HY_10ech_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEECsi17nFaBu4HY_10ech_client.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.ay
  ret void

bb.az:                                            ; preds = %.body
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsINtB4_10DynStreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesE8recv_eofCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %2 = alloca [40 x i8], align 8                  ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = load ptr, ptr %0, align 8, !nonnull !6, !align !15, !noundef !6
  call void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerE4lockCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.i)
  %i.j = load i64, ptr %i.h, align 8, !range !10, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !align !15, !noundef !6 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !16, !noundef !6 ; 3 uses
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = trunc nuw i8 %i.o to i1
  br i1 %i.q, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1661
  %i.s = and i64 %i.r, 9223372036854775807
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.d, !prof !34

bb.d:                                             ; preds = %bb.c
  %i.u = call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #29, !noalias !1661
  br i1 %i.u, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store atomic i8 1, ptr %i.p monotonic, align 4, !noalias !1661
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.v = atomicrmw xchg ptr %i.m, i32 0 release, align 4, !noalias !1661
  %i.w = icmp eq i32 %i.v, 2
  br i1 %i.w, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECsi17nFaBu4HY_10ech_client.exit, !prof !13

bb.f:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m), !noalias !1661
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECsi17nFaBu4HY_10ech_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECsi17nFaBu4HY_10ech_client.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEECsi17nFaBu4HY_10ech_client.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !6, !align !15, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !1664)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1664
  invoke void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams6buffer6BufferNtNtB16_5frame5FrameEE4lockCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.z)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  %i.ab = load i64, ptr %i.g, align 8, !range !10, !alias.scope !1667, !noalias !1670, !noundef !6
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams6buffer6BufferNtNtB1L_5frame5FrameEEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i, !prof !13

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1672
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !1667, !noalias !1670, !nonnull !6, !align !15, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !range !16, !alias.scope !1667, !noalias !1670, !noundef !6
  store ptr %i.ae, ptr %i.a, align 8, !noalias !1672
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ag, ptr %i.ah, align 8, !noalias !1672
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #28
          to label %bb.j unwind label %bb.i, !noalias !1673

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams6buffer6BufferNtNtB1Y_5frame5FrameEEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #26
          to label %.body unwind label %bb.k, !noalias !1673

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27, !noalias !1673
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams6buffer6BufferNtNtB1L_5frame5FrameEEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i: ; preds = %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !1667, !noalias !1670, !nonnull !6, !align !15, !noundef !6 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.an = load i8, ptr %i.am, align 8, !range !16, !alias.scope !1667, !noalias !1670, !noundef !6 ; 2 uses
  %i.ao = trunc nuw i8 %i.an to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1664
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 384 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !range !47, !alias.scope !1664, !noundef !6
  %.not.i = icmp eq i8 %i.ar, -1
  br i1 %.not.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams6buffer6BufferNtNtB1L_5frame5FrameEEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !1664
  %i.as = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 42)
          to label %bb.n unwind label %bb.m, !noalias !1664

bb.m:                                             ; preds = %bb.l, %bb.n, %bb.q, %bb.r, %bb.u, %bb.v, %bb.x
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams6buffer6BufferNtNtB1F_5frame5FrameEEECsi17nFaBu4HY_10ech_client(ptr nonnull %i.al, i8 %i.an) #26
          to label %.body unwind label %bb.ad

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvXs2_NtNtCs4okMlIQ9Z13_2h25proto5errorNtB5_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %2, ptr noundef nonnull %i.as)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25proto5error5ErrorEECsi17nFaBu4HY_10ech_client.exit.i unwind label %bb.m, !noalias !1664

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25proto5error5ErrorEECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !noalias !1664
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !1664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25proto5error5ErrorEECsi17nFaBu4HY_10ech_client.exit.i, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams6buffer6BufferNtNtB1L_5frame5FrameEEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i
  %i.au = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1664
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.aw = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsNtB7_5Inner8recv_eof10___CALLSITE, i64 16) monotonic, align 8, !noalias !1664 ; 3 uses
  switch i8 %i.aw, label %bb.q [
    i8 0, label %bb.u
    i8 1, label %bb.r
    i8 2, label %bb.r
  ], !prof !49

bb.q:                                             ; preds = %bb.p
  %i.ax = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsNtB7_5Inner8recv_eof10___CALLSITE)
          to label %bb.s unwind label %bb.m       ; 2 uses

bb.r:                                             ; preds = %bb.p, %bb.s, %bb.p
  %.sroa.06.0.i = phi i8 [ %i.ax, %bb.s ], [ %i.aw, %bb.p ], [ %i.aw, %bb.p ]
  %i.ay = load ptr, ptr @_RNvNvMs0_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsNtB7_5Inner8recv_eof10___CALLSITE, align 8, !noalias !1664, !nonnull !6, !align !15, !noundef !6
  %i.az = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ay, i8 noundef %.sroa.06.0.i)
          to label %bb.t unwind label %bb.m

bb.s:                                             ; preds = %bb.q
  %i.ba = icmp eq i8 %i.ax, 0
  br i1 %i.ba, label %bb.u, label %bb.r

bb.t:                                             ; preds = %bb.r
  br i1 %i.az, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t, %bb.s, %bb.p, %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 440 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1664
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  store ptr %i.x, ptr %i.c, align 8, !noalias !1664
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.aa, ptr %i.bd, align 8, !noalias !1664
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.bc, ptr %i.be, align 8, !noalias !1664
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.ap, ptr %i.bf, align 8, !noalias !1664
  invoke void @_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeNtB3_5Store8for_eachNCINvMs0_NtB5_7streamsNtB1d_5Inner8recv_eofNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesE0ECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.bb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.x unwind label %bb.m

bb.v:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr @_RNvNvMs0_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsNtB7_5Inner8recv_eof10___CALLSITE, align 8, !noalias !1664, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1664
  store ptr @26, ptr %i.d, align 8, !noalias !1664
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 35 to ptr), ptr %i.bi, align 8, !noalias !1664
  store ptr %i.d, ptr %i.e, align 8, !noalias !1664
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @4, ptr %i.bj, align 8, !noalias !1664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1664
  store i64 1, ptr %i.b, align 8, !noalias !1664
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !1664
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !1664
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1664
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %bb.w unwind label %bb.m

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1664
  br label %bb.u

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1664
  invoke void @_RNvMsc_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsNtB5_7Actions12clear_queues(ptr noalias nofree noundef nonnull align 8 dereferenceable(336) %i.aa, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(552) %i.x)
          to label %bb.y unwind label %bb.m

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  br i1 %i.ao, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1664
  %i.bm = and i64 %i.bl, 9223372036854775807
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9, label %bb.aa, !prof !34

bb.aa:                                            ; preds = %bb.z
  %i.bo = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #29
          to label %.noexc10 unwind label %bb.ae

.noexc10:                                         ; preds = %bb.aa
  br i1 %i.bo, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9, label %bb.ab

bb.ab:                                            ; preds = %.noexc10
  store atomic i8 1, ptr %i.bk monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9: ; preds = %bb.ab, %.noexc10, %bb.z, %bb.y
  %i.bp = atomicrmw xchg ptr %i.al, i32 0 release, align 4
  %i.bq = icmp eq i32 %i.bp, 2
  br i1 %i.bq, label %bb.ac, label %_RINvMs0_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsNtB6_5Inner8recv_eofNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit, !prof !13

bb.ac:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.al)
          to label %_RINvMs0_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsNtB6_5Inner8recv_eofNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit unwind label %bb.ae

bb.ad:                                            ; preds = %bb.m
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ae:                                            ; preds = %bb.ac, %bb.aa, %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.m, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %i.bs, %bb.ae ], [ %i.ai, %bb.i ], [ %i.at, %bb.m ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEECsi17nFaBu4HY_10ech_client(ptr nonnull %i.m, i8 %i.o) #26
          to label %bb.ak unwind label %bb.aj

_RINvMs0_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsNtB6_5Inner8recv_eofNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9, %bb.ac
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.bu = trunc nuw i8 %i.o to i1
  br i1 %i.bu, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_RINvMs0_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsNtB6_5Inner8recv_eofNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit
  %i.bv = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bw = and i64 %i.bv, 9223372036854775807
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ag, !prof !34

bb.ag:                                            ; preds = %bb.af
  %i.by = call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #29
  br i1 %i.by, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store atomic i8 1, ptr %i.bt monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.ah, %bb.ag, %bb.af, %_RINvMs0_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsNtB6_5Inner8recv_eofNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit
  %i.bz = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ca = icmp eq i32 %i.bz, 2
  br i1 %i.ca, label %bb.ai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEECsi17nFaBu4HY_10ech_client.exit, !prof !13

bb.ai:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEECsi17nFaBu4HY_10ech_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.ai, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECsi17nFaBu4HY_10ech_client.exit
  ret i1 %i.k

bb.aj:                                            ; preds = %.body
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ak:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsINtB4_10DynStreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesE9recv_dataCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [4 x i8], align 4                 ; 10 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.x = load ptr, ptr %1, align 8, !nonnull !6, !align !15, !noundef !6
  invoke void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerE4lockCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noundef nonnull align 8 %i.x)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
end_hunk_0
