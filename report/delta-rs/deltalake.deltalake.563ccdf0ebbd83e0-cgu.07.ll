Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.07?download=true
inline.NumInlined: 7757
inline.NumDeleted: 2965
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB6_18BatchSpanProcessor20get_spans_and_exportNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.433.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val6, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.053 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.gq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit ]
  br label %bb.b

._crit_edge:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.b:                                             ; preds = %.preheader, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  switch i64 %.val, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.ag
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([352 x i8]) align 16 captures(none) dereferenceable(352) %i.g, ptr noundef nonnull align 128 %.val6)
          to label %._RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exitthread-pre-split_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

._RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exitthread-pre-split_crit_edge: ; preds = %bb.c
  %.pr.pre = load i64, ptr %i.g, align 16
  br label %_RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i.i)
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.d
  %.sroa.0.034.i.i.i = phi i32 [ 0, %bb.d ], [ %.sroa.0.034.i.i.i.be, %.backedge.i.i.i.backedge ] ; 16 uses
  %i.t = load atomic i64, ptr %.val6 acquire, align 8, !noalias !14 ; 5 uses
  %i.u = load atomic ptr, ptr %i.n acquire, align 8, !noalias !14 ; 7 uses
  %i.v = lshr i64 %i.t, 1                         ; 2 uses
  %i.w = and i64 %i.v, 31                         ; 5 uses
  %i.x = icmp eq i64 %i.w, 31
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.backedge.i.i.i
  %i.y = icmp ult i32 %.sroa.0.034.i.i.i, 7
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %i.z = mul nuw i32 %.sroa.0.034.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %xtraiter168 = and i32 %i.z, 7                  ; 3 uses
  %i.aa = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.aa, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter172 = and i32 %i.z, 56
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter173 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter173.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  %niter173.next.7 = add i32 %niter173, 8         ; 2 uses
  %niter173.ncmp.7 = icmp eq i32 %niter173.next.7, %unroll_iter172
  br i1 %niter173.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod170.not = icmp eq i32 %xtraiter168, 0
  br i1 %lcmp.mod170.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod171 = icmp ne i32 %xtraiter168, 0
  call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter169 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter169.next, %.lr.ph.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  %epil.iter169.next = add i32 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i32 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !17

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.f, %bb.g
  %i.ab = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i.backedge

bb.h:                                             ; preds = %.backedge.i.i.i
  %i.ac = add i64 %i.t, 2                         ; 2 uses
  %i.ad = and i64 %i.t, 1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  fence seq_cst
  %i.af = load atomic i64, ptr %i.o monotonic, align 8, !noalias !14 ; 3 uses
  %i.ag = lshr i64 %i.af, 1
  %i.ah = icmp eq i64 %i.v, %i.ag
  br i1 %i.ah, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.unshifted.i.i.i = xor i64 %i.af, %i.t
  %.not.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i, 63
  %i.ai = zext i1 %.not.i.i.i to i64
  %spec.select.i.i.i = or disjoint i64 %i.ac, %i.ai
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aj = and i64 %i.af, 1
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCs7p2uQeJxui2_9deltalake.exit.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.thread.i.i

bb.l:                                             ; preds = %bb.j, %bb.h
  %.sroa.01.0.i.i.i = phi i64 [ %i.ac, %bb.h ], [ %spec.select.i.i.i, %bb.j ] ; 2 uses
  %i.al = icmp eq ptr %i.u, null
  br i1 %i.al, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.am = icmp ult i32 %.sroa.0.034.i.i.i, 7
  br i1 %i.am, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.o:                                             ; preds = %bb.m
  %.not.i18.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i18.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i19.i.i.i.preheader

.lr.ph.i19.i.i.i.preheader:                       ; preds = %bb.o
  %i.an = mul nuw i32 %.sroa.0.034.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %xtraiter162 = and i32 %i.an, 7                 ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.ao, label %.lr.ph.i19.i.i.i.epil.preheader, label %.lr.ph.i19.i.i.i.preheader.new

