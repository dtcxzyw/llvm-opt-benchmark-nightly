inline.NumInlined: 7758
inline.NumDeleted: 2965
begin_hunk_0_@_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !noundef !3
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %.sink.split

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noundef !3
  %i.v = atomicrmw add ptr %i.s, i64 1 monotonic, align 8
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !noundef !3
  %i.ab = atomicrmw add ptr %i.y, i64 1 monotonic, align 8
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.ae, align 8
  br label %.sink.split

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !4291, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.1498, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !noundef !3 ; 19 uses
  switch i64 %i.b, label %default.unreachable13 [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.z
  ]

default.unreachable13:                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 520
  %i.e = atomicrmw sub ptr %i.d, i64 1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE20disconnect_receiversCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 %.val) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 528
  %i.i = atomicrmw xchg ptr %i.h, i8 1 acq_rel, align 1
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEEEECs7p2uQeJxui2_9deltalake(ptr nonnull %.val)
  br label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 392
  %i.l = atomicrmw sub ptr %i.k, i64 1 acq_rel, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 3 uses
  %i.o = atomicrmw or ptr %i.n, i64 1 seq_cst, align 8
  %i.p = and i64 %i.o, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %_RNCNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i

bb.g:                                             ; preds = %bb.f
  %i.r = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.s = and i64 %i.r, 62
  %i.t = icmp eq i64 %i.s, 62
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.g ] ; 4 uses
  %.sroa.0.04044.i.i.i.i = phi i32 [ %i.z, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.g ] ; 4 uses
  %i.u = shl i32 %.sroa.0.04044.i.i.i.i, 1
  %i.v = or i32 %i.u, 1
  %i.w = icmp ult i32 %.sroa.0.04044.i.i.i.i, 7
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.04044.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i
  %i.x = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.y = icmp ult i32 %i.x, 7
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod23 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !12697

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.i, %bb.h
  %i.z = add i32 %.sroa.0.04044.i.i.i.i, 1        ; 2 uses
  %i.aa = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.ab = and i64 %i.aa, 62
  %i.ac = icmp eq i64 %i.ab, 62
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.v
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.g
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %i.r, %bb.g ], [ %i.aa, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ]
  %.sroa.0.040.lcssa.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.z, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ] ; 4 uses
  %i.ad = lshr i64 %.sroa.0.0.lcssa.i.i.i.i, 1    ; 3 uses
  %i.ae = load atomic i64, ptr %.val acquire, align 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.ag = atomicrmw xchg ptr %i.af, ptr null acq_rel, align 8 ; 2 uses
  %i.ah = lshr i64 %i.ae, 1                       ; 3 uses
  %i.ai = icmp ne i64 %i.ah, %i.ad
  %i.aj = icmp eq ptr %i.ag, null
  %or.cond.i.i.i.i = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.preheader.i.i.i.i.preheader:                     ; preds = %._crit_edge.i.i.i.i
  %i.ak = mul i32 %.sroa.0.040.lcssa.i.i.i.i, %.sroa.0.040.lcssa.i.i.i.i
  %i.al = shl i32 %.sroa.0.040.lcssa.i.i.i.i, 1
  %i.am = or disjoint i32 %i.al, 1
  br label %.preheader.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.011.0.i.i.i.i = phi ptr [ %i.ag, %._crit_edge.i.i.i.i ], [ %i.at, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i ] ; 2 uses
  %.not46.i.i.i.i = icmp eq i64 %i.ah, %i.ad
  br i1 %.not46.i.i.i.i, label %._crit_edge51.i.i.i.i, label %.lr.ph50.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i
  %loop-unroll.iv24 = phi i32 [ %i.ak, %.preheader.i.i.i.i.preheader ], [ %loop-unroll.iv.next25, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader.i.i.i.i.preheader ], [ %indvar.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.0.040.lcssa.i.i.i.i, %.preheader.i.i.i.i.preheader ], [ %i.as, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i ] ; 3 uses
  %i.an = shl i32 %indvar, 1
  %i.ao = add i32 %i.am, %i.an
  %i.ap = icmp ult i32 %.sroa.0.1.i.i.i.i, 7
  br i1 %i.ap, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i

