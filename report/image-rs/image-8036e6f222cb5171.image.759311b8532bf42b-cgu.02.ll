Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.02?download=true
inline.NumInlined: 1033
inline.NumDeleted: 460
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNCNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1E_5error5ErrorEE4send0Csa5QsYiPB8Gl_5image:bb.a
bb.am:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsa5QsYiPB8Gl_5image.exit62
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.58.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, i64 72, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.47.0..sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1O_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit64

.invoke:                                          ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsa5QsYiPB8Gl_5image.exit73, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsa5QsYiPB8Gl_5image.exit62
  %i.dm = phi ptr [ @27, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsa5QsYiPB8Gl_5image.exit62 ], [ @30, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsa5QsYiPB8Gl_5image.exit73 ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm) #33
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1B_5error5ErrorEE10wait_readyCsa5QsYiPB8Gl_5image.exit.loopexit: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %.thread
  store i64 2, ptr %0, align 8
  %.pre = load i64, ptr %i.j, align 8, !range !125, !alias.scope !736
  %i.dn = icmp eq i64 %.pre, -2
  br i1 %i.dn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1O_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit64, label %bb.an

bb.an:                                            ; preds = %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1B_5error5ErrorEE10wait_readyCsa5QsYiPB8Gl_5image.exit.loopexit
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.j)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1O_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit64

bb.ao:                                            ; preds = %bb.i, %bb.af, %bb.ax, %bb.bg
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ap:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %i.dp = load i64, ptr %i.d, align 8, !range !175, !alias.scope !743, !noalias !746, !noundef !4
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %bb.aq, label %bb.au, !prof !124

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !748
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !743, !noalias !746, !nonnull !4, !align !129, !noundef !4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.du = load i8, ptr %i.dt, align 8, !range !6, !alias.scope !743, !noalias !746, !noundef !4
  store ptr %i.ds, ptr %i.b, align 8, !noalias !748
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.du, ptr %i.dv, align 8, !noalias !748
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33
          to label %bb.as unwind label %bb.ar, !noalias !743

bb.ar:                                            ; preds = %bb.aq
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #29
          to label %.body unwind label %bb.at, !noalias !743

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !743
  unreachable

bb.au:                                            ; preds = %bb.ap
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !743, !noalias !746, !nonnull !4, !align !129, !noundef !4 ; 7 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.eb = load i8, ptr %i.ea, align 8, !range !6, !alias.scope !743, !noalias !746, !noundef !4 ; 2 uses
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !749, !noalias !752, !nonnull !4, !noundef !4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !749, !noalias !752, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.eh, 24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx
  %i.ej = icmp eq i64 %i.eh, 0
  br i1 %i.ej, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67.thread, label %.lr.ph

bb.av:                                            ; preds = %.lr.ph
  %i.ek = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 2 uses
  %i.el = add nuw nsw i64 %i.eo, 1
  %i.em = icmp eq ptr %i.ek, %i.ei
  br i1 %i.em, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.au, %bb.av
  %i.en = phi ptr [ %i.ek, %bb.av ], [ %i.ef, %bb.au ] ; 2 uses
  %i.eo = phi i64 [ %i.el, %bb.av ], [ 0, %bb.au ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !754, !noalias !759, !noundef !4
  %.not.i.i65 = icmp eq i64 %i.eq, %i.m
  br i1 %.not.i.i65, label %bb.aw, label %bb.av

bb.aw:                                            ; preds = %.lr.ph
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryE6removeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ed, i64 noundef %i.eo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43)
          to label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67.thread
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsa5QsYiPB8Gl_5image(ptr nonnull %i.dz, i8 %i.eb) #29
          to label %.body unwind label %bb.ao

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67: ; preds = %bb.aw
  %.pr15 = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %.pr15, null
  br i1 %.not, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67.thread, label %bb.ay, !prof !625

bb.ay:                                            ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  %i.es = load ptr, ptr %i.f, align 8, !alias.scope !776, !nonnull !4, !noundef !4
  %i.et = atomicrmw sub ptr %i.es, i64 1 release, align 8, !noalias !776
  %i.eu = icmp eq i64 %i.et, 1
  br i1 %i.eu, label %bb.az, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit69

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit69 unwind label %bb.ax

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67.thread: ; preds = %bb.av, %bb.au, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #33
          to label %bb.b unwind label %bb.ax

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit69: ; preds = %bb.ay, %bb.az
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  br i1 %i.ec, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit69
  %i.ew = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ex = and i64 %i.ew, 9223372036854775807
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.bb, !prof !123

bb.bb:                                            ; preds = %bb.ba
  %i.ez = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #30
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc71:                                         ; preds = %bb.bb
  br i1 %i.ez, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.bc

bb.bc:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.ev monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i70

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i70: ; preds = %bb.bc, %.noexc71, %bb.ba, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit69
  %i.fa = atomicrmw xchg ptr %i.dz, i32 0 release, align 4
  %i.fb = icmp eq i32 %i.fa, 2
  br i1 %i.fb, label %bb.bd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsa5QsYiPB8Gl_5image.exit73, !prof !124

bb.bd:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i70
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dz)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsa5QsYiPB8Gl_5image.exit73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsa5QsYiPB8Gl_5image.exit73: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.09.0.copyload = load i64, ptr %i.j, align 8 ; 2 uses
  store i64 -2, ptr %i.j, align 8
  %.not24 = icmp eq i64 %.sroa.09.0.copyload, -2
  br i1 %.not24, label %.invoke, label %bb.be, !prof !124

bb.be:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsa5QsYiPB8Gl_5image.exit73
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.519.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.511.0..sroa_idx, i64 72, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.09.0.copyload, ptr %.sroa.418.0..sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1O_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit64

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1O_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit64: ; preds = %bb.am, %bb.be, %bb.an, %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1B_5error5ErrorEE10wait_readyCsa5QsYiPB8Gl_5image.exit.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1O_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit: ; preds = %.body, %bb.i
  br i1 %.sroa.020.2, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1O_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit
  resume { ptr, i32 } %.pn

bb.bg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1O_5error5ErrorEEECsa5QsYiPB8Gl_5image.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val33 = load i8, ptr %i.fc, align 8, !range !6, !noundef !4
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsa5QsYiPB8Gl_5image(ptr nonnull %i.q, i8 %.val33) #29
          to label %bb.bf unwind label %bb.ao
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs4tiffINtB2_11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([512 x i8]) align 8 captures(none) dereferenceable(512) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [464 x i8], align 8               ; 8 uses
  %.sroa.66 = alloca [64 x i8], align 8           ; 7 uses
  %.sroa.6 = alloca [64 x i8], align 8            ; 7 uses
  %i.k = alloca [464 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs6_NtCs53gkmrwjETj_4tiff7decoderINtB5_7DecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([464 x i8]) align 8 captures(none) dereferenceable(464) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  %i.l = load i64, ptr %i.j, align 8, !range !777, !noundef !4 ; 2 uses
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffNtNtB8_5error10ImageError16from_tiff_decode(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %.sroa.66, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.66, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.66, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.482.0..sroa_idx, i64 64, i1 false)
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(392) %.sroa.583.0..sroa_idx, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.66, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  store i64 %i.l, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.r = load <2 x i32>, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image9colortype(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.p)
          to label %bb.e unwind label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.m, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.af, %bb.m ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(464) %i.k) #29
          to label %bb.av unwind label %bb.as

bb.d:                                             ; preds = %bb.ap, %._crit_edge, %bb.i, %bb.g, %bb.f, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertEECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.i, align 8, !range !778, !noundef !4
  %.not = icmp eq i64 %i.t, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffNtNtB8_5error10ImageError16from_tiff_decode(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.au unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.087.0.copyload = load i32, ptr %i.u, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.492.0.extract.shift = lshr i32 %.sroa.087.0.copyload, 8
  %.sroa.492.0.extract.trunc = trunc i32 %.sroa.492.0.extract.shift to i8 ; 14 uses
  %.sroa.593.0.extract.shift = lshr i32 %.sroa.087.0.copyload, 16
  %.sroa.593.0.extract.trunc = trunc nuw i32 %.sroa.593.0.extract.shift to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvMs6_NtCs53gkmrwjETj_4tiff7decoderINtB6_7DecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21find_tag_unsigned_vectECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(464) %i.k, i16 noundef 339, i16 undef)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.v = load i64, ptr %i.h, align 8, !range !778, !noundef !4
  %.not224 = icmp eq i64 %i.v, -1
  br i1 %.not224, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffNtNtB8_5error10ImageError16from_tiff_decode(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.at unwind label %bb.d

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !14, !noundef !4 ; 2 uses
  %.not225 = icmp eq i64 %i.x, -1
  br i1 %.not225, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 4611686018427387904
  call void @llvm.assume(i1 %i.ac)
  %.idx = shl nuw nsw i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.z, ptr %i.g, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.z, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.x, ptr %.sroa.661.0..sroa_idx, align 8
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.ad, ptr %.sroa.762.0..sroa_idx, align 8
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertEECsa5QsYiPB8Gl_5image.exit229, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %trunc = trunc i32 %.sroa.087.0.copyload to i8
  switch i8 %trunc, label %bb.n [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.u
    i8 3, label %bb.q
    i8 4, label %bb.r
    i8 5, label %bb.s
    i8 7, label %bb.t
    i8 9, label %bb.ak
  ]

bb.m:                                             ; preds = %.lr.ph
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoItertENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertEECsa5QsYiPB8Gl_5image.exit unwind label %bb.as

.lr.ph:                                           ; preds = %bb.k, %bb.aq
  %i.ag = phi ptr [ %i.bh, %bb.aq ], [ %i.z, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store ptr %i.ah, ptr %.sroa.560.0..sroa_idx, align 8, !alias.scope !779
  %i.ai = load i16, ptr %i.ag, align 2, !noalias !779, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs4tiff19check_sample_format(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, i16 noundef %i.ai, i32 %.sroa.087.0.copyload)
          to label %bb.ao unwind label %bb.m

._crit_edge:                                      ; preds = %bb.aq, %bb.k
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoItertENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertEECsa5QsYiPB8Gl_5image.exit229 unwind label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertEECsa5QsYiPB8Gl_5image.exit229: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.aj, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 5, ptr %.sroa.4116.0..sroa_idx, align 1
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 4, ptr %.sroa.6118.0..sroa_idx, align 8
  %.sroa.6118.sroa.4.0..sroa.6118.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 28, ptr %.sroa.6118.sroa.4.0..sroa.6118.0..sroa_idx.sroa_idx, align 1
  %.sroa.6118.sroa.5.0..sroa.6118.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 0, ptr %.sroa.6118.sroa.5.0..sroa.6118.0..sroa_idx.sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.an

bb.o:                                             ; preds = %bb.l
  switch i8 %.sroa.492.0.extract.trunc, label %bb.u [
    i8 1, label %bb.ab
    i8 8, label %.thread234
    i8 16, label %.thread236
  ]

.thread234:                                       ; preds = %bb.o
  br label %bb.ab

bb.p:                                             ; preds = %bb.l
  switch i8 %.sroa.492.0.extract.trunc, label %bb.v [
    i8 8, label %bb.ab
    i8 16, label %.thread251
    i8 32, label %.thread257
  ]

bb.q:                                             ; preds = %bb.l
  switch i8 %.sroa.492.0.extract.trunc, label %bb.y [
    i8 8, label %bb.ab
    i8 16, label %.thread248
  ]

bb.r:                                             ; preds = %bb.l
  switch i8 %.sroa.492.0.extract.trunc, label %bb.ad [
    i8 8, label %bb.ab
    i8 16, label %.thread254
    i8 32, label %bb.ac
  ]

bb.s:                                             ; preds = %bb.l
  switch i8 %.sroa.492.0.extract.trunc, label %bb.ad [
    i8 8, label %bb.ab
    i8 16, label %bb.ae
  ]

bb.t:                                             ; preds = %bb.l
  %i.ak = call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.492.0.extract.trunc, i8 3) ; 2 uses
  %i.al = extractvalue { i8, i1 } %i.ak, 0
  %i.am = extractvalue { i8, i1 } %i.ak, 1
  br i1 %i.am, label %bb.ai, label %bb.aj, !prof !124

.thread236:                                       ; preds = %bb.o
  br label %bb.ab

bb.u:                                             ; preds = %bb.o, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.an, align 8
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 5, ptr %.sroa.4134.0..sroa_idx, align 1
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 4, ptr %.sroa.6136.0..sroa_idx, align 8
  %.sroa.6136.sroa.4.0..sroa.6136.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 28, ptr %.sroa.6136.sroa.4.0..sroa.6136.0..sroa_idx.sroa_idx, align 1
  %.sroa.6136.sroa.5.0..sroa.6136.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %.sroa.492.0.extract.trunc, ptr %.sroa.6136.sroa.5.0..sroa.6136.0..sroa_idx.sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.an

bb.v:                                             ; preds = %bb.p
  %i.ao = call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.492.0.extract.trunc, i8 3) ; 2 uses
  %i.ap = extractvalue { i8, i1 } %i.ao, 0
  %i.aq = extractvalue { i8, i1 } %i.ao, 1
  br i1 %i.aq, label %bb.w, label %bb.x, !prof !124

