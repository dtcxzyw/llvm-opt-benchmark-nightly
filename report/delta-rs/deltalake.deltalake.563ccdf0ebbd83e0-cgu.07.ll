inline.NumInlined: 7758
inline.NumDeleted: 2965
begin_hunk_0_@_RINvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB6_18BatchSpanProcessor20get_spans_and_exportNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterECs7p2uQeJxui2_9deltalake:bb.a
          to label %.noexc9.i.i unwind label %bb.bq, !noalias !30 ; 0 uses

_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.ap, %.lr.ph.i.i.i1.i
  %i.fb = add nuw nsw i64 %.sroa.02.012.i.i.i.i, 1
  %i.fc = icmp eq ptr %i.ej, %i.eh
  br i1 %i.fc, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i.i, label %.lr.ph.i.i.i1.i

.noexc9.i.i:                                      ; preds = %bb.at, %bb.as
  %i.fd = icmp samesign ult i64 %.sroa.02.012.i.i.i.i, %i.eb
  call void @llvm.assume(i1 %i.fd)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dz, i64 noundef %.sroa.02.012.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i unwind label %bb.bq, !noalias !30

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i: ; preds = %.noexc9.i.i
  %.pr.i.i = load ptr, ptr %i.c, align 8, !noalias !30
  %.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i.i, label %bb.au

bb.au:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !30
  %i.fe = load ptr, ptr %i.m, align 8, !noalias !30, !noundef !3 ; 11 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  br i1 %i.dy, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fg = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !30
  %i.fh = and i64 %i.fg, 9223372036854775807
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.aw, !prof !46

bb.aw:                                            ; preds = %bb.av
  %i.fj = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #36
          to label %.noexc11.i.i unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !30

.noexc11.i.i:                                     ; preds = %bb.aw
  br i1 %i.fj, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %.noexc11.i.i
  store atomic i8 1, ptr %i.ff monotonic, align 4, !noalias !30
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.ax, %.noexc11.i.i, %bb.av, %bb.au
  %i.fk = atomicrmw xchg ptr %i.dw, i32 0 release, align 4, !noalias !30
  %i.fl = icmp eq i32 %i.fk, 2
  br i1 %i.fl, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit.i.i, !prof !37

bb.ay:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !30

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i.i: ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dw, i64 104
  %i.fn = load i8, ptr %i.fm, align 8, !range !40, !noalias !30, !noundef !3
  store i8 %i.fn, ptr %.sroa.433.0..sroa_idx.i.i, align 8, !alias.scope !30
  store i64 -9223372036854775808, ptr %i.g, align 16, !alias.scope !30
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  br i1 %i.dy, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i, label %bb.bm

.loopexit.i.i:                                    ; preds = %bb.bc
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit:                  ; preds = %bb.aw, %bb.ay
  %lpad.loopexit32 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit.split-lp:         ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.i.i.loopexit, %.loopexit.split-lp.i.i.loopexit.split-lp, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit32, %.loopexit.split-lp.i.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.i.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.fp = load ptr, ptr %i.b, align 8, !alias.scope !72, !noalias !30, !nonnull !3, !noundef !3
  %i.fq = atomicrmw sub ptr %i.fp, i64 1 release, align 8, !noalias !73
  %i.fr = icmp eq i64 %i.fq, 1
  br i1 %i.fr, label %bb.az, label %.body

bb.az:                                            ; preds = %.loopexit.split-lp.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #36
          to label %.body unwind label %bb.bl, !noalias !30

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.ay, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.fs = icmp eq ptr %i.fe, null
  br i1 %i.fs, label %bb.bh, label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 353
  %i.fu = load i8, ptr %i.ft, align 1, !range !40, !noalias !74, !noundef !3
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fe, i64 352 ; 2 uses
  %i.fx = load atomic i8, ptr %i.fw acquire, align 1, !noalias !74
  %i.fy = icmp eq i8 %i.fx, 0
  br i1 %i.fy, label %.lr.ph.i.i14.i.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i.i.i

.lr.ph.i.i14.i.i:                                 ; preds = %bb.bb, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i ], [ 0, %bb.bb ] ; 4 uses
  %.sroa.0.02.i.i.i4.i = phi i32 [ %i.ge, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i ], [ 0, %bb.bb ] ; 4 uses
  %i.fz = shl i32 %.sroa.0.02.i.i.i4.i, 1
  %i.ga = or i32 %i.fz, 1
  %i.gb = icmp ult i32 %.sroa.0.02.i.i.i4.i, 7
  br i1 %i.gb, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i14.i.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i unwind label %.loopexit.i.i, !noalias !30

bb.bd:                                            ; preds = %.lr.ph.i.i14.i.i
  %.not.i.i.i15.i.i = icmp eq i32 %.sroa.0.02.i.i.i4.i, 0
  br i1 %.not.i.i.i15.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i, label %.lr.ph.i.i.i.i6.i.preheader

.lr.ph.i.i.i.i6.i.preheader:                      ; preds = %bb.bd
  %i.gc = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.gd = icmp ult i32 %i.gc, 7
  br i1 %i.gd, label %.lr.ph.i.i.i.i6.i.epil.preheader, label %.lr.ph.i.i.i.i6.i.preheader.new

.lr.ph.i.i.i.i6.i.preheader.new:                  ; preds = %.lr.ph.i.i.i.i6.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i.i6.i

.lr.ph.i.i.i.i6.i:                                ; preds = %.lr.ph.i.i.i.i6.i, %.lr.ph.i.i.i.i6.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i6.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i6.i ]
  call void @llvm.x86.sse2.pause(), !noalias !74
  call void @llvm.x86.sse2.pause(), !noalias !74
  call void @llvm.x86.sse2.pause(), !noalias !74
  call void @llvm.x86.sse2.pause(), !noalias !74
  call void @llvm.x86.sse2.pause(), !noalias !74
  call void @llvm.x86.sse2.pause(), !noalias !74
  call void @llvm.x86.sse2.pause(), !noalias !74
  call void @llvm.x86.sse2.pause(), !noalias !74
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i6.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i6.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i, label %.lr.ph.i.i.i.i6.i.epil.preheader

.lr.ph.i.i.i.i6.i.epil.preheader:                 ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i6.i.preheader
  %lcmp.mod155 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.i.i6.i.epil

.lr.ph.i.i.i.i6.i.epil:                           ; preds = %.lr.ph.i.i.i.i6.i.epil, %.lr.ph.i.i.i.i6.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i6.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i6.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !74
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i, label %.lr.ph.i.i.i.i6.i.epil, !llvm.loop !77

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i6.i.epil, %bb.bd, %bb.bc
  %i.ge = add i32 %.sroa.0.02.i.i.i4.i, 1
  %i.gf = load atomic i8, ptr %i.fw acquire, align 1, !noalias !74
  %i.gg = icmp eq i8 %i.gf, 0
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.ga
  br i1 %i.gg, label %.lr.ph.i.i14.i.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i.i.i

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i, %bb.bb
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %i.fe, align 16, !noalias !74 ; 2 uses
  store i64 -9223372036854775808, ptr %i.fe, align 16, !noalias !74
  %.not.i.i3.i = icmp eq i64 %.sroa.04.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not.i.i3.i, label %.invoke.i.i, label %bb.bf, !prof !37

bb.be:                                            ; preds = %bb.ba
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.fe, align 16, !noalias !74 ; 2 uses
  store i64 -9223372036854775808, ptr %i.fe, align 16, !noalias !74
  %.not11.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not11.i.i.i, label %.invoke.i.i, label %bb.bg, !prof !37

.invoke.i.i:                                      ; preds = %bb.be, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.gh = phi ptr [ @271, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ @272, %bb.be ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gh) #37
          to label %.cont.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !30

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.bf:                                            ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.731.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.56.0..sroa_idx.i.i.i, i64 344, i1 false), !noalias !30
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fe, i64 noundef 368, i64 noundef 16) #28, !noalias !74
  br label %bb.bi

bb.bg:                                            ; preds = %bb.be
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.731.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.5.0..sroa_idx.i.i.i, i64 344, i1 false), !noalias !30
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fe, i64 352
  store atomic i8 1, ptr %i.gi release, align 16, !noalias !74
  br label %bb.bi

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit.i.i
  store i8 1, ptr %.sroa.433.0..sroa_idx.i.i, align 8, !alias.scope !30
  store i64 -9223372036854775808, ptr %i.g, align 16, !alias.scope !30
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %.sroa.030.0.ph.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.bg ], [ %.sroa.04.0.copyload.i.i.i, %bb.bf ] ; 2 uses
  store i64 %.sroa.030.0.ph.i.i, ptr %i.g, align 16, !alias.scope !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.433.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.731.i.i, i64 344, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pr77 = phi i64 [ %.sroa.030.0.ph.i.i, %bb.bi ], [ -9223372036854775808, %bb.bh ]
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.gj = load ptr, ptr %i.b, align 8, !alias.scope !90, !noalias !30, !nonnull !3, !noundef !3
  %i.gk = atomicrmw sub ptr %i.gj, i64 1 release, align 8, !noalias !91
  %i.gl = icmp eq i64 %i.gk, 1
  br i1 %i.gl, label %bb.bk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20.i.i

