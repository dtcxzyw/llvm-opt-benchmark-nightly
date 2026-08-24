Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.11?download=true
inline.NumInlined: 10475
inline.NumDeleted: 2844
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.br = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.br, ptr %0 release, align 128
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [88 x i8], align 8          ; 2 uses
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

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_IB2s_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB46_5error5ErrorENtNtB1D_6marker4SendEL_EEB51_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !28861)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !28861 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !28861 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28861
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
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
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
  call void @llvm.x86.sse2.pause(), !noalias !28861
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28864

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !28861 ; 3 uses
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
  br i1 %i.ag, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.y, %bb.f ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ah = icmp eq ptr %i.q, null
  br i1 %i.ah, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28861
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
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
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
  call void @llvm.x86.sse2.pause(), !noalias !28861
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !28865

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !28861
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
  call void @llvm.x86.sse2.pause(), !noalias !28861
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !28866

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ao = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ao, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.ap = icmp eq i64 %i.s, 30
  br i1 %i.ap, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 3472 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !28861 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_IB1M_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorENtNtBY_6marker4SendEL_EEB4k_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i28.i = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28861
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
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
  call void @llvm.x86.sse2.pause(), !noalias !28861
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
  call void @llvm.x86.sse2.pause(), !noalias !28861
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !28867

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.aw = add i32 %.sroa.0.02.i28.i, 1
  %i.ax = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !28861 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_IB1M_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorENtNtBY_6marker4SendEL_EEB4k_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_IB1M_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorENtNtBY_6marker4SendEL_EEB4k_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.ar, %bb.q ], [ %i.ax, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.az = and i64 %.sroa.01.0.i, -2
  %i.ba = add i64 %i.az, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3472
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8, !noalias !28861
  %i.bd = icmp ne ptr %i.bc, null
  %i.be = zext i1 %i.bd to i64
  %spec.select17.i = or disjoint i64 %i.ba, %i.be
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !28861
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !28861
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bf = load i32, ptr %i.i, align 8, !range !28611, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bf, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_IB1M_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorENtNtBY_6marker4SendEL_EEB4k_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !28861
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !28861
  %i.bg = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !28868
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_IB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3m_5error5ErrorENtNtBV_6marker4SendEL_EEB4h_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bo, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28868
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
  call void @llvm.x86.sse2.pause(), !noalias !28868
  call void @llvm.x86.sse2.pause(), !noalias !28868
  call void @llvm.x86.sse2.pause(), !noalias !28868
  call void @llvm.x86.sse2.pause(), !noalias !28868
  call void @llvm.x86.sse2.pause(), !noalias !28868
  call void @llvm.x86.sse2.pause(), !noalias !28868
  call void @llvm.x86.sse2.pause(), !noalias !28868
  call void @llvm.x86.sse2.pause(), !noalias !28868
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
  call void @llvm.x86.sse2.pause(), !noalias !28868
  %epil.iter105.next = add i32 %epil.iter105, 1   ; 2 uses
  %epil.iter105.cmp.not = icmp eq i32 %epil.iter105.next, %xtraiter104
  br i1 %epil.iter105.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !28871

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.v, %bb.u
  %i.bo = add i32 %.sroa.0.02.i.i4, 1
  %i.bp = load atomic i64, ptr %i.bh acquire, align 8, !noalias !28868
  %i.bq = and i64 %i.bp, 1
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ea = extractvalue { i64, i32 } %i.da, 1      ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 1000000000
  call void @llvm.assume(i1 %i.eb)
  %.not26 = icmp samesign ult i32 %i.ea, %i.bf
  br i1 %.not26, label %bb.ae, label %bb.as

bb.ar:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.db, %i.cz
  br i1 %.not25, label %bb.ae, label %bb.as

bb.as:                                            ; preds = %.split, %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ec, align 8
  br label %bb.at

bb.at:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.au, %bb.as
  %storemerge = phi i64 [ -9223372036854775742, %bb.as ], [ %.sroa.018.0.copyload, %bb.au ], [ -9223372036854775742, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ed, align 8
  br label %bb.at

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.419, i64 88, i1 false)
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [88 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !28920 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !28920
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.lr.ph.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload28 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx29, i64 88, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.backedge.i, %.lr.ph.lr.ph.i
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.ak, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.al, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.loopexit.i
  %i.k = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.l = lshr exact i64 %i.s, 1
  %i.m = and i64 %i.l, 31                         ; 2 uses
  %i.n = icmp eq i64 %i.m, 31
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %.sroa.0.077.i64 = phi i32 [ %i.k, %bb.b ], [ %.sroa.0.0.ph82.i, %.lr.ph.i ] ; 6 uses
  %i.o = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !28920

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.p = mul nuw i32 %.sroa.0.077.i64, %.sroa.0.077.i64 ; 2 uses
  %xtraiter = and i32 %i.p, 7                     ; 3 uses
  %i.q = icmp ult i32 %.sroa.0.077.i64, 3
  br i1 %i.q, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.p, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.s, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.k, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.r, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_IB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4a_5error5ErrorENtNtB4_6marker4SendEL_EEB55_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod155 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !28923

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.s = load atomic i64, ptr %i.a acquire, align 128, !noalias !28920 ; 3 uses
  %i.t = load atomic ptr, ptr %i.c acquire, align 8, !noalias !28920
  %i.u = and i64 %i.s, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_IB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4a_5error5ErrorENtNtB4_6marker4SendEL_EEB55_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.x, %bb.e ] ; 9 uses
  %i.w = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.w, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !28920
  %i.x = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !28920 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_IB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4a_5error5ErrorENtNtB4_6marker4SendEL_EEB55_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_IB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4a_5error5ErrorENtNtB4_6marker4SendEL_EEB55_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !28920
  %i.z = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !28920 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !28920

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = cmpxchg ptr %i.c, ptr null, ptr %i.z release monotonic, align 8, !noalias !28920
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.z, ptr %i.g release, align 8, !noalias !28920
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ad, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28920
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_IB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4a_5error5ErrorENtNtB4_6marker4SendEL_EEB55_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_IB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4a_5error5ErrorENtNtB4_6marker4SendEL_EEB55_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.z, %bb.i ] ; 3 uses
  %i.ae = add i64 %.sroa.03.079.i.lcssa, 2
  %i.af = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.ae seq_cst acquire, align 8, !noalias !28920
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.af, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %5, 5                    ; 3 uses
  %i.ag = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.ag, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %5, 56
  br label %.lr.ph.i28.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i28.i
  %lcmp.mod158.not = icmp eq i32 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil.preheader

.lr.ph.i28.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i28.i.preheader
  %lcmp.mod159 = icmp ne i32 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i28.i.epil

.lr.ph.i28.i.epil:                                ; preds = %.lr.ph.i28.i.epil, %.lr.ph.i28.i.epil.preheader
  %epil.iter157 = phi i32 [ 0, %.lr.ph.i28.i.epil.preheader ], [ %epil.iter157.next, %.lr.ph.i28.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !28924

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ah = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  tail call void @llvm.x86.sse2.pause(), !noalias !28920
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.r, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !28920
  %i.ai = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !28920 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3472
  store atomic ptr %.sroa.038.2.i, ptr %i.aj release, align 8, !noalias !28920
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx35, i64 88, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.z, %bb.k ], [ %i.z, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.ah, %._crit_edge.loopexit.i.i ]
  %i.ak = load atomic i64, ptr %i.a acquire, align 128, !noalias !28920 ; 2 uses
  %i.al = load atomic ptr, ptr %i.c acquire, align 8, !noalias !28920
  %i.am = and i64 %i.ak, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %.outer._crit_edge.i