bb.k:                                             ; preds = %.preheader.i.i.i.i
  %.not.i21.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i, 0
  br i1 %.not.i21.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, label %.lr.ph.i22.i.i.i.i.preheader

.lr.ph.i22.i.i.i.i.preheader:                     ; preds = %bb.k
  %i.aq = add i32 %loop-unroll.iv24, -1
  %xtraiter26 = and i32 %loop-unroll.iv24, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i22.i.i.i.i.epil.preheader, label %.lr.ph.i22.i.i.i.i.preheader.new

.lr.ph.i22.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i22.i.i.i.i.preheader
  %unroll_iter30 = and i32 %loop-unroll.iv24, -8
  br label %.lr.ph.i22.i.i.i.i

.lr.ph.i22.i.i.i.i:                               ; preds = %.lr.ph.i22.i.i.i.i, %.lr.ph.i22.i.i.i.i.preheader.new
  %niter31 = phi i32 [ 0, %.lr.ph.i22.i.i.i.i.preheader.new ], [ %niter31.next.7, %.lr.ph.i22.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter31.next.7 = add i32 %niter31, 8           ; 2 uses
  %niter31.ncmp.7 = icmp eq i32 %niter31.next.7, %unroll_iter30
  br i1 %niter31.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i22.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i.i.i.i
  %lcmp.mod28.not = icmp eq i32 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, label %.lr.ph.i22.i.i.i.i.epil.preheader

.lr.ph.i22.i.i.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i22.i.i.i.i.preheader
  %lcmp.mod29 = icmp ne i32 %xtraiter26, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %.lr.ph.i22.i.i.i.i.epil

.lr.ph.i22.i.i.i.i.epil:                          ; preds = %.lr.ph.i22.i.i.i.i.epil, %.lr.ph.i22.i.i.i.i.epil.preheader
  %epil.iter27 = phi i32 [ 0, %.lr.ph.i22.i.i.i.i.epil.preheader ], [ %epil.iter27.next, %.lr.ph.i22.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter27.next = add i32 %epil.iter27, 1     ; 2 uses
  %epil.iter27.cmp.not = icmp eq i32 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, label %.lr.ph.i22.i.i.i.i.epil, !llvm.loop !12698

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i22.i.i.i.i.epil, %bb.k, %bb.j
  %i.as = add i32 %.sroa.0.1.i.i.i.i, 1
  %i.at = atomicrmw xchg ptr %i.af, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i = icmp eq ptr %i.at, null
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next25 = add i32 %loop-unroll.iv24, %i.ao
  br i1 %.old2.i.i.i.i, label %.preheader.i.i.i.i, label %.loopexit.i.i.i.i

._crit_edge51.i.i.i.i:                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.011.2.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ %i.ae, %.loopexit.i.i.i.i ], [ %i.cf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ]
  %i.au = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i, null
  br i1 %i.au, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.l

.lr.ph50.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.av = phi i64 [ %i.cg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.ah, %.loopexit.i.i.i.i ]
  %.sroa.05.048.i.i.i.i = phi i64 [ %i.cf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.ae, %.loopexit.i.i.i.i ]
  %.sroa.011.147.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %.sroa.011.0.i.i.i.i, %.loopexit.i.i.i.i ] ; 10 uses
  %i.aw = and i64 %i.av, 31                       ; 2 uses
  %.not19.i.i.i.i = icmp eq i64 %i.aw, 31
  br i1 %.not19.i.i.i.i, label %bb.m, label %bb.p

bb.l:                                             ; preds = %._crit_edge51.i.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i, i64 noundef 1000, i64 noundef 8) #27
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.m:                                             ; preds = %.lr.ph50.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.011.147.i.i.i.i, i64 992 ; 3 uses
  %i.ay = load atomic ptr, ptr %i.ax acquire, align 8
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.lr.ph.i26.i.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