bb.bk:                                            ; preds = %bb.bj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20.i.i: ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i

bb.bl:                                            ; preds = %bb.bq, %bb.az
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !30
  unreachable

bb.bm:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i.i
  %i.gn = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !30
  %i.go = and i64 %i.gn, 9223372036854775807
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i, label %bb.bn, !prof !46

bb.bn:                                            ; preds = %bb.bm
  %i.gq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #36
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.bn
  br i1 %i.gq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i, label %bb.bo

bb.bo:                                            ; preds = %.noexc13
  store atomic i8 1, ptr %i.fo monotonic, align 4, !noalias !30
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i: ; preds = %bb.bo, %.noexc13, %bb.bm, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i.i
  %i.gr = atomicrmw xchg ptr %i.dw, i32 0 release, align 4, !noalias !30
  %i.gs = icmp eq i32 %i.gr, 2
  br i1 %i.gs, label %bb.bp, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i, !prof !37

bb.bp:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dw)
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bq:                                            ; preds = %.noexc9.i.i, %bb.at, %.lr.ph.i.preheader.i.i.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.dw, i8 %i.dx) #38
          to label %.body unwind label %bb.bl, !noalias !30

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bp, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20.i.i
  %.pr76 = phi i64 [ -9223372036854775808, %bb.bp ], [ -9223372036854775808, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i ], [ %.pr77, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.731.i.i)
  br label %_RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.bu, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.am, %bb.bq, %bb.az, %.loopexit.split-lp.i.i, %.body17
  %.pn = phi { ptr, i32 } [ %eh.lpad-body18, %.body17 ], [ %i.dm, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %lpad.phi.i.i, %bb.az ], [ %lpad.thr_comm.i.i, %bb.bq ], [ %i.dm, %bb.am ], [ %i.ha, %bb.bu ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit27, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit29, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp30, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h) #38
          to label %bb.ce unwind label %bb.cd

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.t
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.f, %bb.n
  %lpad.loopexit27 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bp, %bb.bn, %bb.bk, %bb.ag, %bb.c
  %lpad.loopexit29 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.br
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i, %._RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exitthread-pre-split_crit_edge, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i
  %i.gt = phi i64 [ %storemerge.i.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i ], [ %.pr.pre, %._RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exitthread-pre-split_crit_edge ], [ %.pr76, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i ]
  %i.gu = icmp eq i64 %i.gt, -9223372036854775808
  %.pre = load i64, ptr %i.p, align 8             ; 5 uses
  br i1 %i.gu, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bw, %_RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit
  %i.gv = phi i64 [ %i.s, %bb.bw ], [ %.pre, %_RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.gw = icmp ult i64 %i.gv, 26202761468337432
  call void @llvm.assume(i1 %i.gw)
  %i.gx = add i64 %i.gv, %.sroa.0.053             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB6_18BatchSpanProcessor17export_batch_syncNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %_RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.f, ptr noundef nonnull align 16 dereferenceable(352) %i.g, i64 352, i1 false)
  %i.gy = load i64, ptr %3, align 8, !range !92, !alias.scope !93, !noalias !96, !noundef !3
  %i.gz = icmp eq i64 %.pre, %i.gy
  br i1 %i.gz, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.bw unwind label %bb.bu, !noalias !96

bb.bu:                                            ; preds = %bb.bt
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(352) %i.f) #38
          to label %.body unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.bw:                                            ; preds = %bb.bt, %bb.bs
  %i.hc = load ptr, ptr %i.q, align 8, !alias.scope !93, !noalias !96, !nonnull !3, !noundef !3
  %i.hd = getelementptr inbounds nuw [352 x i8], ptr %i.hc, i64 %.pre
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.hd, ptr noundef nonnull align 16 dereferenceable(352) %i.g, i64 352, i1 false)
  %i.he = add nsw i64 %.pre, 1                    ; 2 uses
  store i64 %i.he, ptr %i.p, align 8, !alias.scope !93, !noalias !96
  %i.hf = icmp slt i64 %.pre, 26202761468337431
  call void @llvm.assume(i1 %i.hf)
  %i.hg = icmp eq i64 %i.he, %i.s
  br i1 %i.hg, label %bb.br, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.b

bb.by:                                            ; preds = %bb.br
  %i.hh = load i64, ptr %i.h, align 8, !range !98, !alias.scope !99, !noundef !3
  %i.hi = icmp slt i64 %i.hh, -9223372036854775805
  br i1 %i.hi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body17 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.bz
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %bb.ca, %bb.cc
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.hl, %bb.cc ], [ %i.hj, %bb.ca ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.by, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.hm = atomicrmw sub ptr %5, i64 %i.gv monotonic, align 8 ; 0 uses
  %i.hn = icmp ult i64 %i.gx, %i.i
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable16cleanup_metadata0s_0EB1n_:bb.a
bb.fq:                                            ; preds = %bb.fo
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.sp
  %i.ta = load i8, ptr %i.sz, align 1, !alias.scope !2761, !noalias !2764, !noundef !3
  %i.tb = icmp sgt i8 %i.ta, -65
  br i1 %i.tb, label %bb.fr, label %bb.gf

bb.fr:                                            ; preds = %bb.fq, %bb.fp, %bb.fl
  %i.tc = sub i64 %i.sn, %i.sk                    ; 5 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.so ; 3 uses
  switch i64 %i.tc, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.fs
  ]

bb.fs:                                            ; preds = %bb.fr
  %i.te = load i8, ptr %i.td, align 1, !alias.scope !2767, !noalias !2770, !noundef !3 ; 2 uses
  switch i8 %i.te, label %bb.ft [
    i8 43, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
    i8 45, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fr
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.td, align 1, !alias.scope !2767, !noalias !2770
  br label %bb.ft

bb.ft:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fs
  %i.tf = phi i8 [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.te, %bb.fs ]
  switch i8 %i.tf, label %bb.ga [
    i8 43, label %bb.fu
    i8 45, label %bb.fv
  ]

bb.fu:                                            ; preds = %bb.ft
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.sk
  %i.th = add nsw i64 %i.tc, -1
  br label %bb.ga

bb.fv:                                            ; preds = %bb.ft
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.sk ; 2 uses
  %i.tj = add nsw i64 %i.tc, -1                   ; 3 uses
  %i.tk = icmp samesign ult i64 %i.tc, 17
  br i1 %i.tk, label %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fv
  %.not103137.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.tj, 0
  br i1 %.not103137.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.fv, %bb.fy
  %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.tl, %bb.fy ], [ %i.ti, %bb.fv ] ; 2 uses
  %.sroa.26.1135.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tm, %bb.fy ], [ %i.tj, %bb.fv ]
  %.sroa.084.0134.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tx, %bb.fy ], [ 0, %bb.fv ]
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.tm = add nsw i64 %.sroa.26.1135.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.tn = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 10) ; 2 uses
  %i.to = extractvalue { i64, i1 } %i.tn, 0
  %i.tp = extractvalue { i64, i1 } %i.tn, 1
  br i1 %i.tp, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fw, !prof !37

bb.fw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.tq = load i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !2767, !noalias !2770, !noundef !3
  %i.tr = zext i8 %i.tq to i32
  %i.ts = add nsw i32 %i.tr, -48                  ; 2 uses
  %i.tt = icmp ult i32 %i.ts, 10
  br i1 %i.tt, label %bb.fx, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fx:                                            ; preds = %bb.fw
  %i.tu = zext nneg i32 %i.ts to i64
  %i.tv = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.to, i64 %i.tu) ; 2 uses
  %i.tw = extractvalue { i64, i1 } %i.tv, 1
  br i1 %i.tw, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fy, !prof !37

bb.fy:                                            ; preds = %bb.fx
  %i.tx = extractvalue { i64, i1 } %i.tv, 0       ; 2 uses
  %.not102.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.tm, 0
  br i1 %.not102.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fz
  %.sroa.0.2140.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ue, %bb.fz ], [ %i.ti, %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.26.2139.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ud, %bb.fz ], [ %i.tj, %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.084.2138.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ug, %bb.fz ], [ 0, %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ty = load i8, ptr %.sroa.0.2140.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !2767, !noalias !2770, !noundef !3
  %i.tz = zext i8 %i.ty to i32
  %i.ua = add nsw i32 %i.tz, -48                  ; 2 uses
  %i.ub = icmp ugt i32 %i.ua, 9
  br i1 %i.ub, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fz

bb.fz:                                            ; preds = %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uc = mul i64 %.sroa.084.2138.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  %i.ud = add nsw i64 %.sroa.26.2139.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.uf = zext nneg i32 %i.ua to i64
  %i.ug = sub i64 %i.uc, %i.uf                    ; 2 uses
  %.not103.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ud, 0
  br i1 %.not103.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ga:                                            ; preds = %bb.fu, %bb.ft
  %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.th, %bb.fu ], [ %i.tc, %bb.ft ] ; 4 uses
  %.sroa.0.0.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.tg, %bb.fu ], [ %i.td, %bb.ft ] ; 2 uses
  %i.uh = icmp samesign ult i64 %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16
  br i1 %i.uh, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.ga
  %.not105146.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not105146.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ga, %bb.gd
  %.sroa.0.3145.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ui, %bb.gd ], [ %.sroa.0.0.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ga ] ; 2 uses
  %.sroa.26.3144.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.uj, %bb.gd ], [ %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ga ]
  %.sroa.084.3143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.uu, %bb.gd ], [ 0, %bb.ga ]
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.uj = add nsw i64 %.sroa.26.3144.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.uk = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 10) ; 2 uses
  %i.ul = extractvalue { i64, i1 } %i.uk, 0
  %i.um = extractvalue { i64, i1 } %i.uk, 1
  br i1 %i.um, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gb, !prof !37