.loopexit59.i:                                    ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit59.i
  %.sroa.038.1.ph.i = phi ptr [ %.sroa.038.0.ph81.i, %.loopexit59.i ], [ %.sroa.038.2.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit59.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.ao, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28920
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.ap, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28920
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread23:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28928)
  %i.aq = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aq, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.47.137 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.136 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.9.136, 31
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [112 x i8], ptr %.sroa.47.137, i64 %.sroa.9.136 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.as, align 16, !noalias !28925
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !noalias !28925
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.au = atomicrmw or ptr %i.at, i64 1 release, align 8, !noalias !28930 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.av) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !alias.scope !28930
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload30, -9223372036854775742
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.copyload30, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body21

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread23 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #54
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.br = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.br, ptr %0 release, align 128
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [88 x i8], align 8          ; 2 uses
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

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Y_5error5ErrorENtNtB1D_6marker4SendEL_EEB4z_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !28938)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !28938 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !28938 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28938
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
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
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
  call void @llvm.x86.sse2.pause(), !noalias !28938
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28941

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !28938 ; 3 uses
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
  br i1 %i.ag, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.y, %bb.f ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ah = icmp eq ptr %i.q, null
  br i1 %i.ah, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28938
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
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
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
  call void @llvm.x86.sse2.pause(), !noalias !28938
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !28942

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !28938
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
  call void @llvm.x86.sse2.pause(), !noalias !28938
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !28943

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ao = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ao, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.ap = icmp eq i64 %i.s, 30
  br i1 %i.ap, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 3472 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !28938 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3h_5error5ErrorENtNtBY_6marker4SendEL_EEB3S_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i28.i = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28938
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
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
  call void @llvm.x86.sse2.pause(), !noalias !28938
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
  call void @llvm.x86.sse2.pause(), !noalias !28938
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !28944

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.aw = add i32 %.sroa.0.02.i28.i, 1
  %i.ax = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !28938 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3h_5error5ErrorENtNtBY_6marker4SendEL_EEB3S_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3h_5error5ErrorENtNtBY_6marker4SendEL_EEB3S_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.ar, %bb.q ], [ %i.ax, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.az = and i64 %.sroa.01.0.i, -2
  %i.ba = add i64 %i.az, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3472
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8, !noalias !28938
  %i.bd = icmp ne ptr %i.bc, null
  %i.be = zext i1 %i.bd to i64
  %spec.select17.i = or disjoint i64 %i.ba, %i.be
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !28938
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !28938
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bf = load i32, ptr %i.i, align 8, !range !28611, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bf, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3h_5error5ErrorENtNtBY_6marker4SendEL_EEB3S_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !28938
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !28938
  %i.bg = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !28945
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3e_5error5ErrorENtNtBV_6marker4SendEL_EEB3P_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bo, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28945
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
  call void @llvm.x86.sse2.pause(), !noalias !28945
  call void @llvm.x86.sse2.pause(), !noalias !28945
  call void @llvm.x86.sse2.pause(), !noalias !28945
  call void @llvm.x86.sse2.pause(), !noalias !28945
  call void @llvm.x86.sse2.pause(), !noalias !28945
  call void @llvm.x86.sse2.pause(), !noalias !28945
  call void @llvm.x86.sse2.pause(), !noalias !28945
  call void @llvm.x86.sse2.pause(), !noalias !28945
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
  call void @llvm.x86.sse2.pause(), !noalias !28945
  %epil.iter105.next = add i32 %epil.iter105, 1   ; 2 uses
  %epil.iter105.cmp.not = icmp eq i32 %epil.iter105.next, %xtraiter104
  br i1 %epil.iter105.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !28948

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.v, %bb.u
  %i.bo = add i32 %.sroa.0.02.i.i4, 1
  %i.bp = load atomic i64, ptr %i.bh acquire, align 8, !noalias !28945
  %i.bq = and i64 %i.bp, 1
end_hunk_2
begin_hunk_3_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ea = extractvalue { i64, i32 } %i.da, 1      ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 1000000000
  call void @llvm.assume(i1 %i.eb)
  %.not26 = icmp samesign ult i32 %i.ea, %i.bf
  br i1 %.not26, label %bb.ae, label %bb.as

bb.ar:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.db, %i.cz
  br i1 %.not25, label %bb.ae, label %bb.as

bb.as:                                            ; preds = %.split, %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ec, align 8
  br label %bb.at

bb.at:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.au, %bb.as
  %storemerge = phi i64 [ -9223372036854775742, %bb.as ], [ %.sroa.018.0.copyload, %bb.au ], [ -9223372036854775742, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ed, align 8
  br label %bb.at

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.419, i64 88, i1 false)
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [88 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !28997 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !28997
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.lr.ph.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload28 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx29, i64 88, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.backedge.i, %.lr.ph.lr.ph.i
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.ak, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.al, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.loopexit.i
  %i.k = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.l = lshr exact i64 %i.s, 1
  %i.m = and i64 %i.l, 31                         ; 2 uses
  %i.n = icmp eq i64 %i.m, 31
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %.sroa.0.077.i64 = phi i32 [ %i.k, %bb.b ], [ %.sroa.0.0.ph82.i, %.lr.ph.i ] ; 6 uses
  %i.o = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !28997

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.p = mul nuw i32 %.sroa.0.077.i64, %.sroa.0.077.i64 ; 2 uses
  %xtraiter = and i32 %i.p, 7                     ; 3 uses
  %i.q = icmp ult i32 %.sroa.0.077.i64, 3
  br i1 %i.q, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.p, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.s, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.k, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.r, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB42_5error5ErrorENtNtB4_6marker4SendEL_EEB4D_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod155 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !29000

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.s = load atomic i64, ptr %i.a acquire, align 128, !noalias !28997 ; 3 uses
  %i.t = load atomic ptr, ptr %i.c acquire, align 8, !noalias !28997
  %i.u = and i64 %i.s, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB42_5error5ErrorENtNtB4_6marker4SendEL_EEB4D_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.x, %bb.e ] ; 9 uses
  %i.w = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.w, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !28997
  %i.x = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !28997 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB42_5error5ErrorENtNtB4_6marker4SendEL_EEB4D_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB42_5error5ErrorENtNtB4_6marker4SendEL_EEB4D_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !28997
  %i.z = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !28997 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !28997

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = cmpxchg ptr %i.c, ptr null, ptr %i.z release monotonic, align 8, !noalias !28997
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.z, ptr %i.g release, align 8, !noalias !28997
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ad, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28997
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB42_5error5ErrorENtNtB4_6marker4SendEL_EEB4D_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB42_5error5ErrorENtNtB4_6marker4SendEL_EEB4D_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.z, %bb.i ] ; 3 uses
  %i.ae = add i64 %.sroa.03.079.i.lcssa, 2
  %i.af = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.ae seq_cst acquire, align 8, !noalias !28997
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.af, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %5, 5                    ; 3 uses
  %i.ag = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.ag, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %5, 56
  br label %.lr.ph.i28.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i28.i
  %lcmp.mod158.not = icmp eq i32 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil.preheader

.lr.ph.i28.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i28.i.preheader
  %lcmp.mod159 = icmp ne i32 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i28.i.epil

.lr.ph.i28.i.epil:                                ; preds = %.lr.ph.i28.i.epil, %.lr.ph.i28.i.epil.preheader
  %epil.iter157 = phi i32 [ 0, %.lr.ph.i28.i.epil.preheader ], [ %epil.iter157.next, %.lr.ph.i28.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !29001

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ah = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  tail call void @llvm.x86.sse2.pause(), !noalias !28997
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.r, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !28997
  %i.ai = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !28997 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3472
  store atomic ptr %.sroa.038.2.i, ptr %i.aj release, align 8, !noalias !28997
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx35, i64 88, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.z, %bb.k ], [ %i.z, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.ah, %._crit_edge.loopexit.i.i ]
  %i.ak = load atomic i64, ptr %i.a acquire, align 128, !noalias !28997 ; 2 uses
  %i.al = load atomic ptr, ptr %i.c acquire, align 8, !noalias !28997
  %i.am = and i64 %i.ak, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %.outer._crit_edge.i