.lr.ph.i19.i.i.i.preheader.new:                   ; preds = %.lr.ph.i19.i.i.i.preheader
  %unroll_iter166 = and i32 %i.an, 56
  br label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %.lr.ph.i19.i.i.i, %.lr.ph.i19.i.i.i.preheader.new
  %niter167 = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader.new ], [ %niter167.next.7, %.lr.ph.i19.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  %niter167.next.7 = add i32 %niter167, 8         ; 2 uses
  %niter167.ncmp.7 = icmp eq i32 %niter167.next.7, %unroll_iter166
  br i1 %niter167.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i.i.i
  %lcmp.mod164.not = icmp eq i32 %xtraiter162, 0
  br i1 %lcmp.mod164.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i19.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.preheader
  %lcmp.mod165 = icmp ne i32 %xtraiter162, 0
  call void @llvm.assume(i1 %lcmp.mod165)
  br label %.lr.ph.i19.i.i.i.epil

.lr.ph.i19.i.i.i.epil:                            ; preds = %.lr.ph.i19.i.i.i.epil, %.lr.ph.i19.i.i.i.epil.preheader
  %epil.iter163 = phi i32 [ 0, %.lr.ph.i19.i.i.i.epil.preheader ], [ %epil.iter163.next, %.lr.ph.i19.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  %epil.iter163.next = add i32 %epil.iter163, 1   ; 2 uses
  %epil.iter163.cmp.not = icmp eq i32 %epil.iter163.next, %xtraiter162
  br i1 %epil.iter163.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i19.i.i.i.epil, !llvm.loop !19

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.epil, %bb.n, %bb.o
  %i.ap = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i.backedge

bb.p:                                             ; preds = %bb.l
  %i.aq = cmpxchg weak ptr %.val6, i64 %i.t, i64 %.sroa.01.0.i.i.i seq_cst acquire, align 8, !noalias !14
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.aq, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.i.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i.i.i, i32 6) ; 2 uses
  %7 = mul nuw nsw i32 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %.not.i23.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i23.i.i.i, label %.backedge.i.i.i.backedge, label %.lr.ph.i24.i.i.i.preheader

.lr.ph.i24.i.i.i.preheader:                       ; preds = %bb.q
  %xtraiter156 = and i32 %7, 5                    ; 3 uses
  %i.ar = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.ar, label %.lr.ph.i24.i.i.i.epil.preheader, label %.lr.ph.i24.i.i.i.preheader.new

.lr.ph.i24.i.i.i.preheader.new:                   ; preds = %.lr.ph.i24.i.i.i.preheader
  %unroll_iter160 = and i32 %7, 56
  br label %.lr.ph.i24.i.i.i

._crit_edge.loopexit.i.i.i.i.unr-lcssa:           ; preds = %.lr.ph.i24.i.i.i
  %lcmp.mod158.not = icmp eq i32 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i24.i.i.i.epil.preheader

.lr.ph.i24.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i.i.unr-lcssa, %.lr.ph.i24.i.i.i.preheader
  %lcmp.mod159 = icmp ne i32 %xtraiter156, 0
  call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i24.i.i.i.epil

.lr.ph.i24.i.i.i.epil:                            ; preds = %.lr.ph.i24.i.i.i.epil, %.lr.ph.i24.i.i.i.epil.preheader
  %epil.iter157 = phi i32 [ 0, %.lr.ph.i24.i.i.i.epil.preheader ], [ %epil.iter157.next, %.lr.ph.i24.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i24.i.i.i.epil, !llvm.loop !20

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i24.i.i.i.epil, %._crit_edge.loopexit.i.i.i.i.unr-lcssa
  %i.as = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i.backedge

.backedge.i.i.i.backedge:                         ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i
  %.sroa.0.034.i.i.i.be = phi i32 [ %i.ab, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i ], [ %i.ap, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i ], [ %i.as, %._crit_edge.loopexit.i.i.i.i ], [ 1, %bb.q ]
  br label %.backedge.i.i.i

.lr.ph.i24.i.i.i:                                 ; preds = %.lr.ph.i24.i.i.i, %.lr.ph.i24.i.i.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i24.i.i.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i24.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.i.i.unr-lcssa, label %.lr.ph.i24.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.at = icmp eq i64 %i.w, 30
  br i1 %i.at, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 11408 ; 2 uses
  %i.av = load atomic ptr, ptr %i.au acquire, align 8, !noalias !14 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.lr.ph.i27.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i

.lr.ph.i27.i.i.i:                                 ; preds = %bb.s, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %.sroa.0.02.i28.i.i.i = phi i32 [ %i.ba, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.ax = icmp ult i32 %.sroa.0.02.i28.i.i.i, 7
  br i1 %i.ax, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i27.i.i.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit

bb.u:                                             ; preds = %.lr.ph.i27.i.i.i
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i28.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.u
  %i.ay = mul nuw i32 %.sroa.0.02.i28.i.i.i, %.sroa.0.02.i28.i.i.i ; 2 uses
  %xtraiter174 = and i32 %i.ay, 7                 ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02.i28.i.i.i, 3
  br i1 %i.az, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter178 = and i32 %i.ay, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter179 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter179.next.7, %.lr.ph.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  %niter179.next.7 = add i32 %niter179, 8         ; 2 uses
  %niter179.ncmp.7 = icmp eq i32 %niter179.next.7, %unroll_iter178
  br i1 %niter179.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod176.not = icmp eq i32 %xtraiter174, 0
  br i1 %lcmp.mod176.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod177 = icmp ne i32 %xtraiter174, 0
  call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter175 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter175.next, %.lr.ph.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  %epil.iter175.next = add i32 %epil.iter175, 1   ; 2 uses
  %epil.iter175.cmp.not = icmp eq i32 %epil.iter175.next, %xtraiter174
  br i1 %epil.iter175.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !21

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.t, %bb.u
  %i.ba = add i32 %.sroa.0.02.i28.i.i.i, 1
  %i.bb = load atomic ptr, ptr %i.au acquire, align 8, !noalias !14 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.lr.ph.i27.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.s
  %.lcssa.i.i.i.i = phi ptr [ %i.av, %bb.s ], [ %i.bb, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ] ; 2 uses
  %i.bd = and i64 %.sroa.01.0.i.i.i, -2
  %i.be = add i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i, i64 11408
  %i.bg = load atomic ptr, ptr %i.bf monotonic, align 8, !noalias !14
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = zext i1 %i.bh to i64
  %spec.select17.i.i.i = or disjoint i64 %i.be, %i.bi
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.n release, align 8, !noalias !14
  store atomic i64 %spec.select17.i.i.i, ptr %.val6 release, align 8, !noalias !14
  br label %bb.v

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.k
  store i8 0, ptr %.sroa.433.0..sroa_idx.i.i, align 8, !alias.scope !22
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i

bb.v:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.r
  %i.bj = getelementptr inbounds nuw [368 x i8], ptr %i.u, i64 %i.w ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 352 ; 3 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8, !noalias !23
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i3.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i

.lr.ph.i.i3.i.i:                                  ; preds = %bb.v, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i
  %.sroa.0.02.i.i4.i.i = phi i32 [ %i.br, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i ], [ 0, %bb.v ] ; 6 uses
  %i.bo = icmp ult i32 %.sroa.0.02.i.i4.i.i, 7
  br i1 %i.bo, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i3.i.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i.i3.i.i
  %.not.i.i.i6.i.i = icmp eq i32 %.sroa.0.02.i.i4.i.i, 0
  br i1 %.not.i.i.i6.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.preheader

.lr.ph.i.i.i7.i.i.preheader:                      ; preds = %bb.x
  %i.bp = mul nuw i32 %.sroa.0.02.i.i4.i.i, %.sroa.0.02.i.i4.i.i ; 2 uses
  %xtraiter180 = and i32 %i.bp, 7                 ; 3 uses
  %i.bq = icmp ult i32 %.sroa.0.02.i.i4.i.i, 3
  br i1 %i.bq, label %.lr.ph.i.i.i7.i.i.epil.preheader, label %.lr.ph.i.i.i7.i.i.preheader.new

.lr.ph.i.i.i7.i.i.preheader.new:                  ; preds = %.lr.ph.i.i.i7.i.i.preheader
  %unroll_iter184 = and i32 %i.bp, 56
  br label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i7.i.i, %.lr.ph.i.i.i7.i.i.preheader.new
  %niter185 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.preheader.new ], [ %niter185.next.7, %.lr.ph.i.i.i7.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !23
  call void @llvm.x86.sse2.pause(), !noalias !23
  call void @llvm.x86.sse2.pause(), !noalias !23
  call void @llvm.x86.sse2.pause(), !noalias !23
  call void @llvm.x86.sse2.pause(), !noalias !23
  call void @llvm.x86.sse2.pause(), !noalias !23
  call void @llvm.x86.sse2.pause(), !noalias !23
  call void @llvm.x86.sse2.pause(), !noalias !23
  %niter185.next.7 = add i32 %niter185, 8         ; 2 uses
  %niter185.ncmp.7 = icmp eq i32 %niter185.next.7, %unroll_iter184
  br i1 %niter185.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i7.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7.i.i
  %lcmp.mod182.not = icmp eq i32 %xtraiter180, 0
  br i1 %lcmp.mod182.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil.preheader

.lr.ph.i.i.i7.i.i.epil.preheader:                 ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.preheader
  %lcmp.mod183 = icmp ne i32 %xtraiter180, 0
  call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph.i.i.i7.i.i.epil

.lr.ph.i.i.i7.i.i.epil:                           ; preds = %.lr.ph.i.i.i7.i.i.epil, %.lr.ph.i.i.i7.i.i.epil.preheader
  %epil.iter181 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.epil.preheader ], [ %epil.iter181.next, %.lr.ph.i.i.i7.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !23
  %epil.iter181.next = add i32 %epil.iter181, 1   ; 2 uses
  %epil.iter181.cmp.not = icmp eq i32 %epil.iter181.next, %xtraiter180
  br i1 %epil.iter181.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil, !llvm.loop !26

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.epil, %bb.w, %bb.x
  %i.br = add i32 %.sroa.0.02.i.i4.i.i, 1
  %i.bs = load atomic i64, ptr %i.bk acquire, align 8, !noalias !23
  %i.bt = and i64 %i.bs, 1
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i.i3.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i

end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect:bb.a

bb.o:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [16 x i8], align 8          ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uECs7p2uQeJxui2_9deltalake.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !11876)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !11876 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !11876 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11876
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.v = mul nuw i32 %.sroa.0.034.i, %.sroa.0.034.i ; 2 uses
  %xtraiter92 = and i32 %i.v, 7                   ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter96 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter97 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter97.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  %niter97.next.7 = add i32 %niter97, 8           ; 2 uses
  %niter97.ncmp.7 = icmp eq i32 %niter97.next.7, %unroll_iter96
  br i1 %niter97.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod94.not = icmp eq i32 %xtraiter92, 0
  br i1 %lcmp.mod94.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter92, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter93 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter93.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11876
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !11879

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.x = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.f:                                             ; preds = %.backedge.i
  %i.y = add i64 %i.p, 2                          ; 2 uses
  %i.z = and i64 %i.p, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  fence seq_cst
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !11876 ; 3 uses
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.r, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.unshifted.i = xor i64 %i.ab, %i.p
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %i.ae = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.y, %i.ae
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.af = and i64 %i.ab, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCs7p2uQeJxui2_9deltalake.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.y, %bb.f ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ah = icmp eq ptr %i.q, null
  br i1 %i.ah, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11876
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i

bb.m:                                             ; preds = %bb.k
  %.not.i18.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i18.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.m
  %i.aj = mul nuw i32 %.sroa.0.034.i, %.sroa.0.034.i ; 2 uses
  %xtraiter86 = and i32 %i.aj, 7                  ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.ak, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter90 = and i32 %i.aj, 56
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter91 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter91.next.7, %.lr.ph.i19.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  %niter91.next.7 = add i32 %niter91, 8           ; 2 uses
  %niter91.ncmp.7 = icmp eq i32 %niter91.next.7, %unroll_iter90
  br i1 %niter91.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, label %.lr.ph.i19.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i
  %lcmp.mod88.not = icmp eq i32 %xtraiter86, 0
  br i1 %lcmp.mod88.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil.preheader

.lr.ph.i19.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.preheader
  %lcmp.mod89 = icmp ne i32 %xtraiter86, 0
  call void @llvm.assume(i1 %lcmp.mod89)
  br label %.lr.ph.i19.i.epil

.lr.ph.i19.i.epil:                                ; preds = %.lr.ph.i19.i.epil, %.lr.ph.i19.i.epil.preheader
  %epil.iter87 = phi i32 [ 0, %.lr.ph.i19.i.epil.preheader ], [ %epil.iter87.next, %.lr.ph.i19.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11876
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !11880

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !11876
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.am, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i23.i, label %.backedge.i.backedge, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
  %xtraiter = and i32 %4, 5                       ; 3 uses
  %i.an = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.an, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %4, 56
  br label %.lr.ph.i24.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i24.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil.preheader

.lr.ph.i24.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i24.i.preheader
  %lcmp.mod85 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod85)
  br label %.lr.ph.i24.i.epil

.lr.ph.i24.i.epil:                                ; preds = %.lr.ph.i24.i.epil, %.lr.ph.i24.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11876
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !11881

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ao = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ao, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.ap = icmp eq i64 %i.s, 30
  br i1 %i.ap, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 992 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !11876 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i28.i = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11876
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i27.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i28.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.au = mul nuw i32 %.sroa.0.02.i28.i, %.sroa.0.02.i28.i ; 2 uses
  %xtraiter98 = and i32 %i.au, 7                  ; 3 uses
  %i.av = icmp ult i32 %.sroa.0.02.i28.i, 3
  br i1 %i.av, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter102 = and i32 %i.au, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  call void @llvm.x86.sse2.pause(), !noalias !11876
  %niter103.next.7 = add i32 %niter103, 8         ; 2 uses
  %niter103.ncmp.7 = icmp eq i32 %niter103.next.7, %unroll_iter102
  br i1 %niter103.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod100.not = icmp eq i32 %xtraiter98, 0
  br i1 %lcmp.mod100.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod101 = icmp ne i32 %xtraiter98, 0
  call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter99 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter99.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11876
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !11882

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.aw = add i32 %.sroa.0.02.i28.i, 1
  %i.ax = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !11876 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.ar, %bb.q ], [ %i.ax, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.az = and i64 %.sroa.01.0.i, -2
  %i.ba = add i64 %i.az, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 992
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8, !noalias !11876
  %i.bd = icmp ne ptr %i.bc, null
  %i.be = zext i1 %i.bd to i64
  %spec.select17.i = or disjoint i64 %i.ba, %i.be
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !11876
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !11876
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i
  %i.bf = load i32, ptr %i.i, align 8, !range !6, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bf, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !11876
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !11876
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !11883
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bo, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11883
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.v:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.v
  %i.bm = mul nuw i32 %.sroa.0.02.i.i4, %.sroa.0.02.i.i4 ; 2 uses
  %xtraiter104 = and i32 %i.bm, 7                 ; 3 uses
  %i.bn = icmp ult i32 %.sroa.0.02.i.i4, 3
  br i1 %i.bn, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter108 = and i32 %i.bm, 56
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter109 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter109.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !11883
  call void @llvm.x86.sse2.pause(), !noalias !11883
  call void @llvm.x86.sse2.pause(), !noalias !11883
  call void @llvm.x86.sse2.pause(), !noalias !11883
  call void @llvm.x86.sse2.pause(), !noalias !11883
  call void @llvm.x86.sse2.pause(), !noalias !11883
  call void @llvm.x86.sse2.pause(), !noalias !11883
  call void @llvm.x86.sse2.pause(), !noalias !11883
  %niter109.next.7 = add i32 %niter109, 8         ; 2 uses
  %niter109.ncmp.7 = icmp eq i32 %niter109.next.7, %unroll_iter108
  br i1 %niter109.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod106.not = icmp eq i32 %xtraiter104, 0
  br i1 %lcmp.mod106.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod107 = icmp ne i32 %xtraiter104, 0
  call void @llvm.assume(i1 %lcmp.mod107)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter105 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter105.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11883
  %epil.iter105.next = add i32 %epil.iter105, 1   ; 2 uses
  %epil.iter105.cmp.not = icmp eq i32 %epil.iter105.next, %xtraiter104
  br i1 %epil.iter105.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !11886

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.v, %bb.u
  %i.bo = add i32 %.sroa.0.02.i.i4, 1
  %i.bp = load atomic i64, ptr %i.bh acquire, align 8, !noalias !11883
  %i.bq = and i64 %i.bp, 1
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10disconnectCs7p2uQeJxui2_9deltalake:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.6.i.i = alloca [24 x i8], align 8        ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 17 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 10 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.at
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, ptr noundef nonnull align 128 %.8.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v, i64 undef, i32 noundef 1000000000)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.cy

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12060)
  %i.x = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 5 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8, !noalias !12062 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 5 uses
  %i.aa = load atomic ptr, ptr %i.z acquire, align 8, !noalias !12062
  %i.ab = and i64 %i.y, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.lr.ph.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.016.0.copyload36.i = load i64, ptr %i.u, align 8, !alias.scope !12060, !noalias !12057
  %.sroa.5.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx37.i, i64 16, i1 false), !noalias !12057
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.i