.lr.ph.i26.i.i.i.i:                               ; preds = %bb.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i
  %loop-unroll.iv40 = phi i32 [ %loop-unroll.iv.next41, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i ], [ 0, %bb.m ] ; 4 uses
  %.sroa.0.02.i27.i.i.i.i = phi i32 [ %i.bf, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i ], [ 0, %bb.m ] ; 4 uses
  %i.ba = shl i32 %.sroa.0.02.i27.i.i.i.i, 1
  %i.bb = or i32 %i.ba, 1
  %i.bc = icmp ult i32 %.sroa.0.02.i27.i.i.i.i, 7
  br i1 %i.bc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i26.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i26.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i27.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.o
  %i.bd = add i32 %loop-unroll.iv40, -1
  %xtraiter42 = and i32 %loop-unroll.iv40, 7      ; 3 uses
  %i.be = icmp ult i32 %i.bd, 7
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter46 = and i32 %loop-unroll.iv40, -8
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %niter47 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter47.next.7, %.lr.ph.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter47.next.7 = add i32 %niter47, 8           ; 2 uses
  %niter47.ncmp.7 = icmp eq i32 %niter47.next.7, %unroll_iter46
  br i1 %niter47.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod44.not = icmp eq i32 %xtraiter42, 0
  br i1 %lcmp.mod44.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %lcmp.mod45 = icmp ne i32 %xtraiter42, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %epil.iter43 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ], [ %epil.iter43.next, %.lr.ph.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter43.next = add i32 %epil.iter43, 1     ; 2 uses
  %epil.iter43.cmp.not = icmp eq i32 %epil.iter43.next, %xtraiter42
  br i1 %epil.iter43.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !12699

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil, %bb.o, %bb.n
  %i.bf = add i32 %.sroa.0.02.i27.i.i.i.i, 1
  %i.bg = load atomic ptr, ptr %i.ax acquire, align 8
  %i.bh = icmp eq ptr %i.bg, null
  %loop-unroll.iv.next41 = add i32 %loop-unroll.iv40, %i.bb
  br i1 %i.bh, label %.lr.ph.i26.i.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, %bb.m
  %i.bi = load atomic ptr, ptr %i.ax acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.147.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.147.i.i.i.i, i64 noundef 1000, i64 noundef 8) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.p:                                             ; preds = %.lr.ph50.i.i.i.i
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.147.i.i.i.i, i64 %i.aw ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i28.i.i.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

.lr.ph.i28.i.i.i.i:                               ; preds = %bb.p, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i
  %loop-unroll.iv32 = phi i32 [ %loop-unroll.iv.next33, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i ], [ 0, %bb.p ] ; 4 uses
  %.sroa.0.02.i29.i.i.i.i = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i ], [ 0, %bb.p ] ; 4 uses
  %i.bo = shl i32 %.sroa.0.02.i29.i.i.i.i, 1
  %i.bp = or i32 %i.bo, 1
  %i.bq = icmp ult i32 %.sroa.0.02.i29.i.i.i.i, 7
  br i1 %i.bq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i28.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i28.i.i.i.i
  %.not.i.i31.i.i.i.i = icmp eq i32 %.sroa.0.02.i29.i.i.i.i, 0
  br i1 %.not.i.i31.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i, label %.lr.ph.i.i32.i.i.i.i.preheader

.lr.ph.i.i32.i.i.i.i.preheader:                   ; preds = %bb.r
  %i.br = add i32 %loop-unroll.iv32, -1
  %xtraiter34 = and i32 %loop-unroll.iv32, 7      ; 3 uses
  %i.bs = icmp ult i32 %i.br, 7
  br i1 %i.bs, label %.lr.ph.i.i32.i.i.i.i.epil.preheader, label %.lr.ph.i.i32.i.i.i.i.preheader.new

.lr.ph.i.i32.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i32.i.i.i.i.preheader
  %unroll_iter38 = and i32 %loop-unroll.iv32, -8
  br label %.lr.ph.i.i32.i.i.i.i

.lr.ph.i.i32.i.i.i.i:                             ; preds = %.lr.ph.i.i32.i.i.i.i, %.lr.ph.i.i32.i.i.i.i.preheader.new
end_hunk_0
begin_hunk_1_@_RNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a

_RNCNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %.val, i64 400
  %i.cj = atomicrmw xchg ptr %i.ci, i8 1 acq_rel, align 1
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit, label %bb.y