.loopexit59.i:                                    ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit59.i
  %.sroa.038.1.ph.i = phi ptr [ %.sroa.038.0.ph81.i, %.loopexit59.i ], [ %.sroa.038.2.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit59.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.ao, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28997
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.ap, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28997
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread23:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29005)
  %i.aq = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aq, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.47.137 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.136 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.9.136, 31
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [112 x i8], ptr %.sroa.47.137, i64 %.sroa.9.136 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.as, align 16, !noalias !29002
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !noalias !29002
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.au = atomicrmw or ptr %i.at, i64 1 release, align 8, !noalias !29007 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.av) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !alias.scope !29007
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload30, -9223372036854775742
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.copyload30, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body21

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread23 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #54
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_3
begin_hunk_4_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.br = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.br, ptr %0 release, align 128
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [88 x i8], align 8          ; 2 uses
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

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_EEB4w_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !29015)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !29015 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !29015 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29015
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
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
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
  call void @llvm.x86.sse2.pause(), !noalias !29015
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29018

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !29015 ; 3 uses
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
  br i1 %i.ag, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.y, %bb.f ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ah = icmp eq ptr %i.q, null
  br i1 %i.ah, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29015
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
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
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
  call void @llvm.x86.sse2.pause(), !noalias !29015
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !29019

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !29015
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
  call void @llvm.x86.sse2.pause(), !noalias !29015
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !29020

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ao = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ao, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.ap = icmp eq i64 %i.s, 30
  br i1 %i.ap, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 3472 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !29015 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBY_6marker4SendEL_EEB3P_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i28.i = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29015
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
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
  call void @llvm.x86.sse2.pause(), !noalias !29015
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
  call void @llvm.x86.sse2.pause(), !noalias !29015
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29021

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.aw = add i32 %.sroa.0.02.i28.i, 1
  %i.ax = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !29015 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBY_6marker4SendEL_EEB3P_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBY_6marker4SendEL_EEB3P_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.ar, %bb.q ], [ %i.ax, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.az = and i64 %.sroa.01.0.i, -2
  %i.ba = add i64 %i.az, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3472
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8, !noalias !29015
  %i.bd = icmp ne ptr %i.bc, null
  %i.be = zext i1 %i.bd to i64
  %spec.select17.i = or disjoint i64 %i.ba, %i.be
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !29015
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !29015
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bf = load i32, ptr %i.i, align 8, !range !28611, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bf, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBY_6marker4SendEL_EEB3P_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !29015
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !29015
  %i.bg = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !29022
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBV_6marker4SendEL_EEB3M_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bo, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29022
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
  call void @llvm.x86.sse2.pause(), !noalias !29022
  call void @llvm.x86.sse2.pause(), !noalias !29022
  call void @llvm.x86.sse2.pause(), !noalias !29022
  call void @llvm.x86.sse2.pause(), !noalias !29022
  call void @llvm.x86.sse2.pause(), !noalias !29022
  call void @llvm.x86.sse2.pause(), !noalias !29022
  call void @llvm.x86.sse2.pause(), !noalias !29022
  call void @llvm.x86.sse2.pause(), !noalias !29022
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
  call void @llvm.x86.sse2.pause(), !noalias !29022
  %epil.iter105.next = add i32 %epil.iter105, 1   ; 2 uses
  %epil.iter105.cmp.not = icmp eq i32 %epil.iter105.next, %xtraiter104
  br i1 %epil.iter105.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !29025

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.v, %bb.u
  %i.bo = add i32 %.sroa.0.02.i.i4, 1
  %i.bp = load atomic i64, ptr %i.bh acquire, align 8, !noalias !29022
  %i.bq = and i64 %i.bp, 1
end_hunk_4
begin_hunk_5_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ea = extractvalue { i64, i32 } %i.da, 1      ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 1000000000
  call void @llvm.assume(i1 %i.eb)
  %.not26 = icmp samesign ult i32 %i.ea, %i.bf
  br i1 %.not26, label %bb.ae, label %bb.as

bb.ar:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.db, %i.cz
  br i1 %.not25, label %bb.ae, label %bb.as

bb.as:                                            ; preds = %.split, %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ec, align 8
  br label %bb.at

bb.at:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.au, %bb.as
  %storemerge = phi i64 [ -9223372036854775742, %bb.as ], [ %.sroa.018.0.copyload, %bb.au ], [ -9223372036854775742, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ed, align 8
  br label %bb.at

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.419, i64 88, i1 false)
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [88 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !29074 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29074
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.lr.ph.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload28 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx29, i64 88, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.backedge.i, %.lr.ph.lr.ph.i
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.ak, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.al, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.loopexit.i
  %i.k = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.l = lshr exact i64 %i.s, 1
  %i.m = and i64 %i.l, 31                         ; 2 uses
  %i.n = icmp eq i64 %i.m, 31
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %.sroa.0.077.i64 = phi i32 [ %i.k, %bb.b ], [ %.sroa.0.0.ph82.i, %.lr.ph.i ] ; 6 uses
  %i.o = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !29074

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.p = mul nuw i32 %.sroa.0.077.i64, %.sroa.0.077.i64 ; 2 uses
  %xtraiter = and i32 %i.p, 7                     ; 3 uses
  %i.q = icmp ult i32 %.sroa.0.077.i64, 3
  br i1 %i.q, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.p, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.s, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.k, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.r, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4A_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod155 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !29077

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.s = load atomic i64, ptr %i.a acquire, align 128, !noalias !29074 ; 3 uses
  %i.t = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29074
  %i.u = and i64 %i.s, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4A_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.x, %bb.e ] ; 9 uses
  %i.w = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.w, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29074
  %i.x = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !29074 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4A_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4A_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29074
  %i.z = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !29074 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !29074

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = cmpxchg ptr %i.c, ptr null, ptr %i.z release monotonic, align 8, !noalias !29074
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.z, ptr %i.g release, align 8, !noalias !29074
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ad, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29074
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4A_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4A_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.z, %bb.i ] ; 3 uses
  %i.ae = add i64 %.sroa.03.079.i.lcssa, 2
  %i.af = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.ae seq_cst acquire, align 8, !noalias !29074
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.af, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %5, 5                    ; 3 uses
  %i.ag = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.ag, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %5, 56
  br label %.lr.ph.i28.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i28.i
  %lcmp.mod158.not = icmp eq i32 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil.preheader

.lr.ph.i28.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i28.i.preheader
  %lcmp.mod159 = icmp ne i32 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i28.i.epil

.lr.ph.i28.i.epil:                                ; preds = %.lr.ph.i28.i.epil, %.lr.ph.i28.i.epil.preheader
  %epil.iter157 = phi i32 [ 0, %.lr.ph.i28.i.epil.preheader ], [ %epil.iter157.next, %.lr.ph.i28.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !29078

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ah = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  tail call void @llvm.x86.sse2.pause(), !noalias !29074
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.r, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !29074
  %i.ai = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !29074 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3472
  store atomic ptr %.sroa.038.2.i, ptr %i.aj release, align 8, !noalias !29074
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx35, i64 88, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.z, %bb.k ], [ %i.z, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.ah, %._crit_edge.loopexit.i.i ]
  %i.ak = load atomic i64, ptr %i.a acquire, align 128, !noalias !29074 ; 2 uses
  %i.al = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29074
  %i.am = and i64 %i.ak, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %.outer._crit_edge.i

.loopexit59.i:                                    ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit59.i
  %.sroa.038.1.ph.i = phi ptr [ %.sroa.038.0.ph81.i, %.loopexit59.i ], [ %.sroa.038.2.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit59.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.ao, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29074
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.ap, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29074
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread23:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29082)
  %i.aq = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aq, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.47.137 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.136 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.9.136, 31
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [112 x i8], ptr %.sroa.47.137, i64 %.sroa.9.136 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.as, align 16, !noalias !29079
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !noalias !29079
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.au = atomicrmw or ptr %i.at, i64 1 release, align 8, !noalias !29084 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.av) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !alias.scope !29084
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload30, -9223372036854775742
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.copyload30, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body21

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread23 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #54
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_5
begin_hunk_6_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.bh = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bh, ptr %0 release, align 128
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [88 x i8], align 8          ; 2 uses
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

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !29102)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !29102 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !29102 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29102
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
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
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
  call void @llvm.x86.sse2.pause(), !noalias !29102
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29105

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !29102 ; 3 uses
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
  br i1 %i.ag, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.y, %bb.f ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ah = icmp eq ptr %i.q, null
  br i1 %i.ah, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29102
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
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
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
  call void @llvm.x86.sse2.pause(), !noalias !29102
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !29106

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !29102
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
  call void @llvm.x86.sse2.pause(), !noalias !29102
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !29107

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ao = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ao, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.ap = icmp eq i64 %i.s, 30
  br i1 %i.ap, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 3472 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !29102 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i28.i = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29102
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
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
  call void @llvm.x86.sse2.pause(), !noalias !29102
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
  call void @llvm.x86.sse2.pause(), !noalias !29102
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29108

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.aw = add i32 %.sroa.0.02.i28.i, 1
  %i.ax = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !29102 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.ar, %bb.q ], [ %i.ax, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.az = and i64 %.sroa.01.0.i, -2
  %i.ba = add i64 %i.az, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3472
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8, !noalias !29102
  %i.bd = icmp ne ptr %i.bc, null
  %i.be = zext i1 %i.bd to i64
  %spec.select17.i = or disjoint i64 %i.ba, %i.be
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !29102
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !29102
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bf = load i32, ptr %i.i, align 8, !range !28611, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bf, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !29102
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !29102
  %i.bg = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !29109
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bo, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29109
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
  call void @llvm.x86.sse2.pause(), !noalias !29109
  call void @llvm.x86.sse2.pause(), !noalias !29109
  call void @llvm.x86.sse2.pause(), !noalias !29109
  call void @llvm.x86.sse2.pause(), !noalias !29109
  call void @llvm.x86.sse2.pause(), !noalias !29109
  call void @llvm.x86.sse2.pause(), !noalias !29109
  call void @llvm.x86.sse2.pause(), !noalias !29109
  call void @llvm.x86.sse2.pause(), !noalias !29109
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
  call void @llvm.x86.sse2.pause(), !noalias !29109
  %epil.iter105.next = add i32 %epil.iter105, 1   ; 2 uses
  %epil.iter105.cmp.not = icmp eq i32 %epil.iter105.next, %xtraiter104
  br i1 %epil.iter105.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !29112

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.v, %bb.u
  %i.bo = add i32 %.sroa.0.02.i.i4, 1
  %i.bp = load atomic i64, ptr %i.bh acquire, align 8, !noalias !29109
  %i.bq = and i64 %i.bp, 1
end_hunk_6
begin_hunk_7_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ea = extractvalue { i64, i32 } %i.da, 1      ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 1000000000
  call void @llvm.assume(i1 %i.eb)
  %.not26 = icmp samesign ult i32 %i.ea, %i.bf
  br i1 %.not26, label %bb.ae, label %bb.as

bb.ar:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.db, %i.cz
  br i1 %.not25, label %bb.ae, label %bb.as

bb.as:                                            ; preds = %.split, %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ec, align 8
  br label %bb.at

bb.at:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.au, %bb.as
  %storemerge = phi i64 [ -9223372036854775742, %bb.as ], [ %.sroa.018.0.copyload, %bb.au ], [ -9223372036854775742, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ed, align 8
  br label %bb.at

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.419, i64 88, i1 false)
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [88 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !29161 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29161
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.lr.ph.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload28 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx29, i64 88, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.backedge.i, %.lr.ph.lr.ph.i
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.ak, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.al, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.loopexit.i
  %i.k = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.l = lshr exact i64 %i.s, 1
  %i.m = and i64 %i.l, 31                         ; 2 uses
  %i.n = icmp eq i64 %i.m, 31
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %.sroa.0.077.i64 = phi i32 [ %i.k, %bb.b ], [ %.sroa.0.0.ph82.i, %.lr.ph.i ] ; 6 uses
  %i.o = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !29161

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.p = mul nuw i32 %.sroa.0.077.i64, %.sroa.0.077.i64 ; 2 uses
  %xtraiter = and i32 %i.p, 7                     ; 3 uses
  %i.q = icmp ult i32 %.sroa.0.077.i64, 3
  br i1 %i.q, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.p, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.s, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.k, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.r, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod155 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !29164

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.s = load atomic i64, ptr %i.a acquire, align 128, !noalias !29161 ; 3 uses
  %i.t = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29161
  %i.u = and i64 %i.s, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.x, %bb.e ] ; 9 uses
  %i.w = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.w, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29161
  %i.x = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !29161 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29161
  %i.z = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !29161 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !29161

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = cmpxchg ptr %i.c, ptr null, ptr %i.z release monotonic, align 8, !noalias !29161
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.z, ptr %i.g release, align 8, !noalias !29161
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ad, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29161
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.z, %bb.i ] ; 3 uses
  %i.ae = add i64 %.sroa.03.079.i.lcssa, 2
  %i.af = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.ae seq_cst acquire, align 8, !noalias !29161
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.af, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %5, 5                    ; 3 uses
  %i.ag = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.ag, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %5, 56
  br label %.lr.ph.i28.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i28.i
  %lcmp.mod158.not = icmp eq i32 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil.preheader