.lr.ph.lr.ph.i.i:                                 ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.outer.backedge.i.i, %.lr.ph.lr.ph.i.i
  %.sroa.03.0.ph78.i.i = phi i64 [ %i.y, %.lr.ph.lr.ph.i.i ], [ %i.bf, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.07.0.ph77.i.i = phi ptr [ %i.aa, %.lr.ph.lr.ph.i.i ], [ %i.bg, %.outer.backedge.i.i ]
  %.sroa.0.0.ph76.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i ], [ %.sroa.0.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.035.0.ph75.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i ], [ %.sroa.035.0.ph.be.i.i, %.outer.backedge.i.i ] ; 4 uses
  %i.ae = lshr exact i64 %.sroa.03.0.ph78.i.i, 1
  %i.af = and i64 %i.ae, 31                       ; 2 uses
  %i.ag = icmp eq i64 %i.af, 31
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i

bb.d:                                             ; preds = %.loopexit.i.i
  %i.ah = add i32 %.sroa.0.071.i77.i, 1           ; 2 uses
  %i.ai = lshr exact i64 %i.ap, 1
  %i.aj = and i64 %i.ai, 31                       ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 31
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.071.i77.i = phi i32 [ %i.ah, %bb.d ], [ %.sroa.0.0.ph76.i.i, %.lr.ph.i.i ] ; 6 uses
  %i.al = icmp ult i32 %.sroa.0.071.i77.i, 7
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i.i unwind label %.loopexit56.i.i, !noalias !12062