bb.w:                                             ; preds = %bb.v
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.sroa.0124.0 = phi i8 [ -1, %bb.w ], [ %i.ap, %bb.v ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ar, align 8
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 5, ptr %.sroa.4164.0..sroa_idx, align 1
  %.sroa.6166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 4, ptr %.sroa.6166.0..sroa_idx, align 8
  %.sroa.6166.sroa.4.0..sroa.6166.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 28, ptr %.sroa.6166.sroa.4.0..sroa.6166.0..sroa_idx.sroa_idx, align 1
  %.sroa.6166.sroa.5.0..sroa.6166.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %.sroa.0124.0, ptr %.sroa.6166.sroa.5.0..sroa.6166.0..sroa_idx.sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.an

bb.y:                                             ; preds = %bb.q
  %i.as = shl nuw i8 %.sroa.492.0.extract.trunc, 1
  %i.at = icmp slt i8 %.sroa.492.0.extract.trunc, 0
  br i1 %i.at, label %bb.z, label %bb.aa, !prof !124

bb.z:                                             ; preds = %bb.y
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.sroa.0125.0 = phi i8 [ -1, %bb.z ], [ %i.as, %bb.y ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.au, align 8
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 5, ptr %.sroa.4149.0..sroa_idx, align 1
  %.sroa.6151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 4, ptr %.sroa.6151.0..sroa_idx, align 8
  %.sroa.6151.sroa.4.0..sroa.6151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 28, ptr %.sroa.6151.sroa.4.0..sroa.6151.0..sroa_idx.sroa_idx, align 1
  %.sroa.6151.sroa.5.0..sroa.6151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %.sroa.0125.0, ptr %.sroa.6151.sroa.5.0..sroa.6151.0..sroa_idx.sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.an

bb.ab:                                            ; preds = %bb.r, %bb.p, %bb.q, %.thread236, %.thread234, %bb.s, %bb.ae, %bb.o, %.thread248, %.thread251, %.thread254, %.thread257, %bb.ac
  %.sroa.070.0 = phi i8 [ 26, %bb.s ], [ 27, %bb.ae ], [ 18, %.thread236 ], [ 15, %bb.q ], [ 16, %bb.p ], [ 17, %bb.r ], [ 19, %.thread248 ], [ 20, %.thread251 ], [ 21, %.thread254 ], [ 24, %.thread257 ], [ 25, %bb.ac ], [ 14, %.thread234 ], [ %.sroa.492.0.extract.trunc, %bb.o ]
  %.sroa.066.3 = phi i8 [ 2, %bb.s ], [ 6, %bb.ae ], [ 4, %.thread236 ], [ 1, %bb.q ], [ 2, %bb.p ], [ 3, %bb.r ], [ 5, %.thread248 ], [ 6, %.thread251 ], [ 7, %.thread254 ], [ 8, %.thread257 ], [ 9, %bb.ac ], [ 0, %.thread234 ], [ 0, %bb.o ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(464) %i.k, i64 464, i1 false)
  %.sroa.071.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.071.sroa.5.sroa.4.0..sroa.071.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.071.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.071.sroa.5.sroa.4.0..sroa.071.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.071.sroa.5.sroa.5.0..sroa.071.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 0, ptr %.sroa.071.sroa.5.sroa.5.0..sroa.071.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496
  store <2 x i32> %i.r, ptr %.sroa.572.0..sroa_idx, align 8
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i8 %.sroa.070.0, ptr %.sroa.774.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 %.sroa.066.3, ptr %.sroa.9.0..sroa_idx, align 2
  br label %bb.af

.thread248:                                       ; preds = %bb.q
  br label %bb.ab

.thread251:                                       ; preds = %bb.p
  br label %bb.ab

.thread254:                                       ; preds = %bb.r
  br label %bb.ab

.thread257:                                       ; preds = %bb.p
  br label %bb.ab

bb.ac:                                            ; preds = %bb.r
  br label %bb.ab

bb.ad:                                            ; preds = %bb.s, %bb.r
  %i.av = shl nuw i8 %.sroa.492.0.extract.trunc, 2
  %i.aw = icmp ugt i8 %.sroa.492.0.extract.trunc, 63
  br i1 %i.aw, label %bb.ag, label %bb.ah, !prof !124

bb.ae:                                            ; preds = %bb.s
  br label %bb.ab

bb.af:                                            ; preds = %bb.b, %bb.an, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.ag:                                            ; preds = %bb.ad
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %bb.ag
  %.sroa.0186.0 = phi i8 [ -1, %bb.ag ], [ %i.av, %bb.ad ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ax, align 8
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 5, ptr %.sroa.4195.0..sroa_idx, align 1
  %.sroa.6197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 4, ptr %.sroa.6197.0..sroa_idx, align 8
  %.sroa.6197.sroa.4.0..sroa.6197.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 28, ptr %.sroa.6197.sroa.4.0..sroa.6197.0..sroa_idx.sroa_idx, align 1
  %.sroa.6197.sroa.5.0..sroa.6197.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %.sroa.0186.0, ptr %.sroa.6197.sroa.5.0..sroa.6197.0..sroa_idx.sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.an

bb.ai:                                            ; preds = %bb.t
  br label %bb.aj

bb.aj:                                            ; preds = %bb.t, %bb.ai
  %.sroa.0123.0 = phi i8 [ -1, %bb.ai ], [ %i.al, %bb.t ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ay, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 5, ptr %.sroa.4179.0..sroa_idx, align 1
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 4, ptr %.sroa.6181.0..sroa_idx, align 8
  %.sroa.6181.sroa.4.0..sroa.6181.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 28, ptr %.sroa.6181.sroa.4.0..sroa.6181.0..sroa_idx.sroa_idx, align 1
  %.sroa.6181.sroa.5.0..sroa.6181.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %.sroa.0123.0, ptr %.sroa.6181.sroa.5.0..sroa.6181.0..sroa_idx.sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.an

bb.ak:                                            ; preds = %bb.l
  %..i = call noundef range(i16 0, 256) i16 @llvm.umin.i16(i16 %.sroa.593.0.extract.trunc, i16 255)
  %i.az = trunc nuw i16 %..i to i8
  %i.ba = call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.492.0.extract.trunc, i8 %i.az) ; 2 uses
  %i.bb = extractvalue { i8, i1 } %i.ba, 0
  %i.bc = extractvalue { i8, i1 } %i.ba, 1
  br i1 %i.bc, label %bb.al, label %bb.am, !prof !124

bb.al:                                            ; preds = %bb.ak
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.sroa.0202.0 = phi i8 [ -1, %bb.al ], [ %i.bb, %bb.ak ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bd, align 8
  %.sroa.4211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 5, ptr %.sroa.4211.0..sroa_idx, align 1
  %.sroa.6213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 4, ptr %.sroa.6213.0..sroa_idx, align 8
  %.sroa.6213.sroa.4.0..sroa.6213.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 28, ptr %.sroa.6213.sroa.4.0..sroa.6213.0..sroa_idx.sroa_idx, align 1
  %.sroa.6213.sroa.5.0..sroa.6213.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %.sroa.0202.0, ptr %.sroa.6213.sroa.5.0..sroa.6213.0..sroa_idx.sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.n, %bb.u, %bb.x, %bb.aa, %bb.ah, %bb.aj, %bb.am, %bb.au, %bb.ar
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(464) %i.k)
  br label %bb.af

bb.ao:                                            ; preds = %.lr.ph
  %i.be = load i8, ptr %i.f, align 8, !range !12, !noundef !4
  %.not227 = icmp eq i8 %i.be, -1
  br i1 %.not227, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoItertENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertEECsa5QsYiPB8Gl_5image.exit230 unwind label %bb.d

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bg = load ptr, ptr %.sroa.762.0..sroa_idx, align 8, !alias.scope !782, !nonnull !4, !noundef !4
  %i.bh = load ptr, ptr %.sroa.560.0..sroa_idx, align 8, !alias.scope !782, !nonnull !4, !noundef !4 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.bg
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertEECsa5QsYiPB8Gl_5image.exit230: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertEECsa5QsYiPB8Gl_5image.exit230, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.an

bb.as:                                            ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertEECsa5QsYiPB8Gl_5image.exit
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.at:                                            ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bk, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ar

bb.au:                                            ; preds = %bb.f
  %.sroa.026.0.copyload = load i8, ptr %i.a, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.628.sroa.0.0.copyload = load i8, ptr %.sroa.628.0..sroa_idx, align 1
  %.sroa.628.sroa.5.0..sroa.628.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.628.sroa.5.0.copyload = load i32, ptr %.sroa.628.sroa.5.0..sroa.628.0..sroa_idx.sroa_idx, align 2
  %.sroa.831.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.sroa.8107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(58) %.sroa.8107.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(58) %.sroa.831.0..sroa_idx, i64 58, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.026.0.copyload, ptr %2, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.628.sroa.0.0.copyload, ptr %.sroa.4103.0..sroa_idx, align 1
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i32 %.sroa.628.sroa.5.0.copyload, ptr %.sroa.5104.0..sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.an

bb.av:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertEECsa5QsYiPB8Gl_5image.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsa5QsYiPB8Gl_5image6codecs4webp7decoderINtB2_11WebPDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([200 x i8]) align 8 captures(none) dereferenceable(200) initializes((0, 72)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [192 x i8], align 8               ; 8 uses
  %.sroa.68 = alloca [64 x i8], align 8           ; 7 uses
  %.sroa.63 = alloca [64 x i8], align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1_NtCsksn9slvsHfS_10image_webp7decoderINtB5_11WebPDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE16new_with_optionsCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext false)
  %i.c = load i64, ptr %i.b, align 8, !range !125, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, -2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @_RNvMs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs4webp7decoderNtNtBb_5error10ImageError16from_webp_decode(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %.sroa.68, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.63, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.68, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.63, i64 64, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.68, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, i64 64, i1 false)
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.513.0..sroa_idx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.63, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.68, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.63, i64 64, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 -1, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63)
  store i64 %i.c, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryE5drainNtNtNtCsj6eKBz9Db1c_4core3ops5range9RangeFullECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.b:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.k = load ptr, ptr %i.a, align 8, !alias.scope !796, !nonnull !4, !noundef !4
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !796
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit unwind label %bb.j

bb.d:                                             ; preds = %.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4
  %i.n = phi ptr [ %i.f, %.lr.ph ], [ %i.ae, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4 ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.p = load i64, ptr %i.i, align 8, !noundef !4
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.r = cmpxchg ptr %i.q, i64 0, i64 %i.p acq_rel acquire, align 8
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.x = atomicrmw xchg ptr %i.w, i32 1 release, align 4
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.h, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.z = load ptr, ptr %i.a, align 8, !alias.scope !809, !nonnull !4, !noundef !4
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !809
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4 unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ac = invoke noundef zeroext i1 @_RNvNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.w)
          to label %bb.f unwind label %bb.b       ; 0 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %bb.c, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  invoke void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit4: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ae = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %._crit_edge, label %bb.d

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit, %bb.c
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_11PixelFormat11from_reader(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.64.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 6 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 6 uses
  %i.h = alloca [4 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !810
  store i32 0, ptr %i.g, align 4, !noalias !810
  %i.i = call noundef ptr %.64.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull %i.g, i64 noundef 4) #31, !noalias !810, !inline_history !813 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !810
  store i8 9, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %.val.i = load i32, ptr %i.g, align 4, !noalias !810 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !810
  %i.j = icmp eq i32 %.val.i, 32
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_6Header11from_reader:bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.val.i138, ptr %.sroa.11.0..sroa_idx, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.b, %bb.e, %bb.j, %bb.n, %bb.r, %bb.t, %bb.x, %bb.ab, %bb.z, %bb.v, %bb.p, %bb.l, %bb.i, %bb.f, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_10DX10Header11from_reader(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1), (8, 16)) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.val35 = load ptr, ptr %i.g, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1089
  store i32 0, ptr %i.e, align 4, !noalias !1089
  %i.h = call noundef ptr %.val35(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull %i.e, i64 noundef 4) #31, !noalias !1089, !inline_history !813 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1089
  store i8 9, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.414.0..sroa_idx, align 8
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.val.i = load i32, ptr %i.e, align 4, !noalias !1089 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1092
  store i32 0, ptr %i.d, align 4, !noalias !1092
  %i.i = call noundef ptr %.val35(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull %i.d, i64 noundef 4) #31, !noalias !1092, !inline_history !813 ; 2 uses
  %.not.i36 = icmp eq ptr %i.i, null
  br i1 %.not.i36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1092
  store i8 9, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.418.0..sroa_idx, align 8
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %.val.i38 = load i32, ptr %i.d, align 4, !noalias !1092 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1095
  store i32 0, ptr %i.c, align 4, !noalias !1095
  %i.j = call noundef ptr %.val35(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull %i.c, i64 noundef 4) #31, !noalias !1095, !inline_history !813 ; 2 uses
  %.not.i40 = icmp eq ptr %i.j, null
  br i1 %.not.i40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1095
  store i8 9, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.422.0..sroa_idx, align 8
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  %.val.i42 = load i32, ptr %i.c, align 4, !noalias !1095 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1098
  store i32 0, ptr %i.b, align 4, !noalias !1098
  %i.k = call noundef ptr %.val35(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull %i.b, i64 noundef 4) #31, !noalias !1098, !inline_history !813 ; 2 uses
  %.not.i44 = icmp eq ptr %i.k, null
  br i1 %.not.i44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1098
  store i8 9, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.426.0..sroa_idx, align 8
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %.val.i46 = load i32, ptr %i.b, align 4, !noalias !1098 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1101
  store i32 0, ptr %i.a, align 4, !noalias !1101
  %i.l = call noundef ptr %.val35(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull %i.a, i64 noundef 4) #31, !noalias !1101, !inline_history !813 ; 2 uses
  %.not.i48 = icmp eq ptr %i.l, null
  br i1 %.not.i48, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1101
  store i8 9, ptr %0, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.430.0..sroa_idx, align 8
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  %.val.i50 = load i32, ptr %i.a, align 4, !noalias !1101 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.m = icmp ugt i32 %.val.i, 132
  br i1 %i.m, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = add i32 %.val.i38, -5
  %or.cond.i = icmp ult i32 %i.n, -3
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtNtB8_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, i32 noundef 3, i32 %.val.i), !noalias !1104
  br label %_RNvMs3_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_10DX10Header8validate.exit

bb.n:                                             ; preds = %bb.l
  call void @_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtNtB8_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, i32 noundef 4, i32 %.val.i38), !noalias !1104
  br label %_RNvMs3_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_10DX10Header8validate.exit

bb.o:                                             ; preds = %bb.l
  switch i32 %.val.i42, label %bb.q [
    i32 0, label %bb.p
    i32 4, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.o = icmp ne i32 %.val.i38, 4
  %i.p = icmp eq i32 %.val.i46, 1
  %or.cond = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtNtB8_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, i32 noundef 5, i32 %.val.i42), !noalias !1104
  br label %_RNvMs3_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_10DX10Header8validate.exit

bb.r:                                             ; preds = %bb.p
  %i.q = icmp ugt i32 %.val.i50, 4
  br i1 %i.q, label %bb.t, label %_RNvMs3_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_10DX10Header8validate.exit.thread

bb.s:                                             ; preds = %bb.p
  call void @_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtNtB8_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, i32 noundef 6, i32 %.val.i46), !noalias !1104
  br label %_RNvMs3_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_10DX10Header8validate.exit

bb.t:                                             ; preds = %bb.r
  call void @_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtNtB8_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, i32 noundef 5, i32 %.val.i50), !noalias !1104
  br label %_RNvMs3_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_10DX10Header8validate.exit

_RNvMs3_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_10DX10Header8validate.exit: ; preds = %bb.m, %bb.n, %bb.q, %bb.s, %bb.t
  %.pr = load i8, ptr %i.f, align 8
  %.not = icmp eq i8 %.pr, -1
  br i1 %.not, label %_RNvMs3_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_10DX10Header8validate.exit.thread, label %bb.u

bb.u:                                             ; preds = %_RNvMs3_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_10DX10Header8validate.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