.lr.ph.i28.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i28.i.preheader
  %lcmp.mod159 = icmp ne i32 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i28.i.epil

.lr.ph.i28.i.epil:                                ; preds = %.lr.ph.i28.i.epil, %.lr.ph.i28.i.epil.preheader
  %epil.iter157 = phi i32 [ 0, %.lr.ph.i28.i.epil.preheader ], [ %epil.iter157.next, %.lr.ph.i28.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !29165

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ah = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  tail call void @llvm.x86.sse2.pause(), !noalias !29161
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.r, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !29161
  %i.ai = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !29161 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3472
  store atomic ptr %.sroa.038.2.i, ptr %i.aj release, align 8, !noalias !29161
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx35, i64 88, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.z, %bb.k ], [ %i.z, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.ah, %._crit_edge.loopexit.i.i ]
  %i.ak = load atomic i64, ptr %i.a acquire, align 128, !noalias !29161 ; 2 uses
  %i.al = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29161
  %i.am = and i64 %i.ak, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %.outer._crit_edge.i

.loopexit59.i:                                    ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit59.i
  %.sroa.038.1.ph.i = phi ptr [ %.sroa.038.0.ph81.i, %.loopexit59.i ], [ %.sroa.038.2.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit59.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.ao, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29161
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.ap, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29161
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread23:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29169)
  %i.aq = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aq, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.47.137 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.136 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.9.136, 31
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [112 x i8], ptr %.sroa.47.137, i64 %.sroa.9.136 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.as, align 16, !noalias !29166
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !noalias !29166
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.au = atomicrmw or ptr %i.at, i64 1 release, align 8, !noalias !29171 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.av) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !alias.scope !29171
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload30, -9223372036854775742
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.copyload30, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body21

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread23 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #54
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_7
begin_hunk_8_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.bh = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bh, ptr %0 release, align 128
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [104 x i8], align 8         ; 2 uses
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

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !29179)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !29179 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !29179 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29179
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
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
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
  call void @llvm.x86.sse2.pause(), !noalias !29179
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29182

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !29179 ; 3 uses
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
  br i1 %i.ag, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.y, %bb.f ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ah = icmp eq ptr %i.q, null
  br i1 %i.ah, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29179
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
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
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
  call void @llvm.x86.sse2.pause(), !noalias !29179
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !29183

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !29179
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
  call void @llvm.x86.sse2.pause(), !noalias !29179
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !29184

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ao = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ao, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.ap = icmp eq i64 %i.s, 30
  br i1 %i.ap, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 3968 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !29179 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i28.i = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29179
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
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
  call void @llvm.x86.sse2.pause(), !noalias !29179
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
  call void @llvm.x86.sse2.pause(), !noalias !29179
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29185

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.aw = add i32 %.sroa.0.02.i28.i, 1
  %i.ax = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !29179 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.ar, %bb.q ], [ %i.ax, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.az = and i64 %.sroa.01.0.i, -2
  %i.ba = add i64 %i.az, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3968
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8, !noalias !29179
  %i.bd = icmp ne ptr %i.bc, null
  %i.be = zext i1 %i.bd to i64
  %spec.select17.i = or disjoint i64 %i.ba, %i.be
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !29179
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !29179
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bf = load i32, ptr %i.i, align 8, !range !28611, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bf, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !29179
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !29179
  %i.bg = getelementptr inbounds nuw [128 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 112 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !29186
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bo, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29186
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
  call void @llvm.x86.sse2.pause(), !noalias !29186
  call void @llvm.x86.sse2.pause(), !noalias !29186
  call void @llvm.x86.sse2.pause(), !noalias !29186
  call void @llvm.x86.sse2.pause(), !noalias !29186
  call void @llvm.x86.sse2.pause(), !noalias !29186
  call void @llvm.x86.sse2.pause(), !noalias !29186
  call void @llvm.x86.sse2.pause(), !noalias !29186
  call void @llvm.x86.sse2.pause(), !noalias !29186
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
  call void @llvm.x86.sse2.pause(), !noalias !29186
  %epil.iter105.next = add i32 %epil.iter105, 1   ; 2 uses
  %epil.iter105.cmp.not = icmp eq i32 %epil.iter105.next, %xtraiter104
  br i1 %epil.iter105.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !29189

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.v, %bb.u
  %i.bo = add i32 %.sroa.0.02.i.i4, 1
  %i.bp = load atomic i64, ptr %i.bh acquire, align 8, !noalias !29186
  %i.bq = and i64 %i.bp, 1
end_hunk_8
begin_hunk_9_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ea = extractvalue { i64, i32 } %i.da, 1      ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 1000000000
  call void @llvm.assume(i1 %i.eb)
  %.not26 = icmp samesign ult i32 %i.ea, %i.bf
  br i1 %.not26, label %bb.ae, label %bb.as

bb.ar:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.db, %i.cz
  br i1 %.not25, label %bb.ae, label %bb.as

bb.as:                                            ; preds = %.split, %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ec, align 8
  br label %bb.at

bb.at:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.au, %bb.as
  %storemerge = phi i64 [ 2, %bb.as ], [ %.sroa.018.0.copyload, %bb.au ], [ 2, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ed, align 8
  br label %bb.at

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.419, i64 104, i1 false)
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [104 x i8], align 8           ; 10 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !29238 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29238
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.lr.ph.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload28 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx29, i64 104, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.backedge.i, %.lr.ph.lr.ph.i
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.ak, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.al, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.loopexit.i
  %i.k = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.l = lshr exact i64 %i.s, 1
  %i.m = and i64 %i.l, 31                         ; 2 uses
  %i.n = icmp eq i64 %i.m, 31
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %.sroa.0.077.i64 = phi i32 [ %i.k, %bb.b ], [ %.sroa.0.0.ph82.i, %.lr.ph.i ] ; 6 uses
  %i.o = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !29238

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.p = mul nuw i32 %.sroa.0.077.i64, %.sroa.0.077.i64 ; 2 uses
  %xtraiter = and i32 %i.p, 7                     ; 3 uses
  %i.q = icmp ult i32 %.sroa.0.077.i64, 3
  br i1 %i.q, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.p, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.s, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.k, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.r, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod155 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !29241

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.s = load atomic i64, ptr %i.a acquire, align 128, !noalias !29238 ; 3 uses
  %i.t = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29238
  %i.u = and i64 %i.s, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.x, %bb.e ] ; 9 uses
  %i.w = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.w, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29238
  %i.x = tail call noalias noundef align 16 dereferenceable_or_null(3984) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3984, i64 noundef 16) #48, !noalias !29238 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3984) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29238
  %i.z = tail call noalias noundef align 16 dereferenceable_or_null(3984) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3984, i64 noundef 16) #48, !noalias !29238 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3984) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !29238

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = cmpxchg ptr %i.c, ptr null, ptr %i.z release monotonic, align 8, !noalias !29238
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.z, ptr %i.g release, align 8, !noalias !29238
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ad, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29238
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.z, %bb.i ] ; 3 uses
  %i.ae = add i64 %.sroa.03.079.i.lcssa, 2
  %i.af = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.ae seq_cst acquire, align 8, !noalias !29238
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.af, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %5, 5                    ; 3 uses
  %i.ag = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.ag, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %5, 56
  br label %.lr.ph.i28.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i28.i
  %lcmp.mod158.not = icmp eq i32 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil.preheader