bb.f:                                             ; preds = %.lr.ph.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.071.i77.i, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f
  %i.am = mul nuw i32 %.sroa.0.071.i77.i, %.sroa.0.071.i77.i ; 2 uses
  %xtraiter = and i32 %i.am, 7                    ; 3 uses
  %i.an = icmp ult i32 %.sroa.0.071.i77.i, 3
  br i1 %i.an, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.am, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.03.073.i.lcssa.i = phi i64 [ %.sroa.03.0.ph78.i.i, %.lr.ph.i.i ], [ %i.ap, %bb.d ] ; 2 uses
  %.sroa.07.072.i.lcssa.i = phi ptr [ %.sroa.07.0.ph77.i.i, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %.sroa.0.071.i.lcssa.i = phi i32 [ %.sroa.0.0.ph76.i.i, %.lr.ph.i.i ], [ %i.ah, %bb.d ] ; 6 uses
  %.lcssa54.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %i.aj, %bb.d ] ; 2 uses
  %i.ao = icmp eq i64 %.lcssa54.i, 30             ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.0.ph75.i.i, null
  %or.cond.i.i = select i1 %i.ao, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod161 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !12065

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.f, %bb.e
  %i.ap = load atomic i64, ptr %i.x acquire, align 8, !noalias !12062 ; 3 uses
  %i.aq = load atomic ptr, ptr %i.z acquire, align 8, !noalias !12062
  %i.ar = and i64 %i.ap, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.d, label %.outer._crit_edge.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.g, %._crit_edge.i
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.0.ph75.i.i, %._crit_edge.i ], [ %i.au, %bb.g ] ; 9 uses
  %i.at = icmp eq ptr %.sroa.07.072.i.lcssa.i, null
  br i1 %i.at, label %bb.h, label %bb.m