bb.y:                                             ; preds = %_RNCNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.val, ptr %i.a, align 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_4list7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.z:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.cm = atomicrmw sub ptr %i.cl, i64 1 acq_rel, align 8
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.aa, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10disconnectCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %.val)
  %i.co = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.cp = atomicrmw xchg ptr %i.co, i8 1 acq_rel, align 1
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5WakerECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.cr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5WakerECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.ct) #37
          to label %bb.af unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5WakerECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.cv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cw, %bb.ae ], [ %i.cs, %bb.ac ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 136, i64 noundef 8) #27
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 136, i64 noundef 8) #27
  br label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEEEECs7p2uQeJxui2_9deltalake.exit.i, %bb.aa, %bb.z, %bb.y, %_RNCNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !noundef !3 ; 19 uses
  switch i64 %i.b, label %default.unreachable13 [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.u
  ]

default.unreachable13:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 520
  %i.e = atomicrmw sub ptr %i.d, i64 1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE20disconnect_receiversCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 %.val) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 528
  %i.i = atomicrmw xchg ptr %i.h, i8 1 acq_rel, align 1
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEEEECs7p2uQeJxui2_9deltalake(ptr nonnull %.val)
  br label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 392
  %i.l = atomicrmw sub ptr %i.k, i64 1 acq_rel, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 3 uses
  %i.o = atomicrmw or ptr %i.n, i64 1 seq_cst, align 8
  %i.p = and i64 %i.o, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %_RNCNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i

bb.g:                                             ; preds = %bb.f
  %i.r = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.s = and i64 %i.r, 62
  %i.t = icmp eq i64 %i.s, 62
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.g ] ; 4 uses
  %.sroa.0.04042.i.i.i.i = phi i32 [ %i.z, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.g ] ; 4 uses
  %i.u = shl i32 %.sroa.0.04042.i.i.i.i, 1
  %i.v = or i32 %i.u, 1
  %i.w = icmp ult i32 %.sroa.0.04042.i.i.i.i, 7
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.04042.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i
  %i.x = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.y = icmp ult i32 %i.x, 7
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod23 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !12718

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.i, %bb.h
  %i.z = add i32 %.sroa.0.04042.i.i.i.i, 1        ; 2 uses
  %i.aa = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.ab = and i64 %i.aa, 62
  %i.ac = icmp eq i64 %i.ab, 62
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.v
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.g
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %i.r, %bb.g ], [ %i.aa, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ]
  %.sroa.0.040.lcssa.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.z, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ] ; 4 uses
  %i.ad = lshr i64 %.sroa.0.0.lcssa.i.i.i.i, 1    ; 3 uses
  %i.ae = load atomic i64, ptr %.val acquire, align 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.ag = atomicrmw xchg ptr %i.af, ptr null acq_rel, align 8 ; 2 uses
  %i.ah = lshr i64 %i.ae, 1                       ; 3 uses
  %i.ai = icmp ne i64 %i.ah, %i.ad
  %i.aj = icmp eq ptr %i.ag, null
  %or.cond.i.i.i.i = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.preheader.i.i.i.i.preheader:                     ; preds = %._crit_edge.i.i.i.i
  %i.ak = mul i32 %.sroa.0.040.lcssa.i.i.i.i, %.sroa.0.040.lcssa.i.i.i.i
  %i.al = shl i32 %.sroa.0.040.lcssa.i.i.i.i, 1
  %i.am = or disjoint i32 %i.al, 1
  br label %.preheader.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.011.0.i.i.i.i = phi ptr [ %i.ag, %._crit_edge.i.i.i.i ], [ %i.at, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i ] ; 2 uses
  %.not44.i.i.i.i = icmp eq i64 %i.ah, %i.ad
  br i1 %.not44.i.i.i.i, label %._crit_edge49.i.i.i.i, label %.lr.ph48.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i
  %loop-unroll.iv24 = phi i32 [ %i.ak, %.preheader.i.i.i.i.preheader ], [ %loop-unroll.iv.next25, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader.i.i.i.i.preheader ], [ %indvar.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.0.040.lcssa.i.i.i.i, %.preheader.i.i.i.i.preheader ], [ %i.as, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i ] ; 3 uses
  %i.an = shl i32 %indvar, 1
  %i.ao = add i32 %i.am, %i.an
  %i.ap = icmp ult i32 %.sroa.0.1.i.i.i.i, 7
  br i1 %i.ap, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i