.lr.ph.i28.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i28.i.preheader
  %lcmp.mod159 = icmp ne i32 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i28.i.epil

.lr.ph.i28.i.epil:                                ; preds = %.lr.ph.i28.i.epil, %.lr.ph.i28.i.epil.preheader
  %epil.iter157 = phi i32 [ 0, %.lr.ph.i28.i.epil.preheader ], [ %epil.iter157.next, %.lr.ph.i28.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !29242

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ah = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  tail call void @llvm.x86.sse2.pause(), !noalias !29238
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.r, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !29238
  %i.ai = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !29238 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3968
  store atomic ptr %.sroa.038.2.i, ptr %i.aj release, align 8, !noalias !29238
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx35, i64 104, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.z, %bb.k ], [ %i.z, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.ah, %._crit_edge.loopexit.i.i ]
  %i.ak = load atomic i64, ptr %i.a acquire, align 128, !noalias !29238 ; 2 uses
  %i.al = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29238
  %i.am = and i64 %i.ak, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %.outer._crit_edge.i

.loopexit59.i:                                    ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit59.i
  %.sroa.038.1.ph.i = phi ptr [ %.sroa.038.0.ph81.i, %.loopexit59.i ], [ %.sroa.038.2.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit59.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.ao, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29238
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.ap, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29238
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread23:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, i64 104, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29246)
  %i.aq = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aq, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.47.137 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.136 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.9.136, 31
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [128 x i8], ptr %.sroa.47.137, i64 %.sroa.9.136 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.as, align 16, !noalias !29243
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !noalias !29243
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %i.au = atomicrmw or ptr %i.at, i64 1 release, align 8, !noalias !29248 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.av) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !alias.scope !29248
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload30, 2
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.copyload30, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body21

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread23 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %2) #54
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_9
begin_hunk_10_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.bd = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bd, ptr %0 release, align 128
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [88 x i8], align 8          ; 2 uses
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

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !29256)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !29256 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !29256 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29256
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
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
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
  call void @llvm.x86.sse2.pause(), !noalias !29256
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29259

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !29256 ; 3 uses
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
  br i1 %i.ag, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.y, %bb.f ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ah = icmp eq ptr %i.q, null
  br i1 %i.ah, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29256
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
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
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
  call void @llvm.x86.sse2.pause(), !noalias !29256
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !29260

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !29256
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
  call void @llvm.x86.sse2.pause(), !noalias !29256
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !29261

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ao = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ao, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.ap = icmp eq i64 %i.s, 30
  br i1 %i.ap, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 3472 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !29256 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i28.i = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29256
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
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
  call void @llvm.x86.sse2.pause(), !noalias !29256
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
  call void @llvm.x86.sse2.pause(), !noalias !29256
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29262

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.aw = add i32 %.sroa.0.02.i28.i, 1
  %i.ax = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !29256 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.ar, %bb.q ], [ %i.ax, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.az = and i64 %.sroa.01.0.i, -2
  %i.ba = add i64 %i.az, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3472
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8, !noalias !29256
  %i.bd = icmp ne ptr %i.bc, null
  %i.be = zext i1 %i.bd to i64
  %spec.select17.i = or disjoint i64 %i.ba, %i.be
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !29256
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !29256
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bf = load i32, ptr %i.i, align 8, !range !28611, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bf, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !29256
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !29256
  %i.bg = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !29263
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bo, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29263
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
  call void @llvm.x86.sse2.pause(), !noalias !29263
  call void @llvm.x86.sse2.pause(), !noalias !29263
  call void @llvm.x86.sse2.pause(), !noalias !29263
  call void @llvm.x86.sse2.pause(), !noalias !29263
  call void @llvm.x86.sse2.pause(), !noalias !29263
  call void @llvm.x86.sse2.pause(), !noalias !29263
  call void @llvm.x86.sse2.pause(), !noalias !29263
  call void @llvm.x86.sse2.pause(), !noalias !29263
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
  call void @llvm.x86.sse2.pause(), !noalias !29263
  %epil.iter105.next = add i32 %epil.iter105, 1   ; 2 uses
  %epil.iter105.cmp.not = icmp eq i32 %epil.iter105.next, %xtraiter104
  br i1 %epil.iter105.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !29266

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.v, %bb.u
  %i.bo = add i32 %.sroa.0.02.i.i4, 1
  %i.bp = load atomic i64, ptr %i.bh acquire, align 8, !noalias !29263
  %i.bq = and i64 %i.bp, 1
end_hunk_10
begin_hunk_11_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ea = extractvalue { i64, i32 } %i.da, 1      ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 1000000000
  call void @llvm.assume(i1 %i.eb)
  %.not26 = icmp samesign ult i32 %i.ea, %i.bf
  br i1 %.not26, label %bb.ae, label %bb.as

bb.ar:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.db, %i.cz
  br i1 %.not25, label %bb.ae, label %bb.as

bb.as:                                            ; preds = %.split, %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ec, align 8
  br label %bb.at

bb.at:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.au, %bb.as
  %storemerge = phi i64 [ -9223372036854775742, %bb.as ], [ %.sroa.018.0.copyload, %bb.au ], [ -9223372036854775742, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ed, align 8
  br label %bb.at

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.419, i64 88, i1 false)
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [88 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !29315 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29315
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.lr.ph.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload29 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx30, i64 88, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.backedge.i, %.lr.ph.lr.ph.i
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.ak, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.al, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.loopexit.i
  %i.k = add i32 %.sroa.0.077.i65, 1              ; 2 uses
  %i.l = lshr exact i64 %i.s, 1
  %i.m = and i64 %i.l, 31                         ; 2 uses
  %i.n = icmp eq i64 %i.m, 31
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %.sroa.0.077.i65 = phi i32 [ %i.k, %bb.b ], [ %.sroa.0.0.ph82.i, %.lr.ph.i ] ; 6 uses
  %i.o = icmp ult i32 %.sroa.0.077.i65, 7
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !29315

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i65, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.p = mul nuw i32 %.sroa.0.077.i65, %.sroa.0.077.i65 ; 2 uses
  %xtraiter = and i32 %i.p, 7                     ; 3 uses
  %i.q = icmp ult i32 %.sroa.0.077.i65, 3
  br i1 %i.q, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.p, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.s, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.k, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.r, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod156 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !29318

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.s = load atomic i64, ptr %i.a acquire, align 128, !noalias !29315 ; 3 uses
  %i.t = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29315
  %i.u = and i64 %i.s, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.x, %bb.e ] ; 9 uses
  %i.w = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.w, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29315
  %i.x = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !29315 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc unwind label %.body.thread24

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29315
  %i.z = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !29315 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !29315

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = cmpxchg ptr %i.c, ptr null, ptr %i.z release monotonic, align 8, !noalias !29315
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.z, ptr %i.g release, align 8, !noalias !29315
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ad, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29315
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.z, %bb.i ] ; 3 uses
  %i.ae = add i64 %.sroa.03.079.i.lcssa, 2
  %i.af = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.ae seq_cst acquire, align 8, !noalias !29315
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.af, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter157 = and i32 %5, 5                    ; 3 uses
  %i.ag = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.ag, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter161 = and i32 %5, 56
  br label %.lr.ph.i28.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i28.i
  %lcmp.mod159.not = icmp eq i32 %xtraiter157, 0
  br i1 %lcmp.mod159.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil.preheader