bb.g:                                             ; preds = %._crit_edge.i
  %i.au = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEE13new_zeroed_inCs7p2uQeJxui2_9deltalake()
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %.body.loopexit.i, !noalias !12066

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.av = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEE13new_zeroed_inCs7p2uQeJxui2_9deltalake()
          to label %bb.i unwind label %.loopexit.split-lp.i.i, !noalias !12062 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.aw = cmpxchg ptr %i.z, ptr null, ptr %i.av release monotonic, align 8, !noalias !12062
  %i.ax = extractvalue { ptr, i1 } %i.aw, 1
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.av, ptr %i.ad release, align 8, !noalias !12062
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ay = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.ay, label %.outer.backedge.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 1000, i64 noundef 8) #27, !noalias !12062
  br label %.outer.backedge.i.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.072.i.lcssa.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.av, %bb.j ] ; 3 uses
  %i.az = add i64 %.sroa.03.073.i.lcssa.i, 2
  %i.ba = cmpxchg weak ptr %i.x, i64 %.sroa.03.073.i.lcssa.i, i64 %i.az seq_cst acquire, align 8, !noalias !12062
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ba, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.071.i.lcssa.i, i32 6) ; 2 uses
  %2 = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i ; 2 uses
  %.not.i24.i.i = icmp eq i32 %.sroa.0.071.i.lcssa.i, 0
  br i1 %.not.i24.i.i, label %.outer.backedge.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.n
  %xtraiter162 = and i32 %2, 5                    ; 3 uses
  %i.bb = icmp ult i32 %.sroa.0.071.i.lcssa.i, 3
  br i1 %i.bb, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter166 = and i32 %2, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  %epil.iter163.next = add i32 %epil.iter163, 1   ; 2 uses
  %epil.iter163.cmp.not = icmp eq i32 %epil.iter163.next, %xtraiter162
  br i1 %epil.iter163.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !12067

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i25.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.bc = add i32 %.sroa.0.071.i.lcssa.i, 1
  br label %.outer.backedge.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter167 = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter167.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  tail call void @llvm.x86.sse2.pause(), !noalias !12062
  %niter167.next.7 = add i32 %niter167, 8         ; 2 uses
  %niter167.ncmp.7 = icmp eq i32 %niter167.next.7, %unroll_iter166
  br i1 %niter167.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i25.i.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.ao, label %bb.p, label %.outer._crit_edge.i.i