bb.gb:                                            ; preds = %.preheader111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.un = load i8, ptr %.sroa.0.3145.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !2767, !noalias !2770, !noundef !3
  %i.uo = zext i8 %i.un to i32
  %i.up = add nsw i32 %i.uo, -48                  ; 2 uses
  %i.uq = icmp ult i32 %i.up, 10
  br i1 %i.uq, label %bb.gc, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gc:                                            ; preds = %bb.gb
  %i.ur = zext nneg i32 %i.up to i64
  %i.us = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ul, i64 %i.ur) ; 2 uses
  %i.ut = extractvalue { i64, i1 } %i.us, 1
  br i1 %i.ut, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gd, !prof !37

bb.gd:                                            ; preds = %bb.gc
  %i.uu = extractvalue { i64, i1 } %i.us, 0       ; 2 uses
  %.not104.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.uj, 0
  br i1 %.not104.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge
  %.sroa.0.4149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.vb, %bb.ge ], [ %.sroa.0.0.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.26.4148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.va, %bb.ge ], [ %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.084.4147.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.vd, %bb.ge ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.uv = load i8, ptr %.sroa.0.4149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !2767, !noalias !2770, !noundef !3
  %i.uw = zext i8 %i.uv to i32
  %i.ux = add nsw i32 %i.uw, -48                  ; 2 uses
  %i.uy = icmp ugt i32 %i.ux, 9
  br i1 %i.uy, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ge

bb.ge:                                            ; preds = %.lr.ph150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uz = mul i64 %.sroa.084.4147.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  %i.va = add nsw i64 %.sroa.26.4148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.vc = zext nneg i32 %i.ux to i64
  %i.vd = add i64 %i.uz, %i.vc                    ; 2 uses
  %.not105.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.va, 0
  br i1 %.not105.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gf:                                            ; preds = %bb.fq, %bb.fp, %bb.fn, %bb.fm, %.noexc236.i.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.sr, i64 noundef %i.sq, i64 noundef %i.so, i64 noundef %i.sp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #37
          to label %.noexc237.i.i.i.i unwind label %.loopexit.split-lp432.i.i.i.i.loopexit.split-lp, !noalias !2599

.noexc237.i.i.i.i:                                ; preds = %bb.gf
  unreachable

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.fy, %bb.fz, %bb.gd, %bb.ge, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ve = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.vd, %bb.ge ], [ %i.uu, %bb.gd ], [ %i.ug, %bb.fz ], [ 0, %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.tx, %bb.fy ]
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ra, i64 80
  %i.vg = load i32, ptr %i.vf, align 8, !range !2591, !alias.scope !2742, !noalias !2743, !noundef !3 ; 2 uses
  %i.vh = ashr i32 %i.vg, 13                      ; 3 uses
  %i.vi = add nsw i32 %i.vh, -1                   ; 2 uses
  %i.vj = icmp slt i32 %i.vh, 1
  br i1 %i.vj, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vk = sub nsw i32 1, %i.vh
  %i.vl = udiv i32 %i.vk, 400
  %i.vm = add nuw nsw i32 %i.vl, 1                ; 2 uses
  %i.vn = mul nuw nsw i32 %i.vm, 400
  %i.vo = add nsw i32 %i.vn, %i.vi
  %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i32 %i.vm, -146097
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gg ], [ 0, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.vo, %bb.gg ], [ %i.vi, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.vp = sdiv i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100 ; 2 uses
  %i.vq = mul nsw i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1461
  %i.vr = ashr i32 %i.vq, 2
  %i.vs = ashr i32 %i.vp, 2
  %i.vt = lshr i32 %i.vg, 4
  %i.vu = and i32 %i.vt, 511
  %i.vv = getelementptr inbounds nuw i8, ptr %i.ra, i64 84
  %i.vw = load i32, ptr %i.vv, align 4, !alias.scope !2742, !noalias !2743, !noundef !3
  %i.vx = zext i32 %i.vw to i64
  %i.vy = add nuw nsw i32 %i.vu, -719163
  %i.vz = add nsw i32 %i.vy, %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wa = sub nsw i32 %i.vz, %i.vp
  %i.wb = add nsw i32 %i.wa, %i.vr
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i32 %i.wb, %i.vs
  %i.wc = sext i32 %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.wd = mul nsw i64 %i.wc, 86400
  %i.we = add nsw i64 %i.wd, %i.vx
  %i.wf = mul nsw i64 %i.we, 1000
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ra, i64 88
  %i.wh = load i32, ptr %i.wg, align 8, !alias.scope !2742, !noalias !2743, !noundef !3
  %i.wi = udiv i32 %i.wh, 1000000
  %i.wj = zext nneg i32 %i.wi to i64
  %i.wk = add nsw i64 %i.wf, %i.wj
  %i.wl = load i64, ptr %i.ea, align 8, !noalias !2772, !noundef !3
  %.not.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %i.wk, %i.wl
  br i1 %.not.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gi

.loopexit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %.noexc235.i.i.i.i, %.noexc234.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2747
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.fx, %bb.fw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gc, %bb.gb, %.preheader111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gh, %bb.fs, %bb.fs, %bb.fr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wm = icmp eq ptr %i.rb, %i.qy
  br i1 %i.wm, label %.thread526.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gi:                                            ; preds = %bb.gh
  store ptr %i.rb, ptr %i.bg, align 8, !alias.scope !2778, !noalias !2781
  %i.wn = invoke noundef i64 @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapIB1k_INtNtNtBc_5slice4iter4IterINtNtBc_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2G_5ErrorEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00ENCB3A_s_0ENCB3A_s0_0ENCB3A_s1_0ENtNtNtBa_6traits8iterator8Iterator4foldxNCINvNvB5x_6min_by4foldxNvYxNtNtBc_3cmp3Ord3cmpE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bg, i64 noundef %i.ve)
          to label %bb.gj unwind label %.loopexit.split-lp432.i.i.i.i.loopexit, !noalias !2599

.loopexit431.i.i.i.i:                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fi, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fa
  %lpad.loopexit433.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp432.i.i.i.i

.loopexit.split-lp432.i.i.i.i.loopexit:           ; preds = %bb.gi
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp432.i.i.i.i

.loopexit.split-lp432.i.i.i.i.loopexit.split-lp:  ; preds = %bb.gf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp432.i.i.i.i

.loopexit.split-lp432.i.i.i.i:                    ; preds = %.loopexit.split-lp432.i.i.i.i.loopexit, %.loopexit.split-lp432.i.i.i.i.loopexit.split-lp, %.loopexit431.i.i.i.i
  %lpad.phi435.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit433.i.i.i.i, %.loopexit431.i.i.i.i ], [ %lpad.loopexit, %.loopexit.split-lp432.i.i.i.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp432.i.i.i.i.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2595
  br label %bb.iu

.thread526.i.i.i.i:                               ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2595
  %i.wo = load i64, ptr %i.dz, align 8, !noalias !2595, !noundef !3
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2595
  %i.wp = load i64, ptr %i.dz, align 8, !noalias !2595, !noundef !3
  %i.wq = call i64 @llvm.smin.i64(i64 %i.wn, i64 %i.wp)
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %.thread526.i.i.i.i
  %i.wr = phi i64 [ %i.wq, %bb.gj ], [ %i.wo, %.thread526.i.i.i.i ]
  store i64 %i.wr, ptr %i.dz, align 8, !noalias !2595
  %.val165.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i57.i.i, align 8, !noalias !2595, !nonnull !3, !noundef !3 ; 2 uses
  %.val166.i.i.i.i = load i64, ptr %i.eu, align 8, !noalias !2595, !noundef !3 ; 2 uses
  %.idx419.i.i.i.i = mul nuw nsw i64 %.val166.i.i.i.i, 96
  %i.ws = getelementptr inbounds nuw i8, ptr %.val165.i.i.i.i, i64 %.idx419.i.i.i.i ; 3 uses
  %i.wt = icmp eq i64 %.val166.i.i.i.i, 0
  br i1 %i.wt, label %.loopexit424.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.gk, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wu = phi ptr [ %i.wv, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val165.i.i.i.i, %bb.gk ] ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 96 ; 5 uses
  %i.ww = load i64, ptr %i.wu, align 8, !range !1996, !alias.scope !2782, !noalias !2787, !noundef !3
  %i.wx = icmp eq i64 %i.ww, -9223372036854775808
  br i1 %i.wx, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gl

bb.gl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.wy = invoke fastcc { i64, i64 } @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.wu)
          to label %.noexc242.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !2599 ; 2 uses