.lr.ph.i28.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i28.i.preheader
  %lcmp.mod160 = icmp ne i32 %xtraiter157, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %.lr.ph.i28.i.epil

.lr.ph.i28.i.epil:                                ; preds = %.lr.ph.i28.i.epil, %.lr.ph.i28.i.epil.preheader
  %epil.iter158 = phi i32 [ 0, %.lr.ph.i28.i.epil.preheader ], [ %epil.iter158.next, %.lr.ph.i28.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  %epil.iter158.next = add i32 %epil.iter158, 1   ; 2 uses
  %epil.iter158.cmp.not = icmp eq i32 %epil.iter158.next, %xtraiter157
  br i1 %epil.iter158.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !29319

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ah = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter162 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter162.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  tail call void @llvm.x86.sse2.pause(), !noalias !29315
  %niter162.next.7 = add i32 %niter162, 8         ; 2 uses
  %niter162.ncmp.7 = icmp eq i32 %niter162.next.7, %unroll_iter161
  br i1 %niter162.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.r, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread24

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !29315
  %i.ai = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !29315 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3472
  store atomic ptr %.sroa.038.2.i, ptr %i.aj release, align 8, !noalias !29315
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload35 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx36, i64 88, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.z, %bb.k ], [ %i.z, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.ah, %._crit_edge.loopexit.i.i ]
  %i.ak = load atomic i64, ptr %i.a acquire, align 128, !noalias !29315 ; 2 uses
  %i.al = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29315
  %i.am = and i64 %i.ak, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %.outer._crit_edge.i

.loopexit59.i:                                    ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit59.i
  %.sroa.038.1.ph.i = phi ptr [ %.sroa.038.0.ph81.i, %.loopexit59.i ], [ %.sroa.038.2.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit59.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.ao, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29315
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.48.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.ap, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29315
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread24:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29323)
  %i.aq = icmp eq ptr %.sroa.48.0, null
  br i1 %i.aq, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.012.0.copyload39 = phi i64 [ %.sroa.012.0.copyload35, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32 ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.48.138 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32 ], [ %.sroa.48.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [112 x i8], ptr %.sroa.48.138, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.012.0.copyload39, ptr %i.as, align 16, !noalias !29320
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !noalias !29320
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.au = atomicrmw or ptr %i.at, i64 1 release, align 8, !noalias !29325 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.av) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.012.0.copyload31 = phi i64 [ %.sroa.012.0.copyload29, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !alias.scope !29325
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.012.0.copyload31, -9223372036854775742
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.012.0.copyload31, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body.thread, %bb.v
  resume { ptr, i32 } %eh.lpad-body22

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread24
  %eh.lpad-body22 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread24 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  %i.aw = load i64, ptr %2, align 16, !range !647, !alias.scope !29326, !noundef !3
  %i.ax = icmp eq i64 %i.aw, -9223372036854775743
  br i1 %i.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.v

bb.v:                                             ; preds = %.body.thread
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
end_hunk_11
begin_hunk_12_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.bb = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bb, ptr %0 release, align 128
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [104 x i8], align 8         ; 2 uses
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

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorEEINtNtB1E_3pin3PinIB2z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !29333)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !29333 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !29333 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29333
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
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
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
  call void @llvm.x86.sse2.pause(), !noalias !29333
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29336

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !29333 ; 3 uses
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
  br i1 %i.ag, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.y, %bb.f ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ah = icmp eq ptr %i.q, null
  br i1 %i.ah, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29333
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
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
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
  call void @llvm.x86.sse2.pause(), !noalias !29333
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !29337

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !29333
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
  call void @llvm.x86.sse2.pause(), !noalias !29333
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !29338

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ao = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ao, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.ap = icmp eq i64 %i.s, 30
  br i1 %i.ap, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 3968 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !29333 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i28.i = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29333
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
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
  call void @llvm.x86.sse2.pause(), !noalias !29333
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
  call void @llvm.x86.sse2.pause(), !noalias !29333
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29339

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.aw = add i32 %.sroa.0.02.i28.i, 1
  %i.ax = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !29333 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.ar, %bb.q ], [ %i.ax, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.az = and i64 %.sroa.01.0.i, -2
  %i.ba = add i64 %i.az, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3968
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8, !noalias !29333
  %i.bd = icmp ne ptr %i.bc, null
  %i.be = zext i1 %i.bd to i64
  %spec.select17.i = or disjoint i64 %i.ba, %i.be
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !29333
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !29333
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bf = load i32, ptr %i.i, align 8, !range !28611, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bf, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !29333
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !29333
  %i.bg = getelementptr inbounds nuw [128 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 112 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !29340
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorEEINtNtBW_3pin3PinIB1Q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bo, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29340
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
  call void @llvm.x86.sse2.pause(), !noalias !29340
  call void @llvm.x86.sse2.pause(), !noalias !29340
  call void @llvm.x86.sse2.pause(), !noalias !29340
  call void @llvm.x86.sse2.pause(), !noalias !29340
  call void @llvm.x86.sse2.pause(), !noalias !29340
  call void @llvm.x86.sse2.pause(), !noalias !29340
  call void @llvm.x86.sse2.pause(), !noalias !29340
  call void @llvm.x86.sse2.pause(), !noalias !29340
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
  call void @llvm.x86.sse2.pause(), !noalias !29340
  %epil.iter105.next = add i32 %epil.iter105, 1   ; 2 uses
  %epil.iter105.cmp.not = icmp eq i32 %epil.iter105.next, %xtraiter104
  br i1 %epil.iter105.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !29343

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.v, %bb.u
  %i.bo = add i32 %.sroa.0.02.i.i4, 1
  %i.bp = load atomic i64, ptr %i.bh acquire, align 8, !noalias !29340
  %i.bq = and i64 %i.bp, 1
end_hunk_12
begin_hunk_13_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ea = extractvalue { i64, i32 } %i.da, 1      ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 1000000000
  call void @llvm.assume(i1 %i.eb)
  %.not26 = icmp samesign ult i32 %i.ea, %i.bf
  br i1 %.not26, label %bb.ae, label %bb.as

bb.ar:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.db, %i.cz
  br i1 %.not25, label %bb.ae, label %bb.as

bb.as:                                            ; preds = %.split, %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ec, align 8
  br label %bb.at

bb.at:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.au, %bb.as
  %storemerge = phi i64 [ -9223372036854775741, %bb.as ], [ %.sroa.018.0.copyload, %bb.au ], [ -9223372036854775741, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ed, align 8
  br label %bb.at

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.419, i64 104, i1 false)
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [104 x i8], align 8           ; 10 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !29392 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29392
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.lr.ph.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload28 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx29, i64 104, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.backedge.i, %.lr.ph.lr.ph.i
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.ak, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.al, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.loopexit.i
  %i.k = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.l = lshr exact i64 %i.s, 1
  %i.m = and i64 %i.l, 31                         ; 2 uses
  %i.n = icmp eq i64 %i.m, 31
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %.sroa.0.077.i64 = phi i32 [ %i.k, %bb.b ], [ %.sroa.0.0.ph82.i, %.lr.ph.i ] ; 6 uses
  %i.o = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !29392

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.p = mul nuw i32 %.sroa.0.077.i64, %.sroa.0.077.i64 ; 2 uses
  %xtraiter = and i32 %i.p, 7                     ; 3 uses
  %i.q = icmp ult i32 %.sroa.0.077.i64, 3
  br i1 %i.q, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.p, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.s, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.k, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.r, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Y_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod155 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !29395

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.s = load atomic i64, ptr %i.a acquire, align 128, !noalias !29392 ; 3 uses
  %i.t = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29392
  %i.u = and i64 %i.s, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Y_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.x, %bb.e ] ; 9 uses
  %i.w = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.w, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29392
  %i.x = tail call noalias noundef align 16 dereferenceable_or_null(3984) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3984, i64 noundef 16) #48, !noalias !29392 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Y_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3984) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Y_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29392
  %i.z = tail call noalias noundef align 16 dereferenceable_or_null(3984) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3984, i64 noundef 16) #48, !noalias !29392 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3984) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !29392

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = cmpxchg ptr %i.c, ptr null, ptr %i.z release monotonic, align 8, !noalias !29392
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.z, ptr %i.g release, align 8, !noalias !29392
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ad, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29392
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Y_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Y_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.z, %bb.i ] ; 3 uses
  %i.ae = add i64 %.sroa.03.079.i.lcssa, 2
  %i.af = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.ae seq_cst acquire, align 8, !noalias !29392
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.af, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %5, 5                    ; 3 uses
  %i.ag = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.ag, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %5, 56
  br label %.lr.ph.i28.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i28.i
  %lcmp.mod158.not = icmp eq i32 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil.preheader