bb.k:                                             ; preds = %.preheader.i.i.i.i
  %.not.i21.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i, 0
  br i1 %.not.i21.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, label %.lr.ph.i22.i.i.i.i.preheader

.lr.ph.i22.i.i.i.i.preheader:                     ; preds = %bb.k
  %i.aq = add i32 %loop-unroll.iv24, -1
  %xtraiter26 = and i32 %loop-unroll.iv24, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i22.i.i.i.i.epil.preheader, label %.lr.ph.i22.i.i.i.i.preheader.new

.lr.ph.i22.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i22.i.i.i.i.preheader
  %unroll_iter30 = and i32 %loop-unroll.iv24, -8
  br label %.lr.ph.i22.i.i.i.i

.lr.ph.i22.i.i.i.i:                               ; preds = %.lr.ph.i22.i.i.i.i, %.lr.ph.i22.i.i.i.i.preheader.new
  %niter31 = phi i32 [ 0, %.lr.ph.i22.i.i.i.i.preheader.new ], [ %niter31.next.7, %.lr.ph.i22.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter31.next.7 = add i32 %niter31, 8           ; 2 uses
  %niter31.ncmp.7 = icmp eq i32 %niter31.next.7, %unroll_iter30
  br i1 %niter31.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i22.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i.i.i.i
  %lcmp.mod28.not = icmp eq i32 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, label %.lr.ph.i22.i.i.i.i.epil.preheader

.lr.ph.i22.i.i.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i22.i.i.i.i.preheader
  %lcmp.mod29 = icmp ne i32 %xtraiter26, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %.lr.ph.i22.i.i.i.i.epil

.lr.ph.i22.i.i.i.i.epil:                          ; preds = %.lr.ph.i22.i.i.i.i.epil, %.lr.ph.i22.i.i.i.i.epil.preheader
  %epil.iter27 = phi i32 [ 0, %.lr.ph.i22.i.i.i.i.epil.preheader ], [ %epil.iter27.next, %.lr.ph.i22.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter27.next = add i32 %epil.iter27, 1     ; 2 uses
  %epil.iter27.cmp.not = icmp eq i32 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, label %.lr.ph.i22.i.i.i.i.epil, !llvm.loop !12719

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i22.i.i.i.i.epil, %bb.k, %bb.j
  %i.as = add i32 %.sroa.0.1.i.i.i.i, 1
  %i.at = atomicrmw xchg ptr %i.af, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i = icmp eq ptr %i.at, null
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next25 = add i32 %loop-unroll.iv24, %i.ao
  br i1 %.old2.i.i.i.i, label %.preheader.i.i.i.i, label %.loopexit.i.i.i.i

._crit_edge49.i.i.i.i:                            ; preds = %bb.s, %.loopexit.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.011.2.i.i.i.i, %bb.s ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ %i.ae, %.loopexit.i.i.i.i ], [ %i.bx, %bb.s ]
  %i.au = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i, null
  br i1 %i.au, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.l

.lr.ph48.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i, %bb.s
  %i.av = phi i64 [ %i.by, %bb.s ], [ %i.ah, %.loopexit.i.i.i.i ]
  %.sroa.05.046.i.i.i.i = phi i64 [ %i.bx, %bb.s ], [ %i.ae, %.loopexit.i.i.i.i ]
  %.sroa.011.145.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i, %bb.s ], [ %.sroa.011.0.i.i.i.i, %.loopexit.i.i.i.i ] ; 5 uses
  %i.aw = and i64 %i.av, 31                       ; 2 uses
  %.not19.i.i.i.i = icmp eq i64 %i.aw, 31
  br i1 %.not19.i.i.i.i, label %bb.m, label %bb.p

bb.l:                                             ; preds = %._crit_edge49.i.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i, i64 noundef 11424, i64 noundef 16) #27
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.m:                                             ; preds = %.lr.ph48.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i.i.i.i, i64 11408 ; 3 uses
  %i.ay = load atomic ptr, ptr %i.ax acquire, align 8
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.lr.ph.i26.i.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