.noexc242.i.i.i.i:                                ; preds = %bb.gl
  %i.wz = extractvalue { i64, i64 } %i.wy, 0
  %i.xa = trunc nuw i64 %i.wz to i1
  %i.xb = extractvalue { i64, i64 } %i.wy, 1      ; 3 uses
  %i.xc = load i64, ptr %i.dz, align 8            ; 2 uses
  %.not.i.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp sle i64 %i.xb, %i.xc
  %or.cond.not = select i1 %i.xa, i1 %.not.i.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %bb.gm, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc242.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.xd = icmp eq ptr %i.wv, %i.ws
  br i1 %i.xd, label %.loopexit424.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.gm:                                            ; preds = %.noexc242.i.i.i.i
  %i.xe = icmp eq ptr %i.wv, %i.ws
  br i1 %i.xe, label %.loopexit423.i.i.i.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.xf = ptrtoint ptr %i.ws to i64
  %i.xg = ptrtoint ptr %i.wv to i64
  %i.xh = sub nuw i64 %i.xf, %i.xg
  %i.xi = udiv exact i64 %i.xh, 96
  br label %bb.go

bb.go:                                            ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.gn
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.gn ], [ %i.xq, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xb, %bb.gn ], [ %.sroa.0.0.i.i.i.i.i9.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.xj = getelementptr inbounds nuw [96 x i8], ptr %i.wv, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.xk = load i64, ptr %i.xj, align 8, !range !1996, !alias.scope !2805, !noalias !2810, !noundef !3
  %i.xl = icmp eq i64 %i.xk, -9223372036854775808
  br i1 %i.xl, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.xm = invoke fastcc { i64, i64 } @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.xj)
          to label %.noexc243.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !2599 ; 2 uses

.noexc243.i.i.i.i:                                ; preds = %bb.gp
  %i.xn = extractvalue { i64, i64 } %i.xm, 0
  %i.xo = trunc nuw i64 %i.xn to i1
  br i1 %i.xo, label %bb.gq, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i

bb.gq:                                            ; preds = %.noexc243.i.i.i.i
  %i.xp = extractvalue { i64, i64 } %i.xm, 1      ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %i.xp, %i.xc
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i, i64 %i.xp)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gq, %.noexc243.i.i.i.i, %bb.go
  %.sroa.0.0.i.i.i.i.i9.i.i.i.i.i.i.i = phi i64 [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i, %.noexc243.i.i.i.i ] ; 2 uses
  %i.xq = add nuw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.xr = icmp eq i64 %i.xq, %i.xi
  br i1 %i.xr, label %.loopexit423.i.i.i.i, label %bb.go

.loopexit.i.i.i.i:                                ; preds = %bb.gp
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.gl
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

.loopexit423.i.i.i.i:                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.gm
  %.sroa.3.0.i.i.i240.ph.i.i.i.i = phi i64 [ %i.xb, %bb.gm ], [ %.sroa.0.0.i.i.i.i.i9.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.sroa.3.0.i.i.i240.ph.i.i.i.i, ptr %i.ef, align 8, !noalias !2595
  %i.xs = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2595
  %i.xt = icmp ult i64 %i.xs, 2
  br i1 %i.xt, label %bb.gr, label %bb.gy

bb.gr:                                            ; preds = %.loopexit423.i.i.i.i
  %i.xu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_10___CALLSITE, i64 16) monotonic, align 8, !noalias !2595 ; 2 uses
  %i.xv = icmp ult i8 %i.xu, 3
  br i1 %i.xv, label %bb.gu, label %bb.gs, !prof !2185

bb.gs:                                            ; preds = %bb.gr
  %i.xw = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_10___CALLSITE) #36
          to label %bb.gu unwind label %bb.gt, !noalias !2599

bb.gt:                                            ; preds = %bb.gs
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.gu:                                            ; preds = %bb.gs, %bb.gr
  %.sroa.0.0.i245.i.i.i.i = phi i8 [ %i.xu, %bb.gr ], [ %i.xw, %bb.gs ] ; 2 uses
  %i.xy = icmp eq i8 %.sroa.0.0.i245.i.i.i.i, 0
  br i1 %i.xy, label %bb.gy, label %bb.gw

bb.gv:                                            ; preds = %bb.gw
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.gw:                                            ; preds = %bb.gu
  %i.ya = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_10___CALLSITE, align 8, !noalias !2595, !nonnull !3, !align !39, !noundef !3
  %i.yb = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ya, i8 noundef %.sroa.0.0.i245.i.i.i.i)
          to label %bb.gx unwind label %bb.gv, !noalias !2599

bb.gx:                                            ; preds = %bb.gw
  br i1 %i.yb, label %bb.hi, label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gu, %.loopexit423.i.i.i.i
  %i.yc = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2595
  %.not420.i.i.i.i = icmp eq i8 %i.yc, 0
  br i1 %.not420.i.i.i.i, label %bb.gz, label %bb.hl

bb.gz:                                            ; preds = %bb.gy
  %i.yd = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2595 ; 2 uses
  %i.ye = icmp ult i64 %i.yd, 6
  call void @llvm.assume(i1 %i.ye)
  %i.yf = icmp samesign ugt i64 %i.yd, 3
  br i1 %i.yf, label %bb.hb, label %bb.hl

bb.ha:                                            ; preds = %bb.hb
  %i.yg = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.hb:                                            ; preds = %bb.gz
  %i.yh = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_10___CALLSITE, align 8, !noalias !2595, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.yi = getelementptr i8, ptr %i.yh, i64 32
  %.val157.i.i.i.i = load ptr, ptr %i.yi, align 8, !noalias !2599, !nonnull !3, !noundef !3
  %i.yj = getelementptr i8, ptr %i.yh, i64 40
  %.val158.i.i.i.i = load i64, ptr %i.yj, align 8, !noalias !2599, !noundef !3
  store i64 4, ptr %i.as, align 8, !alias.scope !2815, !noalias !2595
  store ptr %.val157.i.i.i.i, ptr %.sroa.6373.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2815, !noalias !2595
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.be, label %bb.j, label %.noexc9

bb.j:                                             ; preds = %bb.i
  %i.bf = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.bc)
          to label %.noexc9 unwind label %bb.bf   ; 0 uses

_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.bg = add nuw nsw i64 %.sroa.02.012.i.i, 1
  %i.bh = icmp eq ptr %i.ao, %i.am
  br i1 %i.bh, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.i

.noexc9:                                          ; preds = %bb.j, %bb.i
  %i.bi = icmp samesign ult i64 %.sroa.02.012.i.i, %i.ag
  call void @llvm.assume(i1 %i.bi)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %.sroa.02.012.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit unwind label %bb.bf

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit: ; preds = %.noexc9
  %.pr = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noundef !3
  store ptr %i.bk, ptr %i.p, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bn = and i64 %i.bm, 9223372036854775807
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !46

bb.m:                                             ; preds = %bb.l
  %i.bp = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #36
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.m
  br i1 %i.bp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11
  store atomic i8 1, ptr %i.bl monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc11, %bb.l, %bb.k
  %i.bq = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.br = icmp eq i32 %i.bq, 2
  br i1 %i.br, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, !prof !37

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit unwind label %.loopexit.split-lp

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread: ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.bt = load i8, ptr %i.bs, align 8, !range !40, !noundef !3
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.az, label %bb.ad

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %.invoke, %bb.m, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11955)
  call void @llvm.experimental.noalias.scope.decl(metadata !11958)
  call void @llvm.experimental.noalias.scope.decl(metadata !11961)
  call void @llvm.experimental.noalias.scope.decl(metadata !11964)
  %i.bv = load ptr, ptr %i.j, align 8, !alias.scope !11967, !nonnull !3, !noundef !3
  %i.bw = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !11967
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #36
          to label %common.resume unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %.val8 = load ptr, ptr %i.p, align 8, !noundef !3 ; 11 uses
  %i.by = icmp eq ptr %.val8, null
  br i1 %i.by, label %bb.y, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.val8, i64 25
  %i.ca = load i8, ptr %i.bz, align 1, !range !40, !noalias !11968, !noundef !3
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.val8, i64 24 ; 2 uses
  %i.cd = load atomic i8, ptr %i.cc acquire, align 1, !noalias !11968
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.s, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.s ] ; 4 uses
  %.sroa.0.02.i.i = phi i32 [ %i.ck, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.s ] ; 4 uses
  %i.cf = shl i32 %.sroa.0.02.i.i, 1
  %i.cg = or i32 %i.cf, 1
  %i.ch = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.ch, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i14
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.loopexit