bb.p:                                             ; preds = %bb.o
  %.not16.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not16.i.i, label %bb.q, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i, !prof !37

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #34
          to label %.noexc5.i unwind label %.body.loopexit.split-lp.i, !noalias !12066

.noexc5.i:                                        ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i: ; preds = %bb.p
  store atomic ptr %.sroa.035.2.i.i, ptr %i.z release, align 8, !noalias !12062
  %i.bd = atomicrmw add ptr %i.x, i64 2 release, align 8, !noalias !12062 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i, i64 992
  store atomic ptr %.sroa.035.2.i.i, ptr %i.be release, align 8, !noalias !12062
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.016.0.copyload42.i = load i64, ptr %i.u, align 8, !alias.scope !12060, !noalias !12057
  %.sroa.5.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx43.i, i64 16, i1 false), !noalias !12057
  br label %bb.t

.outer.backedge.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %bb.n, %bb.l, %bb.k
  %.sroa.035.0.ph.be.i.i = phi ptr [ %i.av, %bb.l ], [ %i.av, %bb.k ], [ %.sroa.035.2.i.i, %bb.n ], [ %.sroa.035.2.i.i, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i.i = phi i32 [ %.sroa.0.071.i.lcssa.i, %bb.l ], [ %.sroa.0.071.i.lcssa.i, %bb.k ], [ 1, %bb.n ], [ %i.bc, %._crit_edge.loopexit.i.i.i ]
  %i.bf = load atomic i64, ptr %i.x acquire, align 8, !noalias !12062 ; 2 uses
  %i.bg = load atomic ptr, ptr %i.z acquire, align 8, !noalias !12062
  %i.bh = and i64 %i.bf, 1
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i, label %.outer._crit_edge.i.i

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
  %i.bj = icmp eq ptr %.sroa.035.1.ph.i.i, null
  br i1 %i.bj, label %.body.thread.i, label %.thread47.i.i

.thread47.i.i:                                    ; preds = %bb.r
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.1.ph.i.i, i64 noundef 1000, i64 noundef 8) #27, !noalias !12062
  br label %.body.thread.i