_RNvMs3_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_10DX10Header8validate.exit.thread: ; preds = %bb.r, %_RNvMs3_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_10DX10Header8validate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.val.i, ptr %i.r, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.val.i38, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.val.i42, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val.i46, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.val.i50, ptr %.sroa.12.0..sroa_idx, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.b, %bb.f, %bb.j, %bb.u, %bb.h, %bb.d, %_RNvMs3_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_10DX10Header8validate.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 19 uses
  %i.b = alloca [64 x i8], align 8                ; 14 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 19 uses
  %i.e = alloca [64 x i8], align 8                ; 14 uses
  %i.f = alloca [16 x i8], align 4                ; 6 uses
  %i.g = alloca [64 x i8], align 8                ; 15 uses
  %i.h = alloca [64 x i8], align 8                ; 19 uses
  %i.i = alloca [64 x i8], align 8                ; 14 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 4                 ; 4 uses
  %i.m = alloca [8 x i8], align 4                 ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.421 = alloca [31 x i8], align 1          ; 2 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.55 = alloca [43 x i8], align 1           ; 22 uses
  %.sroa.9.sroa.20 = alloca [27 x i8], align 1    ; 9 uses
  %i.t = alloca [96 x i8], align 8                ; 26 uses
  %i.u = alloca [40 x i8], align 8                ; 5 uses
  %i.v = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader19read_magic_constantBV_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.w = load i8, ptr %i.v, align 8, !range !12, !noundef !4 ; 2 uses
  %.not = icmp eq i8 %i.w, -1
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %.sroa.029.0.copyload = load i16, ptr %i.x, align 1 ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(61) %.sroa.538.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(61) %.sroa.535.0..sroa_idx, i64 61, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.w, ptr %i.y, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i16 %.sroa.029.0.copyload, ptr %.sroa.437.0..sroa_idx, align 1
  store i64 -2, ptr %0, align 8
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %2 = and i16 %.sroa.029.0.copyload, 255
  %i.z = icmp eq i16 %2, 80
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.3.0.extract.shift = lshr i16 %.sroa.029.0.copyload, 8
  %.sroa.3.0.extract.trunc = trunc nuw i16 %.sroa.3.0.extract.shift to i8
  switch i8 %.sroa.3.0.extract.trunc, label %bb.e [
    i8 49, label %bb.t
    i8 50, label %bb.w
    i8 51, label %bb.ab
    i8 52, label %bb.f
    i8 53, label %bb.g
    i8 54, label %bb.h
    i8 55, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i16 %.sroa.029.0.copyload, ptr %i.aa, align 1
  store i8 0, ptr %i.u, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 -2, ptr %0, align 8
  br label %bb.ak

bb.f:                                             ; preds = %bb.d
  br label %bb.t

bb.g:                                             ; preds = %bb.d
  br label %bb.w

bb.h:                                             ; preds = %bb.d
  br label %bb.ab

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1112
  call void @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader21read_arbitrary_headerBV_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p), !noalias !1107
  %i.ac = load i8, ptr %i.h, align 8, !range !12, !noalias !1112, !noundef !4 ; 2 uses
  %.not.i = icmp eq i8 %i.ac, -1
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.55.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.55, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.55.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.529.0..sroa_idx.i, i64 16, i1 false), !noalias !1110
  %.sroa.27.9.copyload = load i8, ptr %.sroa.428.0..sroa_idx.i, align 1, !noalias !1110
  %.sroa.34.9..sroa.428.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.34.9.copyload = load i16, ptr %.sroa.34.9..sroa.428.0..sroa_idx.i.sroa_idx, align 2, !noalias !1110
  %.sroa.37.9..sroa.428.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ad = load <2 x i32>, ptr %.sroa.37.9..sroa.428.0..sroa_idx.i.sroa_idx, align 4, !noalias !1110
  %.sroa.39.9..sroa.428.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.sroa.39.9.copyload = load i32, ptr %.sroa.39.9..sroa.428.0..sroa_idx.i.sroa_idx, align 4, !noalias !1110
  %.sroa.40.9..sroa.428.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.40.9.copyload = load i64, ptr %.sroa.40.9..sroa.428.0..sroa_idx.i.sroa_idx, align 8, !noalias !1110
  %.sroa.49.9..sroa.428.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.49.9.copyload = load i32, ptr %.sroa.49.9..sroa.428.0..sroa_idx.i.sroa_idx, align 8, !noalias !1110
  %.sroa.52.9..sroa.428.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.ae = load <2 x i32>, ptr %.sroa.52.9..sroa.428.0..sroa_idx.i.sroa_idx, align 4, !noalias !1110
  %.sroa.54.9..sroa.428.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %.sroa.54.9.copyload = load i8, ptr %.sroa.54.9..sroa.428.0..sroa_idx.i.sroa_idx, align 4, !noalias !1110
  %.sroa.55.9..sroa.428.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.55, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.55.9..sroa.428.0..sroa_idx.i.sroa_idx, i64 11, i1 false), !noalias !1110
  br label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.af, i64 40, i1 false), !noalias !1112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1112
  invoke void @_RNvXse_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtB7_6header15ArbitraryHeaderNtB5_20DecodableImageHeader10tuple_type(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %bb.m unwind label %bb.l, !noalias !1107

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm6header15ArbitraryHeaderEBJ_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.j) #29
          to label %common.resume unwind label %bb.s, !noalias !1107

bb.m:                                             ; preds = %bb.k
  %i.ah = load i8, ptr %i.i, align 8, !range !12, !noalias !1112, !noundef !4 ; 9 uses
  %.not45.i = icmp eq i8 %i.ah, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !1112 ; 9 uses
  br i1 %.not45.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.sroa.34.10.copyload = load i16, ptr %.sroa.538.0..sroa_idx.i, align 2, !noalias !1110 ; 8 uses
  %.sroa.37.10..sroa.538.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ak = load <2 x i32>, ptr %.sroa.37.10..sroa.538.0..sroa_idx.i.sroa_idx, align 4, !noalias !1110 ; 8 uses
  %.sroa.39.10..sroa.538.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %.sroa.39.10.copyload = load i32, ptr %.sroa.39.10..sroa.538.0..sroa_idx.i.sroa_idx, align 4, !noalias !1110 ; 8 uses
  %.sroa.40.10..sroa.538.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.40.10.copyload = load i64, ptr %.sroa.40.10..sroa.538.0..sroa_idx.i.sroa_idx, align 8, !noalias !1110 ; 8 uses
  %.sroa.49.10..sroa.538.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.49.10.copyload = load i32, ptr %.sroa.49.10..sroa.538.0..sroa_idx.i.sroa_idx, align 8, !noalias !1110 ; 8 uses
  %.sroa.52.10..sroa.538.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.al = load <2 x i32>, ptr %.sroa.52.10..sroa.538.0..sroa_idx.i.sroa_idx, align 4, !noalias !1110 ; 8 uses
  %.sroa.54.10..sroa.538.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %.sroa.54.10.copyload = load i8, ptr %.sroa.54.10..sroa.538.0..sroa_idx.i.sroa_idx, align 4, !noalias !1110 ; 8 uses
  %.sroa.55.10..sroa.538.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.55, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.55.10..sroa.538.0..sroa_idx.i.sroa_idx, i64 27, i1 false), !noalias !1110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1112
  %i.am = load i64, ptr %i.j, align 8, !range !199, !alias.scope !1113, !noalias !1112, !noundef !4
  switch i64 %i.am, label %bb.o [
    i64 -1, label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit
    i64 -9223372036854775803, label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit
    i64 -9223372036854775804, label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit
    i64 -9223372036854775805, label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit
    i64 -9223372036854775806, label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit
    i64 -9223372036854775807, label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit
    i64 -9223372036854775808, label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit
  ]

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i.i.i.i unwind label %bb.p, !noalias !1107

bb.p:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %common.resume unwind label %bb.q, !noalias !1107

bb.q:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !1107
  unreachable

common.resume:                                    ; preds = %bb.ai, %bb.l, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %i.an, %bb.p ], [ %i.da, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.o
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j), !noalias !1107
  br label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1112
  %.sroa.55.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.55, i64 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.55.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !alias.scope !1112
  %.sroa.40.24.copyload99 = load i64, ptr %i.af, align 8, !noalias !1110
  %.sroa.49.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.49.24.copyload104 = load i32, ptr %.sroa.49.24..sroa_idx, align 8, !noalias !1110
  %.sroa.52.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.ap = load <2 x i32>, ptr %.sroa.52.24..sroa_idx, align 4, !noalias !1110
  %.sroa.54.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.sroa.54.24.copyload124 = load i8, ptr %.sroa.54.24..sroa_idx, align 4, !noalias !1110
  %.sroa.55.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.55, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.55.24..sroa_idx, i64 19, i1 false), !noalias !1110
  br label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit

bb.s:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !1107
  unreachable

_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit: ; preds = %bb.j, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i.i.i.i, %bb.r
  %.sroa.40.sroa.19.sroa.0.1.in.in = phi i64 [ %.sroa.40.24.copyload99, %bb.r ], [ %.sroa.40.10.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ %.sroa.40.10.copyload, %bb.n ], [ %.sroa.40.10.copyload, %bb.n ], [ %.sroa.40.10.copyload, %bb.n ], [ %.sroa.40.10.copyload, %bb.n ], [ %.sroa.40.10.copyload, %bb.n ], [ %.sroa.40.10.copyload, %bb.n ], [ %.sroa.40.10.copyload, %bb.n ], [ %.sroa.40.9.copyload, %bb.j ] ; 3 uses
  %.sroa.61.1 = phi i8 [ %i.aj, %bb.r ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.j ]
  %.sroa.54.1 = phi i8 [ %.sroa.54.24.copyload124, %bb.r ], [ %.sroa.54.10.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ %.sroa.54.10.copyload, %bb.n ], [ %.sroa.54.10.copyload, %bb.n ], [ %.sroa.54.10.copyload, %bb.n ], [ %.sroa.54.10.copyload, %bb.n ], [ %.sroa.54.10.copyload, %bb.n ], [ %.sroa.54.10.copyload, %bb.n ], [ %.sroa.54.10.copyload, %bb.n ], [ %.sroa.54.9.copyload, %bb.j ]
  %.sroa.49.1 = phi i32 [ %.sroa.49.24.copyload104, %bb.r ], [ %.sroa.49.10.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ %.sroa.49.10.copyload, %bb.n ], [ %.sroa.49.10.copyload, %bb.n ], [ %.sroa.49.10.copyload, %bb.n ], [ %.sroa.49.10.copyload, %bb.n ], [ %.sroa.49.10.copyload, %bb.n ], [ %.sroa.49.10.copyload, %bb.n ], [ %.sroa.49.10.copyload, %bb.n ], [ %.sroa.49.9.copyload, %bb.j ]
  %.sroa.39.1 = phi i32 [ undef, %bb.r ], [ %.sroa.39.10.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ %.sroa.39.10.copyload, %bb.n ], [ %.sroa.39.10.copyload, %bb.n ], [ %.sroa.39.10.copyload, %bb.n ], [ %.sroa.39.10.copyload, %bb.n ], [ %.sroa.39.10.copyload, %bb.n ], [ %.sroa.39.10.copyload, %bb.n ], [ %.sroa.39.10.copyload, %bb.n ], [ %.sroa.39.9.copyload, %bb.j ]
  %.sroa.34.1 = phi i16 [ undef, %bb.r ], [ %.sroa.34.10.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ %.sroa.34.10.copyload, %bb.n ], [ %.sroa.34.10.copyload, %bb.n ], [ %.sroa.34.10.copyload, %bb.n ], [ %.sroa.34.10.copyload, %bb.n ], [ %.sroa.34.10.copyload, %bb.n ], [ %.sroa.34.10.copyload, %bb.n ], [ %.sroa.34.10.copyload, %bb.n ], [ %.sroa.34.9.copyload, %bb.j ]
  %.sroa.27.1 = phi i8 [ undef, %bb.r ], [ %i.aj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ %i.aj, %bb.n ], [ %i.aj, %bb.n ], [ %i.aj, %bb.n ], [ %i.aj, %bb.n ], [ %i.aj, %bb.n ], [ %i.aj, %bb.n ], [ %i.aj, %bb.n ], [ %.sroa.27.9.copyload, %bb.j ]
  %.sroa.18.1 = phi i8 [ undef, %bb.r ], [ %i.ah, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ %i.ah, %bb.n ], [ %i.ah, %bb.n ], [ %i.ah, %bb.n ], [ %i.ah, %bb.n ], [ %i.ah, %bb.n ], [ %i.ah, %bb.n ], [ %i.ah, %bb.n ], [ %i.ac, %bb.j ]
  %.sroa.0.1 = phi i64 [ -1, %bb.r ], [ -2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ -2, %bb.n ], [ -2, %bb.n ], [ -2, %bb.n ], [ -2, %bb.n ], [ -2, %bb.n ], [ -2, %bb.n ], [ -2, %bb.n ], [ -2, %bb.j ]
  %i.ar = phi <2 x i32> [ undef, %bb.r ], [ %i.ak, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ %i.ak, %bb.n ], [ %i.ak, %bb.n ], [ %i.ak, %bb.n ], [ %i.ak, %bb.n ], [ %i.ak, %bb.n ], [ %i.ak, %bb.n ], [ %i.ak, %bb.n ], [ %i.ad, %bb.j ]
  %i.as = phi <2 x i32> [ %i.ap, %bb.r ], [ %i.al, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ %i.al, %bb.n ], [ %i.al, %bb.n ], [ %i.al, %bb.n ], [ %i.al, %bb.n ], [ %i.al, %bb.n ], [ %i.al, %bb.n ], [ %i.al, %bb.n ], [ %i.ae, %bb.j ]
  %.sroa.40.sroa.0.1 = trunc i64 %.sroa.40.sroa.19.sroa.0.1.in.in to i8
  %.sroa.40.sroa.20.1.in = lshr i64 %.sroa.40.sroa.19.sroa.0.1.in.in, 32
  %.sroa.40.sroa.20.1 = trunc nuw i64 %.sroa.40.sroa.20.1.in to i32
  %.sroa.40.sroa.19.sroa.0.1.in = lshr i64 %.sroa.40.sroa.19.sroa.0.1.in.in, 8
  %.sroa.40.sroa.19.sroa.0.1 = trunc i64 %.sroa.40.sroa.19.sroa.0.1.in to i24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ag

bb.t:                                             ; preds = %bb.d, %bb.f
  %.sroa.11.0 = phi i1 [ false, %bb.f ], [ true, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader18read_bitmap_headerBV_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i1 noundef zeroext %.sroa.11.0), !noalias !1118
  %i.at = load i8, ptr %i.g, align 8, !range !12, !noalias !1123, !noundef !4 ; 2 uses
  %.not.i62 = icmp eq i8 %i.at, -1
  br i1 %.not.i62, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.40.24.copyload = load i64, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !1121 ; 3 uses
  %.sroa.40.sroa.0.0.extract.trunc135.a = trunc i64 %.sroa.40.24.copyload to i8
  %.sroa.40.sroa.19.0.extract.shift147.a = lshr i64 %.sroa.40.24.copyload, 8
  %.sroa.40.sroa.19.0.extract.trunc148.a = trunc i64 %.sroa.40.sroa.19.0.extract.shift147.a to i24
  %.sroa.40.sroa.20.0.extract.shift161.a = lshr i64 %.sroa.40.24.copyload, 32
  %.sroa.40.sroa.20.0.extract.trunc162.a = trunc nuw i64 %.sroa.40.sroa.20.0.extract.shift161.a to i32
  %.sroa.49.24..sroa.523.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.49.24.copyload = load i32, ptr %.sroa.49.24..sroa.523.0..sroa_idx.i.sroa_idx, align 8, !noalias !1121
  %.sroa.52.24..sroa.523.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.au = load <2 x i32>, ptr %.sroa.52.24..sroa.523.0..sroa_idx.i.sroa_idx, align 4, !noalias !1121
  %.sroa.54.24..sroa.523.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %.sroa.54.24.copyload = load i8, ptr %.sroa.54.24..sroa.523.0..sroa_idx.i.sroa_idx, align 4, !noalias !1121
  %.sroa.55.24..sroa.523.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.55, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.55.24..sroa.523.0..sroa_idx.i.sroa_idx, i64 27, i1 false), !noalias !1121
  %.sroa.27.9.copyload73 = load i8, ptr %.sroa.422.0..sroa_idx.i, align 1, !noalias !1121
  %.sroa.34.9..sroa.422.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.sroa.34.9.copyload77 = load i16, ptr %.sroa.34.9..sroa.422.0..sroa_idx.i.sroa_idx, align 2, !noalias !1121
  %.sroa.37.9..sroa.422.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.av = load <2 x i32>, ptr %.sroa.37.9..sroa.422.0..sroa_idx.i.sroa_idx, align 4, !noalias !1121
  %.sroa.39.9..sroa.422.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.39.9.copyload93 = load i32, ptr %.sroa.39.9..sroa.422.0..sroa_idx.i.sroa_idx, align 4, !noalias !1121
  br label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit

bb.v:                                             ; preds = %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.49.32.copyload106 = load i32, ptr %i.aw, align 4, !noalias !1121
  %.sroa.52.32..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ax = load <2 x i32>, ptr %.sroa.52.32..sroa_idx112, align 8, !noalias !1121
  %.sroa.55.64..sroa_idx126 = getelementptr inbounds nuw i8, ptr %.sroa.55, i64 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.55.64..sroa_idx126, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !alias.scope !1123
  br label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit

_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit: ; preds = %bb.u, %bb.v
  %.sroa.40.sroa.19.sroa.0.2 = phi i24 [ 0, %bb.v ], [ %.sroa.40.sroa.19.0.extract.trunc148.a, %bb.u ]
  %.sroa.40.sroa.20.2 = phi i32 [ -2147483648, %bb.v ], [ %.sroa.40.sroa.20.0.extract.trunc162.a, %bb.u ]
  %.sroa.40.sroa.0.2 = phi i8 [ 6, %bb.v ], [ %.sroa.40.sroa.0.0.extract.trunc135.a, %bb.u ]
  %.sroa.54.2 = phi i8 [ undef, %bb.v ], [ %.sroa.54.24.copyload, %bb.u ]
  %.sroa.49.2 = phi i32 [ %.sroa.49.32.copyload106, %bb.v ], [ %.sroa.49.24.copyload, %bb.u ]
  %.sroa.39.2 = phi i32 [ undef, %bb.v ], [ %.sroa.39.9.copyload93, %bb.u ]
  %.sroa.34.2 = phi i16 [ undef, %bb.v ], [ %.sroa.34.9.copyload77, %bb.u ]
  %.sroa.27.2 = phi i8 [ undef, %bb.v ], [ %.sroa.27.9.copyload73, %bb.u ]
  %.sink.i = phi i64 [ -1, %bb.v ], [ -2, %bb.u ]
  %i.ay = phi <2 x i32> [ undef, %bb.v ], [ %i.av, %bb.u ]
  %i.az = phi <2 x i32> [ %i.ax, %bb.v ], [ %i.au, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ag

bb.w:                                             ; preds = %bb.d, %bb.g
  %.sroa.11.1 = phi i1 [ false, %bb.g ], [ true, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1129
  call void @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader18read_pixmap_headerBV_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i1 noundef zeroext %.sroa.11.1), !noalias !1124
  %i.ba = load i8, ptr %i.d, align 8, !range !12, !noalias !1129, !noundef !4 ; 2 uses
  %.not.i63 = icmp eq i8 %i.ba, -1
  br i1 %.not.i63, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.27.9.copyload74 = load i8, ptr %.sroa.444.0..sroa_idx.i, align 1, !noalias !1127
  %.sroa.34.9..sroa.444.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.34.9.copyload78 = load i16, ptr %.sroa.34.9..sroa.444.0..sroa_idx.i.sroa_idx, align 2, !noalias !1127
  %.sroa.545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bb = load <2 x i32>, ptr %.sroa.545.0..sroa_idx.i, align 4, !noalias !1129
  %.sroa.747.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.747.0.copyload.i = load i32, ptr %.sroa.747.0..sroa_idx.i, align 4, !noalias !1129
  %.sroa.848.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.848.0.copyload.i = load i8, ptr %.sroa.848.0..sroa_idx.i, align 8, !noalias !1129
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %.sroa.40.sroa.19.sroa.0.0.copyload167 = load i24, ptr %.sroa.9.0..sroa_idx.i, align 1, !noalias !1127
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.40.sroa.20.4.copyload = load i32, ptr %.sroa.10.0..sroa_idx.i, align 4, !noalias !1127
  %.sroa.49.28..sroa.10.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.49.28.copyload = load i32, ptr %.sroa.49.28..sroa.10.0..sroa_idx.i.sroa_idx, align 8, !noalias !1127
  %.sroa.52.28..sroa.10.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bc = load <2 x i32>, ptr %.sroa.52.28..sroa.10.0..sroa_idx.i.sroa_idx, align 4, !noalias !1127
  %.sroa.54.28..sroa.10.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %.sroa.54.28.copyload = load i8, ptr %.sroa.54.28..sroa.10.0..sroa_idx.i.sroa_idx, align 4, !noalias !1127
  %.sroa.55.28..sroa.10.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.55, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.55.28..sroa.10.0..sroa_idx.i.sroa_idx, i64 27, i1 false), !noalias !1127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1129
  br label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit

bb.y:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noalias !1129, !noundef !4 ; 2 uses
  %i.bg = load i32, ptr %i.bd, align 4, !noalias !1129, !noundef !4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bi = load <2 x i32>, ptr %i.bh, align 8, !noalias !1129 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1129
  store i32 %i.bg, ptr %i.f, align 4, !noalias !1129
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store <2 x i32> %i.bi, ptr %.sroa.3.0..sroa_idx.i, align 4, !noalias !1129
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i8 %i.bf, ptr %.sroa.563.0..sroa_idx.i, align 4, !noalias !1129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1129
  call void @_RNvXsc_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtB7_6header13GraymapHeaderNtB5_20DecodableImageHeader10tuple_type(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f), !noalias !1124
  %i.bj = load i8, ptr %i.e, align 8, !range !12, !noalias !1129, !noundef !4 ; 2 uses
  %.not96.i = icmp eq i8 %i.bj, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !1129 ; 2 uses
  br i1 %.not96.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.592.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.34.10.copyload79 = load i16, ptr %.sroa.592.0..sroa_idx.i, align 2, !noalias !1127
  %.sroa.37.10..sroa.592.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.bm = load <2 x i32>, ptr %.sroa.37.10..sroa.592.0..sroa_idx.i.sroa_idx, align 4, !noalias !1127
  %.sroa.39.10..sroa.592.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.39.10.copyload94 = load i32, ptr %.sroa.39.10..sroa.592.0..sroa_idx.i.sroa_idx, align 4, !noalias !1127
  %.sroa.40.10..sroa.592.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.40.10.copyload97 = load i64, ptr %.sroa.40.10..sroa.592.0..sroa_idx.i.sroa_idx, align 8, !noalias !1127 ; 3 uses
  %.sroa.40.sroa.0.0.extract.trunc133 = trunc i64 %.sroa.40.10.copyload97 to i8
  %.sroa.40.sroa.19.0.extract.shift143 = lshr i64 %.sroa.40.10.copyload97, 8
  %.sroa.40.sroa.19.0.extract.trunc144 = trunc i64 %.sroa.40.sroa.19.0.extract.shift143 to i24
  %.sroa.40.sroa.20.0.extract.shift157 = lshr i64 %.sroa.40.10.copyload97, 32
  %.sroa.40.sroa.20.0.extract.trunc158 = trunc nuw i64 %.sroa.40.sroa.20.0.extract.shift157 to i32
  %.sroa.49.10..sroa.592.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.49.10.copyload102 = load i32, ptr %.sroa.49.10..sroa.592.0..sroa_idx.i.sroa_idx, align 8, !noalias !1127
  %.sroa.52.10..sroa.592.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.bn = load <2 x i32>, ptr %.sroa.52.10..sroa.592.0..sroa_idx.i.sroa_idx, align 4, !noalias !1127
  %.sroa.54.10..sroa.592.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %.sroa.54.10.copyload122 = load i8, ptr %.sroa.54.10..sroa.592.0..sroa_idx.i.sroa_idx, align 4, !noalias !1127
  %.sroa.55.10..sroa.592.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.55, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.55.10..sroa.592.0..sroa_idx.i.sroa_idx, i64 27, i1 false), !noalias !1127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1129
  br label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1129
  %.sroa.55.64..sroa_idx127 = getelementptr inbounds nuw i8, ptr %.sroa.55, i64 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.55.64..sroa_idx127, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !alias.scope !1129
  br label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit

_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit: ; preds = %bb.x, %bb.z, %bb.aa
  %.sroa.40.sroa.19.sroa.0.3 = phi i24 [ 0, %bb.aa ], [ %.sroa.40.sroa.19.0.extract.trunc144, %bb.z ], [ %.sroa.40.sroa.19.sroa.0.0.copyload167, %bb.x ]
  %.sroa.40.sroa.20.3 = phi i32 [ -2147483648, %bb.aa ], [ %.sroa.40.sroa.20.0.extract.trunc158, %bb.z ], [ %.sroa.40.sroa.20.4.copyload, %bb.x ]
  %.sroa.40.sroa.0.3 = phi i8 [ 7, %bb.aa ], [ %.sroa.40.sroa.0.0.extract.trunc133, %bb.z ], [ %.sroa.848.0.copyload.i, %bb.x ]
  %.sroa.61.3 = phi i8 [ %i.bl, %bb.aa ], [ undef, %bb.z ], [ undef, %bb.x ]
  %.sroa.54.3 = phi i8 [ %i.bf, %bb.aa ], [ %.sroa.54.10.copyload122, %bb.z ], [ %.sroa.54.28.copyload, %bb.x ]
  %.sroa.49.3 = phi i32 [ %i.bg, %bb.aa ], [ %.sroa.49.10.copyload102, %bb.z ], [ %.sroa.49.28.copyload, %bb.x ]
  %.sroa.39.3 = phi i32 [ undef, %bb.aa ], [ %.sroa.39.10.copyload94, %bb.z ], [ %.sroa.747.0.copyload.i, %bb.x ]
  %.sroa.34.3 = phi i16 [ undef, %bb.aa ], [ %.sroa.34.10.copyload79, %bb.z ], [ %.sroa.34.9.copyload78, %bb.x ]
  %.sroa.27.3 = phi i8 [ undef, %bb.aa ], [ %i.bl, %bb.z ], [ %.sroa.27.9.copyload74, %bb.x ]
  %.sroa.18.3 = phi i8 [ undef, %bb.aa ], [ %i.bj, %bb.z ], [ %i.ba, %bb.x ]
  %.sroa.0.2 = phi i64 [ -1, %bb.aa ], [ -2, %bb.z ], [ -2, %bb.x ]
  %i.bo = phi <2 x i32> [ undef, %bb.aa ], [ %i.bm, %bb.z ], [ %i.bb, %bb.x ]
  %i.bp = phi <2 x i32> [ %i.bi, %bb.aa ], [ %i.bn, %bb.z ], [ %i.bc, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ag

bb.ab:                                            ; preds = %bb.d, %bb.h
  %.sroa.11.2 = phi i1 [ false, %bb.h ], [ true, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1135
  call void @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader18read_pixmap_headerBV_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i1 noundef zeroext %.sroa.11.2), !noalias !1130
  %i.bq = load i8, ptr %i.a, align 8, !range !12, !noalias !1135, !noundef !4 ; 2 uses
  %.not.i64 = icmp eq i8 %i.bq, -1
  br i1 %.not.i64, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.40.sroa.20.4.copyload165 = load i32, ptr %.sroa.533.0..sroa_idx.i, align 4, !noalias !1133
  %.sroa.49.28..sroa.533.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.49.28.copyload105 = load i32, ptr %.sroa.49.28..sroa.533.0..sroa_idx.i.sroa_idx, align 8, !noalias !1133
  %.sroa.52.28..sroa.533.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.br = load <2 x i32>, ptr %.sroa.52.28..sroa.533.0..sroa_idx.i.sroa_idx, align 4, !noalias !1133
  %.sroa.54.28..sroa.533.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %.sroa.54.28.copyload125 = load i8, ptr %.sroa.54.28..sroa.533.0..sroa_idx.i.sroa_idx, align 4, !noalias !1133
  %.sroa.55.28..sroa.533.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.55, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.55.28..sroa.533.0..sroa_idx.i.sroa_idx, i64 27, i1 false), !noalias !1133
  %.sroa.27.9.copyload72 = load i8, ptr %.sroa.432.0..sroa_idx.i, align 1, !noalias !1133
  %.sroa.34.9..sroa.432.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.34.9.copyload76 = load i16, ptr %.sroa.34.9..sroa.432.0..sroa_idx.i.sroa_idx, align 2, !noalias !1133
  %.sroa.37.9..sroa.432.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bs = load <2 x i32>, ptr %.sroa.37.9..sroa.432.0..sroa_idx.i.sroa_idx, align 4, !noalias !1133
  %.sroa.39.9..sroa.432.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.39.9.copyload92 = load i32, ptr %.sroa.39.9..sroa.432.0..sroa_idx.i.sroa_idx, align 4, !noalias !1133
  %.sroa.40.9..sroa.432.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.40.sroa.0.0.copyload = load i8, ptr %.sroa.40.9..sroa.432.0..sroa_idx.i.sroa_idx, align 8, !noalias !1133
  %.sroa.40.sroa.19.0..sroa.40.9..sroa.432.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %.sroa.40.sroa.19.sroa.0.0.copyload = load i24, ptr %.sroa.40.sroa.19.0..sroa.40.9..sroa.432.0..sroa_idx.i.sroa_idx.sroa_idx, align 1, !noalias !1133
  br label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.bt, i64 16, i1 false), !noalias !1135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1135
  call void @_RNvXsd_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtB7_6header12PixmapHeaderNtB5_20DecodableImageHeader10tuple_type(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !1130
  %i.bu = load i8, ptr %i.b, align 8, !range !12, !noalias !1135, !noundef !4 ; 2 uses
  %.not46.i = icmp eq i8 %i.bu, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !1135 ; 2 uses
  br i1 %.not46.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.34.10.copyload80 = load i16, ptr %.sroa.542.0..sroa_idx.i, align 2, !noalias !1133
  %.sroa.37.10..sroa.542.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bx = load <2 x i32>, ptr %.sroa.37.10..sroa.542.0..sroa_idx.i.sroa_idx, align 4, !noalias !1133
  %.sroa.39.10..sroa.542.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.39.10.copyload95 = load i32, ptr %.sroa.39.10..sroa.542.0..sroa_idx.i.sroa_idx, align 4, !noalias !1133
  %.sroa.40.10..sroa.542.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.40.10.copyload98 = load i64, ptr %.sroa.40.10..sroa.542.0..sroa_idx.i.sroa_idx, align 8, !noalias !1133 ; 3 uses
  %.sroa.40.sroa.0.0.extract.trunc134 = trunc i64 %.sroa.40.10.copyload98 to i8
  %.sroa.40.sroa.19.0.extract.shift145 = lshr i64 %.sroa.40.10.copyload98, 8
  %.sroa.40.sroa.19.0.extract.trunc146 = trunc i64 %.sroa.40.sroa.19.0.extract.shift145 to i24
  %.sroa.40.sroa.20.0.extract.shift159 = lshr i64 %.sroa.40.10.copyload98, 32
  %.sroa.40.sroa.20.0.extract.trunc160 = trunc nuw i64 %.sroa.40.sroa.20.0.extract.shift159 to i32
  %.sroa.49.10..sroa.542.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.49.10.copyload103 = load i32, ptr %.sroa.49.10..sroa.542.0..sroa_idx.i.sroa_idx, align 8, !noalias !1133
  %.sroa.52.10..sroa.542.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.by = load <2 x i32>, ptr %.sroa.52.10..sroa.542.0..sroa_idx.i.sroa_idx, align 4, !noalias !1133
  %.sroa.54.10..sroa.542.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.sroa.54.10.copyload123 = load i8, ptr %.sroa.54.10..sroa.542.0..sroa_idx.i.sroa_idx, align 4, !noalias !1133
  %.sroa.55.10..sroa.542.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.55, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.55.10..sroa.542.0..sroa_idx.i.sroa_idx, i64 27, i1 false), !noalias !1133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1135
  br label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1135
  %.sroa.55.64..sroa_idx128 = getelementptr inbounds nuw i8, ptr %.sroa.55, i64 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.55.64..sroa_idx128, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !alias.scope !1135
  %.sroa.49.32.copyload = load i32, ptr %i.bt, align 4, !noalias !1133
  %.sroa.52.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bz = load <2 x i32>, ptr %.sroa.52.32..sroa_idx, align 8, !noalias !1133
  %.sroa.54.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.54.32.copyload = load i8, ptr %.sroa.54.32..sroa_idx, align 8, !noalias !1133
  %.sroa.55.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.55, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.55.32..sroa_idx, i64 3, i1 false), !noalias !1133
  br label %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit

_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit: ; preds = %bb.ac, %bb.ae, %bb.af
  %.sroa.40.sroa.19.sroa.0.4 = phi i24 [ 0, %bb.af ], [ %.sroa.40.sroa.19.0.extract.trunc146, %bb.ae ], [ %.sroa.40.sroa.19.sroa.0.0.copyload, %bb.ac ]
  %.sroa.40.sroa.20.4 = phi i32 [ -2147483648, %bb.af ], [ %.sroa.40.sroa.20.0.extract.trunc160, %bb.ae ], [ %.sroa.40.sroa.20.4.copyload165, %bb.ac ]
  %.sroa.40.sroa.0.4 = phi i8 [ 8, %bb.af ], [ %.sroa.40.sroa.0.0.extract.trunc134, %bb.ae ], [ %.sroa.40.sroa.0.0.copyload, %bb.ac ]
  %.sroa.61.4 = phi i8 [ %i.bw, %bb.af ], [ undef, %bb.ae ], [ undef, %bb.ac ]
  %.sroa.54.4 = phi i8 [ %.sroa.54.32.copyload, %bb.af ], [ %.sroa.54.10.copyload123, %bb.ae ], [ %.sroa.54.28.copyload125, %bb.ac ]
  %.sroa.49.4 = phi i32 [ %.sroa.49.32.copyload, %bb.af ], [ %.sroa.49.10.copyload103, %bb.ae ], [ %.sroa.49.28.copyload105, %bb.ac ]
  %.sroa.39.4 = phi i32 [ undef, %bb.af ], [ %.sroa.39.10.copyload95, %bb.ae ], [ %.sroa.39.9.copyload92, %bb.ac ]
  %.sroa.34.4 = phi i16 [ undef, %bb.af ], [ %.sroa.34.10.copyload80, %bb.ae ], [ %.sroa.34.9.copyload76, %bb.ac ]
  %.sroa.27.4 = phi i8 [ undef, %bb.af ], [ %i.bw, %bb.ae ], [ %.sroa.27.9.copyload72, %bb.ac ]
  %.sroa.18.4 = phi i8 [ undef, %bb.af ], [ %i.bu, %bb.ae ], [ %i.bq, %bb.ac ]
  %.sroa.0.3 = phi i64 [ -1, %bb.af ], [ -2, %bb.ae ], [ -2, %bb.ac ]
  %i.ca = phi <2 x i32> [ undef, %bb.af ], [ %i.bx, %bb.ae ], [ %i.bs, %bb.ac ]
  %i.cb = phi <2 x i32> [ %i.bz, %bb.af ], [ %i.by, %bb.ae ], [ %i.br, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit
  %.sroa.40.sroa.19.sroa.0.0 = phi i24 [ %.sroa.40.sroa.19.sroa.0.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.40.sroa.19.sroa.0.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.40.sroa.19.sroa.0.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.40.sroa.19.sroa.0.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ]
  %.sroa.40.sroa.20.0 = phi i32 [ %.sroa.40.sroa.20.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.40.sroa.20.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.40.sroa.20.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.40.sroa.20.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ]
  %.sroa.40.sroa.0.0 = phi i8 [ %.sroa.40.sroa.0.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.40.sroa.0.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.40.sroa.0.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.40.sroa.0.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ]
  %i.cc = phi i8 [ 0, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.61.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.61.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.61.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 2 uses
  %.sroa.54.0 = phi i8 [ %.sroa.54.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.54.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.54.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.54.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 2 uses
  %i.cd = phi i32 [ %.sroa.49.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.49.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.49.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.49.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 4 uses
  %.sroa.39.0 = phi i32 [ %.sroa.39.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.39.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.39.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.39.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 2 uses
  %.sroa.34.0 = phi i16 [ %.sroa.34.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.34.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.34.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.34.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 2 uses
  %.sroa.27.0 = phi i8 [ %.sroa.27.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.27.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.27.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.27.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 2 uses
  %.sroa.18.0 = phi i8 [ %i.at, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.18.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.18.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.18.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sink.i, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.0.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.0.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.0.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ]
  %i.ce = phi <2 x i32> [ %i.ay, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %i.bo, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %i.ca, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %i.ar, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 2 uses
  %i.cf = phi <2 x i32> [ %i.az, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %i.bp, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %i.cb, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %i.as, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 3 uses
  %i.cg = icmp eq i64 %.sroa.0.0, -2
  %.sroa.40.sroa.20.0.insert.ext = zext i32 %.sroa.40.sroa.20.0 to i64
  %.sroa.40.sroa.20.0.insert.shift = shl nuw i64 %.sroa.40.sroa.20.0.insert.ext, 32
  %.sroa.40.sroa.19.0.insert.ext = zext i24 %.sroa.40.sroa.19.sroa.0.0 to i64
  %.sroa.40.sroa.19.0.insert.shift = shl nuw nsw i64 %.sroa.40.sroa.19.0.insert.ext, 8
  %.sroa.40.sroa.19.0.insert.insert = or disjoint i64 %.sroa.40.sroa.20.0.insert.shift, %.sroa.40.sroa.19.0.insert.shift
  %.sroa.40.sroa.0.0.insert.ext = zext i8 %.sroa.40.sroa.0.0 to i64
  %.sroa.40.sroa.0.0.insert.insert = or disjoint i64 %.sroa.40.sroa.19.0.insert.insert, %.sroa.40.sroa.0.0.insert.ext ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.9.sroa.20, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.55, i64 27, i1 false)
  br i1 %i.cg, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  %.sroa.14236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.14236.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.9.sroa.20, i64 27, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.18.0, ptr %i.ch, align 8
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.27.0, ptr %.sroa.4226.0..sroa_idx, align 1
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.34.0, ptr %.sroa.5227.0..sroa_idx, align 2
  %.sroa.6228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x i32> %i.ce, ptr %.sroa.6228.0..sroa_idx, align 4
  %.sroa.8230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.39.0, ptr %.sroa.8230.0..sroa_idx, align 4
  %.sroa.9231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.40.sroa.0.0.insert.insert, ptr %.sroa.9231.0..sroa_idx, align 8
  %.sroa.10232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.cd, ptr %.sroa.10232.0..sroa_idx, align 8
  %.sroa.11233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x i32> %i.cf, ptr %.sroa.11233.0..sroa_idx, align 4
  %.sroa.13235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.sroa.54.0, ptr %.sroa.13235.0..sroa_idx, align 4
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.20)
  br label %bb.am

.thread:                                          ; preds = %bb.ag
  %.sroa.55.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.55, i64 27
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.55.72..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  %.sroa.417.sroa.14.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.417.sroa.14.0..sroa.417.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.9.sroa.20, i64 27, i1 false)
  store i64 -1, ptr %i.t, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 %.sroa.18.0, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  store i8 %.sroa.27.0, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 1
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  store i16 %.sroa.34.0, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 2
  %.sroa.417.sroa.6.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store <2 x i32> %i.ce, ptr %.sroa.417.sroa.6.0..sroa.417.0..sroa_idx.sroa_idx, align 4
  %.sroa.417.sroa.8.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i32 %.sroa.39.0, ptr %.sroa.417.sroa.8.0..sroa.417.0..sroa_idx.sroa_idx, align 4
  %.sroa.417.sroa.9.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %.sroa.40.sroa.0.0.insert.insert, ptr %.sroa.417.sroa.9.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.10.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i32 %i.cd, ptr %.sroa.417.sroa.10.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.11.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.ci = extractelement <2 x i32> %i.cf, i64 0   ; 2 uses
  store <2 x i32> %i.cf, ptr %.sroa.417.sroa.11.0..sroa.417.0..sroa_idx.sroa_idx, align 4
  %.sroa.417.sroa.13.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  store i8 %.sroa.54.0, ptr %.sroa.417.sroa.13.0..sroa.417.0..sroa_idx.sroa_idx, align 4
  %.sroa.518.sroa.4.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  store i8 %i.cc, ptr %.sroa.518.sroa.4.0..sroa.518.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.20)
  %i.cj = add i64 %.sroa.40.sroa.0.0.insert.insert, 9223372036854775802 ; 2 uses
  %switch = icmp ult i64 %i.cj, 3                 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.cn = load i32, ptr %i.cm, align 8
  %.sroa.042.0238 = select i1 %switch, i32 %i.ci, i32 %i.cl
  %.sroa.043.0 = select i1 %switch, i32 %i.cd, i32 %i.cn
  %i.co = zext nneg i8 %i.cc to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11total_bytesBb_, i64 %i.co
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.cp = zext i32 %.sroa.042.0238 to i64
  %i.cq = zext i32 %.sroa.043.0 to i64
  %i.cr = mul nuw i64 %i.cq, %i.cp
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %switch.ext, i64 %i.cr)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %.thread246, label %bb.aj

bb.ai:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder10PnmDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.t) #29
          to label %common.resume unwind label %bb.an

bb.aj:                                            ; preds = %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.t, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ak

.thread246:                                       ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 4, ptr %i.cs, align 1
  store i8 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %switch283 = icmp ult i64 %i.cj, 3              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.cw = load i32, ptr %i.cv, align 8
  %.sink282 = select i1 %switch283, i32 %i.ci, i32 %i.cu ; 2 uses
  %.sink = select i1 %switch283, i32 %i.cd, i32 %i.cw ; 2 uses
  store i32 %.sink282, ptr %i.m, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %.sink, ptr %i.cx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 %.sink282, ptr %i.l, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store i32 %.sink, ptr %i.cy, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.451.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.cy, ptr %i.cz, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @51, ptr noundef nonnull %i.k)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit unwind label %bb.al

bb.ak:                                            ; preds = %bb.b, %bb.e, %bb.am, %bb.aj
  ret void

bb.al:                                            ; preds = %.thread246
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #29
          to label %bb.ai unwind label %bb.an

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit: ; preds = %.thread246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.421.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.421, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.421.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 8, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.527.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.421, i64 31, i1 false)
  store i64 -2, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder10PnmDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.t)
  br label %bb.am

bb.am:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ak

bb.an:                                            ; preds = %bb.al, %bb.ai
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsINtB5_10DdsDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.483 = alloca [31 x i8], align 1          ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.474 = alloca [31 x i8], align 1          ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [64 x i8], align 8                ; 11 uses
  %.sroa.6.sroa.761 = alloca [16 x i8], align 8   ; 7 uses
  %i.p = alloca [20 x i8], align 4                ; 8 uses
  %i.q = alloca [64 x i8], align 8                ; 22 uses
  %.sroa.6.sroa.9 = alloca [12 x i8], align 8     ; 7 uses
  %.sroa.6.sroa.15 = alloca [28 x i8], align 4    ; 7 uses
  %i.r = alloca [60 x i8], align 8                ; 15 uses
  %i.s = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i32 0, ptr %i.s, align 4
  %i.t = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull %i.s, i64 noundef 4) ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 9, ptr %0, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.4113.0..sroa_idx, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.u = load i32, ptr %i.s, align 4, !noundef !4
  %.not212 = icmp eq i32 %i.u, 542327876
  br i1 %.not212, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs2_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_6Header11from_reader(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.q, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) @9)
  %i.v = load i8, ptr %i.q, align 8, !range !12, !noundef !4 ; 2 uses
  %.not213 = icmp eq i8 %i.v, -1
  br i1 %.not213, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtNtB8_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i32 noundef 7, i32 undef)
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4145.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4133.0..sroa_idx, i64 3, i1 false)
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.7136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.sroa.7136.0.copyload = load i32, ptr %.sroa.7136.0..sroa_idx, align 4
  %.sroa.8137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.sroa.9, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8137.0..sroa_idx, i64 12, i1 false)
  %.sroa.9138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %.sroa.9138.0.copyload = load i32, ptr %.sroa.9138.0..sroa_idx, align 4
  %.sroa.10139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.14143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.sroa.15, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.14143.0..sroa_idx, i64 28, i1 false)
  %.sroa.8149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.14155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.7148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.9150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.10151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load <4 x i8>, ptr %.sroa.10139.0..sroa_idx, align 8
  %i.x = load <2 x i32>, ptr %.sroa.5134.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8149.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.sroa.9, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.14155.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.sroa.15, i64 28, i1 false)
  store i8 %i.v, ptr %0, align 8
  store <2 x i32> %i.x, ptr %.sroa.5146.0..sroa_idx, align 4
  store i32 %.sroa.7136.0.copyload, ptr %.sroa.7148.0..sroa_idx, align 4
  store i32 %.sroa.9138.0.copyload, ptr %.sroa.9150.0..sroa_idx, align 4
end_hunk_1
begin_hunk_2_@_RNvMs4_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsINtB5_10DdsDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB9_:bb.a
  br label %bb.ah

bb.aa:                                            ; preds = %bb.y
  %i.av = add i32 %.sroa.0156.0.copyload, -76
  %or.cond10 = icmp ult i32 %i.av, 3
  br i1 %or.cond10, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 7, ptr %i.aw, align 1
  store i8 0, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.p, ptr %i.l, align 8
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4176.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @53, ptr noundef nonnull %i.l)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit222 unwind label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #29
          to label %bb.ap unwind label %bb.p

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit222: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.572.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit222, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ao

bb.ag:                                            ; preds = %bb.s
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.s, %bb.z, %bb.u, %bb.ad, %bb.ab
  %.sroa.081.0 = phi i64 [ 3, %bb.z ], [ 3, %bb.s ], [ 4, %bb.u ], [ 4, %bb.ad ], [ 4, %bb.ab ], [ 4, %bb.ag ]
  %.sroa.039.2 = phi i8 [ 0, %bb.z ], [ 0, %bb.s ], [ 2, %bb.u ], [ 2, %bb.ad ], [ 1, %bb.ab ], [ 1, %bb.ag ]
  %i.ay = zext i32 %.sroa.5117.0.copyload to i64
  %i.az = zext i32 %.sroa.4116.0.copyload to i64
  %i.ba = mul nuw i64 %i.ay, %i.az
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.081.0, i64 %i.ba)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs3dxtINtB4_10DxtDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB8_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, i32 noundef %.sroa.5117.0.copyload, i32 noundef %.sroa.4116.0.copyload, i8 noundef %.sroa.039.2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bb = load i8, ptr %i.b, align 8, !range !12, !noundef !4 ; 2 uses
  %.not215 = icmp eq i8 %i.bb, -1
  br i1 %.not215, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 7, ptr %i.bc, align 1
  store i8 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.3.0..sroa_idx, ptr %i.e, align 8
  %.sroa.4188.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4188.0..sroa_idx.a, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.2.0..sroa_idx, ptr %i.bd, align 8
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4192.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @51, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit223 unwind label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.5203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5203.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5200.0..sroa_idx, i64 16, i1 false)
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4202.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4199.0..sroa_idx, i64 47, i1 false)
  store i8 %i.bb, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.n