bb.u:                                             ; preds = %.lr.ph.i.i14
  %.not.i.i.i15 = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i15, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.u
  %i.ci = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.cj = icmp ult i32 %i.ci, 7
  br i1 %i.cj, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11968
  call void @llvm.x86.sse2.pause(), !noalias !11968
  call void @llvm.x86.sse2.pause(), !noalias !11968
  call void @llvm.x86.sse2.pause(), !noalias !11968
  call void @llvm.x86.sse2.pause(), !noalias !11968
  call void @llvm.x86.sse2.pause(), !noalias !11968
  call void @llvm.x86.sse2.pause(), !noalias !11968
  call void @llvm.x86.sse2.pause(), !noalias !11968
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11968
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !11971

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.t, %bb.u
  %i.ck = add i32 %.sroa.0.02.i.i, 1
  %i.cl = load atomic i8, ptr %i.cc acquire, align 1, !noalias !11968
  %i.cm = icmp eq i8 %i.cl, 0
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.cg
  br i1 %i.cm, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.s
  %.sroa.04.0.copyload.i = load i64, ptr %.val8, align 8, !noalias !11968 ; 2 uses
  store i64 4, ptr %.val8, align 8, !noalias !11968
  %.not.i = icmp eq i64 %.sroa.04.0.copyload.i, 4
  br i1 %.not.i, label %.invoke, label %bb.w, !prof !37

bb.v:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i = load i64, ptr %.val8, align 8, !noalias !11968 ; 2 uses
  store i64 4, ptr %.val8, align 8, !noalias !11968
  %.not11.i = icmp eq i64 %.sroa.0.0.copyload.i, 4
  br i1 %.not11.i, label %.invoke, label %bb.x, !prof !37

.invoke:                                          ; preds = %bb.v, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i
  %i.cn = phi ptr [ @271, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i ], [ @272, %bb.v ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn) #37
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i, i64 16, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 32, i64 noundef 8) #28, !noalias !11968
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i64 16, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %.val8, i64 24
  store atomic i8 1, ptr %i.co release, align 8, !noalias !11968
  br label %bb.z

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cp, align 8
  store i64 4, ptr %0, align 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.x
  %.sroa.032.0.ph = phi i64 [ %.sroa.0.0.copyload.i, %bb.x ], [ %.sroa.04.0.copyload.i, %bb.w ]
  store i64 %.sroa.032.0.ph, ptr %0, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !11972)
  call void @llvm.experimental.noalias.scope.decl(metadata !11975)
  call void @llvm.experimental.noalias.scope.decl(metadata !11978)
  call void @llvm.experimental.noalias.scope.decl(metadata !11981)
  %i.cq = load ptr, ptr %i.j, align 8, !alias.scope !11984, !nonnull !3, !noundef !3
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !11984
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit25

bb.ac:                                            ; preds = %bb.q, %bb.bf
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ad:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !11985)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11988
  store ptr %i.m, ptr %i.h, align 8, !noalias !11985
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx, align 8, !noalias !11985
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx, align 8, !noalias !11985
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !11985
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  store i8 %i.ac, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !11985
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.cu = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i8, ptr %i.cv, align 8, !range !111, !noalias !11990, !noundef !3
  %i.cx = icmp eq i8 %i.cw, 1
  br i1 %i.cx, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, !prof !46

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.ad
  %i.cy = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.cu, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.as, !noalias !11988 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4O_ECs7p2uQeJxui2_9deltalake.exit.thread.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %.noexc.i, %bb.ad
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.cy, %.noexc.i ], [ %i.cu, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11999
  %i.da = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !12000, !noundef !3 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !12000
  %.not.i.i.i21 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i21, label %bb.ae, label %bb.al, !prof !37

bb.ae:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12000
  %i.db = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.af unwind label %bb.as, !noalias !11988 ; 4 uses

bb.af:                                            ; preds = %bb.ae
  store ptr %i.db, ptr %i.f, align 8, !noalias !12000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12000
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !12000
  store ptr %i.m, ptr %i.c, align 8, !noalias !11985
  %.sroa.636.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx39, align 8, !noalias !11985
  %.sroa.741.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx44, align 8, !noalias !11985
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx48, align 8, !noalias !11985
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !12000
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.db)
          to label %bb.ai unwind label %bb.ag, !noalias !11999

bb.ag:                                            ; preds = %bb.af
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !12003
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.ah, label %.body.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #36
          to label %.body.i unwind label %bb.ak, !noalias !12000

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12000
  %i.df = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !12010
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit24.i.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit24.i.i.i unwind label %bb.as, !noalias !11988

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit24.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12000
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4O_ECs7p2uQeJxui2_9deltalake.exit.i

bb.ak:                                            ; preds = %bb.ar, %bb.ap, %bb.ah
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !12000
  unreachable

bb.al:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12000
  store ptr %i.da, ptr %i.e, align 8, !noalias !12000
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store atomic i64 0, ptr %i.di release, align 8, !noalias !12000
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store atomic ptr null, ptr %i.dj release, align 8, !noalias !12000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12000
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !12000
  store ptr %i.m, ptr %i.b, align 8, !noalias !11985
  %.sroa.636.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx37, align 8, !noalias !11985
  %.sroa.741.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx42, align 8, !noalias !11985
  %.sroa.8.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx46, align 8, !noalias !11985
  %.sroa.410.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %i.ac, ptr %.sroa.410.0..sroa_idx11.i.i.i, align 8, !noalias !12000
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b, ptr nonnull %i.da)
          to label %bb.am unwind label %bb.aq, !noalias !12000

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12000
  %i.dk = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !12000, !noundef !3 ; 3 uses
  store ptr %i.dk, ptr %i.a, align 8, !noalias !12000
  store ptr %i.da, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !12000
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dm = atomicrmw sub ptr %i.dk, i64 1 release, align 8, !noalias !12017
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.ap, !noalias !12000

bb.ap:                                            ; preds = %bb.ao
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageNtNtNtCs2pqxYH9ZEk8_3std4sync4mpsc16RecvTimeoutErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.d) #38
          to label %.body.i unwind label %bb.ak, !noalias !12000

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !11999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12000
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4O_ECs7p2uQeJxui2_9deltalake.exit.i

bb.aq:                                            ; preds = %bb.al
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !12026
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.ar, label %.body.i

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #36
          to label %.body.i unwind label %bb.ak, !noalias !12000

bb.as:                                            ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4O_ECs7p2uQeJxui2_9deltalake.exit.thread.i, %bb.aj, %bb.ae, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %.val4.pre.i = load i8, ptr %.sroa.950.0..sroa_idx, align 8, !range !111, !noalias !11988
end_hunk_2
begin_hunk_3_@_RNvMs2_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake:bb.a
.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !12051
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !12054

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.f, %bb.e
  %i.au = load atomic i64, ptr %i.x acquire, align 8, !noalias !12051 ; 3 uses
  %i.av = load atomic ptr, ptr %i.z acquire, align 8, !noalias !12051
  %i.aw = and i64 %i.au, 1
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.d, label %.outer._crit_edge.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.g, %._crit_edge.i
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.0.ph75.i.i, %._crit_edge.i ], [ %i.az, %bb.g ] ; 9 uses
  %i.ay = icmp eq ptr %.sroa.07.072.i.lcssa.i, null
  br i1 %i.ay, label %bb.h, label %bb.m