.outer._crit_edge.i.i:                            ; preds = %.outer.backedge.i.i, %.loopexit.i.i, %bb.o
  %.sroa.9.0.i = phi i64 [ %.lcssa54.i, %bb.o ], [ 0, %.loopexit.i.i ], [ 0, %.outer.backedge.i.i ]
  %.sroa.412.0.i = phi ptr [ %.sroa.07.1.i.i, %bb.o ], [ null, %.loopexit.i.i ], [ null, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.o ], [ %.sroa.035.0.ph75.i.i, %.loopexit.i.i ], [ %.sroa.035.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %i.bk = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.bk, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i, label %bb.s

bb.s:                                             ; preds = %.outer._crit_edge.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 1000, i64 noundef 8) #27, !noalias !12062
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
  %.sroa.016.0.copyload.i = load i64, ptr %i.u, align 8, !alias.scope !12060, !noalias !12057 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i64 16, i1 false), !noalias !12057
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12071)
  %i.bl = icmp eq ptr %.sroa.412.0.i, null
  br i1 %i.bl, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.i, label %bb.t

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i
  %.sroa.016.0.copyload46.i = phi i64 [ %.sroa.016.0.copyload42.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i ], [ %.sroa.016.0.copyload.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.412.145.i = phi ptr [ %.sroa.07.1.i.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i ], [ %.sroa.412.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.9.144.i = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  %i.bm = icmp samesign ult i64 %.sroa.9.144.i, 31
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %.sroa.412.145.i, i64 %.sroa.9.144.i ; 3 uses
  store i64 %.sroa.016.0.copyload46.i, ptr %i.bn, align 8, !noalias !12073
  %.sroa.5.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx18.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !12073
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = atomicrmw or ptr %i.bo, i64 1 release, align 8, !noalias !12074 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.8.val, i64 312 ; 3 uses
  %i.br = load atomic i8, ptr %i.bq seq_cst, align 8, !noalias !12074
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %.noexc6.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.thread.i

.noexc6.i:                                        ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !12074
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 8 %i.bt), !noalias !12066
  call void @llvm.experimental.noalias.scope.decl(metadata !12075)
  %i.bu = load i64, ptr %i.r, align 8, !range !34, !alias.scope !12075, !noalias !12078, !noundef !3
  %i.bv = trunc nuw i64 %i.bu to i1
  br i1 %i.bv, label %bb.u, label %bb.z, !prof !37

bb.u:                                             ; preds = %.noexc6.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12080
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !12075, !noalias !12078, !nonnull !3, !align !39, !noundef !3
  %i.by = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bz = load i8, ptr %i.by, align 8, !range !40, !alias.scope !12075, !noalias !12078, !noundef !3
  store ptr %i.bx, ptr %i.p, align 8, !noalias !12080
  %i.ca = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 %i.bz, ptr %i.ca, align 8, !noalias !12080
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 43, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @247, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #34
          to label %bb.w unwind label %bb.v, !noalias !12081

bb.v:                                             ; preds = %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc5waker5WakerEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #37
          to label %common.resume unwind label %bb.x, !noalias !12081

bb.w:                                             ; preds = %bb.u
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !12081
  unreachable

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryEECs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.ah, %.noexc5.i.i.i, %bb.af, %.lr.ph.i.preheader.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.cf, i8 %i.ch) #37
          to label %common.resume unwind label %bb.ap, !noalias !12074

bb.z:                                             ; preds = %.noexc6.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !12075, !noalias !12078, !nonnull !3, !align !39, !noundef !3 ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ch = load i8, ptr %i.cg, align 8, !range !40, !alias.scope !12075, !noalias !12078, !noundef !3 ; 2 uses
  %i.ci = trunc nuw i8 %i.ch to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12074
  %i.cj = load atomic i8, ptr %i.bq seq_cst, align 8, !noalias !12074
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.aa, label %bb.al

bb.aa:                                            ; preds = %bb.z
end_hunk_2