bb.al:                                            ; preds = %bb.ai
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %i.be, i64 40, i1 false)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.n

bb.am:                                            ; preds = %bb.aj
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #29
          to label %bb.ap unwind label %bb.p

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit223: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.483.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.483, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.483.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.488.0..sroa_idx, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.589.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.483, i64 31, i1 false)
  br label %bb.ao

bb.an:                                            ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #29
          to label %bb.ap unwind label %bb.p

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.474.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.474, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.474.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.479.0..sroa_idx, align 8
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.580.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.474, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.af, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit223, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.n

bb.ap:                                            ; preds = %bb.j, %bb.ae, %bb.am, %bb.an
  %.pn = phi { ptr, i32 } [ %i.af, %bb.j ], [ %i.bh, %bb.an ], [ %i.bg, %bb.am ], [ %i.ax, %bb.ae ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsa5QsYiPB8Gl_5image6images8dynimageNtB4_12DynamicImage10into_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = load i64, ptr %1, align 8, !range !198, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  switch i64 %i.m, label %default.unreachable130 [
    i64 0, label %bb.b
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.k
    i64 5, label %bb.u
    i64 6, label %bb.ae
    i64 7, label %bb.ao
    i64 8, label %bb.ay
    i64 9, label %bb.bi
  ]

default.unreachable130:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.sroa.0119.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4120.0.copyload = load ptr, ptr %.sroa.4120.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.o = icmp sgt i64 %.sroa.5.0.copyload, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.0119.0.copyload, ptr %0, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4120.0.copyload, ptr %.sroa.6.8..sroa_idx, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.8.8..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b, %bb.bg, %bb.aw, %bb.am, %bb.ac, %bb.s, %bb.i
  ret void

bb.d:                                             ; preds = %bb.bk, %bb.ba, %bb.aq, %bb.ag, %bb.w, %bb.m
  unreachable

bb.e:                                             ; preds = %bb.bh, %bb.ax, %bb.an, %bb.ad, %bb.t, %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.bn, %bb.bd, %bb.at, %bb.aj, %bb.z, %bb.p, %bb.j, %bb.t, %bb.ad, %bb.an, %bb.ax, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %i.dd, %bb.bd ], [ %i.al, %bb.t ], [ %i.aj, %bb.p ], [ %i.bb, %bb.z ], [ %i.bt, %bb.aj ], [ %i.cl, %bb.at ], [ %i.df, %bb.bh ], [ %i.cn, %bb.ax ], [ %i.bv, %bb.an ], [ %i.bd, %bb.ad ], [ %i.t, %bb.j ], [ %i.dv, %bb.bn ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  %.sroa.0121.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4122.0.copyload = load ptr, ptr %.sroa.4122.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5123.0.copyload = load i64, ptr %.sroa.5123.0..sroa_idx, align 8 ; 2 uses
  %i.q = icmp sgt i64 %.sroa.5123.0.copyload, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0121.0.copyload, ptr %0, align 8
  %.sroa.658.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4122.0.copyload, ptr %.sroa.658.8..sroa_idx, align 8
  %.sroa.859.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5123.0.copyload, ptr %.sroa.859.8..sroa_idx, align 8
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %.sroa.0124.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4125.0.copyload = load ptr, ptr %.sroa.4125.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5126.0.copyload = load i64, ptr %.sroa.5126.0..sroa_idx, align 8 ; 2 uses
  %i.r = icmp sgt i64 %.sroa.5126.0.copyload, -1
  tail call void @llvm.assume(i1 %i.r)
  store i64 %.sroa.0124.0.copyload, ptr %0, align 8
  %.sroa.663.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4125.0.copyload, ptr %.sroa.663.8..sroa_idx, align 8
  %.sroa.864.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5126.0.copyload, ptr %.sroa.864.8..sroa_idx, align 8
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  %.sroa.0127.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4128.0.copyload = load ptr, ptr %.sroa.4128.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5129.0.copyload = load i64, ptr %.sroa.5129.0..sroa_idx, align 8 ; 2 uses
  %i.s = icmp sgt i64 %.sroa.5129.0.copyload, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %.sroa.0127.0.copyload, ptr %0, align 8
  %.sroa.668.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4128.0.copyload, ptr %.sroa.668.8..sroa_idx, align 8
  %.sroa.869.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5129.0.copyload, ptr %.sroa.869.8..sroa_idx, align 8
  br label %bb.c

bb.i:                                             ; preds = %bb.o
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.c

bb.j:                                             ; preds = %bb.m, %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #29
          to label %common.resume unwind label %bb.e

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !4 ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 1                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.y, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.z = load i64, ptr %i.f, align 8, !range !175, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !538, !noundef !4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.m, label %bb.n, !prof !124

bb.m:                                             ; preds = %bb.l
  %i.ae = load i64, ptr %i.ad, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #33
          to label %bb.d unwind label %bb.j

bb.n:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = icmp samesign ule i64 %i.y, %i.ac
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.ac, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.ai, align 8
  %.not14 = icmp eq i64 %i.x, 0
  br i1 %.not14, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.r, %bb.n
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.r:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.v, i64 %i.y, i1 false)
  store i64 %i.y, ptr %i.ai, align 8
  br label %bb.o

bb.s:                                             ; preds = %bb.y
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.c

bb.t:                                             ; preds = %bb.w, %bb.u
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #29
          to label %common.resume unwind label %bb.e

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4 ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ap, 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.aq, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  %i.ar = load i64, ptr %i.e, align 8, !range !175, !noundef !4
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !538, !noundef !4 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.as, label %bb.w, label %bb.x, !prof !124

bb.w:                                             ; preds = %bb.v
  %i.aw = load i64, ptr %i.av, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #33
          to label %bb.d unwind label %bb.t

bb.x:                                             ; preds = %bb.v
  %i.ax = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ay = icmp samesign ule i64 %i.aq, %i.au
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.au, ptr %0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.ba, align 8
  %.not13 = icmp eq i64 %i.ap, 0
  br i1 %.not13, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.ab, %bb.x
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.s unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ab:                                            ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %i.an, i64 %i.aq, i1 false)
  store i64 %i.aq, ptr %i.ba, align 8
  br label %bb.y

end_hunk_2
begin_hunk_3_@_RNvXs1_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffINtB5_11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder11orientationB9_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i16, ptr %i.o, align 8, !noalias !1465 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1465
  %i.q = icmp ult i16 %i.p, 9
  br i1 %i.q, label %switch.lookup, label %.sink.split