bb.g:                                             ; preds = %._crit_edge.i
  %i.az = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEE13new_zeroed_inCs7p2uQeJxui2_9deltalake()
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %.body.loopexit.i, !noalias !12055

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEE13new_zeroed_inCs7p2uQeJxui2_9deltalake()
          to label %bb.i unwind label %.loopexit.split-lp.i.i, !noalias !12051 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.bb = cmpxchg ptr %i.z, ptr null, ptr %i.ba release monotonic, align 8, !noalias !12051
  %i.bc = extractvalue { ptr, i1 } %i.bb, 1
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.ba, ptr %i.ad release, align 8, !noalias !12051
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.bd = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.bd, label %.outer.backedge.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 1000, i64 noundef 8) #28, !noalias !12051
  br label %.outer.backedge.i.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.072.i.lcssa.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.ba, %bb.j ] ; 3 uses
  %i.be = add i64 %.sroa.03.073.i.lcssa.i, 2
  %i.bf = cmpxchg weak ptr %i.x, i64 %.sroa.03.073.i.lcssa.i, i64 %i.be seq_cst acquire, align 8, !noalias !12051
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bf, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.071.i.lcssa.i, i32 6) ; 2 uses
  %i.bg = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i ; 3 uses
  %.not.i24.i.i = icmp eq i32 %.sroa.0.071.i.lcssa.i, 0
  br i1 %.not.i24.i.i, label %.outer.backedge.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.n
  %xtraiter162 = and i32 %i.bg, 5                 ; 3 uses
  %i.bh = icmp samesign ult i32 %i.bg, 8
  br i1 %i.bh, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter166 = and i32 %i.bg, 56
  br label %.lr.ph.i25.i.i

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i25.i.i
  %lcmp.mod164.not = icmp eq i32 %xtraiter162, 0
  br i1 %lcmp.mod164.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod165 = icmp ne i32 %xtraiter162, 0
  tail call void @llvm.assume(i1 %lcmp.mod165)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter163 = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter163.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !12051
  %epil.iter163.next = add i32 %epil.iter163, 1   ; 2 uses
  %epil.iter163.cmp.not = icmp eq i32 %epil.iter163.next, %xtraiter162
  br i1 %epil.iter163.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !12056

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i25.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.bi = add i32 %.sroa.0.071.i.lcssa.i, 1
  br label %.outer.backedge.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter167 = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter167.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !12051
  tail call void @llvm.x86.sse2.pause(), !noalias !12051
  tail call void @llvm.x86.sse2.pause(), !noalias !12051
  tail call void @llvm.x86.sse2.pause(), !noalias !12051
  tail call void @llvm.x86.sse2.pause(), !noalias !12051
  tail call void @llvm.x86.sse2.pause(), !noalias !12051
  tail call void @llvm.x86.sse2.pause(), !noalias !12051
  tail call void @llvm.x86.sse2.pause(), !noalias !12051
  %niter167.next.7 = add i32 %niter167, 8         ; 2 uses
  %niter167.ncmp.7 = icmp eq i32 %niter167.next.7, %unroll_iter166
  br i1 %niter167.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i25.i.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.at, label %bb.p, label %.outer._crit_edge.i.i

bb.p:                                             ; preds = %bb.o
  %.not16.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not16.i.i, label %bb.q, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i, !prof !37

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #35
          to label %.noexc5.i unwind label %.body.loopexit.split-lp.i, !noalias !12055

.noexc5.i:                                        ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i: ; preds = %bb.p
  store atomic ptr %.sroa.035.2.i.i, ptr %i.z release, align 8, !noalias !12051
  %i.bj = atomicrmw add ptr %i.x, i64 2 release, align 8, !noalias !12051 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i, i64 992
  store atomic ptr %.sroa.035.2.i.i, ptr %i.bk release, align 8, !noalias !12051
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.016.0.copyload42.i = load i64, ptr %i.u, align 8, !alias.scope !12049, !noalias !12046
  %.sroa.5.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx43.i, i64 16, i1 false), !noalias !12046
  br label %bb.t

.outer.backedge.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %bb.n, %bb.l, %bb.k
  %.sroa.035.0.ph.be.i.i = phi ptr [ %i.ba, %bb.l ], [ %i.ba, %bb.k ], [ %.sroa.035.2.i.i, %bb.n ], [ %.sroa.035.2.i.i, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i.i = phi i32 [ %.sroa.0.071.i.lcssa.i, %bb.l ], [ %.sroa.0.071.i.lcssa.i, %bb.k ], [ 1, %bb.n ], [ %i.bi, %._crit_edge.loopexit.i.i.i ]
  %i.bl = load atomic i64, ptr %i.x acquire, align 8, !noalias !12051 ; 2 uses
  %i.bm = load atomic ptr, ptr %i.z acquire, align 8, !noalias !12051
  %i.bn = and i64 %i.bl, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i, label %.outer._crit_edge.i.i

.loopexit56.i.i:                                  ; preds = %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp.i.i:                           ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit56.i.i
  %.sroa.035.1.ph.i.i = phi ptr [ %.sroa.035.0.ph75.i.i, %.loopexit56.i.i ], [ %.sroa.035.2.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit56.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.bp = icmp eq ptr %.sroa.035.1.ph.i.i, null
  br i1 %i.bp, label %.body.thread.i, label %.thread47.i.i

.thread47.i.i:                                    ; preds = %bb.r
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.1.ph.i.i, i64 noundef 1000, i64 noundef 8) #28, !noalias !12051
  br label %.body.thread.i

.outer._crit_edge.i.i:                            ; preds = %.outer.backedge.i.i, %.loopexit.i.i, %bb.o
  %.sroa.412.0.i = phi ptr [ %.sroa.07.1.i.i, %bb.o ], [ null, %.loopexit.i.i ], [ null, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.9.0.i = phi i64 [ %.lcssa54.i, %bb.o ], [ 0, %.loopexit.i.i ], [ 0, %.outer.backedge.i.i ]
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.o ], [ %.sroa.035.0.ph75.i.i, %.loopexit.i.i ], [ %.sroa.035.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %i.bq = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.bq, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i, label %bb.s

bb.s:                                             ; preds = %.outer._crit_edge.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 1000, i64 noundef 8) #28, !noalias !12051
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i

.body.loopexit.i:                                 ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.loopexit.split-lp.i:                        ; preds = %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.s, %.outer._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.016.0.copyload.i = load i64, ptr %i.u, align 8, !alias.scope !12049, !noalias !12046 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i64 16, i1 false), !noalias !12046
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12060)
  %i.br = icmp eq ptr %.sroa.412.0.i, null
  br i1 %i.br, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.i, label %bb.t

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i
  %.sroa.016.0.copyload46.i = phi i64 [ %.sroa.016.0.copyload42.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i ], [ %.sroa.016.0.copyload.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.9.145.i = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  %.sroa.412.144.i = phi ptr [ %.sroa.07.1.i.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i ], [ %.sroa.412.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i ]
  %i.bs = icmp samesign ult i64 %.sroa.9.145.i, 31
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %.sroa.412.144.i, i64 %.sroa.9.145.i ; 3 uses
  store i64 %.sroa.016.0.copyload46.i, ptr %i.bt, align 8, !noalias !12062
  %.sroa.5.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx18.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !12062
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = atomicrmw or ptr %i.bu, i64 1 release, align 8, !noalias !12063 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.8.val, i64 312 ; 3 uses
  %i.bx = load atomic i8, ptr %i.bw seq_cst, align 8, !noalias !12063
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %.noexc6.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.thread.i

.noexc6.i:                                        ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !12063
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 8 %i.bz), !noalias !12055
  call void @llvm.experimental.noalias.scope.decl(metadata !12064)
  %i.ca = load i64, ptr %i.r, align 8, !range !34, !alias.scope !12064, !noalias !12067, !noundef !3
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.u, label %bb.z, !prof !37

bb.u:                                             ; preds = %.noexc6.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12069
  %i.cc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !12064, !noalias !12067, !nonnull !3, !align !39, !noundef !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !range !40, !alias.scope !12064, !noalias !12067, !noundef !3
  store ptr %i.cd, ptr %i.p, align 8, !noalias !12069
  %i.cg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 %i.cf, ptr %i.cg, align 8, !noalias !12069
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 43, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @247, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #35
          to label %bb.w unwind label %bb.v, !noalias !12070

bb.v:                                             ; preds = %bb.u
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc5waker5WakerEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #38
          to label %common.resume unwind label %bb.x, !noalias !12070

bb.w:                                             ; preds = %bb.u
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !12070
  unreachable

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryEECs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.ah, %.noexc5.i.i.i, %bb.af, %.lr.ph.i.preheader.i.i.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.cl, i8 %i.cn) #38
          to label %common.resume unwind label %bb.ap, !noalias !12063

bb.z:                                             ; preds = %.noexc6.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !12064, !noalias !12067, !nonnull !3, !align !39, !noundef !3 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cn = load i8, ptr %i.cm, align 8, !range !40, !alias.scope !12064, !noalias !12067, !noundef !3 ; 2 uses
  %i.co = trunc nuw i8 %i.cn to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12063
  %i.cp = load atomic i8, ptr %i.bw seq_cst, align 8, !noalias !12063
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.aa, label %bb.al

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !12063
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12071)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !12071, !noalias !12074, !noundef !3 ; 4 uses
  %i.cu = icmp ult i64 %i.ct, 384307168202282326
  call void @llvm.assume(i1 %i.cu)
  %i.cv = icmp eq i64 %i.ct, 0
  br i1 %i.cv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.aa
  %i.cw = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @255)
          to label %.noexc.i.i.i unwind label %bb.y, !noalias !12063

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.preheader.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !12071, !noalias !12074, !nonnull !3, !noundef !3 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.ct, 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %.noexc.i.i.i
  %.sroa.02.012.i.i.i.i.i = phi i64 [ %i.dt, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ], [ 0, %.noexc.i.i.i ] ; 3 uses
  %i.da = phi ptr [ %i.db, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ], [ %i.cy, %.noexc.i.i.i ] ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12076)
  %i.dc = load ptr, ptr %i.da, align 8, !alias.scope !12076, !noalias !12079, !nonnull !3, !noundef !3 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !noalias !12083, !noundef !3
  %.not.i.i.i.i.i.i = icmp eq i64 %i.de, %i.cw
  br i1 %.not.i.i.i.i.i.i, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !12076, !noalias !12079, !noundef !3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.di = cmpxchg ptr %i.dh, i64 0, i64 %i.dg acq_rel acquire, align 8, !noalias !12083
  %.sroa.18.0.in.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.di, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i, label %bb.ac, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !12076, !noalias !12079, !noundef !3 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store atomic ptr %i.dl, ptr %i.dn release, align 8, !noalias !12083
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.do = load ptr, ptr %i.dj, align 8, !noalias !12083, !nonnull !3, !noundef !3
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40 ; 2 uses
  %i.dq = atomicrmw xchg ptr %i.dp, i32 1 release, align 4, !noalias !12083
  %i.dr = icmp eq i32 %i.dq, -1
  br i1 %i.dr, label %bb.af, label %.noexc5.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ds = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.dp)
          to label %.noexc5.i.i.i unwind label %bb.y, !noalias !12063 ; 0 uses