.lr.ph.i26.i.i.i.i:                               ; preds = %bb.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i
  %loop-unroll.iv40 = phi i32 [ %loop-unroll.iv.next41, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i ], [ 0, %bb.m ] ; 4 uses
  %.sroa.0.02.i27.i.i.i.i = phi i32 [ %i.bf, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i ], [ 0, %bb.m ] ; 4 uses
  %i.ba = shl i32 %.sroa.0.02.i27.i.i.i.i, 1
  %i.bb = or i32 %i.ba, 1
  %i.bc = icmp ult i32 %.sroa.0.02.i27.i.i.i.i, 7
  br i1 %i.bc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i26.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i26.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i27.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.o
  %i.bd = add i32 %loop-unroll.iv40, -1
  %xtraiter42 = and i32 %loop-unroll.iv40, 7      ; 3 uses
  %i.be = icmp ult i32 %i.bd, 7
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter46 = and i32 %loop-unroll.iv40, -8
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %niter47 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter47.next.7, %.lr.ph.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter47.next.7 = add i32 %niter47, 8           ; 2 uses
  %niter47.ncmp.7 = icmp eq i32 %niter47.next.7, %unroll_iter46
  br i1 %niter47.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod44.not = icmp eq i32 %xtraiter42, 0
  br i1 %lcmp.mod44.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %lcmp.mod45 = icmp ne i32 %xtraiter42, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %epil.iter43 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ], [ %epil.iter43.next, %.lr.ph.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter43.next = add i32 %epil.iter43, 1     ; 2 uses
  %epil.iter43.cmp.not = icmp eq i32 %epil.iter43.next, %xtraiter42
  br i1 %epil.iter43.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !12720

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil, %bb.o, %bb.n
  %i.bf = add i32 %.sroa.0.02.i27.i.i.i.i, 1
  %i.bg = load atomic ptr, ptr %i.ax acquire, align 8
  %i.bh = icmp eq ptr %i.bg, null
  %loop-unroll.iv.next41 = add i32 %loop-unroll.iv40, %i.bb
  br i1 %i.bh, label %.lr.ph.i26.i.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, %bb.m
  %i.bi = load atomic ptr, ptr %i.ax acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i.i.i.i, i64 noundef 11424, i64 noundef 16) #27
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph48.i.i.i.i
  %i.bj = getelementptr inbounds nuw [368 x i8], ptr %.sroa.011.145.i.i.i.i, i64 %i.aw ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 352 ; 2 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i28.i.i.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

.lr.ph.i28.i.i.i.i:                               ; preds = %bb.p, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i
  %loop-unroll.iv32 = phi i32 [ %loop-unroll.iv.next33, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i ], [ 0, %bb.p ] ; 4 uses
  %.sroa.0.02.i29.i.i.i.i = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i ], [ 0, %bb.p ] ; 4 uses
  %i.bo = shl i32 %.sroa.0.02.i29.i.i.i.i, 1
  %i.bp = or i32 %i.bo, 1
  %i.bq = icmp ult i32 %.sroa.0.02.i29.i.i.i.i, 7
  br i1 %i.bq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i28.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i28.i.i.i.i
  %.not.i.i31.i.i.i.i = icmp eq i32 %.sroa.0.02.i29.i.i.i.i, 0
  br i1 %.not.i.i31.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i, label %.lr.ph.i.i32.i.i.i.i.preheader

.lr.ph.i.i32.i.i.i.i.preheader:                   ; preds = %bb.r
  %i.br = add i32 %loop-unroll.iv32, -1
  %xtraiter34 = and i32 %loop-unroll.iv32, 7      ; 3 uses
  %i.bs = icmp ult i32 %i.br, 7
  br i1 %i.bs, label %.lr.ph.i.i32.i.i.i.i.epil.preheader, label %.lr.ph.i.i32.i.i.i.i.preheader.new

.lr.ph.i.i32.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i32.i.i.i.i.preheader
  %unroll_iter38 = and i32 %loop-unroll.iv32, -8
  br label %.lr.ph.i.i32.i.i.i.i

.lr.ph.i.i32.i.i.i.i:                             ; preds = %.lr.ph.i.i32.i.i.i.i, %.lr.ph.i.i32.i.i.i.i.preheader.new
end_hunk_1