switch.lookup:                                    ; preds = %bb.h
  %i.r = zext nneg i16 %i.p to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffINtB5_11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder11orientationB9_, i64 %i.r
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %switch.lookup, %bb.g
  %.sroa.0.0.ph = phi i8 [ 0, %bb.g ], [ %switch.load, %switch.lookup ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.e
  %.sroa.0.0 = phi i8 [ 0, %bb.e ], [ %.sroa.0.0.ph, %.sink.split ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.0.0, ptr %i.s, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffINtB5_11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder12xmp_metadataB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(512) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = load i64, ptr %1, align 8, !range !777, !noundef !4
  %.not = icmp eq i64 %i.f, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs6_NtCs53gkmrwjETj_4tiff7decoderINtB5_7DecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE7get_tagCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(464) %1, i16 noundef -23422, i16 700)
  %i.g = load i64, ptr %i.e, align 8, !range !175, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.j, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !range !165, !noundef !4 ; 2 uses
  %i.l = icmp ne i64 %i.k, -9223372036854775791
  call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.k, -9223372036854775792
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !166
  %i.p = icmp eq i64 %i.o, -9223372036854775801
  %or.cond = select i1 %i.m, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB2_5Value11into_u8_vec(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  %i.q = load i64, ptr %i.b, align 8, !range !778, !noundef !4 ; 2 uses
  %.not9 = icmp eq i64 %i.q, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.q, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffNtNtB8_5error10ImageError16from_tiff_decode(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  store i8 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h, %bb.c
  ret void

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffNtNtB8_5error10ImageError16from_tiff_decode(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.t, align 8
  store i8 -1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffINtB5_11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder16read_image_boxedB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.4.i.i = alloca [55 x i8], align 1        ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [64 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = alloca [96 x i8], align 8               ; 7 uses
  %i.ac = alloca [96 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [6 x i8], align 8                ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 9 uses
  %i.ag = alloca [3 x i8], align 4                ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 9 uses
  %i.ai = alloca [24 x i8], align 8               ; 5 uses
  %i.aj = alloca [16 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [512 x i8], align 8              ; 59 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.al, ptr noundef nonnull align 8 dereferenceable(512) %1, i64 512, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1473
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %3, ptr %i.am, align 8, !noalias !1473
  store i8 0, ptr %i.ak, align 8, !noalias !1473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1473
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 496 ; 2 uses
  %.val.i.i = load i32, ptr %i.an, align 8, !alias.scope !1475, !noalias !1478, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 500
  %.val2.i.i = load i32, ptr %i.ao, align 4, !alias.scope !1475, !noalias !1478, !noundef !4
  %i.ap = zext i32 %.val.i.i to i64
  %i.aq = zext i32 %.val2.i.i to i64
  %i.ar = mul nuw i64 %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 506 ; 3 uses
  %.val3.i.i = load i8, ptr %i.as, align 2, !range !1464, !alias.scope !1475, !noalias !1478, !noundef !4
  %i.at = zext nneg i8 %.val3.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs4tiff11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder11total_bytesB9_, i64 %i.at
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.au = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ar, i64 %switch.ext) ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1
  br i1 %i.av, label %.thread.i, label %bb.c, !prof !124

default.unreachable:                              ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit127.i, %bb.aq, %bb.al, %.noexc101.i.a, %bb.x, %bb.l
  unreachable

.thread.i:                                        ; preds = %switch.lookup
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 -1, ptr %i.aw, align 8, !noalias !1473
  store i8 0, ptr %i.aj, align 8, !noalias !1473
  br label %bb.d

.body.i:                                          ; preds = %bb.ej, %bb.ef, %bb.eb, %bb.dx, %bb.dt, %bb.dp, %bb.dl, %bb.dh, %bb.da, %bb.cw, %bb.co, %.body122.i, %bb.bx, %bb.br, %bb.bk, %bb.bb, %bb.aj, %bb.b
  %.sroa.052.0.i = phi i1 [ false, %bb.ej ], [ true, %bb.co ], [ true, %.body122.i ], [ true, %bb.bx ], [ true, %bb.da ], [ true, %bb.cw ], [ true, %bb.dh ], [ true, %bb.dl ], [ true, %bb.dp ], [ true, %bb.dt ], [ true, %bb.dx ], [ true, %bb.eb ], [ true, %bb.ef ], [ %.sroa.052.1.i, %bb.b ], [ true, %bb.br ], [ true, %bb.bk ], [ true, %bb.bb ], [ true, %bb.aj ]
  %.sroa.049.0.i = phi i1 [ true, %bb.ej ], [ true, %bb.co ], [ true, %.body122.i ], [ true, %bb.bx ], [ true, %bb.da ], [ true, %bb.cw ], [ true, %bb.dh ], [ true, %bb.dl ], [ true, %bb.dp ], [ true, %bb.dt ], [ true, %bb.dx ], [ true, %bb.eb ], [ false, %bb.ef ], [ %.sroa.049.1.i, %bb.b ], [ true, %bb.br ], [ true, %bb.bk ], [ true, %bb.bb ], [ true, %bb.aj ]
  %.sroa.046.0.i = phi i1 [ true, %bb.ej ], [ true, %bb.co ], [ true, %.body122.i ], [ true, %bb.bx ], [ true, %bb.da ], [ true, %bb.cw ], [ true, %bb.dh ], [ true, %bb.dl ], [ true, %bb.dp ], [ true, %bb.dt ], [ true, %bb.dx ], [ false, %bb.eb ], [ true, %bb.ef ], [ %.sroa.046.1.i, %bb.b ], [ true, %bb.br ], [ true, %bb.bk ], [ true, %bb.bb ], [ true, %bb.aj ]
  %.sroa.043.0.i = phi i1 [ true, %bb.ej ], [ true, %bb.co ], [ true, %.body122.i ], [ true, %bb.bx ], [ true, %bb.da ], [ true, %bb.cw ], [ true, %bb.dh ], [ true, %bb.dl ], [ true, %bb.dp ], [ true, %bb.dt ], [ false, %bb.dx ], [ true, %bb.eb ], [ true, %bb.ef ], [ %.sroa.043.1.i, %bb.b ], [ true, %bb.br ], [ true, %bb.bk ], [ true, %bb.bb ], [ true, %bb.aj ]
  %.sroa.040.0.i = phi i1 [ true, %bb.ej ], [ true, %bb.co ], [ true, %.body122.i ], [ true, %bb.bx ], [ true, %bb.da ], [ true, %bb.cw ], [ true, %bb.dh ], [ false, %bb.dl ], [ true, %bb.dp ], [ true, %bb.dt ], [ true, %bb.dx ], [ true, %bb.eb ], [ true, %bb.ef ], [ %.sroa.040.1.i, %bb.b ], [ true, %bb.br ], [ true, %bb.bk ], [ true, %bb.bb ], [ true, %bb.aj ]
  %.sroa.037.0.i = phi i1 [ true, %bb.ej ], [ true, %bb.co ], [ true, %.body122.i ], [ true, %bb.bx ], [ true, %bb.da ], [ true, %bb.cw ], [ false, %bb.dh ], [ true, %bb.dl ], [ true, %bb.dp ], [ true, %bb.dt ], [ true, %bb.dx ], [ true, %bb.eb ], [ true, %bb.ef ], [ %.sroa.037.1.i, %bb.b ], [ true, %bb.br ], [ true, %bb.bk ], [ true, %bb.bb ], [ true, %bb.aj ]
  %.sroa.034.0.i = phi i1 [ true, %bb.ej ], [ false, %bb.co ], [ false, %.body122.i ], [ false, %bb.bx ], [ true, %bb.da ], [ true, %bb.cw ], [ true, %bb.dh ], [ true, %bb.dl ], [ true, %bb.dp ], [ true, %bb.dt ], [ true, %bb.dx ], [ true, %bb.eb ], [ true, %bb.ef ], [ %.sroa.034.1.i, %bb.b ], [ true, %bb.br ], [ true, %bb.bk ], [ true, %bb.bb ], [ true, %bb.aj ]
  %.sroa.031.0.i = phi i1 [ true, %bb.ej ], [ true, %bb.co ], [ true, %.body122.i ], [ true, %bb.bx ], [ false, %bb.da ], [ false, %bb.cw ], [ true, %bb.dh ], [ true, %bb.dl ], [ true, %bb.dp ], [ true, %bb.dt ], [ true, %bb.dx ], [ true, %bb.eb ], [ true, %bb.ef ], [ %.sroa.031.1.i, %bb.b ], [ true, %bb.br ], [ true, %bb.bk ], [ true, %bb.bb ], [ true, %bb.aj ]
  %.sroa.055.0.i = phi i1 [ true, %bb.ej ], [ true, %bb.co ], [ true, %.body122.i ], [ true, %bb.bx ], [ true, %bb.da ], [ true, %bb.cw ], [ true, %bb.dh ], [ true, %bb.dl ], [ false, %bb.dp ], [ true, %bb.dt ], [ true, %bb.dx ], [ true, %bb.eb ], [ true, %bb.ef ], [ %.sroa.055.1.i, %bb.b ], [ true, %bb.br ], [ true, %bb.bk ], [ true, %bb.bb ], [ true, %bb.aj ]
  %.sroa.058.0.i = phi i1 [ true, %bb.ej ], [ true, %bb.co ], [ true, %.body122.i ], [ true, %bb.bx ], [ true, %bb.da ], [ true, %bb.cw ], [ true, %bb.dh ], [ true, %bb.dl ], [ true, %bb.dp ], [ false, %bb.dt ], [ true, %bb.dx ], [ true, %bb.eb ], [ true, %bb.ef ], [ %.sroa.058.1.i, %bb.b ], [ true, %bb.br ], [ true, %bb.bk ], [ true, %bb.bb ], [ true, %bb.aj ]
  %.pn80.i = phi { ptr, i32 } [ %i.ld, %bb.ej ], [ %i.gg, %bb.co ], [ %.pn.i, %.body122.i ], [ %i.ep, %bb.bx ], [ %i.hx, %bb.da ], [ %i.hr, %bb.cw ], [ %i.jh, %bb.dh ], [ %i.jo, %bb.dl ], [ %i.jv, %bb.dp ], [ %i.kc, %bb.dt ], [ %i.kj, %bb.dx ], [ %i.kp, %bb.eb ], [ %i.kw, %bb.ef ], [ %i.az, %bb.b ], [ %i.ed, %bb.br ], [ %i.ds, %bb.bk ], [ %i.dh, %bb.bb ], [ %.pn.i.i, %bb.aj ] ; 21 uses
  %i.ax = load i64, ptr %i.al, align 8, !range !777, !alias.scope !1479, !noalias !1478, !noundef !4
  %i.ay = icmp eq i64 %i.ax, 2
  br i1 %i.ay, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i, label %bb.a

bb.a:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(512) %i.al)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.cc, !noalias !1468

bb.b:                                             ; preds = %bb.el, %bb.eh, %bb.ed, %bb.dz, %bb.dv, %bb.dr, %bb.dn, %bb.dj, %bb.de, %._crit_edge.i, %bb.cy, %bb.cs, %._crit_edge244.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.by, %bb.bu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit41.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsa5QsYiPB8Gl_5image.exit.i.i, %bb.ai, %bb.y, %bb.k, %bb.j, %bb.h, %bb.g, %bb.d
  %.sroa.052.1.i = phi i1 [ true, %bb.j ], [ true, %bb.h ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit41.i.i ], [ true, %._crit_edge244.i ], [ true, %bb.cs ], [ true, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ true, %bb.by ], [ true, %bb.ai ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %._crit_edge.i ], [ true, %bb.de ], [ true, %bb.cy ], [ true, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %bb.dj ], [ true, %bb.dn ], [ true, %bb.bu ], [ true, %bb.dr ], [ true, %bb.dv ], [ true, %bb.dz ], [ true, %bb.ed ], [ true, %bb.eh ], [ false, %bb.el ], [ true, %bb.d ], [ true, %bb.k ], [ true, %bb.g ], [ true, %bb.y ]
  %.sroa.049.1.i = phi i1 [ true, %bb.j ], [ true, %bb.h ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit41.i.i ], [ true, %._crit_edge244.i ], [ true, %bb.cs ], [ true, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ true, %bb.by ], [ true, %bb.ai ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %._crit_edge.i ], [ true, %bb.de ], [ true, %bb.cy ], [ true, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %bb.dj ], [ true, %bb.dn ], [ true, %bb.bu ], [ true, %bb.dr ], [ true, %bb.dv ], [ true, %bb.dz ], [ true, %bb.ed ], [ false, %bb.eh ], [ true, %bb.el ], [ true, %bb.d ], [ true, %bb.k ], [ true, %bb.g ], [ true, %bb.y ]
  %.sroa.046.1.i = phi i1 [ true, %bb.j ], [ true, %bb.h ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit41.i.i ], [ true, %._crit_edge244.i ], [ true, %bb.cs ], [ true, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ true, %bb.by ], [ true, %bb.ai ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %._crit_edge.i ], [ true, %bb.de ], [ true, %bb.cy ], [ true, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %bb.dj ], [ true, %bb.dn ], [ true, %bb.bu ], [ true, %bb.dr ], [ true, %bb.dv ], [ true, %bb.dz ], [ false, %bb.ed ], [ true, %bb.eh ], [ true, %bb.el ], [ true, %bb.d ], [ true, %bb.k ], [ true, %bb.g ], [ true, %bb.y ]
  %.sroa.043.1.i = phi i1 [ true, %bb.j ], [ true, %bb.h ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit41.i.i ], [ true, %._crit_edge244.i ], [ true, %bb.cs ], [ true, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ true, %bb.by ], [ true, %bb.ai ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %._crit_edge.i ], [ true, %bb.de ], [ true, %bb.cy ], [ true, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %bb.dj ], [ true, %bb.dn ], [ true, %bb.bu ], [ true, %bb.dr ], [ true, %bb.dv ], [ false, %bb.dz ], [ true, %bb.ed ], [ true, %bb.eh ], [ true, %bb.el ], [ true, %bb.d ], [ true, %bb.k ], [ true, %bb.g ], [ true, %bb.y ]
  %.sroa.040.1.i = phi i1 [ true, %bb.j ], [ true, %bb.h ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit41.i.i ], [ true, %._crit_edge244.i ], [ true, %bb.cs ], [ true, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ true, %bb.by ], [ true, %bb.ai ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %._crit_edge.i ], [ true, %bb.de ], [ true, %bb.cy ], [ true, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %bb.dj ], [ false, %bb.dn ], [ true, %bb.bu ], [ true, %bb.dr ], [ true, %bb.dv ], [ true, %bb.dz ], [ true, %bb.ed ], [ true, %bb.eh ], [ true, %bb.el ], [ true, %bb.d ], [ true, %bb.k ], [ true, %bb.g ], [ true, %bb.y ]
  %.sroa.037.1.i = phi i1 [ true, %bb.j ], [ true, %bb.h ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit41.i.i ], [ true, %._crit_edge244.i ], [ true, %bb.cs ], [ true, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ true, %bb.by ], [ true, %bb.ai ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %._crit_edge.i ], [ true, %bb.de ], [ true, %bb.cy ], [ true, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsa5QsYiPB8Gl_5image.exit.i.i ], [ false, %bb.dj ], [ true, %bb.dn ], [ true, %bb.bu ], [ true, %bb.dr ], [ true, %bb.dv ], [ true, %bb.dz ], [ true, %bb.ed ], [ true, %bb.eh ], [ true, %bb.el ], [ true, %bb.d ], [ true, %bb.k ], [ true, %bb.g ], [ true, %bb.y ]
  %.sroa.034.1.i = phi i1 [ true, %bb.j ], [ true, %bb.h ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit41.i.i ], [ false, %._crit_edge244.i ], [ false, %bb.cs ], [ false, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ false, %bb.by ], [ true, %bb.ai ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %._crit_edge.i ], [ true, %bb.de ], [ true, %bb.cy ], [ true, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %bb.dj ], [ true, %bb.dn ], [ true, %bb.bu ], [ true, %bb.dr ], [ true, %bb.dv ], [ true, %bb.dz ], [ true, %bb.ed ], [ true, %bb.eh ], [ true, %bb.el ], [ true, %bb.d ], [ true, %bb.k ], [ true, %bb.g ], [ true, %bb.y ]
  %.sroa.031.1.i = phi i1 [ true, %bb.j ], [ true, %bb.h ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit41.i.i ], [ true, %._crit_edge244.i ], [ true, %bb.cs ], [ true, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ true, %bb.by ], [ true, %bb.ai ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit.i.i ], [ false, %._crit_edge.i ], [ false, %bb.de ], [ false, %bb.cy ], [ true, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %bb.dj ], [ true, %bb.dn ], [ true, %bb.bu ], [ true, %bb.dr ], [ true, %bb.dv ], [ true, %bb.dz ], [ true, %bb.ed ], [ true, %bb.eh ], [ true, %bb.el ], [ true, %bb.d ], [ true, %bb.k ], [ true, %bb.g ], [ true, %bb.y ]
  %.sroa.055.1.i = phi i1 [ true, %bb.j ], [ true, %bb.h ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit41.i.i ], [ true, %._crit_edge244.i ], [ true, %bb.cs ], [ true, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ true, %bb.by ], [ true, %bb.ai ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %._crit_edge.i ], [ true, %bb.de ], [ true, %bb.cy ], [ true, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %bb.dj ], [ true, %bb.dn ], [ true, %bb.bu ], [ false, %bb.dr ], [ true, %bb.dv ], [ true, %bb.dz ], [ true, %bb.ed ], [ true, %bb.eh ], [ true, %bb.el ], [ true, %bb.d ], [ true, %bb.k ], [ true, %bb.g ], [ true, %bb.y ]
  %.sroa.058.1.i = phi i1 [ true, %bb.j ], [ true, %bb.h ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit41.i.i ], [ true, %._crit_edge244.i ], [ true, %bb.cs ], [ true, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ true, %bb.by ], [ true, %bb.ai ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %._crit_edge.i ], [ true, %bb.de ], [ true, %bb.cy ], [ true, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsa5QsYiPB8Gl_5image.exit.i.i ], [ true, %bb.dj ], [ true, %bb.dn ], [ true, %bb.bu ], [ true, %bb.dr ], [ false, %bb.dv ], [ true, %bb.dz ], [ true, %bb.ed ], [ true, %bb.eh ], [ true, %bb.el ], [ true, %bb.d ], [ true, %bb.k ], [ true, %bb.g ], [ true, %bb.y ]
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %switch.lookup
  %i.ba = extractvalue { i64, i1 } %i.au, 0       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !noalias !1473
  store i8 0, ptr %i.aj, align 8, !noalias !1473
  %i.bc = icmp eq i64 %3, %i.ba
  br i1 %i.bc, label %bb.e, label %bb.d, !prof !1482

bb.d:                                             ; preds = %bb.c, %.thread.i
  invoke void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedINtNtB4_6result6ResultyNtNtNtB4_3num5error15TryFromIntErrorEBM_ECsa5QsYiPB8Gl_5image(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #33
          to label %bb.f unwind label %bb.b, !noalias !1468

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1473
  %i.bd = load i64, ptr %i.al, align 8, !range !777, !alias.scope !1471, !noalias !1478, !noundef !4
  %.not.i = icmp eq i64 %i.bd, 2
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !124

bb.f:                                             ; preds = %bb.bu, %bb.h, %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 464 ; 11 uses
  invoke void @_RNvMs6_NtCs53gkmrwjETj_4tiff7decoderINtB5_7DecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE20read_image_to_bufferCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(512) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %bb.i unwind label %bb.b, !noalias !1468

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #33
          to label %bb.f unwind label %bb.b, !noalias !1468

bb.i:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.bg = load i16, ptr %i.bf, align 8, !range !1483, !noalias !1473, !noundef !4
  %i.bh = icmp eq i16 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !1473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1473
  invoke void @_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffNtNtB8_5error10ImageError16from_tiff_decode(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.p)
          to label %bb.eq unwind label %bb.b, !noalias !1468

bb.k:                                             ; preds = %bb.i
  %.sroa.4185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4185.0.copyload.i = load i64, ptr %.sroa.4185.0..sroa_idx.i, align 8, !noalias !1473
  %.sroa.5186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.5186.0.copyload.i = load i64, ptr %.sroa.5186.0..sroa_idx.i, align 8, !noalias !1473 ; 3 uses
  %.sroa.6187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.6187.0.copyload.i = load i64, ptr %.sroa.6187.0..sroa_idx.i, align 8, !noalias !1473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1473
  invoke void @_RNvMNtCs53gkmrwjETj_4tiff7decoderNtB2_14DecodingResult9as_buffer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef 0)
          to label %bb.l unwind label %bb.b, !noalias !1468

bb.l:                                             ; preds = %bb.k
  %i.bi = load i64, ptr %i.ai, align 8, !range !173, !alias.scope !1484, !noalias !1473, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !1484, !noalias !1473, !noundef !4 ; 11 uses
  switch i64 %i.bi, label %default.unreachable [
    i64 0, label %bb.v
    i64 1, label %bb.m
    i64 2, label %bb.n
    i64 3, label %bb.o
    i64 4, label %bb.p
    i64 5, label %bb.q
    i64 6, label %bb.r
    i64 7, label %bb.v
    i64 8, label %bb.s
    i64 9, label %bb.t
    i64 10, label %bb.u
  ]

bb.m:                                             ; preds = %bb.l
  %i.bl = shl nuw nsw i64 %i.bk, 1
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.bm = shl nuw nsw i64 %i.bk, 2
  br label %bb.v

bb.o:                                             ; preds = %bb.l
  %i.bn = shl nuw nsw i64 %i.bk, 3
  br label %bb.v

bb.p:                                             ; preds = %bb.l
  %i.bo = shl nuw nsw i64 %i.bk, 1
  br label %bb.v

bb.q:                                             ; preds = %bb.l
  %i.bp = shl nuw nsw i64 %i.bk, 2
  br label %bb.v

bb.r:                                             ; preds = %bb.l
  %i.bq = shl nuw nsw i64 %i.bk, 3
  br label %bb.v

bb.s:                                             ; preds = %bb.l
  %i.br = shl nuw nsw i64 %i.bk, 1
  br label %bb.v

bb.t:                                             ; preds = %bb.l
  %i.bs = shl nuw nsw i64 %i.bk, 2
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  %i.bt = shl nuw nsw i64 %i.bk, 3
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.l
  %.sroa.12.0.i.i = phi i64 [ %i.bt, %bb.u ], [ %i.bl, %bb.m ], [ %i.bm, %bb.n ], [ %i.bn, %bb.o ], [ %i.bo, %bb.p ], [ %i.bp, %bb.q ], [ %i.bq, %bb.r ], [ %i.bk, %bb.l ], [ %i.br, %bb.s ], [ %i.bs, %bb.t ], [ %i.bk, %bb.l ]
  %i.bu = icmp ult i64 %.sroa.12.0.i.i, %.sroa.6187.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1473
  br i1 %i.bu, label %bb.ep, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = icmp ugt i64 %.sroa.4185.0.copyload.i, 1
  br i1 %i.bv, label %switch.lookup19, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = load i64, ptr %i.be, align 8, !range !173, !alias.scope !1471, !noalias !1478, !noundef !4
  switch i64 %i.bw, label %default.unreachable [
    i64 0, label %bb.bs
    i64 1, label %bb.bt
    i64 2, label %bb.di
    i64 3, label %bb.dm
    i64 4, label %bb.bu
    i64 5, label %bb.dq
    i64 6, label %bb.du
    i64 7, label %bb.dy
    i64 8, label %bb.ec
    i64 9, label %bb.eg
    i64 10, label %bb.ek
  ], !prof !1487

switch.lookup19:                                  ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.al, i64 504
  %i.by = load i8, ptr %i.as, align 2, !range !1464, !alias.scope !1493, !noalias !1494, !noundef !4
  %i.bz = zext nneg i8 %i.by to i64
  %switch.gep20 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffINtB5_11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder16read_image_boxedB9_.175, i64 %i.bz
  %switch.load21 = load i8, ptr %switch.gep20, align 1
  %.val.i100.i = load i8, ptr %i.bx, align 8, !range !1460, !alias.scope !1493, !noalias !1494, !noundef !4
  %i.ca = icmp eq i8 %.val.i100.i, %switch.load21
  br i1 %i.ca, label %bb.y, label %_RNvXsI_NtCsa5QsYiPB8Gl_5image5colorNtB5_17ExtendedColorTypeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i

bb.y:                                             ; preds = %switch.lookup19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1496
  invoke void @_RNvMNtCs53gkmrwjETj_4tiff7decoderNtB2_14DecodingResult9as_buffer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef 0)
          to label %.noexc101.i.a unwind label %bb.b, !noalias !1468

.noexc101.i.a:                                    ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1496
  %i.cb = load i64, ptr %i.l, align 8, !range !173, !alias.scope !1497, !noalias !1496, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !1497, !noalias !1496, !noundef !4 ; 11 uses
  switch i64 %i.cb, label %default.unreachable [
    i64 0, label %_RNvMs_NtCs53gkmrwjETj_4tiff7decoderNtB4_14DecodingBuffer8as_bytes.exit.i.i
    i64 1, label %bb.z
    i64 2, label %bb.aa
    i64 3, label %bb.ab
    i64 4, label %bb.ac
    i64 5, label %bb.ad
    i64 6, label %bb.ae
    i64 7, label %_RNvMs_NtCs53gkmrwjETj_4tiff7decoderNtB4_14DecodingBuffer8as_bytes.exit.i.i
    i64 8, label %bb.af
    i64 9, label %bb.ag
    i64 10, label %bb.ah
  ]

bb.z:                                             ; preds = %.noexc101.i.a
  %i.ce = shl nuw nsw i64 %i.cd, 1
  br label %_RNvMs_NtCs53gkmrwjETj_4tiff7decoderNtB4_14DecodingBuffer8as_bytes.exit.i.i

bb.aa:                                            ; preds = %.noexc101.i.a
  %i.cf = shl nuw nsw i64 %i.cd, 2
  br label %_RNvMs_NtCs53gkmrwjETj_4tiff7decoderNtB4_14DecodingBuffer8as_bytes.exit.i.i

bb.ab:                                            ; preds = %.noexc101.i.a
  %i.cg = shl nuw nsw i64 %i.cd, 3
  br label %_RNvMs_NtCs53gkmrwjETj_4tiff7decoderNtB4_14DecodingBuffer8as_bytes.exit.i.i

bb.ac:                                            ; preds = %.noexc101.i.a
  %i.ch = shl nuw nsw i64 %i.cd, 1
  br label %_RNvMs_NtCs53gkmrwjETj_4tiff7decoderNtB4_14DecodingBuffer8as_bytes.exit.i.i

bb.ad:                                            ; preds = %.noexc101.i.a
  %i.ci = shl nuw nsw i64 %i.cd, 2
  br label %_RNvMs_NtCs53gkmrwjETj_4tiff7decoderNtB4_14DecodingBuffer8as_bytes.exit.i.i

bb.ae:                                            ; preds = %.noexc101.i.a
  %i.cj = shl nuw nsw i64 %i.cd, 3
  br label %_RNvMs_NtCs53gkmrwjETj_4tiff7decoderNtB4_14DecodingBuffer8as_bytes.exit.i.i
end_hunk_3
begin_hunk_4_@_RNvXs1_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffINtB5_11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder16read_image_boxedB9_:switch.lookup
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mg)
          to label %bb.hi unwind label %bb.fi, !noalias !1468

bb.fi:                                            ; preds = %bb.fh
  %i.mi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !1468
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.fg
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mg)
          to label %bb.hh unwind label %bb.hg

bb.fj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit127.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.al, i64 472 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecdENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecdEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.fk, !noalias !1468

bb.fk:                                            ; preds = %bb.fj
  %i.mk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecdENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mj)
          to label %bb.hi unwind label %bb.fl, !noalias !1468

bb.fl:                                            ; preds = %bb.fk
  %i.ml = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !1468
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecdEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.fj
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecdENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mj)
          to label %bb.hh unwind label %bb.hg