_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.ab, %.lr.ph.i.i.i.i.i
  %i.dt = add nuw nsw i64 %.sroa.02.012.i.i.i.i.i, 1
  %i.du = icmp eq ptr %i.db, %i.cz
  br i1 %i.du, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.noexc5.i.i.i:                                    ; preds = %bb.af, %bb.ae
  %i.dv = icmp samesign ult i64 %.sroa.02.012.i.i.i.i.i, %i.ct
  call void @llvm.assume(i1 %i.dv)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cr, i64 noundef %.sroa.02.012.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i.i unwind label %bb.y, !noalias !12063

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i.i: ; preds = %.noexc5.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !12084, !noalias !12063 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12084)
  %i.dw = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.dw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i.i
  %i.dx = atomicrmw sub ptr %.pr.i.i.i, i64 1 release, align 8, !noalias !12087
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryEECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.y, !noalias !12063

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %bb.ah, %bb.ag, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12063
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.cr)
          to label %bb.ai unwind label %bb.y, !noalias !12063

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.dz = load i64, ptr %i.cs, align 8, !noalias !12063, !noundef !3 ; 2 uses
  %i.ea = icmp ult i64 %i.dz, 384307168202282326
  call void @llvm.assume(i1 %i.ea)
  %i.eb = icmp eq i64 %i.dz, 0
  br i1 %i.eb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !12063, !noundef !3 ; 2 uses
  %i.ee = icmp ult i64 %i.ed, 384307168202282326
  call void @llvm.assume(i1 %i.ee)
  %i.ef = icmp eq i64 %i.ed, 0
  %i.eg = zext i1 %i.ef to i8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.0.0.i.i.i = phi i8 [ %i.eg, %bb.aj ], [ 0, %bb.ai ]
  store atomic i8 %.sroa.0.0.i.i.i, ptr %i.bw seq_cst, align 8, !noalias !12063
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.z
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  br i1 %i.co, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ei = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !12063
  %i.ej = and i64 %i.ei, 9223372036854775807
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %.noexc10.i, !prof !46

.noexc10.i:                                       ; preds = %bb.am
  %i.el = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #36, !noalias !12055
  br i1 %i.el, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.noexc10.i
  store atomic i8 1, ptr %i.eh monotonic, align 4, !noalias !12063
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.an, %.noexc10.i, %bb.am, %bb.al
  %i.em = atomicrmw xchg ptr %i.cl, i32 0 release, align 4, !noalias !12063
  %i.en = icmp eq i32 %i.em, 2
  br i1 %i.en, label %bb.ao, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.thread.i, !prof !37

bb.ao:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cl), !noalias !12055
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.thread.i

bb.ap:                                            ; preds = %bb.y
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !12063
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.thread.i: ; preds = %bb.ao, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %bb.ar

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread.i
  %.sroa.016.0.copyload38.i = phi i64 [ %.sroa.016.0.copyload36.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread.i ], [ %.sroa.016.0.copyload.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !alias.scope !12096, !noalias !12055
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %.not.i = icmp eq i64 %.sroa.016.0.copyload38.i, -9223372036854775805
  br i1 %.not.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !12049
  store i64 1, ptr %i.w, align 8, !alias.scope !12046, !noalias !12049
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sroa.016.0.copyload38.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !12046, !noalias !12049
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake.exit

bb.ar:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.thread.i
  store i64 2, ptr %i.w, align 8, !alias.scope !12046, !noalias !12049
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake.exit

common.resume:                                    ; preds = %bb.dd, %.body.i, %.body.i.i, %.body.thread.i2, %bb.v, %bb.y, %.body.thread.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ch, %bb.v ], [ %eh.lpad-body26.i, %.body.thread.i ], [ %i.cj, %bb.y ], [ %.pn.pn63.i, %.body.thread.i2 ], [ %eh.lpad-body21.i, %.body.i ], [ %i.iz, %bb.dd ]
  resume { ptr, i32 } %common.resume.op

.body.thread.i:                                   ; preds = %.body.loopexit.split-lp.i, %.body.loopexit.i, %.thread47.i.i, %bb.r
  %eh.lpad-body26.i = phi { ptr, i32 } [ %lpad.phi.i.i, %.thread47.i.i ], [ %lpad.phi.i.i, %bb.r ], [ %lpad.loopexit.i, %.body.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.body.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #38
          to label %common.resume unwind label %bb.as, !noalias !12046

bb.as:                                            ; preds = %.body.thread.i
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !12046
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.cz

bb.at:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12100)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 1000000000, ptr %i.eq, align 8, !noalias !12102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12102
  %i.er = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i8 0, i64 40, i1 false), !noalias !12102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12102
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %.8.val)
          to label %bb.av unwind label %bb.au, !noalias !12102

.body.i:                                          ; preds = %bb.bm, %.body20.i
  br i1 %.sroa.03.4.lpad-body.i, label %.body.thread.i2, label %common.resume

bb.au:                                            ; preds = %bb.at
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i2

bb.av:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !12103)
  %i.es = load i64, ptr %i.m, align 8, !range !34, !alias.scope !12103, !noalias !12106, !noundef !3
  %i.et = trunc nuw i64 %i.es to i1
  br i1 %i.et, label %bb.aw, label %bb.ba, !prof !37

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12108
  %i.eu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !12103, !noalias !12106, !nonnull !3, !align !39, !noundef !3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ex = load i8, ptr %i.ew, align 8, !range !40, !alias.scope !12103, !noalias !12106, !noundef !3
  store ptr %i.ev, ptr %i.i, align 8, !noalias !12108
  %i.ey = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %i.ex, ptr %i.ey, align 8, !noalias !12108
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @245, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @269) #35
          to label %bb.ay unwind label %bb.ax, !noalias !12109

bb.ax:                                            ; preds = %bb.aw
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #38
          to label %.body.thread.i2 unwind label %bb.az, !noalias !12109

bb.ay:                                            ; preds = %bb.aw
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !12109
  unreachable

bb.ba:                                            ; preds = %bb.av
  %i.fb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !12103, !noalias !12106, !nonnull !3, !align !39, !noundef !3 ; 12 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.fe = load i8, ptr %i.fd, align 8, !range !40, !alias.scope !12103, !noalias !12106, !noundef !3 ; 3 uses
  %i.ff = trunc nuw i8 %i.fe to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12102
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !12110)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 72
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !12110, !noalias !12113, !noundef !3 ; 4 uses
  %i.fj = icmp ult i64 %i.fi, 384307168202282326
  call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp eq i64 %i.fi, 0
  br i1 %i.fk, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.ba
  %i.fl = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @255)
          to label %.noexc.i unwind label %bb.cy, !noalias !12102

.noexc.i:                                         ; preds = %.lr.ph.i.preheader.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 64
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !12110, !noalias !12113, !nonnull !3, !noundef !3 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.fi, 24
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx.i.i
  br label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i, %.noexc.i
  %.sroa.02.012.i.i.i = phi i64 [ %i.gi, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ 0, %.noexc.i ] ; 3 uses
  %i.fp = phi ptr [ %i.fq, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.fn, %.noexc.i ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12115)
  %i.fr = load ptr, ptr %i.fp, align 8, !alias.scope !12115, !noalias !12118, !nonnull !3, !noundef !3 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.ft = load i64, ptr %i.fs, align 8, !noalias !12122, !noundef !3
  %.not.i.i.i.i = icmp eq i64 %i.ft, %i.fl
  br i1 %.not.i.i.i.i, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !12115, !noalias !12118, !noundef !3
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.fx = cmpxchg ptr %i.fw, i64 0, i64 %i.fv acq_rel acquire, align 8, !noalias !12122
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.fx, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.bc, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !12115, !noalias !12118, !noundef !3 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  store atomic ptr %i.ga, ptr %i.gc release, align 8, !noalias !12122
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.gd = load ptr, ptr %i.fy, align 8, !noalias !12122, !nonnull !3, !noundef !3
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40 ; 2 uses
  %i.gf = atomicrmw xchg ptr %i.ge, i32 1 release, align 4, !noalias !12122
  %i.gg = icmp eq i32 %i.gf, -1
  br i1 %i.gg, label %bb.bf, label %.noexc15.i