.lr.ph.i28.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i28.i.preheader
  %lcmp.mod159 = icmp ne i32 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i28.i.epil

.lr.ph.i28.i.epil:                                ; preds = %.lr.ph.i28.i.epil, %.lr.ph.i28.i.epil.preheader
  %epil.iter157 = phi i32 [ 0, %.lr.ph.i28.i.epil.preheader ], [ %epil.iter157.next, %.lr.ph.i28.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !29396

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ah = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  tail call void @llvm.x86.sse2.pause(), !noalias !29392
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.r, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !29392
  %i.ai = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !29392 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3968
  store atomic ptr %.sroa.038.2.i, ptr %i.aj release, align 8, !noalias !29392
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx35, i64 104, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.z, %bb.k ], [ %i.z, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.ah, %._crit_edge.loopexit.i.i ]
  %i.ak = load atomic i64, ptr %i.a acquire, align 128, !noalias !29392 ; 2 uses
  %i.al = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29392
  %i.am = and i64 %i.ak, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %.outer._crit_edge.i

.loopexit59.i:                                    ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit59.i
  %.sroa.038.1.ph.i = phi ptr [ %.sroa.038.0.ph81.i, %.loopexit59.i ], [ %.sroa.038.2.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit59.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.ao, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29392
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.ap, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29392
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread23:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, i64 104, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29400)
  %i.aq = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aq, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.47.137 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.136 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.9.136, 31
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [128 x i8], ptr %.sroa.47.137, i64 %.sroa.9.136 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.as, align 16, !noalias !29397
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !noalias !29397
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %i.au = atomicrmw or ptr %i.at, i64 1 release, align 8, !noalias !29402 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.av) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !alias.scope !29402
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload30, -9223372036854775741
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.copyload30, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body21

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread23 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB23_5error5ErrorEEINtNtB4_3pin3PinIB1q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %2) #54
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_13
begin_hunk_14_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.bb = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bb, ptr %0 release, align 128
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [120 x i8], align 8         ; 2 uses
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

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2A_5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !29407)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !29407 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !29407 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29407
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
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
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
  call void @llvm.x86.sse2.pause(), !noalias !29407
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29410

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !29407 ; 3 uses
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
  br i1 %i.ag, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.y, %bb.f ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ah = icmp eq ptr %i.q, null
  br i1 %i.ah, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29407
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
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
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
  call void @llvm.x86.sse2.pause(), !noalias !29407
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !29411

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !29407
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
  call void @llvm.x86.sse2.pause(), !noalias !29407
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !29412

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ao = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ao, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.ap = icmp eq i64 %i.s, 30
  br i1 %i.ap, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 4464 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !29407 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i28.i = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29407
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
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
  call void @llvm.x86.sse2.pause(), !noalias !29407
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
  call void @llvm.x86.sse2.pause(), !noalias !29407
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29413

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.aw = add i32 %.sroa.0.02.i28.i, 1
  %i.ax = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !29407 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.ar, %bb.q ], [ %i.ax, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.az = and i64 %.sroa.01.0.i, -2
  %i.ba = add i64 %i.az, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 4464
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8, !noalias !29407
  %i.bd = icmp ne ptr %i.bc, null
  %i.be = zext i1 %i.bd to i64
  %spec.select17.i = or disjoint i64 %i.ba, %i.be
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !29407
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !29407
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bf = load i32, ptr %i.i, align 8, !range !28611, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bf, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !29407
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !29407
  %i.bg = getelementptr inbounds nuw [144 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 128 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !29414
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1R_5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bo, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29414
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
  call void @llvm.x86.sse2.pause(), !noalias !29414
  call void @llvm.x86.sse2.pause(), !noalias !29414
  call void @llvm.x86.sse2.pause(), !noalias !29414
  call void @llvm.x86.sse2.pause(), !noalias !29414
  call void @llvm.x86.sse2.pause(), !noalias !29414
  call void @llvm.x86.sse2.pause(), !noalias !29414
  call void @llvm.x86.sse2.pause(), !noalias !29414
  call void @llvm.x86.sse2.pause(), !noalias !29414
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
  call void @llvm.x86.sse2.pause(), !noalias !29414
  %epil.iter105.next = add i32 %epil.iter105, 1   ; 2 uses
  %epil.iter105.cmp.not = icmp eq i32 %epil.iter105.next, %xtraiter104
  br i1 %epil.iter105.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !29417

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.v, %bb.u
  %i.bo = add i32 %.sroa.0.02.i.i4, 1
  %i.bp = load atomic i64, ptr %i.bh acquire, align 8, !noalias !29414
  %i.bq = and i64 %i.bp, 1
end_hunk_14
begin_hunk_15_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ea = extractvalue { i64, i32 } %i.da, 1      ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 1000000000
  call void @llvm.assume(i1 %i.eb)
  %.not26 = icmp samesign ult i32 %i.ea, %i.bf
  br i1 %.not26, label %bb.ae, label %bb.as

bb.ar:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.db, %i.cz
  br i1 %.not25, label %bb.ae, label %bb.as

bb.as:                                            ; preds = %.split, %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ec, align 8
  br label %bb.at

bb.at:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.au, %bb.as
  %storemerge = phi i64 [ 3, %bb.as ], [ %.sroa.018.0.copyload, %bb.au ], [ 3, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ed, align 8
  br label %bb.at

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.419, i64 120, i1 false)
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [120 x i8], align 8           ; 10 uses
  %.sroa.6 = alloca [120 x i8], align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !29466 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29466
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.lr.ph.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload28 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx29, i64 120, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.backedge.i, %.lr.ph.lr.ph.i
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.ak, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.al, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.loopexit.i
  %i.k = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.l = lshr exact i64 %i.s, 1
  %i.m = and i64 %i.l, 31                         ; 2 uses
  %i.n = icmp eq i64 %i.m, 31
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %.sroa.0.077.i64 = phi i32 [ %i.k, %bb.b ], [ %.sroa.0.0.ph82.i, %.lr.ph.i ] ; 6 uses
  %i.o = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !29466

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.p = mul nuw i32 %.sroa.0.077.i64, %.sroa.0.077.i64 ; 2 uses
  %xtraiter = and i32 %i.p, 7                     ; 3 uses
  %i.q = icmp ult i32 %.sroa.0.077.i64, 3
  br i1 %i.q, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.p, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.s, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.k, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.r, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod155 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !29469

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.s = load atomic i64, ptr %i.a acquire, align 128, !noalias !29466 ; 3 uses
  %i.t = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29466
  %i.u = and i64 %i.s, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.x, %bb.e ] ; 9 uses
  %i.w = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.w, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29466
  %i.x = tail call noalias noundef align 16 dereferenceable_or_null(4480) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 4480, i64 noundef 16) #48, !noalias !29466 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 4480) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29466
  %i.z = tail call noalias noundef align 16 dereferenceable_or_null(4480) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 4480, i64 noundef 16) #48, !noalias !29466 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 4480) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !29466

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = cmpxchg ptr %i.c, ptr null, ptr %i.z release monotonic, align 8, !noalias !29466
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.z, ptr %i.g release, align 8, !noalias !29466
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ad, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 4480, i64 noundef 16) #48, !noalias !29466
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.z, %bb.i ] ; 3 uses
  %i.ae = add i64 %.sroa.03.079.i.lcssa, 2
  %i.af = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.ae seq_cst acquire, align 8, !noalias !29466
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.af, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %5, 5                    ; 3 uses
  %i.ag = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.ag, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %5, 56
  br label %.lr.ph.i28.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i28.i
  %lcmp.mod158.not = icmp eq i32 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil.preheader

.lr.ph.i28.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i28.i.preheader
  %lcmp.mod159 = icmp ne i32 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i28.i.epil

.lr.ph.i28.i.epil:                                ; preds = %.lr.ph.i28.i.epil, %.lr.ph.i28.i.epil.preheader
  %epil.iter157 = phi i32 [ 0, %.lr.ph.i28.i.epil.preheader ], [ %epil.iter157.next, %.lr.ph.i28.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !29470

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ah = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  tail call void @llvm.x86.sse2.pause(), !noalias !29466
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.r, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !29466
  %i.ai = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !29466 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 4464
  store atomic ptr %.sroa.038.2.i, ptr %i.aj release, align 8, !noalias !29466
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx35, i64 120, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.z, %bb.k ], [ %i.z, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.ah, %._crit_edge.loopexit.i.i ]
  %i.ak = load atomic i64, ptr %i.a acquire, align 128, !noalias !29466 ; 2 uses
  %i.al = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29466
  %i.am = and i64 %i.ak, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %.outer._crit_edge.i