bb.fm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit127.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.al, i64 472 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecaENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mm)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecaEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.fn, !noalias !1468

bb.fn:                                            ; preds = %bb.fm
  %i.mn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecaENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mm)
          to label %bb.hi unwind label %bb.fo, !noalias !1468

bb.fo:                                            ; preds = %bb.fn
  %i.mo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !1468
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecaEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.fm
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecaENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mm)
          to label %bb.hh unwind label %bb.hg

bb.fp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit127.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.al, i64 472 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mp)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecsEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.fq, !noalias !1468

bb.fq:                                            ; preds = %bb.fp
  %i.mq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mp)
          to label %bb.hi unwind label %bb.fr, !noalias !1468

bb.fr:                                            ; preds = %bb.fq
  %i.mr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !1468
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecsEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.fp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mp)
          to label %bb.hh unwind label %bb.hg

bb.fs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit127.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.al, i64 472 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VeclENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ms)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VeclEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.ft, !noalias !1468

bb.ft:                                            ; preds = %bb.fs
  %i.mt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVeclENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ms)
          to label %bb.hi unwind label %bb.fu, !noalias !1468

bb.fu:                                            ; preds = %bb.ft
  %i.mu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !1468
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VeclEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.fs
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVeclENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ms)
          to label %bb.hh unwind label %bb.hg

bb.fv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit127.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.al, i64 472 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecxENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mv)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecxEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.fw, !noalias !1468

bb.fw:                                            ; preds = %bb.fv
  %i.mw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mv)
          to label %bb.hi unwind label %bb.fx, !noalias !1468

bb.fx:                                            ; preds = %bb.fw
  %i.mx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !1468
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecxEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.fv
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mv)
          to label %bb.hh unwind label %bb.hg

bb.fy:                                            ; preds = %bb.er
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff7decoder14DecodingResultECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.be) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.fz:                                            ; preds = %bb.er
  br i1 %.sroa.034.2.i, label %bb.gb, label %bb.hi

bb.ga:                                            ; preds = %bb.er
  br i1 %.sroa.031.2.i, label %bb.gc, label %bb.hi

bb.gb:                                            ; preds = %bb.fz
  %i.my = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.my) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.gc:                                            ; preds = %bb.ga
  %i.mz = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.mz) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.gd:                                            ; preds = %bb.er
  %i.na = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.na) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.ge:                                            ; preds = %bb.er
  %i.nb = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nb) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.gf:                                            ; preds = %bb.er
  %i.nc = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nc) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.gg:                                            ; preds = %bb.er
  %i.nd = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecdEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nd) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.gh:                                            ; preds = %bb.er
  %i.ne = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecaEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ne) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.gi:                                            ; preds = %bb.er
  %i.nf = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecsEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nf) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.gj:                                            ; preds = %bb.er
  %i.ng = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VeclEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ng) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.gk:                                            ; preds = %bb.er
  %i.nh = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecxEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nh) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.a, %.body.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.al, i64 464 ; 2 uses
  %i.nj = load i64, ptr %i.ni, align 8, !range !173, !alias.scope !1471, !noalias !1478, !noundef !4
  switch i64 %i.nj, label %bb.gl [
    i64 0, label %bb.gm
    i64 1, label %bb.gn
    i64 2, label %bb.go
    i64 3, label %bb.gp
    i64 5, label %bb.gq
    i64 6, label %bb.gr
    i64 7, label %bb.gs
    i64 8, label %bb.gt
    i64 9, label %bb.gu
    i64 10, label %bb.gv
  ]

bb.gl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff7decoder14DecodingResultECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ni) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.gm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i
  br i1 %.sroa.034.0.i, label %bb.gw, label %bb.hi

bb.gn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i
  br i1 %.sroa.031.0.i, label %bb.gx, label %bb.hi

bb.go:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i
  br i1 %.sroa.037.0.i, label %bb.gy, label %bb.hi

bb.gp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i
  br i1 %.sroa.040.0.i, label %bb.gz, label %bb.hi

bb.gq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i
  br i1 %.sroa.055.0.i, label %bb.ha, label %bb.hi

bb.gr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i
  br i1 %.sroa.058.0.i, label %bb.hb, label %bb.hi

bb.gs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i
  br i1 %.sroa.043.0.i, label %bb.hc, label %bb.hi

bb.gt:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i
  br i1 %.sroa.046.0.i, label %bb.hd, label %bb.hi

bb.gu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i
  br i1 %.sroa.049.0.i, label %bb.he, label %bb.hi

bb.gv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i
  br i1 %.sroa.052.0.i, label %bb.hf, label %bb.hi

bb.gw:                                            ; preds = %bb.gm
  %i.nk = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nk) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.gx:                                            ; preds = %bb.gn
  %i.nl = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nl) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.gy:                                            ; preds = %bb.go
  %i.nm = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nm) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.gz:                                            ; preds = %bb.gp
  %i.nn = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nn) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.ha:                                            ; preds = %bb.gq
  %i.no = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.no) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.hb:                                            ; preds = %bb.gr
  %i.np = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecdEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.np) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.hc:                                            ; preds = %bb.gs
  %i.nq = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecaEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nq) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.hd:                                            ; preds = %bb.gt
  %i.nr = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecsEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nr) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.he:                                            ; preds = %bb.gu
  %i.ns = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VeclEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ns) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.hf:                                            ; preds = %bb.gv
  %i.nt = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecxEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nt) #29
          to label %bb.hi unwind label %bb.cc, !noalias !1468

bb.hg:                                            ; preds = %.invoke, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecxEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VeclEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecsEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecaEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecdEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit141.i
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

bb.hh:                                            ; preds = %.invoke, %bb.et, %bb.es, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit115.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit141.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecdEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecaEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecsEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VeclEECsa5QsYiPB8Gl_5image.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecxEECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 512, i64 noundef 8) #23
  ret void

bb.hi:                                            ; preds = %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fw, %bb.ft, %bb.fq, %bb.fn, %bb.fk, %bb.fh, %bb.fe, %bb.fb, %bb.ey, %bb.ev, %bb.eo, %bb.en
  %eh.lpad-body = phi { ptr, i32 } [ %i.nu, %bb.hg ], [ %i.mt, %bb.ft ], [ %.pn80.i, %bb.gs ], [ %i.lv, %bb.ev ], [ %i.ly, %bb.ey ], [ %i.mb, %bb.fb ], [ %i.me, %bb.fe ], [ %i.mh, %bb.fh ], [ %i.mk, %bb.fk ], [ %i.mn, %bb.fn ], [ %i.mq, %bb.fq ], [ %i.lr, %bb.fy ], [ %i.lr, %bb.gb ], [ %i.lr, %bb.fz ], [ %i.lr, %bb.gc ], [ %i.lr, %bb.ga ], [ %i.lr, %bb.gd ], [ %i.lk, %bb.eo ], [ %i.lr, %bb.ge ], [ %.pn80.i, %bb.gv ], [ %i.lr, %bb.gf ], [ %.pn80.i, %bb.hf ], [ %i.lr, %bb.gg ], [ %.pn80.i, %bb.gu ], [ %i.lr, %bb.gh ], [ %.pn80.i, %bb.he ], [ %i.lr, %bb.gi ], [ %.pn80.i, %bb.gt ], [ %i.lr, %bb.gj ], [ %.pn80.i, %bb.hd ], [ %i.lr, %bb.gk ], [ %i.lk, %bb.en ], [ %.pn80.i, %bb.gl ], [ %.pn80.i, %bb.gw ], [ %.pn80.i, %bb.gm ], [ %.pn80.i, %bb.gx ], [ %.pn80.i, %bb.gn ], [ %.pn80.i, %bb.gy ], [ %.pn80.i, %bb.go ], [ %.pn80.i, %bb.gz ], [ %.pn80.i, %bb.gp ], [ %.pn80.i, %bb.ha ], [ %.pn80.i, %bb.gq ], [ %.pn80.i, %bb.hb ], [ %.pn80.i, %bb.gr ], [ %.pn80.i, %bb.hc ], [ %i.mw, %bb.fw ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 512, i64 noundef 8) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtB5_13PnmHeaderLineNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !174, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtB5_15ErrorDataSourceNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs2_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtB5_15ErrorDataSourceNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.185, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvYINtNtNtBb_2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader13read_next_u32s_0INtB7_5FnMutTRTbINtNtBb_6result6ResulthNtNtBY_5error5ErrorEEEE8call_mutB1w_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %.val = load i8, ptr %1, align 8, !range !6, !noundef !4
  %i.a = trunc nuw i8 %.val to i1
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRAhj2_NtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtCsj6eKBz9Db1c_4core5arrayAhj2_NtNtB7_3fmt5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRAhj3_NtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtCsj6eKBz9Db1c_4core5arrayAhj3_NtNtB7_3fmt5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRAhj4_NtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtCsj6eKBz9Db1c_4core5arrayAhj4_NtNtB7_3fmt5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRDNtB6_5DebugEL_Bx_3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !129, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #31
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtNtB8_3num7nonzero7NonZeromENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !1549, !noundef !4
  %.val = load i32, ptr %i.b, align 4, !range !1550, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1551
  store i32 %.val, ptr %i.a, align 4, !noalias !1551
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !1554, !noalias !1557, !noundef !4 ; 2 uses
  %i.e = and i32 %i.d, 33554432
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 67108864
  %.not1.i.i = icmp eq i32 %i.f, 0
  br i1 %.not1.i.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_RNvXsu_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXss_NtNtCsj6eKBz9Db1c_4core3num7nonzeroINtB5_7NonZeromENtNtB9_3fmt5Debug3fmtCsa5QsYiPB8Gl_5image.exit

bb.d:                                             ; preds = %bb.b
  %i.h = call noundef zeroext i1 @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXss_NtNtCsj6eKBz9Db1c_4core3num7nonzeroINtB5_7NonZeromENtNtB9_3fmt5Debug3fmtCsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_RNvXsw_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXss_NtNtCsj6eKBz9Db1c_4core3num7nonzeroINtB5_7NonZeromENtNtB9_3fmt5Debug3fmtCsa5QsYiPB8Gl_5image.exit

_RNvXss_NtNtCsj6eKBz9Db1c_4core3num7nonzeroINtB5_7NonZeromENtNtB9_3fmt5Debug3fmtCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i.i = phi i1 [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1551
  ret i1 %.sroa.0.0.in.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtCs53gkmrwjETj_4tiff9ColorTypeNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !1559, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs3_Cs53gkmrwjETj_4tiffNtB5_9ColorTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #31
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc11collections19TryReserveErrorKindNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !129, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %i.c = load i64, ptr %i.b, align 8, !range !538, !alias.scope !1560, !noalias !1563, !noundef !4
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1565
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.a, align 8, !noalias !1565
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @188, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @189)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1565
  br label %_RNvXsc_NtCs4wP2HXfJTCR_5alloc11collectionsNtB5_19TryReserveErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 16), !noalias !1560
  br label %_RNvXsc_NtCs4wP2HXfJTCR_5alloc11collectionsNtB5_19TryReserveErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

_RNvXsc_NtCs4wP2HXfJTCR_5alloc11collectionsNtB5_19TryReserveErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}
end_hunk_4