end_hunk_3
begin_hunk_4_@_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineNtB5_5AsAny7any_refCs7p2uQeJxui2_9deltalake:bb.a
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineNtB5_5AsAny8into_anyCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @306, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineNtB5_5AsAny9type_nameCs7p2uQeJxui2_9deltalake(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @307, i64 58 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine12file_formats27DataFusionFileFormatHandlerNtB5_5AsAny6as_anyCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @308, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine12file_formats27DataFusionFileFormatHandlerNtB5_5AsAny7any_refCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @308, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine12file_formats27DataFusionFileFormatHandlerNtB5_5AsAny8into_anyCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @308, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine12file_formats27DataFusionFileFormatHandlerNtB5_5AsAny9type_nameCs7p2uQeJxui2_9deltalake(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @309, i64 83 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage24DataFusionStorageHandlerNtB5_5AsAny6as_anyCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @310, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage24DataFusionStorageHandlerNtB5_5AsAny7any_refCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @310, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage24DataFusionStorageHandlerNtB5_5AsAny8into_anyCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @310, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage24DataFusionStorageHandlerNtB5_5AsAny9type_nameCs7p2uQeJxui2_9deltalake(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @311, i64 75 }
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3x_5ErrorEEEENtNtNtB2Y_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered5abort5abort(ptr noalias noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 31) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB25_8Snapshot12commit_infos0s0_00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !34, !noundef !3
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered5abort5abort(ptr noalias noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 31) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNvYxNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRxB1p_EE9call_onceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #11 {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !3
  %.val1 = load i64, ptr %2, align 8, !noundef !3
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.val, i64 %.val1)
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCskQDtHcQtBkN_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !39, !noundef !3
  tail call void @_RNvMNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphoreNtB2_9Semaphore7release(ptr noundef nonnull align 8 %i.a, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB7_6handle6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12647)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !12647, !nonnull !3, !noundef !3 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8, !noalias !12647 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.l = lshr i64 %i.j, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = trunc i64 %i.j to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12647
  store i32 %i.m, ptr %i.b, align 4, !noalias !12647
  %i.o = load i32, ptr %i.k, align 8, !noalias !12647, !noundef !3
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB17_9scheduler12multi_thread6handle6HandleEEEECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.i
  %i.q = phi i32 [ %i.af, %bb.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.r = phi i32 [ %i.ae, %bb.i ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.04.011.i = phi i64 [ %i.ac, %bb.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.s = add i32 %i.q, 1                          ; 4 uses
  store i32 %i.s, ptr %i.a, align 4, !noalias !12647
  %i.t = icmp eq i32 %i.r, %i.q
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = icmp eq i32 %i.s, %i.r
  br i1 %i.u, label %bb.g, label %bb.f, !prof !37

bb.e:                                             ; preds = %.lr.ph.i
  %i.v = zext i32 %i.s to i64
  %i.w = mul nuw i64 %i.v, 4294967297
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.x = zext i32 %i.s to i64
  %i.y = and i64 %.sroa.04.011.i, -4294967296
  %i.z = or disjoint i64 %i.y, %i.x
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedmmECs2pqxYH9ZEk8_3std(i8 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #37, !noalias !12647
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.w, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = cmpxchg ptr %i.i, i64 %.sroa.04.011.i, i64 %.sroa.01.0.i acq_rel acquire, align 8, !noalias !12647 ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = extractvalue { i64, i1 } %i.aa, 0       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12647
  %i.ad = lshr i64 %i.ac, 32
  %i.ae = trunc nuw i64 %i.ad to i32              ; 2 uses
  %i.af = trunc i64 %i.ac to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12647
  store i32 %i.ae, ptr %i.b, align 4, !noalias !12647
  %i.ag = load i32, ptr %i.k, align 8, !noalias !12647, !noundef !3
  %i.ah = icmp eq i32 %i.ag, %i.af
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB17_9scheduler12multi_thread6handle6HandleEEEECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB17_9scheduler12multi_thread6handle6HandleEEEECs7p2uQeJxui2_9deltalake.exit, %bb.b
  ret void

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12647
  %i.ai = and i64 %.sroa.04.011.i, 255
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !12647, !nonnull !3, !noundef !3
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  %i.am = load ptr, ptr %i.al, align 8, !noalias !12647, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.am, ptr %i.c, align 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB17_9scheduler12multi_thread6handle6HandleEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @313, ptr noundef nonnull inttoptr (i64 31 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @314) #37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB17_9scheduler12multi_thread6handle6HandleEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = load i64, ptr %0, align 8, !range !7, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !noundef !3 ; 29 uses
  switch i64 %i.c, label %default.unreachable12 [
    i64 0, label %bb.b
    i64 1, label %bb.j
    i64 2, label %bb.x
  ]

default.unreachable12:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 512
  %i.f = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE18disconnect_sendersCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 %.val) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 528
  %i.j = atomicrmw xchg ptr %i.i, i8 1 acq_rel, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12653)
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 416
  %.val2.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !12656, !noundef !3 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array4SlotINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 408
  %.val.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !12656, !nonnull !3, !noundef !3
  %i.o = shl nuw nsw i64 %.val2.i.i.i.i, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.o, i64 noundef 8) #28, !noalias !12656
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array4SlotINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array4SlotINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 264
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5WakerECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array7ChannelINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array4SlotINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 328
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5WakerECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array7ChannelINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array4SlotINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 328
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5WakerECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_5array7ChannelINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array7ChannelINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

common.resume:                                    ; preds = %bb.aa, %.loopexit.split-lp.i.i.i, %bb.ar, %bb.w, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %bb.i ], [ %eh.lpad-body.i.i3, %bb.w ], [ %eh.lpad-body.i.i4, %bb.ar ], [ %i.bm, %bb.aa ], [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.q, %bb.f ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 640, i64 noundef 128) #28
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_5array7ChannelINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array7ChannelINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 640, i64 noundef 128) #28
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 384
  %i.w = atomicrmw sub ptr %i.v, i64 1 acq_rel, align 8
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.k, label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 2 uses
  %i.z = atomicrmw or ptr %i.y, i64 1 seq_cst, align 8
  %i.aa = and i64 %i.z, 1
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %_RNCNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBV_3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.ac) #33
  br label %_RNCNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBV_3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i

_RNCNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBV_3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 400
  %i.ae = atomicrmw xchg ptr %i.ad, i8 1 acq_rel, align 1
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit, label %bb.m

bb.m:                                             ; preds = %_RNCNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBV_3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12663)
  %i.ag = load atomic i64, ptr %.val monotonic, align 8, !alias.scope !12666, !noalias !12667
  %i.ah = load atomic i64, ptr %i.y monotonic, align 8, !alias.scope !12666, !noalias !12667
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.aj = load atomic ptr, ptr %i.ai monotonic, align 8, !alias.scope !12666, !noalias !12667 ; 2 uses
  %i.ak = and i64 %i.ag, -2                       ; 2 uses
  %i.al = and i64 %i.ah, -2                       ; 2 uses
  %.not15.i.i.i.i.i = icmp eq i64 %i.ak, %i.al
  br i1 %.not15.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %bb.m
  %.sroa.06.0.lcssa.i.i.i.i.i = phi ptr [ %i.aj, %bb.m ], [ %.sroa.06.1.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ] ; 2 uses
  %i.am = icmp eq ptr %.sroa.06.0.lcssa.i.i.i.i.i, null
  br i1 %i.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list7ChannelINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.n

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  %.sroa.0.017.i.i.i.i.i = phi i64 [ %i.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ], [ %i.ak, %bb.m ] ; 2 uses
  %.sroa.06.016.i.i.i.i.i = phi ptr [ %.sroa.06.1.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ], [ %i.aj, %bb.m ] ; 6 uses
  %i.an = lshr exact i64 %.sroa.0.017.i.i.i.i.i, 1
  %i.ao = and i64 %i.an, 31                       ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i64 %i.ao, 31
  br i1 %.not11.i.i.i.i.i, label %bb.o, label %bb.p

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa.i.i.i.i.i, i64 noundef 1000, i64 noundef 8) #28, !noalias !12670
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list7ChannelINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.016.i.i.i.i.i, i64 992
  %i.aq = load atomic ptr, ptr %i.ap monotonic, align 8, !noalias !12670
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.016.i.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.016.i.i.i.i.i, i64 noundef 1000, i64 noundef 8) #28, !noalias !12670
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.016.i.i.i.i.i, i64 %i.ao ; 4 uses
  %i.as = load i64, ptr %i.ar, align 8, !range !98, !alias.scope !12671, !noalias !12670, !noundef !3
  %i.at = icmp slt i64 %i.as, -9223372036854775805
  br i1 %i.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i unwind label %bb.r, !noalias !12670

bb.r:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.body.i.i.i.i unwind label %bb.s, !noalias !12670

bb.s:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !12670
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.t, !noalias !12674
end_hunk_4