.loopexit59.i:                                    ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit59.i
  %.sroa.038.1.ph.i = phi ptr [ %.sroa.038.0.ph81.i, %.loopexit59.i ], [ %.sroa.038.2.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit59.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.ao, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 4480, i64 noundef 16) #48, !noalias !29466
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.ap, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 4480, i64 noundef 16) #48, !noalias !29466
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread23:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29474)
  %i.aq = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aq, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.47.137 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.136 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.9.136, 31
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [144 x i8], ptr %.sroa.47.137, i64 %.sroa.9.136 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.as, align 16, !noalias !29471
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5, i64 120, i1 false), !noalias !29471
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  %i.au = atomicrmw or ptr %i.at, i64 1 release, align 8, !noalias !29476 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.av) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5, i64 120, i1 false), !alias.scope !29476
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload30, 3
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6, i64 120, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.copyload30, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body21

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread23 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1r_5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %2) #54
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_15
begin_hunk_16_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.bb = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bb, ptr %0 release, align 128
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [104 x i8], align 8         ; 2 uses
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

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !29481)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !29481 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !29481 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29481
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
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
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
  call void @llvm.x86.sse2.pause(), !noalias !29481
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29484

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !29481 ; 3 uses
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
  br i1 %i.ag, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.y, %bb.f ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ah = icmp eq ptr %i.q, null
  br i1 %i.ah, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29481
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
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
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
  call void @llvm.x86.sse2.pause(), !noalias !29481
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !29485

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !29481
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
  call void @llvm.x86.sse2.pause(), !noalias !29481
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !29486

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ao = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ao, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.ap = icmp eq i64 %i.s, 30
  br i1 %i.ap, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 3968 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !29481 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i28.i = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29481
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
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
  call void @llvm.x86.sse2.pause(), !noalias !29481
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
  call void @llvm.x86.sse2.pause(), !noalias !29481
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29487

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.aw = add i32 %.sroa.0.02.i28.i, 1
  %i.ax = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !29481 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.ar, %bb.q ], [ %i.ax, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.az = and i64 %.sroa.01.0.i, -2
  %i.ba = add i64 %i.az, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3968
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8, !noalias !29481
  %i.bd = icmp ne ptr %i.bc, null
  %i.be = zext i1 %i.bd to i64
  %spec.select17.i = or disjoint i64 %i.ba, %i.be
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !29481
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !29481
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bf = load i32, ptr %i.i, align 8, !range !28611, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bf, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !29481
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !29481
  %i.bg = getelementptr inbounds nuw [128 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 112 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !29488
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bo, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29488
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
  call void @llvm.x86.sse2.pause(), !noalias !29488
  call void @llvm.x86.sse2.pause(), !noalias !29488
  call void @llvm.x86.sse2.pause(), !noalias !29488
  call void @llvm.x86.sse2.pause(), !noalias !29488
  call void @llvm.x86.sse2.pause(), !noalias !29488
  call void @llvm.x86.sse2.pause(), !noalias !29488
  call void @llvm.x86.sse2.pause(), !noalias !29488
  call void @llvm.x86.sse2.pause(), !noalias !29488
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
  call void @llvm.x86.sse2.pause(), !noalias !29488
  %epil.iter105.next = add i32 %epil.iter105, 1   ; 2 uses
  %epil.iter105.cmp.not = icmp eq i32 %epil.iter105.next, %xtraiter104
  br i1 %epil.iter105.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !29491

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.v, %bb.u
  %i.bo = add i32 %.sroa.0.02.i.i4, 1
  %i.bp = load atomic i64, ptr %i.bh acquire, align 8, !noalias !29488
  %i.bq = and i64 %i.bp, 1
end_hunk_16
begin_hunk_17_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ea = extractvalue { i64, i32 } %i.da, 1      ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 1000000000
  call void @llvm.assume(i1 %i.eb)
  %.not26 = icmp samesign ult i32 %i.ea, %i.bf
  br i1 %.not26, label %bb.ae, label %bb.as

bb.ar:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.db, %i.cz
  br i1 %.not25, label %bb.ae, label %bb.as

bb.as:                                            ; preds = %.split, %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ec, align 8
  br label %bb.at

bb.at:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.au, %bb.as
  %storemerge = phi i64 [ -9223372036854775741, %bb.as ], [ %.sroa.018.0.copyload, %bb.au ], [ -9223372036854775741, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ed, align 8
  br label %bb.at

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.419, i64 104, i1 false)
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [104 x i8], align 8           ; 10 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !29540 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29540
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.lr.ph.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload28 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx29, i64 104, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.backedge.i, %.lr.ph.lr.ph.i
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.ak, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.al, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.loopexit.i
  %i.k = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.l = lshr exact i64 %i.s, 1
  %i.m = and i64 %i.l, 31                         ; 2 uses
  %i.n = icmp eq i64 %i.m, 31
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %.sroa.0.077.i64 = phi i32 [ %i.k, %bb.b ], [ %.sroa.0.0.ph82.i, %.lr.ph.i ] ; 6 uses
  %i.o = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !29540

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.p = mul nuw i32 %.sroa.0.077.i64, %.sroa.0.077.i64 ; 2 uses
  %xtraiter = and i32 %i.p, 7                     ; 3 uses
  %i.q = icmp ult i32 %.sroa.0.077.i64, 3
  br i1 %i.q, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.p, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.s, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.k, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.r, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod155 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !29543

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.s = load atomic i64, ptr %i.a acquire, align 128, !noalias !29540 ; 3 uses
  %i.t = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29540
  %i.u = and i64 %i.s, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.x, %bb.e ] ; 9 uses
  %i.w = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.w, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29540
  %i.x = tail call noalias noundef align 16 dereferenceable_or_null(3984) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3984, i64 noundef 16) #48, !noalias !29540 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3984) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29540
  %i.z = tail call noalias noundef align 16 dereferenceable_or_null(3984) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3984, i64 noundef 16) #48, !noalias !29540 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3984) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !29540

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = cmpxchg ptr %i.c, ptr null, ptr %i.z release monotonic, align 8, !noalias !29540
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.z, ptr %i.g release, align 8, !noalias !29540
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ad, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29540
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.z, %bb.i ] ; 3 uses
  %i.ae = add i64 %.sroa.03.079.i.lcssa, 2
  %i.af = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.ae seq_cst acquire, align 8, !noalias !29540
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.af, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %5, 5                    ; 3 uses
  %i.ag = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.ag, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %5, 56
  br label %.lr.ph.i28.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i28.i
  %lcmp.mod158.not = icmp eq i32 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil.preheader

.lr.ph.i28.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i28.i.preheader
  %lcmp.mod159 = icmp ne i32 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i28.i.epil

.lr.ph.i28.i.epil:                                ; preds = %.lr.ph.i28.i.epil, %.lr.ph.i28.i.epil.preheader
  %epil.iter157 = phi i32 [ 0, %.lr.ph.i28.i.epil.preheader ], [ %epil.iter157.next, %.lr.ph.i28.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !29544

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ah = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  tail call void @llvm.x86.sse2.pause(), !noalias !29540
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.r, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !29540
  %i.ai = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !29540 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3968
  store atomic ptr %.sroa.038.2.i, ptr %i.aj release, align 8, !noalias !29540
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx35, i64 104, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.z, %bb.k ], [ %i.z, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.ah, %._crit_edge.loopexit.i.i ]
  %i.ak = load atomic i64, ptr %i.a acquire, align 128, !noalias !29540 ; 2 uses
  %i.al = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29540
  %i.am = and i64 %i.ak, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %.outer._crit_edge.i

.loopexit59.i:                                    ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit59.i
  %.sroa.038.1.ph.i = phi ptr [ %.sroa.038.0.ph81.i, %.loopexit59.i ], [ %.sroa.038.2.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit59.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.ao, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29540
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.ap, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29540
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread23:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, i64 104, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29548)
  %i.aq = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aq, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.47.137 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.136 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.9.136, 31
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [128 x i8], ptr %.sroa.47.137, i64 %.sroa.9.136 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.as, align 16, !noalias !29545
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !noalias !29545
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %i.au = atomicrmw or ptr %i.at, i64 1 release, align 8, !noalias !29550 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.av) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !alias.scope !29550
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload30, -9223372036854775741
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.copyload30, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body21

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread23 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %2) #54
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownINtB5_25FilterPushdownPropagationINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB7_14execution_plan13ExecutionPlanEL_EE6if_allCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.c = icmp ult i64 %.sroa.3.0.copyload, 230584300921369396
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %.sroa.2.0.copyload, i64 %.sroa.3.0.copyload
  %i.e = icmp sgt i64 %.sroa.01.0.copyload, -1
  tail call void @llvm.assume(i1 %i.e)
  store ptr %.sroa.2.0.copyload, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.01.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
end_hunk_17
